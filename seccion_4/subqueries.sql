-- ESTO es una manera no eficiente de resolver este ejercicio!
-- Los subqueries es un poder con gran responsabilidad...

-- un Subquery es un query que se ejecuta
-- dentro de otro query

-- Ejemplo: SELEC * FROM users where 
-- ( Sub query from tabla B )


-- UN SUBQUERY es altamente ineficiente,
-- porque cada query se ejecuta contra la base de datos...

-- si la tabla A tiene 10,000 registros, el subuqery se ejecuta 
-- 10,000 veces

-- Ejemplo: select * from TablaA where ( Sub query from Tabla B)

-- Imagina que tabla A tiene 1 millon de registros... el select from A
-- ejecutara 1 millon de veces el query... y cada 1 de esos registros va a ejecutar el
-- subquery interno.. si es pesada.. haras cosas muy fuertes
-- hay de casos a casos, solo ten presente esto..

-- SUBQUERY: query que se ejecuta dentro de otro query.

select DOMAIN from (SELECT 
    SUBSTRING(email, POSITION( '@' IN email) + 1 ) AS DOMAIN,
    count(*) as users_with_domain
 FROM users
 GROUP BY  DOMAIN
 HAVING users_with_domain > 1) as domains

 -- basicamente el resultado del subquery genera una tabla... que a su vez puedes darle
 -- un alias a dicha tabla y seleccionarla con otro select sus columnas!
-- lo que te permitiria operar sobre dicha tabla con wheres, counts..
-- selects de columnas, agrupadores, etc

--! LOS SUBQUERYS SON INEFICIENTES, SE TRATAN DE
--! EVITAR, en este caso una vista MATERIALIZADA
--! SERIA LO IDEA O UNA VISTA TEMPORAL..
