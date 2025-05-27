SELECT e.title 
FROM Events e 
LEFT JOIN Sessions s ON e.event_id = s.event_id 
WHERE s.event_id IS NULL;