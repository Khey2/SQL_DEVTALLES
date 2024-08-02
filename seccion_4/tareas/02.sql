
-- 1. Cuantos ( count ) usuarios tenemos con 
-- cuentas @google.com
-- Tip: count, like

--?  masomenos

select 
    SUBSTRING( email, POSITION( '@' in email )) as domain,
    count(*) as usuarios_con_dominio
from 
	users
GROUP BY 
	domain
HAVING domain like '@google.com'

--! SOLUCION DE FERNANDO ( me complique la vida ):
select count(*)
FROM users WHERE email like '%@google.com';
-- 2. De qué países son los usuarios con cuentas 
-- de @google.com
-- Tip: distinct
--?  CORRECTO, segunda consulta es la adecuada

select DISTINCT
    country,
    count(*) as usuario_residencia
from 
	users
WHERE email like '%@google.com'
 GROUP BY 
	 country;

-- o ( esta la veo mas optima ) CORRECTA
SELECT DISTINCT country FROM users
 where email like '%@google.com';



-- 3. Cuantos usuarios hay por país (country)
-- Tip: Group by
--? CORRECTO
select 
    country,
    count(*) as users
from 
	users
 GROUP BY 
	 country;


-- 4. Listado de direcciones IP de todos los usuarios de Iceland
-- Campos requeridos first_name, last_name, country, last_connection
--? CORRECTO

SELECT 
    first_name,
    last_name, 
    country,
    last_connection
FROM 
    USERS
WHERE 
    country like 'Iceland';

-- 5. Cuantos de esos usuarios (query anterior) tiene dirección IP
-- que incia en 112.XXX.XXX.XXX
--? masomenos, te complicaste la vida

--! CON subquery
SELECT count(*) as USUARIOS from
(SELECT 
 first_name,
 last_name, 
 country,
  last_connection,
  count(*)
FROM USERS 
WHERE country like 'Iceland' 
GROUP BY last_connection
HAVING last_connection like '112%') as usuarios_con_ip_112;

--! sin SUBQUERY intento 
SELECT 
 first_name,
 last_name, 
 country
  last_connection,
  count(*)
FROM USERS 
WHERE country like 'Iceland' 
GROUP BY last_connection
HAVING last_connection like '112%';

--! SOLUCION DE FERNANDO OPTIMA
SELECT count(*) from users
where country = 'Iceland' AND last_connection like '112.%';


-- 6. Listado de usuarios de Iceland, tienen dirección IP
-- que inicia en 112 ó 28 ó 188
-- Tip: Agrupar condiciones entre paréntesis 


SELECT 
 first_name,
 last_name, 
 country,
  last_connection,
  count(*) as users
FROM USERS 
WHERE country like 'Iceland' 
GROUP BY last_connection
HAVING 
	(last_connection like '112%') OR 
    (last_connection like '28%') OR
    (last_connection like '118%');

--! PROFE: ME COMPLIQUE DE NUEVO, saque lo mismo pero mas avanzado
SELECT 
 first_name,
 last_name, 
 country,
  last_connection
FROM USERS 
WHERE country = 'Iceland' AND
	(last_connection like '112.%' OR 
    last_connection like '28.%' OR
    last_connection like '118.%');



-- 7. Ordene el resultado anterior, por apellido (last_name) ascendente
-- y luego el first_name ascendentemente también
--? BIEN, pero te complicaste la vida..con el anterior query

SELECT 
 first_name,
 last_name, 
 country,
  last_connection,
  count(*) as users
FROM USERS 
WHERE country like 'Iceland' 
GROUP BY last_connection
HAVING 
	(last_connection like '112%') OR 
    (last_connection like '28%') OR
    (last_connection like '118%')
ORDER BY last_name ASC, first_name ASC;

--! CUANDO USAS mas de 1 order by, aplicas el primer orden, luego, basados en ese orden
--! filtras los resultados REPETIDOS del primer orden basados en la 2nda columna! y asi
--! susecivamente


-- 8. Listado de personas cuyo país está en este listado
-- ('Mexico', 'Honduras', 'Costa Rica')
-- Ordenar los resultados de por País asc, Primer nombre asc, apellido asc
-- Tip: Investigar IN
-- Tip2: Ver Operadores de Comparación en la hoja de atajos (primera página)

SELECT 
	*
FROM
	users
WHERE country IN ('Mexico', 'Honduras', 'Costa Rica');

-- 9. Del query anterior, cuente cuántas personas hay por país
-- Ordene los resultados por País asc
--? BIEN!

SELECT 
	country,
    count(*) as peronas_por_pais
FROM
	users
GROUP BY country
HAVING country IN ('Mexico', 'Honduras', 'Costa Rica');


--? CALIFICACION FINAL 8.5 ( tiendes a complicarte de mas )