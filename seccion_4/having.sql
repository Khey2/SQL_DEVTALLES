-- HAVING

-- ES una clausula MUY util que trabaja 
-- de la mano con group BY

-- contar personas en cada pais
SELECT country , COUNT(*) as 'Personas por pais'
FROM `users`
GROUP BY (country)
ORDER BY count(*) desc;

-- ¿QUE PASA SI QUEREMOS FILTRAR ESTO?
-- R: HAVING

SELECT country , COUNT(*) as 'Personas por pais'
FROM `users`
GROUP BY (country)
HAVING COUNT(*) > 5
ORDER BY count(*) desc;


-- DIFERENCIA ENTRE WHERE Y HAVING
-- R: su ciclo de vida...

-- WHERE: se ejecuta ANTES de aplicar las funciones de agregados ( count, sum, max, min, avg, etc)
-- por lo tanto, where es ideal para filtrar columnas antes de aplicar
-- funciones de agregacion

--HAVING: FILTRA las columnas despues de aplicar GROUP BY y 
-- las funciones de agregacion, ergo, se usa para
-- aplicar condiciones sobre resultados de agrupaciones y funciones de 
-- agregacion

-- RESUMEN: where filtra en una etapa de la consulta y having en otra etapa.. 
--al final es lo mismo