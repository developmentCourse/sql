-- consultas a base de datos 
select posts.titulo, count(*) num_etiquetas
from posts
	inner join posts_etiquetas on posts.id = posts_etiquetas.post_id
    inner join etiquetas on etiquetas.id = posts_etiquetas.etiqueta_id
group by posts.id
order by num_etiquetas DESC
;
-- otro ejemplo

select posts.titulo, group_concat(nombre)
from posts
	inner join posts_etiquetas on posts.id = posts_etiquetas.post_id
    inner join etiquetas on etiquetas.id = posts_etiquetas.etiqueta_id
group by posts.id;

-- otro ejemplo 2
select *
from etiquetas 
	left join posts_etiquetas on etiquetas.id = posts_etiquetas.etiqueta_id
where posts_etiquetas.etiqueta_id is null;
-- consultas  SQL 
select c.nombre, count(*) as cant_posts
from categorias as c
	inner join posts as p on c.id = p.categoria_id
group by c.id
order by cant_posts DESC
limit 1;
-- otro ejemplo 3

select u.nickname, count(*) cant_posts, group_concat(nombre)
from usuarios as u
	inner join posts as p on u.id = p.usuario_id
    inner join categorias as c on c.id = p.categoria_id
group by u.id
order by cant_posts DESC
;

-- otro ejemplo 4
select *
from usuarios as u
	left join posts on u.id =  posts.usuario_id
where posts.usuario_id is null
;
