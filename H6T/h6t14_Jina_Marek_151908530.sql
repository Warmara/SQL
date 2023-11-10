-- h6t14
-- Jina Marek 151908530


select manufacturing_cost + cast(manufacturing_cost as Float)/10 as increased_cost
from ice_cream as ic
order by ice_cream_name
;
