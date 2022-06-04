/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
id INT,
name VARCHAR,
date_of_birth DATE,
escape_attempt INT,
neutered BOOLEAN,
weight_kg DECIMAL
);
ALTER animals ADD species VARCHAR;

CREATE TABLE owners(id INT GENERATED ALWAYS AS IDENTITY, fullname VARCHAR, age INT, PRIMARY KEY(id));
CREATE TABLE species (id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR, PRIMARY KEY(id));
ALTER TABLE animals ADD PRIMARY KEY(id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT owner_fk FOREIGN KEY(owner_id) REFERENCES owners(id);
ALTER TABLE animals ADD CONSTRAINT species_fk FOREIGN KEY(species_id) REFERENCES species(id);
CREATE TABLE vets(id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR,age INT, date_of_graduation DATE, PRIMARY KEY(id));
CREATE TABLE specialization(species_id INT,vets_id INT);
CREATE TABLE visits(animal_id INT, vets_id INT, date_of_visit DATE);
