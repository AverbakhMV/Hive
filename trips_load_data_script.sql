use taxi_hometask;

load data inpath '/user/hive/warehouse/2020/' into table taxi_data;

set hive.exec.dynamic.partition.mode=nonstrict;

insert into trips partition(dt)
select vendor_id,
passenger_count,
trip_distance,
ratecode_id,
store_and_fwd_flag,
pulocation_id,
dolocation_id,
payment_type,
fare_amount,
extra,
mta_tax,
tip_amount,
tolls_amount,
improvement_surcharge,
total_amount,
congestion_surcharge,
to_date(tpep_pickup_datetime) dt
from taxi_data
distribute by dt;