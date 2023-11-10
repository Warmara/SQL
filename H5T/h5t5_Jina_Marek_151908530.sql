-- h5t3
-- Jina Marek 151908530


SELECT distinct m.manufacturer_id, m.manufacturer_name, count(ic.ice_cream_id) as ice_cream_count,min(ic.manufacturing_cost) as min_cost,max(ic.manufacturing_cost) as max_cost
FROM ice_cream as ic
FULL OUTER JOIN manufacturer as m on ic.manufacturer_id = m.manufacturer_id
group by m.manufacturer_id
;

