#!/bin/bash

# BizTara Solutions - GitHub Pages Deployment Script
# This script helps deploy your website to GitHub Pages

echo "🚀 BizTara Solutions - GitHub Pages Deployment"
echo "=============================================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Add all files
echo "📁 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
read -p "Enter commit message (or press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update BizTara Solutions website"
fi
git commit -m "$commit_msg"

# Check if remote exists
if git remote get-url origin > /dev/null 2>&1; then
    echo "✅ Remote repository already configured"
else
    echo "🔗 Setting up remote repository..."
    read -p "Enter your GitHub username: " github_username
    read -p "Enter repository name (e.g., biztarasolutions-website): " repo_name
    git remote add origin "https://github.com/$github_username/$repo_name.git"
    echo "✅ Remote repository configured"
fi

# Set main branch
git branch -M main

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "🎉 Deployment Complete!"
echo "========================"
echo "Next steps:"
echo "1. Go to your GitHub repository settings"
echo "2. Navigate to 'Pages' section"
echo "3. Select 'Deploy from a branch' → 'main' → '/ (root)'"
echo "4. Add custom domain: biztarasolutions.com"
echo "5. Configure DNS at your domain registrar"
echo ""
echo "Your website will be available at:"
echo "• https://YOUR_USERNAME.github.io/REPO_NAME (temporary)"
echo "• https://biztarasolutions.com (after DNS configuration)"
echo ""
echo "📖 See deployment-guide.md for detailed instructions"