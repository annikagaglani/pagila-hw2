/*
 * This problem is the same as 07.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */
WITH us_rented_films AS (
    SELECT DISTINCT f.film_id
    FROM film f
    JOIN inventory i ON f.film_id = i.film_id
    JOIN rental r ON i.inventory_id = r.inventory_id
    JOIN customer c ON r.customer_id = c.customer_id
    JOIN address a ON c.address_id = a.address_id
    JOIN city ci ON a.city_id = ci.city_id
    JOIN country co ON ci.country_id = co.country_id
    WHERE co.country = 'United States'
)
SELECT DISTINCT f.title
FROM film f
JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN us_rented_films usrf ON f.film_id = usrf.film_id
WHERE usrf.film_id IS NULL
ORDER BY f.title;
