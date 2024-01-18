-- Utilizando la sentencia WHERE nulo y no nulo

select * from posts
where usuario_id is not null; -- trae a todos que tienen usuario id

select * from posts
where usuario_id is not null 
and estatus ='activo'
and id <50
and categoria_id = 2
and year(fecha_publicacion) = '2025';
