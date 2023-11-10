-- h5t3
-- Jina Marek 151908530


SELECT DISTINCT c.ingredient_id, count(c.ice_cream_id) as count
FROM contains as c
group by c.ingredient_id
;

