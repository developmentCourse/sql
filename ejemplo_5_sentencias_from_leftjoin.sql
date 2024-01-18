-- Utilizando la sentencia FROM
-- left join
SELECT * 
FROM usuarios
	LEFT join posts ON usuarios.id = posts.usuario_id
    WHERE posts.usuario_id IS NULL;
    -- solo trae a los usuarios que no tienen posts
    
-- left join // inversa al anterior
SELECT * 
FROM usuarios
	RIGHT join posts ON usuarios.id = posts.usuario_id
    WHERE posts.usuario_id IS NULL;