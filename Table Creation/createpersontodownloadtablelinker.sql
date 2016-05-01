set client_encoding to 'latin1'
create table person_id_username (person_id int primary key not null, username varchar(50) not null);
COPY person_id_username FROM 'C:\Users\Allen\Downloads\person_id_username.txt' DELIMITER ',' CSV;