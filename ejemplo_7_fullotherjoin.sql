-- FULL OTER join // inversa al anterior
SELECT * FROM usuarios
	LEFT join posts ON usuarios.id = posts.usuario_id
    WHERE posts.usuario_id IS NULL
    UNION 
    SELECT * FROM usuarios
	RIGHT join posts ON usuarios.id = posts.usuario_id
    WHERE posts.usuario_id IS NULL;
  -- where CADENAS	
  select * from posts
  where id >= 50;
  
select * from posts
where estatus = 'inactivo';
