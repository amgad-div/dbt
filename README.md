# 🧠 dbt Books Analytics Project

## 📌 Overview
This repository contains a **dbt analytics project** built on **PostgreSQL** and designed as an **interview-ready production-style project**.

The project follows **Medallion Architecture (Bronze → Silver → Gold)** and demonstrates:
- Data modeling (Dimensions & Facts)
- Data quality testing
- Snapshots for historical tracking (SCD Type 2)
- Documentation & lineage
- Analytics engineering best practices

---

## 🏗️ Architecture (Medallion)


### Layers Explanation
- **Bronze**: Raw data as ingested from source
- **Silver**: Cleaned, standardized staging models
- **Gold**: Business-ready dimensions & facts
- **Snapshots**: Historical price tracking (SCD Type 2)

---
public.books (Bronze - Raw)
↓
stg_books (Silver - Staging)
↓
dim_books ─────────► fact_books_inventory (Gold - Analytics)
↓
books_price_snapshot ───► dim_books_price_history

## 📁 Project Structure

dbt_books/
├── models/
│ ├── staging/ # Silver layer (clean & standardized)
│ ├── marts/ # Gold layer (dimensions & facts)
│ └── example/ # Example view models
│
├── snapshots/ # dbt snapshots (price history)
├── tests/ # Custom SQL tests
├── target/ # Compiled SQL & docs
└── dbt_project.yml



---

## ⚙️ Schema Configuration

| Layer | Schema |
|------|-------|
| Source (Bronze) | `public` |
| Staging (Silver) | `books_silver` |
| Marts (Gold) | `books` |
| Snapshots | `snapshots` |

---

## 📊 Models Overview

| Model | Type | Description |
|-----|-----|------------|
| `stg_books` | Staging | Cleans raw book data |
| `dim_books` | Dimension | Current book attributes |
| `fact_books_inventory` | Fact | Inventory & availability metrics |
| `books_price_snapshot` | Snapshot | Tracks price changes over time |
| `dim_books_price_history` | Dimension | Business-friendly price history |

---

## 🧪 Testing Strategy

### Schema Tests
- `book_id`: `not_null`, `unique`
- `price`: `not_null`
- `rating`: `accepted_values (1–5)`

### Custom Tests
Located in `/tests`

Example:
```sql
-- price_should_be_positive.sql
SELECT *
FROM {{ ref('dim_books') }}
WHERE price <= 0;
```
ذذ

🤝 Contributing

Feel free to fork, open issues, or submit pull requests to improve the models and documentation.
