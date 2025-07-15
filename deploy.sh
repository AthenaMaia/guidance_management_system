#!/bin/bash

# Railway Deployment Script for Laravel
# This script runs after deployment to setup the application

echo "🚀 Starting Laravel deployment setup..."

# Install Composer dependencies
echo "📦 Installing Composer dependencies..."
composer install --no-dev --optimize-autoloader

# Generate application key if not set
if [ -z "$APP_KEY" ]; then
    echo "🔑 Generating application key..."
    php artisan key:generate --force
fi

# Clear and cache configuration
echo "🧹 Clearing caches..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Run database migrations
echo "🗄️ Running database migrations..."
php artisan migrate --force

# Seed the database (uncomment if you want to seed on deployment)
# php artisan db:seed --force

# Create storage symlink
echo "🔗 Creating storage symlink..."
php artisan storage:link

# Set proper permissions
echo "🔒 Setting permissions..."
chmod -R 775 storage
chmod -R 775 bootstrap/cache

echo "✅ Laravel deployment setup completed!"
