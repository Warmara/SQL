-- h6t9
-- Jina Marek 151908530




select m.manufacturer_name
from manufacturer as m
inner join ice_cream as ic on m.manufacturer_id = ic.manufacturer_id
group by ic.manufacturer_id
having avg(manufacturing_cost)
>
(
select AVG(manufacturing_cost)
from ice_cream
)

;
