ALTER TABLE users
ADD COLUMN first_name varchar(100) NULL,
ADD COLUMN last_name varchar(100) NULL


----- PONE el last_name y el first name_

UPDATE users
SET
   first_name = TRIM(SUBSTRING(name, 1, POSITION(' ' in name) )),
   last_name = TRIM(SUBSTRING(name, POSITION(' ' in name),POSITION(' ' in name) ));