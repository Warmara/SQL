-- h2t2
-- Jina Marek 151908530

SELECT distinct ic.ice_cream_name
from [contains] as c
left join ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
left join manufacturer as m on ic.manufacturer_id = m.manufacturer_id
left join ingredient as i on c.ingredient_id = i.ingredient_id
where i.ingredient_name like 'Vanilla extract'
order by m.manufacturer_name asc, ic.ice_cream_name asc, i.ingredient_name asc
;
