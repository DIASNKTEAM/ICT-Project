/*
CREATE TABLE Building_company(
company_id INT,
company_name VARCHAR(64),
PRIMARY KEY(company_id)
);


CREATE TABLE Building(
building_id INT,
company_id INT,
PRIMARY KEY(building_id),
FOREIGN KEY(company_id) REFERENCES Building_company(company_id)
);


CREATE TABLE Apartment(
apartment_id INT,
apartment_number INT,
building_id INT,
PRIMARY KEY(apartment_id),
FOREIGN KEY(building_id) REFERENCES Building(building_id)
);


CREATE TABLE Occupant(
occupant_id INT,
fname VARCHAR(64),
lname VARCHAR(64),
date_0f_birth DATE,
check_in_date date,
email CHAR(500),
apartment_id INT,
PRIMARY KEY(occupant_id),
FOREIGN KEY(apartment_id) REFERENCES Apartment(apartment_id)
);

 
CREATE TABLE Utility_payment (
price INT,
date_of_price DATE,
occupant_id INT,
FOREIGN KEY(occupant_id) REFERENCES Occupant(occupant_id)
);


INSERT INTO building_company(company_id, company_name)
VALUES
(101, 'BiGroup'),
(102, 'Trump Tower'),
(103, 'Modern Structure'),
(104, 'Ace & Hammer Builders'),
(105, 'Diamond Ridge Construction'),
(106, 'Center Circle Design-Build'),
(107, 'Builder Gorilla'),
(108, 'Pure Renovation Company'),
(109, 'Mod Guys Construction'),
(110, 'Build It Brothers');



INSERT INTO building(building_id, company_id)
VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105),
(6, 106),
(7, 107),
(8, 108),
(9, 109),
(10, 110);



INSERT INTO apartment(apartment_id, apartment_number, building_id)
VALUES
(200, 50, 1),
(201, 51, 2),
(202, 52, 3),
(203, 53, 4),
(204, 54, 5),
(205, 55, 6),
(206, 56, 7),
(207, 57, 8),
(208, 58, 9),
(209, 59, 10);



INSERT INTO occupant(occupant_id, fname, lname, date_0f_birth, check_in_date, email, apartment_id)
VALUES
(300, 'Dias', 'Nurbergenov', '2003-01-05', '2020-09-01', 'diasnkteam@gmail.com', 200),
(301, 'Zhangir', 'Bayanov', '2003-04-29', '2020-10-22', 'bayanov@gmail.com', 201),
(302, 'Cristiano', 'Ronaldo', '1985-02-05', '2019-12-31', 'cristiano@gmail.com', 202),
(303, 'Lionel', 'Messi', '1987-06-24', '2015-03-21', 'leomessi@gmail.com', 203),
(304, 'Sergio', 'Ramos', '1986-01-30', '2017-10-08', 'sergio@gmail.com', 204),
(305, 'Oliver', 'Queen', '1988-01-22', '2010-01-28', 'greenarrow@gmail.com', 205),
(306, 'Barry', 'Allen', '1991-07-07', '2012-12-12', 'flash@gmail.com', 206),
(307, 'Jeff', 'Bezos', '1964-01-12', '2007-04-01', 'amazon@info.com', 207),
(308, 'Bill', 'Gates', '1055-10-28', '2009-02-28', 'gates@gmail.com', 208),
(309, 'Mark', 'Zuckerberg', '1984-05-14', '2018-08-11', 'facebook@support.com', 209);



INSERT INTO utility_payment (price, date_of_price, occupant_id)
VALUES
(2060, '2020-10-01', 300),
(2160, '2020-11-22', 301),
(2260, '2020-01-31', 302),
(2360, '2015-04-21', 303),
(2460, '2017-11-08', 304),
(2560, '2010-02-28', 305),
(2660, '2013-01-12', 306),
(2760, '2007-05-01', 307),
(2860, '2009-03-28', 308),
(2960, '2018-09-11', 309);



CREATE TABLE BMS(
BMS_id INT,
total_price INT,
building_id INT,
occupant_id INT,
PRIMARY KEY(BMS_id),
FOREIGN KEY(building_id) REFERENCES Building(building_id),
FOREIGN KEY(occupant_id) REFERENCES Occupant(occupant_id)
);
 


CREATE TABLE Security_system(
Security_id INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(Security_id),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);



CREATE TABLE HVAC_system(
HVAC_id INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(HVAC_id),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);



CREATE TABLE Water_system(
Water_id INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(Water_id),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);



CREATE TABLE Energy_system(
Energy_id INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(Energy_id),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);



CREATE TABLE Sprinkler_system(
Sprinkler_id INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(Sprinkler_id),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);



INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1001, '7500', 1, 300 );
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1002, '6000', 2, 301);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1003, '8000', 3, 302);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1004, '7900', 4, 303);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1005, '6500', 5, 304);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1006, '9850', 6, 305);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1007, '10000', 7, 306);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1008, '9500', 8, 307);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1009, '6000', 9, 308);
INSERT INTO BMS (BMS_id, total_price, building_id, occupant_id)
VALUES (1010, '7500', 10, 309);
 


INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10001, 'security cameras, security, alarm system', 1001);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10002, 'wireless security camera, face recognition, alarm system', 1002);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10003, 'security cameras, retinal recognition, armed guards', 1003);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10004, 'video surveillance systems, face recognition, security, imitation of the presence of owners, alarm system', 1004);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10005, 'security cameras, palm recognition, alarm, security', 1005);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10006, 'wireless security camera, palm recognition, alarm system, security, automatic lighting of the territory in case of penetration', 1006);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10007, 'video surveillance systems, voice recognition, security shutters, armed guards, alarm systems', 1007);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10008, 'video surveillance, automatic illumination of the territory in case of penetration, access card recognition, armed security,', 1008);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10009, 'video surveillance systems, face recognition, security, imitation of the presence of owners, alarm system', 1009);
INSERT INTO Security_system (Security_id, Description, BMS_id)
VALUES (10010, 'wireless security camera, face recognition, alarm system', 1010);
 


INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10001, 'air intake, heat recovery, preheating, cooling', 1001);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10002, 'filtration, air heating, preheating, extractio', 1002);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10003, 'recirculation, air heating, aspiration, extraction, filtration', 1003);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10004, 'air heating, regulation of the differential pressure between rooms, aspiration', 1004);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10005, 'heat recovery, aspiration, filtration, air heating, cooling', 1005);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10006, 'aspiration, supply to a clean room, cooling', 1006);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10007, 'filtering, air heating, preheating, the supply to the clean room', 1007);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10008, 'air heating, regulation of the differential pressure between rooms, filtration', 1008);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10009, 'heat recovery, aspiration, filtration, air heating, cooling', 1009);
INSERT INTO HVAC_system (HVAC_id, Description, BMS_id)
VALUES (10010, 'regulation of the differential pressure between rooms, aspiration, filtration, air heating, cooling', 1010);
 


INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10001, 'cleaning, storage and distribution of water for apartments, yard washing', 1001);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10002, 'water filtration, yard flushing, autonomous watering of plants', 1002);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10003, 'yard washing, cleaning, swimming pool', 1003);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10004, 'storage and distribution of water for apartments, yard washing, cleaning, water filtration', 1004);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10005, 'Coagulation, water filtration, swimming pool,', 1005);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10006, 'flocculation, cleaning, water filtration', 1006);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10007, 'yard washing, cleaning, swimming pool', 1007);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10008, 'water filtration, yard flushing, autonomous watering of plants', 1008);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10009, 'storage and distribution of water for apartments, yard washing, cleaning, water filtration', 1009);
INSERT INTO Water_system (Water_id, Description, BMS_id)
VALUES (10010, 'flocculation, cleaning, water filtration', 1010);
 


INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10001, 'elevators, heating, emergency lighting, turnstiles and hatches', 1001);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10002, 'elevators, operating costs, heating', 1002);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10003, 'elevators, emergency lighting, turnstiles and hatches ', 1003);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10004, 'elevators, lighting, equipment failure Notification', 1004);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10005, 'elevators, turnstiles and hatches, operating costs', 1005);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10006, 'elevators, heating, emergency lighting, turnstiles and hatches', 1006);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10007, 'elevators, heating, operating costs', 1007);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10008, 'elevators, turnstiles and hatches, heating', 1008);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10009, 'elevators, heating, emergency lighting', 1009);
INSERT INTO Energy_system (Energy_id, Description, BMS_id)
VALUES (10010, 'elevators, turnstiles and hatches,  operating costs', 1010);



INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10001, 'fire hydrant system, layflat fire hose, booster pump set, fire sprinkler', 1001);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10002, 'hydrant, layflat fire hose, fire detection system, breaching inlet', 1002);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10003, 'pipework & valves,  fire sprinkler, fire hydrant system', 1003);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10004, 'layflat fire hose, hydrant, breaching inlet', 1004);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10005, 'fire brigade booster, fire detection system, fire hydrant system', 1005);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10006, 'pipework & valves, layflat fire hose, fire hydrant system', 1006);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10007, 'layflat fire hose, fire brigade booster, breaching inlet', 1007);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10008, 'fire hydrant system, layflat fire hose, booster pump set, fire sprinkler', 1008);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10009, 'booster pump set, fire sprinkler, fire hydrant system', 1009);
INSERT INTO Sprinkler_system (Sprinkler_id, Description, BMS_id)
VALUES (10010, 'hydrant, layflat fire hose, fire detection system, breaching inlet', 1010); 
*/

--ALTER TABLE building_company ADD COLUMN establishment_year INT;
--ALTER TABLE building_company DROP COLUMN establishment_year;
--ALTER TABLE occupant alter fname SET NOT NULL;
--ALTER TABLE utility_payment ADD PRIMARY KEY (Price);
--ALTER TABLE utility_payment DROP CONSTRAINT utility_payment_pkey;
--SELECT * FROM building_company;
--SELECT * FROM utility_payment;


/*
“How much does the person,
who has been living for more than 5 years in the apartment, 
pay for the utility service?” 
*/
/* --1/10
SELECT  Occupant.occupant_id, Occupant.fname, Occupant.lname, Occupant.date_0f_birth, Occupant.check_in_date, 
Occupant.email, Utility_payment.price, Utility_payment.date_of_price,
age(Occupant.check_in_date)
AS duration FROM Occupant FULL OUTER JOIN Utility_payment
ON Occupant.occupant_id = Utility_payment.occupant_id
WHERE DATE_PART('year', CURRENT_DATE::date) - DATE_PART('year', Occupant.check_in_date::date) > 5;
*/


/*
Finding the person who pays least amount of the price:
*/
/* --2/10
SELECT fname, lname, price 
FROM occupant 
INNER JOIN utility_payment 
ON occupant.occupant_id = utility_payment.occupant_id
WHERE utility_payment.price = (SELECT MIN(price) FROM utility_payment);
*/ 


/*
The average price of the utility service.
*/
/* --3/10
SELECT SUM(Utility_payment.price) AS SUM_Utility_payment_price,
SUM(BMS.total_price) AS SUM_BMS_total_price
FROM BMS
FULL OUTER JOIN Occupant ON BMS.occupant_id = Occupant.occupant_id
FULL OUTER JOIN Utility_payment ON Occupant.occupant_id = Utility_payment.occupant_id;
*/


/*
Finding the sum of the utility payments and the sum of the total price of the BMS.
*/
/* --4/10
SELECT fname, lname, total_price
FROM occupant 
INNER JOIN BMS 
ON occupant.occupant_id = BMS.occupant_id
WHERE BMS.total_price = (SELECT MAX(total_price) FROM BMS);
*/


/*
Finding the resident who pays maximum amount of the money to the BMS.
*/
/* --5/10
SELECT ROUND(AVG(price),2) AS Average_price
FROM utility_payment;
*/


/*
Sorting the names of the residents.
This is helpful for the companies orientate through the dates of the occupants by their names.
*/
/* --6/10
SELECT fname, lname, date_0f_birth
FROM occupant
WHERE fname LIKE 'B%';
*/


/*
Showing the list of residents with their prices for utility.
It is useful to answer following question: 
How much does this person have to pay for the utility?
*/
/* --7/10
SELECT fname, lname, price 
FROM occupant 
INNER JOIN utility_payment 
ON occupant.occupant_id = utility_payment.occupant_id;
*/


/*
Presenting the expensive building companies which used higher total price for BMS.
*/
/* --8/10
SELECT Building_company.company_name, BMS.total_price
FROM Building_company
FULL OUTER JOIN Building ON Building_company.company_id = Building.company_id
FULL OUTER JOIN BMS ON BMS.building_id = Building.building_id
WHERE BMS.building_id= Building.building_id 
AND BMS.total_price > 7999; 
*/


/*
Finding the cheap paid prices.
*/
/* --9/10
SELECT utility_payment.price
FROM utility_payment
WHERE utility_payment.price > 10000 OR utility_payment.price < 2500;
*/


/*
Outputting the descriptions of each services. 
It is helpful to find which models of the services occupant uses.
*/
/* --10/10
SELECT Security_system.Description AS Security_Description,
HVAC_system.Description AS HVAC_Description,
Energy_system.Description AS Energy_Description,
Water_system.Description AS Water_Description,
Sprinkler_system.Description AS Sprinkler_Description
FROM BMS
FULL OUTER JOIN Security_system ON BMS.BMS_id = Security_system.BMS_id
FULL OUTER JOIN HVAC_system ON BMS.BMS_id = HVAC_system.BMS_id
FULL OUTER JOIN Energy_system ON BMS.BMS_id = Energy_system.BMS_id
FULL OUTER JOIN Water_system ON BMS.BMS_id = Water_system.BMS_id
FULL OUTER JOIN Sprinkler_system ON BMS.BMS_id = Sprinkler_system.BMS_id;
*/


/*
This command uses SINGLE ROW, outputs only one tuple, where the occupant’s name is " Bill".
*/
/* 1/5 SINGLE ROW
SELECT fname, lname, email
FROM occupant
WHERE occupant_id = 
(SELECT occupant_id
FROM occupant
WHERE fname = 'Bill');
*/


/*
This code uses a SINGLE ROW,
in which the command displays a occupant whose "price" is more than 2900
*/
/* 2/5 SINGLE ROW
SELECT price, date_of_price, occupant_id
FROM utility_payment
WHERE occupant_id =
(SELECT occupant_id
FROM utility_payment
WHERE price > 2900);
*/ 


/*
Here MULTIPLE ROW is used, that is, two or more tuples are output.
This command displays a occupant whose apart ment_number is greater than 56
*/
/* 3/5 MULTIPLE ROW
SELECT apartment.apartment_id, apartment.apartment_number
FROM apartment 
WHERE apartment.apartment_id IN
(SELECT apartment.apartment_id FROM apartment
WHERE apartment.apartment_id > 205);
*/


/*
Here MULTIPLE ROW is used. 
This command displays a apartment with apartment_id is greater than 205
*/
/* 4/5 MULTIPLE ROW
SELECT  occupant.fname, occupant.lname
FROM occupant 
WHERE apartment_id IN
(SELECT apartment_id FROM apartment
WHERE  apartment_number > 54 );
*/


/*
This code uses MULTIPLE ROW, 
and the OR operator that helps us output the names of companies whose id is less than 3 and more than 7
*/
/* 5/5 MULTIPLE-COLUMN
SELECT  building_company.company_name
FROM building_company 
WHERE company_id NOT IN
(SELECT company_id FROM building
WHERE building_id < 3 OR building_id > 7 );
*/


/*
The value of the ‘company_name’ column is changed to ‘NULL’,
where the ‘company_id’ is equal to 107.
*/
/* 1/10 UPDATE
UPDATE building_company
SET company_name = NULL
WHERE company_id = 107;
*/
--SELECT * FROM building_company;


/*
The value of the ‘company_id’ is changed to ‘NULL’,
where the ‘building_id’ is equal to 5.
*/
/* 2/10 UPDATE
UPDATE building
SET company_id = NULL
WHERE building_id = 5;
*/
--SELECT * FROM BUILDING;


/*
The value of the ‘apartment_number’ is changed to 100, 
where the ‘apartment_id’ is equal to 209.
*/
/* 3/10 UPDATE
UPDATE apartment
SET apartment_number = 100
WHERE apartment_id = 209;
*/
--SELECT * FROM apartment;


/*
The values of the ‘date_of_birth’ and ‘email’ columns are changed to '1980-01-05' and 'TheBest@gmail.com' respectively,
where the ‘occupant_id’ is equal to 300.
*/
/* 4-10 UPDATE
UPDATE occupant
SET date_0f_birth = '1980-01-05', email = 'TheBest@gmail.com'
WHERE occupant_id = 300;
*/
--SELECT * FROM occupant;


/*
The ‘price’ and ‘date_of_price’ are changed to 1000000 and '2023-12-22' respectively,
where the occupant_id is equal to 307.
*/
/* 5-10 UPDTE
UPDATE utility_payment
SET price = 1000000, date_of_price = '2023-12-22'
WHERE occupant_id = 307;
*/
--SELECT * FROM utility_payment;


/*
This code changes the value total_price to 10000 in BMS table using the or operator,
where BMS_id is equal 1003 and 1005
*/
/* 6/10 UPDATE
UPDATE BMS SET total_price = 10000
WHERE BMS_id = 1003 OR BMS_id = 1005;
*/
--SELECT * FROM BMS;


/*
This code changes the value BMS_id to 1007 in Security_system table using the or operator,
where security_id is equal 10001 and 10009
*/
/* 7/10 UPDATE
UPDATE Security_system SET BMS_id = 1007
WHERE Security_id = 10009 OR Security_id = 10001;
*/
--SELECT * FROM Security_system;


/*
This code changes the value description to NULL in HVAC_system,
where HVAC_id is more than 10008
*/
/* 8/10 UPDATE
UPDATE HVAC_system SET BMS_id = NULL
WHERE HVAC_id > 10009 ;
*/
--SELECT * FROM HVAC_system;


/*
This code changes the value description to NULL in Energy_system table using the or operator,
where energy_id is less than 10003 and more than 10008
*/
/* 9/10 UPDATE
UPDATE Energy_system SET Description = NULL
WHERE Energy_id > 10008 OR Energy_id < 10003 ;
*/
--SELECT * FROM Energy_system;


/*
This code changes the value to descriptions of 
‘water filtration,yard flushing, Autonomous watering of plants’ in Water_system table using the or operator,
where water_id is between 10003 and 10008
*/
/* 10/10 UPDATE
UPDATE Water_system SET Description = 'water filtration, yard flushing, autonomous watering of plants'
WHERE Water_id > 10008 OR Water_id < 10003 ;
*/
--SELECT * FROM Water_system;


/*
This code changes the Description value in the Sprinkler_system table which has a sprinkler_id equal  of 10005
*/
/* 11 UPDATE
UPDATE Sprinkler_system SET Description = 'hydrant, lots of hydrants'
WHERE Sprinkler_id = 10005;
*/
--SELECT * FROM Sprinkler_system;

/*
This code deletes all tuples in the building_company table that have an id is equal to 105.
*/
/* 1/10 DELETE
DELETE FROM building_company
WHERE company_id = 105;
*/
--SELECT * FROM building_company;


/*
This code deletes all tuples in the Energy_system Table that have a ‘BMS_id’ is greater or equal than 1000.
*/
/* delete 2/10
DELETE FROM Energy_system
WHERE BMS_id >= 1000;
*/
--SELECT * FROM Energy_system;


/*
This code deletes all tuples in the Water_system Table that have a description is to equal 
‘water filtration, yard flushing, autonomous watering of plants.
*/
/* delete 3/10
DELETE FROM Water_system
WHERE Description = 'water filtration, yard flushing, autonomous watering of plants';
*/
--SELECT * FROM Water_system;


/*
This code deletes all tuples in the Splinker_system Table that have a splinker_id less than 10007
*/
/* delete 4/10
DELETE FROM Sprinkler_system
WHERE Sprinkler_id > 10007;
*/
--SELECT * FROM Sprinkler_system;


/*
This command DELETE a tuple in the Security_system table using OR, 
where Security_id is less than or equal to 10002 and where It is equal to 10010
*/
/* delete 5/10
DELETE FROM Security_system 
WHERE Security_id <= 10002 OR Security_id = 10010;
*/
--SELECT * FROM Security_system;


/*
This command DELETES a tuple in the HVAC_system table where the HVAC_id is greater than 10008
*/
/* delete 6/10
DELETE FROM HVAC_system
WHERE HVAC_id > 10008
*/
--SELECT * FROM HVAC_system;


