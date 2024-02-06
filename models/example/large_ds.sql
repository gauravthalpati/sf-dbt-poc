{{ config(materialized='table') }}

with fifty_pc as (

select
CENSUS_BLOCK_GROUP,
"Total: Renter-occupied housing units" as total_ocp,
"50.0 percent or more: Renter-occupied housing units" as fifty_ocp
from US_OPEN_CENSUS_DATA__NEIGHBORHOOD_INSIGHTS__FREE_DATASET.PUBLIC."2019_RENT_PERCENTAGE_HOUSEHOLD_INCOME"
where total_ocp > 5000

)

select * from fifty_pc

