--
--  Si desea insertar todos los datos desde cero ejecute el script DELETE_SQL
--  Ejecucion de insercion de datos para llenar los datos
--  de la primer entrega del primer sprint
--  PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;


UPDATE main_sensor
SET state = random()::int::bool