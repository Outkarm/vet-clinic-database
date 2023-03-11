/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neurtered boolean,
    weight_kg decimal,
    species varchar(100),
    PRIMARY KEY(id)
);


create  table owners (
    id int PRIMARY KEY,
	full_name varchar(255),
	age int
)

create table species(
id int primary key,
	name varchar(255)
)

Alter table animals drop column species;
Alter table animals add column species_id int references species(id);

Alter table animals add column owner_id int references owners(id);

