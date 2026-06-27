# Comands

dbt init -> Start dbt project

dbt debug -> Check dbt connection with server

dbt compile -> Compile models for use on server (Appears on target folder)

dbt run -> runs dbt cod models to server

### Configs

-- Config on model to define materialization type
{{ config(
    materialized='table'
) }}

## Name Conventions

- Source
raw data

- Staging
renaming, casting and convertions

- Intermediate
Joins and agreggations. Should deppend on stagins models

- marts
final data 