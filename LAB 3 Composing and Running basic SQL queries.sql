-- 0
drop table INSTRUCTOR;

-- 1 
CREATE TABLE INSTRUCTOR
	(ins_id INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(15) NOT NULL,
	firstname VARCHAR(15) NOT NULL,
	city VARCHAR(15),
	country CHAR(2)		
	);
	
-- 2A
INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES 
(1, 'Ahuja', 'Rav', 'Toronto', 'CA');

-- 2B
INSERT INTO INSTRUCTOR
VALUES 
(2, 'Chong', 'Raul', 'Toronto', 'CA'),
(3, 'Vasudevan', 'Hima', 'Chicago', 'US');

-- 3
SELECT * FROM INSTRUCTOR;

-- 3B
SELECT firstname, lastname, country FROM INSTRUCTOR 
WHERE city = 'Toronto';

-- 4 
UPDATE INSTRUCTOR 
SET city = 'Markham'
WHERE ins_id = 1;

-- 5
DELETE FROM INSTRUCTOR
WHERE ins_id = 2;

-- 5B
SELECT * FROM INSTRUCTOR;