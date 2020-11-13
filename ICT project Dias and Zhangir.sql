
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
fnmae VARCHAR(64),
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
HVAC_system INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(HVAC_system),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);

CREATE TABLE Water_system(
Water_system INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(Water_system),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);

CREATE TABLE Energy_system(
Energy_system INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(Energy_system),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);

CREATE TABLE Sprinkler_system(
Sprinkler_system INT,
Description TEXT,
BMS_id INT,
PRIMARY KEY(Sprinkler_system),
FOREIGN KEY(BMS_id) REFERENCES BMS(BMS_id)
);


