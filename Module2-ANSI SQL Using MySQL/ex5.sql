SELECT u.city, COUNT(DISTINCT r.user_id) AS num_users 
FROM Registrations r 
JOIN Users u ON r.user_id = u.user_id 
GROUP BY u.city 
ORDER BY num_users DESC 
LIMIT 5;