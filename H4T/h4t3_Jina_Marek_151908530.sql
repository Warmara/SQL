-- h4t3
-- Jina Marek 151908530

SELECT ingredient_id, ingredient_name, kcal, protein 
FROM ingredient 
WHERE (kcal > 300 OR protein = 0) 
 AND NOT (kcal > 300 AND protein = 0)
ORDER BY ingredient_id;

