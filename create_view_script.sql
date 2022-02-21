use taxi_hometask;

create view if not exists v1 as
select v.name vendor,
passenger_count,
trip_distance,
r.name rate,
store_and_fwd_flag,
pulocation_id,
dolocation_id,
p.name payment_type,
fare_amount,
extra,
mta_tax,
tip_amount,
tolls_amount,
improvement_surcharge,
total_amount,
congestion_surcharge,
dt
from trips t join dim_vendor v on t.vendor_id=v.id
    join dim_payment p on t.payment_type=p.id
    join dim_rates r on t.ratecode_id=r.id;