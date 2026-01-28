# Converting Accessibility Audit to GitHub Wiki

## Repository Info
- Main repo: `wye-com/themes-wye`
- Wiki repo: `wye-com/themes-wye.wiki` (created automatically when you enable wiki)

## Steps to Create Wiki Page

### Option 1: Using GitHub Web Interface (Easiest)

1. Go to: `https://github.com/wye-com/themes-wye/wiki`
2. If wiki is not enabled:
   - Go to Settings → Features → Wikis → Enable
3. Click "New Page"
4. Title: `Accessibility-Audit-Top-Pages-2026-01-12`
5. Copy content from `analytics-pages-2026-01-12.md`
6. **Important**: For images, you'll need to:
   - Upload images to the wiki (use "Insert Image" button)
   - Or reference them from the main repo using: `https://raw.githubusercontent.com/wye-com/themes-wye/main/docs/accessibility/wye-ga-top-pages/screenshot-changes/...`

### Option 2: Using Git (Recommended for Version Control)

```bash
# Clone the wiki repository
git clone git@github.com:wye-com/themes-wye.wiki.git
cd themes-wye.wiki

# Copy the markdown file
cp ../docs/accessibility/wye-ga-top-pages/analytics-pages-2026-01-12.md Accessibility-Audit-Top-Pages-2026-01-12.md

# Copy images directory (if you want images in wiki)
mkdir -p screenshot-changes
cp -r ../docs/accessibility/wye-ga-top-pages/screenshot-changes/* screenshot-changes/

# Commit and push
git add .
git commit -m "Add accessibility audit for top pages (2026-01-12)"
git push origin master
```

### Option 3: Reference Images from Main Repo

If you don't want to duplicate images in the wiki, update image paths in the markdown to use raw GitHub URLs:

```markdown
![image alt](https://raw.githubusercontent.com/wye-com/themes-wye/main/docs/accessibility/wye-ga-top-pages/screenshot-changes/cares/CleanShot-2026-01-12-at-16.22.38.png)
```

## Wiki Page Naming

GitHub wikis use the filename (without extension) as the page title. Use hyphens for spaces:
- `Accessibility-Audit-Top-Pages-2026-01-12.md` → Page title: "Accessibility Audit Top Pages 2026 01 12"

## Home Page

To make this the wiki home page, rename it to `Home.md` or add a link in `_Sidebar.md`:

```markdown
* [[Accessibility-Audit-Top-Pages-2026-01-12|Accessibility Audit - Top Pages]]
```
