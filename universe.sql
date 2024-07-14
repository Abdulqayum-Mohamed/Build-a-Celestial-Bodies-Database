--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    name character varying(50) NOT NULL,
    secret character varying(50),
    description_id integer NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life text,
    age_in_million_years integer,
    distance_from_earth numeric,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life text,
    age_in_million_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life text,
    age_in_million_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life text,
    age_in_million_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES ('jupiter', 'far', 1);
INSERT INTO public.description VALUES ('mercury', 'hot', 2);
INSERT INTO public.description VALUES ('mars', 'cold', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 'YES', 105, 900, true);
INSERT INTO public.galaxy VALUES (2, 'B', 'YES', 106, 999, true);
INSERT INTO public.galaxy VALUES (3, 'C', 'YES', 107, 901, true);
INSERT INTO public.galaxy VALUES (4, 'D', 'YES', 108, 902, true);
INSERT INTO public.galaxy VALUES (5, 'E', 'YES', 109, 903, true);
INSERT INTO public.galaxy VALUES (6, 'F', 'YES', 110, 904, true);
INSERT INTO public.galaxy VALUES (7, 'G', 'YES', 111, 905, true);
INSERT INTO public.galaxy VALUES (8, 'H', 'YES', 112, 906, true);
INSERT INTO public.galaxy VALUES (9, 'I', 'YES', 114, 907, true);
INSERT INTO public.galaxy VALUES (10, 'J', 'YES', 115, 980, true);
INSERT INTO public.galaxy VALUES (11, 'K', 'YES', 116, 990, true);
INSERT INTO public.galaxy VALUES (12, 'L', 'YES', 117, 912, true);
INSERT INTO public.galaxy VALUES (13, 'M', 'YES', 118, 913, true);
INSERT INTO public.galaxy VALUES (14, 'N', 'YES', 119, 914, true);
INSERT INTO public.galaxy VALUES (15, 'O', 'YES', 120, 915, true);
INSERT INTO public.galaxy VALUES (16, 'P', 'YES', 121, 916, true);
INSERT INTO public.galaxy VALUES (17, 'Q', 'YES', 122, 917, true);
INSERT INTO public.galaxy VALUES (18, 'R', 'YES', 123, 918, true);
INSERT INTO public.galaxy VALUES (19, 'S', 'YES', 124, 919, true);
INSERT INTO public.galaxy VALUES (20, 'T', 'YES', 125, 921, true);
INSERT INTO public.galaxy VALUES (21, 'U', 'YES', 126, 922, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 'YES', 106, 900, true, 1);
INSERT INTO public.moon VALUES (2, 'B', 'YES', 106, 999, true, 2);
INSERT INTO public.moon VALUES (3, 'C', 'YES', 107, 901, true, 3);
INSERT INTO public.moon VALUES (4, 'D', 'YES', 108, 902, true, 4);
INSERT INTO public.moon VALUES (5, 'E', 'YES', 109, 903, true, 5);
INSERT INTO public.moon VALUES (6, 'F', 'YES', 110, 904, true, 6);
INSERT INTO public.moon VALUES (7, 'G', 'YES', 111, 905, true, 7);
INSERT INTO public.moon VALUES (8, 'H', 'YES', 112, 906, true, 8);
INSERT INTO public.moon VALUES (9, 'I', 'YES', 114, 907, true, 9);
INSERT INTO public.moon VALUES (10, 'J', 'YES', 115, 980, true, 10);
INSERT INTO public.moon VALUES (11, 'K', 'YES', 116, 990, true, 11);
INSERT INTO public.moon VALUES (12, 'L', 'YES', 117, 912, true, 12);
INSERT INTO public.moon VALUES (13, 'M', 'YES', 118, 913, true, 12);
INSERT INTO public.moon VALUES (14, 'N', 'YES', 119, 914, true, 12);
INSERT INTO public.moon VALUES (15, 'O', 'YES', 120, 915, true, 13);
INSERT INTO public.moon VALUES (16, 'P', 'YES', 121, 916, true, 13);
INSERT INTO public.moon VALUES (17, 'Q', 'YES', 122, 917, true, 12);
INSERT INTO public.moon VALUES (18, 'R', 'YES', 123, 918, true, 1);
INSERT INTO public.moon VALUES (19, 'S', 'YES', 124, 919, true, 3);
INSERT INTO public.moon VALUES (20, 'T', 'YES', 125, 921, true, 13);
INSERT INTO public.moon VALUES (21, 'U', 'YES', 126, 922, true, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 'YES', 106, 900, true, 1);
INSERT INTO public.planet VALUES (2, 'B', 'YES', 106, 999, true, 2);
INSERT INTO public.planet VALUES (3, 'C', 'YES', 107, 901, true, 3);
INSERT INTO public.planet VALUES (4, 'D', 'YES', 108, 902, true, 4);
INSERT INTO public.planet VALUES (5, 'E', 'YES', 109, 903, true, 5);
INSERT INTO public.planet VALUES (6, 'F', 'YES', 110, 904, true, 6);
INSERT INTO public.planet VALUES (7, 'G', 'YES', 111, 905, true, 7);
INSERT INTO public.planet VALUES (8, 'H', 'YES', 112, 906, true, 8);
INSERT INTO public.planet VALUES (9, 'I', 'YES', 114, 907, true, 9);
INSERT INTO public.planet VALUES (10, 'J', 'YES', 115, 980, true, 10);
INSERT INTO public.planet VALUES (11, 'K', 'YES', 116, 990, true, 11);
INSERT INTO public.planet VALUES (12, 'L', 'YES', 117, 912, true, 12);
INSERT INTO public.planet VALUES (13, 'M', 'YES', 118, 913, true, 12);
INSERT INTO public.planet VALUES (14, 'N', 'YES', 119, 914, true, 12);
INSERT INTO public.planet VALUES (15, 'O', 'YES', 120, 915, true, 13);
INSERT INTO public.planet VALUES (16, 'P', 'YES', 121, 916, true, 13);
INSERT INTO public.planet VALUES (17, 'Q', 'YES', 122, 917, true, 12);
INSERT INTO public.planet VALUES (18, 'R', 'YES', 123, 918, true, 1);
INSERT INTO public.planet VALUES (19, 'S', 'YES', 124, 919, true, 3);
INSERT INTO public.planet VALUES (20, 'T', 'YES', 125, 921, true, 13);
INSERT INTO public.planet VALUES (21, 'U', 'YES', 126, 922, true, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 'YES', 106, 900, true, 1);
INSERT INTO public.star VALUES (2, 'B', 'YES', 106, 999, true, 2);
INSERT INTO public.star VALUES (3, 'C', 'YES', 107, 901, true, 3);
INSERT INTO public.star VALUES (4, 'D', 'YES', 108, 902, true, 4);
INSERT INTO public.star VALUES (5, 'E', 'YES', 109, 903, true, 5);
INSERT INTO public.star VALUES (6, 'F', 'YES', 110, 904, true, 6);
INSERT INTO public.star VALUES (7, 'G', 'YES', 111, 905, true, 7);
INSERT INTO public.star VALUES (8, 'H', 'YES', 112, 906, true, 8);
INSERT INTO public.star VALUES (9, 'I', 'YES', 114, 907, true, 9);
INSERT INTO public.star VALUES (10, 'J', 'YES', 115, 980, true, 10);
INSERT INTO public.star VALUES (11, 'K', 'YES', 116, 990, true, 11);
INSERT INTO public.star VALUES (12, 'L', 'YES', 117, 912, true, 12);
INSERT INTO public.star VALUES (13, 'M', 'YES', 118, 913, true, 12);
INSERT INTO public.star VALUES (14, 'N', 'YES', 119, 914, true, 12);
INSERT INTO public.star VALUES (15, 'O', 'YES', 120, 915, true, 13);
INSERT INTO public.star VALUES (16, 'P', 'YES', 121, 916, true, 13);
INSERT INTO public.star VALUES (17, 'Q', 'YES', 122, 917, true, 12);
INSERT INTO public.star VALUES (18, 'R', 'YES', 123, 918, true, 1);
INSERT INTO public.star VALUES (19, 'S', 'YES', 124, 919, true, 3);
INSERT INTO public.star VALUES (20, 'T', 'YES', 125, 921, true, 13);
INSERT INTO public.star VALUES (21, 'U', 'YES', 126, 922, true, 14);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: description description_secret_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_secret_key UNIQUE (secret);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

