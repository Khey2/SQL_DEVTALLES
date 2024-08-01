-- AGRUPACIONES
-- Son funciones que se usan para diferentes cosas

--COUNT
--cuenta los REGISTROS de la tabla users
select COUNT(*) as total_users from users;


--MIN
-- cual el registro con el menor numero de seguidores
select MIN(followers) as minimo_seguidores_db from users;

-- MAX
-- maxima cantidad de x columna
select max(followers) as maximo_seguidores_db from users;


--AVG
-- Promedio de una columna!
-- all followers data / 1032 ( cantidad registros)
select AVG(followers) as promedio_seguidores from users;


-- SUM
-- Suma los datos de X columna
select SUM(followers) as suma_seguidores from users;

--!PERO
-- Que pasa si quiero saber exactamente QUE PERSONA
-- tiene 4 followers?, para saber exactamente a que persona le 
-- pertenecen esos 4 followers... GROUP BY
