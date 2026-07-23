USE netflix_db_1;

SHOW TABLES;

SELECT *
FROM netflix
LIMIT 10;

SELECT COUNT(*) AS total_records
FROM netflix;

DESCRIBE netflix;

SELECT
    type,
    COUNT(*) AS total
FROM netflix
GROUP BY type;

SELECT
    rating,
    COUNT(*) AS total
FROM netflix
WHERE rating <> 'Unknown'
GROUP BY rating
ORDER BY total DESC;

SELECT
    country,
    COUNT(*) AS total_titles
FROM netflix
WHERE country <> 'Unknown'
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

SELECT
    release_year,
    COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY total_titles DESC;

SELECT
    title,
    duration
FROM netflix
WHERE type='Movie'
ORDER BY CAST(REPLACE(duration,' min','') AS UNSIGNED) DESC
LIMIT 10;

SELECT
director,
COUNT(*) AS total_titles
FROM netflix
WHERE director IS NOT NULL
  AND director <> 'Unknown'
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

SELECT *
FROM netflix
WHERE release_year>=2020;

SELECT listed_in,
COUNT(*) AS total
FROM netflix
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

SELECT cast,
COUNT(*) AS total
FROM netflix
WHERE cast <> 'Unknown'
GROUP BY cast
ORDER BY total DESC
LIMIT 10;