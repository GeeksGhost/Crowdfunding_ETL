# Crowdfunding ETL Project
This project involves building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and PostgreSQL. The pipeline extracts data from Excel files, transforms it to fit the desired schema, and loads it into a PostgreSQL database. The final goal is to create a database that contains detailed information about crowdfunding campaigns, including categories, subcategories, and contact information.

## Project Overview
The objective of this project is to practice building an ETL pipeline that can be used to manage and analyze crowdfunding data. The project includes the following tasks:

- Extract data from provided Excel files.
- Transform the data to fit the desired database schema.
- Load the transformed data into a PostgreSQL database.
- Verify the loaded data by running SQL queries.

### Python Libaries Required for this Project: 

pandas
numpy
sqlalchemy
psycopg2
To install the dependencies, run:

## Project Data Sources
The project uses the following Excel files as data sources:

crowdfunding.xlsx: Contains detailed information about crowdfunding campaigns.
contacts.xlsx: Contains contact information for the campaign owners.
Extract, Transform, Load Process
- Step 1: Extract Data
Read the Excel files using Pandas.
Load the data into Pandas DataFrames for further processing.
- Step 2: Transform Data
Category and Subcategory DataFrames:

Extract and transform the "category & sub-category" column to create separate category and subcategory columns.
Generate unique IDs for each category and subcategory.
Campaign DataFrame:

Create a copy of the main DataFrame and rename it campaign_df.
Rename and convert columns as required.
Merge with category and subcategory DataFrames to include category_id and subcategory_id.
Merge with contact information to include a unique contact ID.
- Step 3: Load Data
Create a PostgreSQL database named crowdfunding_db.
Define and create tables based on the database schema.
Import the transformed data from CSV files into the PostgreSQL tables.
Verify the data by running SQL queries.
Database Schema
The database schema includes the following tables:

Category, subcategory, contact_id, cf_id (primary key), contact_id (Foreign key), company_name, description, goal, pledged, 
backers_count, country, currency, launch_date, end_date, category_id (Foreign key), subcategory_id (Foreign key) :

## Instuctions:
To run the ETL pipeline, follow these steps:

- Clone the repository to your local machine.
- Launch jupyter notebook file
- Import the required dependencies.
- Extract data
- Create Category and Subcategory dataframes
- Edit main script to create code that generates desired outcomes
- Run the Jupyter notebook to execute the ETL process.
- Verify the loaded data by running the provided SQL queries.
- Create ERD diagram via QuickDBD to create schemas
- Export csv files
- Create dataframes


Final git push changes to main GitHub branch

### Credits: Class Notes, Peer Discussions, Study Materials, Stack Overflow, XPert Learning Assistant 
