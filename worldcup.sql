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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (369, 2018, 'Final', 632, 633, 4, 2);
INSERT INTO public.games VALUES (370, 2018, 'Third Place', 634, 635, 2, 0);
INSERT INTO public.games VALUES (371, 2018, 'Semi-Final', 633, 635, 2, 1);
INSERT INTO public.games VALUES (372, 2018, 'Semi-Final', 632, 634, 1, 0);
INSERT INTO public.games VALUES (373, 2018, 'Quarter-Final', 633, 636, 3, 2);
INSERT INTO public.games VALUES (374, 2018, 'Quarter-Final', 635, 637, 2, 0);
INSERT INTO public.games VALUES (375, 2018, 'Quarter-Final', 634, 638, 2, 1);
INSERT INTO public.games VALUES (376, 2018, 'Quarter-Final', 632, 639, 2, 0);
INSERT INTO public.games VALUES (377, 2018, 'Eighth-Final', 635, 640, 2, 1);
INSERT INTO public.games VALUES (378, 2018, 'Eighth-Final', 637, 641, 1, 0);
INSERT INTO public.games VALUES (379, 2018, 'Eighth-Final', 634, 642, 3, 2);
INSERT INTO public.games VALUES (380, 2018, 'Eighth-Final', 638, 643, 2, 0);
INSERT INTO public.games VALUES (381, 2018, 'Eighth-Final', 633, 644, 2, 1);
INSERT INTO public.games VALUES (382, 2018, 'Eighth-Final', 636, 645, 2, 1);
INSERT INTO public.games VALUES (383, 2018, 'Eighth-Final', 639, 646, 2, 1);
INSERT INTO public.games VALUES (384, 2018, 'Eighth-Final', 632, 647, 4, 3);
INSERT INTO public.games VALUES (385, 2014, 'Final', 648, 647, 1, 0);
INSERT INTO public.games VALUES (386, 2014, 'Third Place', 649, 638, 3, 0);
INSERT INTO public.games VALUES (387, 2014, 'Semi-Final', 647, 649, 1, 0);
INSERT INTO public.games VALUES (388, 2014, 'Semi-Final', 648, 638, 7, 1);
INSERT INTO public.games VALUES (389, 2014, 'Quarter-Final', 649, 650, 1, 0);
INSERT INTO public.games VALUES (390, 2014, 'Quarter-Final', 647, 634, 1, 0);
INSERT INTO public.games VALUES (391, 2014, 'Quarter-Final', 638, 640, 2, 1);
INSERT INTO public.games VALUES (392, 2014, 'Quarter-Final', 648, 632, 1, 0);
INSERT INTO public.games VALUES (393, 2014, 'Eighth-Final', 638, 651, 2, 1);
INSERT INTO public.games VALUES (394, 2014, 'Eighth-Final', 640, 639, 2, 0);
INSERT INTO public.games VALUES (395, 2014, 'Eighth-Final', 632, 652, 2, 0);
INSERT INTO public.games VALUES (396, 2014, 'Eighth-Final', 648, 653, 2, 1);
INSERT INTO public.games VALUES (397, 2014, 'Eighth-Final', 649, 643, 2, 1);
INSERT INTO public.games VALUES (398, 2014, 'Eighth-Final', 650, 654, 2, 1);
INSERT INTO public.games VALUES (399, 2014, 'Eighth-Final', 647, 641, 1, 0);
INSERT INTO public.games VALUES (400, 2014, 'Eighth-Final', 634, 655, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (632, 'France');
INSERT INTO public.teams VALUES (633, 'Croatia');
INSERT INTO public.teams VALUES (634, 'Belgium');
INSERT INTO public.teams VALUES (635, 'England');
INSERT INTO public.teams VALUES (636, 'Russia');
INSERT INTO public.teams VALUES (637, 'Sweden');
INSERT INTO public.teams VALUES (638, 'Brazil');
INSERT INTO public.teams VALUES (639, 'Uruguay');
INSERT INTO public.teams VALUES (640, 'Colombia');
INSERT INTO public.teams VALUES (641, 'Switzerland');
INSERT INTO public.teams VALUES (642, 'Japan');
INSERT INTO public.teams VALUES (643, 'Mexico');
INSERT INTO public.teams VALUES (644, 'Denmark');
INSERT INTO public.teams VALUES (645, 'Spain');
INSERT INTO public.teams VALUES (646, 'Portugal');
INSERT INTO public.teams VALUES (647, 'Argentina');
INSERT INTO public.teams VALUES (648, 'Germany');
INSERT INTO public.teams VALUES (649, 'Netherlands');
INSERT INTO public.teams VALUES (650, 'Costa Rica');
INSERT INTO public.teams VALUES (651, 'Chile');
INSERT INTO public.teams VALUES (652, 'Nigeria');
INSERT INTO public.teams VALUES (653, 'Algeria');
INSERT INTO public.teams VALUES (654, 'Greece');
INSERT INTO public.teams VALUES (655, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 400, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 655, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

