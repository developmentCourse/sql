use test_db;
create table people(
person_id int AUTO_INCREMENT,
    last_name varchar(225),
    first_name varchar(255),
    address varchar(255), 
    city varchar(255),
		PRIMARY KEY (person_id)
);
INSERT INTO people(last_name, first_name, address, city)
VALUES ('Juarez', 'Erick', 'Max toledo', 'Sucre');

Select first_name, last_name
from people;

drop table people; 