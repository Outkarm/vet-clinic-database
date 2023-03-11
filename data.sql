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
