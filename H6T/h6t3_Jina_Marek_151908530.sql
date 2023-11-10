-- h6t3
-- Jina Marek 151908530


select m.manufacturer_id, m.manufacturer_name
from manufacturer as m
where exists (
select *
from ice_cream as ic
where m.manufacturer_id = ic.manufacturer_id
)
;
