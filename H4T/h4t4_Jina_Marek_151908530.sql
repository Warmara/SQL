-- h4t4
-- Jina Marek 151908530

SELECT ice_cream_name, manufacturer_name, country
FROM manufacturer 
INNER JOIN ice_cream ON manufacturer.manufacturer_id == ice_cream.manufacturer_id  
WHERE country == 'Finland' 
 or country == 'Italy'
ORDER BY manufacturer_name, ice_cream_name;

