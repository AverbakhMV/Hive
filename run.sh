hadoop distcp s3a://karpovlab/2020 /user/hive/warehouse/
hive -f dim_vendor_script.sql
hive -f dim_rates_script.sql
hive -f dim_payment_script.sql
hive -f trips_create_script.sql
hive -f trips_load_data_script.sql
hive -f create_view_script.sql
hive -f create_mart_script.sql
hive -f load_mart_script.sql

