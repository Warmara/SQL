-- h2t2
-- Jina Marek 151908530

--SELECT distinct i.ingredient_id, i.ingredient_name
--from [contains] as c
--left join ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
--left join manufacturer as m on ic.manufacturer_id = m.manufacturer_id
--left join ingredient as i on c.ingredient_id = i.ingredient_id
--where i.ingredient_name like 'Vanilla extract'
--order by i.ingredient_id asc
--;

Select m.manufacturer_id, m.manufacturer_name, ic.ice_cream_id, ic.ice_cream_name
from manufacturer as m
left outer join ice_cream as ic on m.manufacturer_id = ic.manufacturer_id
;
