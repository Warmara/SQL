-- h6t7
-- Jina Marek 151908530


select ic.ice_cream_name, ic.manufacturing_cost
from ice_cream as ic
where ic.manufacturing_cost in 
(
Select max(manufacturing_cost)
from ice_cream
)
;
