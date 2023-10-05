-- h4t6
-- Jina Marek 151908530


SELECT ic.ice_cream_id, ic.ice_cream_name
FROM ice_cream as ic
INNER JOIN contains as c on ic.ice_cream_id == c.ice_cream_id
INNER JOIN contains as cc on ic.ice_cream_id == cc.ice_cream_id
WHERE c.ingredient_id == 3
 AND cc.ingredient_id == 4
ORDER BY ic.ice_cream_id;
