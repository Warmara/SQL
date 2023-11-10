-- Q4B
-- Jina Marek 151908530


SELECT
	i.i_id,
	i.i_name
FROM
	instructor as i,
	(
	SELECT
		ci.i_id,
		count(ci.gc_id) as CIC
	FROM
		can_instruct as ci
	GROUP BY 
		ci.i_id
	) as ci,
	(
	Select
		tt.i_id,
		count(tt.gc_id) as TTC
	From
		tt_class as tt
	GROUP BY
		tt.i_id
	) as tt
WHERE
	i.i_id = ci.i_id AND
	i.i_id = tt.i_id AND
	ci.CIC == TT.TTC
;


	


SELECT
	ci.i_id,
	count(ci.gc_id)
FROM
	can_instruct as ci
GROUP BY 
	ci.i_id
;



Select
	tt.i_id,
	count(tt.gc_id)
From
	tt_class as tt
GROUP BY
	tt.i_id
;
