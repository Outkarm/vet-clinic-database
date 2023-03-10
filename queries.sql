/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name like '%mon';


SELECT name FROM animals WHERE (date_of_birth) between '2016-01-01' and '2019-12-31';


SELECT name FROM animals WHERE neurtered = true and escape_attempts < 3;


SELECT date_of_birth, name FROM animals WHERE name='Agumon' or name='Pikachu';


SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;


SELECT * FROM animals WHERE neurtered=true;


SELECT * FROM animals WHERE not name = 'Gabumon';


SELECT * FROM animals WHERE weight_kg between 10.3 and 17.4;