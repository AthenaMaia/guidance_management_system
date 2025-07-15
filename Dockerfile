# Use the official PHP image with Apache
FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    nodejs \
    npm \
    libzip-dev \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy existing application directory contents
COPY . /var/www/html

# Copy existing application directory permissions
COPY --chown=www-data:www-data . /var/www/html

# Install PHP dependencies
RUN composer install --optimize-autoloader --no-dev

# Install Node.js dependencies and build assets
RUN npm install
RUN npm run build

# Configure Apache
RUN a2enmod rewrite
RUN service apache2 restart

# Update Apache configuration to point to Laravel's public directory
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Create a start script that waits for database and handles environment properly
RUN echo '#!/bin/bash\n\
echo "Starting Laravel application..."\n\
echo "Waiting for database connection..."\n\
until php artisan tinker --execute="try { DB::connection()->getPdo(); echo \"Database connected\"; } catch (Exception \$e) { echo \"Database not ready: \" . \$e->getMessage(); exit(1); }" 2>/dev/null; do\n\
  echo "Waiting for database..."\n\
  sleep 2\n\
done\n\
echo "Database is ready!"\n\
echo "Running Laravel optimizations..."\n\
php artisan config:cache --quiet\n\
php artisan route:cache --quiet\n\
php artisan view:cache --quiet\n\
echo "Running database migrations..."\n\
php artisan migrate --force --no-interaction\n\
echo "Running database seeding..."\n\
php artisan db:seed --force --no-interaction\n\
echo "Laravel application ready!"\n\
apache2-foreground' > /var/www/html/start.sh

RUN chmod +x /var/www/html/start.sh

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["/var/www/html/start.sh"]
