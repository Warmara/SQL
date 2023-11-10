-- h6t10
-- Jina Marek 151908530


select m.manufacturer_id, m.manufacturer_name, count(ic.ice_cream_id) as ice_creams, ingredients
from manufacturer as m
full outer join ice_cream as ic on m.manufacturer_id = ic.manufacturer_id
full outer join  
(
select m.manufacturer_id as manufacturer_id, count(distinct i.ingredient_id) as ingredients
from manufacturer as m
full outer join ice_cream as ic on m.manufacturer_id = ic.manufacturer_id
full outer join contains as c on ic.ice_cream_id = c.ice_cream_id
full outer join ingredient as i on c.ingredient_id = i.ingredient_id
group by (m.manufacturer_id)
) as icc on icc.manufacturer_id = m.manufacturer_id
group by ic.manufacturer_id
order by m.manufacturer_id
;
