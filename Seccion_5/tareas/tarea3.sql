-- CREAR FK de 
/*

 de countrylenguage a city

*/


ALTER TABLE countrylenguage
ADD FOREIGN KEY (countrycode)
REFERENCES city(code )