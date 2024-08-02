-- indice unico compuesto.
-- ( Los valores NO se pueden REPETIR ).
CREATE unique index unique_name_countrycode_district on city (
	name, countrycode, district
);


-- Indice no UNICO.
-- ( los valores se pueden repetir ).
CREATE unique index district on city (

    district
);

