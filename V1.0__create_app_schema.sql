-- File: V1.0__create_app_schema.sql

-- Description: Create the "app" schema and set it as the default schema for the "app" application

-- Create the "app" schema
CREATE SCHEMA app;

-- Set the "app" schema as the default schema for the "app" application
ALTER ROLE app SET search_path = app, pg_catalog;

-- Ensure that objects are not created in the "public" schema
ALTER ROLE app SET search_path = app, pg_catalog, -public;

-- Add any additional SQL statements or configurations specific to the "app" schema here.
