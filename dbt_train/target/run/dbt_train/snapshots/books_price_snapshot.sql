
      update "web_scraper"."snapshots"."books_price_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "books_price_snapshot__dbt_tmp184715700845" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "web_scraper"."snapshots"."books_price_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and "web_scraper"."snapshots"."books_price_snapshot".dbt_valid_to is null;
      


    insert into "web_scraper"."snapshots"."books_price_snapshot" ("id", "title", "price", "category", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."id",DBT_INTERNAL_SOURCE."title",DBT_INTERNAL_SOURCE."price",DBT_INTERNAL_SOURCE."category",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "books_price_snapshot__dbt_tmp184715700845" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  