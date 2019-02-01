CREATE USER indexed_cars_user;

CREATE DATABASE index_cars WITH OWNER = indexed_cars_user;
\c index_cars
\i scripts/car_models.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

\timing

SELECT DISTINCT make_title FROM car_models
WHERE make_code = 'LAM';

SELECT DISTINCT model_title FROM car_models
WHERE model_code = 'GT-R' AND make_code = 'NISSAN';

SELECT make_code, model_code, model_title, year FROM car_models
WHERE make_code = 'LAM';

SELECT * FROM car_models
WHERE year >= '2010' and year <= '2015';

SELECT * FROM car_models
WHERE year = '2010';

\c alexithemia
DROP DATABASE index_cars;
DROP USER indexed_cars_user;