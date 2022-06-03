/* Populate database with sample data. */

INSERT INTO animals(name,date_of_birth,escape_attempt,neutered,weight_kg,species_id,owner_id) VALUES ('Agumon','Feb 3,2020',0,true,10.23,1,1);
INSERT INTO animals(name,date_of_birth,escape_attempt,neutered,weight_kg,species_id,owner_id) VALUES ('Gabumon','Nov 15,2018',2,true,8,1,2);
INSERT INTO animals(name,date_of_birth,escape_attempt,neutered,weight_kg,species_id,owner_id) VALUES ('Pikachu','Jan 7,2021',1,false,15.04,2,2);
INSERT INTO animals(name,date_of_birth,escape_attempt,neutered,weight_kg,species_id,owner_id) VALUES ('Devimon','May 12,2017',5,true,11,1,3);
INSERT INTO animals(name,date_of_birth,escape_attempt,neutered,weight_kg,species_id,owner_id) VALUES ('Charmander','Feb 8,2020',0,false,-11,2,4);
INSERT INTO animals(name,date_of_birth,escape_attempt,neutered,weight_kg,species_id,owner_id) VALUES ('Plantmon','Nov 15,2021',2,true,-5.7,1,3),('Squirtle','Apr 2,1993',3,false,-12.13,2,4);
INSERT INTO animals(name,date_of_birth,escape_attempt,neutered,weight_kg,species_id,owner_id) VALUES ('Angemon','Jun 12,2005',1,true,-45,1,5),('Boarmon','Jun 7,2005',7,true,20.4,1,5),('Blossom','Oct 13,1998',3,true,17,2,4),('Ditto','May 14,2022',4,true,22,2);
INSERT INTO owners(fullname , age) VALUES ('Sam Smith',34),('Jennifer Orwell', 19),('Bob', 45),('Melody Pond',77),('Dean Winchester',14),('Jodie Whittaker',38);
INSERT INTO species(name) VALUES ('Digimon'),('Pokemon');