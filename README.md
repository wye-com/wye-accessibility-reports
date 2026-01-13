# WYE Accessibility Analytics Reports

This repository contains accessibility audit reports and analytics data for WYE websites.

## Contents

- **Analytics Pages**: Top pages by traffic with accessibility audit status
- **Screenshots**: Before/after screenshots of accessibility fixes
- **Audit Status**: Track which pages have been audited and fixed

## Sites Covered

- WYE Main (wye.com)
- WYE Cares (wye.com/cares/)
- WYE Core (wye.com/core/)
- WYE Print (wye.com/print/)
- WYE Sight (wye.com/sight/)

## How to Use

1. Review the analytics pages markdown files to see which pages need auditing
2. Check the checkbox `[x]` when a page has been audited and fixed
3. Update the `[Last Audited: Date]` with the actual audit date
4. Add screenshots to the `screenshot-changes/` directory when documenting fixes

## File Structure

```
wye-ga-top-pages/
├── README.md
├── analytics-pages-YYYY-MM-DD.md    # Analytics and audit status
└── screenshot-changes/               # Before/after screenshots
    ├── cares/
    ├── core/
    └── ...
```

## Updates

Reports are generated from Google Analytics data and updated regularly. Each report is dated with the format `analytics-pages-YYYY-MM-DD.md`.
