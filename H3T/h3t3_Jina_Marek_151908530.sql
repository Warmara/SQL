-- h3t1
-- Jina Marek 151908530


SELECT md.name, m.name as "sequel_name"
from movie as m
full outer join movie as md on m.predecessor_id = md.id
where md.name is not null
;
