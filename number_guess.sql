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

DROP DATABASE game;
--
-- Name: game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE game OWNER TO freecodecamp;

\connect game

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer,
    best_guesses integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1690785901126', 2, 2);
INSERT INTO public.users VALUES ('user_1690785901127', 5, 1);
INSERT INTO public.users VALUES ('Nayan', 4, 4);
INSERT INTO public.users VALUES ('Charchit', 2, 1);
INSERT INTO public.users VALUES ('Bheem', 1, 3);
INSERT INTO public.users VALUES ('Kalia', 1, 4);
INSERT INTO public.users VALUES ('Raju', 1, 3);
INSERT INTO public.users VALUES ('user_1690786135262', 2, 2);
INSERT INTO public.users VALUES ('user_1690786135263', 5, 1);
INSERT INTO public.users VALUES ('user_1690786223575', 2, 428);
INSERT INTO public.users VALUES ('user_1690786223576', 5, 25);
INSERT INTO public.users VALUES ('user_1690787355747', 2, 305);
INSERT INTO public.users VALUES ('user_1690787355748', 5, 150);
INSERT INTO public.users VALUES ('user_1690787374347', 2, 18);
INSERT INTO public.users VALUES ('user_1690787374348', 5, 96);
INSERT INTO public.users VALUES ('user_1690787661190', 2, 438);
INSERT INTO public.users VALUES ('user_1690787661191', 5, 202);


--
-- PostgreSQL database dump complete
--
