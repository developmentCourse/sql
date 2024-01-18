use platzi_test;
CREATE TABLE people (
	person_id int AUTO_INCREMENT,
    last_name varchar(225),
    first_name varchar(255),
    address varchar(255), 
    city varchar(255),
		PRIMARY KEY (person_id)
);

insert INTO people(last_name, first_name, address, city)
Values ('Juarez', 'Fernando', 'Puesto180 numero 2A', 'Bolivia'),
		('Rodrigez', 'Sergio', 'Max toledo', 'Bolivia');
        
Select * From people;

UPDATE people
SET last_name='Choque', city='Sucre'
WHERE person_id= '1';

delete from people
where person_id = '2';

select first_name, last_name
from people;