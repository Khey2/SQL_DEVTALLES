
-- 1. Ver todos los registros

select * from users;


-- 2. Ver el registro cuyo id sea igual a 10

select * from users where id = 10;


-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)

select * from users where name like 'Jim%';

-- 4. Todos los registros cuyo segundo nombre es Alexander

select * from users where name like '%Alexander';

-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'

UPDATE users
SET
	name = 'Miguel Silva Rubio'
  WHERE id = 1;

-- 6. Borrar el último registro de la tabla

-- SELECT MAX(id) FROM users retorna el valor del MAXIMO id presente en la tabla users, ese valor
-- se usa en el delete

DELETE FROM users
where id = (SELECT MAX(id) FROM users);