-- DELETE all tables if exists
DROP TABLE IF EXISTS Campaign CASCADE;
DROP TABLE IF EXISTS Category CASCADE;
DROP TABLE IF EXISTS Subcategory CASCADE;
DROP TABLE IF EXISTS Contacts CASCADE;


-- Creating new 4 tables

CREATE TABLE Category (
	category_id varchar(30)  PRIMARY KEY NOT NULL,
	categories varchar(200) NOT NULL
);

CREATE TABLE Subcategory(
	subcategory_id varchar(30)  PRIMARY KEY NOT NULL,
	subcategories varchar(200) NOT NULL
);

CREATE TABLE Contacts(
	contact_id varchar(30)  PRIMARY KEY NOT NULL,
	first_name varchar(200) NOT NULL,
	last_name varchar(200) NOT NULL,
	email varchar(200) NOT NULL
);

CREATE TABLE Campaign (
	cf_id varchar(30) PRIMARY KEY NOT NULL,
	contact_id varchar(30) NOT NULL,
	company_name varchar(200) NOT NULL,
	description varchar(200) NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar(200) NOT NULL,
	backers_count int NOT NULL,
	country varchar(200) NOT NULL,
	currency varchar(200) NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar(30) NOT NULL,
	subcategory_id varchar(30) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id)
);

-- Import CSV's to respective tables

-- View tables
SELECT * FROM Category
SELECT * FROM Subcategory
SELECT * FROM Contacts limit 10
SELECT * FROM Campaign limit 10