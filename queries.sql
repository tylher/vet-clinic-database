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