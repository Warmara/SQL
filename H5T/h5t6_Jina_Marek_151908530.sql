-- h5t6
-- Jina Marek 151908530


SELECT distinct i.ingredient_id, i.ingredient_name, count(ic.ice_cream_id) as ice_cream_count
FROM ingredient as i
FULL OUTER JOIN contains as c on i.ingredient_id = c.ingredient_id
FULL OUTER JOIN ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
group by i.ingredient_id
;

