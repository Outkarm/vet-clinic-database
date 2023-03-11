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

SELECT animals.name , owners.full_name FROM animals, owners where full_name='Melody Pond' and owners.id=animals.owner_id;



SELECT animals.name animals , species.name species FROM animals, species WHERE species.id=animals.species_id AND species.name='Pokemon';



SELECT animals.name animals , owners.full_name owners FROM animals right outer join owners on owners.id=animals.owner_id;


SELECT count(animals.name) total_animals ,species.name species FROM animals inner join species on species.id=animals.species_id Group by species.name;


SELECT animals.name animals , owners.full_name owners, species.name FROM animals inner join owners on owners.id=animals.owner_id inner join species on species.id=animals.species_id where  species.name='Digimon' and owners.full_name='Jennifer Orwell';


SELECT owners.full_name, animals.name , animals.escape_attempts FROM animals inner join owners on owners.id=animals.owner_id where owners.full_name='Dean Winchester' and animals.escape_attempts=0;




SELECT  count(animals.name) total_animals, owners.full_name FROM animals inner join owners on owners.id= animals.owner_id
group by owners.full_name order by total_animals desc limit 1;


select animals.name, vets.name, visits.date_of_vists from animals inner join visits on animals.id=visits.animal_id
inner join vets on visits.vets_id=vets.id
where vets.name='William Tatcher'
order by visits.date_of_vists desc
limit 1



select count(animals.name), vets.name from animals inner join visits on animals.id=visits.animal_id
inner join vets on visits.vets_id=vets.id
where vets.name='Stephanie Mendez'
group by vets.name




select vets.name, species.name
from specializations inner join species on specializations.species_id = species.id
right outer join vets on specializations.vets_id = vets.id



select animals.name, vets.name, visits.date_of_vists from animals inner join visits on animals.id=visits.animal_id
inner join vets on visits.vets_id=vets.id
where vets.name='Stephanie Mendez'
and visits.date_of_vists BETWEEN '01-04-2020' AND '08-30-2020'


SELECT animals.name,visits.date_of_vists
FROM visits LEFT JOIN animals ON animals.id = visits.animal_id LEFT JOIN vets ON vets.id = visits.vets_id WHERE vets.name = 'William Tatcher' ORDER BY visits.date_of_vists DESC LIMIT 1;



Select animals.name, vets.name , visits.date_of_vists from animals inner join visits on animals.id=visits.animal_id
inner join vets on vets.id= visits.vets_id
where vets.name='Maisy Smith'
order by visits.date_of_vists 
limit 1;




Select animals.name, vets.name , visits.date_of_vists from animals inner join visits on animals.id=visits.animal_id
inner join vets on vets.id= visits.vets_id
order by visits.date_of_vists desc
limit 1;




SELECT COUNT(visits.date_of_vists)-(
    SELECT COUNT(vets.name) 
    FROM vets, specializations, animals, visits
    WHERE
    visits.vets_id = vets.id
    AND animals.id = visits.animal_id
    AND concat(animals.species_id, visits.vets_id) = concat(specializations.species_id, specializations.vets_id)
    ) total_unspecialized_cases 
FROM visits;



WITH new AS(
    SELECT DISTINCT(animals.name) animal, COUNT(animals.name) total_visits, vets.name vet
    FROM vets, animals, visits
    WHERE visits.animal_id = animals.id
    AND visits.vets_id = vets.id
    AND vets.name = 'Maisy Smith'
    GROUP BY animals.name, vet
)
SELECT * FROM new WHERE total_visits = (SELECT MAX(total_visits) FROM new);