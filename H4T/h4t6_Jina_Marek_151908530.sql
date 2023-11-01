-- h4t6
-- Jina Marek 151908530


SELECT ic.ice_cream_id , ic.ice_cream_name
FROM contains as c
INNER JOIN ice_cream as ic on c.ice_cream_id = ic.ice_cream_id
WHERE c.ingredient_id == 3
INTERSECT
SELECT icm.ice_cream_id, icm.ice_cream_name
FROM contains as cc
INNER JOIN ice_cream as icm on cc.ice_cream_id = icm.ice_cream_id
WHERE cc.ingredient_id == 4
ORDER BY ic.ice_cream_id asc;
