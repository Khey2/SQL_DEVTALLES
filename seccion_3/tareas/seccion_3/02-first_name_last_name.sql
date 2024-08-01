select 
	name, 
    SUBSTRING(name, 1, POSITION(' ' in name) ) as first_name,
    TRIM(SUBSTRING(name, POSITION(' ' in name), POSITION(' ' in name) ) ) as last_name
 FROM users;