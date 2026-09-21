# Real Estate Market Trends & Investment Analytics

An end-to-end analytics project: raw property-sales data is cleaned and transformed in **PostgreSQL**, then visualised in a 3-page **Power BI** dashboard covering market overview, price/volume trends, and investment insights.

## Dashboard preview

| Overview | Trends & Insights |
|---|---|
| ![Overview](images/dashboard_overview.png) | ![Trends](images/dashboard_trends_insights.png) |

## Tools

- **PostgreSQL 18 / pgAdmin 4** – data cleaning and transformation
- **Power BI Desktop** – data model and dashboard design
- **SQL** – `CASE`, `NULLIF`, `CAST`, data-type standardisation

## Project workflow

1. **Load** raw property sales into a `real_estate_data` table.
2. **Clean & transform** into `cleaned_real_estate_data` (see `images/sql_cleaning_pgadmin.png`):
   - Placeholder values (`'?'` and empty strings) converted to `NULL` / `'Unknown'` using `NULLIF` and `CASE`
   - Text fields cast to proper types (`DATE`, `NUMERIC`, `INTEGER`)
   - Consistent, analysis-friendly column names (`Sale Date`, `Locality`, `Sale Price`, `Estimated Value`, `Tax Rate`, `Property Type`, `Rooms`, `Bathrooms`, `Carpet Area`, ...)
3. **Model & visualise** the cleaned table in Power BI.
4. **Extract insights** and recommendations for investors.

## Dashboard pages

- **Overview** – total market value, average sale price, average price per sq ft, property distribution map, market share by property type, top-performing localities, price vs. size.
- **Trends** – price trend over time, properties sold over time, tax rate by property type.
- **Insights** – key findings and recommendations (e.g. Greenwich as the premium market, Single Family homes dominating transactions at ~93% of activity).

## Key figures (from the dashboard)

- Total market value: **~12.45bn**
- Average sale price: **~0.62M**
- Single Family homes: **93.44%** of transactions

## Repository structure

```
├── dashboard/   Power BI report (.pbix)
├── data/        Sample of the cleaned dataset (CSV)
├── images/      Dashboard and SQL screenshots
└── sql/         Analysis queries
```

## How to use

1. Clone the repo and open `dashboard/RealEstate_Market_Trends_Analytics_Report.pbix` in Power BI Desktop.
2. To reproduce the cleaning step, load your raw data into PostgreSQL as `real_estate_data` and run the scripts in `sql/`.

## Data source

Property sales records (2009–2022) for Connecticut localities. Add the dataset link here.

## Author

**Jawad Ahmad** – BBA Finance graduate | Financial Analyst / FP&A
