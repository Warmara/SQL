-- h5t7
-- Jina Marek 151908530


SELECT distinct ic.ice_cream_id, ic.ice_cream_name, m.manufacturer_name
FROM ingredient as i
FULL OUTER JOIN contains as c on i.ingredient_id = c.ingredient_id
FULL OUTER JOIN ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
INNER JOIN manufacturer as m on ic.manufacturer_id = m.manufacturer_id
group by ic.ice_cream_id
having count(i.ingredient_id) == 2
;

