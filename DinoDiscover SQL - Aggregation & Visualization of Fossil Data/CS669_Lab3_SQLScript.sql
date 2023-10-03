-- SECTION 1: AGGREGATING DATA

-- Step 1: Creating Table Structure & Data
CREATE TABLE Location (
location_id DECIMAL(12) NOT NULL PRIMARY KEY,
location_name VARCHAR(64) NOT NULL);

CREATE TABLE Dig_site (
dig_site_id DECIMAL(12) NOT NULL PRIMARY KEY,
location_id DECIMAL(12) NOT NULL,
dig_name VARCHAR(32) NOT NULL,
dig_cost DECIMAL(8,2) NULL,
FOREIGN KEY (location_id) REFERENCES Location(location_id));

CREATE TABLE Paleontologist (
paleontologist_id DECIMAL(12) NOT NULL PRIMARY KEY,
first_name VARCHAR(32) NOT NULL,
last_name VARCHAR(32) NOT NULL);

CREATE TABLE Dinosaur_discovery (
dinosaur_discovery_id DECIMAL(12) NOT NULL PRIMARY KEY,
dig_site_id DECIMAL(12) NOT NULL,
paleontologist_id DECIMAL(12) NOT NULL,
common_name VARCHAR(64) NOT NULL,
fossil_weight DECIMAL(6) NOT NULL,
FOREIGN KEY (paleontologist_id) REFERENCES Paleontologist(paleontologist_id));

INSERT INTO Location (location_id, location_name)
VALUES (101, 'Stonesfield');
INSERT INTO Location (location_id, location_name)
VALUES (102, 'Utah');
INSERT INTO Location (location_id, location_name)
VALUES (103, 'Arizona');

INSERT INTO Dig_site (dig_site_id, location_id, dig_name, dig_cost)
VALUES (11, 101, 'Great British Dig', 8000);
INSERT INTO Dig_site (dig_site_id, location_id, dig_name, dig_cost)
VALUES (22, 102, 'Parowan Dinosaur Tracks', 10000);
INSERT INTO Dig_site (dig_site_id, location_id, dig_name, dig_cost)
VALUES (33, 103, 'Dynamic Desert Dig', 3500);
INSERT INTO Dig_site (dig_site_id, location_id, dig_name, dig_cost)
VALUES (44, 101, 'Mission Jurassic Dig', NULL);
INSERT INTO Dig_site (dig_site_id, location_id, dig_name, dig_cost)
VALUES (55, 101, 'Ancient Site Dig', 5500);

INSERT INTO Paleontologist (paleontologist_id, first_name, last_name)
VALUES (100, 'William', 'Buckland');
INSERT INTO Paleontologist (paleontologist_id, first_name, last_name)
VALUES (200, 'John', 'Ostrom');
INSERT INTO Paleontologist (paleontologist_id, first_name, last_name)
VALUES (300, 'Henry', 'Osborn');

INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (1, 11, 100, 'Megalosaurus', 3000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (2, 11, 100, 'Apatosaurus', 4000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (3, 11, 100, 'Triceratops', 4500);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (4, 11, 100, 'Stegosaurus', 3500);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (5, 22, 200, 'Parasaurolophus', 6000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (6, 22, 200, 'Tyrannosaurus Rex', 5000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (7, 22, 200, 'Velociraptor', 7000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (8, 33, 200, 'Tyrannosaurus Rex', 6000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (9, 44, 300, 'Spinosaurus', 8000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (10, 44, 300, 'Diplodocus', 9000);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (11, 55, 300, 'Tyrannosaurus Rex', 7500);
INSERT INTO Dinosaur_discovery (dinosaur_discovery_id, dig_site_id, paleontologist_id, common_name, fossil_weight)
VALUES (12, 55, 300, 'Velociraptor', 6500);


-- Step 2: Counting Matches
SELECT COUNT(dinosaur_discovery_id) AS nr_heavy_fossils
FROM Dinosaur_discovery
WHERE fossil_weight >= 4200;


-- Step 3: Determining the Highest & Lowest
SELECT FORMAT(MIN(dig_cost), '$.00') AS least_expensive, 
FORMAT(MAX(dig_cost), '$.00') AS most_expensive
FROM Dig_site;-- Step 4: Grouping Aggregate ResultsSELECT dig_name, FORMAT(dig_cost, 'C') AS dig_cost, COUNT(dinosaur_discovery_id) AS nr_dinosaur_discoveriesFROM Dinosaur_discoveryJOIN Dig_site ON Dig_site.dig_site_id = Dinosaur_discovery.dig_site_idGROUP BY Dig_site.dig_site_id, dig_name, dig_cost;-- Step 5: Limiting Results by AggregationSELECT Location.location_name, COUNT(dinosaur_discovery_id) AS nr_dinosaur_discoveriesFROM Dinosaur_discoveryJOIN Dig_site ON Dig_site.dig_site_id = Dinosaur_discovery.dig_site_idJOIN Location ON Location.location_id = Dig_site.location_idGROUP BY Location.location_id, location_nameHAVING COUNT(dinosaur_discovery_id) >= 6;-- Step 6: Adding Up ValuesSELECT dig_name, SUM(fossil_weight) AS total_fossil_weightFROM Dinosaur_discoveryJOIN Dig_site ON Dig_site.dig_site_id = Dinosaur_discovery.dig_site_idGROUP BY Dig_site.dig_site_id, dig_nameHAVING SUM(fossil_weight) >= 15000;-- Step 7: Integrating Aggregation with Other ConstructsSELECT first_name + ' ' + last_name AS paleontologist_name, COUNT(Dinosaur_discovery.dig_site_id) AS nr_digsFROM Dinosaur_discoveryJOIN Dig_site ON Dig_site.dig_site_id = Dinosaur_discovery.dig_site_idJOIN Location ON Location.location_id = Dig_site.location_id ANDLocation.location_name = 'Stonesfield'RIGHT JOIN Paleontologist ON Paleontologist.paleontologist_id = Dinosaur_discovery.paleontologist_idGROUP BY Paleontologist.paleontologist_id, first_name, last_nameORDER BY nr_digs DESC;-- SECTION 2: Data Visualization-- Step 8: Visualizing Data with One or Two Measures-- See Excel-- Step 9: Another Data VisualizationSELECT dig_name, SUM(fossil_weight) AS total_fossil_weight, COUNT(dinosaur_discovery_id) AS nr_dinosaur_discoveriesFROM Dinosaur_discoveryJOIN Dig_site ON Dig_site.dig_site_id = Dinosaur_discovery.dig_site_idGROUP BY Dig_site.dig_site_id, dig_nameORDER BY total_fossil_weight DESC;COMMIT;