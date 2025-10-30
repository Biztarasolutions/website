# GitHub Pages Deployment Instructions

## Step 1: Create GitHub Repository
1. Go to https://github.com and sign in
2. Click "+" → "New repository"
3. Repository name: `biztarasolutions-website`
4. Description: `Official website for BizTara Solutions`
5. Make it **Public**
6. Don't initialize with README
7. Click "Create repository"

## Step 2: Connect and Push Your Code

After creating the repository, GitHub will show you a page with commands.
Use the "push an existing repository" section:

```bash
# Replace YOUR_USERNAME with your actual GitHub username
git remote add origin https://github.com/YOUR_USERNAME/biztarasolutions-website.git
git branch -M main  
git push -u origin main
```

## Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click "Settings" tab
3. Scroll down to "Pages" in the left sidebar
4. Under "Source", select "Deploy from a branch"
5. Choose "main" branch and "/ (root)" folder
6. Click "Save"

## Step 4: Configure Custom Domain
1. Still in Pages settings, find "Custom domain"
2. Enter: `biztarasolutions.com`
3. Click "Save"
4. GitHub will create a CNAME file (we already have one!)

## Step 5: Configure DNS at Your Domain Registrar

Add these DNS records at your domain registrar (GoDaddy, Namecheap, etc.):

### A Records (for apex domain)
```
Type: A
Name: @
Value: 185.199.108.153

Type: A  
Name: @
Value: 185.199.109.153

Type: A
Name: @  
Value: 185.199.110.153

Type: A
Name: @
Value: 185.199.111.153
```

### CNAME Record (for www subdomain)
```
Type: CNAME
Name: www
Value: YOUR_USERNAME.github.io
```

## Step 6: Wait and Test
- DNS changes can take 24-48 hours
- Your site will first be available at: `https://YOUR_USERNAME.github.io/biztarasolutions-website`
- After DNS propagation: `https://biztarasolutions.com`

## 🎉 That's it!

Your website will be live and automatically deployed whenever you push changes to GitHub!

## Future Updates
To update your website:
```bash
# Make your changes to files
git add .
git commit -m "Update website content"
git push origin main
```

GitHub will automatically redeploy your site within a few minutes!