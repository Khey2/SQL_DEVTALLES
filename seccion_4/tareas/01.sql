-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX

select 
	first_name as nombre, 
    last_name as apellido,
    last_connection as IP
from users
-- 
-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas

select 
	first_name as nombre, 
    last_name as apellido,
    followers as seguidores
from users
where followers > 4600;
