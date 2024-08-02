-- INDICES

-- UN DB en la vida real es como muchos 
-- CAJONES,
-- un query va a ejecutar una busqueda
-- en TODOS los registros ( si hay 100 ejecutara en 100)
-- aqui entra el concepto de indices, estos le dicen a la DB
-- que se prepare porque haras consultas pasadas en ese indice.

-- ( todos los registros que empiezen con P, lo asignara a un cajon especial para que lo busque
-- ahi )

/*
RESPUESTA VERIFICADA POR CHAT GPT

cuando agrego un indice en una columna, basicamente estoy 
indicando que la columna la ponga en una "cajita" especial,
 la cual, cuando busques el campo, se busque dentro de esta 
 "cajita" y sea mas facil y rapido recuperar ese valor



*/


--! creando indices

-- los indices unicos son mas rapidos
-- los indices toman cierto peso en la DB 
-- porque la DB crea dicha referencia, ademas, puede ser tardado


CREATE UNIQUE index "unique_country_name" on country ( 
    name
);

