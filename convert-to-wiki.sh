#!/bin/bash
# Script to convert markdown file for GitHub wiki
# Updates image paths to use raw GitHub URLs

INPUT_FILE="analytics-pages-2026-01-12.md"
OUTPUT_FILE="Accessibility-Audit-Top-Pages-2026-01-12.md"
REPO="wye-com/themes-wye"
BRANCH="main"  # Change this to your default branch if different

# Base URL for raw GitHub images
BASE_URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}/docs/accessibility/wye-ga-top-pages"

# Copy the file
cp "$INPUT_FILE" "$OUTPUT_FILE"

# Replace relative image paths with raw GitHub URLs
# This handles both ./screenshot-changes/ and screenshot-changes/ paths
sed -i '' "s|\./screenshot-changes/|${BASE_URL}/screenshot-changes/|g" "$OUTPUT_FILE"
sed -i '' "s|screenshot-changes/|${BASE_URL}/screenshot-changes/|g" "$OUTPUT_FILE"

echo "✅ Created wiki-ready file: $OUTPUT_FILE"
echo ""
echo "Next steps:"
echo "1. Review the file to ensure image paths are correct"
echo "2. Clone wiki repo: git clone git@github.com:${REPO}.wiki.git"
echo "3. Copy $OUTPUT_FILE to the wiki repo"
echo "4. Commit and push to wiki"
