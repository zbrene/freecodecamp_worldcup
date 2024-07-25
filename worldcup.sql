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
    round character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (39, 2018, 'Final', 283, 284, 4, 2);
INSERT INTO public.games VALUES (40, 2018, 'Third Place', 285, 286, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Semi-Final', 284, 286, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Semi-Final', 283, 285, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Quarter-Final', 284, 292, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 286, 294, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 285, 296, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 283, 298, 2, 0);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 286, 300, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 294, 302, 1, 0);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 285, 304, 3, 2);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 296, 306, 2, 0);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 284, 308, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 292, 310, 2, 1);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 298, 312, 2, 1);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 283, 314, 4, 3);
INSERT INTO public.games VALUES (55, 2014, 'Final', 315, 314, 1, 0);
INSERT INTO public.games VALUES (56, 2014, 'Third Place', 317, 296, 3, 0);
INSERT INTO public.games VALUES (57, 2014, 'Semi-Final', 314, 317, 1, 0);
INSERT INTO public.games VALUES (58, 2014, 'Semi-Final', 315, 296, 7, 1);
INSERT INTO public.games VALUES (59, 2014, 'Quarter-Final', 317, 324, 1, 0);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 314, 285, 1, 0);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 296, 300, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 315, 283, 1, 0);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 296, 332, 2, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 300, 298, 2, 0);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 283, 336, 2, 0);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 315, 338, 2, 1);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 317, 306, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 324, 342, 2, 1);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 314, 302, 1, 0);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 285, 346, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (283, 'France');
INSERT INTO public.teams VALUES (284, 'Croatia');
INSERT INTO public.teams VALUES (285, 'Belgium');
INSERT INTO public.teams VALUES (286, 'England');
INSERT INTO public.teams VALUES (292, 'Russia');
INSERT INTO public.teams VALUES (294, 'Sweden');
INSERT INTO public.teams VALUES (296, 'Brazil');
INSERT INTO public.teams VALUES (298, 'Uruguay');
INSERT INTO public.teams VALUES (300, 'Colombia');
INSERT INTO public.teams VALUES (302, 'Switzerland');
INSERT INTO public.teams VALUES (304, 'Japan');
INSERT INTO public.teams VALUES (306, 'Mexico');
INSERT INTO public.teams VALUES (308, 'Denmark');
INSERT INTO public.teams VALUES (310, 'Spain');
INSERT INTO public.teams VALUES (312, 'Portugal');
INSERT INTO public.teams VALUES (314, 'Argentina');
INSERT INTO public.teams VALUES (315, 'Germany');
INSERT INTO public.teams VALUES (317, 'Netherlands');
INSERT INTO public.teams VALUES (324, 'Costa Rica');
INSERT INTO public.teams VALUES (332, 'Chile');
INSERT INTO public.teams VALUES (336, 'Nigeria');
INSERT INTO public.teams VALUES (338, 'Algeria');
INSERT INTO public.teams VALUES (342, 'Greece');
INSERT INTO public.teams VALUES (346, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 346, true);


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
-- Name: games opponent_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_foreign_key FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_foreign_key FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

