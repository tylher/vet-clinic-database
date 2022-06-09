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
INSERT INTO vets VALUES (1,"William Tatcher",45,"Apr 23,2000"),(2,"Maisy Smith",26,"jan 17,2019"),(3,"Stephanie Mendez",64,"May 4,1981"),(4,"Jack Harkness",38,"Jun 8,2008");
INSERT INTO specialization VALUES(2,1),(1,3),(2,3),(1,4);
INSERT INTO visits VALUES (1,1,"May 24,2020"),(1,3,"Jul 22,2020"),(2,4,"Feb 2,2021"),(3,2,"Jan 5,2020"),(3,2,"Mar 8,2020"),(3,2,"May 14,2020"),(4,3, "May 4,2021"),(5,4,"Feb 24,2021"),(6,2,"Dec 21,2019"),(6,1,"Aug 10,2020"),(6,2,"Apr 7,2021"),(7,3,"Sep 29,2019"),(8,4,"Oct 3,2020"),(8,4,"Nov 4,2020"),(9,2,"Jan 24,2019"),(9,2,"May 15,2019"),(9,2,"Feb 27,2020"),(9,2,"Aug 3,2020"),(10,3,"May 24,2021"),(10,1,"Jan 11,2021");
