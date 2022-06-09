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
SELECT vets.name as vetName,animals.name as animalName,date_of_visit FROM animals JOIN visits on animals.id = animal_id JOIN vets on vets.id = vets_id WHERE vets.name='William Tatcher' ORDER BY date_of_visit;
SELECT COUNT(DISTINCT animals.name) FROM animals JOIN visits on animals.id = animal_id JOIN vets on vets.id = vets_id WHERE vets.name='Stephanie Mendez';
SELECT vets.name, species.name FROM vets full JOIN specializations on vets.id = vets_id full JOIN species on species_id = species.id;
SELECT animals.name, date_of_visit FROM animals JOIN visits ON animals.id = animal_id JOIN vets ON vets_id = vets.id WHERE date_of_visit >= 'Apr 1,2020' AND date_of_visit <= 'Aug 30,2020'; 
SELECT animals.name ,COUNT(*) FROM animals JOIN visits ON animals.id = animal_id JOIN vets ON vets_id = vets.id group by animals.name order by count desc;
SELECT animals.name ,vets.name,date_of_visit FROM animals JOIN visits ON animals.id = animal_id JOIN vets ON vets_id = vets.id WHERE vets.name='Maisy Smith' ORDER BY date_of_visit ;
SELECT animals.name as name ,vets.name as vet,species.name as species , date_of_visit FROM animals JOIN visits ON animals.id = animal_id JOIN vets ON vets_id = vets.id JOIN species ON species_id = species.id ORDER BY date_of_visit DESC;
SELECT COUNT(*) FROM vets full JOIN specializations on vets_id = vets.id full JOIN visits on visits.vets_id = vets.id JOIN animals on animals.id = animal_id WHERE specializations.species_id != animals.species_id AND vets.name != 'Stephanie Mendez';
SELECT species.name, animals.species_id as species, COUNT(animals.species_id) FROM vets full JOIN specializations ON vets_id = vets.id full JOIN visits on visits.vets_id = vets.id JOIN animals on animals.id = animal_id JOIN species ON species.id = animals.species_id WHERE vets.name = 'Maisy Smith' GROUP BY animals.species_id,species.id;