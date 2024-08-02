-- Es un tipo de constraint que se le aplica 
-- a un campo para verificaciones ADICIONALES


ALTER table country add check(
    surfacearea >= 0
);


-- CEHCKS MULTIPLES ATRIBUTOS 
--! MYSQL no se pudo con phpmyadmin
ALTER TABLE country
ADD CONSTRAINT chk_continent
CHECK 
( continent = 'Asia') or, (continent = 'South America') or, 
( continent = 'North America') or(continent =  'Oceania') 
or( continent = 'Antartica') or (continent = 'Africa');


--! ELIMINAR CONSTRAINTS
ALTER TABLE DROP contraint "contraint_name"

