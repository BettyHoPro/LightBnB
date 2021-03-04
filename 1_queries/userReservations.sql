SELECT properties.id, title, cost_per_night, start_date, avg(rating) as average_rating
FROM reservations
JOIN properties on reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date 
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;