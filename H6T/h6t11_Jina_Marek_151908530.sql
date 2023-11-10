-- h6t11
-- Jina Marek 151908530


select distinct ice_cream_id, ice_cream_name, manufacturing_cost, ic.manufacturer_id, ice_cream_count, avg_costs
from ice_cream as ic
inner join
(
select m.manufacturer_id, count(ic.ice_cream_id) as ice_cream_count, avg(ic.manufacturing_cost) as avg_costs
from manufacturer as m
full outer join ice_cream as ic on m.manufacturer_id = ic.manufacturer_id
group by m.manufacturer_id
) as mm on mm.manufacturer_id = ic.manufacturer_id
order by mm.ice_cream_count desc
;

