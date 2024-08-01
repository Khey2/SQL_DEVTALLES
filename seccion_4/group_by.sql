-- COMO SABES QUE PERSONA TIENE 4 FOLLOWERS Y 4999 FOLLOWERS?
-- ojo que varuias personas pueden tenber 4 y varias 4999
-- asi que esto sacara igual las personas

-- en principio este query te da los usuarios con 
--4 seguidores y con 4999, pero, de manera FIJA 
-- porque debes de saber de antemano cuantos seguidores son 
-- min y max
select 
	first_name,
    last_name,
    followers 
from 
	users
WHERE
	followers = 4 OR followers = 4999;

-- forma dinamica
select 
	first_name,
    last_name,
    followers 
from 
	users
WHERE
	followers = (SELECT  MIN(followers) FROM users) 
    OR followers = (SELECT  MAX(followers)  FROM users);


-- QUE pasa si quieres agrupar para saber que cantidad de personas
-- tienen 4999 y 4

-- GROUP BY followers

-- Agrupa los resultados por el número de
--  seguidores. Esto permite calcular el número
--  de usuarios para cada valor de
-- seguidores específico.

select 
	count(*), followers
from 
	users
WHERE
	followers = (SELECT  MIN(followers) FROM users) 
    OR followers = (SELECT  MAX(followers)  FROM users)
GROUP BY followers


-- puedes usar BETWEEN para contar en rangos...
select 
	count(*), followers
from 
	users
WHERE
 BETWEEN
	    followers = (SELECT  MIN(followers) FROM users) 
    AND followers = (SELECT  MAX(followers)  FROM users)
GROUP BY followers


