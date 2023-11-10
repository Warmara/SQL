-- Q2A
-- Jina Marek 151908530


SELECT gc.gc_name, gc.duration
FROM g_class as gc
Where gc.duration == (select min(duration) from g_class)
;
