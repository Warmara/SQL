-- h2t2
-- Jina Marek 151908530

--SELECT distinct i.ingredient_name, ic.ice_cream_name
--from [contains] as c
--left outer join ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
--left outer join manufacturer as m on ic.manufacturer_id = m.manufacturer_id
--left outer join ingredient as i on c.ingredient_id = i.ingredient_id
--where i.ingredient_name like 'Vanilla extract'
--order by i.ingredient_id asc
--;

Select i.ingredient_name, ic.ice_cream_name
from ingredient as i
left outer join contains as c on i.ingredient_id = c.ingredient_id
left outer join ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
--where
Order by i.ingredient_name asc, ic.ice_cream_name asc
;

