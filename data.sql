/* Populate database with sample data. */

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Agumon', 'February 3, 2020',0,true,10.23);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Gabumon', 'November 15, 2018',2,true,8);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Pikachu', 'January 7, 2021',1,false,15.04);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Devimon', 'May 12, 2017',5,true,11);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Charmander', '02-08-2020', 0, false , -11);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Plantmon', '11-15-2021', 2, true , -5.7);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Squirtle', '04-02-1993', 3, false , -12.13);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Angemon', '06-12-2005', 3, false , -45);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Boarmon', '06-07-2005', 7, true , 20.4);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Blossom', '10-13-1998', 3, true , 17);

INSERT INTO animals (name,date_of_birth,escape_attempts,neurtered,weight_kg) VALUES ('Ditto', '05-14-2022', 4, true , 22);


INSERT INTO owners (id,full_name, age) VALUES ( 1,'Sam Smith ', 34),( 2,'Jennifer Orwell', 19),( 3,'Bob', 45),(4,'Melody Pond',77),(5,'Dean Winchester',14),(6,'Jodie Whittaker',38);


update animals
set species_id=(select id from species where name='Digimon')
where name like '%mon';

update animals
set species_id=(select id from species where name='Pokemon')
where name not like '%mon';



update animals
set owner_id=(select id from owners where full_name='Sam Smith ')
where name='Agumon'

update animals
set owner_id=(select id from owners where full_name='Jennifer Orwell')
where name IN ('Gabumon', 'Pikachu')

update animals
set owner_id=(select id from owners where full_name='Bob')
where name='Devimon' or name='Plantmon'


update animals
set owner_id=(select id from owners where full_name='Melody Pond')
where name IN ('Charmander', 'Squirtle', 'Blossom')



update animals
set owner_id=(select id from owners where full_name='Dean Winchester')
where name IN ('Angemon', 'Boarmon')


INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet William Tatcher', 45, '04-23-2000');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet Maisy Smith', 26, '01-17-2019');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet Stephanie Mendez', 64, '05-04-1981');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet Jack Harkness', 38, '06-08-2008');



INSERT INTO specializations(vets_id, species_id) Values((select id from vets where name='William Tatcher'),(select id from species where name='Pokemon')),((select id from vets where name='Stephanie Mendez'),(select id from species where name='Digimon')),
((select id from vets where name='Stephanie Mendez'),(select id from species where name='Pokemon')),((select id from vets where name='Jack Harkness'),(select id from species where name='Digimon'));





INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = ' William Tatcher'), '05-24-2020')
  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '07-22-2020')
  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '02-02-2021')
INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '01-05-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '03-08-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '05-14-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '05-04-2021')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '02-24-2021')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '12-21-2019')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '08-10-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '04-07-2021')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '09-29-2019')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '10-03-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '11-04-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '01-24-2019')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '05-15-2019')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '02-27-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '08-03-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '05-24-2020')

  INSERT INTO visits (animal_id, vets_id, date_of_vists) VALUES
  ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '01-11-2021')