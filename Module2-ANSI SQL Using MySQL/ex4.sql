SELECT event_id, COUNT(*) AS peak_sessions 
FROM Sessions 
WHERE TIME(start_time) BETWEEN '10:00:00' AND '12:00:00' 
GROUP BY event_id;