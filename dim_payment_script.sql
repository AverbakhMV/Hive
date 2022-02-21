use taxi_hometask;

create table if not exists dim_payment
(
    id int,
    name string
)
stored as parquet;

with t as (select 1, 'Credit card'
union all
select 2, 'Cash'
union all
select 3, 'No charge'
union all
select 4, 'Dispute'
union all
select 5, 'Unknown'
union all
select 6, 'Voided trip')
insert into dim_payment select * from t;



