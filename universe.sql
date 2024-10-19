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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    disk text NOT NULL,
    cores character varying(20),
    diameter character varying(30),
    mass integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: kal; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.kal (
    name character varying(50) NOT NULL,
    prost integer,
    day boolean,
    kal_id integer NOT NULL
);


ALTER TABLE public.kal OWNER TO freecodecamp;

--
-- Name: kal_kal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.kal_kal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kal_kal_id_seq OWNER TO freecodecamp;

--
-- Name: kal_kal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.kal_kal_id_seq OWNED BY public.kal.kal_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50),
    radius integer NOT NULL,
    "row" integer,
    albedo integer,
    temp integer,
    size integer,
    rotation integer,
    moon_id integer NOT NULL
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
    name character varying(50),
    mass integer,
    moon character varying(50),
    size integer,
    albedo integer,
    radius integer NOT NULL,
    "row" numeric,
    planet_id integer NOT NULL
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
    name character varying(50),
    kaleban integer,
    radius integer NOT NULL,
    vozrast boolean,
    mass integer,
    star_id integer NOT NULL
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
-- Name: kal kal_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kal ALTER COLUMN kal_id SET DEFAULT nextval('public.kal_kal_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12343, 1);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12344, 3);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12345, 4);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12346, 5);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12347, 6);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12348, 7);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12349, 8);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12350, 9);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12351, 10);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12352, 11);
INSERT INTO public.galaxy VALUES ('sun', 'sigma', '20yader', '-1202', 12357, 12);
INSERT INTO public.galaxy VALUES (NULL, 'goi', NULL, NULL, 42654, 15);
INSERT INTO public.galaxy VALUES (NULL, 'gospod', NULL, NULL, 22, 17);
INSERT INTO public.galaxy VALUES (NULL, 'gospod', NULL, NULL, 23, 18);
INSERT INTO public.galaxy VALUES ('gig', 'kare', '4553', '102', 102, 19);
INSERT INTO public.galaxy VALUES (NULL, 'kolo', NULL, NULL, 34, 21);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 35, 23);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 36, 24);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 37, 25);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 38, 26);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 39, 27);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 40, 28);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 41, 30);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 42, 31);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 43, 32);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 44, 33);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 45, 34);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 46, 35);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 47, 36);
INSERT INTO public.galaxy VALUES (NULL, 'lol', NULL, NULL, 0, 38);


--
-- Data for Name: kal; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.kal VALUES ('pomogite', 43, NULL, 1);
INSERT INTO public.kal VALUES ('pomogitepj', 42, NULL, 3);
INSERT INTO public.kal VALUES ('pomogiteumolayo', 42, NULL, 4);
INSERT INTO public.kal VALUES ('pomogiteradiboga', 42, NULL, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7612, 65654, 12, 1);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7512, 65654, 13, 3);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7712, 65654, 13, 4);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7713, 65654, 13, 5);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7714, 65654, 13, 6);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7715, 65654, 13, 7);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7716, 65654, 13, 8);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7717, 65654, 13, 9);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7718, 65654, 13, 10);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7719, 65654, 13, 11);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7720, 65654, 13, 12);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7721, 65654, 13, 13);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7722, 65654, 13, 14);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7723, 65654, 13, 15);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7724, 65654, 13, 16);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7725, 65654, 13, 17);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7726, 65654, 13, 18);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7727, 65654, 13, 19);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7728, 65654, 13, 20);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7729, 65654, 13, 21);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7730, 65654, 13, 22);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7731, 65654, 13, 23);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7732, 65654, 13, 24);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7733, 65654, 13, 25);
INSERT INTO public.moon VALUES ('micro', 432, 1, 567567, 7734, 65654, 13, 26);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('giga', 43, 'mini', 54352, 0, 623, 1, 1);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 2, 3);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 3, 4);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 4, 5);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 5, 6);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 6, 7);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 7, 8);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 8, 9);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 9, 10);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 10, 11);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 11, 12);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 12, 13);
INSERT INTO public.planet VALUES ('giga', 45, 'mini', 54352, 0, 623, 13, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 34, 3);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 35, 4);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 36, 5);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 37, 6);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 38, 7);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 39, 8);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 40, 9);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 41, 10);
INSERT INTO public.star VALUES ('zvezda12', NULL, 4334, true, 42, 11);
INSERT INTO public.star VALUES (NULL, NULL, 165, NULL, 43, 13);
INSERT INTO public.star VALUES (NULL, NULL, 165, NULL, 44, 14);
INSERT INTO public.star VALUES (NULL, NULL, 165, NULL, 45, 15);
INSERT INTO public.star VALUES ('gig', 102, 102, true, 102, 26);
INSERT INTO public.star VALUES (NULL, NULL, 0, NULL, 0, 28);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 38, true);


--
-- Name: kal_kal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.kal_kal_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 32, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: kal kal_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kal
    ADD CONSTRAINT kal_pkey PRIMARY KEY (kal_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_temp_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_temp_key UNIQUE (temp);


--
-- Name: galaxy nezngl; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT nezngl UNIQUE (mass);


--
-- Name: kal neznka; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kal
    ADD CONSTRAINT neznka UNIQUE (name);


--
-- Name: planet neznpl; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT neznpl UNIQUE ("row");


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star shkal; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT shkal UNIQUE (mass);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet hel2p; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT hel2p FOREIGN KEY (mass) REFERENCES public.star(mass);


--
-- Name: moon help; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT help FOREIGN KEY ("row") REFERENCES public.planet("row");


--
-- Name: star kelpa; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT kelpa FOREIGN KEY (mass) REFERENCES public.galaxy(mass);


--
-- PostgreSQL database dump complete
--

