# Final Project git link
https://github.com/HaiqiZzz/BIOS_611/tree/main/Final_Project

# NYC Citywide Payroll Analysis (2015–2020)

This project analyzes NYC employee payroll trends, annual base salary distribution, agency-level payroll spending, and median gross pay by work location. The source report is `611_FP.Rmd`.

## Requirements
- Docker
- Make
- The payroll CSV dataset

## Data setup
Put the data at `data/citywide-payroll-data-fiscal-year.csv`.
The large CSV is intentionally excluded from Git. Record the official download URL and retrieval date here for reproducibility.

## Build
```bash
make report
```

The rendered report will be written to `output/611_FP.html`.

## Notes
- With the CSV excluded, collaborators must obtain it separately.
