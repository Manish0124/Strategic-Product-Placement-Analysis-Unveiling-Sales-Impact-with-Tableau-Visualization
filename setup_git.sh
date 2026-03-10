#!/bin/bash

# Git Configuration for Render Deployment
echo "Setting up Git repository..."

# Initialize git if not already done
if [ ! -d .git ]; then
    git init
    echo "✓ Git repository initialized"
fi

# Configure git user (replace with your details)
git config user.name "Manish"
git config user.email "your-email@example.com"
echo "✓ Git user configured"

# Add all files
git add .
echo "✓ Files staged"

# Create initial commit
git commit -m "Initial commit: Strategic Product Placement Analysis project ready for Render deployment"
echo "✓ Initial commit created"

echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub (https://github.com/new)"
echo "2. Run: git branch -M main"
echo "3. Run: git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
echo "4. Run: git push -u origin main"
echo "5. Go to https://dashboard.render.com and connect your GitHub repo"
