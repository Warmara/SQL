-- h5t1
-- Jina Marek 151908530


SELECT manufacturer_name
from manufacturer
where country in ("Italy", "Finland")
order by manufacturer_name asc