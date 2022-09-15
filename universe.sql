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
-- Name: explored; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.explored (
    explored_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.explored OWNER TO freecodecamp;

--
-- Name: explored_expored_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.explored_expored_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.explored_expored_id_seq OWNER TO freecodecamp;

--
-- Name: explored_expored_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.explored_expored_id_seq OWNED BY public.explored.explored_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years integer NOT NULL,
    neighbouring_galaxies integer,
    distance_from_earth numeric(4,1),
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    moon_age_in_millions_of_years integer NOT NULL,
    neighbouring_moons integer,
    distance_from_earth numeric(4,1),
    has_life boolean,
    description text NOT NULL,
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
    name character varying(100) NOT NULL,
    planet_age integer NOT NULL,
    neigbouring_planets integer,
    distance_from_earth numeric(4,1),
    has_life boolean,
    planet_description text NOT NULL,
    is_sperical boolean,
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
    name character varying(100) NOT NULL,
    star_age integer NOT NULL,
    neighbours integer,
    distance_from_earth numeric(4,1),
    description text NOT NULL,
    has_life boolean,
    is_sperical boolean,
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
-- Name: explored explored_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explored ALTER COLUMN explored_id SET DEFAULT nextval('public.explored_expored_id_seq'::regclass);


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
-- Data for Name: explored; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.explored VALUES (1, 'chimp112', 'We fond mars venus and mecury as a result');
INSERT INTO public.explored VALUES (3, 'gama145', 'We transported Hulk to the moon');
INSERT INTO public.explored VALUES (4, 'nano45', 'we found nano robots at the cite 421');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 5, 5, 2.4, 'A great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 10, 2, 2.5, 'It has a spectacular dark band of absorbing dust in front of the galaxys bright nucleus, giving rise to its nicknames of the Black Eye galaxy.', true, false);
INSERT INTO public.galaxy VALUES (3, 'Bodes Galaxy', 12, 3, 3.5, 'It is a spiral galaxy about 12 million light-years away in the constellation Ursa Major', true, false);
INSERT INTO public.galaxy VALUES (4, 'Cyprus Galaxy', 15, 1, 1.5, 'It is a spiral glaxy close to  Ursa Major', true, false);
INSERT INTO public.galaxy VALUES (5, 'Lily Galaxy', 12, 4, 2.7, 'It is a cloudy glaxy close to  Ursa Manor', false, false);
INSERT INTO public.galaxy VALUES (6, 'Milky way Galaxy', 10, 1, 3.3, 'It is a beutiful cloudy glaxy close to  Ursa Major', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 45, 5, 5.3, true, 'This is the moon hovering around the earth', true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 54, 5, 4.3, true, 'This is a beutiful moon', true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 54, 5, 4.3, true, 'This is a beutiful moon', true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 54, 5, 4.3, true, 'This is a beutiful moon', true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 54, 5, 4.3, true, 'This is a beutiful moon', true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 54, 5, 4.3, true, 'This is a beutiful moon', true, 6);
INSERT INTO public.moon VALUES (13, 'moon7', 54, 5, 4.3, true, 'This is a beutiful moon', true, 7);
INSERT INTO public.moon VALUES (14, 'moon8', 54, 5, 4.3, true, 'This is a beutiful moon', true, 8);
INSERT INTO public.moon VALUES (15, 'moon9', 54, 5, 4.3, true, 'This is a beutiful moon', true, 9);
INSERT INTO public.moon VALUES (16, 'moon10', 54, 5, 4.3, true, 'This is a beutiful moon', true, 10);
INSERT INTO public.moon VALUES (23, 'moon11', 54, 5, 4.3, true, 'This is a beutiful moon', true, 13);
INSERT INTO public.moon VALUES (24, 'moonE', 54, 5, 4.3, true, 'This is a beutiful moon', true, 12);
INSERT INTO public.moon VALUES (25, 'moon12', 54, 5, 4.3, true, 'This is a beutiful moon', true, 13);
INSERT INTO public.moon VALUES (26, 'moon13', 54, 5, 4.3, true, 'This is a beutiful moon', true, 12);
INSERT INTO public.moon VALUES (27, 'moon14', 54, 5, 4.3, true, 'This is a beutiful moon', true, 13);
INSERT INTO public.moon VALUES (28, 'moon15', 54, 5, 4.3, true, 'This is a beutiful moon', true, 12);
INSERT INTO public.moon VALUES (29, 'moonA', 54, 5, 4.3, true, 'This is a beutiful moon', true, 13);
INSERT INTO public.moon VALUES (30, 'moonB', 54, 5, 4.3, true, 'This is a beutiful moon', true, 12);
INSERT INTO public.moon VALUES (31, 'moonC', 54, 5, 4.3, true, 'This is a beutiful moon', true, 13);
INSERT INTO public.moon VALUES (32, 'moonD', 54, 5, 4.3, true, 'This is a beutiful moon', true, 12);
INSERT INTO public.moon VALUES (33, 'moonF', 54, 5, 4.3, true, 'This is a beutiful moon', true, 13);
INSERT INTO public.moon VALUES (34, 'moon1E', 54, 5, 4.3, true, 'This is a beutiful moon', true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 10, 10, 4.2, true, 'Beutifull planet with demanding Humans', true, 7);
INSERT INTO public.planet VALUES (2, 'Mecury', 10, 10, 4.2, true, 'Beutifull planet hotter than earth', true, 7);
INSERT INTO public.planet VALUES (3, 'Jupeter', 10, 10, 4.2, true, 'Beutifull planet with handsome dudes', true, 6);
INSERT INTO public.planet VALUES (4, 'Venus', 10, 10, 4.2, true, 'Beutifull planet with demandingBabes', true, 5);
INSERT INTO public.planet VALUES (5, 'Saturn', 5, 4, 6.2, true, 'Beutifull planet with demandingdogs', true, 4);
INSERT INTO public.planet VALUES (6, 'Uranus', 45, 2, 2.2, true, 'Beutifull planet ith sad creatures', true, 3);
INSERT INTO public.planet VALUES (7, 'Pluto', 510, 19, 4.2, true, 'Planet with brainy creatures', true, 1);
INSERT INTO public.planet VALUES (8, 'Billy', 45, 2, 2.2, true, 'Beutifull planet ith sad creatures', true, 6);
INSERT INTO public.planet VALUES (9, 'Moly', 510, 19, 4.2, true, 'Planet with brainy creatures', true, 5);
INSERT INTO public.planet VALUES (10, 'Ten', 510, 19, 4.2, true, 'Planet with brainy creatures', true, 3);
INSERT INTO public.planet VALUES (12, 'Ben', 510, 19, 4.2, true, 'Planet with brainy creatures', true, 3);
INSERT INTO public.planet VALUES (13, 'Ushrah', 510, 19, 4.2, true, 'Planet with bbrainy creatures', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 12, 1, 2.4, 'This star is found in the Andromeda Galaxy', true, false, 1);
INSERT INTO public.star VALUES (3, 'star2', 12, 1, 2.4, 'This star is found in the Black Eye  Galaxy', true, false, 2);
INSERT INTO public.star VALUES (4, 'star3', 12, 1, 2.4, 'This star is found in the Bodes Galaxy', true, false, 3);
INSERT INTO public.star VALUES (5, 'star4', 12, 1, 2.4, 'This star is found in the Cyprus Galaxy', true, false, 4);
INSERT INTO public.star VALUES (6, 'star5', 5, 1, 3.4, 'This star is found in the Lily Galaxy', true, false, 2);
INSERT INTO public.star VALUES (7, 'star6', 7, 1, 6.4, 'This star is found in the Milky Way Galaxy', true, false, 6);


--
-- Name: explored_expored_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.explored_expored_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 34, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: explored explored_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explored
    ADD CONSTRAINT explored_name_key UNIQUE (name);


--
-- Name: explored explored_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explored
    ADD CONSTRAINT explored_pkey PRIMARY KEY (explored_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

