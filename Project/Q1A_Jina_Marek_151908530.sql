-- Q1A
-- Jina Marek 151908530


SELECT tt.day_of_week, tt.start_time, gc.gc_name, gc.duration
FROM tt_class as tt
inner join g_class as gc on tt.gc_id = gc.gc_id
full outer join category as c on gc.c_id = c.c_id
Where c.c_name like 'Body maintenance'
order by tt.day_of_week asc, tt.start_time asc, gc.gc_name asc
;
