-- CREANDO UNA LLAVE FORANEA

-- asi creas una llave foranea, añades la constraint
-- dices que la tabla city va a tener una foreign key en el campo countrycode 
-- este campo REFERENCIA a la columna code de country
ALTER TABLE city 
    ADD CONSTRAINT fk_country_code
    FOREIGN KEY ( countrycode )
    REFERENCES country( code ); 
    -- ON DELETE CASCADE

    --! SI NO HAY UN VALOR DE PRIMARY KEY LANZARA UN ERROR RARO...  
    --! MYSQL NO TE DA DETALLES


-- TAREA
/*
    ALTERA LA TABLA countrylanguage
    añadiendole la llave foranea llamada
    fk_countrylanguage_code al campo countrycode
    y que haga referencia a la tabla country a 
    la columna code

*/
ALTER TABLE countrylanguage
    ADD CONSTRAINT fk_countrylanguage_code
    FOREIGN KEY 
    (countrycode)
REFERENCES country(code )