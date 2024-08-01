-- Between es un comandopara 
-- indicar traer un valor entre 2 valores

select 
	first_name as nombre, 
    last_name as apellido,
    followers as seguidores
from 
	users
where
	-- FOLLOWER >= 4600 AND followers <= 4700
	followers BETWEEN 4600 and 4650