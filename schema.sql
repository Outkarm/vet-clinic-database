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
