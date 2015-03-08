--
-- PostgreSQL database dump
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
--

INSERT INTO main_building_type (id, name) VALUES (1, 'Apto');


--
-- Data for Name: main_neighborhood; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO main_neighborhood (id, name, risk_level) VALUES (1, 'puente largo', 2);


--
-- Data for Name: main_building; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO main_building (id, name, address, building_type_id, neighborhood_id_id, user_id_id) VALUES (1, 'Apto', 'Calle 114 - 56', 1, 1, 1);


--
-- Name: main_building_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('main_building_id_seq', 1, false);


--
-- Name: main_building_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('main_building_type_id_seq', 1, false);


--
-- Name: main_neighborhood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('main_neighborhood_id_seq', 1, false);


--
-- Data for Name: main_state_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (1, 'Alarmas de estados', 'Desactivado', 'Activo');
INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (4, 'Sensor de ubicacion', 'Dentro', 'Fuera');
INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (3, 'Sensor apertura', 'Cerrado', 'Abierto');
INSERT INTO main_state_definition (id, name, false_state, true_state) VALUES (2, 'Sensor de energia', 'Apagado', 'Encendido');


--
-- Data for Name: main_sensor_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (1, 'Alarma de robo', 1);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (2, 'Sensor energia', 2);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (3, 'Sensor apertura', 3);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (4, 'Sensor movimiento', 4);
INSERT INTO main_sensor_type (id, name, "State_definition_id_id") VALUES (5, 'Sensor de humo', 1);


--
-- Data for Name: main_sensor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (1, 'Sensor puerta principal', 'Sensor que se encuentra en la puerta principal del hogar', true, 1, 2, 4);
INSERT INTO main_sensor (id, name, description, state, "Building_id_id", "Sensor_type_id_id", criticaly) VALUES (2, 'Sensor de humo', 'Sensor de humo en la cocina', false, 1, 5, 5);


--
-- Name: main_sensor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('main_sensor_id_seq', 1, false);


--
-- Name: main_sensor_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('main_sensor_type_id_seq', 1, false);


--
-- Name: main_state_definition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('main_state_definition_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

