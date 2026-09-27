# Customer Purchase Propensity - Data Cleaning and Feature Engineering Pipeline

## Project Overview
This project simulates the role of a Junior Data Analyst at an e-commerce company. Multiple raw data sources — customer demographics (CSV), transaction records (JSON), product info (SQL), and an external API — are cleaned, preprocessed, and engineered into a feature-ready dataset for a future Machine Learning model that predicts whether a customer will make a purchase (`purchased` = 1 or 0).

This project covers only the **Data Preprocessing and Feature Engineering pipeline** — no model is trained.

## Data Sources
| File | Description |
|---|---|
| `customers.csv` | Customer demographics and IDs |
| `transactions.json` | Transaction records (includes target column `purchased`) |
| `products.sql` | Product info table (SQLite) |
| API: `https://dummyjson.com/users` | Additional user details |

## Project Structure
```
├── customers.csv
├── transactions.json
├── products.sql
├── feature_pipeline.py         
└── README.md
```

## Pipeline Steps

1. **Project Planning & Problem Framing** — theory notes on data analysis, data science workflow, and framing the problem as binary classification.
2. **Data Import & Understanding** — loaded CSV, JSON, SQL, and API data; merged on `customer_id` / `product_id`; explored with `.info()`, `.describe()`, `.head()`.
3. **Exploratory Data Analysis (EDA)** — univariate (histograms, skewness), bivariate (correlation with target), and multivariate (heatmaps, pairplots) analysis.
4. **Handling Missing Data** — Simple Imputer (median/mode), Random Sample Imputation with missing-indicator flags, KNN Imputer, and comparison against Complete Case Analysis.
5. **Outlier Detection & Handling** — Z-score, IQR, and Winsorization methods applied and compared.
6. **Mixed & Date/Time Variables** — parsed mixed-format dates (`signup_date`, `last_purchase_date`); derived `days_since_last_purchase`; cleaned mixed `customer_id` values (e.g. `CUST-1004A` → `1004`) with a data-quality flag.
7. **Encoding Categorical Data** — Label Encoding (`gender`), One-Hot Encoding (`city`), binning of numeric features (`income`).
8. **Feature Scaling** — StandardScaler, MinMaxScaler, MaxAbsScaler, RobustScaler, Normalizer; combined via `ColumnTransformer`.
9. **Feature Construction & Transformation** — interaction feature `purchase_per_day`; Log/Sqrt/Reciprocal (`FunctionTransformer`); Box-Cox and Yeo-Johnson (`PowerTransformer`); equal-width and quantile binning; binarization (`frequent_buyer`).


## Key Findings
- Missing values were present across `age`, `gender`, `income`, `education`, `satisfaction_level`, and both date columns.
- `income` was heavily right-skewed (skewness ≈ 6.0) with extreme outliers; Box-Cox/Yeo-Johnson reduced skewness to ≈ 0.44.
- KNN Imputation preserved more realistic row-level variation for `income` than mean-based methods.
- RobustScaler outperformed StandardScaler for `income` due to its resistance to outliers.

## How to Run
```bash
pip install pandas numpy scikit-learn scipy matplotlib seaborn requests
jupyter notebook feature_pipeline.ipynb
```

