-- h6t2
-- Jina Marek 151908530


select manufacturer_id, manufacturer_name
from manufacturer
where manufacturer_id not in (
select manufacturer_id
from ice_cream
group by manufacturer_id
having count(ice_cream_id)>0)
;
