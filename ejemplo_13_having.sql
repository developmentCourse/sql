-- having
select monthname(fecha_publicacion) as post_month, estatus, count(*) as post_quantity
from posts
group by estatus, post_month 
having post_quantity >=2
order by post_month
;
