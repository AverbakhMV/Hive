drop database if exists taxi_hometask cascade;
create database taxi_hometask;

use taxi_hometask;

create table if not exists dim_vendor
(
    id int,
    name string
)
stored as parquet;

insert into dim_vendor
select 1, 'Creative Mobile Technologies'
union all
select 2, 'VeriFone Inc';




