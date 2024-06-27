-- Drop tables if they exist in the correct order
DROP TABLE IF EXISTS Campaign;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Subcategory;
DROP TABLE IF EXISTS Category;

-- Create Category table
CREATE TABLE IF NOT EXISTS Category(
    category_id VARCHAR(10) NOT NULL PRIMARY KEY,
    category VARCHAR(100)
);

-- Insert information into Category
COPY Category FROM 'C:\Users\Emmy\Desktop\Data_Bootcamp\Projects\Project_2\Crowdfunding_ETL\Resources\category.csv' WITH (FORMAT csv, HEADER);

-- Print Category table
SELECT * FROM Category;

-- Create Subcategory table
CREATE TABLE IF NOT EXISTS Subcategory(
    subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(100)
);

-- Insert information into Subcategory
COPY Subcategory FROM 'C:\Users\Emmy\Desktop\Data_Bootcamp\Projects\Project_2\Crowdfunding_ETL\Resources\subcategory.csv' WITH (FORMAT csv, HEADER);

-- Print Subcategory table
SELECT * FROM Subcategory;

-- Create Campaign table
CREATE TABLE IF NOT EXISTS Campaign (
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    description TEXT,
    goal DECIMAL(15,2),
    pledged DECIMAL(15,2),
    outcome VARCHAR(10),
    backers_count INTEGER,
    country VARCHAR(10),
    currency VARCHAR(5),
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- Insert information into Campaign
COPY Campaign FROM 'C:\Users\Emmy\Desktop\Data_Bootcamp\Projects\Project_2\Crowdfunding_ETL\Resources\campaign.csv' WITH (FORMAT csv, HEADER);

-- Print Campaign table
SELECT * FROM Campaign;

-- Create Contacts table
CREATE TABLE IF NOT EXISTS Contacts(
    contact_id INTEGER NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email TEXT,
    FOREIGN KEY (contact_id) REFERENCES Campaign(contact_id)
);

-- Insert information into Contacts
COPY Contacts FROM 'C:\Users\Emmy\Desktop\Data_Bootcamp\Projects\Project_2\Crowdfunding_ETL\Resources\contacts.csv' WITH (FORMAT csv, HEADER);

-- Print Contacts table
SELECT * FROM Contacts;
