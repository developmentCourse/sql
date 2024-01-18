-- YEAR, MONTH and DAY
select * from posts
where day(fecha_publicacion) between '01' and '12';