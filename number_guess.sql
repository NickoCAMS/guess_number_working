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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 24, NULL);
INSERT INTO public.games VALUES (2, 36, NULL);
INSERT INTO public.games VALUES (3, 82, NULL);
INSERT INTO public.games VALUES (4, 19, NULL);
INSERT INTO public.games VALUES (5, 14, NULL);
INSERT INTO public.games VALUES (6, 13, NULL);
INSERT INTO public.games VALUES (7, 97, NULL);
INSERT INTO public.games VALUES (8, 63, NULL);
INSERT INTO public.games VALUES (9, 152, NULL);
INSERT INTO public.games VALUES (10, 798, NULL);
INSERT INTO public.games VALUES (11, 925, NULL);
INSERT INTO public.games VALUES (12, 733, NULL);
INSERT INTO public.games VALUES (13, 243, NULL);
INSERT INTO public.games VALUES (14, 179, NULL);
INSERT INTO public.games VALUES (15, 837, NULL);
INSERT INTO public.games VALUES (16, 255, NULL);
INSERT INTO public.games VALUES (17, 136, NULL);
INSERT INTO public.games VALUES (18, 27, NULL);
INSERT INTO public.games VALUES (19, 364, NULL);
INSERT INTO public.games VALUES (20, 358, NULL);
INSERT INTO public.games VALUES (21, 771, NULL);
INSERT INTO public.games VALUES (22, 699, NULL);
INSERT INTO public.games VALUES (23, 40, NULL);
INSERT INTO public.games VALUES (24, 847, NULL);
INSERT INTO public.games VALUES (25, 367, NULL);
INSERT INTO public.games VALUES (26, 48, NULL);
INSERT INTO public.games VALUES (27, 631, NULL);
INSERT INTO public.games VALUES (28, 454, NULL);
INSERT INTO public.games VALUES (29, 16, NULL);
INSERT INTO public.games VALUES (30, 318, NULL);
INSERT INTO public.games VALUES (31, 866, NULL);
INSERT INTO public.games VALUES (32, 542, NULL);
INSERT INTO public.games VALUES (33, 63, NULL);
INSERT INTO public.games VALUES (34, 87, NULL);
INSERT INTO public.games VALUES (35, 426, NULL);
INSERT INTO public.games VALUES (36, 431, NULL);
INSERT INTO public.games VALUES (37, 499, NULL);
INSERT INTO public.games VALUES (38, 622, NULL);
INSERT INTO public.games VALUES (39, 159, NULL);
INSERT INTO public.games VALUES (40, 497, NULL);
INSERT INTO public.games VALUES (41, 542, NULL);
INSERT INTO public.games VALUES (42, 270, NULL);
INSERT INTO public.games VALUES (43, 659, NULL);
INSERT INTO public.games VALUES (44, 370, NULL);
INSERT INTO public.games VALUES (45, 321, NULL);
INSERT INTO public.games VALUES (46, 552, NULL);
INSERT INTO public.games VALUES (47, 85, NULL);
INSERT INTO public.games VALUES (48, 490, NULL);
INSERT INTO public.games VALUES (49, 468, NULL);
INSERT INTO public.games VALUES (50, 323, NULL);
INSERT INTO public.games VALUES (51, 214, NULL);
INSERT INTO public.games VALUES (52, 621, NULL);
INSERT INTO public.games VALUES (53, 460, NULL);
INSERT INTO public.games VALUES (54, 530, NULL);
INSERT INTO public.games VALUES (55, 464, NULL);
INSERT INTO public.games VALUES (56, 10, NULL);
INSERT INTO public.games VALUES (57, 654, NULL);
INSERT INTO public.games VALUES (58, 211, NULL);
INSERT INTO public.games VALUES (59, 963, NULL);
INSERT INTO public.games VALUES (60, 82, NULL);
INSERT INTO public.games VALUES (61, 658, NULL);
INSERT INTO public.games VALUES (62, 876, NULL);
INSERT INTO public.games VALUES (63, 507, NULL);
INSERT INTO public.games VALUES (64, 6, NULL);
INSERT INTO public.games VALUES (65, 971, NULL);
INSERT INTO public.games VALUES (66, 553, NULL);
INSERT INTO public.games VALUES (67, 937, NULL);
INSERT INTO public.games VALUES (68, 315, NULL);
INSERT INTO public.games VALUES (69, 55, NULL);
INSERT INTO public.games VALUES (70, 931, NULL);
INSERT INTO public.games VALUES (71, 216, 22);
INSERT INTO public.games VALUES (72, 576, 22);
INSERT INTO public.games VALUES (73, 165, 23);
INSERT INTO public.games VALUES (74, 694, 23);
INSERT INTO public.games VALUES (75, 508, 22);
INSERT INTO public.games VALUES (76, 382, 22);
INSERT INTO public.games VALUES (77, 84, 22);
INSERT INTO public.games VALUES (78, 107, 24);
INSERT INTO public.games VALUES (79, 956, 24);
INSERT INTO public.games VALUES (80, 276, 25);
INSERT INTO public.games VALUES (81, 243, 25);
INSERT INTO public.games VALUES (82, 882, 24);
INSERT INTO public.games VALUES (83, 570, 24);
INSERT INTO public.games VALUES (84, 574, 24);
INSERT INTO public.games VALUES (85, 962, 26);
INSERT INTO public.games VALUES (86, 669, 27);
INSERT INTO public.games VALUES (87, 988, 26);
INSERT INTO public.games VALUES (88, 1000, 26);
INSERT INTO public.games VALUES (89, 270, 26);
INSERT INTO public.games VALUES (90, 236, 28);
INSERT INTO public.games VALUES (91, 545, 29);
INSERT INTO public.games VALUES (92, 811, 28);
INSERT INTO public.games VALUES (93, 716, 28);
INSERT INTO public.games VALUES (94, 398, 28);
INSERT INTO public.games VALUES (95, 103, 30);
INSERT INTO public.games VALUES (96, 146, 30);
INSERT INTO public.games VALUES (97, 855, 31);
INSERT INTO public.games VALUES (98, 589, 31);
INSERT INTO public.games VALUES (99, 285, 30);
INSERT INTO public.games VALUES (100, 217, 30);
INSERT INTO public.games VALUES (101, 233, 30);
INSERT INTO public.games VALUES (102, 723, 32);
INSERT INTO public.games VALUES (103, 720, 33);
INSERT INTO public.games VALUES (104, 538, 32);
INSERT INTO public.games VALUES (105, 684, 32);
INSERT INTO public.games VALUES (106, 623, 32);
INSERT INTO public.games VALUES (107, 245, 34);
INSERT INTO public.games VALUES (108, 885, 34);
INSERT INTO public.games VALUES (109, 184, 35);
INSERT INTO public.games VALUES (110, 985, 35);
INSERT INTO public.games VALUES (111, 562, 34);
INSERT INTO public.games VALUES (112, 822, 34);
INSERT INTO public.games VALUES (113, 616, 34);
INSERT INTO public.games VALUES (114, 126, 36);
INSERT INTO public.games VALUES (115, 571, 36);
INSERT INTO public.games VALUES (116, 66, 37);
INSERT INTO public.games VALUES (117, 995, 37);
INSERT INTO public.games VALUES (118, 900, 36);
INSERT INTO public.games VALUES (119, 639, 36);
INSERT INTO public.games VALUES (120, 647, 36);
INSERT INTO public.games VALUES (121, 436, 38);
INSERT INTO public.games VALUES (122, 648, 38);
INSERT INTO public.games VALUES (123, 314, 39);
INSERT INTO public.games VALUES (124, 471, 39);
INSERT INTO public.games VALUES (125, 947, 38);
INSERT INTO public.games VALUES (126, 915, 38);
INSERT INTO public.games VALUES (127, 645, 38);
INSERT INTO public.games VALUES (128, 294, 40);
INSERT INTO public.games VALUES (129, 495, 40);
INSERT INTO public.games VALUES (130, 556, 41);
INSERT INTO public.games VALUES (131, 110, 41);
INSERT INTO public.games VALUES (132, 814, 40);
INSERT INTO public.games VALUES (133, 17, 40);
INSERT INTO public.games VALUES (134, 599, 40);
INSERT INTO public.games VALUES (135, 69, 42);
INSERT INTO public.games VALUES (136, 505, 42);
INSERT INTO public.games VALUES (137, 339, 43);
INSERT INTO public.games VALUES (138, 443, 43);
INSERT INTO public.games VALUES (139, 886, 42);
INSERT INTO public.games VALUES (140, 72, 42);
INSERT INTO public.games VALUES (141, 999, 42);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1731879460740');
INSERT INTO public.users VALUES (2, 'user_1731879460739');
INSERT INTO public.users VALUES (3, 'n');
INSERT INTO public.users VALUES (4, 'user_1731879511611');
INSERT INTO public.users VALUES (5, 'user_1731879511610');
INSERT INTO public.users VALUES (6, 'user_1731879524105');
INSERT INTO public.users VALUES (7, 'user_1731879524103');
INSERT INTO public.users VALUES (8, 'user_1731879594096');
INSERT INTO public.users VALUES (9, 'user_1731879594095');
INSERT INTO public.users VALUES (10, 'user_1731879612075');
INSERT INTO public.users VALUES (11, 'user_1731879612074');
INSERT INTO public.users VALUES (12, 'user_1731879656672');
INSERT INTO public.users VALUES (13, 'user_1731879656671');
INSERT INTO public.users VALUES (14, 'user_1731879702684');
INSERT INTO public.users VALUES (15, 'user_1731879702683');
INSERT INTO public.users VALUES (16, 'user_1731879746521');
INSERT INTO public.users VALUES (17, 'user_1731879746520');
INSERT INTO public.users VALUES (18, 'user_1731879782061');
INSERT INTO public.users VALUES (19, 'user_1731879782060');
INSERT INTO public.users VALUES (20, 'user_1731879794432');
INSERT INTO public.users VALUES (21, 'user_1731879794431');
INSERT INTO public.users VALUES (22, 'user_1731883017447');
INSERT INTO public.users VALUES (23, 'user_1731883017446');
INSERT INTO public.users VALUES (24, 'user_1731883055307');
INSERT INTO public.users VALUES (25, 'user_1731883055306');
INSERT INTO public.users VALUES (26, 'user_1731883090344');
INSERT INTO public.users VALUES (27, 'user_1731883090343');
INSERT INTO public.users VALUES (28, 'user_1731883130436');
INSERT INTO public.users VALUES (29, 'user_1731883130435');
INSERT INTO public.users VALUES (30, 'user_1731883136645');
INSERT INTO public.users VALUES (31, 'user_1731883136644');
INSERT INTO public.users VALUES (32, 'user_1731883192834');
INSERT INTO public.users VALUES (33, 'user_1731883192833');
INSERT INTO public.users VALUES (34, 'user_1731883285710');
INSERT INTO public.users VALUES (35, 'user_1731883285709');
INSERT INTO public.users VALUES (36, 'user_1731883353054');
INSERT INTO public.users VALUES (37, 'user_1731883353053');
INSERT INTO public.users VALUES (38, 'user_1731883366595');
INSERT INTO public.users VALUES (39, 'user_1731883366594');
INSERT INTO public.users VALUES (40, 'user_1731883394827');
INSERT INTO public.users VALUES (41, 'user_1731883394826');
INSERT INTO public.users VALUES (42, 'user_1731883536536');
INSERT INTO public.users VALUES (43, 'user_1731883536535');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 141, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users username_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_unique UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

