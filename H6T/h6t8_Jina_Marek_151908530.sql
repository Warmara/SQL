-- h6t8
-- Jina Marek 151908530


select ic.ice_cream_name, ic.manufacturing_cost, m.manufacturer_name
from ice_cream as ic
inner join manufacturer as m on ic.manufacturer_id = m.manufacturer_id
where ic.manufacturing_cost in 
(
Select max(manufacturing_cost)
from ice_cream
)
;
