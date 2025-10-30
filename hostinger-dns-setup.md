# Hostinger DNS Configuration for GitHub Pages

## Step-by-Step Instructions for Hostinger

### Step 1: Access Hostinger DNS Management
1. **Login to Hostinger** at https://www.hostinger.com
2. **Go to your account dashboard**
3. **Find your domain** `biztarasolutions.com`
4. **Click "Manage"** next to your domain
5. **Look for "DNS Zone" or "DNS Records"** (usually in the sidebar)

### Step 2: Delete Existing Records
**Important:** First remove any existing A records that point to other IP addresses.

1. **Look for existing A records** with Host "@" or blank
2. **Delete any A records** that don't point to GitHub's IPs
3. **Keep any MX records** (for email) if you have them

### Step 3: Add GitHub Pages A Records
Add these **4 A records** exactly as shown:

```
Record 1:
Type: A
Name/Host: @ (or leave blank)
Points to: 185.199.108.153
TTL: 300 (or Auto)

Record 2:
Type: A  
Name/Host: @ (or leave blank)
Points to: 185.199.109.153
TTL: 300 (or Auto)

Record 3:
Type: A
Name/Host: @ (or leave blank)
Points to: 185.199.110.153
TTL: 300 (or Auto)

Record 4:
Type: A
Name/Host: @ (or leave blank)
Points to: 185.199.111.153
TTL: 300 (or Auto)
```

### Step 4: Add CNAME Record for WWW
```
Type: CNAME
Name/Host: www
Points to: biztarasolutions.github.io
TTL: 300 (or Auto)
```

### Step 5: Save Changes
- **Click "Save" or "Add Record"** after each entry
- **Wait for confirmation** that records are saved

## Hostinger-Specific Notes:

### Interface Variations:
Hostinger's interface might show:
- **"Name"** instead of "Host"
- **"Content" or "Value"** instead of "Points to"
- **"@"** or **blank field** for the root domain

### Common Hostinger Layout:
```
[Type] [Name] [Content/Value] [TTL] [Action]
  A      @     185.199.108.153  Auto   [Save]
  A      @     185.199.109.153  Auto   [Save]
  A      @     185.199.110.153  Auto   [Save]
  A      @     185.199.111.153  Auto   [Save]
CNAME   www   biztarasolutions.github.io Auto [Save]
```

## After Configuration:

### Step 6: Wait for DNS Propagation
- **DNS changes take 1-24 hours** to propagate worldwide
- **Most changes are live within 1-4 hours**
- **You can check progress** with online DNS checkers

### Step 7: Re-enable Custom Domain on GitHub
Once DNS is configured (wait at least 1 hour), run these commands:

```bash
cd /Users/rishabhjain/Documents/Development/biztarasolutions.com
echo "biztarasolutions.com" > CNAME
git add CNAME
git commit -m "Add custom domain after DNS configuration"
git push origin main
```

Then go to GitHub Pages settings and add the custom domain again.

## Verification:

### Check DNS Propagation:
```bash
# Run this command to check if DNS is working
nslookup biztarasolutions.com
```

**Should return GitHub's IPs:** 185.199.108.153, 185.199.109.153, etc.

### Online DNS Checker:
- Visit: https://dnschecker.org
- Enter: biztarasolutions.com  
- Should show GitHub's IP addresses globally

## Troubleshooting:

### If Records Don't Save:
- **Try one record at a time**
- **Use TTL of 300 or 3600**
- **Contact Hostinger support** if issues persist

### If Domain Still Doesn't Work:
- **Wait 24 hours** for full DNS propagation
- **Clear your browser cache**
- **Try incognito/private browsing**
- **Check from different devices/networks**

## Final URLs:
- **biztarasolutions.com** → Your website
- **www.biztarasolutions.com** → Your website  
- **biztarasolutions.github.io/website** → Always works as backup

## Need Help?
If you encounter any issues with Hostinger's interface, take a screenshot and I can help guide you through their specific layout!