/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'data_warehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'data_warehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Drop and recreate the 'data_warehouse' database
DROP DATABASE IF EXISTS data_warehouse;
CREATE DATABASE data_warehouse;
USE data_warehouse;

-- Simulate schemas by using table name prefixes or just use as logical groupings
-- MySQL does not support CREATE SCHEMA as a namespace inside a database like SQL Server

-- Optionally, you can just use the naming convention in tables like:
-- bronze_sales, silver_sales, gold_sales

-- But if you really want separate 'schema-like' structures, you can do:
CREATE DATABASE IF NOT EXISTS data_warehouse_bronze;
CREATE DATABASE IF NOT EXISTS data_warehouse_silver;
CREATE DATABASE IF NOT EXISTS data_warehouse_gold;
