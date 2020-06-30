--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'WIN1252';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: emails; Type: TABLE; Schema: public; Owner: me
--

CREATE TABLE public.emails (
    id integer,
    sender text,
    recipient text,
    subject text,
    message text,
    date text
);


ALTER TABLE public.emails OWNER TO me;

--
-- Data for Name: emails; Type: TABLE DATA; Schema: public; Owner: me
--

COPY public.emails (id, sender, recipient, subject, message, date) FROM stdin;
1	katie@galvanize.com	jane@galvanize.com	Standup meeting	Mr. and Mrs. Dursley, of number four, Privet Drive, wereproud to say that they were perfectly normal, thankyou very much.	2020-08-23T18:25:43.511Z
2	jean-marc@galvanize.com	jane@galvanize.com	Retro meeting	They were the last people youd expect to be involved in anything strange or mysterious, because they just didnt hold with such nonsense.	2020-04-23T18:25:43.511Z
3	ash@galvanize.com	jane@galvanize.com	New employee next week	Mr. Dursley was the director of a firm called Grunnings, which made drills. He was a big, beefy man with hardly any neck, although he did have a very large mustache. 	2019-01-23T18:25:43.511Z
4	mattias@galvanize.com	jane@galvanize.com	Last weeks reports	 Mrs. Dursley was thin and blonde and had nearly twice the usual amount of neck, which came in very useful as she spent so much of her time craning over garden fences, spying on the neighbors.	2020-06-23T18:25:43.511Z
5	tanner@galvanize.com	jane@galvanize.com	Holiday schedule	The Dursleys had a small son called Dudley and in their opinion there was no finer boy anywhere.	2020-03-23T18:25:43.511Z
6	brandon@galvanize.com	jane@galvanize.com	Managers meeting	The Dursleys had everything they wanted, but they also had a secret, and their greatest fear was that somebody would discover it. 	2020-02-23T18:25:43.511Z
7	jeff@galvanize.com	jane@galvanize.com	1 on 1 meeting	They didnt think they could bear it if anyone found out about the Potters.	2020-02-23T18:25:43.511Z
8	maddie@galvanize.com	jane@galvanize.com	Happy hour next Friday!	Mrs. Potter was Mrs. Dursleys sister, but they hadnt met for several years; in fact, Mrs. Dursley pretended she didnt have a sister	2019-12-23T18:25:43.511Z
9	becky@galvanize.com	jane@galvanize.com	Vacation Request	The Dursleys shuddered to think what the neighbors would say if the Potters arrived in the street.	2020-01-23T18:25:43.511Z
10	jarret@galvanize.com	jane@galvanize.com	All hands meeting	This boy was another good reason for keeping the Potters away; they didnt want Dudley mixing with a child like that.	2019-07-23T18:25:43.511Z
11	rich@galvanize.com	jane@galvanize.com	Standup meeting	The Dursleys knew that the Potters had a small son, too, but they had never even seen him.	2020-03-23T18:25:43.511Z
12	erin@galvanize.com	jane@galvanize.com	New hire orientation assistance needed	When Mr. and Mrs. Dursley woke up on the dull, gray Tuesday our story starts, there was nothing about the cloudy sky outside tosuggest that strange and mysterious things would soon be happening all over the country	2020-04-23T18:25:43.511Z
13	charlie@galvanize.com	jane@galvanize.com	Expense reports due!	 Mr. Dursley hummed as he picked out his most boring tie for work, and Mrs. Dursley gossiped away happily as she wrestled a screaming Dudley into his high chair.	2018-05-23T18:25:43.511Z
14	jacob@galvanize.com	jane@galvanize.com	Updated travel policy information	None of them noticed a large, tawny owl flutter past the window	2018-05-23T18:25:43.511Z
15	louise@galvanize.com	jane@galvanize.com	Cat videos	At half past eight, Mr. Dursley picked up his briefcase, pecked  Mrs. Dursley on the cheek, and tried to kiss Dudley good-bye but missed, because Dudley was now having a tantrum and throwing his cereal at the walls. 	2020-02-23T18:25:43.511Z
16	ash@galavnize.com	jane@galvanize.com	I need help	Little tyke, chortled Mr. Dursley as he left  the house.	2019-04-23T18:25:43.511Z
17	ash@galvanize.com	jane@galvanize.com	Blocked on React issue	He got into his car and backed out of number fours drive	2020-03-23T18:25:43.511Z
18	katie@galvanize.com	jane@galvanize.com	Happy hour this Thursday!	It was on the corner of the street that he noticed the first sign of something peculiar - a cat reading a map	2020-03-23T18:25:43.511Z
19	brandon@galvanize.com	jane@galvanize.com	Standup Notes	For a second, Mr. Dursley didnt realize what he had seen - then he jerked his head  around to look again.	2020-03-23T18:25:43.511Z
47	Jane@galvanize.com	This is a test	This is a test of the base Falcon voice system. This is only a test.	test@test.com	2020-06-30T10:42:27.894-06:00
\.


--
-- PostgreSQL database dump complete
--

