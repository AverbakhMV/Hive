# Hive
Копируем данные по поездкам Нью-Йоркского такси с бакета S3
Создаем таблицы-справочники dim_vendor, dim_rates, dim_payment 
Создаем таблицу фактов поездок такси trips и загружаем в нее данные (trips_create_script / trips_load_data_script)
Создаем представление для вычисление витрины (create_view_script)
Создаем таблицу-витрину со средними чаевыми и количеством пассажиров по типу оплаты и дате (create_mart_script / load_mart_script)
