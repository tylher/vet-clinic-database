/*Queries that provide answers to the questions from all projects.*/

SELECT name FROM animals WHERE date_of_birth >= 'Jan 1,2016' AND date_of_birth < 'Dec 31,2019';
SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE escape_attempt < 3 AND neutered = true;
SELECT date_of_birth FROM animals WHERE name = 'Pikachu' OR name = 'Agumon';
SELECT name,escape_attempt FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >=10.4 AND weight_kg <=17.3;

BEGIN;
UPDATE animals SET species ='unspecified';
ROLLBACK;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE name NOT LIKE '%mon';
COMMIT;

BEGIN;
DELETE FROM animals WHERE date_of_birth > 'Jan 1,2022';
SAVEPOINT upd;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO upd;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempt) FROM animals WHERE escape_attempt>0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempt) FROM animals GROUP BY neutered;
SELECT neutered,AVG(escape_attempt) FROM animals WHERE date_of_birth >= 'jan 1,1990' AND date_of_birth <= 'Dec 31,2000' GROUP BY neutered;
SELECT name,fullname,owner_id FROM animals JOIN owners ON owners.id = owner_id WHERE fullname='Melody Pond';
SELECT animals.name FROM animals JOIN species ON species.id = species_id WHERE species.name = 'Pokemon';
SELECT fullname,name FROM animals LEFT JOIN owners ON owners.id = owner_id ;
SELECT species.name, COUNT(species.name) FROM animals JOIN species ON species.id = species_id GROUP BY species.name;
SELECT animals.name FROM animals JOIN owners ON owners.id = owner_id JOIN species ON species.id = species_id WHERE fullname = 'Jennifer Orwell' AND species.name = 'Digimon';
SELECT name FROM animals JOIN owners ON owners.id = owner_id WHERE fullname = 'Dean Winchester' AND escape_attempt = 0;
SELECT fullname, COUNT(name) as animals_num FROM animals JOIN owners ON owners.id = owner_id GROUP BY fullname ORDER BY animals_num DESC;