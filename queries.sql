/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name like '%mon';


SELECT name FROM animals WHERE (date_of_birth) between '2016-01-01' and '2019-12-31';


SELECT name FROM animals WHERE neurtered = true and escape_attempts < 3;


SELECT date_of_birth, name FROM animals WHERE name='Agumon' or name='Pikachu';


SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;


SELECT * FROM animals WHERE neurtered=true;


SELECT * FROM animals WHERE not name = 'Gabumon';


SELECT * FROM animals WHERE weight_kg between 10.3 and 17.4;

BEGIN;

UPDATE animals SET species = 'unspecified';

ROLLBACK;

BEGIN;

UPDATE animals SET species = 'digimon' WHERE name like '%mon';

UPDATE animals SET species = 'pokemon' WHERE name not like '%mon';

COMMIT;

BEGIN;

DELETE FROM animals;

ROLLBACK;

BEGIN;

DELETE FROM animals WHERE date_of_birth > '01-01-2022';

SAVEPOINT sd1;

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SAVEPOINT sd1;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;


select count(name) from animals;

select count(escape_attempts) from animals where escape_attempts=0;

select AVG(weight_kg) from animals;

SELECT Max (escape_attempts), neurtered from animals group by neurtered;

SELECT Max (weight_kg), Min (weight_kg), species from animals group by species;

SELECT AVG(escape_attempts), date_of_birth,name, species from animals WHERE (date_of_birth) between '1990-01-01' and '2000-12-31' group by species, date_of_birth, name;