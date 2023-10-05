-- h3t1
-- Jina Marek 151908530


SELECT m.name, md.name as "predecessor_name"
from movie as m
inner join movie as md on m.predecessor_id = md.id
;
