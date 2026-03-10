# Render Deployment Guide

## Prerequisites
- GitHub account with repository containing this project
- Render account (free tier available at render.com)

## Deployment Steps

### 1. Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit for Render deployment"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

### 2. Connect to Render
1. Go to https://dashboard.render.com
2. Click "New +" → "Web Service"
3. Select "Deploy an existing repository"
4. Connect your GitHub account and select this repository

### 3. Configure Service
- **Name**: `product-placement-analysis`
- **Environment**: Python 3
- **Build Command**: `pip install -r flask_app/requirements.txt`
- **Start Command**: `cd flask_app && python app.py`
- **Plan**: Free (or paid for better performance)

### 4. Environment Variables
No additional environment variables needed. The app automatically detects the PORT from Render.

### 5. Deploy
Click "Create Web Service" and wait for deployment to complete.

## Verification
Once deployed, your app will be available at: `https://product-placement-analysis.onrender.com`

Test endpoints:
- Home: `https://product-placement-analysis.onrender.com/`
- Visualizations: `https://product-placement-analysis.onrender.com/visualizations`
- API Summary: `https://product-placement-analysis.onrender.com/api/summary`
- API Top Products: `https://product-placement-analysis.onrender.com/api/top-products`

## Troubleshooting

### Build Fails
- Check that `flask_app/requirements.txt` exists
- Verify all dependencies are listed

### App Crashes
- Check Render logs: Dashboard → Your Service → Logs
- Ensure `PORT` environment variable is used (already configured in app.py)

### Data Not Loading
- Verify `data/prepared_data.csv` is committed to GitHub
- Check file paths are relative to project root

## Notes
- Free tier has 15-minute inactivity timeout
- Upgrade to paid plan for always-on service
- Data persists in CSV files (no database needed)
