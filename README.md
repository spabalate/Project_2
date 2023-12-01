# Project_2
#Crowdfunding Project

Practiced building an ETL pipeline using Python, Pandas, and Python dictionary methodsto extract and transform the data. Created four CSV files and use the CSV file data to create an ERD and a table schema. Uploaded the CSV file data into a Postgres database.

#Create the Category and Subcategory DataFrames
Extracted and transformed the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- A "category" column that contains only the category titles
Exported the category DataFrame as category.csv.
Extracted and transformed the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- A "subcategory" column that contains only the subcategory titles
Exported the subcategory DataFrame as subcategory.csv.

#Create the Campaign DataFrame
Extracted and transformed the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
- The "cf_id" column
- The "contact_id" column
- The "company_name" column
- The "blurb" column, renamed to "description"
- The "goal" column, converted to the float data type
- The "pledged" column, converted to the float data type
- The "outcome" column
- The "backers_count" column
- The "country" column
- The "currency" column
- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
Exported the campaign DataFrame as campaign.csv.

#Create the Contacts DataFrame
Imported the contacts.xlsx file into a DataFrame.
Iterated through the DataFrame, converting each row to a dictionary.
Iterated through each dictionary, doing the following:
- Extracted the dictionary values from the keys by using a Python list comprehension.
- Added the values for each row to a new list.
- Created a new DataFrame that contains the extracted data.
- Split each "name" column value into a first and last name, and place each in a new column.
- Cleaned and exported the DataFrame as contacts.csv.

#Create the Crowdfunding Database
Inspected the four CSV files, and sketched an ERD of the tables by using QuickDBDLinks to an external site.
Used the information from the ERD to create a table schema for each CSV file.
Savde the database schema as a Postgres file named crowdfunding_db_schema.sql.
Created a new Postgres database, named crowdfunding_db.
Created the tables in the correct order to handle the foreign keys.
Verified the table creation by running a SELECT statement for each table.
Imported each CSV file into its corresponding SQL table.
Verified that each table has the correct data by running a SELECT statement for each.
