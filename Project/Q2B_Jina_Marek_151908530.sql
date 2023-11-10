-- Q2B
-- Jina Marek 151908530


SELECT gc.gc_name, gc.duration, c.c_name
FROM g_class as gc
full outer join category as c on gc.c_id = c.c_id
Where gc.duration == (select min(duration) from g_class)
;
