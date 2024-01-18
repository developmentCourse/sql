-- GROUP BY
select estatus, count(*) post_quantity
from posts
group by estatus;
-- año 
select year(fecha_publicacion) as post_year, count(*) as post_quantity
from posts
group by post_year; 
-- name month
select monthname(fecha_publicacion) as post_mont, count(*) as post_quantity
from posts
group by post_mont; 

-- other example
select estatus, monthname(fecha_publicacion) as post_month, count(*) as post_quantity
from posts
group by estatus, post_month; 

-- order by and having ordena por
select *
from posts
order by fecha_publicacion asc
;
-- 
select *
from posts
order by titulo asc
;

select *
from posts
order by usuario_id desc
;

select *
from posts
order by fecha_publicacion asc
limit 5
;
