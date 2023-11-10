-- Q4B
-- Jina Marek 151908530


SELECT
	distinct c.c_name,
	count(distinct gc.gc_id) as no_group_classes,
	count(tt.i_id) as no_timetable_classes,
	count(distinct tt.i_id) as no_instructors
FROM
	tt_class as tt
	full outer join g_class as gc on gc.gc_id = tt.gc_id
	full outer join category as c on c.c_id = gc.c_id
	full outer join instructor as i on tt.i_id = i.i_id
GROUP BY c.c_id
order by c.c_name
;


