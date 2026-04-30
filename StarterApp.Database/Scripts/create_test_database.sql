-- One-time: create the Postgres database used by TestConnection / TestAppDbContext.
--
-- Run from a terminal (superuser is often "postgres"; adjust host/port if needed):
--   psql -h localhost -p 5432 -U postgres -d postgres -v ON_ERROR_STOP=1 -f StarterApp.Database/Scripts/create_test_database.sql
--
-- If you get "role app_user does not exist", create it first (password must match appsettings.json):
--   CREATE ROLE app_user WITH LOGIN PASSWORD 'app_password';

CREATE DATABASE testdb OWNER app_user;
