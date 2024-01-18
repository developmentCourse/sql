-- INNER join // inversa al anterior
SELECT * FROM usuarios
	INNER join posts ON usuarios.id = posts.usuario_id;