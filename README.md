> 🤖 *This README was written with AI assistance for clarity and formatting.*
>
> *The course itself was completed using only the provided course material — no AI — to maximize learning retention.*
# 🔧 dbt Course Project — Databricks + dbt Fusion

A hands-on learning project built while completing a dbt course, connecting **dbt Core** to **Databricks** via Unity Catalog. The goal was to understand the full dbt workflow — from raw data modeling to testing, documentation, and best practices.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| **dbt (Fusion / VS Code extension)** | Data transformation framework |
| **Databricks** | Cloud data platform & compute |
| **Unity Catalog** | Data governance & namespace management |
| **SQL / Jinja** | Transformations and templating |

---

## 📚 What I Learned & Built

### 1. Project Setup
- Initialized a dbt project with `dbt init` and connected it to Databricks via Unity Catalog
- Configured `profiles.yml` for the Databricks connection and validated it with `dbt debug`

### 2. Data Modeling
- Created `customers`, `orders`, and `payments` tables and loaded them into Databricks
- Refactored raw SQL queries into dbt models following the **staging → marts** layered architecture
- Applied **Jinja macros** to eliminate repetition and improve reusability

### 3. Materializations
- Explored and applied different materialization strategies: `view`, `table`, `incremental`, and `ephemeral`
- Understood the trade-offs of each approach in terms of performance and cost

### 4. Sources & Freshness
- Declared raw data sources in a `sources.yml` file
- Configured and ran **freshness checks** with `dbt source freshness`

### 5. Staging Layer Refactoring
- Rebuilt staging models following dbt best practices using **CTEs (Common Table Expressions)**
- Applied naming conventions and model structure for readability and maintainability

### 6. Testing
- Wrote and ran **generic tests** (`not_null`, `unique`, `accepted_values`, `relationships`)
- Understood how dbt validates data quality across the pipeline

### 7. Documentation
- Generated interactive project docs with `dbt docs generate` and `dbt docs serve`
- Added descriptions to models and columns in `.yml` files

---

## ⚙️ Key Commands

```bash
# Initialize a new dbt project
dbt init

# Test the connection to Databricks
dbt debug

# Run all models
dbt run

# Run tests
dbt test

# Check source freshness
dbt source freshness

# Build everything (models, tests, seeds, snapshots) in the correct order
dbt build

# Generate and serve documentation
dbt docs generate
dbt docs serve
```

---

## 📂 Project Structure

```
jaffle_shop/
├── models/
│   ├── staging/        # Cleaned and renamed source data (CTEs)
│   └── marts/          # Business-ready models
├── macros/             # Reusable Jinja macros
├── tests/              # Custom data tests
├── seeds/              # Static reference data (CSV)
├── dbt_project.yml     # Project configuration
└── profiles.yml        # Connection settings (not committed)
```

---

## 🎯 Key Takeaways

- dbt transforms SQL from a collection of scripts into a **structured, testable, documented pipeline**
- The **staging → marts** pattern keeps models clean and easy to maintain
- **Macros and Jinja** are powerful tools for DRY (Don't Repeat Yourself) SQL
- Testing and documentation are **first-class citizens** in dbt — not afterthoughts

---

> 📌 This project was built as a guided course exercise to solidify dbt fundamentals before applying them to real-world data engineering projects.
