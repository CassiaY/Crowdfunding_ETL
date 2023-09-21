-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--drop if exists
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;

-- Create table 1: category
CREATE TABLE category (
  category_id VARCHAR(30) NOT NULL PRIMARY KEY,
  category VARCHAR(30) NOT NULL
);

-- Create table 2: subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(30) NOT NULL
);

-- Create table 3: contacts
CREATE TABLE contacts (
    contact_id VARCHAR(30) NOT NULL PRIMARY KEY,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    email VARCHAR   NOT NULL
);

-- Create table 4: campaign
CREATE TABLE campaign (
    cf_id VARCHAR(30) NOT NULL,
    contact_id VARCHAR(30) NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR   NOT NULL,
    currency VARCHAR   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR   NOT NULL,
    subcategory_id VARCHAR   NOT NULL,
        FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
        FOREIGN KEY (category_id) REFERENCES category(category_id),
        FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;