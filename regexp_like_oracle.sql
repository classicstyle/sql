--Query the list of names starting with vowels (i.e., a, e, i, o, or u)
--Your result cannot contain duplicates.
SELECT DISTINCT city
FROM   station
WHERE  Regexp_LIKE(city, '^[aeiouAEIOU].');

--ends with vowels
SELECT DISTINCT city
FROM   station
WHERE  Regexp_LIKE(city, '.*[aeiouAEIOU]$');

