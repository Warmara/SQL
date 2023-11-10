-- h6t6
-- Jina Marek 151908530


select ic.ice_cream_id, ic.ice_cream_name
from ice_cream as ic
where ic.ice_cream_id in 
(
select ice_cream_id
from contains as c
inner join ingredient as i on c.ingredient_id = i.ingredient_id
where i.ingredient_name like 'sugar'
)
AND ic.ice_cream_id not in
(
select ice_cream_id
from contains as c
inner join ingredient as i on c.ingredient_id = i.ingredient_id
where i.ingredient_name like 'Vanilla extract'
);
