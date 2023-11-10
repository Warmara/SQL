-- Q3
-- Jina Marek 151908530


SELECT distinct i.i_id, i.i_name
FROM
	instructor as i,
	can_instruct as ci,
	g_class as gc,
	category as c,
	can_instruct as cci,
	g_class as ggc,
	category as cc
Where
	ci.i_id = i.i_id AND
	ci.gc_id = gc.gc_id AND
	c.c_id = gc.c_id AND
	cci.i_id = i.i_id AND
	cci.gc_id = ggc.gc_id AND
	cc.c_id = ggc.c_id AND
	c.c_name like 'Indoor cycling' AND
	cc.c_name like 'Body maintenance'
;

