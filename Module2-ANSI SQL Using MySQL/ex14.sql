SELECT e.title, COUNT(*) AS total_registrations 
FROM Registrations r 
JOIN Events e ON r.event_id = e.event_id 
GROUP BY r.event_id 
ORDER BY total_registrations DESC 
LIMIT 3;