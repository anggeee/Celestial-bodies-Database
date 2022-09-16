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
    name character varying(30) NOT NULL,
    description text,
    galaxy_type character varying(20) NOT NULL,
    more_info text
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
-- Name: galaxy_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_moon (
    galaxy_id integer NOT NULL,
    moon_id integer,
    galaxy_moon_id integer NOT NULL,
    name character varying(20),
    description text
);


ALTER TABLE public.galaxy_moon OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    planet_id integer NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(5,2),
    planet_types character varying(20),
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    galaxy_id integer,
    size_in_whole_number integer
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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'It is a spiral galaxy approximately 2.5 million light years.', 'Spiral Galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'Spectacular dakr band of absorbing dust in front of galaxy.', 'Spiral Galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Bode''s Galaxy', 'It is a lenticular galaxy and ring galaxy about 500 million light years.', 'Grand Spiral Galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 'It looks like a cartwheel that''s why.', 'Lenticular', NULL);
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', 'Starburst galaxy approximately 12 million light years..', 'Starburst', NULL);
INSERT INTO public.galaxy VALUES (6, 'Comet Galaxy', 'Found with the hubble space telescope located at 3.2 billion light-years.', 'Spiral', NULL);


--
-- Data for Name: galaxy_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_moon VALUES (1, 1, 1, NULL, NULL);
INSERT INTO public.galaxy_moon VALUES (2, 2, 2, NULL, NULL);
INSERT INTO public.galaxy_moon VALUES (3, 3, 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', false, 'lorem ipsum dolor sit amet, consectetur', 1);
INSERT INTO public.moon VALUES (2, 'moon 2', false, 'lorem ipsum dolor sit amet, consectetur', 2);
INSERT INTO public.moon VALUES (3, 'moon 3', false, 'lorem ipsum dolor sit amet, consectetur', 3);
INSERT INTO public.moon VALUES (4, 'moon 4', false, 'lorem ipsum dolor sit amet, consectetur', 4);
INSERT INTO public.moon VALUES (5, 'moon 5', false, 'lorem ipsum dolor sit amet, consectetur', 5);
INSERT INTO public.moon VALUES (6, 'moon 6', false, 'lorem ipsum dolor sit amet, consectetur', 6);
INSERT INTO public.moon VALUES (7, 'moon 7', false, 'lorem ipsum dolor sit amet, consectetur', 7);
INSERT INTO public.moon VALUES (8, 'moon 8', false, 'lorem ipsum dolor sit amet, consectetur', 8);
INSERT INTO public.moon VALUES (9, 'moon 9', false, 'lorem ipsum dolor sit amet, consectetur', 9);
INSERT INTO public.moon VALUES (10, 'moon 10', false, 'lorem ipsum dolor sit amet, consectetur', 10);
INSERT INTO public.moon VALUES (11, 'moon 11', false, 'lorem ipsum dolor sit amet, consectetur', 11);
INSERT INTO public.moon VALUES (12, 'moon 12', false, 'lorem ipsum dolor sit amet, consectetur', 12);
INSERT INTO public.moon VALUES (13, 'moon 13', false, 'lorem ipsum dolor sit amet, consectetur', 1);
INSERT INTO public.moon VALUES (14, 'moon 14', false, 'lorem ipsum dolor sit amet, consectetur', 2);
INSERT INTO public.moon VALUES (15, 'moon 15', false, 'lorem ipsum dolor sit amet, consectetur', 3);
INSERT INTO public.moon VALUES (16, 'moon 16', false, 'lorem ipsum dolor sit amet, consectetur', 4);
INSERT INTO public.moon VALUES (17, 'moon 17', false, 'lorem ipsum dolor sit amet, consectetur', 5);
INSERT INTO public.moon VALUES (18, 'moon 18', false, 'lorem ipsum dolor sit amet, consectetur', 6);
INSERT INTO public.moon VALUES (19, 'moon 19', false, 'lorem ipsum dolor sit amet, consectetur', 7);
INSERT INTO public.moon VALUES (20, 'moon 20', false, 'lorem ipsum dolor sit amet, consectetur', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 99.45, 'Terrestrial Planet', true, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 252.71, 'Terrestrial Planet', true, 3);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 'Terrestrial Planet', false, 4);
INSERT INTO public.planet VALUES (4, 'Mars', 131.13, 'Terrestrial Planet', false, 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 593.61, 'Gas Planet', false, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 1.35, 'Gas Giant Planet', false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 2.86, 'Ice Giant', false, 8);
INSERT INTO public.planet VALUES (8, 'Neptune', 4.32, 'Ice Giant', false, 8);
INSERT INTO public.planet VALUES (9, 'Eris', 95.10, 'Dwarf Planet', true, 2);
INSERT INTO public.planet VALUES (10, 'Pluto', 5.09, 'Dwarf Planet', true, 2);
INSERT INTO public.planet VALUES (11, 'Ceres', 507.17, 'Dwarf Planet', true, 3);
INSERT INTO public.planet VALUES (12, 'Makemake', 5.61, 'Dwarf Planet', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpheratz', 60, 1, 4);
INSERT INTO public.star VALUES (3, 'Andromedae', 600, 1, 47);
INSERT INTO public.star VALUES (4, 'Polaris', 70, 2, 6);
INSERT INTO public.star VALUES (5, 'Sirius', 230, 3, 10);
INSERT INTO public.star VALUES (6, 'Betelguese', 10, 4, 89);
INSERT INTO public.star VALUES (7, 'Rigel', 8, 5, 35);
INSERT INTO public.star VALUES (8, 'Vega', 455, 6, 90);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy_moon galaxy_moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_description_key UNIQUE (description);


--
-- Name: galaxy_moon galaxy_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_pkey PRIMARY KEY (galaxy_moon_id);


--
-- Name: galaxy galaxy_more_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_more_info_key UNIQUE (more_info);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: star star_size_in_whole_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_in_whole_number_key UNIQUE (size_in_whole_number);


--
-- Name: galaxy_moon galaxy_moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_moon galaxy_moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

