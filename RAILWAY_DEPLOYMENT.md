# 🚂 Railway Deployment Guide for Guidance Management System

This guide will help you deploy your Laravel Guidance Management System to Railway.

## Prerequisites

1. ✅ Git repository with your Laravel project
2. ✅ Railway account (https://railway.app)
3. ✅ GitHub account (recommended for automatic deployments)

## Step 1: Prepare Your Repository

Make sure your code is committed to Git:

```bash
git add .
git commit -m "Prepare for Railway deployment"
git push origin main
```

## Step 2: Deploy to Railway

### Option A: Deploy from GitHub (Recommended)

1. **Connect to Railway:**
   - Go to https://railway.app
   - Sign up/Login with GitHub
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose your repository

2. **Configure the Project:**
   - Railway will auto-detect it's a Laravel project
   - Click "Deploy Now"

### Option B: Deploy from Local (Alternative)

1. **Install Railway CLI:**
   ```bash
   npm install -g @railway/cli
   ```

2. **Login to Railway:**
   ```bash
   railway login
   ```

3. **Initialize and Deploy:**
   ```bash
   cd /path/to/your/project
   railway init
   railway up
   ```

## Step 3: Add MySQL Database

1. **In Railway Dashboard:**
   - Click "Add Service"
   - Select "MySQL"
   - Railway will automatically create a MySQL instance

2. **Get Database Connection Details:**
   - Click on the MySQL service
   - Go to "Variables" tab
   - Copy the connection details

## Step 4: Configure Environment Variables

In your Railway project dashboard, go to your Laravel service and click "Variables":

### Required Variables:
```
APP_NAME=Guidance Management System
APP_ENV=production
APP_KEY=base64:JuSp3CAImZOICDU6Z4/0WqfwP6M4MHJhhprO9VAUoWY=
APP_DEBUG=false
APP_URL=https://your-app-name.up.railway.app

DB_CONNECTION=mysql
DB_HOST=${{MySQL.MYSQL_HOST}}
DB_PORT=${{MySQL.MYSQL_PORT}}
DB_DATABASE=${{MySQL.MYSQL_DATABASE}}
DB_USERNAME=${{MySQL.MYSQL_USER}}
DB_PASSWORD=${{MySQL.MYSQL_PASSWORD}}

LOG_LEVEL=error
SESSION_DRIVER=database
CACHE_STORE=database
QUEUE_CONNECTION=database
```

### Optional Variables (for additional features):
```
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=your-email@gmail.com
MAIL_PASSWORD=your-app-password
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=noreply@guidancemanagement.com
```

## Step 5: Set Up Custom Domain (Optional)

1. **In Railway Dashboard:**
   - Go to your Laravel service
   - Click "Settings"
   - Scroll to "Domains"
   - Add your custom domain
   - Configure DNS records as shown

## Step 6: Run Database Migrations

After deployment, you need to run migrations:

### Option A: Using Railway CLI
```bash
railway run php artisan migrate --force
railway run php artisan db:seed --force  # If you want to seed data
```

### Option B: Through Deploy Script
The project includes a `deploy.sh` script that runs automatically. You can also trigger it manually:

```bash
railway run bash deploy.sh
```

## Step 7: Verify Deployment

1. **Check your application URL:**
   - Go to your Railway dashboard
   - Click on your Laravel service
   - You'll see the generated URL (e.g., `https://your-app-name.up.railway.app`)

2. **Test the application:**
   - Visit the URL
   - Try logging in with your admin credentials
   - Check that all features work correctly

## Environment Variables Reference

### Core Laravel Settings:
- `APP_NAME`: Your application name
- `APP_ENV`: Set to "production"
- `APP_KEY`: Laravel encryption key (generate with `php artisan key:generate`)
- `APP_DEBUG`: Set to "false" for production
- `APP_URL`: Your Railway app URL

### Database Settings:
- `DB_*`: Use Railway's MySQL service variables
- Reference format: `${{MySQL.VARIABLE_NAME}}`

### Performance Settings:
- `LOG_LEVEL`: Set to "error" for production
- `SESSION_DRIVER`: "database" (recommended for Railway)
- `CACHE_STORE`: "database" (works well with Railway)

## Troubleshooting

### Common Issues:

1. **Migration Errors:**
   ```bash
   railway run php artisan migrate:fresh --force
   ```

2. **Permission Issues:**
   ```bash
   railway run chmod -R 775 storage bootstrap/cache
   ```

3. **Cache Issues:**
   ```bash
   railway run php artisan config:clear
   railway run php artisan cache:clear
   railway run php artisan route:clear
   railway run php artisan view:clear
   ```

4. **Storage Link Issues:**
   ```bash
   railway run php artisan storage:link
   ```

### Useful Railway Commands:

```bash
# View logs
railway logs

# Connect to database
railway connect MySQL

# Run artisan commands
railway run php artisan <command>

# SSH into your deployment
railway shell
```

## Security Notes

1. **Never commit `.env` files to Git**
2. **Use strong, unique passwords for production**
3. **Enable 2FA on your Railway account**
4. **Regularly update dependencies**
5. **Monitor application logs**

## Maintenance

### Regular Tasks:
- Monitor Railway dashboard for performance
- Update dependencies regularly
- Backup database periodically
- Review logs for any issues

### Scaling:
Railway automatically handles scaling, but you can:
- Monitor resource usage in the dashboard
- Upgrade plan if needed
- Add horizontal scaling if required

---

## 🎉 Your Guidance Management System is now live on Railway!

Your application should be accessible at: `https://your-app-name.up.railway.app`

For support, check:
- Railway Documentation: https://docs.railway.app
- Laravel Documentation: https://laravel.com/docs
- This project's README for application-specific help
