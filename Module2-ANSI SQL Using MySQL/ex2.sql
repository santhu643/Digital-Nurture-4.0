SELECT e.title, AVG(f.rating) AS average_rating, COUNT(f.feedback_id) AS feedback_count 
FROM Feedback f 
JOIN Events e ON f.event_id = e.event_id 
GROUP BY f.event_id 
HAVING feedback_count >= 10 
ORDER BY average_rating DESC;