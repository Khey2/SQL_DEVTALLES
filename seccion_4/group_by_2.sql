-- TAREA:

-- del correo elecvtronico EXTRAE solo el dominio! e indica cuantas personas
-- tienen ese dominio!

SELECT 
	email,
    SUBSTRING(email, POSITION('@' IN email) + 1, POSITION('.' IN SUBSTRING(email, POSITION('@' IN email) + 1)) - 1) AS DOMAIN,
    count(*) as users_with_domain
 FROM users
 GROUP BY DOMAIN
 HAVING users_with_domain > 2;