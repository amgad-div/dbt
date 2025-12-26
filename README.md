📘 Project Overview

This repository contains a dbt project developed by Amgad for managing data transformations, testing, and documentation. It follows a layered architecture with clear separation between staging, marts, and snapshots.

📂 Structure

dbt_train/
└─ models/
│  └─ staging/                # Cleaned source data (Silver layer)
│  └─ marts/                  # Business-ready models (Gold layer)
│  └─ example/                # Example models (views)
└─ snapshots/                  # Historical tracking of changes
└─ tests/                      # Custom SQL-based data tests
└─ target/                     # Compiled SQL, run results, and docs

🔧 Configuration

Defined in dbt_project.yml:

staging/ → schema: books_silver

marts/ → schema: books_gold

snapshots/ → schema: snapshots

example/ → materialized as views

🧢 Testing

Schema tests are defined in schema.yml:

book_id: not_null, unique

rating: accepted_values → ['One','Two','Three','Four','Five']

available_quantity: not_null

Custom data tests are written in tests/ folder as .sql files.

Run all tests:

dbt test

🧱 Models

stg_books

Cleans and standardizes data from public.books

Applies type casting and rating mapping

dim_books

Builds a dimension table from stg_books

Used in downstream marts and tests

fact_books_inventory

Aggregates book inventory by category

Calculates total books, available quantity, and average price

🕰 Snapshots

books_price_snapshot

Tracks historical changes in book prices

Uses id as unique_key

Includes dbt_valid_from and dbt_valid_to for versioning

dim_books_price_history

Builds a historical view from the snapshot

Useful for trend analysis and price evolution

Run snapshots:

dbt snapshot

📊 Documentation

Generate and serve interactive docs:

dbt docs generate
dbt docs serve

Then open:

http://localhost:8080

✅ Lineage Summary

public.books → stg_books → dim_books → fact_books_inventory
                                 ↸⃣ price_should_be_positive
public.books → books_price_snapshot → dim_books_price_history

📜 License

This project is licensed under the MIT License.

🤝 Contributing

Feel free to fork, open issues, or submit pull requests to improve the models and documentation.
