-- h2t2
-- Jina Marek 151908530

SELECT distinct ic.ice_cream_id, ic.ice_cream_name, m.manufacturer_name 
from [contains] as c
left join ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
left join manufacturer as m on ic.manufacturer_id = m.manufacturer_id
order by ic.ice_cream_id asc
;
