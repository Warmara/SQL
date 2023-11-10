-- h5t1
-- Jina Marek 151908530


SELECT g.id, g.name, w.id, w.name, wr.name
FROM contains as c
inner join grape as g on c.grape_id = g.id
inner join wine as w on c.wine_id = w.id
inner join winery as wr on w.winery_id = wr.id
where g.color like "blue"