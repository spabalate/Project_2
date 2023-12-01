-- Create campaign table
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT FOREIGN KEY NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(3) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) FOREIGN KEY NOT NULL,
	subcategory_id VARCHAR(8) FOREIGN KEY NOT NULL
	
);

-- Create category table
CREATE TABLE category (
	category_id VARCHAR(5) PRIMARY KEY NOT NULL,
	category VARCHAR(20) NOT NULL
);

-- Create subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(20) NOT NULL
);

-- Create contacts table
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(100) NOT NULL
);

SELECT * FROM campaign
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts