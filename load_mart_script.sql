use taxi_hometask;

insert into mart
select payment_type, dt, round(avg(tip_amount),2), sum(passenger_count)
from v1
group by payment_type, dt
order by dt, 'payment_type';