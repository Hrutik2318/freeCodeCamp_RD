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
    age integer NOT NULL,
    distance integer NOT NULL,
    temperature numeric(4,1),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean
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
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance integer NOT NULL,
    temperature numeric(4,1),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance integer NOT NULL,
    temperature numeric(4,1),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    age integer NOT NULL,
    distance integer NOT NULL,
    temperature numeric(4,1),
    description text NOT NULL,
    has_life boolean,
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
    age integer NOT NULL,
    distance integer NOT NULL,
    temperature numeric(4,1),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'A', 143139, 12413513, 54.0, 'A', false, true);
INSERT INTO public.galaxy VALUES (2, 'B', 143239, 126573513, 54.0, 'B', false, false);
INSERT INTO public.galaxy VALUES (3, 'C', 153239, 36573513, 14.0, 'C', true, false);
INSERT INTO public.galaxy VALUES (4, 'D', 157139, 40573513, 193.0, 'D', false, false);
INSERT INTO public.galaxy VALUES (5, 'E', 1107059, 729573513, 27.0, 'D', true, true);
INSERT INTO public.galaxy VALUES (6, 'F', 25307059, 891573513, 270.0, 'F', false, true);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'R', 97259, 8916213, 2.0, 'L', false, false);
INSERT INTO public.meteor VALUES (2, 'S', 97259, 8916213, 2.0, 'L', false, false);
INSERT INTO public.meteor VALUES (3, 'T', 97259, 8916213, 2.0, 'L', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'X', 97259, 8916213, 2.0, 'L', false, false, 3);
INSERT INTO public.moon VALUES (2, 'Y', 97259, 8916213, 2.0, 'L', false, false, 3);
INSERT INTO public.moon VALUES (3, 'Z', 97259, 8916213, 2.0, 'L', false, false, 3);
INSERT INTO public.moon VALUES (4, 'A', 97259, 8916213, 2.0, 'L', false, false, 4);
INSERT INTO public.moon VALUES (6, 'B', 97259, 8916213, 2.0, 'L', false, false, 3);
INSERT INTO public.moon VALUES (8, 'C', 97259, 8916213, 2.0, 'L', false, false, 8);
INSERT INTO public.moon VALUES (9, 'D', 97259, 8916213, 2.0, 'L', false, false, 9);
INSERT INTO public.moon VALUES (10, 'E', 97259, 8916213, 2.0, 'L', false, false, 9);
INSERT INTO public.moon VALUES (11, 'F', 97259, 8916213, 2.0, 'L', false, false, 2);
INSERT INTO public.moon VALUES (12, 'G', 97259, 8916213, 2.0, 'L', false, false, 2);
INSERT INTO public.moon VALUES (13, 'H', 97259, 8916213, 2.0, 'L', false, false, 2);
INSERT INTO public.moon VALUES (14, 'I', 97259, 8916213, 2.0, 'L', false, false, 2);
INSERT INTO public.moon VALUES (15, 'J', 97259, 8916213, 2.0, 'L', false, false, 2);
INSERT INTO public.moon VALUES (17, 'K', 97259, 8916213, 2.0, 'L', false, false, 1);
INSERT INTO public.moon VALUES (18, 'L', 97259, 8916213, 2.0, 'L', false, false, 1);
INSERT INTO public.moon VALUES (19, 'M', 97259, 8916213, 2.0, 'L', false, false, 9);
INSERT INTO public.moon VALUES (20, 'N', 97259, 8916213, 2.0, 'L', false, false, 9);
INSERT INTO public.moon VALUES (21, 'O', 97259, 8916213, 2.0, 'L', false, false, 10);
INSERT INTO public.moon VALUES (22, 'P', 97259, 8916213, 2.0, 'L', false, false, 10);
INSERT INTO public.moon VALUES (23, 'Q', 97259, 8916213, 2.0, 'L', false, false, 12);
INSERT INTO public.moon VALUES (24, 'R', 97259, 8916213, 2.0, 'L', false, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'M', 97259, 8916213, 2.0, 'L', false, false, 7);
INSERT INTO public.planet VALUES (2, 'N', 97259, 8916213, 2.0, 'L', false, false, 3);
INSERT INTO public.planet VALUES (3, 'O', 97259, 8916213, 2.0, 'L', false, false, 7);
INSERT INTO public.planet VALUES (4, 'P', 97259, 8916213, 2.0, 'L', false, false, 1);
INSERT INTO public.planet VALUES (6, 'Q', 97259, 8916213, 2.0, 'L', false, false, 6);
INSERT INTO public.planet VALUES (8, 'R', 97259, 8916213, 2.0, 'L', false, false, 6);
INSERT INTO public.planet VALUES (9, 'S', 97259, 8916213, 2.0, 'L', false, false, 6);
INSERT INTO public.planet VALUES (10, 'T', 97259, 8916213, 2.0, 'L', false, false, 3);
INSERT INTO public.planet VALUES (11, 'U', 97259, 8916213, 2.0, 'L', false, false, 4);
INSERT INTO public.planet VALUES (12, 'V', 97259, 8916213, 2.0, 'L', false, false, 1);
INSERT INTO public.planet VALUES (13, 'W', 97259, 8916213, 2.0, 'L', false, false, 7);
INSERT INTO public.planet VALUES (14, 'X', 97259, 8916213, 2.0, 'L', false, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'G', 97259, 8916213, 2.0, 'G', false, true, 4);
INSERT INTO public.star VALUES (2, 'H', 97259, 8916213, 2.0, 'H', false, true, 3);
INSERT INTO public.star VALUES (3, 'I', 97259, 8916213, 2.0, 'I', true, true, 2);
INSERT INTO public.star VALUES (4, 'J', 97259, 8916213, 2.0, 'J', true, true, 6);
INSERT INTO public.star VALUES (6, 'K', 97259, 8916213, 2.0, 'K', false, true, 1);
INSERT INTO public.star VALUES (7, 'L', 97259, 8916213, 2.0, 'L', false, false, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


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

