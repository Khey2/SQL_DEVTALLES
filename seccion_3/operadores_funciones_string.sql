SELECT 
	id, 
	UPPER(name) AS upper_name,
	LOWER(name) AS upper_name,
    LENGTH(name) as LENGTH,
    '20' as constante,
    20 / 2 as constante,
    CONCAT( id, '-', name) as ID_NAME,
from 
	users limit 8;