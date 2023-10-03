-- SECTION 1: ABSOLUTE FUNDAMENTALS
-- Step 1
CREATE TABLE Cars( 
CarBrand     VARCHAR(65), 
CarModel     VARCHAR(50), 
AcquiredDate DATE,
Price        DECIMAL(10,2)
);


-- Step 2
INSERT INTO Cars (CarBrand, CarModel, AcquiredDate, Price)
VALUES ('Ford', 'Econoline Full-Size Van', '2021-8-15', 29995);


--Step 3
SELECT * 
FROM Cars;


-- Step 4
UPDATE Cars 
SET Price = 28000;

SELECT *
FROM Cars;


-- Step 5
DELETE FROM Cars;

SELECT *
FROM Cars;


-- Step 6
DROP TABLE Cars;

SELECT *
FROM Cars;


--SECTION 2: MORE PRECISE DATA HANDLING
-- Step 7
CREATE TABLE Apartments ( 
ApartmentNum  DECIMAL     PRIMARY KEY,
ApartmentName VARCHAR(64) NOT NULL,
Description   VARCHAR(64) NULL,
CleanedDate   DATE        NOT NULL,
AvailableDate DATE        NOT NULL
);


-- Step 8
INSERT INTO Apartments (ApartmentNum,
	ApartmentName,
	Description,
	CleanedDate,
	AvailableDate) 
VALUES (498, 
	'Deer Creek Crossing', 
	'Great view of Riverwalk', 
	CAST('19-APR-2022' AS DATE),
	CAST('25-APR-2022' AS DATE)
	);

 INSERT INTO Apartments (ApartmentNum,
	ApartmentName,
	Description,
	CleanedDate,
	AvailableDate) 
VALUES (128, 
	'Town Place Apartments', 
	'Convenient walk to Parking', 
	CAST('20-MAY-2022' AS DATE),
	CAST('25-MAY-2022' AS DATE)
	);

 INSERT INTO Apartments (ApartmentNum,
	ApartmentName,
	Description,
	CleanedDate,
	AvailableDate) 
VALUES (316, 
	'Paradise Palms', 
	NULL, 
	CAST('02-JUN-2021' AS DATE),
	CAST('08-JUN-2021' AS DATE)
	);

 SELECT *
 FROM Apartments;

-- Step 9
 INSERT INTO Apartments (ApartmentNum,
	ApartmentName,
	Description,
	CleanedDate,
	AvailableDate) 
VALUES (252, 
	NULL, 
	'Close to downtown shops', 
	CAST('17-JUL-2020' AS DATE),
	CAST('13-JUL-2020' AS DATE)
	);


-- Step 10
 INSERT INTO Apartments (ApartmentNum,
	ApartmentName,
	Description,
	CleanedDate,
	AvailableDate) 
VALUES (252, 
	'The Glenn', 
	'Close to downtown shops', 
	CAST('17-JUL-2020' AS DATE),
	CAST('13-JUL-2020' AS DATE)
	);


-- Step 11
SELECT ApartmentName, Description
FROM Apartments
WHERE ApartmentNum = 498;

-- Step 12
UPDATE Apartments
SET description = 'A mile walk to the beach' 
WHERE ApartmentNum = 316;

SELECT *
FROM Apartments;


-- Step 13
UPDATE Apartments
SET description = NULL 
WHERE ApartmentNum = 128;

SELECT *
FROM Apartments;


-- Step 14
DELETE FROM Apartments
WHERE CleanedDate > '2022-04-01';

SELECT *
FROM Apartments;



-- SECTION 3: DATA ANOMALIES & FORMATS
-- Step 15
-- a
CREATE TABLE FashionDesigners ( 
DesignerName   VARCHAR(64),
Brand          VARCHAR(64),
YearFounded    SMALLINT,
Birthdate      DATE,
CountryOfBirth VARCHAR(64),
Education      VARCHAR(64),
NetWorth       DECIMAL(4,1)
);


-- b
INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Coco Chanel',
'Chanel',
1910,
CAST('19-AUG-1883' AS DATE),
'France',
'Self-educated',
15.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Giorgio Armani',
'Armani',
1975,
CAST('11-JUL-1934' AS DATE),
'Italy',
'University of Milan',
900.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Ralph Lauren',
'Ralph Lauren',
1967,
CAST('14-OCT-1939' AS DATE),
'United States',
'Baruch College',
800.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Marc Jacobs',
'Marc Jacobs',
1984,
CAST('17-MAR-1963' AS DATE),
'United States',
'Parsons School of Design',
100.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Tom Ford',
'Tom Ford',
2006,
CAST('27-AUG-1961' AS DATE),
'USA',
'Parsons School of Design',
400.0
);

SELECT *
FROM FashionDesigners;


-- c
DELETE FROM FashionDesigners
WHERE CountryOfBirth= 'USA';

SELECT *
FROM FashionDesigners;



-- Step 16

-- a (Recreate table/transfer to XML format)

-- Drop filtered table
DROP TABLE FashionDesigners;

-- Recreate table:
CREATE TABLE FashionDesigners ( 
DesignerName   VARCHAR(64),
Brand          VARCHAR(64),
YearFounded    SMALLINT,
Birthdate      DATE,
CountryOfBirth VARCHAR(64),
Education      VARCHAR(64),
NetWorth       DECIMAL(4,1)
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Coco Chanel',
'Chanel',
1910,
CAST('19-AUG-1883' AS DATE),
'France',
'Self-educated',
15.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Giorgio Armani',
'Armani',
1975,
CAST('11-JUL-1934' AS DATE),
'Italy',
'University of Milan',
900.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Ralph Lauren',
'Ralph Lauren',
1967,
CAST('14-OCT-1939' AS DATE),
'United States',
'Baruch College',
800.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Marc Jacobs',
'Marc Jacobs',
1984,
CAST('17-MAR-1963' AS DATE),
'United States',
'Parsons School of Design',
100.0
);

INSERT INTO FashionDesigners (DesignerName,
Brand,
YearFounded,
Birthdate,
CountryOfBirth,
Education,
NetWorth) 
VALUES ('Tom Ford',
'Tom Ford',
2006,
CAST('27-AUG-1961' AS DATE),
'USA',
'Parsons School of Design',
400.0
);

SELECT *
FROM FashionDesigners;

-- Convert to XML format
SELECT *
FROM FashionDesigners
FOR XML Path('FashionDesigners'),ROOT('FashionDetails');

COMMIT;
