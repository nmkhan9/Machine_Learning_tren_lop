-- Loc du lieu voi sql 
SELECT *
FROM `khang635.movie_data.Movie-Data` 
WHERE Genre = 'Comedy';

-- Sap xep du lieu voi sql
SELECT *
FROM `khang635.movie_data.Movie-Data` 
ORDER BY Genre;

-- Sap xep du lieu theo chieu giam dan
SELECT *
FROM `khang635.movie_data.Movie-Data`
ORDER BY `Release Date` DESC;

-- Loc va sap xep du lieu theo chieu giam dan
SELECT *
FROM `khang635.movie_data.Movie-Data`
WHERE Genre = "Comedy"
ORDER BY `Release Date` DESC;

-- Loc 2 cot sau do sap xep theo chieu giam dan
SELECT *
FROM `khang635.movie_data.Movie-Data`
WHERE Genre = "Comedy" 
AND Revenue > 300000000
ORDER BY `Release Date` DESC;

-- Truy vấn dữ liệu để khám phá cấu trúc
SELECT
 * 
FROM
  `bigquery-public-data.census_bureau_usa.population_by_zip_2000`
LIMIT
 1000;

-- Sử dụng order by sắp xếp dữ liệu liên quan
SELECT
 * 
FROM
  `bigquery-public-data.census_bureau_usa.population_by_zip_2000`
ORDER BY geo_id
LIMIT
 1000;

-- Tăng dần
SELECT *
FROM `bigquery-public-data.census_bureau_usa.population_by_zip_2000`
WHERE minimum_age IS NOT NULL
ORDER BY minimum_age ASC
LIMIT 1000;

-- Giảm dần
SELECT *
FROM `bigquery-public-data.census_bureau_usa.population_by_zip_2000`
WHERE minimum_age IS NOT NULL
ORDER BY minimum_age DESC
LIMIT 1000; 

-- Kết hợp lọc và sắp xếp dữ liệu
SELECT *
FROM `bigquery-public-data.census_bureau_usa.population_by_zip_2000`
WHERE minimum_age IS NOT NULL
ORDER BY minimum_age DESC, population DESC
LIMIT 1000;

-- Truy vấn dữ liệu NOAA
SELECT stn, date, IF( temp=9999.9, NULL, temp) AS temperature, 
 IF( wdsp="999.9", NULL, CAST(wdsp AS Float64)) AS wind_speed, 
 IF( prcp=99.99, 0, prcp) AS precipitation 
FROM
 `bigquery-public-data.noaa_gsod.gsod2020` 
WHERE
 stn="725030" 
 OR stn="744860" 
ORDER BY
 date DESC, stn ASC

--  Truy vấn bảng mới
SELECT
 AVG(temperature) 
FROM
`khang635.demos.nyc_weather`
WHERE
 date BETWEEN '2020-06-01' AND '2020-06-30'


