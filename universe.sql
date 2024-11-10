universe.sql
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+
1)
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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecam
p
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'U
TF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecam
p
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: f
reecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public;
 Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galax
y_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: fre
ecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; O
wner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecam
p
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: f
reecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public;
 Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.plane
t_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: fre
ecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; O
wner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(30) NOT NULL,
    idk integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_id_seq; Type: SEQUENCE; Schema: public; Owner: free
codecamp
--

CREATE SEQUENCE public.sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Ow
ner: freecodecamp
--

ALTER SEQUENCE public.sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner:
 freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAUL
T nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: fre
ecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT ne
xtval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner:
 freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAUL
T nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: fre
ecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT ne
xtval('public.star_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freec
odecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT next
val('public.sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owne
r: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13800, 0, 1000
00, 'The galaxy...', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000, 2537000,
 220000, 'The nearest spiral galaxy to the Milky Way.', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2800, 3000000
, 6000, 'A member of Local Group...', true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 10000, 29000000
0, 49000, 'A spiral galaxy...', true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 7000, 230000, 
100000, 'A classic...', true);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13000, 550000
00, 120000, 'A giant elliptical galaxy...', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner:
 freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4600, 384400, 3474.8,
 'The only natural..', true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 5600000, 2274
, 'The larger of Mars...', true, 2);
INSERT INTO public.moon VALUES (3, 'Proxima Centauri b I', 4000,
 424000, 3000, 'A potential moon...', true, 3);
INSERT INTO public.moon VALUES (4, 'Moon 1', 1000, 98000, 100.0,
 NULL, true, 1);
INSERT INTO public.moon VALUES (5, 'Moon 2', 1000, 98000, 100.0,
 NULL, true, 1);
INSERT INTO public.moon VALUES (6, 'Moon 3', 1000, 98000, 100.0,
 NULL, true, 1);
INSERT INTO public.moon VALUES (7, 'Moon 4', 1000, 98000, 100.0,
 NULL, true, 1);
INSERT INTO public.moon VALUES (8, 'Moon 5', 1000, 98000, 100.0,
 NULL, true, 1);
INSERT INTO public.moon VALUES (9, 'Moon 6', 1000, 98000, 100.0,
 NULL, true, 1);
INSERT INTO public.moon VALUES (10, 'Moon 7', 1000, 98000, 100.0
, NULL, true, 1);
INSERT INTO public.moon VALUES (11, 'Moon 8', 1000, 98000, 100.0
, NULL, true, 1);
INSERT INTO public.moon VALUES (12, 'Moon 9', 1000, 98000, 100.0
, NULL, true, 1);
INSERT INTO public.moon VALUES (13, 'Moon 10', 1000, 98000, 100.
0, NULL, true, 1);
INSERT INTO public.moon VALUES (14, 'Moon 11', 1000, 98000, 100.
0, NULL, true, 1);
INSERT INTO public.moon VALUES (15, 'Moon 12', 1000, 98000, 100.
0, NULL, true, 1);
INSERT INTO public.moon VALUES (16, 'Moon 13', 1000, 98000, 100.
0, NULL, true, 1);
INSERT INTO public.moon VALUES (17, 'Moon 14', 1000, 98000, 100.
0, NULL, true, 1);
INSERT INTO public.moon VALUES (18, 'Moon 15', 1000, 98000, 100.
0, NULL, true, 1);
INSERT INTO public.moon VALUES (19, 'Moon 16', 1000, 98000, 100.
0, NULL, true, 1);
INSERT INTO public.moon VALUES (20, 'Moon 17', 1000, 98000, 100.
0, NULL, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owne
r: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4600, 0, 12742, 'T
he third planet from the Sun and the only known planet to suppor
t life.', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4500, 78000000, 677
9, 'The fourth planet from the Sun, known for its red appearance
 and potential for past life.', true, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 4000, 42400000
0, 11000, 'A potentially habitable exoplanet orbiting Proxima Ce
ntauri, the closest star to the Sun.', true, 5);
INSERT INTO public.planet VALUES (4, 'Planet 1', 1000, 98000, 10
0.0, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'Planet 2', 1000, 98000, 10
0.0, NULL, true, 1);
INSERT INTO public.planet VALUES (6, 'Planet 3', 1000, 98000, 10
0.0, NULL, true, 1);
INSERT INTO public.planet VALUES (7, 'Planet 4', 1000, 98000, 10
0.0, NULL, true, 1);
INSERT INTO public.planet VALUES (8, 'Planet 5', 1000, 98000, 10
0.0, NULL, true, 1);
INSERT INTO public.planet VALUES (9, 'Planet 6', 1000, 98000, 10
0.0, NULL, true, 1);
INSERT INTO public.planet VALUES (10, 'Planet 7', 1000, 98000, 1
00.0, NULL, true, 1);
INSERT INTO public.planet VALUES (11, 'Planet 8', 1000, 98000, 1
00.0, NULL, true, 1);
INSERT INTO public.planet VALUES (12, 'Planet 9', 1000, 98000, 1
00.0, NULL, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner:
 freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 0, 1392000, 'Our
 Sun, a G-type main-sequence star, the central star of the Solar
 System.', true, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 4500, 420
000000, 1392000, 'A star in the Alpha Centauri system, a binary 
star system with Alpha Centauri B.', true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 800, 643, 95000
0000, 'A red supergiant star in the constellation Orion, one of 
the largest known stars.', false, 2);
INSERT INTO public.star VALUES (4, 'Sirius A', 200, 820000000, 1
390000, 'The brightest star in the night sky, part of the binary
 system Sirius.', true, 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4000, 424
000000, 2000000, 'The closest known star to the Sun, part of the
 Alpha Centauri system.', true, 2);
INSERT INTO public.star VALUES (6, 'Polaris', 700, 430, 50000000
0, 'The North Star, a yellow supergiant star in the constellatio
n Ursa Minor.', false, 4);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: 
freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sol', NULL);
INSERT INTO public.sun VALUES (2, 'Alpha Centauri A', NULL);
INSERT INTO public.sun VALUES (3, 'Sirius A', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owne
r: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner:
 freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owne
r: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner:
 freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: 
freecodecamp
--

SELECT pg_catalog.setval('public.sun_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; O
wner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner
: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; O
wner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner
: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public
; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; O
wner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: pu
blic; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public
; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: sun unique_sun_name; Type: CONSTRAINT; Schema: public; 
Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT unique_sun_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Ow
ner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES 
public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Ow
ner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES 
public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Ow
ner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES publ
ic.star(star_id);


--
-- PostgreSQL database dump complete
--
