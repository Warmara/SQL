-- Q4A
-- Jina Marek 151908530


SELECT 
	distinct c.c_name,
	count(gc.gc_id) as no_group_classes,
	min(duration) as min_duration,
	max(duration) as max_duration
FROM
	category as c,
	g_class as gc
WHERE
	c.c_id = gc.c_id
GROUP BY 
	gc.c_id
	order by c.c_name
;

