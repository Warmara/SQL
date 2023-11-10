-- Q2C
-- Jina Marek 151908530


SELECT gc.gc_name, gc.duration, c.c_name
FROM g_class as gc
full outer join category as c on gc.c_id = c.c_id
Where c.c_name like 'Body maintenance' and gc.duration == (select min(duration) from g_class as gc, category as c where gc.c_id = c.c_id and c.c_name like 'Body maintenance')
order by gc.gc_name
;
