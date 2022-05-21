--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years numeric(5,2) NOT NULL,
    alternate_name text,
    mass_in_solar_mass character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_in_kg integer,
    planet_id integer,
    age_in_billions_of_years integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_more_info (
    moon_more_info_id integer NOT NULL,
    diameter_in_miles integer NOT NULL,
    distance_from_orbiting_planet_in_miles integer,
    moon_id integer,
    name character varying(20)
);


ALTER TABLE public.moon_more_info OWNER TO freecodecamp;

--
-- Name: moon_more_info_moon_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_more_info_moon_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_more_info_moon_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: moon_more_info_moon_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_more_info_moon_more_info_id_seq OWNED BY public.moon_more_info.moon_more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth_in_lightyears integer,
    galaxy_id integer,
    brightness_in_apparent_magnitude integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_more_info moon_more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_more_info ALTER COLUMN moon_more_info_id SET DEFAULT nextval('public.moon_more_info_moon_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 101.16, 'Messier 31', '1 trillion');
INSERT INTO public.galaxy VALUES (2, 'Backward Galaxy', 135.32, 'NGC 4622', '1.5 trillion');
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', 254.23, 'PGC 2248', '2.3 trillion');
INSERT INTO public.galaxy VALUES (4, 'Milky Way Galaxy', 145.32, 'Silver River', '3.5 trillion');
INSERT INTO public.galaxy VALUES (8, 'Magellanic Cloud', 103.43, 'LMC', '1.2 trillion');
INSERT INTO public.galaxy VALUES (9, 'Messier 82', 109.23, 'Cigar Galaxy', '1.3 trillion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 735000, 4, 28);
INSERT INTO public.moon VALUES (2, 'Phobos', 32000, 5, 23);
INSERT INTO public.moon VALUES (3, 'Deimos', 13000, 5, 18);
INSERT INTO public.moon VALUES (4, 'Amalthea', 2300000, 6, 222);
INSERT INTO public.moon VALUES (5, 'Thebe', 67100000, 6, 422);
INSERT INTO public.moon VALUES (6, 'Io', 10700000, 6, 177);
INSERT INTO public.moon VALUES (7, 'Europa', 67100000, 6, 230);
INSERT INTO public.moon VALUES (8, 'Ganymede', 13900000, 6, 630);
INSERT INTO public.moon VALUES (9, 'Callisto', 11400000, 6, 251);
INSERT INTO public.moon VALUES (10, 'himalia', 18800000, 6, 610);
INSERT INTO public.moon VALUES (11, 'Pan', 14100000, 7, 151);
INSERT INTO public.moon VALUES (12, 'Altas', 37700000, 7, 189);
INSERT INTO public.moon VALUES (13, 'Prometheus', 23800000, 7, 122);
INSERT INTO public.moon VALUES (14, 'Pandora', 29500000, 7, 195);
INSERT INTO public.moon VALUES (15, 'janus', 52700000, 7, 274);
INSERT INTO public.moon VALUES (16, 'Puck', 86000000, 8, 400);
INSERT INTO public.moon VALUES (17, 'Miranda', 13000000, 8, 340);
INSERT INTO public.moon VALUES (18, 'Despina', 53000000, 9, 684);
INSERT INTO public.moon VALUES (19, 'Galatea', 55100000, 9, 576);
INSERT INTO public.moon VALUES (20, 'Charon', 19700000, 10, 280);


--
-- Data for Name: moon_more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_more_info VALUES (1, 3476, 23948, 1, 'Moon');
INSERT INTO public.moon_more_info VALUES (2, 23, 64957, 2, 'Phobos');
INSERT INTO public.moon_more_info VALUES (3, 13, 76354, 3, 'Deimos');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', true, false, 1);
INSERT INTO public.planet VALUES (4, 'Earth', true, true, 1);
INSERT INTO public.planet VALUES (5, 'Mars', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', true, false, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', true, false, 1);
INSERT INTO public.planet VALUES (11, 'Eris', true, false, 1);
INSERT INTO public.planet VALUES (12, 'Ceres', true, false, 1);
INSERT INTO public.planet VALUES (13, 'PA-99-N2', false, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 95, 4, -27);
INSERT INTO public.star VALUES (2, 'Alpheratz', 97, 1, 2);
INSERT INTO public.star VALUES (4, 'Gienah', 154, 3, 3);
INSERT INTO public.star VALUES (3, 'Deneb', 1550, 2, 2);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 83, 4, -12);
INSERT INTO public.star VALUES (6, 'Mirach', 197, 1, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_more_info_moon_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_more_info_moon_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_more_info moon_more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_more_info
    ADD CONSTRAINT moon_more_info_name_key UNIQUE (name);


--
-- Name: moon_more_info moon_more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_more_info
    ADD CONSTRAINT moon_more_info_pkey PRIMARY KEY (moon_more_info_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon_more_info moon_more_info_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_more_info
    ADD CONSTRAINT moon_more_info_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

