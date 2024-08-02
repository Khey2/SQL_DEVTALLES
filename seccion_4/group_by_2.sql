-- TAREA:

-- del correo elecvtronico EXTRAE solo el dominio! e indica cuantas personas
-- tienen ese dominio!

--aqui te dice, cuantos dominios ESTAN repetidos ( los agrupa )
-- LO INFERI! si entendi :)
SELECT 
    SUBSTRING(email, POSITION( '@' IN email) + 1 ) AS DOMAIN,
    count(*) as users_with_domain
 FROM users
 GROUP BY  DOMAIN
 HAVING users_with_domain > 1

 