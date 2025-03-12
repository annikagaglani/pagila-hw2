/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
SELECT f.title
FROM film f
WHERE 'Behind the Scenes' = ANY(f.special_features)
AND 'Trailers' = ANY(f.special_features)
ORDER BY f.title;
