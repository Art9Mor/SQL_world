USE world;

﻿-- Столбцы имя и дистрикт
SELECT name AS CityName, district 
FROM city;

-- Города из России, отсортированные по имени
SELECT * FROM city
WHERE countryCode = 'RUS' 
ORDER BY name;

-- города из Испании, Португалии и Греции, отсортированные по имени по убыванию
SELECT * FROM city
WHERE countryCode IN ('ESP', 'PRT', 'GRC') 
ORDER BY name DESC;

-- и города, у которых население лежит в диапазоне от 300000 до 500000
SELECT * FROM city
WHERE population >= 300000 AND population <= 500000;

-- города, начинающиеся с буквы А
SELECT * FROM city
WHERE name LIKE 'A%';

-- города, содержащие букву А
SELECT name FROM city
WHERE name LIKE '%A%';

-- города из России с населением не менее 1 млн
SELECT * FROM city
WHERE countryCode = 'RUS' AND population >= 1000000;

--  города из Испании, начинающиеся с буквы A, и города из Греции с численностью до 200000 человек
SELECT * FROM city
WHERE (countryCode = 'ESP' AND name LIKE 'A%')
    OR (countryCode = 'GRC' AND population <= 200000);
