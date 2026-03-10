# Complete GitHub & Render Deployment Guide

## Part 1: Create GitHub Repository

### 1. Go to GitHub
- Visit https://github.com/new
- Sign in (create account if needed)

### 2. Create Repository
- **Repository name**: `Strategic-Product-Placement-Analysis`
- **Description**: Strategic Product Placement Analysis - Unveiling Sales Impact with Tableau Visualization
- **Visibility**: Public (required for free Render deployment)
- Click "Create repository"

### 3. Copy the HTTPS URL
After creation, you'll see a URL like:
```
https://github.com/YOUR_USERNAME/Strategic-Product-Placement-Analysis.git
```

## Part 2: Push Code to GitHub

Run these commands in your project directory:

```bash
# Initialize git
git init

# Configure git
git config user.name "Manish"
git config user.email "your-email@example.com"

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Strategic Product Placement Analysis"

# Set main branch
git branch -M main

# Add remote (replace with your URL from Step 3)
git remote add origin https://github.com/YOUR_USERNAME/Strategic-Product-Placement-Analysis.git

# Push to GitHub
git push -u origin main
```

## Part 3: Deploy on Render

### 1. Go to Render
- Visit https://dashboard.render.com
- Sign up with GitHub account

### 2. Create Web Service
- Click "New +" → "Web Service"
- Select "Deploy an existing repository"
- Authorize GitHub and select your repository

### 3. Configure Service
Fill in these fields:
- **Name**: `product-placement-analysis`
- **Environment**: Python 3
- **Build Command**: `pip install -r flask_app/requirements.txt`
- **Start Command**: `cd flask_app && python app.py`
- **Plan**: Free

### 4. Deploy
- Click "Create Web Service"
- Wait 2-5 minutes for deployment

### 5. Access Your App
Your app will be available at:
```
https://product-placement-analysis.onrender.com
```

Test these URLs:
- Home: https://product-placement-analysis.onrender.com/
- API: https://product-placement-analysis.onrender.com/api/summary
- Visualizations: https://product-placement-analysis.onrender.com/visualizations

## Troubleshooting

| Issue | Solution |
|-------|----------|
| "Repository not found" | Ensure repo is public on GitHub |
| Build fails | Check Render logs, verify requirements.txt exists |
| App crashes | Check Render logs for errors |
| Data not loading | Verify data/prepared_data.csv is committed to GitHub |

## Notes
- Free tier has 15-minute inactivity timeout
- Upgrade to paid plan for always-on service
- All files must be committed to GitHub for Render to access them
