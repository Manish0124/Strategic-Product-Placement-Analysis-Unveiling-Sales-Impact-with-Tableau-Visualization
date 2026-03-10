# Render Deployment Checklist

## Step 1: Prepare Repository
- [ ] Run `bash setup_git.sh` to initialize Git
- [ ] Update email in setup_git.sh with your email

## Step 2: Push to GitHub
- [ ] Create new repo at https://github.com/new
- [ ] Run: `git branch -M main`
- [ ] Run: `git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git`
- [ ] Run: `git push -u origin main`

## Step 3: Deploy on Render
- [ ] Go to https://dashboard.render.com
- [ ] Sign up/Login with GitHub
- [ ] Click "New +" → "Web Service"
- [ ] Select your repository
- [ ] Configure:
  - Name: `product-placement-analysis`
  - Environment: Python 3
  - Build: `pip install -r flask_app/requirements.txt`
  - Start: `cd flask_app && python app.py`
- [ ] Click "Create Web Service"

## Step 4: Verify Deployment
- [ ] Wait 2-5 minutes for build to complete
- [ ] Check Render dashboard for "Live" status
- [ ] Visit your app URL (shown in Render dashboard)
- [ ] Test endpoints:
  - `/` (home page)
  - `/api/summary` (API test)
  - `/visualizations` (charts)

## Troubleshooting
- Check Render logs if deployment fails
- Ensure all files are committed to GitHub
- Verify `data/prepared_data.csv` exists in repo
