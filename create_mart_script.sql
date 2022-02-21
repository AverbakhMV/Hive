use taxi_hometask;

create table mart (
payment_type string,
`date` date,
tips_average_amount double,
passengers_total int)
stored as parquet;