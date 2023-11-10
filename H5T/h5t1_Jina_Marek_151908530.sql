-- h5t1
-- Jina Marek 151908530


SELECT count(distinct ic.ice_cream_id) as ice_cream_count,min(ic.manufacturing_cost) as min_cost,max(ic.manufacturing_cost) as max_cost
FROM contains as c
INNER JOIN ice_cream as ic on c.ice_cream_id = ic.ice_cream_id;

