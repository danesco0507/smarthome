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

--
-- Data for Name: main_building_type; Type: TABLE DATA; Schema: public; Owner: postgres
-- En esta tabla se definen los tupos de construcciones que pueden existir por ejemplo
-- departamentos casas, edificios etc.
--

INSERT INTO main_building_type (id, name) VALUES (1, 'Departamento');
INSERT INTO main_building_type (id, name) VALUES (2, 'Casa');
INSERT INTO main_building_type (id, name) VALUES (3, 'Finca');
INSERT INTO main_building_type (id, name) VALUES (4, 'Oficina');


--
-- Data for Name: main_neighborhood; Type: TABLE DATA; Schema: public; Owner: postgres
-- Tabla que define los barrios y les da un nivel de criticidad de 1 a 3
--

INSERT INTO main_neighborhood (id, name, risk_level) VALUES (1, 'Puente Largo', 1);
INSERT INTO main_neighborhood (id, name, risk_level) VALUES (2, 'Ciudad Jardin', 1);
INSERT INTO main_neighborhood (id, name, risk_level) VALUES (3, 'Suba', 2);
INSERT INTO main_neighborhood (id, name, risk_level) VALUES (4, 'Centro', 3);
INSERT INTO main_neighborhood (id, name, risk_level) VALUES (5, 'Soacha', 3);


--
-- Data for Name: main_building; Type: TABLE DATA; Schema: public; Owner: postgres
-- Tabla en donde se definenen las construcciones a observar y se les agrega un tipo  y
-- se identifican a que barrio pertenecen;
--

INSERT INTO main_building (id, name, address, building_type_id, neighborhood_id_id, user_id_id) VALUES (1, 'Departamento', 'Calle 114 - 56', 1, 1, 1);
INSERT INTO main_building (id, name, address, building_type_id, neighborhood_id_id, user_id_id) VALUES (2, 'Oficina Banco', 'Calle 19 - 4', 4, 4, 1);
INSERT INTO main_building (id, name, address, building_type_id, neighborhood_id_id, user_id_id) VALUES (3, 'Departamento suba', 'Calle 179 - 100', 1, 3, 1);
INSERT INTO main_building (id, name, address, building_type_id, neighborhood_id_id, user_id_id) VALUES (4, 'Departamento Soacha', 'Calle 179 S - 100', 1, 5, 1);
INSERT INTO main_building (id, name, address, building_type_id, neighborhood_id_id, user_id_id) VALUES (5, 'Oficinas ciudad jardin', 'Calle 35 S - 30', 4, 5, 1);

--
-- Data for Name: main_state_definition; Type: TABLE DATA; Schema: public; Owner: postgres
-- Tabla que define los estados de las alarmas es decir se encarga de identificar si estas estan
-- activas o no para luego ver su detalle
--

INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (1, 'Alarmas de estados', 'Desactivado', 'Activo');
INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (4, 'Sensor de ubicacion', 'Dentro', 'Fuera');
INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (3, 'Sensor apertura', 'Cerrado', 'Abierto');
INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (2, 'Sensor de energia', 'Apagado', 'Encendido');


--
-- Data for Name: main_sensor_type; Type: TABLE DATA; Schema: public; Owner: postgres
-- Define los tipos de alarmas que son manipuladas por la aplicacion, y cada uno de estos tipo
-- contiene una definicion de estados es decir la descripcion de que pasa cuando se encuentran activos
-- y cuando no lo estan.
--

INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (1, 'Alarma de robo', 1);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (2, 'Sensor energia', 2);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (3, 'Sensor apertura', 3);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (4, 'Sensor movimiento', 4);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (5, 'Sensor de humo', 1);


--
-- Data for Name: main_sensor; Type: TABLE DATA; Schema: public; Owner: postgres
-- Tabla que almacena la informacion de los principales sensores que se tienen en el hogar
-- aqui es donde se relacionan sensores con los hogares creados anteriormente, la criticidad debe ir de 1 a 3
--

INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (1, 'Sensor puerta principal', 'Sensor que se encuentra en la puerta principal del hogar', true, 1, 2, 2);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (2, 'Sensor de humo', 'Sensor de humo en la cocina', false, 1, 5, 3);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (3, 'Sensor puerta principal', 'Sensor que se encuentra en la puerta principal del hogar', true, 2, 2, 2);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (4, 'Sensor de robo', 'Sensor que se encuentra en la entrada principal de la construccion', true, 5, 1, 3);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (5, 'Sensor de robo', 'Sensor que se encuentra en la entrada principal de la construccion', true, 4, 1, 3);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (6, 'Sensor de energia televisor', 'Sensor que se encuentra en el televisor de la sala', true, 3, 2, 1);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (7, 'Sensor de energia televisor', 'Sensor que se encuentra en el televisor de la sala', true, 4, 2, 1);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (8, 'Sensor de energia televisor', 'Sensor que se encuentra en el televisor de la sala', true, 1, 2, 1);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (9, 'Sensor de energia televisor', 'Sensor que se encuentra en el televisor de la sala', true, 2, 2, 1);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (10, 'Sensor de energia televisor', 'Sensor que se encuentra en el televisor de la sala', true, 5, 2, 1);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (11, 'Sensor de movimiento', 'Sensor que se encuentra en la puerta trasera', true, 1, 4, 2);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (12, 'Sensor de movimiento', 'Sensor que se encuentra en la puerta trasera', true, 2, 4, 2);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (13, 'Sensor de movimiento', 'Sensor que se encuentra en la puerta trasera', true, 3, 4, 2);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (14, 'Sensor de movimiento', 'Sensor que se encuentra en la puerta trasera', true, 4, 4, 2);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (15, 'Sensor de movimiento', 'Sensor que se encuentra en la puerta trasera', true, 5, 4, 2);


--
-- PostgreSQL database dump complete
--

