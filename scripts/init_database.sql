/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Drop and recreate the 'DataWarehouse' database
DROP DATABASE IF EXISTS DataWarehouse;
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

-- Simulate schemas by using table name prefixes or just use as logical groupings
-- MySQL does not support CREATE SCHEMA as a namespace inside a database like SQL Server

-- Optionally, you can just use the naming convention in tables like:
-- bronze_sales, silver_sales, gold_sales

-- But if you really want separate 'schema-like' structures, you can do:
CREATE DATABASE IF NOT EXISTS DataWarehouse_bronze;
CREATE DATABASE IF NOT EXISTS DataWarehouse_silver;
CREATE DATABASE IF NOT EXISTS DataWarehouse_gold;
