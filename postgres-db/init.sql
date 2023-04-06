--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

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
-- Name: anime_data; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.anime_data (
    "MAL_ID" integer,
    "Name" text,
    "Score" double precision,
    "Genres" text,
    "Episodes" integer,
    "Premiered" text,
    "Studios" text,
    "Members" integer,
    "Completed" integer,
    "Dropped rate" double precision
);


ALTER TABLE public.anime_data OWNER TO admin;

--
-- Name: anime_names; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.anime_names (
    "MAL_ID" integer,
    "Name" text,
    "English name" text,
    "Japanese name" text
);


ALTER TABLE public.anime_names OWNER TO admin;

--
-- Data for Name: anime_data; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.anime_data ("MAL_ID", "Name", "Score", "Genres", "Episodes", "Premiered", "Studios", "Members", "Completed", "Dropped rate") FROM stdin;
1	Cowboy Bebop	8.78	Action Adventure Comedy Drama Sci-Fi Space	26	Spring 1998	Sunrise	1251960	718161	0.03
6	Trigun	8.24	Action Sci-Fi Adventure Comedy Drama Shounen	26	Spring 1998	Madhouse	558913	343492	0.03
7	Witch Hunter Robin	7.27	Action Mystery Police Supernatural Drama Magic	26	Summer 2002	Sunrise	94683	46165	0.09
8	Bouken Ou Beet	6.98	Adventure Fantasy Shounen Supernatural	52	Fall 2004	Toei Animation	13224	7314	0.11
15	Eyeshield 21	7.95	Action Sports Comedy Shounen	145	Spring 2005	Gallop	148259	78349	0.1
16	Hachimitsu to Clover	8.06	Comedy Drama Josei Romance SliceofLife	24	Spring 2005	J.C.Staff	214499	81145	0.1
17	Hungry Heart: Wild Striker	7.59	SliceofLife Comedy Sports Shounen	52	Fall 2002	Nippon Animation	20470	13778	0.07
18	Initial D Fourth Stage	8.15	Action Cars Sports Drama Seinen	24	Spring 2004	A.C.G.T.	117929	90967	0.01
19	Monster	8.76	Drama Horror Mystery Police Psychological Seinen Thriller	74	Spring 2004	Madhouse	614100	214491	0.07
20	Naruto	7.91	Action Adventure Comedy SuperPower MartialArts Shounen	220	Fall 2002	Studio Pierrot	1830540	1462223	0.06
21	One Piece	8.52	Action Adventure Comedy SuperPower Drama Fantasy Shounen	-1	Fall 1999	Toei Animation	1352724	33	0.11
22	Tennis no Ouji-sama	7.9	Action Comedy Sports School Shounen	178	Fall 2001	Trans Arts	141832	76881	0.11
23	Ring ni Kakero 1	6.38	Action Shounen Sports	12	Fall 2004	Toei Animation	3648	1333	0.15
24	School Rumble	7.94	Comedy Romance School Shounen	26	Fall 2004	Studio Comet	275464	157789	0.07
25	Sunabouzu	7.42	Action Adventure Comedy Ecchi Sci-Fi Shounen	24	Fall 2004	Gonzo	111734	53819	0.11
26	Texhnolyze	7.76	Action Sci-Fi Psychological Drama	22	Spring 2003	Madhouse	182599	47532	0.11
27	Trinity Blood	7.32	Action Supernatural Vampire	24	Spring 2005	Gonzo	158343	87958	0.08
28	Yakitate!! Japan	7.95	Comedy Shounen	69	Fall 2004	Sunrise	80183	39992	0.08
29	Zipang	7.51	Action Military Sci-Fi Historical Drama Seinen	26	Fall 2004	Studio Deen	16652	6807	0.07
30	Neon Genesis Evangelion	8.32	Action Sci-Fi Dementia Psychological Drama Mecha	26	Fall 1995	Gainax, Tatsunoko Production	1160651	815938	0.02
33	Kenpuu Denki Berserk	8.49	Action Adventure Demons Drama Fantasy Horror Military Romance Seinen Supernatural	25	Fall 1997	OLM	432190	276588	0.03
45	Rurouni Kenshin: Meiji Kenkaku Romantan	8.31	Action Adventure Comedy Historical Romance Samurai Shounen	94	Winter 1996	Gallop, Studio Deen	386195	216154	0.06
48	.hack//Sign	6.98	Game Sci-Fi Adventure Mystery Magic Fantasy	26	Spring 2002	Bee Train	158227	91528	0.1
50	Aa! Megami-sama! (TV)	7.35	Comedy Supernatural Magic Romance Seinen	24	Winter 2005	AIC	135747	85884	0.08
52	Kidou Tenshi Angelic Layer	7.26	Sci-Fi Comedy Sports Drama Shounen	26	Spring 2001	Bones	51022	32978	0.07
53	Ai Yori Aoshi	7.14	Harem SliceofLife Comedy Drama Romance	24	Spring 2002	J.C.Staff	94793	60075	0.08
55	Arc the Lad	6.53	Action Adventure Fantasy Horror Sci-Fi	26	Spring 1999	Bee Train	14187	7032	0.1
56	Avenger	5.91	Adventure Fantasy Sci-Fi Shounen	13	Fall 2003	Bee Train, Xebec	15779	7906	0.12
57	Beck	8.31	Comedy Drama Music Shounen SliceofLife	26	Fall 2004	Madhouse	255668	133432	0.05
58	Blue Gender	7.05	Adventure Romance Mecha Military Sci-Fi Horror Space Drama	26	Fall 1999	AIC	65360	31583	0.08
59	Chobits	7.43	Sci-Fi Comedy Drama Romance Ecchi Seinen	26	Spring 2002	Madhouse	402646	272425	0.07
60	Chrno Crusade	7.66	Action Demons Historical Romance Shounen Supernatural	24	Fall 2003	Gonzo	198007	117484	0.07
61	D.N.Angel	7.2	Action Comedy Magic Romance Fantasy School Shoujo	26	Spring 2003	Xebec	167615	117045	0.08
62	D.C.: Da Capo	6.77	Harem Drama Magic Romance	26	Summer 2003	feel., Zexcs	67491	36037	0.08
63	DearS	6.62	Sci-Fi Harem Comedy Romance Ecchi Shounen	12	Summer 2004	Daume	128788	95113	0.05
64	Rozen Maiden	7.44	Action Comedy Drama Magic Seinen	12	Fall 2004	Nomad	176775	113914	0.06
65	Rozen Maiden: Träumend	7.65	Action Comedy Drama Magic Seinen	12	Fall 2005	Nomad	93768	73523	0.02
66	Azumanga Daioh	7.98	SliceofLife Comedy School	26	Spring 2002	J.C.Staff	262980	143431	0.07
67	Basilisk: Kouga Ninpou Chou	7.58	Action Adventure Historical Supernatural Romance Samurai Fantasy	24	Spring 2005	Gonzo	156661	82153	0.07
68	Black Cat (TV)	7.38	Sci-Fi Adventure Comedy SuperPower Shounen	23	Fall 2005	Gonzo	231668	142921	0.06
69	Cluster Edge	6.35	Action Fantasy Military Sci-Fi	25	Fall 2005	Sunrise	9299	3068	0.18
71	Full Metal Panic!	7.65	Action Military Sci-Fi Comedy Mecha	24	Winter 2002	Gonzo	411230	264665	0.04
72	Full Metal Panic? Fumoffu	8.07	Action Comedy School	12	Summer 2003	Kyoto Animation	254465	204041	0.02
73	Full Metal Panic! The Second Raid	7.96	Action Military Mecha	13	Summer 2005	Kyoto Animation	227927	177524	0.01
74	Gakuen Alice	7.65	Comedy School Shoujo SuperPower	26	Fall 2004	Group TAC	81446	57369	0.04
75	Soukyuu no Fafner: Dead Aggressor	7.3	Action Drama Mecha Military Sci-Fi	25	Summer 2004	Xebec	40602	16417	0.09
76	Mahou Shoujo Lyrical Nanoha	7.42	Action Comedy Drama Magic SuperPower	13	Fall 2004	Seven Arcs	88890	47731	0.05
77	Mahou Shoujo Lyrical Nanoha A's	7.99	Action Comedy Drama Magic SuperPower	13	Fall 2005	Seven Arcs	56981	40165	0.02
79	Shuffle!	7.09	Harem Comedy Drama Magic Romance Ecchi Fantasy School Seinen	24	Summer 2005	Asread	240751	151944	0.07
80	Mobile Suit Gundam	7.78	Action Military Sci-Fi Space Mecha	43	Spring 1979	Sunrise	97216	52669	0.04
85	Mobile Suit Zeta Gundam	7.92	Military Sci-Fi Space Drama Romance Mecha	50	Spring 1985	Sunrise	53822	32798	0.03
86	Mobile Suit Gundam ZZ	6.66	Space Comedy Mecha Military Drama Sci-Fi	47	Spring 1986	Sunrise	30758	18408	0.04
89	Mobile Suit Victory Gundam	6.76	Drama Mecha Military Sci-Fi Space	51	Spring 1993	Sunrise, Studio Deen	20794	10068	0.05
90	Mobile Suit Gundam Wing	7.72	Action Military Sci-Fi Space Drama Mecha	49	Spring 1995	Sunrise	132208	95155	0.04
92	After War Gundam X	7.32	Sci-Fi Adventure Space Drama Mecha	39	Spring 1996	Sunrise	28862	15987	0.05
93	Mobile Suit Gundam SEED	7.79	Action Drama Mecha Military Romance Sci-Fi Space	50	Fall 2002	Sunrise	140346	101920	0.04
94	Mobile Suit Gundam SEED Destiny	7.22	Action Drama Mecha Military Romance Sci-Fi Space	50	Fall 2004	Sunrise	90208	70845	0.04
95	Turn A Gundam	7.7	Action Military Sci-Fi Adventure Space Drama Romance Mecha	50	Spring 1999	Sunrise, Nakamura Production	35670	14651	0.07
96	Mobile Fighter G Gundam	7.56	Adventure Comedy Drama MartialArts Mecha Romance Sci-Fi Space Sports	49	Spring 1994	Sunrise	55463	38653	0.04
97	Last Exile	7.82	Action Sci-Fi Adventure	26	Spring 2003	Gonzo	149528	77235	0.05
98	Mai-HiME	7.46	Action Comedy Drama Fantasy Magic Mecha Romance School ShoujoAi	26	Fall 2004	Sunrise	101495	60321	0.06
99	Mai-Otome	7.31	Comedy Drama Fantasy Magic	26	Fall 2005	Sunrise	46018	31335	0.05
100	Shin Shirayuki-hime Densetsu Prétear	7.2	Comedy Drama Fantasy Magic Romance Shoujo SuperPower	13	Spring 2001	Hal Film Maker	53508	33827	0.05
101	Air	7.32	SliceofLife Supernatural Drama Romance	12	Winter 2005	Kyoto Animation	259381	170036	0.05
102	Aishiteruze Baby★★	7.48	Comedy Drama Romance Shoujo	26	Spring 2004	TMS Entertainment	89533	59770	0.07
103	Akazukin Chacha	7.39	Adventure Comedy Fantasy Magic Romance Shoujo	74	Winter 1994	Gallop	12006	5140	0.13
104	Ayashi no Ceres	7.23	Adventure Comedy Horror Psychological Supernatural Drama Romance Shoujo	24	Spring 2000	Studio Pierrot	53189	31162	0.09
105	Boys Be...	6.46	SliceofLife Comedy Romance Shounen	13	Spring 2000	Hal Film Maker	20032	10371	0.1
106	Hana yori Dango	7.7	Drama Romance School Shoujo	51	Fall 1996	Toei Animation	48623	25257	0.09
107	Ou Dorobou Jing	7.23	Adventure Comedy Fantasy Sci-Fi Shounen	13	Spring 2002	Studio Deen	32988	16532	0.08
109	Bakuretsu Tenshi	6.81	Adventure Comedy Mecha Sci-Fi	24	Spring 2004	Gonzo	62106	34321	0.1
110	Chuuka Ichiban!	7.63	Action Comedy Drama Shounen	52	Spring 1997	Nippon Animation	15608	8203	0.08
111	Corrector Yui	6.83	Sci-Fi Adventure Comedy Magic	52	Spring 1999	Nippon Animation	12222	6825	0.11
112	Chou Henshin Cosprayers	4.95	Action Ecchi Adventure Fantasy Magic Comedy SuperPower Sci-Fi	8	Winter 2004	Imagin, Studio Live	7392	3567	0.12
113	Uchuu no Stellvia	7.38	Action Mecha Romance Sci-Fi Space	26	Spring 2003	Xebec	20924	10722	0.07
114	Sakigake!! Cromartie Koukou	7.93	Comedy School Shounen	26	Fall 2003	Production I.G	112001	49634	0.07
115	El Hazard: The Alternative World	6.83	Adventure Comedy Fantasy	13	Winter 1998	AIC	9684	6251	0.05
116	El Hazard: The Wanderers	6.97	Adventure Comedy Romance Fantasy	26	Fall 1995	AIC	14603	8190	0.07
119	Final Approach	6.56	Comedy Drama Romance SliceofLife	13	Fall 2004	Zexcs	31774	21798	0.04
120	Fruits Basket	7.69	SliceofLife Comedy Supernatural Drama Romance Shoujo	26	Summer 2001	Studio Deen	420919	297921	0.05
121	Fullmetal Alchemist	8.17	Action Adventure Comedy Drama Fantasy Magic Military Shounen	51	Fall 2003	Bones	1151621	880215	0.04
122	Full Moon wo Sagashite	7.96	Music Comedy Supernatural Drama Romance Shoujo	52	Spring 2002	Studio Deen	90884	51760	0.08
123	Fushigi Yuugi	7.64	Adventure Fantasy Magic MartialArts Comedy Romance Historical Drama Shoujo	52	Spring 1995	Studio Pierrot	96861	53674	0.08
125	Futakoi	6.49	Comedy Romance School	13	Fall 2004	Telecom Animation Film	31358	19836	0.06
126	Futakoi Alternative	6.91	Comedy Drama Romance	13	Spring 2005	ufotable, feel., Studio Flag	28297	13965	0.09
127	Gate Keepers	6.96	Action Sci-Fi Comedy Fantasy Mecha Shounen	24	Spring 2000	Gonzo	19351	11013	0.09
129	Gensoumaden Saiyuuki	7.59	Action Adventure Comedy Demons Drama Shounen Supernatural	50	Spring 2000	Studio Pierrot	46228	22100	0.1
130	Saiyuuki Reload	7.41	Action Adventure Comedy Demons Drama Josei Supernatural	25	Fall 2003	Studio Pierrot	28277	15616	0.06
131	Saiyuuki Reload Gunlock	7.42	Action Adventure Comedy Demons Drama Josei Supernatural	26	Spring 2004	Studio Pierrot	19393	10446	0.04
132	GetBackers	7.61	Action Comedy Drama Mystery Shounen SuperPower Supernatural	49	Fall 2002	Studio Deen	105139	55921	0.1
133	Green Green	6.21	Comedy Ecchi Romance School SliceofLife	12	Summer 2003	Studio Matrix	106208	79017	0.06
134	Gunslinger Girl	7.42	Action Psychological Military Drama Sci-Fi	13	Fall 2003	Madhouse	161010	82948	0.08
135	Hikaru no Go	8.11	Comedy Game Shounen Supernatural	75	Fall 2001	Studio Pierrot	111164	62705	0.08
136	Hunter x Hunter	8.42	Action Adventure SuperPower Fantasy Shounen	62	Fall 1999	Nippon Animation	416227	260968	0.05
141	Jinki:Extend	6.14	Mecha Sci-Fi	12	Winter 2005	feel.	9900	4784	0.11
142	Kamikaze Kaitou Jeanne	7.45	Adventure Comedy Demons Drama Fantasy Magic Mystery Romance Shoujo	44	Winter 1999	Toei Animation	46140	32304	0.05
143	Kannazuki no Miko	6.87	Supernatural Drama Magic Romance Mecha Shounen ShoujoAi	12	Fall 2004	TNK	60077	33411	0.07
144	Kanon	7.11	Drama Romance SliceofLife Supernatural	13	Winter 2002	Toei Animation	55784	32662	0.07
145	Kareshi Kanojo no Jijou	7.61	Comedy Drama Romance School Shoujo SliceofLife	26	Fall 1998	Gainax, J.C.Staff	170539	75368	0.08
146	Kono Minikuku mo Utsukushii Sekai	6.76	Sci-Fi Comedy Drama Magic Romance Ecchi	12	Spring 2004	Gainax, Shaft	54222	33816	0.06
147	Kimi ga Nozomu Eien	7.24	Drama Romance SliceofLife	14	Fall 2003	Studio Fantasia	123752	75846	0.05
148	Kita e.: Diamond Dust Drops	6.62	Drama Romance SliceofLife	12	Winter 2004	Studio Deen	7823	2781	0.11
149	Loveless	6.86	Action Mystery Supernatural Drama Romance Fantasy Josei ShounenAi	12	Spring 2005	J.C.Staff	121063	81173	0.09
150	Blood+	7.66	Action Military Mystery Horror Supernatural Drama Vampire	50	Fall 2005	Production I.G	317767	163002	0.09
152	Solty Rei	7.28	Action Sci-Fi SuperPower	24	Fall 2005	Gonzo	25666	13419	0.08
153	Juuni Kokuki	8.06	Action Adventure Fantasy Magic Supernatural	45	Spring 2002	Studio Pierrot	113627	41705	0.08
154	Shaman King	7.78	Action Adventure Comedy SuperPower Supernatural Shounen	64	Summer 2001	Xebec	294021	208822	0.05
156	X	7.43	Action SuperPower Drama Magic Romance Fantasy Shoujo	24	Fall 2001	Madhouse	69684	39454	0.06
157	Mahou Sensei Negima!	6.98	Comedy Ecchi Fantasy Harem Magic Romance School Shounen SuperPower Supernatural	26	Winter 2005	Xebec	121120	74264	0.08
158	Maria-sama ga Miteru	7.34	SliceofLife Drama Romance Shoujo ShoujoAi	13	Winter 2004	Studio Deen	53511	22274	0.09
159	Boukyaku no Senritsu	6.34	Adventure Fantasy Horror Mecha Psychological Sci-Fi Shounen Space Supernatural	24	Spring 2004	Gainax, J.C.Staff	16632	6788	0.13
160	Ima, Soko ni Iru Boku	7.66	Adventure Drama Fantasy Military Sci-Fi	13	Fall 1999	AIC	108100	39741	0.05
161	Peace Maker Kurogane	7.33	Action Comedy Historical Samurai Shounen	24	Fall 2003	Gonzo	50151	26653	0.06
162	Pita Ten	6.94	Comedy Fantasy Kids Romance School Shounen	26	Spring 2002	Madhouse	20422	11980	0.1
163	Power Stone	6.48	Adventure Comedy Fantasy Historical Shounen	26	Spring 1999	Studio Pierrot	6378	4024	0.09
165	RahXephon	7.42	Action Drama Mecha Music Mystery Psychological Romance Sci-Fi	26	Winter 2002	Bones	100343	46207	0.07
166	Samurai 7	7.48	Historical Mecha Samurai Sci-Fi	26	Summer 2004	Gonzo	110124	67372	0.06
167	Scrapped Princess	7.41	Sci-Fi Adventure Comedy Drama Fantasy Mecha Shounen	24	Spring 2003	Bones	81917	42524	0.06
168	s.CRY.ed	7.38	Action Sci-Fi Adventure SuperPower Drama	26	Summer 2001	Sunrise	72311	44099	0.05
169	Shingetsutan Tsukihime	6.91	Action Horror Mystery Romance SuperPower Supernatural Vampire	12	Fall 2003	J.C.Staff	135721	77659	0.05
170	Slam Dunk	8.53	Comedy Drama School Shounen Sports	101	Fall 1993	Toei Animation	201203	108713	0.05
171	Strange Dawn	6.35	Adventure Drama Fantasy	13	Summer 2000	Hal Film Maker	4112	1487	0.1
173	Tactics	7.23	Mystery Comedy Historical Demons Supernatural Drama Shounen	25	Fall 2004	Studio Deen	36569	15626	0.1
174	Tenjou Tenge	6.93	Action Ecchi MartialArts Comedy SuperPower School Shounen	24	Spring 2004	Madhouse	158482	100783	0.07
175	Tokyo Underground	6.63	Action Adventure Romance Sci-Fi Shounen SuperPower	26	Spring 2002	Studio Pierrot	25243	13386	0.1
177	Tsubasa Chronicle	7.55	Action Adventure Fantasy Magic Romance Supernatural Shounen	26	Spring 2005	Bee Train	195978	106909	0.09
178	Ultra Maniac	7.18	Comedy Magic Romance School Shoujo	26	Spring 2003	Production Reed	27718	15384	0.08
180	Vandread	7.21	Action Ecchi Mecha Sci-Fi Shounen Space	13	Fall 2000	Gonzo	73554	53218	0.04
181	Vandread: The Second Stage	7.42	Action Ecchi Mecha Sci-Fi Shounen Space	13	Fall 2001	Gonzo	47649	40117	0.01
182	Tenkuu no Escaflowne	7.7	Adventure Psychological Romance Fantasy Mecha	26	Spring 1996	Sunrise	127239	70674	0.05
183	Whistle!	7.39	School Shounen Sports	39	Spring 2002	Studio Comet	12063	7300	0.07
184	Xenosaga The Animation	6.37	Action Mecha Sci-Fi Shounen Space	12	Winter 2005	Toei Animation	17824	9556	0.1
185	Initial D First Stage	8.29	Action Cars Drama Seinen Sports	26	Spring 1998	Gallop, Studio Comet	229315	148516	0.03
186	Initial D Second Stage	8.12	Action Cars Drama Seinen Sports	13	Fall 1999	Pastel	134642	114742	0.01
189	Love Hina	7.14	Comedy Ecchi Harem Romance Shounen SliceofLife	24	Spring 2000	Xebec	225891	154064	0.06
193	Maburaho	6.8	Comedy Drama Ecchi Harem Magic Romance School	24	Fall 2003	J.C.Staff	85634	58233	0.06
195	Onegai☆Teacher	7.17	Sci-Fi Comedy Drama Romance School	12	Winter 2002	Daume	147889	109656	0.03
196	Onegai☆Twins	6.88	Comedy Drama Harem School Sci-Fi	12	Summer 2003	Daume	77733	60488	0.03
197	Rizelmine	6.55	Sci-Fi Comedy Romance Ecchi School	24	Spring 2002	Madhouse, Imagin	21968	12205	0.1
198	Speed Grapher	7.35	Action Mystery SuperPower	24	Spring 2005	Gonzo	95801	41984	0.09
200	Tenshi na Konamaiki	7.48	Comedy Magic Romance Shounen	50	Spring 2002	TMS Entertainment	22832	9671	0.11
202	Wolf's Rain	7.82	Action Adventure Drama Fantasy Mystery Sci-Fi	26	Winter 2003	Bones	271685	135944	0.07
204	Yumeria	6.11	Action Comedy Ecchi Harem SuperPower	12	Winter 2004	Studio Deen	24902	15177	0.09
205	Samurai Champloo	8.5	Action Adventure Comedy Historical Samurai Shounen	26	Spring 2004	Manglobe	892196	551621	0.03
206	Lodoss-tou Senki: Eiyuu Kishi Den	7.16	Action Adventure Drama Magic Romance Fantasy	27	Spring 1998	AIC	25344	11810	0.07
209	R.O.D: The TV	7.55	Action Sci-Fi Adventure Comedy SuperPower Drama	26	Fall 2003	J.C.Staff	61604	32941	0.06
210	Ranma ½	7.76	SliceofLife Comedy MartialArts Fantasy Shounen	161	Spring 1989	Studio Deen	194975	97406	0.11
218	Kidou Senkan Nadesico	7.52	Action Comedy Mecha Military Parody Romance Sci-Fi Shounen Space	26	Fall 1996	Xebec	43756	20469	0.07
222	Mezzo DSA	6.68	Action Adventure Comedy Mystery Sci-Fi	13	Winter 2004	Arms	17246	9251	0.08
223	Dragon Ball	8	Adventure Comedy Fantasy MartialArts Shounen SuperPower	153	Winter 1986	Toei Animation	735546	600337	0.03
225	Dragon Ball GT	6.48	Action Sci-Fi Adventure Comedy SuperPower Magic Fantasy Shounen	64	Winter 1996	Toei Animation	472177	408494	0.05
226	Elfen Lied	7.56	Action Horror Psychological Supernatural Drama Romance Seinen	13	Summer 2004	Arms	1187921	885356	0.04
228	Jigoku Shoujo	7.65	Mystery Horror Psychological Supernatural	26	Fall 2005	Studio Deen	286869	128781	0.1
229	Ninin ga Shinobuden	6.92	Comedy Parody MartialArts	12	Summer 2004	ufotable	30291	17164	0.09
230	Air Master	7.02	Action Comedy MartialArts Seinen	27	Spring 2003	Toei Animation	32762	17231	0.13
231	Asagiri no Miko	6.18	Action Comedy Supernatural Fantasy Seinen	26	Summer 2002	Chaos Project, GANSIS	6599	2727	0.13
232	Cardcaptor Sakura	8.16	Adventure Comedy Drama Magic Romance Fantasy School Shoujo	70	Spring 1998	Madhouse	338021	214053	0.05
233	Daa! Daa! Daa!	7.65	Comedy Sci-Fi Shoujo	78	Spring 2000	J.C.Staff	20155	10846	0.1
234	Dan Doh!!	6.69	Adventure Sports Shounen	26	Spring 2004	Tokyo Kids	3514	1873	0.12
235	Detective Conan	8.16	Adventure Mystery Comedy Police Shounen	-1	Winter 1996	TMS Entertainment	252940	9	0.17
236	E's Otherwise	6.64	Adventure Comedy Drama Military Sci-Fi Shounen Supernatural	26	Spring 2003	Studio Pierrot	14745	8175	0.1
237	Koukyoushihen Eureka Seven	8.09	Adventure Drama Mecha Romance Sci-Fi	50	Spring 2005	Bones	379048	190807	0.07
238	Rekka no Honoo	7.36	Action Adventure MartialArts Shounen SuperPower	42	Summer 1997	Studio Pierrot	54580	29742	0.08
239	Gankutsuou	8.17	Drama Mystery Sci-Fi Supernatural Thriller	24	Fall 2004	Gonzo	193810	68806	0.07
240	Genshiken	7.66	SliceofLife Comedy Parody	12	Fall 2004	Palm Studio	150618	78639	0.05
241	Girls Bravo: First Season	6.45	Harem Comedy Romance Ecchi Fantasy School Shounen	11	Summer 2004	AIC Spirits	123337	82265	0.07
242	Gokusen	7.42	SliceofLife Comedy Drama School Josei	13	Winter 2004	Madhouse	34951	22258	0.04
243	Gravitation	7.02	Comedy Music Romance Shoujo ShounenAi	13	Fall 2000	Studio Deen	100585	74479	0.06
244	Agatha Christie no Meitantei Poirot to Marple	6.88	Historical Mystery	39	Summer 2004	OLM	6279	1983	0.17
245	Great Teacher Onizuka	8.7	SliceofLife Comedy Drama School Shounen	43	Summer 1999	Studio Pierrot	589324	334925	0.04
246	Groove Adventure Rave	7.27	Adventure Comedy Fantasy Romance Shounen	51	Fall 2001	Studio Deen	84354	40997	0.12
247	Harukanaru Toki no Naka de: Hachiyou Shou	7.05	Fantasy Magic Supernatural Demons Historical Shoujo	26	Fall 2004	Yumeta Company	20801	8301	0.1
248	Ichigo 100%	6.68	Comedy Ecchi Harem Romance Shounen	12	Spring 2005	Madhouse	96555	63592	0.06
249	InuYasha	7.85	Action Adventure Comedy Historical Demons Supernatural Magic Romance Fantasy Shounen	167	Fall 2000	Sunrise	588434	317986	0.1
250	Konjiki no Gash Bell!!	7.55	Adventure Comedy Demons Supernatural Magic Shounen	150	Spring 2003	Toei Animation	97615	49331	0.14
251	Kyou kara Maou!	7.7	Adventure Comedy Demons Fantasy Shoujo	78	Spring 2004	Studio Deen	91225	37433	0.13
252	Madlax	7.07	Military Mystery Psychological Supernatural Drama Magic Shounen	26	Spring 2004	Bee Train	35303	14233	0.1
253	Jungle wa Itsumo Hare nochi Guu	7.84	SliceofLife Comedy School	26	Spring 2001	Shin-Ei Animation	29653	14766	0.09
257	Ikkitousen	6.45	Ecchi SuperPower MartialArts School	13	Summer 2003	J.C.Staff	131435	78151	0.09
260	Happy☆Lesson (TV)	6.67	Comedy Drama Harem Romance SliceofLife	13	Spring 2002	Studio Hibari	23699	14637	0.07
261	Happy☆Lesson: Advance	6.84	Comedy Harem Romance SliceofLife	13	Summer 2003	Studio Hibari	13015	8507	0.03
263	Hajime no Ippo	8.75	Comedy Sports Drama Shounen	75	Fall 2000	Madhouse	383603	221671	0.03
266	Gunparade March: Arata Naru Kougunka	6.8	Drama Mecha Military Romance Sci-Fi Shounen SliceofLife	12	Winter 2003	J.C.Staff	14072	7330	0.06
267	Gungrave	7.87	Action Drama Sci-Fi Seinen SuperPower	26	Fall 2003	Madhouse	154185	72321	0.06
269	Bleach	7.8	Action Adventure Comedy SuperPower Supernatural Shounen	366	Fall 2004	Studio Pierrot	1286382	638922	0.15
270	Hellsing	7.5	Action Horror Supernatural Vampire Seinen	13	Fall 2001	Gonzo	549632	378129	0.04
271	Gad Guard	6.7	Sci-Fi Adventure Mecha Shounen	26	Spring 2003	Gonzo	11943	5138	0.12
272	Noir	7.31	Action Mystery Drama	26	Spring 2001	Bee Train	94112	40796	0.1
273	Mahoutsukai ni Taisetsu na Koto	6.75	SliceofLife Drama Magic Shounen	12	Winter 2003	J.C.Staff	22151	7762	0.09
274	Kiddy Grade	7.22	Action Sci-Fi SuperPower Ecchi Mecha	24	Fall 2002	Gonzo	40312	22208	0.09
275	Love♥Love?	5.91	Ecchi Comedy Harem Romance	9	Spring 2004	Imagin, Studio Live	19439	11763	0.06
276	Mahoromatic: Automatic Maiden	7.18	Comedy Ecchi Military Romance Sci-Fi	12	Fall 2001	Gainax, Shaft	53422	30964	0.05
277	Mahoromatic: Motto Utsukushii Mono	7.17	Military Sci-Fi Comedy Drama Romance Ecchi	14	Fall 2002	Gainax, Shaft	28695	20303	0.03
278	Viewtiful Joe	6.75	Action Sci-Fi Comedy Shounen	51	Fall 2004	Group TAC	9492	5169	0.16
279	Kyougoku Natsuhiko: Kousetsu Hyaku Monogatari	7.15	Fantasy Historical Horror Mystery Psychological Supernatural	13	Fall 2003	TMS Entertainment	30547	9714	0.08
280	Animal Yokochou	6.83	Adventure Comedy Fantasy Shoujo	51	Fall 2005	Gallop	2213	547	0.27
282	Angel Heart	7.3	Action Mystery Drama Romance Seinen	50	Fall 2005	TMS Entertainment	14584	5102	0.14
283	Akage no Anne	7.7	SliceofLife Historical Drama	50	Winter 1979	Nippon Animation	22024	8181	0.07
284	Area 88 (TV)	7.03	Action Drama Military Romance Shounen	12	Winter 2004	Group TAC	11646	5825	0.07
285	Argento Soma	6.8	Action Adventure Drama Mecha Military Sci-Fi	25	Fall 2000	Sunrise	21754	7082	0.12
286	B'T X	7.05	Adventure Mecha Sci-Fi Shounen	25	Spring 1996	TMS Entertainment	9512	5719	0.07
287	Grappler Baki (TV)	7.44	Action Sports MartialArts Shounen	24	Winter 2001	Group TAC	74715	50535	0.04
288	Bakuten Shoot Beyblade	6.73	Action Sci-Fi Adventure Comedy Sports Shounen	51	Winter 2001	Madhouse	87412	74476	0.05
289	Comic Party	6.59	Comedy Drama	13	Spring 2001	OLM	16900	9238	0.09
290	Seikai no Monshou	7.69	Action Military Sci-Fi Space Romance	13	Winter 1999	Sunrise	42853	20068	0.04
291	D.C.S.S: Da Capo Second Season	7.01	Comedy Harem Romance Supernatural Drama	26	Summer 2005	feel.	30295	19784	0.04
292	Dear Boys	6.85	Drama Shounen Sports	26	Spring 2003	A.C.G.T.	18906	11116	0.1
293	Di Gi Charat	6.73	Comedy Fantasy Sci-Fi	16	Fall 1999	Madhouse	17527	10719	0.09
294	Divergence Eve	5.93	Adventure Comedy Drama Mecha Military Sci-Fi Space	13	Summer 2003	Radix	10680	4668	0.13
295	Divergence Eve 2: Misaki Chronicles	6.3	Adventure Drama Mecha Military Sci-Fi Space	13	Winter 2004	Radix	6386	3124	0.08
296	Dragon Drive	6.73	Action Sci-Fi Adventure Comedy Fantasy School Shounen	38	Summer 2002	Madhouse	20176	10560	0.12
297	Grenadier: Hohoemi no Senshi	6.72	Action Ecchi Adventure Comedy Shounen	12	Fall 2004	Group TAC	49526	30372	0.07
298	.hack//Tasogare no Udewa Densetsu	6.6	Adventure Comedy Fantasy Game Sci-Fi Shounen	12	Winter 2003	Bee Train	60523	43372	0.05
301	Cinderella Boy	6.32	Action Adventure Mystery Comedy Seinen	13	Summer 2003	Magic Bus	5726	2893	0.11
302	Mirai Shounen Conan	8.09	Adventure Drama Sci-Fi	26	Spring 1978	Nippon Animation	35832	15262	0.04
303	Aa! Megami-sama!: Chichaitte Koto wa Benri da ne	6.92	Comedy Magic Supernatural	48	Spring 1998	OLM	20009	12880	0.08
306	Abenobashi Mahou☆Shoutengai	7.26	Comedy Parody Ecchi Fantasy	13	Spring 2002	Gainax, Madhouse	72414	36280	0.07
307	Kerokko Demetan	6.01	Kids Fantasy Comedy	39	Winter 1973	Tatsunoko Production	965	534	0.18
308	Zettai Shounen	6.94	Sci-Fi Mystery Drama Fantasy Shounen	26	Spring 2005	Ajia-Do	16887	3875	0.14
309	Akahori Gedou Hour Rabuge	6.16	Comedy Magic Parody	13	Summer 2005	Radix	4838	1613	0.14
310	Chiisana Obake: Acchi, Kocchi, Socchi	5.98	Comedy Supernatural	50	Spring 1991	Studio Pierrot	1582	835	0.15
311	Ace wo Nerae!	7.02	Sports Drama Romance School Shoujo	26	Fall 1973	Madhouse, Tokyo Movie Shinsha	9056	2744	0.1
318	Hand Maid May	6.73	Comedy Ecchi Harem Romance Sci-Fi	10	Summer 2000	TNK, Production Reed	25549	16773	0.05
321	Najica Dengeki Sakusen	6	Action Ecchi Comedy Sci-Fi	12	Fall 2001	Studio Fantasia, Amber Film Works	12788	7280	0.1
322	Paradise Kiss	7.83	Comedy Drama Josei Romance SliceofLife	12	Fall 2005	Madhouse	150951	90827	0.04
323	Mousou Dairinin	7.68	Mystery Dementia Police Psychological Supernatural Drama Thriller	13	Winter 2004	Madhouse	288459	136786	0.05
324	Kidou Keisatsu Patlabor: On Television	7.69	Comedy Mecha Police Sci-Fi	47	Fall 1989	Sunrise	28592	9119	0.07
325	Peach Girl	7	SliceofLife Drama Romance School Shoujo	25	Winter 2005	Studio Comet	79223	52978	0.09
326	Petshop of Horrors	7.27	Horror Josei Mystery Supernatural	4	Winter 1999	Madhouse	51510	33334	0.02
327	Puchi Pri*Yucie	7.42	Comedy Magic Fantasy Shoujo	26	Fall 2002	Gainax	12118	6683	0.07
328	Piano (TV)	6.02	Music SliceofLife Drama Romance Shoujo	10	Fall 2002	OLM	7678	3396	0.14
329	Planetes	8.31	Drama Romance Sci-Fi Seinen Space	26	Fall 2003	Sunrise	195630	70506	0.06
330	Midori no Hibi	7.28	Comedy Drama Romance Ecchi Shounen	13	Spring 2004	Studio Pierrot	136704	97410	0.04
331	Mahoujin Guruguru	7.61	Adventure Comedy Magic Fantasy Shounen	45	Fall 1994	Nippon Animation	8821	3374	0.11
332	Dokidoki♡Densetsu: Mahoujin Guruguru	7.19	Adventure Comedy Magic Fantasy Shounen	38	Spring 2000	Nippon Animation	3287	1563	0.09
333	Mama wa Shougaku 4 Nensei	7.21	Comedy Drama Sci-Fi	51	Winter 1992	Sunrise	4232	2071	0.08
334	Marmalade Boy	7.49	Comedy Drama Romance Shoujo	76	Spring 1994	Toei Animation	42135	20651	0.1
335	Matantei Loki Ragnarok	7.29	Comedy Magic Mystery Shounen Supernatural	26	Spring 2003	Studio Deen	33954	18599	0.08
336	Ginyuu Mokushiroku Meine Liebe	6.46	Fantasy Shoujo	13	Fall 2004	Bee Train	11611	4246	0.15
337	Psychic Academy	6.24	Comedy Romance Supernatural	24	Spring 2002	E&G Films	9977	5925	0.07
338	Versailles no Bara	8.33	Military Historical Drama Romance Shoujo	40	Fall 1979	Tokyo Movie Shinsha	68422	25057	0.07
339	Serial Experiments Lain	8.03	Dementia Drama Mystery Psychological Sci-Fi Supernatural	13	Summer 1998	Triangle Staff	480696	218721	0.05
340	Mutsu Enmei Ryuu Gaiden: Shura no Toki	7.59	Action Historical MartialArts Samurai Shounen	26	Spring 2004	Studio Comet	20829	11039	0.06
341	Spiral: Suiri no Kizuna	7.25	Drama Mystery Shounen	25	Fall 2002	J.C.Staff	46893	25819	0.07
342	Starship Operators	7	Drama Military Sci-Fi Space	13	Winter 2005	J.C.Staff	13490	5725	0.09
343	Tsukuyomi: Moon Phase	7	Comedy Romance Vampire Fantasy Seinen	25	Fall 2004	Shaft	65203	31849	0.11
344	Futatsu no Spica	7.37	Sci-Fi Supernatural Drama School	20	Fall 2003	Group TAC	8664	4077	0.08
345	Eikoku Koi Monogatari Emma	7.67	SliceofLife Historical Drama Romance Seinen	12	Spring 2005	Studio Pierrot	43246	17473	0.06
346	W: Wish	6.19	Drama Harem Romance School SliceofLife	13	Fall 2004	Trinet Entertainment, Picture Magic	13650	6726	0.08
347	Wild Arms: Twilight Venom	6.66	Action Sci-Fi Adventure Magic Vampire Fantasy	22	Fall 1999	Bee Train	6728	3355	0.1
348	Binzume Yousei	6.45	Comedy Fantasy Magic SliceofLife	13	Fall 2003	Xebec	16433	8775	0.12
349	Magical Canan	6.19	Supernatural Drama Magic Fantasy	13	Winter 2005	AIC ASTA	4439	1668	0.1
350	Ojamajo Doremi	7.21	Comedy Magic	51	Winter 1999	Toei Animation	39689	24758	0.07
351	Ojamajo Doremi Sharp	7.34	Comedy Magic Shoujo	49	Winter 2000	Toei Animation	15723	11846	0.03
352	Motto! Ojamajo Doremi	7.34	Magic Fantasy Comedy Shoujo	50	Winter 2001	Toei Animation	15987	11423	0.05
353	Ojamajo Doremi Dokkaan!	7.59	Comedy Magic Shoujo	51	Winter 2002	Toei Animation	12205	8257	0.03
354	UG☆Ultimate Girls	5.63	Comedy Ecchi Magic Sci-Fi	12	Winter 2005	Studio Matrix	8125	3865	0.13
355	Shakugan no Shana	7.51	Action Drama Fantasy Romance School Supernatural	24	Fall 2005	J.C.Staff	462389	288718	0.06
356	Fate/stay night	7.34	Action Supernatural Magic Romance Fantasy	24	Winter 2006	Studio Deen	730980	510563	0.04
360	Himiko-den	6.24	Adventure Supernatural Drama Fantasy	12	Winter 1999	Group TAC	5119	2224	0.1
364	Gallery Fake	7.47	Mystery Seinen	37	Winter 2005	TMS Entertainment, Tokyo Kids, Minami Machi Bugyousho	11555	3237	0.12
369	Boogiepop wa Warawanai	7.17	Psychological Supernatural Dementia Mystery Drama Horror	12	Winter 2000	Madhouse	94052	29544	0.1
370	Burn Up Excess	6.55	Action Adventure Comedy Ecchi Police Sci-Fi Shounen	13	Winter 1998	Magic Bus	9241	5216	0.06
375	Bannou Bunka Neko-Musume (1998)	6.53	Action Adventure Comedy Mecha Sci-Fi Seinen	12	Winter 1998	Production Reed	6116	3006	0.09
379	Heppoko Jikken Animation Excel♥Saga	7.5	Comedy Parody Sci-Fi Shounen	26	Fall 1999	J.C.Staff	93418	47372	0.11
383	Galaxy Angel	7.03	Comedy Sci-Fi	24	Spring 2001	Madhouse	23998	12598	0.1
384	Gantz	7.05	Action Sci-Fi Horror Psychological Supernatural Drama Ecchi	13	Spring 2004	Gonzo	285300	181377	0.07
385	Gilgamesh	6.65	Drama Fantasy Sci-Fi Supernatural	26	Fall 2003	Group TAC, Japan Vistec	33930	10972	0.16
386	H2	7.27	Comedy Sports Romance Shounen	41	Summer 1995	Production Reed	7721	3394	0.08
387	Haibane Renmei	7.99	SliceofLife Mystery Psychological Drama Fantasy	13	Fall 2002	Radix	210376	94017	0.05
388	Capeta	7.83	Cars Shounen Sports	52	Fall 2005	Studio Comet	20204	11499	0.07
390	Suzuka	7.22	Sports Drama Romance Shounen	26	Summer 2005	Studio Comet	99851	60350	0.06
392	Yuu☆Yuu☆Hakusho	8.45	Action Comedy Demons Supernatural MartialArts Shounen	112	Fall 1992	Studio Pierrot	475397	255542	0.05
394	Ai Yori Aoshi: Enishi	7.16	Comedy Drama Harem Romance SliceofLife	12	Fall 2003	J.C.Staff	51522	39986	0.03
395	Gantz 2nd Stage	7.08	Action Sci-Fi Horror Psychological Supernatural Drama Ecchi	13	Summer 2004	Gonzo	135793	108501	0.02
396	Seikai no Senki	7.72	Action Military Romance Sci-Fi Space	13	Spring 2000	Sunrise	28349	16557	0.03
397	Seikai no Senki II	7.84	Action Military Romance Sci-Fi Space	10	Summer 2001	Sunrise	20225	13721	0.02
400	Seihou Bukyou Outlaw Star	7.87	Action Sci-Fi Adventure Space Comedy	24	Winter 1998	Sunrise	125411	65883	0.04
403	Hanaukyou Maid-tai	6.62	Comedy Ecchi Harem Romance	12	Spring 2001	Daume	27191	17078	0.06
406	Buzzer Beater	6.56	Shounen Sports	13	Winter 2005	TMS Entertainment	12576	7603	0.08
407	Tantei Gakuen Q	7.76	Comedy Drama Mystery Police Shounen	45	Spring 2003	Studio Pierrot	28305	14895	0.06
411	Gun x Sword	7.28	Action Adventure Drama Mecha Sci-Fi Shounen	26	Summer 2005	AIC ASTA	65323	35795	0.08
412	Kore ga Watashi no Goshujinsama	6.56	Comedy Ecchi SliceofLife	12	Spring 2005	Gainax, Shaft	69569	44737	0.08
417	Ragnarök The Animation	6.47	Action Magic Fantasy	26	Spring 2004	G&G Entertainment	42946	27148	0.1
419	Samurai Deeper Kyou	6.92	Adventure Comedy Historical Supernatural Samurai Shounen	26	Summer 2002	Studio Deen	49129	29111	0.09
421	Stratos 4	6.66	Comedy Military Sci-Fi Shounen	13	Winter 2003	Studio Fantasia	9787	5062	0.08
424	Dirty Pair	7.18	Adventure Comedy Police Sci-Fi	24	Summer 1985	Sunrise	21621	5783	0.08
427	Kaleido Star	7.94	Comedy Sports Drama Fantasy Shoujo	51	Spring 2003	Gonzo, Production I.G	69324	37075	0.08
435	Magic Knight Rayearth	7.46	Adventure Comedy Drama Fantasy Magic Mecha Romance Shoujo	20	Fall 1994	Tokyo Movie Shinsha	53357	30690	0.06
440	Shoujo Kakumei Utena	8.2	Comedy Drama Fantasy Mystery Psychological Shoujo	39	Spring 1997	J.C.Staff	156522	52178	0.07
444	Maria-sama ga Miteru: Haru	7.68	Drama Romance School Shoujo ShoujoAi	13	Summer 2004	Studio Deen	22423	14293	0.03
445	Tales of Eternia The Animation	6.21	Adventure Comedy Romance Fantasy	13	Winter 2001	Production I.G, Xebec	15127	7653	0.07
446	Weiß Kreuz Glühen	6.59	Action Drama Shounen	13	Fall 2002	ufotable	8883	4593	0.08
447	Weiß Kreuz	6.73	Action Drama Shounen	25	Spring 1998	Plum, Magic Bus	16526	8247	0.12
455	Fantastic Children	7.55	Adventure Fantasy Mystery Romance Sci-Fi Thriller	26	Fall 2004	Nippon Animation	27307	7802	0.1
456	Gokujou Seitokai	6.94	Comedy School SliceofLife	26	Spring 2005	J.C.Staff	16907	7361	0.11
457	Mushishi	8.69	Adventure SliceofLife Mystery Historical Supernatural Fantasy Seinen	26	Fall 2005	Artland	620736	235371	0.06
467	Koukaku Kidoutai: Stand Alone Complex	8.45	Action Military Sci-Fi Police Mecha Seinen	26	Fall 2002	Production I.G	326394	170891	0.04
469	Karin	7.17	Comedy Romance Vampire School Shounen	24	Fall 2005	J.C.Staff	153848	108195	0.06
470	Okusama wa Joshikousei (TV)	6.34	SliceofLife Comedy Romance Drama	13	Summer 2005	Madhouse	22526	11579	0.09
471	To Heart 2	6.52	Comedy Drama Harem Romance School SliceofLife	13	Fall 2005	OLM	18154	8472	0.07
472	To Heart	6.6	Drama Harem Romance School SliceofLife	13	Spring 1999	OLM	22561	10962	0.08
473	Tide-Line Blue	6.66	Action Military Adventure Drama Shounen	12	Summer 2005	Telecom Animation Film	6422	3382	0.08
476	Ginban Kaleidoscope	7.34	Sports Supernatural Drama Romance	12	Fall 2005	Karaku	42904	26890	0.05
477	Aria the Animation	7.69	Sci-Fi SliceofLife Fantasy Shounen	13	Fall 2005	Hal Film Maker	127878	46214	0.08
478	Sousei no Aquarion	7.11	Action Mecha Romance SuperPower Supernatural Sci-Fi	26	Spring 2005	Satelight, Production Reed	66799	36694	0.07
479	Ueki no Housoku	7.76	Action Adventure Comedy SuperPower Supernatural Drama Shounen	51	Spring 2005	Studio Deen	97521	51123	0.07
481	Yu☆Gi☆Oh! Duel Monsters	7.47	Adventure Game Shounen	224	Spring 2000	Gallop	292991	224794	0.06
482	Yu☆Gi☆Oh!: Duel Monsters GX	7.16	Action Game Comedy Fantasy Shounen	180	Fall 2004	Gallop	162129	119800	0.09
483	Kurau Phantom Memory	7.35	Action Sci-Fi Space SuperPower Drama	24	Summer 2004	Bones	26256	8114	0.1
485	Damekko Doubutsu	7.29	SliceofLife Comedy	26	Winter 2005	Magic Bus	9986	6243	0.07
486	Kino no Tabi: The Beautiful World	8.34	Action Adventure Psychological SliceofLife	13	Spring 2003	A.C.G.T.	223758	86441	0.05
487	Girls Bravo: Second Season	6.68	Harem Comedy Romance Ecchi Fantasy School Shounen	13	Winter 2005	AIC Spirits	78842	60027	0.03
488	Ichigo Mashimaro	7.66	SliceofLife Comedy	12	Summer 2005	Daume	71069	34913	0.05
489	Kamichu!	7.4	Comedy Drama SliceofLife Supernatural	12	Summer 2005	Brain's Base	50675	18722	0.09
490	Paniponi Dash!	7.45	Comedy Parody School	26	Summer 2005	Shaft	53721	21246	0.13
495	Bakuretsu Hunters	6.71	Adventure Comedy Ecchi Fantasy Magic Shounen Supernatural	26	Fall 1995	Xebec	17085	7167	0.11
497	Yami to Boushi to Hon no Tabibito	6.58	Adventure Ecchi Fantasy Magic Mystery ShoujoAi	13	Fall 2003	Studio Deen	25315	11586	0.1
501	Doraemon	7.36	Adventure Comedy Fantasy Kids Shounen	26	Spring 1973	Unknown	16163	11608	0.07
505	Fushigiboshi no☆Futagohime	7.27	Magic Comedy Shoujo	51	Spring 2005	Hal Film Maker	9084	4050	0.11
506	Glass no Kamen	7.34	Drama Romance Shoujo	23	Spring 1984	Eiken	7182	2790	0.1
508	Tottoko Hamtarou	6.97	Adventure Comedy Kids	296	Summer 2000	TMS Entertainment	46407	24527	0.24
509	I My Me! Strawberry Eggs	6.81	Comedy Drama Romance School SliceofLife	13	Summer 2001	TNK	33300	23157	0.05
510	Kakyuusei 2: Hitomi no Naka no Shoujo-tachi	5.89	Comedy Drama Harem Romance School	13	Fall 2004	Arms	5069	1718	0.11
511	Kidou Shinsengumi Moeyo Ken TV	6.19	Adventure Comedy Historical Fantasy	13	Summer 2005	Trinet Entertainment	4887	2134	0.11
516	Keroro Gunsou	7.7	Comedy Mecha Parody Sci-Fi Shounen	358	Spring 2004	Sunrise	59646	20350	0.19
518	Mahou no Princess Minky Momo	6.74	Magic Shoujo	63	Spring 1982	Production Reed	5625	1871	0.12
519	Mahoraba: Heartful days	7.34	Comedy Drama Romance Shounen	26	Winter 2005	J.C.Staff	22090	12201	0.06
521	Mermaid Melody Pichi Pichi Pitch	7.04	Adventure Music Comedy Magic Romance Shoujo	52	Spring 2003	Actas, SynergySP	59222	42456	0.08
525	Otogizoushi	6.98	Adventure Drama Fantasy Historical	26	Summer 2004	Production I.G	15131	4203	0.14
527	Pokemon	7.34	Action Adventure Comedy Kids Fantasy	276	Spring 1997	OLM	464779	339007	0.11
529	Saishuu Heiki Kanojo	7.18	Drama Military Romance School Sci-Fi	13	Summer 2002	Gonzo	83111	40458	0.07
530	Bishoujo Senshi Sailor Moon	7.68	Demons Magic Romance Shoujo	46	Spring 1992	Toei Animation	278409	178544	0.06
532	Bishoujo Senshi Sailor Moon S	7.85	Drama Magic Romance Shoujo	38	Spring 1994	Toei Animation	112366	88683	0.02
533	Sensei no Ojikan: Doki Doki School Hours	6.69	Comedy SliceofLife	13	Spring 2004	J.C.Staff	7161	3230	0.11
534	Slayers	7.76	Adventure Comedy Demons Magic Fantasy	26	Spring 1995	E&G Films	116837	68326	0.05
535	Slayers Next	8.04	Adventure Comedy Demons Magic Fantasy	26	Spring 1996	E&G Films	59438	45116	0.02
538	Shin Tenchi Muyou!	6.87	Comedy Harem Romance Sci-Fi Shounen	26	Spring 1997	AIC	31185	21544	0.05
545	Mousou Kagaku Series: Wandaba Style	6.03	Comedy Sci-Fi	12	Spring 2003	TNK	2929	1139	0.16
546	Wind: A Breath of Heart (TV)	6	Drama Romance School Supernatural	13	Summer 2004	Radix	10151	4901	0.07
550	Yu☆Gi☆Oh!	7.21	Action Game Comedy Fantasy Shounen	27	Spring 1998	Toei Animation	180785	143794	0.05
551	Grappler Baki: Saidai Tournament-hen	7.45	Action MartialArts Shounen Sports	24	Summer 2001	Group TAC	44368	34036	0.02
552	Digimon Adventure	7.79	Action Adventure Comedy Fantasy Kids	54	Spring 1999	Toei Animation	325137	283580	0.03
553	Yami no Matsuei	7.07	Comedy Drama Fantasy Horror Magic Shoujo ShounenAi Vampire	13	Fall 2000	J.C.Staff	47815	28199	0.06
554	Koutetsu Tenshi Kurumi	6.79	Adventure Comedy Drama Historical Mecha Military Romance Shounen	24	Fall 1999	OLM, Production Reed	21063	12154	0.08
555	Koutetsu Tenshi Kurumi 2	6.3	Comedy Mecha Romance Sci-Fi ShoujoAi Shounen	12	Spring 2001	OLM	10473	6791	0.06
558	Major S2	8.25	Comedy Drama Shounen Sports	26	Winter 2006	Studio Hibari	58350	49941	0.01
561	Sakura Taisen	6.88	Adventure Mecha Sci-Fi Shounen	25	Spring 2000	Madhouse	19448	8002	0.1
563	DNA²	6.68	Sci-Fi Comedy Romance	12	Fall 1994	Madhouse, Studio Deen	36148	23067	0.06
567	The Big O	7.53	Action Sci-Fi Mystery Psychological Mecha	26	Fall 1999	Sunrise	75574	38174	0.06
568	Bubblegum Crisis Tokyo 2040	7.1	Adventure Mecha Sci-Fi Shounen	26	Fall 1998	AIC	30766	16087	0.07
569	Musekinin Kanchou Tylor	7.87	Military Sci-Fi Space Comedy Parody	26	Winter 1993	Tatsunoko Production	38239	15038	0.06
573	Saber Marionette J	7.35	Action Adventure Comedy Drama Harem MartialArts Mecha Romance Sci-Fi Shounen	25	Fall 1996	Studio Junio	26429	15997	0.06
576	Magikano	6.38	Comedy Fantasy Harem Magic Romance Shounen	13	Winter 2006	Tokyo Kids	30647	19265	0.06
577	Kagi Hime Monogatari: Eikyuu Alice Rondo	6.21	Fantasy Magic	13	Winter 2006	Trinet Entertainment, Picture Magic	7335	2859	0.13
579	Battle Programmer Shirase	6.94	Comedy Ecchi Sci-Fi	15	Fall 2003	AIC	30151	18899	0.06
580	Kogepan	6.84	Comedy	10	Fall 2001	Studio Pierrot	5589	3780	0.06
582	Sexy Commando Gaiden: Sugoi yo!! Masaru-san	7.71	Comedy MartialArts School Shounen	48	Winter 1998	Magic Bus	10554	3138	0.12
584	Noein: Mou Hitori no Kimi e	7.62	Sci-Fi Adventure SliceofLife Drama	24	Fall 2005	Satelight	78451	31440	0.08
586	Ayakashi: Japanese Classic Horror	7.45	Mystery Historical Horror Fantasy	11	Winter 2006	Toei Animation	56994	24984	0.05
587	Hanbun no Tsuki ga Noboru Sora	7.52	Comedy Drama Romance	6	Winter 2006	Group TAC	87853	55246	0.02
589	Ginga Nagareboshi Gin	8.04	Action Adventure Drama Shounen	21	Spring 1986	Toei Animation	21057	11688	0.04
590	Kage kara Mamoru!	6.62	Comedy Romance Shounen	12	Winter 2006	Group TAC	23147	14549	0.05
591	Amaenaide yo!!	6.5	Comedy Ecchi Harem Romance Supernatural	12	Summer 2005	Studio Deen	65572	42491	0.09
592	PopoloCrois	6.93	Adventure Fantasy	26	Fall 2003	TMS Entertainment	1639	681	0.16
593	Mugen no Ryvius	7.48	Drama Mecha Military Psychological Sci-Fi Space	26	Fall 1999	Sunrise	36580	12388	0.08
598	Jinzou Ningen Kikaider The Animation	6.99	Action Sci-Fi Drama Mecha Shounen	13	Fall 2000	Radix	8230	4921	0.07
600	Legend of Duo	4.93	Supernatural Drama Vampire ShounenAi	12	Spring 2005	Radix, Marine Entertainment	10199	5464	0.1
603	Futari wa Precure	7	Action Comedy Magic Fantasy Shoujo	49	Winter 2004	Toei Animation	34825	17643	0.1
604	Mahou no Stage Fancy Lala	7.12	Music Comedy Drama Magic Romance Shoujo	26	Spring 1998	Studio Pierrot	9453	4123	0.1
605	Tenshi ni Narumon!	6.71	Comedy Romance Vampire Fantasy	26	Spring 1999	Studio Pierrot	5970	2065	0.16
606	Kazemakase Tsukikage Ran	7.12	Adventure Comedy Historical MartialArts Samurai	13	Winter 2000	Madhouse	13171	5512	0.07
607	Otogi Juushi Akazukin	6.95	Adventure Comedy Fantasy	39	Summer 2006	Madhouse	5980	1699	0.17
610	Popotan	6.29	Comedy Drama Ecchi Supernatural	12	Spring 2003	Shaft	20984	10843	0.12
611	Platonic Chain	5.67	Sci-Fi SliceofLife	24	Fall 2002	Unknown	2382	696	0.16
612	PetoPeto-san	6.53	Comedy Demons Romance School	13	Summer 2005	Xebec	5865	2502	0.1
613	Onmyou Taisenki	7.17	Adventure Fantasy Supernatural Shounen	52	Fall 2004	Sunrise	5343	2069	0.14
614	Okusama wa Mahou Shoujo	6.34	Magic Romance	13	Summer 2005	J.C.Staff	7731	2957	0.1
616	Nurse Angel Ririka SOS	6.72	Drama Fantasy Magic Shoujo	35	Summer 1995	Gallop	2943	729	0.17
618	Juubee Ninpuuchou: Ryuuhougyoku-hen	6.7	Adventure Horror Magic MartialArts Samurai Shounen Supernatural	13	Spring 2003	Madhouse	33722	18870	0.07
620	Takahashi Rumiko Gekijou Ningyo no Mori	7.06	Mystery Horror Drama Fantasy	13	Fall 2003	TMS Entertainment	22339	9796	0.07
621	Night Walker: Mayonaka no Tantei	6.94	Action Comedy Horror Mystery Vampire	12	Summer 1998	AIC	16317	7908	0.07
623	Shichinin no Nana	6.72	Adventure Comedy Magic Romance School	25	Winter 2002	A.C.G.T.	4984	1453	0.16
624	Mouse	6.04	Action Harem Comedy Ecchi Shounen	12	Winter 2003	Studio Deen, Studio Hibari, Production Reed	16810	10050	0.09
626	Mamotte Shugogetten!	6.68	Comedy Fantasy Magic Romance Shounen	22	Fall 1998	Toei Animation	7109	3065	0.11
627	Major S1	8.27	Comedy Sports Drama Shounen	26	Fall 2004	Studio Hibari	80171	53971	0.02
630	Mahoutsukai Tai! (TV)	6.78	Sci-Fi Comedy Magic Romance School	13	Summer 1999	Madhouse, Production Reed	8814	3914	0.08
633	Legend of Basara	7.32	Adventure Romance Drama Shoujo	13	Spring 1998	KSS	9901	4276	0.06
634	Koi Kaze	7.13	Drama Psychological Romance Seinen SliceofLife	13	Spring 2004	A.C.G.T.	71263	31030	0.07
635	Juubee-chan: Lovely Gantai no Himitsu	6.67	Action Adventure Comedy Drama Shounen	13	Spring 1999	Madhouse	15652	8592	0.09
636	Juubee-chan 2: Siberia Yagyuu no Gyakushuu	6.87	Adventure Comedy Drama MartialArts Samurai Shounen	13	Winter 2004	Madhouse	9198	5127	0.05
637	Iketeru Futari	6.63	Comedy Romance Ecchi School Seinen	16	Winter 1999	J.C.Staff	16327	11244	0.04
646	Haunted Junction	6.65	Comedy Supernatural School Shounen	12	Spring 1997	Studio Deen	3639	1766	0.1
648	Tsuki wa Higashi ni Hi wa Nishi ni: Operation Sanctuary	6.19	Comedy Drama Harem Romance Sci-Fi	13	Summer 2004	Unknown	7007	3426	0.07
649	Hanaukyou Maid-tai: La Verite	6.8	Comedy Ecchi Harem Romance	12	Spring 2004	Daume	20049	13402	0.04
652	Galaxy Angel Z	7.18	Sci-Fi Comedy	9	Winter 2002	Madhouse	8784	5996	0.03
653	Galaxy Angel 3	7.31	Comedy Sci-Fi	26	Fall 2002	Madhouse	8186	5251	0.04
655	Galaxy Angel 4	7.22	Comedy Sci-Fi	13	Summer 2004	Madhouse, feel.	6813	4029	0.04
658	Touhai Densetsu Akagi: Yami ni Maiorita Tensai	7.94	Game Psychological Thriller Seinen	26	Fall 2005	Madhouse	81739	42335	0.05
667	Kashimashi: Girl Meets Girl	6.67	Comedy Drama Romance School ShoujoAi SliceofLife	12	Winter 2006	Studio Hibari	43400	25767	0.08
668	Koi Koi 7	5.81	Comedy Harem Romance	13	Spring 2005	Studio Flag	14063	6632	0.13
670	Lamune	6.83	Drama Romance SliceofLife	12	Fall 2005	Trinet Entertainment, Picture Magic	37315	21386	0.07
671	Lemon Angel Project	6.59	Drama Music	13	Winter 2006	Unknown	7331	3211	0.12
677	Sentimental Journey	6.36	Drama Romance Shoujo	12	Spring 1998	Sunrise	2438	770	0.11
678	Shadow Skill: Eigi	7.12	Adventure Fantasy Magic MartialArts SuperPower Drama Shounen	26	Summer 1998	Studio Deen	11553	5146	0.09
682	Otogi Story Tenshi no Shippo	6.56	Fantasy Magic Comedy Harem Romance	12	Fall 2001	Tokyo Kids	12885	6968	0.08
684	Tenshi no Shippo Chu!	6.54	Fantasy Magic Romance	11	Spring 2003	Unknown	4894	2884	0.05
685	To Heart: Remember My Memories	6.44	Drama Harem Romance School Sci-Fi SliceofLife	13	Fall 2004	OLM, AIC ASTA	7779	4162	0.06
687	Tokyo Mew Mew	6.99	Sci-Fi Comedy Magic Romance Fantasy Shoujo	52	Spring 2002	Studio Pierrot	115993	74793	0.1
688	Uta∽Kata	6.72	Psychological Drama Magic	12	Fall 2004	Hal Film Maker	22015	10560	0.08
690	Kyuuketsuhime Miyu (TV)	7.15	Action Horror Demons Drama Vampire Shoujo	26	Fall 1997	AIC	31840	12090	0.11
691	Yawara!	7.48	Action Comedy Drama MartialArts Romance SliceofLife Sports	124	Fall 1989	Madhouse	14846	2961	0.13
693	Burn Up Scramble	6.19	Action Comedy Drama Ecchi Police Sci-Fi Shounen	12	Winter 2004	AIC	8191	3946	0.08
694	Canvas 2: Niji-iro no Sketch	6.78	Comedy Drama Romance SliceofLife	24	Fall 2005	Zexcs	24394	13620	0.07
696	Tenchi Muyou!	7.44	Comedy Harem Romance Sci-Fi Shounen Space	26	Spring 1995	AIC	62599	39890	0.04
706	Comic Party Revolution	6.52	Comedy Drama	13	Spring 2005	Radix, Chaos Project	8495	4751	0.08
708	Patapata Hikousen no Bouken	7.57	Adventure Sci-Fi	26	Winter 2002	Telecom Animation Film	6005	2361	0.07
709	Mujin Wakusei Survive	7.71	Action Adventure Fantasy Sci-Fi SliceofLife	52	Fall 2003	Madhouse, Telecom Animation Film	22946	9800	0.07
710	Rec	7.34	Comedy Drama Romance Seinen	9	Winter 2006	Shaft	98911	65502	0.03
712	Zoids Genesis	7.24	Action Adventure Comedy Mecha Military	50	Spring 2005	Shogakukan Music & Digital Entertainment	13793	8063	0.06
714	High School! Kimengumi	7.27	Comedy Parody Romance School Shounen	86	Fall 1985	Unknown	2755	985	0.14
718	Yume de Aetara (TV)	6.46	Comedy Drama Romance Seinen SliceofLife	16	Fall 1998	J.C.Staff	5971	3088	0.06
721	Princess Tutu	8.15	Comedy Drama Fantasy Magic Mystery Romance	38	Summer 2002	Hal Film Maker	129950	63089	0.06
727	Kingyo Chuuihou!	6.79	Comedy Kids Shoujo	54	Winter 1991	Toei Animation	2134	328	0.21
729	Hiatari Ryoukou!	7.09	Comedy Romance School Shoujo Sports	48	Spring 1987	Group TAC	3571	798	0.14
738	MÄR	7.28	Action Adventure Comedy Fantasy Shounen	102	Spring 2005	SynergySP	43615	19097	0.16
740	Bishoujo Senshi Sailor Moon R	7.69	Demons Magic Romance Shoujo	43	Spring 1993	Toei Animation	120962	96739	0.02
744	Trouble Chocolate	6.54	Comedy Romance Sci-Fi Shounen	20	Fall 1999	AIC	4433	1891	0.13
749	Nanami-chan	6.05	Kids Comedy	12	Fall 2004	Unknown	1108	513	0.15
750	Binchou-tan	6.92	SliceofLife Comedy	12	Winter 2006	Studio Deen	9440	4522	0.11
751	Bomberman Jetters	6.87	Action Sci-Fi Adventure Comedy	52	Fall 2002	Studio Deen	3387	1445	0.15
754	Yuki no Joou (TV)	7.03	Adventure Drama Fantasy Shoujo	36	Spring 2005	TMS Entertainment	3509	724	0.16
763	Zoids	7.38	Action Adventure Comedy Mecha Sci-Fi	67	Fall 1999	Xebec	41604	29603	0.07
764	Zoids Shinseiki/Zero	7.34	Adventure Comedy Mecha Sci-Fi Shounen Sports	26	Winter 2001	Xebec	24166	18904	0.03
771	Ginyuu Mokushiroku Meine Liebe Wieder	6.69	Drama Fantasy Shoujo	13	Winter 2006	Bee Train	6482	2762	0.08
776	Nanaka 6/17	6.61	SliceofLife Comedy Drama Romance Shounen	12	Winter 2003	J.C.Staff	7842	4216	0.09
782	Gasaraki	6.66	Psychological Mecha Military Supernatural Drama	25	Fall 1998	Sunrise	17612	5726	0.13
783	Miami Guns	6.47	Comedy Ecchi Police Shounen	13	Winter 2000	Group TAC	4973	1965	0.13
786	Pugyuru	5.73	Comedy Fantasy School	13	Spring 2004	Creators Dot Com	3852	2203	0.07
789	Shinigami no Ballad.	6.93	Drama Fantasy Psychological Supernatural	6	Spring 2006	Group TAC, Ginga Ya	41384	22476	0.07
790	Ergo Proxy	7.92	Psychological Mystery Sci-Fi	23	Winter 2006	Manglobe	478552	213453	0.07
795	Oniisama e...	7.79	Psychological Drama School Shoujo ShoujoAi	39	Summer 1991	Tezuka Productions	28971	7539	0.08
798	Yomigaeru Sora: Rescue Wings	7.42	Drama Military Seinen	12	Winter 2006	J.C.Staff	11676	4440	0.07
799	Kokoro Toshokan	6.48	Comedy Drama SliceofLife	13	Fall 2001	Studio Deen	5362	2079	0.14
800	NieA Under 7	6.85	Comedy Sci-Fi SliceofLife	13	Spring 2000	Triangle Staff	28038	10125	0.09
801	Koukaku Kidoutai: Stand Alone Complex 2nd GIG	8.54	Action Military Sci-Fi Mystery Police Mecha Seinen	26	Winter 2004	Production I.G	191690	115405	0.02
810	Android Ana Maico 2010	6.44	Comedy Drama Sci-Fi Seinen	24	Spring 1998	Group TAC, Animaruya	2867	1140	0.14
812	Chikyuu Shoujo Arjuna	6.83	Adventure Drama Magic Sci-Fi	13	Winter 2001	Satelight	26398	11734	0.1
813	Dragon Ball Z	8.16	Action Adventure Comedy Fantasy MartialArts Shounen SuperPower	291	Spring 1989	Toei Animation	888982	772421	0.03
817	Tactical Roar	6.44	Comedy Military Romance Sci-Fi	13	Winter 2006	Actas	8903	4555	0.09
831	Chicchana Yukitsukai Sugar	7.08	Comedy Fantasy SliceofLife	24	Fall 2001	J.C.Staff	20179	10890	0.12
832	Ginsoukikou Ordian	5.78	Mecha Sci-Fi	24	Spring 2000	Plum	2340	655	0.16
833	Choujuushin Gravion	6.4	Action Comedy Mecha Sci-Fi Shounen	13	Fall 2002	Gonzo	11360	5694	0.08
835	Sister Princess: Re Pure	6.26	Drama Romance	13	Fall 2002	Zexcs	7846	3840	0.09
836	Sister Princess	6.43	Comedy Drama Harem Romance SliceofLife	26	Spring 2001	Zexcs	20953	9508	0.13
838	Narutaru: Mukuro Naru Hoshi Tama Taru Ko	6.07	Drama Seinen Thriller	13	Summer 2003	Planet	29056	10283	0.09
840	Narue no Sekai	6.59	Comedy Romance Sci-Fi	12	Spring 2003	Studio Live	16213	8721	0.06
841	Colorful	6.05	Comedy Ecchi SliceofLife	16	Summer 1999	Triangle Staff, Studio Wombat	21032	9700	0.11
845	Kiba	7.32	Adventure Fantasy Shounen	51	Spring 2006	Madhouse	68142	34807	0.11
846	School Rumble Ni Gakki	8.03	Comedy Romance School Shounen	26	Spring 2006	Studio Comet	135499	103198	0.02
849	Suzumiya Haruhi no Yuuutsu	7.88	Comedy Mystery Parody School Sci-Fi SliceofLife	14	Spring 2006	Kyoto Animation	745062	490883	0.04
850	Gakuen Heaven	6.55	Harem Comedy Drama Romance School ShounenAi	13	Spring 2006	Tokyo Kids	55034	35192	0.08
852	Gokinjo Monogatari	7.47	SliceofLife Comedy Drama Romance Shoujo	50	Fall 1995	Toei Animation	13837	3396	0.11
853	Ouran Koukou Host Club	8.2	Comedy Harem Romance School Shoujo	26	Spring 2006	Bones	827960	638636	0.03
854	Soul Link	6.13	Action Adventure Space Comedy Romance Military Sci-Fi	12	Spring 2006	Picture Magic	19648	9954	0.11
855	Strawberry Panic	7.31	Drama Romance School ShoujoAi	26	Spring 2006	Madhouse, Imagin	113097	58091	0.1
856	Utawarerumono	7.67	Action Drama Fantasy Sci-Fi	26	Spring 2006	OLM	140221	71646	0.06
857	Air Gear	7.53	Action Comedy Ecchi Shounen Sports	25	Spring 2006	Toei Animation	298135	203281	0.06
858	Gunparade Orchestra	5.92	Drama Mecha Military Romance Sci-Fi SliceofLife	24	Fall 2005	Brain's Base	4027	1339	0.18
859	Digimon Savers	6.95	Adventure Comedy Drama Fantasy Shounen	48	Spring 2006	Toei Animation	71051	54934	0.07
860	Makai Senki Disgaea	6.76	Action Comedy Demons Fantasy Magic	12	Spring 2006	OLM	39100	23252	0.08
861	xxxHOLiC	8.01	Comedy Drama Mystery Psychological Supernatural	24	Spring 2006	Production I.G	249828	123257	0.07
863	Joshikousei: Girl's High	6.58	Comedy Drama Ecchi School SliceofLife	12	Spring 2006	Arms	31305	16242	0.1
865	Kikou Senki Dragonar	6.7	Sci-Fi Adventure Space Mecha	48	Winter 1987	Sunrise	4078	843	0.12
872	Mahou Shoujo-tai Arusu	7.09	Adventure Comedy Fantasy Magic	40	Spring 2004	Studio 4°C	25235	6380	0.12
873	.hack//Roots	6.91	Adventure Drama Fantasy Game Sci-Fi	26	Spring 2006	Bee Train	66696	41609	0.07
874	Digimon Tamers	7.62	Adventure Comedy Drama Fantasy Shounen	51	Spring 2001	Toei Animation	160643	138566	0.03
876	Street Fighter II V	7.07	Action Adventure Drama Mystery Shounen	29	Spring 1995	Studio Hibari, Production Reed	22065	15629	0.05
877	Nana	8.46	Music SliceofLife Comedy Drama Romance Shoujo	47	Spring 2006	Madhouse	403296	185800	0.07
878	Zegapain	7.35	Action Mecha Romance Sci-Fi	26	Spring 2006	Sunrise	29544	11824	0.1
879	Simoun	7.46	Military Drama Magic Romance Fantasy ShoujoAi	26	Spring 2006	Studio Deen	36303	11791	0.12
880	Aa! Megami-sama!: Sorezore no Tsubasa	7.58	Comedy Magic Romance Seinen Supernatural	22	Spring 2006	AIC	57580	43366	0.02
886	Amaenaide yo!! Katsu!!	6.71	Comedy Ecchi Harem Romance Supernatural	12	Winter 2006	Studio Deen	45037	34316	0.03
888	Megami Kouhosei	6.4	Action Mecha Military Sci-Fi Space	12	Winter 2000	Xebec	19271	12496	0.08
889	Black Lagoon	8.05	Action Seinen	12	Spring 2006	Madhouse	704436	435287	0.03
890	Yuusha-Ou GaoGaiGar	7.82	Adventure Mecha Sci-Fi Shounen	49	Winter 1997	Sunrise	16588	5530	0.09
907	Princess Princess	7.02	Comedy Drama School Shoujo	12	Spring 2006	Studio Deen	54983	34487	0.07
909	Geneshaft	6.38	Adventure Mecha Sci-Fi Space	13	Spring 2001	Satelight	11984	6224	0.09
910	Himawari!	6.34	Adventure Comedy MartialArts	13	Spring 2006	Arms	21384	8890	0.12
912	Ninkuu	7.04	Adventure Shounen	55	Winter 1995	Studio Pierrot	4857	1144	0.18
913	Kakutou Bijin Wulong	6.6	Action Ecchi MartialArts	25	Fall 2005	TMS Entertainment	4931	1513	0.17
914	Ike! Ina-chuu Takkyuubu	7.56	Comedy Ecchi School Sports	26	Spring 1995	Studio Hibari	13775	4429	0.14
915	Ginga Densetsu Weed	7.23	Adventure Drama Shounen	26	Fall 2005	Studio Deen	12450	8147	0.06
916	Tokkou	6.58	Action Mystery Comedy Horror Police Supernatural Seinen	13	Spring 2006	AIC Spirits, Group TAC	40071	24789	0.06
918	Gintama	8.96	Action Comedy Historical Parody Samurai Sci-Fi Shounen	201	Spring 2006	Sunrise	754607	230260	0.08
919	Ray The Animation	6.65	Drama Romance Sci-Fi	13	Spring 2006	OLM	11834	4329	0.12
924	Transformers: Choujin Master Force	6.66	Adventure Mecha Sci-Fi Shounen	43	Spring 1988	Toei Animation	2562	1566	0.08
925	Transformers: The☆Headmasters	6.45	Action Sci-Fi Adventure Space Mecha Shounen	35	Summer 1987	Toei Animation	3076	1875	0.08
926	Tatakae! Chou Robot Seimeitai Transformers Victory	6.64	Adventure Mecha Sci-Fi Shounen	38	Spring 1989	Toei Animation	2346	1368	0.07
927	Transformers Superlink	6.19	Sci-Fi Adventure Space Mecha	51	Winter 2004	Actas	4337	3055	0.08
928	Transformers Galaxy Force	6.63	Sci-Fi Adventure Mecha Shounen	52	Winter 2005	Gonzo	4727	3439	0.07
929	Seisenshi Dunbine	7.05	Action Sci-Fi Adventure Drama Fantasy Mecha	49	Winter 1983	Sunrise	8642	1866	0.12
930	Densetsu Kyojin Ideon	6.98	Sci-Fi Space Drama Mecha	39	Spring 1980	Sunrise	11734	3036	0.07
934	Higurashi no Naku Koro ni	7.95	Mystery Dementia Horror Psychological Supernatural Thriller	26	Spring 2006	Studio Deen	638491	363708	0.06
935	Witchblade	7.27	Action Sci-Fi SuperPower	24	Spring 2006	Gonzo	97248	51336	0.08
940	Inukami!	7.27	Comedy Ecchi Romance Shounen Supernatural	26	Spring 2006	Seven Arcs	62619	34041	0.08
941	Renkin San-kyuu Magical? Pokaan	6.98	Comedy Ecchi Magic Parody Vampire	12	Spring 2006	Remic	27039	10994	0.08
942	Nishi no Yoki Majo: Astraea Testament	6.77	Mystery Comedy Drama Romance Fantasy	13	Spring 2006	Hal Film Maker	15842	6828	0.09
943	Yume Tsukai	6.43	Drama Fantasy Magic SliceofLife	12	Spring 2006	Madhouse	7696	2812	0.15
944	The Third: Aoi Hitomi no Shoujo	7.33	Action Adventure Sci-Fi Seinen	24	Spring 2006	Xebec	18954	8610	0.09
951	Chibi Maruko-chan	7.64	Comedy SliceofLife Shoujo	142	Winter 1990	Nippon Animation	9294	4545	0.16
952	Magical Nyan Nyan Taruto	6.24	Comedy Magic	12	Summer 2001	Madhouse, TNK	5878	2090	0.14
953	Jyu Oh Sei	7.26	Action Sci-Fi Adventure Mystery Drama Shoujo	11	Spring 2006	Bones	62965	36840	0.04
956	Daikuu Maryuu Gaiking	6.68	Adventure Mecha Sci-Fi Shounen	44	Spring 1976	Toei Animation	1853	663	0.14
957	Saiunkoku Monogatari	7.94	Adventure Comedy Drama Fantasy Historical Romance	39	Spring 2006	Madhouse	79685	35803	0.08
958	HeatGuy J	7.17	Action Adventure Mecha Police Sci-Fi	25	Fall 2002	Satelight	15648	6832	0.11
959	Shin Chou Kyou Ryo: Condor Hero	7.36	Adventure Drama Historical Romance	26	Spring 2001	Nippon Animation	7708	3207	0.1
960	Shin Chou Kyou Ryo: Condor Hero II	7.33	Adventure Drama Historical Romance	26	Winter 2005	Nippon Animation	3296	1820	0.07
961	Virtua Fighter	7.1	Action Adventure MartialArts Comedy Shounen	35	Fall 1995	Tokyo Movie Shinsha	7906	4400	0.06
962	Aria the Natural	8.2	Sci-Fi SliceofLife Fantasy Shounen	26	Spring 2006	Hal Film Maker	63713	29175	0.04
964	Hit wo Nerae!	5.54	Comedy Ecchi	8	Spring 2004	Imagin, Studio Live	5268	2780	0.08
965	Yoshinaga-sanchi no Gargoyle	6.77	SliceofLife Comedy Fantasy	13	Spring 2006	Studio Hibari	4264	1685	0.13
966	Crayon Shin-chan	7.69	SliceofLife Comedy Ecchi School Seinen	-1	Spring 1992	Shin-Ei Animation	57907	7	0.28
967	Hokuto no Ken	7.99	Action Drama MartialArts Sci-Fi Shounen	109	Fall 1984	Toei Animation	98311	32736	0.09
968	Kakutou Bijin Wulong: Rebirth	6.9	Action Comedy MartialArts School Shounen	25	Spring 2006	TMS Entertainment	3033	974	0.1
969	Tsubasa Chronicle 2nd Season	7.6	Action Adventure Fantasy Romance Supernatural Drama Mystery Shounen	26	Spring 2006	Bee Train	104828	71859	0.04
970	Yokoyama Mitsuteru Sangokushi	7.37	Action Adventure Historical	47	Fall 1991	Enoki Films, Dai Nippon Printing	4843	2148	0.09
971	Astro Boy: Tetsuwan Atom	7	Action Sci-Fi Adventure SuperPower Kids Mecha Shounen	50	Spring 2003	Tezuka Productions	17364	10474	0.12
973	Glass no Kantai: La Legende du Vent de l'Univers	6.58	Adventure Sci-Fi	24	Spring 2006	Gonzo, Satelight	10495	3669	0.15
980	Rikujou Bouei-tai Mao-chan	6.29	Comedy Kids Magic Military Sci-Fi	26	Summer 2002	Xebec	4248	1372	0.18
988	Shinshaku Sengoku Eiyuu Densetsu: Sanada Juu Yuushi The Animation	6.13	Action Comedy Historical Military Samurai	12	Spring 2005	Group TAC, G&G Entertainment	1442	299	0.18
990	Kamisama Kazoku	7.15	Fantasy Romance Comedy Drama	13	Spring 2006	Toei Animation	43133	27045	0.05
992	Dual! Parallel Lun-Lun Monogatari	7.1	Action Sci-Fi Harem Comedy Mecha Shounen	13	Spring 1999	AIC	15242	10048	0.04
996	Bishoujo Senshi Sailor Moon: Sailor Stars	7.92	Adventure Comedy Drama Fantasy Magic Romance Shoujo	34	Spring 1996	Toei Animation	86890	65468	0.02
998	Blue Seed	7.03	Action Adventure Comedy Demons Drama Ecchi Horror Mystery Romance Sci-Fi	26	Fall 1994	Production I.G, Production Reed	24031	11482	0.08
1000	Uchuu Kaizoku Captain Herlock	7.71	Action Sci-Fi Adventure Space Drama Seinen	42	Spring 1978	Toei Animation	28480	9540	0.08
1005	Star Ocean EX	6.61	Adventure Fantasy Sci-Fi Shounen	26	Spring 2001	Studio Deen	11416	6750	0.09
1013	Le Chevalier D'Eon	7.23	Historical Magic Mystery Seinen Supernatural	24	Summer 2006	Production I.G	49572	14412	0.13
1017	Majutsushi Orphen	7.17	Action Adventure Comedy Demons Fantasy Magic	24	Fall 1998	J.C.Staff	35729	16114	0.08
1018	Majutsushi Orphen: Revenge	6.82	Adventure Comedy Fantasy Magic Shounen	23	Fall 1999	J.C.Staff	14725	8161	0.06
1019	Honoo no Mirage	6.57	Action Historical Supernatural Drama Romance School ShounenAi	13	Winter 2002	Madhouse	19350	9042	0.1
1021	Kaikan Phrase	7.4	Drama Music Romance Shoujo	44	Spring 1999	Studio Hibari	11366	4129	0.14
1022	Generator Gawl	6.92	Action Adventure Comedy Drama Sci-Fi Shounen	12	Fall 1998	Tatsunoko Production	8248	3963	0.07
1025	Kachou Ouji	7.01	Sci-Fi Adventure Music SliceofLife Space Comedy	13	Summer 1999	AIC, APPP	25418	7927	0.09
1035	Patalliro Saiyuuki!	6.62	Adventure Comedy Fantasy Shoujo ShounenAi	26	Summer 2005	Magic Bus	3274	1206	0.17
1037	Saint Beast: Seijuu Kourin-hen	6.01	Action Supernatural Magic Fantasy	6	Spring 2003	Unknown	7963	3363	0.12
1040	Mizuiro Jidai	6.9	SliceofLife Drama Romance School Shoujo	47	Spring 1996	Nippon Animation	3308	913	0.16
1045	Elf wo Karu Mono-tachi	7.03	Adventure Comedy Ecchi Fantasy Magic Shounen	12	Fall 1996	Group TAC, Amuse	21147	11387	0.08
1046	Elf wo Karu Mono-tachi II	7.04	Adventure Comedy Fantasy	12	Fall 1997	Group TAC	11018	7776	0.03
1048	The SoulTaker: Tamashii-gari	6.38	Demons Horror Supernatural	13	Spring 2001	Tatsunoko Production	22267	8399	0.14
1050	Bobobo-bo Bo-bobo	7.5	Sci-Fi Adventure Comedy Shounen	76	Fall 2003	Toei Animation	72819	31822	0.18
1057	Ippatsu Kiki Musume	6.26	Action Comedy Ecchi	16	Fall 1999	Group TAC	5428	2870	0.07
1060	Oruchuban Ebichu	7.4	Comedy Ecchi Seinen	24	Summer 1999	Gainax	40604	19337	0.07
1062	Nekojiru Gekijou Jirujiru Original	6.47	Action Comedy	27	Summer 1999	Unknown	9269	5295	0.04
1065	Touch	8.02	Sports Romance School Drama SliceofLife Shounen	101	Spring 1985	Gallop, Group TAC, Studio Junio	27188	9129	0.08
1067	Kishin Houkou Demonbane (TV)	6.58	Action Harem Magic Romance Ecchi Mecha	12	Spring 2006	View Works	33248	15885	0.11
1068	Chou Denji Robo Combattler V	6.7	Sci-Fi Adventure Mecha Shounen	54	Spring 1976	Sunrise, Toei Animation	2574	1044	0.11
1069	Chou Denji Machine Voltes V	7.45	Action Sci-Fi Adventure Drama Mecha Shounen	40	Summer 1977	Sunrise, Toei Animation	5783	3536	0.07
1070	Love Get Chu	6.58	Comedy Romance	25	Spring 2006	Radix	7349	1798	0.17
1082	Hikari to Mizu no Daphne	6.76	Sci-Fi Mystery Comedy Police Psychological Drama Ecchi	24	Winter 2004	J.C.Staff	12433	5166	0.13
1083	Human Crossing	6.34	Drama SliceofLife Sports	13	Spring 2003	A.C.G.T.	3085	818	0.13
1086	Kenran Butou Sai: The Mars Daybreak	7.18	Adventure Comedy Mecha Military Romance Sci-Fi Shounen	26	Spring 2004	Bones	18738	8878	0.07
1087	Kimagure Orange☆Road	7.55	Comedy Drama Romance School Shounen SliceofLife SuperPower	48	Spring 1987	Studio Pierrot	34405	10978	0.09
1088	Macross	7.94	Action Mecha Military Music Romance Sci-Fi Space	36	Fall 1982	Tatsunoko Production	82908	35847	0.05
1093	Oishinbo	6.4	Comedy SliceofLife Seinen	136	Fall 1988	Shin-Ei Animation	1915	232	0.16
1097	Lime-iro Senkitan	5.97	Drama Ecchi Harem Historical Mecha Supernatural	13	Winter 2003	Studio Hibari	9017	3769	0.11
1098	Samurai Girl Real Bout High School	5.97	Adventure Comedy Fantasy Shounen	13	Summer 2001	Gonzo	8846	4764	0.12
1103	Shinkon Gattai Godannar!!	6.69	Ecchi Comedy Mecha Romance Sci-Fi	13	Fall 2003	OLM	14240	5011	0.11
1104	Shinkon Gattai Godannar!! 2nd Season	6.95	Ecchi Comedy Mecha Romance Sci-Fi	13	Spring 2004	OLM	6957	3842	0.04
1108	Senkaiden Houshin Engi	7.13	Magic Adventure Fantasy Supernatural Historical Shounen	26	Summer 1999	Studio Deen	14820	8050	0.08
1110	Mermaid Melody Pichi Pichi Pitch Pure	7.09	Adventure Music Comedy Magic Romance Shoujo	39	Spring 2004	Actas, SynergySP	33784	26165	0.05
1123	Bouken Ou Beet Excellion	6.72	Adventure Fantasy Shounen Supernatural	25	Fall 2005	Toei Animation	6800	4330	0.07
1126	Figure 17: Tsubasa & Hikaru	7.23	Sci-Fi SliceofLife	13	Spring 2001	OLM	11068	3372	0.1
1127	UFO Princess Valkyrie	6.75	Comedy Ecchi Magic Sci-Fi	12	Summer 2002	TNK	17103	8572	0.08
1128	UFO Princess Valkyrie 2: Juunigatsu no Yasoukyoku	6.97	Comedy Romance Sci-Fi	12	Fall 2003	TNK	8393	5494	0.03
1132	Digimon Frontier	7.15	Action Adventure Comedy Drama Fantasy Shounen	50	Spring 2002	Toei Animation	127856	110260	0.04
1133	Tenchi Muyou! GXP	7.18	Action Comedy Harem Mecha Police Sci-Fi Shounen Space	26	Spring 2002	AIC	26064	16972	0.06
1136	Betterman	6.6	Action Adventure Psychological Comedy Mecha Drama Horror Mystery Sci-Fi	26	Spring 1999	Sunrise	12128	4348	0.12
1137	Mushrambo	6.98	Sci-Fi Adventure Drama Fantasy Shounen	32	Winter 2000	Toei Animation	13286	9001	0.06
1138	Medarot	7.07	Adventure Comedy Sci-Fi Shounen	52	Summer 1999	Bee Train	47776	35173	0.07
1139	Monkey Magic	6.03	Kids Adventure Fantasy	13	Fall 1998	Group TAC	645	301	0.21
1142	Hachimitsu to Clover II	8.26	Drama Josei Romance SliceofLife	12	Summer 2006	J.C.Staff	90170	59361	0.02
1145	Kaze no Youjinbou	7.19	Action Mystery Drama Shounen	25	Fall 2001	Studio Pierrot	10760	2788	0.11
1149	Choujuushin Gravion Zwei	6.65	Adventure Comedy Mecha Sci-Fi Shounen	12	Winter 2004	Gonzo	7642	4480	0.05
1156	I: Wish You Were Here	6.07	Action Drama Mystery Sci-Fi	4	Fall 2001	Gonzo	8628	4507	0.05
1157	Final Fantasy: Unlimited	6.2	Action Adventure Fantasy Sci-Fi Shounen	25	Fall 2001	Gonzo	32443	17162	0.16
1161	Maze☆Bakunetsu Jikuu (TV)	6.65	Adventure Comedy Fantasy Mecha Shounen	25	Spring 1997	J.C.Staff	5491	2148	0.12
1163	Neo Ranga	6.53	Adventure Horror Mecha	48	Spring 1998	Studio Pierrot	10670	2653	0.16
1164	Mahou Senshi Louie	7.17	Adventure Comedy Fantasy Magic Shounen	24	Spring 2001	J.C.Staff	18187	9919	0.06
1167	Samurai Gun	6	Action Historical Seinen	12	Fall 2004	Studio Egg	7838	2970	0.14
1172	Slayers Try	7.83	Adventure Comedy Demons Magic Fantasy Shounen	26	Spring 1997	J.C.Staff	47000	36182	0.02
1175	Metal Fighter Miku	6.04	Sci-Fi Comedy Sports Shounen	13	Summer 1994	J.C.Staff	3147	997	0.12
1179	Gakuen Senki Muryou	7.07	Sci-Fi Adventure Space Supernatural Mecha Shounen	26	Spring 2001	Madhouse	5743	1838	0.1
1180	Hyper Police	6.95	Action Comedy Police Romance Sci-Fi	25	Spring 1997	Studio Pierrot	8470	3022	0.1
1184	Lost Universe	7.03	Adventure Comedy Drama Sci-Fi Shounen Space	26	Spring 1998	E&G Films	13834	7258	0.08
1186	Battle Athletess Daiundoukai (TV)	6.9	Action Sci-Fi Adventure Comedy Sports Drama School Shounen	26	Fall 1997	AIC	7155	3521	0.09
1188	Momoiro Sisters	6.14	Comedy SliceofLife	24	Summer 1998	Studio Deen	2144	960	0.1
1189	Eden's Bowy	6.52	Action Adventure Fantasy Romance Sci-Fi	26	Spring 1999	Studio Deen	5609	2700	0.11
1193	Happy Seven: The TV Manga	6.31	Comedy Magic Fantasy School	13	Fall 2005	Studio Hibari	4592	1903	0.12
1194	Coyote Ragtime Show	6.65	Action Adventure Comedy Mecha Sci-Fi Shounen	12	Summer 2006	ufotable	17933	9204	0.1
1195	Zero no Tsukaima	7.33	Action Adventure Harem Comedy Magic Romance Ecchi Fantasy School	13	Summer 2006	J.C.Staff	651195	501416	0.03
1196	Masuda Kousuke Gekijou Gag Manga Biyori	7.21	Comedy Parody	12	Winter 2005	Artland	7917	3700	0.07
1198	Tsuyokiss	6.6	Comedy Romance School SliceofLife	12	Summer 2006	Trinet Entertainment, Studio Hibari	17462	9237	0.08
1199	Nintama Rantarou	7.03	Comedy Kids	-1	Spring 1993	Ajia-Do	5279	1	0.35
1200	Gun-dou Musashi	5.8	Adventure Samurai Fantasy	26	Spring 2006	ACC Production	6121	810	0.31
1210	NHK ni Youkoso!	8.33	Comedy Psychological Drama Romance	24	Summer 2006	Gonzo	550365	304696	0.04
1212	Oban Star-Racers	7.51	Adventure Mecha Sci-Fi Shounen	26	Spring 2006	Hal Film Maker	42068	27831	0.04
1214	Binbou Shimai Monogatari	6.88	SliceofLife Comedy Drama Seinen	10	Summer 2006	Toei Animation	17826	7275	0.1
1218	Tonagura!	6.73	Comedy Drama Ecchi Romance School	13	Summer 2006	Daume	42469	27752	0.06
1219	Chocotto Sister	6.79	Comedy Drama Romance Ecchi	24	Summer 2006	Nomad	18727	8996	0.13
1221	Demashita! Powerpuff Girls Z	6.35	Action Comedy Magic School Sci-Fi Shoujo SliceofLife SuperPower	52	Summer 2006	Toei Animation	25329	11661	0.2
1222	Bokura ga Ita	7.31	SliceofLife Drama Romance Shoujo	26	Summer 2006	Artland	196379	107584	0.09
1224	Aquarian Age: Sign for Evolution	6.12	Action Sci-Fi Adventure Music SuperPower Supernatural Romance Fantasy Shounen	13	Winter 2002	Madhouse	11838	5422	0.11
1226	Seihou Tenshi Angel Links	5.96	Action Adventure Space Comedy Romance Drama Sci-Fi	13	Spring 1999	Sunrise	7429	3144	0.11
1230	Innocent Venus	6.84	Adventure Drama Mecha Military Sci-Fi	12	Summer 2006	Brain's Base	24328	11983	0.07
1231	Saber Marionette J to X	7.3	Action Adventure Comedy Harem Mecha Sci-Fi	26	Fall 1998	Hal Film Maker	12476	9036	0.04
1236	SF Saiyuuki Starzinger	6.95	Adventure Mecha Sci-Fi Shounen Space	73	Spring 1978	Toei Animation	2089	763	0.17
1239	Bishoujo Senshi Sailor Moon SuperS	7.59	Drama Magic Romance Shoujo	39	Spring 1995	Toei Animation	90211	70299	0.02
1243	Night Head Genesis	6.78	Sci-Fi Mystery Psychological Supernatural Drama	24	Summer 2006	Bee Media	26173	9921	0.15
1246	Yuugo: Koushounin	7.13	Action Military Mystery Psychological Drama Seinen	13	Winter 2004	Artland	10113	3526	0.11
1247	Project BLUE Chikyuu SOS	6.67	Sci-Fi Adventure Comedy Shounen	6	Summer 2006	A.C.G.T.	2956	1140	0.12
1249	Zone of the Enders: Dolores, I	6.96	Action Adventure Space Comedy Mecha Military Sci-Fi	26	Spring 2001	Sunrise	10097	4463	0.09
1250	Erementar Gerad	7.3	Adventure Comedy SuperPower Magic Romance Fantasy Shounen	26	Spring 2005	Xebec	85305	51887	0.07
1251	Fushigi no Umi no Nadia	7.54	Adventure Comedy Historical Romance Sci-Fi	39	Spring 1990	Gainax	49529	18357	0.06
1254	Saint Seiya	7.77	Adventure Fantasy Sci-Fi Shounen	114	Fall 1986	Toei Animation	144978	93646	0.06
1261	Kyattou Ninden Teyandee	7.05	Action Comedy Mecha SuperPower Sci-Fi Shounen	54	Winter 1990	Tatsunoko Production	10845	5441	0.15
1264	Yoroiden Samurai Troopers	7.08	Adventure Samurai Sci-Fi Shounen	39	Spring 1988	Sunrise	15621	10110	0.07
1279	Taiyou no Ko Esteban	7.69	Adventure Historical Sci-Fi	39	Summer 1982	Studio Pierrot	9728	5549	0.05
1281	Gakkou no Kaidan	7.68	Mystery Horror Supernatural	19	Fall 2000	Studio Pierrot	117966	56120	0.06
1292	Afro Samurai	7.36	Action Adventure Samurai	5	Spring 2007	Gonzo	270362	191739	0.03
1293	Urusei Yatsura	7.69	Action Sci-Fi Adventure Comedy Drama Romance	195	Fall 1981	Studio Pierrot, Studio Deen	57537	10365	0.14
1300	Omishi Mahou Gekijou: Risky★Safety	6.64	Comedy Shounen	24	Fall 1999	APPP	3284	1175	0.15
1312	Chikyuu Bouei Kigyou Dai-Guard	7.13	Military Sci-Fi Adventure Comedy Mecha	26	Fall 1999	Xebec	7717	2937	0.11
1313	Digimon Adventure 02	7.24	Action Adventure Comedy Drama Fantasy Kids	50	Spring 2000	Toei Animation	189045	171005	0.02
1314	DT Eightron	6.33	Action Sci-Fi Shounen	26	Spring 1998	Sunrise	1724	626	0.13
1316	Idaten Jump	6.96	Game School Sports	52	Fall 2005	Production I.G	9803	7043	0.06
1325	Hamelin no Violin Hiki	6.58	Adventure Drama Fantasy	25	Fall 1996	Studio Deen	5424	1801	0.16
1327	Aoki Densetsu Shoot!	7.41	Action Comedy Drama Romance School Shounen Sports	58	Fall 1993	Toei Animation	11457	6470	0.08
1333	Fushigi na Koala Blinky	6.3	Adventure Comedy Kids Fantasy	26	Summer 1984	Nippon Animation	763	389	0.2
1337	Dororon Enma-kun	6.3	Comedy Demons Fantasy Horror Shounen Supernatural	25	Fall 1973	Toei Animation	3127	705	0.25
1349	A.D. Police (TV)	6.02	Action Sci-Fi Mecha Shounen	12	Spring 1999	Plum	9349	4668	0.09
1356	Hokuto no Ken 2	7.56	Action SuperPower Drama MartialArts	43	Spring 1987	Toei Animation	23702	13295	0.03
1371	Hi no Tori	7.11	Sci-Fi Adventure Historical Supernatural Drama	13	Spring 2004	Tezuka Productions	7419	2283	0.1
1372	Taiho Shichau zo (TV)	7.54	Action Comedy Police Seinen	47	Fall 1996	Studio Deen	22588	9011	0.09
1374	Kyoushoku Soukou Guyver (2005)	7.26	Adventure Sci-Fi Shounen	26	Summer 2005	OLM	18412	10281	0.07
1375	Watashi no Ashinaga Ojisan	7.75	Comedy Historical Romance School Shoujo SliceofLife	40	Winter 1990	Nippon Animation	11805	6213	0.06
1377	Uchuu Koukyoushi Maetel: Ginga Tetsudou 999 Gaiden	6.69	Sci-Fi Space Drama	13	Summer 2004	Azeta Pictures	3616	1474	0.06
1391	Future GPX Cyber Formula	7.35	Adventure Sci-Fi Shounen Sports	37	Spring 1991	Sunrise	5368	1998	0.08
1397	Macross 7	7.13	Action Military Sci-Fi Adventure Music Space Comedy Drama Romance Mecha Shounen	49	Fall 1994	Production Reed	24549	11834	0.08
1409	IGPX: Immortal Grand Prix	6.58	Sports Mecha Sci-Fi Shounen	5	Summer 2003	Production I.G	3624	2090	0.05
1410	IGPX: Immortal Grand Prix (2005) 2nd Season	7.29	Mecha Sci-Fi Shounen Sports	13	Spring 2006	Production I.G	9529	6771	0.02
1412	Lupin III	7.67	Action Adventure Mystery Comedy Seinen	23	Fall 1971	Tokyo Movie Shinsha	74976	28319	0.07
1425	Lupin III: Part II	7.8	Action Adventure Mystery Comedy Seinen	155	Fall 1977	Tokyo Movie Shinsha	24478	9334	0.06
1426	Lupin III: Part III	7.33	Action Adventure Comedy Seinen	50	Spring 1984	Tokyo Movie Shinsha	14914	6124	0.05
1442	Alexander Senki	5.71	Action Adventure Fantasy Historical Sci-Fi Supernatural	13	Summer 1999	Madhouse	6479	3270	0.16
1445	Mach GoGoGo	6.67	Adventure Cars Sports Shounen	52	Spring 1967	Tatsunoko Production	11572	6665	0.15
1448	Hyakujuu-Ou GoLion	6.83	Adventure Mecha Sci-Fi Shounen	52	Spring 1981	Toei Animation	9976	5740	0.11
1450	Brigadoon: Marin to Melan	7.26	Adventure Comedy Drama Mecha Sci-Fi	26	Summer 2000	Sunrise	10337	2933	0.11
1453	Maison Ikkoku	8.18	SliceofLife Comedy Drama Romance Seinen	96	Spring 1986	Studio Deen	50851	14753	0.09
1454	Kemonozume	7.39	Action Demons Horror Romance Supernatural	13	Summer 2006	Madhouse	59889	18948	0.08
1456	L/R: Licensed by Royal	6.49	Action Adventure Police Mystery	12	Winter 2003	TNK	3770	1619	0.13
1458	Uchuu no Kishi Tekkaman	6.2	Action Adventure Mecha Sci-Fi Shounen Space	26	Summer 1975	Tatsunoko Production	2386	773	0.15
1459	Uchuu no Kishi Tekkaman Blade	7.46	Action Adventure Space Mecha Romance Military Drama Sci-Fi Shounen	49	Winter 1992	Tatsunoko Production	13341	5829	0.07
1465	Hakaima Sadamitsu	6.88	Action Mecha School Sci-Fi Seinen	10	Winter 2001	Studio Deen	4949	2750	0.06
1466	Hakugei Densetsu	6.64	Sci-Fi Adventure Space	26	Spring 1997	Studio Junio, Annapuru	3172	891	0.12
1469	Monster Farm: Enbanseki no Himitsu	6.82	Action Adventure Comedy Fantasy	48	Spring 1999	TMS Entertainment	35985	24915	0.1
1470	City Hunter	7.93	Action Comedy Mystery Shounen	51	Spring 1987	Sunrise	52982	19638	0.07
1471	City Hunter 2	8.06	Action Comedy Mystery Shounen	63	Spring 1988	Sunrise	18773	10909	0.03
1472	City Hunter 3	7.82	Action Comedy Mystery Shounen	13	Fall 1989	Sunrise	14791	9054	0.02
1473	City Hunter '91	7.78	Action Comedy Mystery Shounen	13	Spring 1991	Sunrise	14654	8513	0.03
1482	D.Gray-man	8.05	Action Adventure Comedy SuperPower Demons Shounen	103	Fall 2006	TMS Entertainment	567566	258416	0.1
1483	Master Keaton	7.61	Adventure Drama Historical Mystery Seinen SliceofLife	24	Fall 1998	Madhouse	19105	4373	0.09
1485	Akachan to Boku	7.86	Comedy Drama Shoujo	35	Summer 1996	Studio Pierrot	17101	8212	0.05
1486	Kodomo no Omocha (TV)	8.04	Comedy Drama Romance Shoujo	102	Spring 1996	Gallop	49188	22988	0.1
1490	Ginga Tetsudou Monogatari	7.16	Action Adventure Drama Sci-Fi Space	26	Fall 2003	Planet	9724	3046	0.12
1491	Ginga Tetsudou 999	7.81	Sci-Fi Adventure Space Drama	113	Fall 1978	Toei Animation	25651	5030	0.12
1492	Project ARMS	6.99	Action MartialArts SuperPower	26	Spring 2001	TMS Entertainment	11090	4329	0.1
1493	Project ARMS: The 2nd Chapter	7.07	Action Fantasy MartialArts SuperPower School	26	Fall 2001	TMS Entertainment	4955	2661	0.04
1498	Black Blood Brothers	7.14	Action Comedy Fantasy Shounen Supernatural Vampire	12	Fall 2006	Group TAC	91597	66134	0.04
1502	Mahou Shoujo Pretty Sammy (1996)	6.73	Comedy Parody Magic Fantasy Seinen	26	Fall 1996	AIC	5903	2461	0.1
1508	Sci-fi Harry	6.21	Drama Horror Sci-Fi	20	Fall 2000	APPP	7338	2268	0.17
1509	Mamotte! Lollipop	6.68	Adventure Comedy Magic Romance Shoujo	13	Summer 2006	Studio Comet	20070	13637	0.06
1516	Kirarin☆Revolution	7.07	Comedy Drama Romance Shoujo	153	Spring 2006	SynergySP	24967	10579	0.2
1517	Silent Möbius	6.8	Action Sci-Fi Comedy Horror Drama Magic Romance Fantasy	26	Winter 1998	Radix	11724	5145	0.09
1519	Black Lagoon: The Second Barrage	8.19	Action Seinen	12	Fall 2006	Madhouse	380831	303731	0.01
1524	Fuujin Monogatari	7.22	SliceofLife Fantasy Supernatural School Drama	13	Fall 2004	Production I.G	14453	3716	0.1
1530	Kanon (2006)	8.01	SliceofLife Supernatural Drama Romance	24	Fall 2006	Kyoto Animation	232486	149675	0.04
1532	Suki na Mono wa Suki Dakara Shou ga Nai!!	6.71	Comedy Drama Romance Shoujo ShounenAi SliceofLife	12	Winter 2005	Zexcs	43223	28361	0.07
1533	Ai Tenshi Densetsu Wedding Peach	6.69	Adventure Magic Comedy Romance Shoujo	51	Spring 1995	OLM	18357	10689	0.12
1534	Futari wa Precure: Splash☆Star	7.13	Action Comedy Magic Fantasy Shoujo	49	Winter 2006	Toei Animation	9863	5282	0.07
1535	Death Note	8.63	Mystery Police Psychological Supernatural Thriller Shounen	37	Fall 2006	Madhouse	2589552	2146116	0.03
1536	Busou Renkin	7.35	Action Fantasy Supernatural Comedy School Shounen	26	Fall 2006	Xebec	152465	92215	0.07
1537	Genshi Shounen Ryuu	6.3	Action Sci-Fi Adventure Romance Shounen	22	Fall 1971	Toei Animation	1676	634	0.15
1538	Pumpkin Scissors	7.18	Action Comedy Drama Military	24	Fall 2006	Gonzo, AIC	35656	18078	0.09
1541	Souten no Ken	6.69	Action Historical MartialArts	22	Fall 2006	APPP	9526	3591	0.09
1542	Brain Powerd	6.11	Action Adventure Mecha Sci-Fi	26	Spring 1998	Sunrise	7998	2655	0.15
1543	Yoake Mae yori Ruriiro na: Crescent Love	7.14	Comedy Romance School Sci-Fi	12	Fall 2006	Daume	33448	18519	0.06
1546	Negima!?	7.02	Adventure Harem Comedy Supernatural Magic Romance Ecchi Fantasy School	26	Fall 2006	Shaft	77508	41121	0.09
1547	Obake no Q-tarou	-1	Comedy School SliceofLife Supernatural	96	Summer 1965	Shin-Ei Animation	557	175	0.32
1548	Shin Taketori Monogatari: 1000-nen Joou	7.2	Sci-Fi Mystery Drama	42	Spring 1981	Toei Animation	4029	1136	0.09
1550	Attack No.1	6.76	Drama Shoujo Sports	104	Winter 1970	Tokyo Movie Shinsha	6878	3519	0.12
1554	Asatte no Houkou.	7.07	Supernatural Drama	12	Fall 2006	J.C.Staff	21891	11549	0.07
1555	Tokimeki Memorial: Only Love	7.07	Comedy Harem Romance School	25	Fall 2006	Studio Pierrot, AIC ASTA	32936	17630	0.08
1557	Shounen Onmyouji	7.59	Action Magic Fantasy Supernatural Demons Historical Shoujo	26	Fall 2006	Studio Deen	48538	22739	0.07
1559	Shijou Saikyou no Deshi Kenichi	8.11	Action Comedy MartialArts School Shounen	50	Fall 2006	TMS Entertainment	242355	165628	0.03
1561	Lovedol: Lovely Idol	6.18	Music	12	Fall 2006	TNK	7457	3288	0.14
1562	Yamato Nadeshiko Shichihenge♥	7.76	Comedy Shoujo	25	Fall 2006	Nippon Animation	133452	87812	0.06
1563	Magic Knight Rayearth II	7.52	Adventure Drama Fantasy Magic Mecha Romance Shoujo	29	Spring 1995	TMS Entertainment	26978	19168	0.03
1564	Pokemon Advanced Generation	7.09	Action Adventure Comedy Kids Fantasy	192	Fall 2002	OLM	139284	118317	0.05
1565	Pokemon Diamond & Pearl	7.2	Action Adventure Comedy Kids Fantasy	191	Fall 2006	OLM	102618	82106	0.06
1567	Kaitou Saint Tail	7.55	Adventure Magic Romance Shoujo	43	Fall 1995	TMS Entertainment	15533	7881	0.07
1568	Sumomomo Momomo: Chijou Saikyou no Yome	6.91	Action Comedy Romance MartialArts Seinen	22	Fall 2006	Studio Hibari	53105	26418	0.1
1569	Otome wa Boku ni Koishiteru	7.06	Comedy Drama Romance School	12	Fall 2006	feel.	55764	31033	0.06
1570	Happiness!	6.41	Comedy Harem Magic Romance School	12	Fall 2006	Artland	32261	19044	0.08
1571	Ghost Hunt	7.81	Mystery Comedy Horror Supernatural Shoujo	25	Fall 2006	J.C.Staff	194354	107324	0.05
1572	Jungle Taitei	6.56	Adventure Kids Shounen	52	Fall 1965	Mushi Production	6059	2916	0.13
1573	Kishin Douji Zenki	6.98	Action Comedy Drama Ecchi Fantasy Horror Magic Shounen	51	Winter 1995	Studio Deen	10873	5390	0.1
1574	Get Ride! AMDriver	6.26	Adventure Mecha Sci-Fi Shounen	51	Spring 2004	Studio Deen	1613	322	0.23
1575	Code Geass: Hangyaku no Lelouch	8.72	Action Military Sci-Fi SuperPower Drama Mecha School	25	Fall 2006	Sunrise	1583882	1209288	0.02
1578	Koisuru Tenshi Angelique: Kokoro no Mezameru Toki	6.88	Adventure Comedy Drama Fantasy Magic Romance Sci-Fi Shoujo	13	Summer 2006	Satelight	9976	4511	0.08
1579	Kiniro no Corda: Primo Passo	7.48	Harem Music Comedy Drama Magic Romance School Shoujo	25	Fall 2006	Yumeta Company	86443	58150	0.05
1581	Gift: Eternal Rainbow	6.63	Comedy Drama Harem Magic Romance School	12	Fall 2006	OLM	28636	17101	0.06
1583	009-1	6.26	Action Mecha Sci-Fi Seinen	12	Fall 2006	Ishimori Entertainment	16957	6840	0.14
1587	Tenpou Ibun: Ayakashi Ayashi	6.92	Supernatural Demons Historical	25	Fall 2006	Bones	14702	4902	0.13
1588	Mamoru-kun ni Megami no Shukufuku wo!	7.08	Comedy Romance School	24	Fall 2006	Zexcs	23547	12046	0.09
1589	Bartender	7.37	Drama Seinen SliceofLife	11	Fall 2006	Palm Studio	71697	25464	0.12
1590	Legendz: Yomigaeru Ryuuou Densetsu	7.27	Action Adventure Fantasy Comedy	50	Spring 2004	Gallop	2327	958	0.14
1591	Kujibiki♥Unbalance	6.28	Comedy Romance School	12	Fall 2006	Ajia-Do	12164	5606	0.1
1592	Hataraki Man	7.03	Comedy Drama Romance Seinen SliceofLife	11	Fall 2006	Gallop	21153	7807	0.1
1594	Jigoku Shoujo Futakomori	7.93	Mystery Horror Psychological Supernatural	26	Fall 2006	Studio Deen	133270	74920	0.04
1597	Panyo Panyo Di Gi Charat	6.69	Comedy	48	Winter 2002	Madhouse	4494	1918	0.16
1599	Eat-Man '98	6.74	Action Adventure Sci-Fi Shounen SuperPower	12	Fall 1998	Studio Deen	4656	2533	0.07
1600	Galaxy Angel Rune	6.36	Sci-Fi Comedy	13	Fall 2006	Satelight	4644	1892	0.15
1601	Red Garden	7.09	Drama Mystery	22	Fall 2006	Gonzo	38752	10498	0.14
1602	Soukou no Strain	7.07	Drama Ecchi Mecha Military Sci-Fi Space	13	Fall 2006	Studio Fantasia	19978	10637	0.05
1603	Super Robot Taisen OG: Divine Wars	6.84	Action Mecha Sci-Fi	25	Fall 2006	OLM	6823	3207	0.1
1604	Katekyo Hitman Reborn!	8.18	Action Comedy Shounen SuperPower	203	Fall 2006	Artland	461380	232534	0.1
1606	Kekkaishi (TV)	7.63	Action Adventure Comedy Demons Supernatural Shounen	52	Fall 2006	Sunrise	92777	53662	0.07
1607	Venus Versus Virus	6.39	Drama Romance Supernatural	12	Winter 2007	Studio Hibari	26518	13122	0.11
1608	Salaryman Kintarou	7.49	Comedy Drama MartialArts Seinen	20	Winter 2001	JCF	7699	3080	0.09
1614	Captain Tsubasa: Road to 2002	7.4	Action Sports Shounen	52	Fall 2001	Madhouse, Group TAC	41313	35329	0.03
1617	Massugu ni Ikou.	6.48	Comedy Josei Romance SliceofLife	4	Summer 2003	Yumeta Company	2959	1071	0.07
1618	Soreyuke! Uchuu Senkan Yamamoto Yohko (1999)	6.6	Action Sci-Fi Adventure	26	Spring 1999	J.C.Staff	4162	1114	0.13
1623	G-On Riders	5.84	Action Sci-Fi Comedy School	13	Summer 2002	Shaft, TNK	3836	1708	0.11
1628	Maou Dante	6.06	Action Demons Horror Shounen Supernatural	13	Summer 2002	Magic Bus	7869	3661	0.09
1629	Devilman Lady	6.66	Action Psychological Drama Horror	26	Fall 1998	TMS Entertainment	18214	5735	0.11
1638	Peter Pan no Bouken	6.84	Adventure Fantasy	41	Winter 1989	Nippon Animation	3568	2139	0.08
1642	Sugar Sugar Rune	7.44	Fantasy Magic Shoujo	51	Summer 2005	Studio Pierrot	30567	17112	0.08
1650	Uchuu Senkan Yamato	7.59	Action Adventure Drama Military Sci-Fi Space	26	Fall 1974	Group TAC	21266	6643	0.07
1651	Uchuu Senkan Yamato 2	7.42	Action Military Sci-Fi Adventure Space Drama	26	Fall 1978	Group TAC	6556	2923	0.05
1652	Uchuu Senkan Yamato III	7.07	Action Military Sci-Fi Adventure Space Drama	25	Fall 1980	Academy Productions	4720	1911	0.05
1655	Nerima Daikon Brothers	7.33	Comedy Music	12	Winter 2006	Studio Hibari	7651	3694	0.1
1656	PostPet Momobin	-1	Comedy Kids	24	Summer 2004	Unknown	359	140	0.29
1660	Kurogane Communication	6.66	Action Adventure Drama Sci-Fi	24	Fall 1998	APPP	4644	1521	0.11
1661	Cutey Honey	6.45	Action Sci-Fi School	25	Fall 1973	Toei Animation	13088	3750	0.14
1663	Haha wo Tazunete Sanzenri	7.38	Adventure Drama Historical SliceofLife	52	Winter 1976	Nippon Animation	7736	3386	0.07
1664	Babel Nisei (2001)	5.75	Action Adventure Supernatural Mystery Sci-Fi Shounen	13	Fall 2001	Vega Entertainment	2810	1173	0.12
1666	Babel Nisei	6.37	Sci-Fi Adventure Supernatural Shounen	39	Winter 1973	Toei Animation	1380	452	0.18
1667	Barom One	5.22	Action Sci-Fi Supernatural Shounen	13	Winter 2003	E&G Films	1650	605	0.17
1668	Bakuten Shoot Beyblade G Revolution	6.93	Action Adventure Comedy Sci-Fi Shounen Sports	52	Winter 2003	Madhouse	38585	33525	0.03
1669	Bakuten Shoot Beyblade 2002	6.68	Action Adventure Comedy Sci-Fi Shounen Sports	51	Winter 2002	Nippon Animation	52260	46158	0.03
1672	Bomberman B-Daman Bakugaiden	6.48	Sci-Fi Comedy Shounen	48	Winter 1998	Madhouse	2364	1431	0.11
1673	Bomberman B-Daman Bakugaiden Victory	6.4	Sci-Fi Shounen	50	Winter 1999	Madhouse	1515	849	0.11
1674	Captain Tsubasa J	7.27	Action Sports Shounen	47	Fall 1994	Studio Comet	23423	20062	0.03
1675	Chou Robot Seimeitai Transformers Micron Densetsu	6.76	Action Sci-Fi Mecha Shounen	52	Winter 2003	Actas	7560	5585	0.08
1676	Cosmo Warrior Zero	6.56	Action Adventure Military Sci-Fi Space	13	Summer 2001	Vega Entertainment	4418	2017	0.08
1678	Cyborg 009: The Cyborg Soldier	7.28	Action Sci-Fi Adventure Mecha Shounen	50	Fall 2001	Shaft, Brain's Base, Japan Vistec	25836	11936	0.12
1683	Di Gi Charat Nyo	7.04	Comedy Fantasy Sci-Fi	104	Spring 2003	Madhouse	5709	2342	0.17
1684	Dotto Koni-chan	7.26	Comedy	26	Fall 2000	Shaft	2864	1562	0.1
1685	Duel Masters	5.85	Action Adventure Comedy Shounen	26	Fall 2002	Studio Hibari	19807	14285	0.13
1688	Nanatsu-iro★Drops	7.03	Magic Romance School	12	Summer 2007	Diomedéa	20196	10184	0.09
1690	Bokura no	7.66	Sci-Fi Psychological Drama Mecha Seinen	24	Spring 2007	Gonzo	149892	49710	0.08
1691	Kaze no Stigma	7.26	Action Magic Romance Fantasy Shounen	24	Spring 2007	Gonzo	375013	261233	0.05
1693	Reideen	6.56	Action Mecha Sci-Fi	26	Winter 2007	Production I.G	7661	3048	0.15
1694	iDOLM@STER Xenoglossia	6.52	Action Comedy Mecha Sci-Fi	26	Spring 2007	Sunrise	20153	6785	0.16
1695	Les Misérables: Shoujo Cosette	7.86	SliceofLife Historical Drama Shoujo	52	Winter 2007	Nippon Animation	21500	7925	0.08
1698	Nodame Cantabile	8.32	Music SliceofLife Comedy Drama Romance Josei	23	Winter 2007	J.C.Staff	262005	136757	0.04
1699	Romeo x Juliet	7.66	Drama Fantasy Historical Romance	24	Spring 2007	Gonzo	154988	78891	0.08
1703	Tokyo Tribe 2	6.73	Action Drama	13	Fall 2006	Madhouse	9356	2635	0.13
1704	Eat-Man	6.46	Action Adventure Sci-Fi Shounen SuperPower	12	Winter 1997	Studio Deen	8170	3066	0.1
1705	Genma Taisen: Shinwa Zenya no Shou	5.1	Adventure Drama Horror Sci-Fi Shounen Supernatural	13	Winter 2002	Unknown	1517	630	0.16
1706	Gun Frontier	6.58	Action Adventure Drama Historical Sci-Fi Seinen	13	Spring 2002	Echo	8243	3714	0.08
1707	Kinnikuman II Sei	6.9	Action Sci-Fi Comedy Sports MartialArts Shounen	51	Winter 2002	Toei Animation	12756	8541	0.1
1708	Majuu Sensen: The Apocalypse	5.39	Action SuperPower Demons Supernatural Shounen	13	Winter 2003	Unknown	1881	697	0.13
1710	Rockman.EXE	6.93	Action Game Sci-Fi Adventure Comedy Mecha Shounen	56	Spring 2002	Xebec	31588	21748	0.09
1711	Ryuusei Sentai Musumet	5.89	Adventure Comedy Ecchi Romance Sci-Fi	13	Fall 2004	TNK	2305	952	0.12
1712	Shin Seiki Den Mars	5.67	Mecha Sci-Fi Shounen	13	Fall 2002	Unknown	1062	387	0.15
1713	Submarine Super 99	6.24	Action Military Sci-Fi Adventure Shounen	13	Spring 2003	Vega Entertainment	1408	506	0.11
1721	Hitohira	6.77	Drama Romance School Seinen SliceofLife	12	Spring 2007	Xebec	18073	8774	0.09
1722	Nagasarete Airantou	7.27	Harem Comedy Romance Ecchi Fantasy Shounen	26	Spring 2007	feel.	84272	47879	0.06
1724	Saint October	6.39	Adventure Fantasy	26	Winter 2007	Studio Comet	5362	952	0.24
1726	Devil May Cry	6.98	Action Demons Fantasy	12	Summer 2007	Madhouse	260197	183192	0.06
1727	Shinkyoku Soukai Polyphonica	6.84	Drama Fantasy Music Romance School	12	Spring 2007	Ginga Ya	29050	12797	0.09
1728	Super GALS! Kotobuki Ran	7.42	Comedy SliceofLife Shoujo	52	Spring 2001	Studio Pierrot	15854	7150	0.13
1735	Naruto: Shippuuden	8.16	Action Adventure Comedy SuperPower MartialArts Shounen	500	Winter 2007	Studio Pierrot	1543765	865643	0.09
1737	Uchuu Senshi Baldios	6.5	Sci-Fi Adventure Space Drama Mecha Shounen	34	Summer 1980	Production Reed	1603	418	0.15
1738	Muteki Kanban Musume	7.11	Action Comedy MartialArts Parody Shounen	12	Summer 2006	Telecom Animation Film	17168	8515	0.1
1739	Shibawanko no Wa no Kokoro	-1	Kids	80	Spring 2006	Three-d	574	104	0.32
1740	Naikaku Kenryoku Hanzai Kyousei Torishimarikan Zaizen Joutarou	5.51	Action Police Drama Seinen	11	Summer 2006	Trans Arts	1188	234	0.24
1743	Super Milk-chan	5.83	Action Comedy Parody Sci-Fi	14	Summer 1998	Unknown	3746	1874	0.21
1744	Wagamama☆Fairy Mirumo de Pon!	7.3	Kids Adventure Fantasy Magic Comedy Romance School Drama Shoujo	172	Spring 2002	Studio Hibari	15110	7921	0.13
1745	Wild 7 Another Bouryaku Unga	5.28	Action Adventure Police Shounen	13	Spring 2002	Unknown	747	250	0.2
1746	Zoids Fuzors	6.42	Adventure Mecha Sci-Fi Shounen	26	Fall 2004	Unknown	9771	6182	0.1
1769	Oh! Super Milk-chan	5.99	Action Parody Comedy Sci-Fi	12	Winter 2000	Studio Pierrot	4437	2415	0.18
1771	Ring ni Kakero 1: Nichibei Kessen-hen	6.5	Action Sports Shounen	12	Spring 2006	Toei Animation	1759	824	0.08
1775	Jikuu Tenshou Nazca	5.65	Action Adventure Drama Magic Fantasy	12	Spring 1998	Genco, Radix	5386	1352	0.14
1778	Dae Jang Geum: Jang Geum's Dream	7.22	Adventure Comedy Historical	26	Fall 2005	Unknown	2882	1193	0.09
1792	Overman King Gainer	6.89	Action Adventure Mecha Sci-Fi Shounen	26	Fall 2002	Sunrise	10205	3632	0.11
1806	Master Mosquiton '99	6.52	Action Adventure Comedy Supernatural Vampire	26	Fall 1997	Unknown	3511	1538	0.12
1807	Prism Ark	6.45	Action Fantasy Magic Comedy Drama	12	Fall 2007	Front Line	20720	10599	0.1
1808	Kamichama Karin	7.28	Comedy Fantasy Magic Romance School Shoujo	26	Spring 2007	Satelight	43946	25562	0.08
1810	Kyoushirou to Towa no Sora	6.48	Drama Magic Romance Shounen	12	Winter 2007	TNK	37987	17005	0.11
1812	Hanoka	3.67	Sci-Fi	12	Summer 2006	RAMS	3442	1661	0.15
1816	Sonic X	6.46	Sci-Fi Adventure Comedy Kids Mecha Shounen	78	Spring 2003	TMS Entertainment	56222	40315	0.11
1818	Claymore	7.78	Action Adventure SuperPower Demons Supernatural Fantasy Shounen	26	Spring 2007	Madhouse	544135	331697	0.05
1823	Shin Hakkenden	7.17	Action Adventure MartialArts Sci-Fi	26	Spring 1999	Public & Basic	4982	2478	0.06
1826	Deltora Quest	7.04	Adventure Kids Fantasy	65	Winter 2007	OLM	22531	10355	0.11
1827	Seirei no Moribito	8.17	Action Adventure Historical Fantasy	26	Spring 2007	Production I.G	177603	76576	0.05
1835	Ryuusei no Rockman	7.11	Action Game Sci-Fi Shounen	55	Fall 2006	Xebec	10947	6549	0.08
1836	Shuffle! Memories	6.54	Comedy Drama Ecchi Fantasy Harem Magic Romance School Seinen	12	Winter 2007	Asread	48183	30370	0.06
1837	Sumeba Miyako no Cosmos-sou Suttoko Taisen Dokkoida	6.81	Action Sci-Fi Adventure Comedy Parody Shounen	12	Summer 2003	ufotable	5002	2244	0.09
1839	Jagainu-kun	6.44	Adventure Fantasy Kids Shoujo SliceofLife	26	Spring 2004	Unknown	1292	686	0.16
1840	Zero no Tsukaima: Futatsuki no Kishi	7.49	Action Adventure Harem Comedy Magic Romance Ecchi Fantasy School	12	Summer 2007	J.C.Staff	415292	358412	0.01
1842	Major S3	8.27	Drama Shounen Sports	26	Winter 2007	Studio Hibari	56078	47761	0.01
1844	Clamp Gakuen Tanteidan	6.91	Action Mystery Comedy Shoujo	26	Spring 1997	Studio Pierrot	11517	5539	0.1
1845	Gaiking: Legend of Daiku-Maryu	7.13	Action Mecha Sci-Fi	39	Fall 2005	Toei Animation	3966	1498	0.09
1846	Princess Nine: Kisaragi Joshikou Yakyuubu	7.15	Sports Romance Drama	26	Spring 1998	Phoenix Entertainment	9614	3926	0.08
1848	Haou Taikei Ryuu Knight	6.6	Action Adventure Fantasy Mecha	52	Spring 1994	Sunrise	2538	646	0.16
1852	Hidamari Sketch	7.45	Comedy School Seinen SliceofLife	12	Winter 2007	Shaft	66077	27689	0.08
1853	Cutey Honey F	6.57	Action Adventure Comedy Magic Romance Sci-Fi Shoujo	39	Winter 1997	Toei Animation	7495	2265	0.13
1858	Gakuen Utopia Manabi Straight!	7.28	SliceofLife Comedy School	12	Winter 2007	ufotable	26955	11465	0.09
1860	Tokyo Majin Gakuen Kenpucho: Tou	7.15	Action Horror Supernatural Drama MartialArts Fantasy School	14	Winter 2007	AIC Spirits, BeSTACK	66276	29428	0.08
1863	Silk Road Shounen Yuuto	-1	Adventure Fantasy Historical	26	Fall 2006	OLM	473	71	0.34
1864	Koisuru Tenshi Angelique: Kagayaki no Ashita	6.99	Drama Fantasy Harem Romance Shoujo	12	Winter 2007	Satelight	9160	4097	0.06
1865	Getsumen To Heiki Mina	6.3	Comedy Parody Sci-Fi	11	Winter 2007	Gonzo	6817	2272	0.17
1868	Giniro no Olynsis: Tokito	6.3	Adventure Drama Romance Mecha	12	Fall 2006	Toei Animation	7074	3285	0.1
1872	Saru Getchu: On Air	6.15	Adventure Comedy Fantasy Kids Romance Shounen	26	Spring 2006	Xebec	1014	321	0.23
1873	Plawres Sanshirou	7.37	Adventure Sports Mecha School Sci-Fi Shounen	37	Summer 1983	Kaname Productions	2928	1300	0.09
1878	Kaze no Shoujo Emily	7.36	Historical Drama Shoujo	26	Spring 2007	TMS Entertainment	5512	2424	0.07
1881	Sasami: Mahou Shoujo Club	6.62	Fantasy Magic School	13	Spring 2006	AIC Spirits	6349	2706	0.09
1882	Sasami: Mahou Shoujo Club 2	6.71	Fantasy Magic School	13	Fall 2006	Unknown	3569	1824	0.05
1883	Kappa no Kaikata	6.3	Comedy	26	Fall 2004	Picture Magic	1777	888	0.13
1884	Himesama Goyoujin	6.34	Comedy	12	Spring 2006	Nomad	2185	910	0.17
1885	Master of Epic: The Animation Age	6.07	Fantasy Game Comedy	12	Winter 2007	Gonzo, Palm Studio	1651	440	0.25
1886	Fushigiboshi no☆Futagohime Gyu!	7.08	Magic Comedy Shoujo	52	Spring 2006	J.C.Staff	4396	2124	0.08
1887	Lucky☆Star	7.77	SliceofLife Comedy Parody School	24	Spring 2007	Kyoto Animation	532794	302483	0.09
1889	Higurashi no Naku Koro ni Kai	8.23	Mystery Psychological Supernatural Thriller	24	Summer 2007	Studio Deen	385728	254705	0.03
1891	YAT Anshin! Uchuu Ryokou	6.98	Adventure Comedy Sci-Fi Shounen	50	Fall 1996	Xebec, Group TAC	1611	741	0.12
1892	YAT Anshin! Uchuu Ryokou 2	6.81	Adventure Comedy Sci-Fi Shounen	25	Spring 1998	Group TAC	816	435	0.11
1893	Azuki-chan	6.73	Comedy Romance Shoujo SliceofLife	117	Spring 1995	Madhouse	2325	1121	0.14
1897	Zettai Muteki Raijin-Oh	6.76	Adventure Mecha School Sci-Fi	51	Spring 1991	Sunrise	1305	470	0.15
1899	Masou Kishin Cybuster	6.1	Adventure Mecha Sci-Fi Shounen	26	Spring 1999	Production Reed	2546	923	0.13
1912	Marginal Prince: Gekkeiju no Ouji-tachi	5.91	Romance School ShounenAi	13	Fall 2006	Unknown	12026	4356	0.17
1914	Saiunkoku Monogatari 2nd Season	8.07	Adventure Comedy Drama Fantasy Historical Romance	39	Spring 2007	Madhouse	34680	19727	0.04
1915	Mahou Shoujo Lyrical Nanoha StrikerS	7.65	Action Magic Comedy SuperPower Drama	26	Spring 2007	Seven Arcs	47291	30069	0.04
1929	Futari wa Precure: Max Heart	6.94	Action Comedy Fantasy Magic Shoujo	47	Winter 2005	Toei Animation	13407	8207	0.06
1932	Yes! Precure 5	7.14	Action Fantasy Magic School Shoujo	49	Winter 2007	Toei Animation	12406	6491	0.08
1936	Misute♡naide Daisy	5.65	Sci-Fi Comedy Romance Shounen	12	Summer 1997	Studio Deen	1286	451	0.17
1941	Moonlight Mile 1st Season: Lift Off	7.18	Adventure Drama Sci-Fi Space	12	Spring 2007	Studio Hibari	9192	3261	0.11
1942	Rocket Girls	6.91	Adventure Sci-Fi Space	12	Winter 2007	Mook DLE	7104	3001	0.08
1946	Ashita no Nadja	7.59	Adventure Drama Historical Romance Shoujo	50	Winter 2003	Toei Animation	24551	11265	0.08
1947	Kikou Sennyo Rouran	5.82	Action Fantasy Mecha	28	Fall 2002	Zexcs	1649	413	0.17
1955	Kimagure Robot	6.03	Comedy Fantasy Sci-Fi	10	Fall 2004	Studio 4°C	2067	1238	0.05
1956	Ikkitousen: Dragon Destiny	6.8	Action SuperPower Ecchi MartialArts School	12	Winter 2007	Arms	66590	44750	0.04
1960	Sore Ike! Anpanman	6.38	Comedy Kids Fantasy	-1	Fall 1988	TMS Entertainment	2241	2	0.45
1962	Chikyuu Bouei Kazoku	6.57	Action Sci-Fi Comedy Drama	13	Winter 2001	Group TAC	1517	509	0.14
1965	Sola	7.22	Drama Romance SliceofLife Supernatural	13	Spring 2007	Nomad	90680	53005	0.05
1972	Meitantei Holmes	7.37	Action Adventure Mystery Comedy Police	26	Fall 1984	Gallop, TMS Entertainment	8553	3607	0.08
1974	Glass no Kamen (2005)	8.09	Drama Shoujo	51	Spring 2005	Tokyo Movie Shinsha	31029	12162	0.08
1975	Mutekiou Tri-Zenon	6.15	Mecha Sci-Fi	22	Fall 2000	E&G Films	1010	224	0.24
1985	UFO Robo Grendizer	7.53	Mecha Sci-Fi Shounen	74	Fall 1975	Toei Animation	8535	5335	0.07
1986	Wakusei Robo Danguard Ace	6.33	Mecha Military Sci-Fi Shounen Space	56	Spring 1977	Toei Animation	1206	334	0.19
1988	Himawari!!	6.47	Comedy Romance	13	Winter 2007	Arms	9824	4651	0.07
1991	Juusou Kikou Dancougar Nova	5.99	Mecha	12	Winter 2007	Production Reed	4877	2121	0.11
2001	Tengen Toppa Gurren Lagann	8.66	Action Adventure Comedy Mecha Sci-Fi	27	Spring 2007	Gainax	1213765	805570	0.04
2002	Heroic Age	7.56	Action Mecha Military Sci-Fi Space	26	Spring 2007	Xebec	96249	51277	0.08
2004	Hanada Shounen-shi	8.01	Comedy Drama Seinen SliceofLife Supernatural	25	Fall 2002	Madhouse	11746	3917	0.09
2011	Taiho Shichau zo Special	7.06	Action Comedy Police Shounen	20	Spring 1999	Studio Deen	4988	2735	0.03
2012	Jigoku Sensei Nube	7.55	Adventure Comedy Horror Romance School Shounen Supernatural	49	Spring 1996	Toei Animation	15317	5828	0.09
2014	Taiho Shichau zo: Second Season	7.41	Action Comedy Police Shounen	26	Spring 2001	Studio Deen	8412	4778	0.04
2024	Yoshimune	5.98	Comedy Historical	24	Spring 2006	Unknown	595	133	0.34
2025	Darker than Black: Kuro no Keiyakusha	8.12	Action Sci-Fi Mystery SuperPower	25	Spring 2007	Bones	759790	455508	0.04
2026	Hayate no Gotoku!	7.58	Action Harem Comedy Parody Romance Shounen	52	Spring 2007	SynergySP	193788	96585	0.11
2030	El Cazador de la Bruja	7.24	Adventure Drama Mystery	26	Spring 2007	Bee Train	45263	18197	0.11
2031	Shining Tears X Wind	6.52	Action Adventure Fantasy Magic	13	Spring 2007	Studio Deen	30910	14829	0.1
2032	Wellber no Monogatari: Sisters of Wellber	6.68	Action Adventure Comedy Drama Fantasy Historical	13	Spring 2007	Trans Arts	7883	2884	0.13
2034	Lovely★Complex	8.06	Comedy Romance Shoujo	24	Spring 2007	Toei Animation	437765	284143	0.05
2035	Eikoku Koi Monogatari Emma: Molders-hen	7.87	SliceofLife Romance Historical Drama Seinen	12	Spring 2007	Ajia-Do	20822	12604	0.03
2036	Cosmic Baton Girl Comet-san☆	7.15	Adventure Comedy Drama Magic Sci-Fi	43	Spring 2001	Nippon Animation	3094	1328	0.13
2037	Hime-chan no Ribbon	7.44	Comedy Fantasy Magic Romance School Shoujo	61	Fall 1992	Gallop	6766	2683	0.11
2038	Mahou no Star Magical Emi	6.7	Comedy Magic Shoujo SliceofLife	38	Summer 1985	Studio Pierrot	3528	1192	0.1
2039	Mahou no Yousei Persia	6.63	Comedy Magic	48	Summer 1984	Studio Pierrot	2180	554	0.14
2040	Mahou no Angel Sweet Mint	6.37	Magic Shoujo	47	Spring 1990	Production Reed	1901	352	0.21
2041	Ai to Yuuki no Pig Girl Tonde Buurin	6.63	Parody Adventure Fantasy Magic Comedy Romance School Shoujo	51	Fall 1994	Nippon Animation	8615	5144	0.13
2043	Cat's Eye	7.18	Action Adventure Comedy Mystery Romance	73	Summer 1983	Tokyo Movie Shinsha	14529	6701	0.1
2044	Mahou no Tenshi Creamy Mami	7.13	Comedy Fantasy Magic Romance School Sci-Fi Shoujo	52	Summer 1983	Studio Pierrot	10382	3302	0.1
2074	Kero Kero Chime	6.39	Adventure Fantasy Comedy	30	Spring 1997	Unknown	998	305	0.18
2075	Kiko-chan Smile	6.39	Adventure Comedy Josei SliceofLife	51	Fall 1996	Eiken, Magic Bus	830	226	0.22
2076	Kindaichi Shounen no Jikenbo	7.98	Mystery Shounen	148	Spring 1997	Toei Animation	21714	4931	0.1
2084	NG Knight Ramune & 40	6.93	Adventure Comedy Fantasy Mecha Shounen	38	Spring 1990	Production Reed	2423	850	0.12
2087	VS Knight Lamune & 40 Fire	6.83	Action Comedy Fantasy Mecha Shounen	26	Spring 1996	Production Reed	2150	928	0.11
2089	Choujikuu Seiki Orguss	6.52	Action Sci-Fi Adventure Romance Mecha	35	Summer 1983	Artland	4601	1199	0.1
2104	Seto no Hanayome	7.75	Comedy Parody Romance School Shounen	26	Spring 2007	Gonzo	271047	146558	0.08
2105	Touka Gettan	6.56	Supernatural Drama Romance	26	Spring 2007	Studio Deen	17664	4301	0.21
2106	Kiss Dum: Engage Planet	6.6	Mecha Military Sci-Fi	26	Spring 2007	Satelight	9289	2818	0.15
2108	Rockman.EXE Axess	7.14	Action Adventure Comedy Game Mecha Sci-Fi Shounen	51	Fall 2003	Xebec	14458	9975	0.05
2109	Rockman.EXE Stream	7.08	Action Adventure Game Mecha School Sci-Fi Shounen	51	Fall 2004	Xebec	7712	4574	0.05
2110	Rockman.EXE Beast	7.06	Action Adventure Game Mecha Sci-Fi Shounen	25	Fall 2005	Xebec	6781	3897	0.05
2112	Over Drive	7.59	Shounen Sports	26	Spring 2007	Xebec	39330	23775	0.05
2113	Tenkuu Senki Shurato	7.23	Action Magic Fantasy Shounen	38	Spring 1989	Tatsunoko Production	8654	4943	0.07
2116	Captain Tsubasa	7.3	Action Shounen Sports	128	Fall 1983	Tsuchida Productions	65879	52195	0.06
2127	Chouja Raideen	6.31	Adventure Mecha Sci-Fi Shounen	38	Fall 1996	Sunrise	1834	681	0.14
2128	Yuusha Raideen	6.55	Action Adventure Mecha Sci-Fi Shounen	50	Spring 1975	Sunrise	1961	393	0.18
2129	True Tears	7.36	Drama Romance School	13	Winter 2008	P.A. Works	184013	109972	0.03
2130	Kaibutsu Oujo	7.02	Action Comedy Supernatural Horror Vampire Shounen	25	Spring 2007	Madhouse	67817	32069	0.1
2142	Blue Dragon	6.41	Adventure Comedy Fantasy Supernatural	51	Spring 2007	Studio Pierrot	42896	26860	0.13
2150	Tanoshii Muumin Ikka	8.12	Adventure Comedy Fantasy Kids SliceofLife	78	Spring 1990	Telescreen	18144	10243	0.05
2151	Nils no Fushigi na Tabi	7.09	Kids Adventure Fantasy	52	Winter 1980	Studio Pierrot	4858	3572	0.07
2152	Oh! Edo Rocket	7.23	Comedy Drama Fantasy Historical Sci-Fi	26	Spring 2007	Madhouse	10981	4577	0.12
2153	Saint Beast: Kouin Jojishi Tenshi Tan	6.35	Fantasy	13	Spring 2007	Unknown	6096	2617	0.11
2155	Kono Aozora ni Yakusoku wo: Youkoso Tsugumi Ryou e	6.21	Harem Romance School	13	Spring 2007	Artland	18445	6729	0.13
2156	Bakugan Battle Brawlers	6.32	Action Fantasy Game	52	Spring 2007	TMS Entertainment	74727	62497	0.06
2157	Koutetsushin Jeeg	6.9	Mecha Sci-Fi	13	Spring 2007	Actas	5422	2580	0.08
2158	Terra e... (TV)	7.92	Action Drama Military Sci-Fi Space	24	Spring 2007	Tokyo Kids, Minami Machi Bugyousho	53292	19273	0.07
2159	Ookiku Furikabutte	7.95	Comedy Seinen Sports	25	Spring 2007	A-1 Pictures	82720	42281	0.05
2161	Skull Man	6.65	Action Mystery SuperPower	13	Spring 2007	Bones	25470	8975	0.1
2162	Koutetsu Sangokushi	6.32	Adventure Historical Shounen	25	Spring 2007	Picture Magic	8264	2433	0.2
2164	Dennou Coil	8.09	Adventure Comedy Drama Mystery Sci-Fi	26	Spring 2007	Madhouse	121554	41650	0.07
2165	Gegege no Kitarou (2007)	6.93	Comedy Horror Fantasy	100	Spring 2007	Toei Animation	4172	1137	0.17
2166	Doujin Work	6.79	SliceofLife Comedy	12	Summer 2007	Remic	25307	15388	0.06
2167	Clannad	8.07	Comedy Drama Romance School SliceofLife Supernatural	23	Fall 2007	Kyoto Animation	1095634	725568	0.04
2200	Muteki Choujin Zanbot 3	6.89	Action Mecha Drama Sci-Fi Shounen	23	Fall 1977	Sunrise	3475	1212	0.09
2203	Waga Seishun no Arcadia: Mugen Kidou SSX	7.4	Action Adventure Drama Sci-Fi Space	22	Fall 1982	Toei Animation	5179	2333	0.06
2204	Karakurizoushi Ayatsuri Sakon	7.39	Mystery Horror Thriller Shounen	26	Fall 1999	TMS Entertainment	9687	3145	0.11
2213	Black Jack (TV)	7.62	Drama	61	Fall 2004	Tezuka Productions	27479	11383	0.11
2214	Black Jack 21	7.59	Action Drama	17	Spring 2006	Tezuka Productions	10702	5837	0.05
2215	Kishin Taisen Gigantic Formula	6.87	Mecha Sci-Fi	26	Spring 2007	Brain's Base	5931	2211	0.14
2216	Shigurui	7.41	Action Historical Psychological Drama MartialArts Samurai Seinen	12	Summer 2007	Madhouse	94434	35064	0.07
2221	Aishite Knight	6.72	Comedy Romance Shoujo	42	Spring 1983	Toei Animation	6615	3439	0.09
2222	Dr. Slump: Arale-chan	7.16	Sci-Fi SliceofLife Comedy Shounen	243	Spring 1981	Toei Animation	11261	4671	0.15
2223	Maple Town Monogatari	6.8	SliceofLife Fantasy	52	Winter 1986	Toei Animation	1955	868	0.14
2224	Hikari no Densetsu	6.6	Music Romance Shoujo Sports	19	Spring 1986	Tatsunoko Production	3888	1588	0.09
2225	Alps no Shoujo Heidi	7.28	SliceofLife Historical Drama	52	Winter 1974	Nippon Animation	26022	18659	0.05
2226	Mori no Tonto-tachi	6.19	Fantasy Kids	23	Fall 1984	Nippon Animation, Shaft	547	269	0.22
2227	Lady Lady!!	7.51	Historical Drama Shoujo	21	Fall 1987	Toei Animation	4882	2793	0.07
2228	Honoo no Toukyuuji: Dodge Danpei	7.28	Comedy Sports	47	Fall 1991	Animation 21	4015	2973	0.05
2229	Dragon Quest: Dai no Daibouken (TV)	7.63	Adventure Comedy Demons Magic MartialArts Fantasy Shounen	46	Fall 1991	Toei Animation	18558	11010	0.06
2230	Hana no Ko Lunlun	6.85	Adventure Drama Magic Shoujo	50	Winter 1979	Toei Animation	4001	1633	0.11
2231	Miyuki	6.72	Romance School Shounen	37	Spring 1983	Unknown	2966	774	0.15
2232	Funny Pets	5.09	Comedy	12	Winter 2006	Unknown	791	375	0.18
2233	Ocha-ken: Chokotto Monogatari	6.3	Comedy Kids	26	Fall 2003	Unknown	974	456	0.14
2234	Panda-Z: The Robonimation	6.23	Action Comedy Kids Mecha Parody Sci-Fi Shounen	30	Spring 2004	Unknown	1927	808	0.2
2243	Karasu Tengu Kabuto	6.49	Action Adventure Historical Drama	39	Summer 1990	Unknown	1940	415	0.19
2244	Rakugo Tennyo Oyui	6.06	Comedy Historical	12	Winter 2006	TNK	1824	397	0.18
2245	Seraphim Call	6.1	Romance Drama Sci-Fi	12	Fall 1999	Sunrise	4042	1231	0.12
2246	Mononoke	8.42	Mystery Historical Horror Demons Psychological Supernatural Fantasy Seinen	12	Summer 2007	Toei Animation	215972	71537	0.05
2251	Baccano!	8.42	Action Comedy Historical Mystery Supernatural	13	Summer 2007	Brain's Base	714937	364241	0.04
2252	Devilman	6.45	Action Horror Demons Supernatural	39	Summer 1972	Toei Animation	21086	6034	0.12
2253	Mazinger Z	7.26	Action Drama Mecha Sci-Fi Shounen	92	Winter 1973	Toei Animation	12837	5913	0.1
2254	Sentou Mecha Xabungle	7.22	Military Sci-Fi Mecha Shounen	50	Winter 1982	Sunrise	3813	927	0.11
2255	Choujuu Kishin Dancougar	6.65	Action Sci-Fi Mecha	38	Spring 1985	Production Reed	3822	1083	0.11
2257	Taiyou no Kiba Dagram	7.33	Mecha Military Drama Sci-Fi Shounen	75	Fall 1981	Sunrise	3820	835	0.11
2259	Dr. Rin ni Kiitemite!	6.79	Comedy Fantasy Magic Romance School Shoujo	51	Spring 2001	Studio Comet	3294	875	0.2
2280	Hare Tokidoki Buta (TV)	6.5	Comedy Parody	61	Summer 1997	Unknown	978	331	0.26
2281	Jikuu Tantei Genshi-kun	6.31	Adventure Comedy Fantasy Mystery Sci-Fi Shounen	39	Fall 1998	Group TAC	7925	5239	0.13
2282	Tezuka Osamu no Kyuuyaku Seisho Monogatari: In the Beginning	6.54	Historical	26	Spring 1997	Tezuka Productions	1118	248	0.18
2283	Red Baron	7.02	Action MartialArts Mecha Sci-Fi Shounen Sports	49	Spring 1994	Tokyo Movie Shinsha	2803	1231	0.13
2284	Transformers: Car Robots	6.55	Adventure Comedy Mecha Sci-Fi Shounen	39	Spring 2000	Gallop	3932	2799	0.08
2285	D.I.C.E.	6.33	Action Adventure Kids Mecha Sci-Fi Shounen	40	Winter 2006	Xebec	4073	2625	0.15
2287	Kakutou Ryouri Densetsu Bistro Recipe	6.08	Game Adventure Comedy Fantasy Shounen	26	Winter 2002	Group TAC	4098	2180	0.18
2288	Akihabara Dennou-gumi	6.56	Adventure Mecha Sci-Fi Shoujo	26	Spring 1998	Production Reed	5992	2822	0.12
2308	Lime-iro Ryuukitan X	5.52	Harem Historical Supernatural Drama Ecchi Mecha	13	Winter 2005	A.C.G.T.	3683	1006	0.14
2316	Akakichi no Eleven	6.65	Sports	52	Spring 1970	Unknown	1648	629	0.21
2330	Jibaku-kun	7.39	Adventure Fantasy Comedy	26	Fall 1999	Trans Arts	10674	6498	0.06
2331	Uchuu Densetsu Ulysses 31	7.08	Action Adventure Sci-Fi Space	26	Fall 1981	TMS Entertainment	4362	2443	0.07
2333	Anime Sanjuushi	7.11	Adventure Drama Historical Romance	52	Fall 1987	Gallop	3888	1777	0.09
2335	Kenyuu Densetsu Yaiba	7.13	Action Comedy Fantasy MartialArts Shounen	52	Spring 1993	Pastel	7576	4430	0.07
2337	Tetsujin 28-gou (2004)	7.34	Sci-Fi Adventure Historical Drama Mecha Shounen	26	Spring 2004	Palm Studio	3707	959	0.1
2361	Sei Juushi Bismarck	7.23	Action Sci-Fi Adventure Space Mecha	51	Fall 1984	Studio Pierrot	4431	2463	0.09
2362	Run=Dim	5.07	Action Mecha Sci-Fi	13	Spring 2001	Unknown	1878	498	0.21
2363	Pokemon Housoukyoku	6.86	Adventure Comedy Kids Fantasy	16	Winter 2003	OLM	23425	18269	0.03
2364	Virus: Virus Buster Serge	5.47	Action Adventure Mecha Police Sci-Fi	12	Fall 1997	J.C.Staff	3553	1565	0.14
2366	Touma Kishinden Oni	-1	Supernatural	25	Fall 1995	J.C.Staff	736	133	0.23
2367	Moetan	6.42	Comedy Ecchi Magic School	12	Summer 2007	Actas	25176	9997	0.15
2369	Rental Magica	7.06	Mystery Supernatural Fantasy	24	Fall 2007	Zexcs	54721	23743	0.12
2382	Firestorm	5.65	Action Military Sci-Fi Adventure Mecha	26	Spring 2003	Trans Arts	1133	232	0.26
2383	Cybersix	7.24	Action Adventure Romance Sci-Fi	13	Fall 1999	Telecom Animation Film	7150	3476	0.06
2389	Kagaku Ninja-tai Gatchaman	6.95	Action Adventure Sci-Fi Shounen	105	Fall 1972	Tatsunoko Production	8085	3131	0.14
2390	Hoshi no Kirby	6.77	Action Adventure Comedy Parody Fantasy	100	Fall 2001	Studio Comet, Studio Sign	22817	12822	0.16
2391	SD Gundam Force	5.36	Adventure Comedy Fantasy Mecha	52	Winter 2004	Sunrise	7216	3983	0.22
2400	GS Mikami	7.19	Comedy Supernatural	45	Spring 1993	Toei Animation	9875	4362	0.09
2402	Ashita no Joe	8.28	Action Drama Shounen SliceofLife Sports	79	Spring 1970	Mushi Production	57622	15185	0.08
2403	Kodomo no Jikan (TV)	6.82	Comedy Drama Ecchi School	12	Fall 2007	Diomedéa	96749	59117	0.08
2404	Zombie-Loan	6.89	Action Horror Shounen Supernatural	11	Summer 2007	Xebec	124593	76142	0.08
2405	Hello! Lady Lynn	7.57	Drama Shoujo	36	Spring 1988	Toei Animation	3188	1863	0.06
2406	Sazae-san	6.09	SliceofLife Comedy	-1	Fall 1969	Eiken	5481	1	0.4
2409	Gokudou-kun Manyuuki	7.47	Adventure Comedy Fantasy Magic	26	Spring 1999	Trans Arts	12664	6165	0.07
2415	Super Fishing Grander Musashi	6.87	Adventure Sports	25	Spring 1997	Nippon Animation	3590	2080	0.08
2416	Grander Musashi RV	7.04	Adventure Sports	39	Spring 1998	Nippon Animation	1822	1059	0.08
2451	Space Cobra	7.71	Action Adventure Sci-Fi Space	31	Fall 1982	Tokyo Movie Shinsha	16026	6165	0.07
2467	3 Choume no Tama: Uchi no Tama Shirimasen ka?	6.61	Adventure	36	Fall 1988	Group TAC	1998	1109	0.15
2471	Doraemon (1979)	7.7	Adventure Comedy Fantasy Kids Sci-Fi Shounen	1787	Spring 1979	Shin-Ei Animation	38555	21246	0.18
2476	School Days	5.68	Harem Drama Romance School	12	Summer 2007	TNK	522307	387527	0.06
2484	Gear Fighter Dendoh	7.19	Action Adventure Mecha School Sci-Fi Space	38	Fall 2000	Sunrise	2665	1187	0.1
2486	Rumiko Takahashi Anthology	7.19	Comedy Drama Romance Shounen SliceofLife Supernatural	13	Summer 2003	Unknown	5747	1970	0.07
2487	Kyouryuu Boukenki Jura Tripper	6.66	Sci-Fi Adventure Drama Fantasy	39	Spring 1995	Production Reed	1390	553	0.11
2489	Onegai My Melody	7.09	Comedy Magic Fantasy	52	Spring 2005	Studio Comet	8725	3147	0.1
2494	Goshuushou-sama Ninomiya-kun	6.72	Harem Comedy Ecchi Fantasy	12	Fall 2007	AIC Spirits	86623	58861	0.05
2495	Chance Triangle Session	6.53	SliceofLife Music Drama	13	Spring 2001	Madhouse	4612	2077	0.12
2501	Papuwa	6.6	Adventure Comedy	26	Fall 2003	Nippon Animation	1437	469	0.23
2503	Nangoku Shounen Papuwa-kun	6.19	Adventure Comedy Shounen	42	Fall 1992	Nippon Animation	746	164	0.27
2508	Genshiken 2	7.77	Comedy Parody SliceofLife	12	Fall 2007	Arms	73115	52072	0.02
2510	Sengoku Majin Goushougun	6.6	Action Sci-Fi Parody Mecha	26	Summer 1981	Production Reed	2137	588	0.13
2518	Masuda Kousuke Gekijou Gag Manga Biyori 2	7.22	Comedy	12	Summer 2006	Artland	2742	1427	0.07
2521	Haja Kyosei G Dangaiou	5.42	Action Mecha Sci-Fi	13	Spring 2001	Unknown	2404	811	0.12
2523	Izumo: Takeki Tsurugi no Senki	6.24	Adventure Drama Fantasy MartialArts Romance Supernatural	12	Spring 2005	Trinet Entertainment, Studio Kyuuma	10782	4227	0.1
2542	Lady Georgie	7.16	Drama Historical Romance Shoujo	45	Spring 1983	Tokyo Movie Shinsha	7674	4532	0.06
2543	Robin Hood no Daibouken	7.12	Adventure Historical Romance	52	Summer 1990	Tatsunoko Production	6733	4368	0.06
2544	Kazoku Robinson Hyouryuuki: Fushigi na Shima no Flone	7.27	Adventure Drama Historical SliceofLife	50	Winter 1981	Nippon Animation	4403	2418	0.06
2545	Huckleberry no Bouken	6.22	Adventure Historical Drama	26	Winter 1976	Group TAC	1412	772	0.12
2546	Alps Monogatari: Watashi no Annette	6.7	SliceofLife Historical Drama	48	Winter 1983	Nippon Animation	3106	1760	0.08
2547	Shoukoujo Sara	7.68	SliceofLife Historical Drama Shoujo	46	Winter 1985	Nippon Animation	15349	10435	0.04
2548	Ai no Wakakusa Monogatari	7.43	Drama Historical SliceofLife	48	Winter 1987	Nippon Animation	6478	3175	0.07
2549	Perrine Monogatari	7.52	SliceofLife Historical Drama Shoujo	53	Winter 1978	Nippon Animation	4114	1226	0.1
2552	Tetsuko no Tabi	6.32	Comedy Seinen SliceofLife	13	Summer 2007	Group TAC	2077	416	0.23
2553	Flanders no Inu	7.38	Drama Historical SliceofLife	52	Winter 1975	Nippon Animation	5192	1747	0.09
2554	Ai Shoujo Pollyanna Story	6.96	Drama Historical SliceofLife	51	Winter 1986	Nippon Animation	4278	2195	0.09
2555	Shoukoushi Cedie	7.36	SliceofLife Drama Shoujo	43	Winter 1988	Nippon Animation	3235	1507	0.08
2556	Jungle Taitei (1989)	6.71	Adventure Drama	52	Fall 1989	Unknown	3501	1922	0.12
2557	Trapp Ikka Monogatari	7.63	Drama Historical Music Romance	40	Winter 1991	Nippon Animation	5970	3356	0.05
2558	Wakakusa Monogatari: Nan to Jo-sensei	7.58	Drama Historical School SliceofLife	40	Winter 1993	Nippon Animation	4936	2884	0.05
2559	Romeo no Aoi Sora	8.35	Adventure Drama Historical SliceofLife	33	Winter 1995	Nippon Animation	36828	16751	0.03
2561	Captain Future	7.06	Action Adventure Sci-Fi Shounen	52	Fall 1978	Toei Animation	3535	2045	0.11
2562	Shion no Ou	7.56	Drama Game Mystery Thriller	22	Fall 2007	Studio Deen	27986	11723	0.09
2564	Code-E	6.44	Comedy Romance School Sci-Fi SliceofLife	12	Summer 2007	Studio Deen	16216	9036	0.1
2565	Jungle Taitei: Susume Leo!	6.49	Adventure Shounen	26	Fall 1966	Mushi Production	1999	1004	0.13
2566	Uchuujin Tanaka Tarou	6.11	Comedy School Shounen	24	Spring 2000	Unknown	723	316	0.23
2567	Pinocchio yori Piccolino no Bouken	6.26	Adventure Kids	52	Spring 1976	Nippon Animation	1521	1072	0.11
2568	Kojika Monogatari	6.39	Drama	52	Fall 1983	Unknown	629	279	0.2
2569	Jungle Book Shounen Mowgli	6.94	Adventure Drama	52	Fall 1989	Nippon Animation	5517	4121	0.06
2570	Ochame na Futago: Claire Gakuin Monogatari	7.05	Kids SliceofLife Comedy Historical School Shoujo	26	Winter 1991	TMS Entertainment	2133	1190	0.09
2571	Mitsubachi Maya no Bouken	6.44	Adventure Comedy Kids	52	Spring 1975	Nippon Animation	7250	5841	0.09
2572	Fushigi no Kuni no Alice	6.49	Adventure Kids Fantasy	24	Fall 1983	Nippon Animation	2530	1523	0.11
2573	Minami no Niji no Lucy	6.89	SliceofLife Adventure Drama	50	Winter 1982	Nippon Animation	1640	633	0.12
2574	Kashi no Ki Mokku	5.9	Adventure Fantasy	52	Winter 1972	Tatsunoko Production	1422	850	0.13
2575	Don Chuck Monogatari	5.84	Adventure Kids SliceofLife	26	Spring 1975	Unknown	774	481	0.17
2576	Araiguma Rascal	6.69	Drama Historical SliceofLife	52	Winter 1977	Nippon Animation	1979	813	0.15
2577	Tom Sawyer no Bouken	7.17	Adventure SliceofLife Historical Drama	49	Winter 1980	Nippon Animation	5814	3398	0.08
2578	TaoTao Ehonkan Sekai Doubutsu Banashi	6.79	Adventure Fantasy Comedy Kids	52	Fall 1983	Unknown	974	614	0.17
2579	Anime 80-nichikan Sekai Isshuu	6.83	Adventure Historical Kids Romance	26	Winter 1984	Nippon Animation	3979	3235	0.05
2581	Mobile Suit Gundam 00	8.14	Action Military Sci-Fi Space Drama Mecha	25	Fall 2007	Sunrise	183997	129192	0.03
2582	Soukou Kihei Votoms	7.73	Action Space Mecha Military Drama Sci-Fi	52	Spring 1983	Sunrise	18152	4937	0.08
2595	D.C.II: Da Capo II	6.91	Drama Ecchi Romance School	13	Fall 2007	feel.	32907	20542	0.05
2596	Shinreigari	7.46	Sci-Fi Mystery Psychological Supernatural	22	Fall 2007	Production I.G	120529	43632	0.09
2598	Juusenki L-Gaim	6.7	Action Sci-Fi Adventure Space Drama Mecha Shounen	54	Winter 1984	Sunrise	4567	937	0.12
2602	Kenkou Zenrakei Suieibu Umishou	7.15	Comedy Sports Ecchi School Shounen	13	Summer 2007	Artland	34265	19637	0.06
2603	Mushi-Uta	6.65	Action Sci-Fi Fantasy	12	Summer 2007	Zexcs	15073	7791	0.08
2604	Sky Girls	7.02	Mecha Military Sci-Fi	26	Summer 2007	J.C.Staff	21540	10031	0.1
2605	Sayonara Zetsubou Sensei	7.9	Comedy Parody School Shounen	12	Summer 2007	Shaft	285103	130746	0.06
2608	Wangan Midnight	7.46	Action Cars Seinen Sports	26	Summer 2007	A.C.G.T.	25938	11954	0.1
2609	Kakyuusei (TV)	6.23	Harem Drama Romance School	13	Summer 1999	Unknown	4187	1004	0.13
2612	Spoon Oba-san	6.64	Kids Magic	130	Spring 1983	Studio Pierrot	1565	953	0.15
2613	Mirai Shounen Conan 2: Taiga Daibouken	6.52	Adventure Drama Sci-Fi	24	Fall 1999	Nippon Animation	1757	631	0.11
2618	Takarajima	7.93	Adventure Mystery Historical Drama	26	Fall 1978	Madhouse, TMS Entertainment	14131	6294	0.05
2619	Spider Riders: Oracle no Yuusha-tachi	6.6	Action Adventure Mecha	26	Spring 2006	Bee Train, Cookie Jar Entertainment	7042	4206	0.11
2620	Spider Riders: Yomigaeru Taiyou	6.71	Action Adventure Mecha	26	Spring 2007	Unknown	3685	2502	0.05
2624	Flanders no Inu, Boku no Patrasche	7.06	Drama Historical	26	Fall 1992	TMS Entertainment	1559	637	0.1
2683	Tokyo Majin Gakuen Kenpucho: Tou Dai Ni Maku	7.27	Action Mystery Horror Drama MartialArts Fantasy School	12	Summer 2007	AIC Spirits	30201	16922	0.04
2684	Buzzer Beater 2nd Season	6.83	Action Sci-Fi Sports Shounen	13	Summer 2007	TMS Entertainment	7431	5068	0.05
2686	Tetsujin 28-gou	6.2	Adventure Mecha Sci-Fi Shounen	96	Fall 1963	Eiken	2398	670	0.3
2687	Gokuu no Daibouken	6.07	Comedy Fantasy	39	Winter 1967	Mushi Production	657	222	0.26
2688	Akai Koudan Zillion	6.6	Action Military Sci-Fi Adventure	31	Spring 1987	Production I.G, Tatsunoko Production	4145	1170	0.13
2694	Hidamari no Ki	6.87	Action Historical Drama Samurai Seinen	25	Spring 2000	Madhouse	2074	398	0.16
2699	Uchuu Kaizoku Mito no Daibouken	6.41	Action Comedy Sci-Fi	13	Winter 1999	Genco, Triangle Staff	1929	742	0.14
2700	Uchuu Kaizoku Mito no Daibouken: Futari no Joou-sama	6.19	Action Comedy Sci-Fi	13	Summer 1999	Xebec, Genco, Triangle Staff	1097	462	0.12
2701	Susie-chan to Marvy	-1	Comedy Kids	104	Spring 1999	Xebec	221	68	0.38
2702	Bakukyuu Renpatsu!! Super B-Daman	6.24	Game Adventure Kids	18	Winter 1999	Xebec	1013	538	0.14
2703	Chousoku Spinner	6.63	Shounen Sports	22	Fall 1998	Xebec	4137	2570	0.07
2704	Kaiketsu Jouki Tanteidan	6.64	Action Mecha Mystery Police	26	Fall 1998	Xebec	3697	1043	0.14
2705	Bakusou Kyoudai Let's & Go	6.78	Adventure Cars Sports Shounen	51	Winter 1996	Production I.G, Xebec	8421	6100	0.07
2706	Bakusou Kyoudai Let's & Go WGP	6.96	Cars Sports Shounen	51	Winter 1997	Xebec	4674	3610	0.05
2707	Majime ni Fumajime Kaiketsu Zorori	6.72	Adventure Kids	97	Winter 2005	Ajia-Do	901	377	0.17
2708	Wankorobee	-1	Comedy Fantasy Kids	26	Fall 1996	Ajia-Do, TMS Entertainment	216	59	0.46
2709	Bakusou Kyoudai Let's & Go MAX	6.58	Cars Shounen Sports	51	Winter 1998	Xebec	2915	2040	0.08
2713	Rockman.EXE Beast+	6.86	Action Adventure Game Mecha Sci-Fi Shounen	26	Spring 2006	Xebec	5279	2623	0.06
2716	Urayasu Tekkin Kazoku	6.93	Comedy Shounen	33	Summer 1998	Studio Deen	1612	575	0.15
2717	Ginga Tetsudou Monogatari: Eien e no Bunkiten	6.86	Action Adventure Space Drama Sci-Fi	24	Fall 2006	Unknown	3238	1151	0.08
2718	Umi no Triton	6.23	Adventure Fantasy Shounen	27	Spring 1972	Animation Staff Room	1475	609	0.16
2719	MapleStory	5.33	Action Kids Fantasy Comedy Romance	25	Fall 2007	Madhouse	4257	1165	0.4
2723	D4 Princess	6.1	Action Sci-Fi Comedy Magic Mecha	24	Spring 1999	Daume	2454	913	0.15
2727	Sweet Valerian	5.77	Action Comedy Magic School Shoujo	18	Summer 2004	Madhouse	2441	1052	0.16
2732	Baby Baachan	6.56	Comedy Drama	53	Spring 2002	Unknown	705	316	0.19
2735	Mugen Senki Portriss	-1	Action Mecha Sci-Fi Shounen	52	Spring 2003	Sunrise, Dongwoo A&E	372	95	0.31
2736	Mojakou	7.12	Comedy Fantasy Sci-Fi	74	Fall 1995	OLM	1970	1317	0.13
2738	Kasumin 3rd Season	-1	Kids Fantasy	26	Spring 2003	OLM	455	125	0.27
2740	Monkey Turn	6.34	Action Sports Drama Shounen	25	Winter 2004	OLM	1154	293	0.22
2741	Monkey Turn V	-1	Action Sports Drama Shounen	25	Summer 2004	OLM	562	168	0.22
2742	Omoikkiri Kagaku Adventure Sou Nanda!	-1	Comedy Kids Sci-Fi	26	Fall 2003	OLM	387	87	0.34
2744	Potemayo	7.3	Comedy School Seinen	12	Summer 2007	J.C.Staff	14663	7191	0.1
2747	Tetsuwan Atom	7.11	Action Sci-Fi Adventure Drama Mecha Shounen	193	Winter 1963	Mushi Production	9332	3530	0.2
2748	Dash! Kappei	7.16	Comedy Sports Ecchi Shounen	65	Fall 1981	Tatsunoko Production, Tama Production	4308	2630	0.09
2749	Heisei Inu Monogatari Bow	6.71	Adventure Comedy	40	Fall 1993	Nippon Animation	804	389	0.16
2757	Juuni Senshi Bakuretsu Eto Ranger	6.82	Action Fantasy Comedy	39	Spring 1995	Shaft	1605	588	0.16
2758	Shippuu! Iron Leaguer	6.89	Mecha Sci-Fi Shounen Sports	52	Spring 1993	Sunrise	1003	311	0.21
2762	Igano Kabamaru	7.87	Action Adventure Comedy Romance School Shounen	24	Fall 1983	Group TAC	8759	4192	0.07
2766	Super Doll Licca-chan	6.56	Adventure Magic Comedy	52	Fall 1998	Madhouse	3104	1422	0.16
2769	Galactic Patrol Lensman	6.31	Action Adventure Sci-Fi	25	Fall 1984	Madhouse	1238	308	0.17
2771	Chou Kuse ni Narisou	6.27	SliceofLife Comedy Romance School Shoujo	39	Spring 1994	Studio Kyuuma, Studio Kikan, Azeta Pictures	1495	267	0.25
2772	Juushin Enbu: Hero Tales	6.86	Action Fantasy Shounen	26	Fall 2007	Studio Flag	23300	10335	0.12
2781	Saint Luminous Jogakuin	6.08	Mystery Psychological Supernatural	13	Fall 1998	Triangle Staff	2498	904	0.13
2783	Oyayubi Hime Monogatari	6.67	Adventure Fantasy Shoujo	26	Spring 1992	Unknown	1315	632	0.1
2786	Bakegyamon	6.68	Action Demons Fantasy Game Shounen	51	Spring 2006	Radix	2646	862	0.16
2787	Shakugan no Shana II (Second)	7.61	Action Supernatural Drama Romance Fantasy School	24	Fall 2007	J.C.Staff	271165	203849	0.03
2789	B-Legend! Battle B-Daman	6.28	Adventure Fantasy Game Kids	52	Winter 2004	Nippon Animation	11041	8201	0.1
2795	Dragonaut: The Resonance	6.65	Action Drama Fantasy Mecha Romance Sci-Fi	25	Fall 2007	Gonzo	66357	36738	0.12
2799	Hello! Sandybell	7.04	Adventure Romance Shoujo	47	Spring 1981	Toei Animation	4683	3203	0.07
2800	Candy Candy	7.52	SliceofLife Drama Shoujo	115	Fall 1976	Toei Animation	21937	13177	0.1
2803	Densetsu no Yuusha Da Garn	7.06	Mecha Sci-Fi Shounen	46	Winter 1992	Sunrise	3332	1103	0.12
2804	Hana no Mahoutsukai Mary Bell	6.49	Adventure Magic Fantasy Shoujo	50	Winter 1992	Production Reed, Asahi Production	2035	728	0.15
2805	Onegai! Samia Don	6.95	SliceofLife Comedy Kids Magic Fantasy	39	Spring 1985	TMS Entertainment	816	405	0.17
2806	Yadamon	6.15	Adventure Comedy Fantasy	170	Summer 1992	Unknown	962	246	0.27
2809	Fuusen Shoujo Temple-chan	6.18	Adventure Comedy Kids	26	Fall 1977	Tatsunoko Production	404	151	0.26
2810	Anime Himitsu no Hanazono	7.05	Kids Historical Drama Shoujo	39	Spring 1991	Unknown	4275	2742	0.05
2813	Chiisana Ahiru no Ooki na Ai no Monogatari: Ahiru no Kwak	7.36	Adventure Comedy Kids Drama Fantasy	52	Spring 1989	Telescreen	4840	3465	0.09
2814	Dondon Dommel to Ron	6.65	Comedy Kids	52	Spring 1988	Telescreen	835	537	0.15
2815	Geragera Boes Monogatari	7.03	Comedy Kids	52	Spring 1987	Telescreen	1358	915	0.1
2816	Toushou Daimos	7.2	Adventure Drama Mecha Romance Sci-Fi Shounen	44	Spring 1978	Sunrise, Toei Animation	4574	3113	0.06
2817	Cinderella Monogatari	7.33	Adventure Kids Romance Fantasy	26	Spring 1996	Tatsunoko Production	6140	3871	0.04
2818	Madou King Granzort	7.02	Action Sci-Fi Comedy Magic Fantasy Mecha Shounen	41	Spring 1989	Sunrise	1724	658	0.13
2819	Dragon Quest: Abel Yuusha Densetsu	6.9	Action Adventure Fantasy Shounen	43	Winter 1990	Studio Comet	4456	1336	0.11
2820	Time Travel Tondekeman!	7.27	Action Kids Adventure Comedy	39	Fall 1989	Tatsunoko Production, Production Reed, Asahi Production	1697	890	0.11
2822	Bamboo Bears	6.07	Comedy	52	Spring 1997	Telescreen	627	316	0.19
2823	Barbapapa	6.16	Fantasy Comedy	45	Fall 1974	Topcraft	2157	1487	0.16
2824	Barbapapa Sekai wo Mawaru	6.01	Adventure Comedy	50	Summer 1999	Studio Pierrot	902	558	0.16
2825	Arabian Nights: Sindbad no Bouken (TV)	7.2	Adventure Fantasy Magic Romance	52	Fall 1975	Nippon Animation	5356	3712	0.07
2826	Oz no Mahoutsukai (1986)	6.73	Adventure Kids Fantasy	52	Fall 1986	Panmedia, Meruhensha	1913	996	0.11
2827	Calimero	6.23	Comedy	45	Fall 1974	Toei Animation	3436	2503	0.12
2828	Ie Naki Ko	7.79	Adventure Drama Historical Kids SliceofLife	51	Fall 1977	Madhouse, TMS Entertainment	10480	4144	0.07
2829	Ie Naki Ko Remy	7.93	Adventure SliceofLife Historical Drama	23	Fall 1996	Nippon Animation	15465	8999	0.03
2834	Miracle☆Girls	7.12	Drama Magic Shoujo	51	Winter 1993	Japan Taps	3718	1360	0.12
2835	Patalliro!	7.29	Adventure Comedy Romance Shoujo ShounenAi	49	Spring 1982	Toei Animation	5639	794	0.17
2836	Chiisana Viking Vickie	6.58	Adventure Comedy Historical Kids	78	Spring 1974	Nippon Animation	2565	1796	0.12
2882	Anime Oyako Gekijou	5.99	Kids Adventure Fantasy Historical Sci-Fi	26	Fall 1981	Tatsunoko Production	1771	933	0.18
2885	Ganbare Goemon	6.09	Comedy Shounen	23	Fall 1997	Unknown	1178	359	0.21
2892	Hakushon Daimaou	6.09	Comedy Fantasy	52	Fall 1969	Tatsunoko Production	1499	855	0.16
2903	Sakigake!! Otokojuku	7.38	Action Comedy MartialArts School Shounen	34	Winter 1988	Toei Animation	10045	2630	0.09
2904	Code Geass: Hangyaku no Lelouch R2	8.91	Action Military Sci-Fi SuperPower Drama Mecha	25	Spring 2008	Sunrise	1268320	1060730	0.01
2907	Cyborg Kuro-chan	7.1	Comedy Sci-Fi	66	Fall 1999	Studio Bogey	6271	3866	0.11
2912	Ohayou! Spank	6.6	SliceofLife Comedy	63	Spring 1981	TMS Entertainment	1798	1230	0.12
2913	Daisougen no Chiisana Tenshi: Bush Baby	7.01	Adventure Drama	40	Winter 1992	Nippon Animation	2020	727	0.12
2916	Genki Bakuhatsu Ganbaruger	6.75	Mecha Shounen	47	Spring 1992	Sunrise	863	321	0.14
2921	Ashita no Joe 2	8.67	Action Drama Shounen SliceofLife Sports	47	Fall 1980	Tokyo Movie Shinsha	30192	14113	0.04
2923	Shugo Chara!	7.43	Comedy Magic School Shoujo	51	Fall 2007	Satelight	182396	111680	0.1
2924	ef: A Tale of Memories.	7.95	Mystery Drama Romance	12	Fall 2007	Shaft	220459	117366	0.05
2926	Myself; Yourself	7.21	Drama Romance School	13	Fall 2007	Doga Kobo	164171	111131	0.04
2927	KimiKiss Pure Rouge	7.33	Drama Romance School	24	Fall 2007	J.C.Staff	80052	45840	0.06
2929	Moonlight Mile 2nd Season: Touch Down	7.36	Adventure Drama Sci-Fi Space	14	Fall 2007	Studio Hibari	4147	1870	0.06
2930	Tensai? Dr. Hamax	-1	Comedy	12	Fall 2007	Production I.G	223	50	0.43
2931	Mokke	7.07	SliceofLife Supernatural Mystery	24	Fall 2007	Madhouse, Tezuka Productions	12796	2868	0.17
2933	Mirai Keisatsu Urashiman	6.64	Action Sci-Fi Comedy Police	50	Winter 1983	Tatsunoko Production	1721	410	0.17
2934	Shiawase Sou no Okojo-san	6.51	Comedy	51	Fall 2001	Unknown	2292	258	0.24
2938	Idol Densetsu Eriko	6.82	Music	51	Spring 1989	Production Reed	4020	1461	0.09
2942	Sketchbook: Full Color's	7.39	SliceofLife Comedy	13	Fall 2007	Hal Film Maker	25072	9471	0.09
2963	Minami-ke	7.69	SliceofLife Comedy School	13	Fall 2007	Daume	150672	80007	0.05
2964	Blue Drop: Tenshi-tachi no Gikyoku	6.73	Sci-Fi Drama ShoujoAi	13	Fall 2007	Gonzo	26721	13104	0.1
2965	Suteki Tantei Labyrinth	6.74	Mystery Sci-Fi	25	Fall 2007	Studio Deen	8626	2178	0.2
2966	Ookami to Koushinryou	8.27	Adventure Fantasy Historical Romance	13	Winter 2008	Imagin	641448	386973	0.04
2970	Night Wizard	6.69	Adventure Fantasy Magic Shounen	13	Fall 2007	Hal Film Maker	33839	17499	0.1
2980	Kuusou Kagaku Sekai Gulliver Boy	6.44	Action Adventure Fantasy Magic Mecha	50	Winter 1995	Toei Animation	1116	347	0.16
2985	Majin Tantei Nougami Neuro	7.62	Mystery Comedy Demons Supernatural Shounen	25	Fall 2007	Madhouse	59286	29701	0.08
2986	Bamboo Blade	7.34	Comedy School Seinen Sports	26	Fall 2007	AIC ASTA	80388	45080	0.08
2987	Ginga Hyouryuu Vifam	7.13	Action Sci-Fi Adventure Space Mecha	46	Fall 1983	Sunrise	2987	662	0.11
2993	Rosario to Vampire	6.84	Harem Comedy Romance Ecchi Vampire Fantasy School Shounen	13	Winter 2008	Gonzo	545750	423659	0.05
3000	Taiho Shichau zo: Full Throttle	7.22	Action Comedy Police Shounen	23	Fall 2007	Studio Deen	7861	3343	0.09
3001	Moyashimon	7.59	Comedy School Seinen Supernatural	11	Fall 2007	Telecom Animation Film, Shirogumi	63611	31881	0.06
3002	Gyakkyou Burai Kaiji: Ultimate Survivor	8.28	Game Psychological Thriller Seinen	26	Fall 2007	Madhouse	247228	133240	0.04
3006	Atashin'chi	7.25	Comedy SliceofLife	330	Spring 2002	Shin-Ei Animation	3398	1419	0.19
3008	Time Bokan Series: Yatterman	6.68	Adventure Comedy Mecha	108	Winter 1977	Tatsunoko Production	4159	2398	0.12
3009	Tiger Mask	7.26	Action Drama Shounen Sports	105	Fall 1969	Toei Animation	7844	4111	0.09
3010	Kaiketsu Zorro	7.23	Adventure Historical Shounen	52	Spring 1996	Ashi Production	9044	6238	0.06
3012	Gekitou! Crush Gear Turbo	6.8	Sports Shounen	68	Fall 2001	Sunrise	5028	3424	0.09
3020	Gu-Gu Ganmo	6.04	Comedy School Shounen SliceofLife	50	Spring 1984	Toei Animation	663	194	0.27
3021	Yume Senshi Wingman	6.52	Action Comedy SuperPower Romance School	47	Winter 1984	Toei Animation	1969	507	0.17
3022	Haai Step Jun	6.37	Action Romance School Sci-Fi	45	Spring 1985	Toei Animation	831	340	0.16
3023	Esper Mami	6.46	Comedy Ecchi Magic School SuperPower Supernatural	119	Spring 1987	Shin-Ei Animation	1501	319	0.22
3024	Ribbon no Kishi	6.63	Action Mystery Romance Fantasy Shoujo	52	Spring 1967	Mushi Production	3506	1113	0.17
3035	Chouon Senshi Borgman	6.39	Action Sci-Fi Demons	35	Spring 1988	Production Reed, Asahi Production	2251	462	0.15
3036	Tobe! Isami	7.17	Action Adventure Comedy Romance Shounen	50	Spring 1995	Group TAC	1693	660	0.14
3044	Tetsuwan Atom (1980)	7.14	Action Sci-Fi Adventure Mecha Shounen	52	Fall 1980	Tezuka Productions	10325	5758	0.11
3053	Ganbare! Kickers	6.82	Comedy Drama Shounen Sports	23	Fall 1986	Studio Pierrot	7615	6530	0.04
3054	La Seine no Hoshi	6.53	Adventure Historical Drama Shoujo	39	Spring 1975	Sunrise	1936	907	0.11
3059	Ninja Senshi Tobikage	6.99	Adventure Mecha Sci-Fi Shounen Space	43	Fall 1985	Studio Pierrot	3451	1337	0.1
3073	Robby to Kerobby	-1	Kids Comedy	52	Spring 2007	A-1 Pictures	224	50	0.42
3075	Tondera House no Daibouken	6.23	Adventure Historical Sci-Fi	52	Spring 1982	Tatsunoko Production	1124	560	0.17
3077	Warau Salesman	6.69	Comedy Psychological Supernatural Drama Seinen	103	Fall 1989	Shin-Ei Animation	4347	638	0.22
3079	Aoki Ryuusei SPT Layzner	6.96	Space Mecha Military Sci-Fi	38	Fall 1985	Sunrise	4923	1224	0.1
3081	Attacker You!	6.57	Action Romance Shoujo Sports	58	Spring 1984	Shaft	5342	3144	0.1
3091	xxxHOLiC Kei	8.25	Mystery Comedy Psychological Supernatural Drama	13	Spring 2008	Production I.G	116297	75770	0.02
3092	Junjou Romantica	7.65	Comedy Drama Romance ShounenAi	12	Spring 2008	Studio Deen	204190	162168	0.04
3098	Shutsugeki! Machine Robo Rescue	6.68	Action Mecha Sci-Fi	53	Winter 2003	Sunrise	1326	641	0.13
3099	Juusenshi Gulkeeva	6.31	Action Fantasy Mecha SuperPower	26	Spring 1995	Sunrise	1612	411	0.15
3101	F-Zero: Falcon Densetsu	6.42	Action Sci-Fi Adventure Cars Sports Mecha Shounen	51	Fall 2003	Production Reed	7373	2247	0.17
3104	Geisters: Fractions of the Earth	5.84	Action Military Sci-Fi	26	Fall 2001	Unknown	1237	237	0.24
3110	Kaze no Naka no Shoujo: Kinpatsu no Jeanie	7.03	Drama Historical	52	Fall 1992	Nippon Animation	2768	1167	0.1
3112	Papillon Rose	4.65	Ecchi Magic Comedy Parody	6	Winter 2006	Studio Kelmadick	3194	1049	0.15
3114	Chiisana Kyojin Microman	6.27	Action Adventure Comedy Kids Mecha Sci-Fi Shounen SuperPower	52	Winter 1999	Studio Pierrot	866	214	0.23
3116	Dash! Yonkurou	6.76	Action Cars Sports Kids Shounen	25	Fall 1989	Unknown	1555	931	0.1
3125	Tokimeki Tonight	7.17	Comedy Fantasy Romance Shoujo Vampire	34	Fall 1982	Group TAC	6961	2004	0.1
3129	Kaibutsu-kun	6.51	Comedy Horror	49	Spring 1968	Studio Zero, Tokyo Movie	943	429	0.2
3130	Kaibutsu-kun (1980)	6.45	Comedy Horror Kids	94	Fall 1980	Shin-Ei Animation	764	407	0.19
3131	Ashita Tenki ni Naare	6.13	Sports Shounen	47	Fall 1984	Tsuchida Productions	611	290	0.24
3132	Boukensha: The Man Was from Spain	6.24	Adventure Historical	26	Fall 1992	Nippon Animation	926	455	0.12
3136	Ochamegami Monogatari: Korokoro Pollon	6.95	Parody Magic Comedy	46	Spring 1982	Unknown	2207	1437	0.08
3137	Tsurikichi Sanpei	7.04	Adventure Sports	109	Spring 1980	Nippon Animation	3454	1834	0.11
3146	GR: Giant Robo	6.43	Adventure Mecha Military Sci-Fi Shounen	13	Winter 2007	A.C.G.T.	2759	568	0.15
3151	Genei Toushi Bastof Lemon	6.15	Adventure Mecha Sci-Fi	26	Spring 2001	Dongwoo A&E	1063	363	0.22
3159	The Kabocha Wine	6.56	SliceofLife Comedy Romance School	95	Summer 1982	Toei Animation	2174	358	0.21
3162	Makiba no Shoujo Katri	6.89	Adventure Drama Historical SliceofLife	49	Winter 1984	Nippon Animation	2607	941	0.13
3164	Ichigo Ichie: Koibana Tomobana	-1	SliceofLife Comedy School	13	Fall 2007	Unknown	412	121	0.23
3166	Ayakashi	6.36	Action Sci-Fi Horror Fantasy	12	Winter 2008	Tokyo Kids	26292	14619	0.09
3176	Nessa no Haou Gandalla	5.92	Adventure Drama Fantasy Horror Magic Music Sci-Fi Supernatural	26	Spring 1998	Production Reed	1381	213	0.19
3180	Manga Aesop Monogatari (TV)	-1	Comedy Fantasy Kids	52	Fall 1983	Nippon Animation	365	156	0.24
3182	Massugu ni Ikou. 2nd Season	6.62	Comedy Josei Romance SliceofLife	5	Spring 2004	Yumeta Company	1743	747	0.07
3185	Fortune Quest L	6.42	Adventure Comedy Fantasy Magic	26	Fall 1997	Unknown	1578	466	0.16
3193	Asobot Senki Gokuu	6.62	Action Sci-Fi Adventure Comedy Shounen	52	Fall 2002	Studio Egg	2730	1154	0.13
3194	Ningyohime Marina no Bouken	6.29	Drama Fantasy Kids Romance	26	Winter 1991	Telescreen	1379	694	0.12
3196	Wakakusa no Charlotte	6.75	Drama Historical Kids Shoujo SliceofLife	30	Fall 1977	Nippon Animation	1951	781	0.13
3199	Nanatsu no Umi no Tico	7.39	SliceofLife Adventure	39	Winter 1994	Nippon Animation	4322	2252	0.08
3201	Pure-tou no Nakama-tachi	6.33	Fantasy Kids	26	Summer 1983	Unknown	645	289	0.22
3202	Daisuki! Hello Kitty	6.3	Fantasy Kids	26	Fall 1993	Unknown	2139	1278	0.14
3205	Cream Lemon: Lemon Angel	5.47	Ecchi	37	Fall 1987	Unknown	2713	750	0.15
3213	Ganbare Genki	7.33	Action Comedy Shounen Sports	35	Summer 1980	Toei Animation	1825	594	0.16
3225	Minami-ke Okawari	7.35	Comedy School SliceofLife	13	Winter 2008	Asread	65380	47095	0.04
3226	Major S4	8.24	Comedy Drama Shounen Sports	26	Winter 2008	SynergySP	53288	44931	0.01
3228	Zoku Sayonara Zetsubou Sensei	7.93	Comedy Parody School Shounen	13	Winter 2008	Shaft	112023	65175	0.04
3229	Kimi ga Aruji de Shitsuji ga Ore de	7.18	Comedy Ecchi Harem Parody Romance	13	Winter 2008	A.C.G.T.	100075	63360	0.04
3230	Druaga no Tou: The Aegis of Uruk	7.19	Adventure Comedy Fantasy	12	Spring 2008	Gonzo	104286	60463	0.06
3231	Gunslinger Girl: Il Teatrino	7.16	Action Drama Military Sci-Fi	13	Winter 2008	Artland	53748	30707	0.08
3243	Elec-king The Animation	-1	Comedy Seinen	13	Fall 2007	Unknown	220	71	0.38
3251	Hatara Kids Mai Ham Gumi	-1	Action Kids	50	Fall 2007	Toei Animation	398	109	0.26
3259	Lemon Angel (1988)	5.81	Ecchi	9	Winter 1988	Unknown	1338	438	0.13
3264	Lemon Angel (1988/II)	5.81	Ecchi	8	Summer 1988	Unknown	1063	380	0.13
3270	IGPX: Immortal Grand Prix (2005)	7.12	Drama Mecha Sci-Fi Shounen Sports	13	Fall 2005	Production I.G	16804	9920	0.06
3271	Bakutou Sengen Daigunder	6.67	Sci-Fi Adventure Mecha	39	Spring 2002	Nippon Animation	2290	1440	0.1
3272	Kinnikuman	7.22	Adventure Comedy Sports Shounen	137	Spring 1983	Toei Animation	8498	3081	0.14
3281	Kinnikuman: Kinnikusei Oui Soudatsu-hen	6.71	Action Comedy Sports Shounen	46	Fall 1991	Toei Animation	2099	952	0.1
3285	Himitsu no Akko-chan	6.3	Magic School Shoujo	94	Winter 1969	Toei Animation	2176	721	0.15
3290	Vampiyan Kids	-1	Fantasy Comedy Kids	23	Fall 2001	Production I.G	783	179	0.25
3294	Gasshin Sentai Mechander Robo	5.88	Space Mecha Military Mystery Sci-Fi	35	Spring 1977	Unknown	669	182	0.24
3295	Yatterman	6.6	Adventure Comedy Parody	60	Winter 2008	Tatsunoko Production	3643	1105	0.2
3297	Aria the Origination	8.53	Sci-Fi SliceofLife Fantasy Shounen	13	Winter 2008	Hal Film Maker	98196	30863	0.06
3298	Hatenkou Yuugi	7.16	Adventure Comedy Drama Romance Fantasy Josei	10	Winter 2008	Studio Deen	33810	18849	0.08
3299	H2O: Footprints in the Sand	7.06	Harem Romance School	12	Winter 2008	Zexcs	85935	55824	0.06
3305	Muteki Koujin Daitarn 3	7.08	Mecha Sci-Fi	40	Summer 1978	Sunrise	2615	1018	0.1
3312	Dr. Slump	7	SliceofLife Comedy Sci-Fi Shounen	74	Fall 1997	Toei Animation	14465	7691	0.13
3313	Montana Jones	6.91	Adventure Mystery Comedy Historical	52	Spring 1994	Studio Junio	1461	747	0.14
3315	Kikou Keisatsu Metal Jack	6.28	Action Sci-Fi Police Mecha	37	Spring 1991	Sunrise	877	193	0.22
3317	Uchuusen Sagittarius	6.8	Sci-Fi Adventure	77	Winter 1986	Nippon Animation	957	315	0.18
3322	Wagaya no Oinari-sama.	7.22	Adventure Fantasy Shounen Supernatural	24	Spring 2008	Zexcs	29122	13116	0.1
3325	Yuusha Exkaiser	6.53	Action Mecha Sci-Fi Shounen	48	Winter 1990	Sunrise	1718	494	0.15
3327	Giant Gorg	7.12	Action Adventure Mecha Sci-Fi	26	Spring 1984	Sunrise	4143	952	0.09
3332	Stop!! Hibari-kun!	7	Comedy Shounen	35	Spring 1983	Toei Animation	5353	868	0.12
3335	Haikara-san ga Tooru	7.16	Drama Historical Romance Shoujo SliceofLife	42	Summer 1978	Nippon Animation	4091	729	0.14
3342	Mnemosyne: Mnemosyne no Musume-tachi	7.32	Action Horror Sci-Fi ShoujoAi Supernatural	6	Winter 2008	Xebec	152677	76491	0.05
3345	Mikan Enikki	7.19	SliceofLife Comedy Romance Shoujo	30	Fall 1992	Nippon Animation	2219	822	0.11
3349	Kiddy GiRL-AND	6.88	Action Comedy Sci-Fi SuperPower	24	Fall 2009	Satelight	16271	7067	0.11
3355	Fortune Dogs	6.46	Adventure	39	Summer 2002	Vega Entertainment	850	250	0.19
3356	Mahoutsukai Sally	6.41	Magic Fantasy School Shoujo	109	Winter 1967	Toei Animation	2923	970	0.17
3358	Kure-nai	7.38	Comedy Drama MartialArts	12	Spring 2008	Brain's Base	80419	42966	0.05
3359	Amatsuki	6.92	Action Demons Fantasy Historical Shoujo Supernatural	13	Spring 2008	Studio Deen	52716	30131	0.08
3361	UFO Senshi Dai Apolon	6.13	Action Sci-Fi Mecha	26	Spring 1976	Eiken, Studio Live	759	269	0.23
3363	RD Sennou Chousashitsu	7.13	Action Sci-Fi	26	Spring 2008	Production I.G	23004	5489	0.19
3366	Persona: Trinity Soul	6.58	Action Sci-Fi SuperPower	26	Winter 2008	A-1 Pictures	70473	25020	0.15
3369	Shoubushi Densetsu Tetsuya	7.52	Game Historical Shounen	20	Fall 2000	Toei Animation	7149	3080	0.05
3372	RGB Adventure	-1	Adventure	6	Fall 2006	Unknown	237	61	0.4
3388	Majokko Megu-chan	6.65	Magic Shoujo	72	Spring 1974	Toei Animation	2384	757	0.15
3389	Bus Gamer	6.54	Action	3	Winter 2008	Anpro	25017	18517	0.03
3391	Maicching Machiko-sensei	6.22	Comedy Ecchi School	95	Fall 1981	Studio Pierrot	2636	303	0.28
3399	Rokushin Gattai GodMars	6.28	Action Mecha Sci-Fi Space	64	Fall 1981	Tokyo Movie Shinsha	1896	459	0.17
3407	Blassreiter	6.94	Action Sci-Fi	24	Spring 2008	Gonzo	74743	32154	0.14
3414	Hula Kappa	-1	Comedy	78	Spring 2006	Unknown	284	82	0.38
3418	Jungle no Ouja Taa-chan	7.01	Action Comedy Parody	50	Fall 1993	Group TAC	1805	486	0.15
3420	Shigofumi	7.49	Drama Fantasy Psychological Supernatural Thriller	12	Winter 2008	J.C.Staff	77715	34366	0.06
3424	Porphy no Nagai Tabi	6.99	Drama Historical Kids SliceofLife	52	Winter 2008	Nippon Animation	2402	467	0.17
3425	Meiken Lassie	6.73	Adventure SliceofLife Kids	25	Winter 1996	Nippon Animation	1089	312	0.15
3432	Chou Mashin Eiyuuden Wataru	6.91	Action Adventure Comedy Mecha	51	Fall 1997	Sunrise	1312	551	0.14
3433	Go-Q-Choji Ikkiman	6.43	Sci-Fi Sports	32	Spring 1986	Toei Animation	665	249	0.21
3434	Hey! Bumboo	6.07	Adventure Cars Kids	130	Spring 1985	Nippon Animation	1107	704	0.2
3435	Joou Heika no Petite Angie	6.38	Historical Mystery Shoujo	26	Winter 1978	Nippon Animation, Production Reed	1029	358	0.19
3436	Meme Iroiro Yume no Tabi	6.6	Adventure Kids Sci-Fi	127	Spring 1983	Nippon Animation	583	262	0.23
3437	Mister Ajikko	7.07	Comedy Shounen	99	Fall 1987	Sunrise	3715	815	0.14
3438	Moero! Top Striker	6.7	Action Shounen Sports	49	Fall 1991	Nippon Animation	3460	2509	0.07
3444	The☆Ultraman	6.37	Action Sci-Fi Space SuperPower	50	Spring 1979	Production Reed	2100	695	0.17
3451	Space Oz no Bouken	-1	Adventure Sci-Fi	26	Fall 1992	Unknown	336	119	0.25
3455	To LOVE-Ru	7.07	Sci-Fi Harem Comedy Romance Ecchi School Shounen	26	Spring 2008	Xebec	483606	317483	0.07
3457	Vampire Knight	7.03	Drama Mystery Romance Shoujo Supernatural Vampire	13	Spring 2008	Studio Deen	479832	371018	0.06
3458	Pi Po Pa Po Patrol-kun	-1	Cars Comedy Police Kids	65	Winter 2001	Unknown	400	101	0.31
3460	Bosco Daibouken	6.95	Kids Adventure Fantasy	26	Fall 1986	Nippon Animation	1305	645	0.14
3464	Kemeko Deluxe!	6.59	Action Comedy Ecchi Romance School Sci-Fi Shounen	12	Fall 2008	Hal Film Maker	36300	19842	0.09
3467	Nogizaka Haruka no Himitsu	7.24	Comedy Romance	12	Summer 2008	Diomedéa	117124	79160	0.04
3470	Special A	7.56	Comedy Romance School Shoujo	24	Spring 2008	Gonzo, AIC	297695	204292	0.06
3486	Yuusha Tokkyuu Might Gaine	6.91	Action Sci-Fi Adventure Mecha	47	Winter 1993	Sunrise	2243	623	0.14
3493	Ryuusei no Rockman Tribe	6.97	Adventure	21	Fall 2007	Xebec	5559	3564	0.04
3500	Yume Miru, Anime: on-chan	-1	Comedy	26	Winter 2008	Unknown	256	63	0.39
3501	Wellber no Monogatari: Sisters of Wellber Zwei	6.85	Adventure Fantasy Historical Romance	13	Winter 2008	Trans Arts	4382	1780	0.07
3503	Kanokon	6.46	Comedy Ecchi Harem Romance School Shounen SliceofLife Supernatural	12	Spring 2008	Xebec	205957	132637	0.08
3505	Yuusha Shirei Dagwon	6.87	Action Adventure MartialArts Mecha SuperPower School	48	Winter 1996	Sunrise	1574	445	0.16
3514	Noramimi	-1	Comedy	12	Winter 2008	TMS Entertainment	822	137	0.32
3519	Garakuta-doori no Stain	6.55	Comedy	13	Winter 2003	Unknown	1050	522	0.15
3545	Kochira Katsushikaku Kameari Kouenmae Hashutsujo	7.76	SliceofLife Comedy Police	373	Summer 1996	Gallop	12166	4609	0.14
3549	Allison to Lillia	7.35	Action Adventure Shounen	26	Spring 2008	Madhouse	38148	15482	0.13
3550	Midori no Makibao	6.45	Sports Comedy	61	Spring 1996	Studio Pierrot	1180	627	0.16
3561	Dennou Boukenki Webdiver	6.89	Adventure Mecha Sci-Fi Shounen	52	Spring 2001	Nippon Animation	1942	928	0.12
3568	Ganbarist! Shun	7.2	Comedy Shounen Sports	30	Summer 1996	Sunrise	2774	1057	0.11
3571	Mach GoGoGo (1997)	6.31	Adventure Cars	34	Winter 1997	Tatsunoko Production	3002	1581	0.11
3572	Macross F	7.92	Action Space Mecha Romance Military Music Sci-Fi	25	Spring 2008	Satelight	129291	73290	0.05
3573	Moegaku★5	-1	Magic Parody	40	Winter 2008	AIC Spirits	889	159	0.35
3576	Kodai Ouja Kyouryuu King	6.14	Adventure Kids Fantasy	49	Winter 2007	Sunrise	15334	11281	0.09
3577	Kyouran Kazoku Nikki	7.28	Comedy Sci-Fi	26	Spring 2008	Nomad	26601	11064	0.13
3579	Getter Robo	6.79	Action Sci-Fi Mecha Shounen	51	Spring 1974	Toei Animation	5793	1548	0.12
3588	Soul Eater	7.88	Action Fantasy Comedy Supernatural Shounen	51	Spring 2008	Bones	1218423	763245	0.07
3594	Tears to Tiara	7.2	Action Adventure Fantasy Magic	26	Spring 2009	White Fox	69340	33002	0.11
3604	Hidamari Sketch x 365	7.84	SliceofLife Comedy School Seinen	13	Summer 2008	Shaft	27309	17947	0.03
3609	Kikou Kantai Dairugger XV	6.42	Action Sci-Fi Adventure Space Mecha Shounen	52	Spring 1982	Toei Animation	1977	900	0.11
3613	Toshokan Sensou	7.48	Action Military Comedy Romance	12	Spring 2008	Production I.G	61809	29287	0.06
3614	Yakushiji Ryouko no Kaiki Jikenbo	7.09	Mystery Police Supernatural	13	Summer 2008	Doga Kobo	15747	6344	0.08
3615	Neo Angelique Abyss	6.85	Comedy Fantasy Harem Romance Shoujo	13	Spring 2008	Yumeta Company	33135	17572	0.09
3616	Kamen no Maid Guy	7.03	Action Comedy Ecchi SuperPower	12	Spring 2008	Madhouse	36455	21511	0.09
3619	Nanako SOS	6.31	Comedy Parody Romance SuperPower	39	Spring 1983	Unknown	1384	464	0.16
3627	D.C.II S.S.: Da Capo II Second Season	7.23	Fantasy Comedy Harem Romance Drama	13	Spring 2008	feel.	26787	16992	0.03
3630	Miracle Shoujo Limit-chan	-1	Comedy Magic School Sci-Fi Shoujo SuperPower	25	Fall 1973	Toei Animation	610	171	0.27
3631	Aoi Blink	6.77	Adventure Fantasy	39	Spring 1989	Unknown	1523	839	0.13
3637	Bouken Yuuki Pluster World	6.18	Action Sci-Fi Adventure Shounen	52	Spring 2003	Actas, Brain's Base	734	237	0.21
3638	Kaiketsu Zorori	7.06	Adventure Comedy	52	Winter 2004	Ajia-Do	2471	1154	0.12
3653	Kurogane no Linebarrels	6.95	Action Mecha Sci-Fi	24	Fall 2008	Gonzo	39055	20848	0.12
3654	Macademi Wasshoi!	6.97	Comedy Ecchi Fantasy Romance School Supernatural	12	Fall 2008	Zexcs	39050	22473	0.09
3655	Nabari no Ou	7.29	Action Fantasy Supernatural Comedy Drama Shounen	26	Spring 2008	J.C.Staff	147403	71346	0.1
3656	Monochrome Factor	6.99	Action ShounenAi Supernatural	24	Spring 2008	A.C.G.T.	52251	23203	0.13
3660	Mahou no Idol Pastel Yumi	6.29	Comedy Fantasy Kids Magic Shoujo	25	Spring 1986	Studio Pierrot	2072	584	0.14
3667	Strike Witches	7	Action Ecchi Magic Military Sci-Fi	12	Summer 2008	Gonzo	145016	75808	0.09
3668	Telepathy Shoujo Ran	6.64	Fantasy School	26	Summer 2008	TMS Entertainment	8032	2304	0.22
3670	Kikou Souseiki Mospeada	7.1	Action Mecha Military	25	Fall 1983	Tatsunoko Production, Studio World	7277	3548	0.05
3672	Tottemo! Luckyman	6.88	Comedy SuperPower Sci-Fi Shounen	50	Spring 1994	Studio Pierrot	1568	812	0.12
3673	Nijuu Mensou no Musume	7.57	Action Adventure Mystery	22	Spring 2008	Bones, Telecom Animation Film	30373	12206	0.09
3676	Machine Robo: Cronos no Dai Gyakushuu	6.32	Action MartialArts Mecha Sci-Fi Space	47	Summer 1986	Production Reed	1379	310	0.18
3683	Kabatotto	6	Comedy	300	Winter 1971	Tatsunoko Production	517	222	0.25
3689	Hatsumei Boy Kanipan	6.57	Sci-Fi Adventure Comedy Mecha	31	Summer 1998	Unknown	721	315	0.17
3690	Chou Hatsumei Boy Kanipan	6.53	Adventure Comedy Mecha Romance	21	Winter 1999	Unknown	771	265	0.2
3691	Watashi to Watashi: Futari no Lotte	6.96	SliceofLife Kids Shoujo	29	Fall 1991	Tokyo Movie Shinsha	939	244	0.18
3692	Yes! Precure 5 GoGo!	7.12	Action Magic Fantasy School Shoujo	48	Winter 2008	Toei Animation	7566	4047	0.05
3701	Kaiba	8.17	Adventure Mystery Romance Sci-Fi	12	Spring 2008	Madhouse	113817	39280	0.05
3704	Zenryoku Usagi	6.31	Comedy Kids	52	Winter 2008	Unknown	840	177	0.36
3710	Hakaba Kitarou	6.9	Horror Supernatural	11	Winter 2008	Toei Animation	9880	3766	0.12
3712	Zero no Tsukaima: Princesses no Rondo	7.4	Action Adventure Harem Comedy Magic Romance Ecchi Fantasy School	12	Summer 2008	J.C.Staff	368587	316451	0.01
3713	Jigoku Shoujo Mitsuganae	7.65	Mystery Psychological Supernatural	26	Fall 2008	Studio Deen	88526	46757	0.04
3723	Koala Boy Kokki	6.23	Comedy	26	Spring 1984	Unknown	669	364	0.19
3724	Taiko no Tatsujin	6.02	Game	26	Spring 2005	Unknown	780	274	0.18
3731	Itazura na Kiss	7.53	Comedy Romance Shoujo	25	Spring 2008	TMS Entertainment	228881	153652	0.06
3736	Parappa the Rapper	5.97	Comedy Fantasy	30	Spring 2001	J.C.Staff, Production I.G	2662	852	0.22
3737	Usavich	6.96	Adventure Comedy	13	Unknown	Kanaban Graphics	6094	4733	0.05
3738	Usavich II	7.11	Adventure Comedy	13	Fall 2007	Kanaban Graphics	4376	3911	0.03
3750	Maria-sama ga Miteru 4th	7.82	School Shoujo ShoujoAi SliceofLife	13	Winter 2009	Studio Deen	18062	10586	0.03
3754	Tongari Boushi no Memole	6.91	Fantasy Magic Shoujo	50	Spring 1984	Toei Animation	1976	963	0.12
3761	Wanwan Sanjuushi	6.73	Adventure Historical	26	Fall 1981	Nippon Animation	2353	1718	0.08
3765	Pygmalio	6.8	Adventure Fantasy Shoujo	39	Fall 1990	Nippon Animation	1129	490	0.16
3768	Play Ball	6.13	Action Sports Shounen	13	Summer 2005	Eiken	786	180	0.27
3769	Play Ball 2nd	-1	Action Sports Shounen	13	Winter 2006	Eiken	434	135	0.28
3772	Saiko Robot Kombock	5.4	Mecha Sci-Fi	25	Fall 2003	Unknown	3620	2656	0.15
3776	Go! Go! Itsutsugo Land	6.52	School	50	Spring 2001	Eiken	737	388	0.15
3800	Arrow Emblem Grand Prix no Taka	6.47	Cars Sports Drama	44	Fall 1977	Toei Animation	1512	681	0.15
3806	Sasuga no Sarutobi	6.48	Action Adventure Comedy Sports Romance MartialArts	69	Fall 1982	Tsuchida Productions	1085	311	0.23
3807	Honoo no Alpenrose: Judy & Randy	6.78	Historical Drama Romance Shoujo	20	Spring 1985	Tatsunoko Production	2411	916	0.11
3808	Futari Daka	6.01	Cars Sports Shounen	36	Fall 1984	Kokusai Eigasha	676	188	0.22
3809	Shirayuki Hime no Densetsu	6.65	Adventure Fantasy Romance	52	Spring 1994	Tatsunoko Production	2690	1604	0.08
3810	Mori no Youki na Kobito-tachi: Belfy to Lillibit	6.38	Adventure Fantasy Comedy	26	Winter 1980	Tatsunoko Production	1161	624	0.14
3811	Hoshi no Oujisama Petit Prince	6.77	Adventure	35	Summer 1978	Unknown	1463	540	0.17
3812	Yume no Hoshi no Button Nose	6.48	Kids Adventure	26	Fall 1985	Unknown	648	357	0.18
3819	Sasurai no Taiyou	6.51	Music Drama	26	Spring 1971	Unknown	1164	298	0.21
3822	Sougen no Shoujo Laura	-1	Adventure Shoujo	26	Fall 1975	Nippon Animation	594	148	0.28
3823	Little Lulu to Chicchai Nakama	6.43	Kids SliceofLife Comedy	26	Fall 1976	Nippon Animation	703	393	0.17
3825	Dokaben	5.97	Action Sports School Shounen	163	Fall 1976	Nippon Animation	760	232	0.24
3827	Ore wa Teppei	6.52	Action Shounen Sports	28	Fall 1977	Nippon Animation	1138	340	0.18
3834	Hoshi no Ko Chobin	6.06	Sci-Fi Adventure	26	Spring 1974	Studio Zero	510	230	0.23
3835	Ai no Gakkou Cuore Monogatari	6.58	SliceofLife Historical Drama School	26	Spring 1981	Nippon Animation	1854	715	0.16
3836	Meiken Jolie	6.73	Adventure Historical	52	Spring 1981	Visual 80	2065	1104	0.12
3837	Mashin Eiyuuden Wataru	6.91	Adventure Comedy Mecha Sci-Fi Shounen	45	Spring 1988	Sunrise	2120	795	0.13
3838	Himitsu no Akko-chan 2	6.18	Magic School Shoujo	61	Fall 1988	Toei Animation	756	273	0.17
3839	Himitsu no Akko-chan 3	6.39	Magic School Shoujo	44	Spring 1998	Toei Animation	742	248	0.18
3840	Crystal Blaze	6.16	Action Sci-Fi	12	Spring 2008	Unknown	15235	5650	0.17
3841	Chi's Sweet Home	7.7	Comedy SliceofLife	104	Spring 2008	Madhouse	54396	23184	0.12
3844	Apache Yakyuugun	-1	Action Sports School	26	Fall 1971	Toei Animation	667	184	0.3
3845	Mahoutsukai Chappy	6.08	Adventure Kids Magic	39	Spring 1972	Toei Animation	554	189	0.25
3846	Microid S	-1	Action Sci-Fi	26	Spring 1973	Toei Animation	442	124	0.3
3858	Konchuu Monogatari Minashigo Hutch	6.42	Adventure Comedy Drama	91	Spring 1970	Tatsunoko Production	2259	1482	0.14
3859	Top Secret: The Revelation	7.32	Sci-Fi Mystery Police Psychological Shoujo	26	Spring 2008	Madhouse	16585	3690	0.15
3869	Sakura Momoko Gekijou: Coji-Coji	-1	Fantasy Comedy	100	Fall 1997	Nippon Animation	420	116	0.3
3870	Kick no Oni	6.32	Shounen Sports	26	Fall 1970	Toei Animation	678	182	0.29
3873	Honey Honey no Suteki na Bouken	6.24	Adventure Historical Shoujo	29	Fall 1981	Unknown	820	281	0.18
3874	Ashita e Free Kick	6.46	Sports	52	Spring 1992	Production Reed	1726	792	0.13
3875	Mahoutsukai Sally 2	6.39	Comedy Magic Shoujo	88	Fall 1989	Toei Animation	1189	611	0.13
3876	Maeterlinck no Aoi Tori: Tyltyl Mytyl no Bouken Ryokou	6.28	Adventure Fantasy	26	Winter 1980	Toei Animation	735	221	0.21
3877	Sasurai no Shoujo Nell	6.26	Adventure Historical Shoujo	26	Fall 1979	DAX Production	1036	292	0.19
3878	Mahou Shoujo Lalabel	6.36	SliceofLife Magic Comedy Shoujo	49	Winter 1980	Toei Animation	1464	486	0.16
3879	Paris no Isabelle	5.73	Historical Drama	13	Spring 1979	DAX Production	805	257	0.2
3880	Makyou Densetsu Acrobunch	6.05	Mecha Sci-Fi Shounen	24	Spring 1982	Unknown	850	217	0.21
3881	Majokko Tickle	6.12	Magic Comedy Shoujo	45	Spring 1978	Toei Animation	970	320	0.19
3885	Sugar Bunnies	-1	Kids	26	Spring 2007	Asahi Production	633	137	0.29
3900	Ougon Bat	6.33	Action Sci-Fi SuperPower	52	Spring 1967	Dai-Ichi Douga, Dongyang Animation	1462	357	0.22
3907	Ginga Sengoku Gunyuuden Rai	7.94	Sci-Fi Adventure Space Romance Shounen	52	Spring 1994	E&G Films	11612	5114	0.06
3909	Bikkuriman	-1	Comedy Fantasy	75	Fall 1987	Toei Animation	557	163	0.28
3915	Time Bokan	6.52	Adventure Comedy Mecha	61	Fall 1975	Tatsunoko Production	1831	576	0.22
3927	Mobile Suit Gundam 00 Second Season	8.11	Action Drama Mecha Military Sci-Fi Space	25	Fall 2008	Sunrise	127119	102871	0.01
3932	Magnerobo Ga-Keen	6.25	Action Mecha Sci-Fi	39	Fall 1976	Toei Animation	884	276	0.2
3935	Karakuri Kiden: Hiwou Senki	6.48	Action Adventure Mecha Historical	26	Fall 2000	Bones	1342	394	0.19
3936	Personal Computer Travel Tanteidan	6.12	Kids Adventure Historical Sci-Fi	26	Spring 1983	Tatsunoko Production	921	441	0.15
3937	Takoyaki Mant-Man	-1	Comedy Sci-Fi	77	Spring 1998	Studio Pierrot	329	139	0.31
3947	Jarinko Chie (TV)	6.29	SliceofLife Comedy Drama Seinen	64	Fall 1981	Tokyo Movie Shinsha	803	157	0.27
3958	Kannagi	7.32	Comedy School Shounen Supernatural	13	Fall 2008	A-1 Pictures, Ordet	137337	76495	0.04
3969	Kagaku Kyuujo-tai TechnoVoyager	6.1	Action Adventure Mecha Sci-Fi Space	18	Spring 1982	Toei Animation	796	281	0.21
3972	Yu☆Gi☆Oh! 5D's	7.42	Action Game Shounen	154	Spring 2008	Gallop	102854	67244	0.1
3974	Tetsuwan Birdy Decode	7.46	Action Sci-Fi Comedy	13	Summer 2008	A-1 Pictures	80455	38798	0.05
3975	Uchi no 3 Shimai	-1	SliceofLife Comedy	102	Spring 2008	Toei Animation, Daewon Media	503	131	0.33
4013	Paul no Miracle Daisakusen	6.45	Action Adventure Kids	50	Fall 1976	Tatsunoko Production	704	345	0.18
4021	Seiyou Kottou Yougashiten: Antique	7.06	Comedy Shoujo ShounenAi	12	Summer 2008	Nippon Animation, SynergySP, Shirogumi	31703	16830	0.09
4023	Kitty's Paradise	6.22	Fantasy Kids	16	Spring 1994	Bones, Sanrio	1142	688	0.11
4024	Sanrio Anime Sekai Meisaku Gekijou	6.09	Adventure Fantasy Kids	13	Fall 1987	Unknown	1149	595	0.12
4025	Asobou! Hello Kitty	5.99	Adventure Fantasy Kids	26	Spring 1994	Unknown	1074	611	0.14
4028	Slayers Revolution	7.29	Adventure Comedy Fantasy	13	Summer 2008	J.C.Staff	32451	21872	0.04
4038	Zettai Karen Children	7.34	Action Comedy Supernatural Shounen	51	Spring 2008	SynergySP	39507	12523	0.13
4039	Golgo 13 (TV)	7.54	Action Adventure Drama Thriller Seinen	50	Spring 2008	The Answer Studio	33598	8876	0.14
4044	Youkai Ningen Bem	6.07	Horror Demons	26	Fall 1968	Dai-Ichi Douga	1360	410	0.2
4049	Mafukiden: Pandarian	6.13	Adventure Comedy Fantasy Kids Magic SuperPower	26	Winter 2005	Planet	722	313	0.21
4050	Kouchuu Ouja Mushiking: Mori no Tami no Densetsu	6.69	Fantasy	52	Spring 2005	TMS Entertainment	2575	1273	0.1
4051	Net Ghost Pipopa	6.75	Action Adventure Comedy Kids Sci-Fi Shounen	51	Spring 2008	Studio Hibari	1646	639	0.22
4052	Medarot Damashii	6.65	Action Sci-Fi Adventure	39	Summer 2000	Trans Arts	15634	11510	0.06
4054	Norimono Oukoku BuBu ChaCha	6.68	SliceofLife Comedy	26	Spring 1999	Daume	630	320	0.19
4056	Masuda Kousuke Gekijou Gag Manga Biyori 3	7.1	Comedy	12	Spring 2008	Studio Deen	2433	1461	0.06
4060	Grimm Meisaku Gekijou	7.4	Adventure Comedy Fantasy Kids Magic	24	Fall 1987	Nippon Animation	3544	1763	0.07
4061	Grimm Masterpiece Theater II	7.33	Adventure Comedy Fantasy Kids Magic	23	Fall 1988	Nippon Animation	2033	1160	0.07
4062	Musashi no Ken	7.16	Sports Shounen	72	Spring 1985	Eiken	1929	445	0.16
4063	Sekirei	7.13	Action Comedy Ecchi Harem SuperPower	12	Summer 2008	Seven Arcs	329432	231704	0.04
4066	Tytania	6.84	Adventure Military Psychological Romance Sci-Fi Space	26	Fall 2008	Artland	17390	7086	0.15
4459	Ojarumaru	6.37	Adventure Comedy Kids Fantasy	-1	Fall 1998	Gallop	1274	0	0.42
4067	Shin Megami Tensei Devil Children	6.27	Action Adventure Demons Fantasy Game Kids Magic Sci-Fi Supernatural	50	Fall 2000	Actas	1905	349	0.19
4068	Shin Megami Tensei Devil Children: Light & Dark	6.42	Action Kids Adventure Fantasy Magic Game Supernatural Demons Sci-Fi	52	Fall 2002	Actas	1421	270	0.2
4073	Kyouryuu Daisensou Izenborg	6.6	Action Mecha	39	Fall 1977	Unknown	897	417	0.14
4080	Kyou kara Maou! 3rd Series	7.81	Adventure Comedy Demons Fantasy Shoujo	39	Spring 2008	Studio Deen	28542	15390	0.05
4081	Natsume Yuujinchou	8.33	SliceofLife Demons Supernatural Drama Shoujo	13	Summer 2008	Brain's Base	412285	181953	0.04
4083	Wonder Beat Scramble	6.54	Action Space Sci-Fi	26	Spring 1986	Mushi Production	831	326	0.18
4086	Muka Muka Paradise	6.84	Adventure Comedy	51	Fall 1993	Nippon Animation	2064	1467	0.09
4087	Michiko to Hatchin	7.85	Action Adventure	22	Fall 2008	Manglobe	148853	53387	0.07
4088	Wonder 3	-1	Action Adventure Comedy Sci-Fi	52	Summer 1965	Mushi Production	670	147	0.35
4101	Wan Wan Celepoo Soreyuke! Tetsunoshin	-1	Comedy Fantasy Kids	51	Winter 2006	Studio Comet	760	112	0.26
4104	Mini Moni the TV	5.49	Comedy	15	Summer 2003	Unknown	485	265	0.15
4113	Mahou no Mako-chan	6.3	Fantasy Magic Romance Shoujo	48	Fall 1970	Toei Animation	1368	455	0.19
4114	Onegai My Melody: Kuru Kuru Shuffle!	7.2	Fantasy Magic Comedy	52	Spring 2006	Studio Comet	3516	1595	0.08
4119	Juushin Liger	6.53	Action Mecha Sci-Fi	43	Spring 1989	Sunrise	1436	265	0.17
4121	Meimon! Daisan Yakyuubu	-1	Action Sports Shounen	40	Fall 1988	Unknown	517	121	0.26
4132	Wakakusa no Yon Shimai	6.42	SliceofLife Historical Drama	26	Spring 1981	Toei Animation	1019	426	0.18
4151	Blade of the Immortal	6.82	Action Adventure Historical Supernatural Samurai	13	Summer 2008	Bee Train	56587	26607	0.1
4154	Time Bokan Series: Yattodetaman	6.46	Action Adventure Comedy Fantasy Mecha	52	Winter 1981	Tatsunoko Production	1648	1010	0.11
4181	Clannad: After Story	8.96	SliceofLife Comedy Supernatural Drama Romance	24	Fall 2008	Kyoto Animation	915885	641323	0.02
4183	Uchuu Taitei God Sigma	6.37	Action Space Mecha	50	Spring 1980	Toei Animation	834	270	0.21
4186	Chrome Shelled Regios	7.35	Action Adventure Fantasy School Sci-Fi	24	Winter 2009	Zexcs	178908	118689	0.05
4189	Fuyu no Sonata	7.4	Drama Romance	26	Fall 2009	Studio Comet, KeyEast, REALTHING	20653	4933	0.17
4191	Popolocrois Monogatari	7.04	Adventure Fantasy	25	Fall 1998	Production I.G	2432	916	0.12
4192	Hayate no Gotoku!!	7.73	Action Harem Comedy Parody Romance Shounen	25	Spring 2009	J.C.Staff	99880	67766	0.04
4196	Ikkitousen: Great Guardians	6.78	Action Ecchi MartialArts School SuperPower	12	Summer 2008	Arms	54244	34980	0.04
4197	Blue Dragon: Tenkai no Shichi Ryuu	6.56	Adventure Comedy Fantasy Supernatural	51	Spring 2008	Studio Pierrot	13871	8481	0.07
4198	Koutetsu Jeeg	7.01	Action Mecha Demons Sci-Fi Shounen	46	Fall 1975	Toei Animation	2373	949	0.13
4199	Entaku no Kishi Monogatari: Moero Arthur	6.32	Adventure Romance Historical Drama	30	Fall 1979	Toei Animation	1235	481	0.16
4208	Tetsujin 28-gou (1980)	6.64	Action Mecha	51	Fall 1980	Unknown	1506	696	0.14
4209	Mission-E	6.48	Action Comedy School Sci-Fi	12	Summer 2008	Studio Deen	5115	2392	0.13
4211	Hareluya II Boy	6.33	Action Fantasy Comedy School Shounen	25	Spring 1997	Triangle Staff	1205	248	0.2
4214	Rosario to Vampire Capu2	6.98	Comedy Ecchi Fantasy Harem Romance School Vampire	13	Fall 2008	Gonzo	343119	291591	0.02
4224	Toradora!	8.24	SliceofLife Comedy Romance School	25	Fall 2008	J.C.Staff	1567792	1191775	0.03
4240	Ginga Senpuu Braiger	6.68	Action Sci-Fi Adventure Space Mecha	39	Fall 1981	Toei Animation	1787	419	0.15
4242	Ginga Reppuu Baxingar	6.31	Action Adventure Mecha	39	Summer 1982	Kokusai Eigasha	871	185	0.2
4244	Ginga Shippuu Sasuraiger	6.33	Action Adventure Mecha	43	Spring 1983	Unknown	862	188	0.18
4262	Koihime†Musou	6.76	Action Adventure Historical Ecchi MartialArts Fantasy	12	Summer 2008	Doga Kobo	42360	22437	0.08
4264	Ultraviolet: Code 044	5.93	Action Sci-Fi	12	Summer 2008	Madhouse	5748	1210	0.23
4286	Bonobono (TV)	6.71	Comedy	48	Spring 1995	Unknown	1146	354	0.24
4314	Nanami-chan 2nd Series	6.31	Comedy Kids	16	Summer 2005	Unknown	497	237	0.15
4316	Nanami-chan 3rd Series	6.11	Comedy Kids	16	Summer 2006	Unknown	468	207	0.17
4331	Penguin no Mondai	5.88	Comedy Kids	100	Spring 2008	Shogakukan Music & Digital Entertainment	641	186	0.39
4332	Seigi wo Aisuru Mono Gekkou Kamen	6.63	Action Mystery	39	Winter 1972	Unknown	664	234	0.22
4334	Heroman	6.84	Action Sci-Fi Shounen	26	Spring 2010	Bones	34317	14001	0.22
4339	Ashita e Attack!	6.4	Sports School Drama	23	Spring 1977	Nippon Animation	1504	602	0.17
4362	Fireball	6.68	Comedy Sci-Fi	13	Spring 2008	Jinnis Animation Studios	8998	6650	0.04
4375	Kyoro-chan	7.23	Adventure Comedy Fantasy	91	Summer 1999	Group TAC	2140	1329	0.14
4382	Suzumiya Haruhi no Yuuutsu (2009)	7.23	Comedy Mystery Parody Romance School Sci-Fi SliceofLife	14	Spring 2009	Kyoto Animation	429192	314273	0.03
4383	Catman Series III	6.36	Comedy Fantasy SliceofLife	6	Spring 2008	Unknown	1204	707	0.06
4411	Mirai Robo Daltanias	6.64	Action Sci-Fi Space Mecha	47	Spring 1979	Toei Animation	1147	465	0.16
4415	World Destruction: Sekai Bokumetsu no Rokunin	6.98	Adventure Fantasy	13	Summer 2008	Production I.G	46845	27762	0.07
4416	Yuusha-Ou GaoGaiGar Final Grand Glorious Gathering	7.46	Action Mecha Sci-Fi SuperPower	12	Spring 2005	Sunrise	2938	1098	0.08
4427	Tatakae!! Ramenman	6.39	Action Adventure MartialArts Shounen	35	Winter 1988	Toei Animation	1029	270	0.2
4439	Kurenai Sanshirou	6.46	Action MartialArts Sports	26	Spring 1969	Tatsunoko Production	1367	490	0.17
4443	Duel Masters Charge	6.19	Action Adventure Comedy Shounen	52	Spring 2004	Studio Hibari	4463	3166	0.08
4444	Zero Duel Masters	6.02	Adventure Comedy Game Sports	12	Spring 2007	Unknown	2114	1213	0.11
4468	Nagagutsu wo Haita Neko no Bouken	6.61	Adventure Fantasy	26	Spring 1992	Unknown	674	356	0.14
4470	Gene Diver	-1	Action Sci-Fi Adventure Historical Fantasy	56	Spring 1994	Unknown	533	109	0.27
4477	Nodame Cantabile: Paris-hen	8.17	Comedy Josei Music Romance SliceofLife	11	Fall 2008	J.C.Staff	107428	84899	0.01
4483	Mahoutsukai ni Taisetsu na Koto: Natsu no Sora	7.29	SliceofLife Drama Magic Romance Shounen	12	Summer 2008	Hal Film Maker	22240	7276	0.09
4486	Getter Robo G	6.53	Action Mecha Sci-Fi Shounen	39	Spring 1975	Toei Animation	2222	913	0.09
4503	Choujikuu Kidan Southern Cross	6.58	Action Sci-Fi Drama Mecha	23	Spring 1984	Tatsunoko Production, Studio World	6112	3446	0.05
4504	Kinkyuu Hasshin Saver Kids	6.5	Action Sci-Fi Adventure Comedy Mecha	50	Winter 1991	Tokyo Movie Shinsha	583	226	0.2
4511	Hoero! Bun Bun	6.36	Adventure SliceofLife	39	Fall 1980	Unknown	667	286	0.19
4514	Seton Doubutsuki: Kuma no Ko Jacky	6.7	Adventure Historical Drama	26	Summer 1977	Nippon Animation	1634	1136	0.1
4515	Seton Doubutsuki: Risu no Banner	6.56	Kids Drama	26	Spring 1979	Nippon Animation	1179	683	0.13
4532	Taiyou no Yuusha Fighbird	6.69	Action Mecha Sci-Fi	48	Winter 1991	Sunrise	2481	545	0.12
4536	Muteki Robo Trider G7	6.42	Comedy Mecha Sci-Fi Space	50	Winter 1980	Sunrise	899	329	0.19
4547	RoboDz	-1	Sci-Fi	26	Summer 2008	Toei Animation	263	61	0.4
4548	Yozakura Quartet	6.84	Action Magic Comedy SuperPower Supernatural Shounen	12	Fall 2008	Nomad	119643	40256	0.09
4549	Hokuto no Ken: Raoh Gaiden Ten no Haoh	7.14	Action Drama MartialArts	13	Fall 2008	Satelight	10376	5086	0.07
4550	Hyakko	7.26	Comedy School SliceofLife	13	Fall 2008	Nippon Animation	40506	22740	0.09
4551	Hakushaku to Yousei	7.28	Adventure Historical Magic Romance Fantasy Shoujo	12	Fall 2008	Artland	102568	62792	0.05
4553	Sukima no Kuni no Polta	5.89	Fantasy	13	Fall 2005	Unknown	336	145	0.24
4554	Dokkiri Doctor	6.56	SliceofLife Comedy School	26	Fall 1998	Studio Pierrot	906	252	0.21
4563	Bakukyuu Hit! Crash B-Daman	6.01	Game Adventure Kids	50	Winter 2006	SynergySP	1509	685	0.13
4574	Saikyou Robot Daiouja	-1	Action Sci-Fi Mecha Shounen	50	Winter 1981	Sunrise	614	160	0.26
4581	Shikabane Hime: Aka	7.24	Action Horror Supernatural Shounen	13	Fall 2008	Gainax, feel.	105202	50514	0.07
4584	Topo Gigio	6.2	Kids Adventure Comedy	21	Spring 1988	Nippon Animation	1581	1199	0.09
4586	Daisuki! BuBu ChaCha	7.11	Kids	26	Spring 2001	Daume	1361	872	0.14
4591	Yoiko	6.3	SliceofLife Comedy Ecchi School	20	Fall 1998	Studio Pierrot	4055	1192	0.15
4597	Kouya no Shounen Isamu	6.28	Action Adventure Shounen	52	Spring 1973	Unknown	771	259	0.21
4598	Urikupen Kyuujo-tai	-1	Adventure Comedy Kids	156	Fall 1974	Tatsunoko Production	327	113	0.39
4599	Tanoshii Willow Town	6.24	Kids Fantasy	26	Fall 1993	Unknown	652	364	0.16
4614	Moero Arthur: Hakuba no Ouji	6.18	Adventure Romance Historical Drama	22	Spring 1980	Toei Animation	643	283	0.2
4615	Yama Nezumi Rocky Chuck	6.1	Kids Adventure Fantasy	52	Winter 1973	Nippon Animation	1082	421	0.19
4616	Yumemiru Topo Gigio	6.06	Kids Adventure Comedy	13	Fall 1988	Nippon Animation	729	488	0.14
4618	RideBack	7.29	Action Drama Mecha School Sci-Fi	12	Winter 2009	Madhouse	42283	23727	0.07
4651	Yume no Crayon Oukoku	6.92	Adventure Fantasy Comedy Shoujo	70	Fall 1997	Toei Animation	2727	742	0.14
4654	Toaru Majutsu no Index	7.44	Action Magic Sci-Fi SuperPower	24	Fall 2008	J.C.Staff	635900	385870	0.06
4657	Arad Senki: Slap Up Party	6.75	Action Adventure Comedy Fantasy	26	Spring 2009	Gonzo	14658	5875	0.18
4662	Neo Angelique Abyss: Second Age	7.04	Adventure Fantasy Harem Shoujo	13	Summer 2008	Unknown	17739	11215	0.05
4663	Tekken Chinmi	7.27	Action Adventure Historical MartialArts Shounen	20	Summer 1988	Production Reed	3560	2222	0.05
4667	B-Legend! Battle B-Daman Fire Spirits!	6.37	Adventure Fantasy Game Kids	51	Winter 2005	Unknown	4134	3032	0.07
4684	Scarecrowman	-1	Fantasy Kids	26	Summer 2008	TMS Entertainment	320	81	0.37
4690	Cyborg 009 (1979)	7.17	Action Adventure Mecha Sci-Fi Shounen	50	Spring 1979	Toei Animation	7339	3145	0.1
4709	Aesop's World	5.82	Kids	26	Spring 1999	Sunrise	492	215	0.3
4719	Queen's Blade: Rurou no Senshi	6.18	Action Adventure Ecchi Fantasy	12	Spring 2009	Arms	78872	37398	0.13
4720	White Album	6.55	Drama Harem Music Romance	13	Winter 2009	Seven Arcs	94919	36636	0.11
4722	Skip Beat!	8.13	Comedy Drama Romance Shoujo	25	Fall 2008	Hal Film Maker	219475	153037	0.04
4723	Seishun Anime Zenshuu	6.5	Historical Drama Romance	32	Spring 1986	Nippon Animation	1434	200	0.22
4725	Ga-Rei: Zero	7.64	Action SuperPower Supernatural Thriller	12	Fall 2008	AIC Spirits, Asread	205932	106942	0.06
4726	Druaga no Tou: The Sword of Uruk	7.24	Adventure Fantasy	12	Winter 2009	Gonzo	66319	47276	0.03
4737	Himitsukessha Taka no Tsume	6.13	Comedy Parody SuperPower	11	Spring 2006	DLE	829	277	0.24
4742	Papa to Odorou	6.71	Comedy	16	Summer 1999	Studio Deen	1036	468	0.14
4744	Akaneiro ni Somaru Saka	6.47	Harem Comedy Romance Ecchi School	12	Fall 2008	TNK	133249	96475	0.04
4752	Vampire Knight: Guilty	7.22	Drama Mystery Romance Shoujo Supernatural Vampire	13	Fall 2008	Studio Deen	303271	255819	0.03
4773	Yamato Takeru	6.78	Action Adventure Fantasy Magic Mecha Sci-Fi Shounen Space	37	Spring 1994	Nippon Animation	1773	486	0.15
4782	Mama wa Poyopoyo Saurus ga Osuki	6.57	Comedy Kids SliceofLife	52	Fall 1995	Nippon Animation	592	178	0.24
4789	ef: A Tale of Melodies.	8.04	Mystery Supernatural Drama Romance	12	Fall 2008	Shaft	146469	75316	0.04
4800	Huckleberry Finn Monogatari	6.51	Adventure	26	Summer 1994	Aubec	1253	733	0.1
4801	Suhoyojeong Michel	6.39	Adventure Fantasy Kids	26	Summer 2003	Unknown	626	190	0.22
4807	Mashin Eiyuuden Wataru 2	6.78	Adventure Comedy Mecha	46	Spring 1990	Sunrise	956	443	0.12
6918	Wolverine	6.1	Action MartialArts SuperPower	12	Winter 2011	Madhouse	21904	12357	0.14
4808	Hurricane Polymar	6.54	Action Sci-Fi Adventure Police SuperPower	26	Fall 1974	Tatsunoko Production	1759	586	0.17
4810	Shinzou Ningen Casshern	6.7	Action Sci-Fi Adventure	35	Fall 1973	Tatsunoko Production	4950	1565	0.11
4814	Junjou Romantica 2	7.85	Comedy Drama Romance ShounenAi	12	Fall 2008	Studio Deen	147349	127992	0.01
4823	Youkai Ningen Bem (2006)	5.87	Horror Demons Supernatural	26	Winter 2006	Studio Comet	2379	983	0.16
4853	Tezuka Osamu no Don Dracula	6.13	Comedy Horror Supernatural Vampire	8	Spring 1982	Unknown	1875	881	0.12
4879	Mouryou no Hako	7.19	Mystery Psychological Supernatural Thriller Seinen	13	Fall 2008	Madhouse	52774	14871	0.12
4884	Tales of the Abyss	7.32	Adventure Drama Fantasy	26	Fall 2008	Sunrise	109058	54066	0.09
4896	Umineko no Naku Koro ni	7.13	Mystery Horror Psychological Supernatural	26	Summer 2009	Studio Deen	184571	92368	0.09
4898	Kuroshitsuji	7.75	Action Mystery Comedy Historical Demons Supernatural Shounen	24	Fall 2008	A-1 Pictures	875100	573799	0.07
4903	Kyou no 5 no 2 (TV)	7.23	Comedy Ecchi School Seinen	13	Fall 2008	Xebec	31535	15824	0.08
4905	Mach Girl	-1	Cars Comedy	26	Fall 2008	Tatsunoko Production	528	150	0.3
4908	Bihada Ichizoku	5.77	Parody Drama Shoujo	12	Fall 2008	Unknown	3977	1487	0.15
4928	Idol Tenshi Youkoso Youko	6.2	Comedy Drama Shoujo	43	Spring 1990	Unknown	1040	204	0.23
4929	Next Senki Ehrgeiz	5.53	Action Sci-Fi Space Mecha	12	Fall 1997	Studio Deen	1068	300	0.19
4933	Muu no Hakugei	6.31	Action Fantasy Sci-Fi	26	Spring 1980	Unknown	942	319	0.17
4935	Ikkyuu-san	6.75	Kids Comedy Historical	296	Fall 1975	Toei Animation	1500	719	0.2
4936	Ninja Hattori-kun	6.81	SliceofLife Comedy MartialArts Shounen	694	Fall 1981	Shin-Ei Animation	6613	4235	0.18
4940	Sabaku no Kaizoku! Captain Kuppa	-1	Action Adventure	26	Summer 2001	Unknown	403	104	0.32
4962	Rokumon Tengai Mon Colle Knights	6.49	Adventure Comedy Fantasy Kids Magic Parody	51	Winter 2000	Studio Deen	3951	1830	0.19
4975	ChäoS;HEAd	6.37	Sci-Fi Harem Mystery Psychological Supernatural	12	Fall 2008	Madhouse	257868	174511	0.06
4981	Casshern Sins	7.53	Action Adventure Drama Psychological Sci-Fi	24	Fall 2008	Madhouse, Tatsunoko Production	130742	53757	0.1
4999	Asu no Yoichi!	6.78	Harem Comedy Romance Ecchi MartialArts Shounen	12	Winter 2009	AIC	175294	130323	0.04
5005	Tentai Senshi Sunred	7.81	Comedy Parody SuperPower Seinen	26	Fall 2008	AIC ASTA	19350	6426	0.11
5018	Piroppo	-1	Comedy	23	Fall 2001	Studio 4°C	500	132	0.22
5022	Toushi Gordian	6.26	Action Mecha Sci-Fi	73	Fall 1979	Tatsunoko Production	718	258	0.2
5023	Ninpuu Kamui Gaiden	6.63	Action Adventure Historical MartialArts Samurai	26	Spring 1969	Tele-Cartoon Japan	1443	308	0.18
5027	Stitch!	6.04	Adventure Comedy Kids	25	Fall 2008	Madhouse	4733	2411	0.15
5028	Major S5	8.45	Comedy Drama Romance Shounen Sports	25	Winter 2009	SynergySP	57160	44811	0.01
5030	Maria†Holic	7.05	Comedy Parody School ShoujoAi	12	Winter 2009	Shaft	148265	82987	0.09
5032	Cobra The Animation	7.11	Action Adventure Space Sci-Fi	13	Winter 2010	Magic Bus	7116	3623	0.1
5034	Shikabane Hime: Kuro	7.32	Action Horror Supernatural Shounen	12	Winter 2009	Gainax, feel.	67903	39399	0.03
5039	Kurozuka	6.93	Action Drama Historical Horror Romance Sci-Fi Vampire	12	Fall 2008	Madhouse	82026	33820	0.08
5040	One Outs	8.35	Sports Psychological Seinen	25	Fall 2008	Madhouse	182471	108150	0.04
5041	Guin Saga	7.2	Adventure Fantasy	26	Spring 2009	Satelight	38187	15159	0.14
5052	Eightman	5.91	Action Mecha Drama Sci-Fi	56	Fall 1963	Nippon Animation	1300	361	0.27
5070	Beast Wars Second Chou Seimeitai Transformers	6.4	Action Sci-Fi Mecha	43	Spring 1998	Production Reed	2136	1155	0.1
5071	Croket!	6.89	Action Adventure Comedy Fantasy	104	Spring 2003	OLM	864	329	0.19
5074	Tetsuwan Birdy Decode:02	7.74	Action Sci-Fi Comedy	12	Winter 2009	A-1 Pictures	44666	27991	0.02
5075	Yuusha Keisatsu J-Decker	7.32	Action Adventure Police Mecha Sci-Fi	48	Winter 1994	Sunrise	2459	796	0.13
5079	Kurokami The Animation	7.17	Action SuperPower MartialArts Seinen	23	Winter 2009	Sunrise	106899	47783	0.12
5081	Bakemonogatari	8.36	Romance Supernatural Mystery Vampire	15	Summer 2009	Shaft	1063666	664200	0.04
5082	Battle Spirits: Shounen Toppa Bashin	6.43	Game Shounen	50	Fall 2008	Sunrise, Toei Animation	2661	927	0.14
5088	Fabre-sensei wa Meitantei	6.26	Mystery	26	Spring 2000	E&G Films	630	226	0.25
5089	Noramimi 2	-1	Comedy	13	Fall 2008	Unknown	299	90	0.32
5091	Manga Sarutobi Sasuke	6.68	Adventure Comedy Historical Supernatural	24	Fall 1979	Unknown	1146	673	0.12
5104	Andes Shounen Pepero no Bouken	6.62	Adventure	26	Fall 1975	Unknown	845	431	0.15
5112	Akikan!	6.18	Comedy Ecchi Fantasy Romance	12	Winter 2009	Brain's Base	109315	70110	0.1
5114	Fullmetal Alchemist: Brotherhood	9.19	Action Military Adventure Comedy Drama Magic Fantasy Shounen	64	Spring 2009	Bones	2248456	1644938	0.02
5129	Jikuu Boukenki Zentrix	6.34	Adventure Mecha Sci-Fi	26	Spring 2003	Unknown	815	428	0.15
5131	Groizer X	6.11	Mecha Sci-Fi	36	Summer 1976	Unknown	683	250	0.19
5132	Let's Nupu Nupu	6.26	Comedy Ecchi School	16	Fall 1998	Ajia-Do, Group TAC	3208	1732	0.07
5140	Karaoke Senshi Mike-tarou	-1	Kids Music	20	Spring 1994	Unknown	309	83	0.3
5141	Taishou Yakyuu Musume.	7.36	Comedy Historical School Seinen Sports	12	Summer 2009	J.C.Staff	17592	7317	0.08
5143	Tokusou Kihei Dorvack	6.26	Action Mecha Sci-Fi	36	Fall 1983	Unknown	939	216	0.23
5150	Hatsukoi Limited.	7.32	Comedy Romance School Shounen	12	Spring 2009	J.C.Staff	82196	44548	0.06
5153	Kikou Kai Galient	6.44	Action Sci-Fi Fantasy Mecha	25	Fall 1984	Sunrise	2561	709	0.12
5155	Genji Monogatari Sennenki	6.93	Drama Historical Romance	11	Winter 2009	TMS Entertainment, Tezuka Productions	12259	3426	0.15
5162	Minami-ke Okaeri	7.58	SliceofLife Comedy School	13	Winter 2009	Asread	59691	42350	0.02
5184	Negibouzu no Asatarou	-1	Adventure Comedy Historical	48	Fall 2008	Toei Animation	281	55	0.4
5189	Chou Tokkyuu Hikarian	6.32	Action Kids Adventure	156	Spring 1997	Unknown	605	271	0.23
5197	Dragon League	7	Adventure Fantasy Sports Comedy Shounen	39	Spring 1993	Unknown	1305	537	0.14
5200	Offside (TV)	7.11	Action Sports Drama	39	Spring 2001	Ashi Production	2614	1251	0.1
5201	Salad Juu Yuushi Tomatoman	6.5	Adventure Comedy	50	Spring 1992	Unknown	783	495	0.13
5203	Shin Maple Town Monogatari: Palm Town-hen	6.78	SliceofLife Fantasy	44	Winter 1987	Toei Animation	1268	685	0.11
5217	Goal FH: Field Hunter	6.89	Action Sports	39	Spring 1994	Unknown	1450	782	0.11
5220	Shangri-La	7.07	Action Drama Sci-Fi	24	Spring 2009	Gonzo	52205	19262	0.17
5223	Robotan (1986)	6.12	Comedy Kids	33	Winter 1986	Unknown	567	355	0.17
5226	Souten Kouro	7.3	Action Adventure Historical	26	Spring 2009	Madhouse	15684	3745	0.15
5231	Inazuma Eleven	7.59	Sports SuperPower Shounen	127	Fall 2008	OLM	138185	101939	0.07
5233	Slayers Evolution-R	7.42	Adventure Comedy Fantasy	13	Winter 2009	J.C.Staff	28177	19144	0.02
5234	Zettai Yareru Greece Shinwa	-1	Comedy Ecchi	13	Fall 2008	A-1 Pictures	542	107	0.4
5235	Live On Cardliver Kakeru	6.49	Game Fantasy	51	Fall 2008	TMS Entertainment	922	217	0.22
5241	Mofu☆Mofu	5.58	Kids	11	Unknown	Unknown	475	170	0.21
5249	Mitsume ga Tooru	6.66	Adventure	48	Fall 1990	Tezuka Productions	827	262	0.19
5250	God Mazinger	6.38	Action Fantasy Mecha	23	Spring 1984	Unknown	1907	664	0.13
5258	Hajime no Ippo: New Challenger	8.67	Comedy Sports Drama Shounen	26	Winter 2009	Madhouse	201421	156501	0.01
5262	Shugo Chara!! Doki	7.43	Comedy Magic School Shoujo	51	Fall 2008	Satelight	87820	65332	0.05
5267	Gamba no Bouken	7.09	Adventure Kids Thriller	26	Spring 1975	Tokyo Movie Shinsha	2616	919	0.1
5273	Miracle Giants Doumu-kun	7.23	Sports	49	Spring 1989	Unknown	1285	578	0.13
5274	Magical★Taruruuto-kun	6.54	Adventure Comedy Ecchi Fantasy Magic School	87	Fall 1990	Toei Animation	1007	225	0.23
5276	Happy Happy Clover	6.31	Comedy Fantasy Kids Shoujo	13	Summer 2007	Unknown	1217	340	0.17
5277	Sekirei: Pure Engagement	7.36	Action Comedy Ecchi Harem SuperPower	13	Summer 2010	Seven Arcs	197639	156332	0.02
5278	Totsugeki! Pappara-tai	-1	Action Sci-Fi Adventure Comedy Romance	25	Fall 1998	Magic Bus	654	117	0.27
5287	Ippatsu Kanta-kun	6.02	Action Kids Adventure Sports Comedy	53	Fall 1977	Tatsunoko Production	552	263	0.21
5292	Getter Robo Go	6.16	Action Adventure Mecha Military Shounen	50	Winter 1991	Toei Animation	1642	499	0.15
5300	Zoku Natsume Yuujinchou	8.57	SliceofLife Demons Supernatural Drama Shoujo	13	Winter 2009	Brain's Base	200649	133333	0.01
5304	Akiba-chan	5.26	Comedy Kids SliceofLife	10	Summer 2008	Unknown	1968	1063	0.16
5307	Sora wo Kakeru Shoujo	7.01	Adventure Comedy Sci-Fi Space	26	Winter 2009	Sunrise	22532	8322	0.14
5311	Astroganger	6.41	Action Mecha Sci-Fi	26	Fall 1972	Toei Animation	1082	517	0.17
5337	Bakugan Battle Brawlers: New Vestroia	6.41	Game Adventure Fantasy Shounen	52	Spring 2009	TMS Entertainment	45761	39397	0.04
5341	Ookami to Koushinryou II	8.36	Adventure Historical Romance Fantasy	12	Summer 2009	Brain's Base, Marvy Jack	395939	284885	0.01
5342	Asura Cryin'	6.95	Action Supernatural Mecha	13	Spring 2009	Seven Arcs	90386	57053	0.08
5343	Monkey Punch: Manga Katsudou Daishashin	6.9	Action Adventure Comedy Ecchi Parody Seinen	12	Summer 2004	TMS Entertainment	1592	467	0.15
5344	Time Bokan Series: Itadakiman	5.94	Mecha	20	Spring 1983	Tatsunoko Production	690	200	0.26
5355	Sengoku Basara	7.39	Action Historical MartialArts Samurai SuperPower	12	Spring 2009	Production I.G	139348	70878	0.08
5356	Canaan	7.27	Action Sci-Fi SuperPower Supernatural Seinen	13	Summer 2009	P.A. Works	187094	92475	0.06
5374	Miracle! Mimika	-1	Kids SliceofLife	225	Spring 2006	Unknown	313	95	0.29
5375	Gakkyuu Ou Yamazaki	6.2	Comedy	53	Winter 1998	Magic Bus	902	479	0.22
5395	Nekketsu Saikyou Go-Saurer	6.72	Action Sci-Fi Mecha	51	Spring 1993	Sunrise	934	275	0.16
5397	Usavich III	7.1	Comedy	13	Fall 2008	Kanaban Graphics	3973	3468	0.03
5420	Kemono no Souja Erin	8.35	Drama Fantasy SliceofLife	50	Winter 2009	Production I.G, Trans Arts	68946	18958	0.08
5440	Ougon Yuusha Goldran	6.82	Action Sci-Fi Adventure Fantasy Mecha Shounen	48	Winter 1995	Sunrise	1948	546	0.14
5454	Yoku Wakaru Gendai Mahou	6.46	Comedy Magic	12	Summer 2009	Nomad	22648	9846	0.12
5468	Yattokame Tanteidan	-1	Kids Mystery SliceofLife	14	Fall 2007	Unknown	282	61	0.39
5473	Tsuri Baka Nisshi	-1	SliceofLife Comedy	36	Fall 2002	Toei Animation	333	86	0.3
5474	Yobarete Tobidete Akubi-chan	5.94	Comedy Fantasy Kids	26	Winter 2002	Tatsunoko Production	608	254	0.23
5475	Time Bokan 2000: Kaitou Kiramekiman	5.94	Action Adventure Comedy Mecha Sci-Fi	26	Spring 2000	Tatsunoko Production	696	211	0.27
5476	Fushigi na Melmo	6.38	Magic Shoujo	26	Fall 1971	Tezuka Productions	1097	293	0.22
5477	Gozonji! Gekkou Kamen-kun	-1	Parody Comedy Sci-Fi	25	Fall 1999	Actas, TMS Entertainment	417	125	0.27
5478	Bikkuriman 2000	-1	Adventure Fantasy Kids	68	Fall 1999	Unknown	351	115	0.35
5485	Shin Mazinger Shougeki! Z-hen	7.71	Action SuperPower Drama Mecha Shounen	26	Spring 2009	Bee Media, Code	12775	4885	0.11
5494	Konnichiwa Anne: Before Green Gables	7.59	Drama Historical Kids SliceofLife	39	Spring 2009	Nippon Animation	5394	1822	0.1
5504	Shinkyoku Soukai Polyphonica Crimson S	7.19	Drama Fantasy Music Romance School	12	Spring 2009	Diomedéa	22292	11281	0.06
5505	Viper's Creed	6.74	Action Military Sci-Fi	12	Winter 2009	AIC Spirits, Digital Frontier	9178	4593	0.11
5507	Senjou no Valkyria	7.62	Action Military Romance	26	Spring 2009	A-1 Pictures	116161	58874	0.07
5520	Onegai My Melody Sukkiri♪	6.81	Fantasy Magic Comedy	52	Spring 2007	Studio Comet	2048	832	0.12
5525	07-Ghost	7.24	Action Demons Fantasy Josei Magic Military	25	Spring 2009	Studio Deen	183988	113499	0.09
5530	Pandora Hearts	7.72	Adventure Fantasy Mystery Shounen Supernatural	25	Spring 2009	Xebec	361650	187234	0.07
5534	Hai! Akko Desu	6.55	Romance SliceofLife	164	Fall 1988	Eiken	611	222	0.25
5594	Fuusen no Doratarou	-1	Kids	13	Spring 1981	Nippon Animation	238	71	0.39
5597	Natsu no Arashi!	7.28	Comedy Romance Supernatural	13	Spring 2009	Shaft	44920	14824	0.12
5600	Little El Cid no Bouken	6.31	Kids Adventure Historical	26	Winter 1984	Nippon Animation	545	234	0.22
5618	Dokonjou Gaeru	6.43	SliceofLife Comedy Shounen	103	Fall 1972	Tokyo Movie Shinsha	1162	233	0.28
5628	21 Emon	6.14	Space Comedy Sci-Fi	39	Spring 1991	Shin-Ei Animation	712	263	0.26
5630	Higashi no Eden	7.83	Action Sci-Fi Mystery Drama Romance Thriller	11	Spring 2009	Production I.G	464410	274002	0.03
5636	Restol: Teugsu Gujo Dae	6.29	Action Adventure Police Mecha	26	Winter 1999	Unknown	641	189	0.21
5658	Great Mazinger	7.06	Action Mecha Sci-Fi Shounen	56	Fall 1974	Toei Animation	4232	2142	0.07
5670	GA: Geijutsuka Art Design Class	7.15	SliceofLife Comedy School Seinen	12	Summer 2009	AIC PLUS+	17480	7167	0.12
5671	Saki	7.48	Game School SliceofLife	25	Spring 2009	Gonzo, Picture Magic	79667	40215	0.09
5675	Basquash!	7.24	Sports Mecha Shounen	26	Spring 2009	Satelight	40795	18683	0.15
5678	Kobato.	7.98	Comedy Drama Romance Fantasy	24	Fall 2009	Madhouse	139776	63191	0.09
5680	K-On!	7.84	Music SliceofLife Comedy School	13	Spring 2009	Kyoto Animation	776322	519279	0.04
5682	Phantom: Requiem for the Phantom	8.01	Action Drama Seinen Thriller	26	Spring 2009	Bee Train	270786	127840	0.06
5684	Fresh Precure!	7.31	Action SliceofLife Comedy Magic Fantasy Shoujo	50	Winter 2009	Toei Animation	12480	6170	0.08
5688	Gegege no Kitarou (1968)	6.77	Adventure Comedy Horror Supernatural Fantasy	65	Winter 1968	Toei Animation	3280	696	0.16
5690	Nodame Cantabile: Finale	8.27	Comedy Josei Music Romance	11	Winter 2010	J.C.Staff	110315	79384	0.01
5702	Sora wo Miageru Shoujo no Hitomi ni Utsuru Sekai	7.13	Action SuperPower Magic Romance Fantasy	9	Winter 2009	Kyoto Animation	34958	17359	0.05
5712	Tanoshii Muumin Ikka Bouken Nikki	7.5	Kids SliceofLife Adventure Fantasy	26	Fall 1991	Telescreen	4879	3313	0.04
5725	Kodai Ouja Kyouryuu King: Yokuryuu Densetsu	6.3	Action Adventure Game Kids Sci-Fi	30	Winter 2008	Sunrise	5847	4394	0.04
5734	Tayutama: Kiss on My Deity	6.78	Harem Romance Supernatural	12	Spring 2009	SILVER LINK.	61027	36223	0.06
5760	Dororo to Hyakkimaru	7.17	Action Adventure Supernatural	26	Spring 1969	Mushi Production	11954	3800	0.1
5763	Uchuu Kuubo Blue Noah	6.56	Action Drama Military Sci-Fi Space	24	Fall 1979	Unknown	1484	489	0.15
5809	Kupu~!! Mamegoma!	-1	Kids	51	Winter 2009	TMS Entertainment	632	90	0.26
5810	Sakuran Boy DT	-1	Comedy SuperPower	11	Winter 2009	Unknown	451	90	0.24
5821	Zenmai Zamurai	-1	Comedy Kids	215	Spring 2006	A-1 Pictures	402	150	0.32
5829	Blocker Gundan IV Machine Blaster	6.01	Action Mecha Sci-Fi	38	Summer 1976	Nippon Animation	727	263	0.22
5830	Tsurupika Hagemaru-kun	6.87	Kids Comedy	59	Spring 1988	Shin-Ei Animation	1765	1244	0.1
5832	Tiger Mask Nisei	7.31	Action Sports Drama	33	Spring 1981	Toei Animation	4796	3137	0.05
5833	Tondemo Senshi Muteking	6.39	Action Comedy Kids Magic Mecha Sci-Fi Shounen SuperPower	56	Fall 1980	Tatsunoko Production	541	218	0.23
5834	Kyojin no Hoshi	6.79	Drama Sports	182	Spring 1968	TMS Entertainment	1866	365	0.2
5835	Hanasakeru Seishounen	7.76	Drama Romance Shoujo	39	Spring 2009	Studio Pierrot	57812	26098	0.12
5841	Yume wo Kanaeru Zou	-1	Comedy	12	Winter 2009	Studio Deen	333	60	0.47
5854	Shin Chou Kyou Ryo: Condor Hero III	7.33	Action Adventure Drama Historical Romance	26	Spring 2008	Nippon Animation	2392	1031	0.08
5883	Examurai Sengoku	6.37	Action Sci-Fi MartialArts Samurai	24	Winter 2009	TMS Entertainment	3748	665	0.24
5886	Kujira no Josephina	-1	Adventure Fantasy	23	Spring 1979	Ashi Production	421	148	0.28
5891	Kousoku Denjin Albegus	6.72	Mecha	45	Spring 1983	Toei Animation	1410	637	0.12
5908	Chinpui	6.15	Comedy	56	Winter 1989	Kyoto Animation, Production I.G, Shin-Ei Animation	818	370	0.19
5909	Seitokai no Ichizon	7.36	Harem Comedy Parody School	12	Fall 2009	Studio Deen	166937	93819	0.06
5914	Kanamemo	6.89	Comedy Ecchi ShoujoAi SliceofLife	13	Summer 2009	feel.	33761	16428	0.09
5935	Animation Kikou: Marco Polo no Bouken	6.16	Adventure Historical	43	Spring 1979	Madhouse	666	224	0.25
5938	Onegai♪My Melody Kirara★	6.46	Fantasy Magic Comedy	52	Spring 2008	Studio Comet	1506	486	0.15
5940	Seiken no Blacksmith	6.74	Action Adventure Fantasy	12	Fall 2009	Manglobe	148745	93366	0.07
5941	Cross Game	8.43	Comedy Drama Romance School Shounen Sports	50	Spring 2009	SynergySP	100414	48400	0.06
5945	Element Hunters	6.64	Sci-Fi Shounen	39	Summer 2009	Heewon Entertainment, NHK Enterprises	11921	3411	0.27
5953	Mahou no Princess Minky Momo: Yume wo Dakishimete	6.65	Magic Shoujo	62	Fall 1991	Production Reed	1973	827	0.11
5958	Sora no Otoshimono	7.36	Sci-Fi Harem Comedy Supernatural Romance Ecchi Shounen	13	Fall 2009	AIC ASTA	394109	275739	0.05
5962	Metal Fight Beyblade	6.68	Adventure Comedy Sports	51	Spring 2009	Tatsunoko Production, SynergySP, Seven	55471	47495	0.04
5967	Kinnikuman II Sei: Ultimate Muscle	6.92	Action Comedy MartialArts Sci-Fi Shounen Sports	13	Spring 2004	Toei Animation	5731	4142	0.04
5968	Kinnikuman II Sei: Ultimate Muscle 2	6.97	Action Sci-Fi Comedy Sports MartialArts Shounen	13	Winter 2006	Toei Animation	4955	3666	0.03
5973	Fight Ippatsu! Juuden-chan!!	6.68	Ecchi Comedy Sci-Fi Shounen	12	Summer 2009	Studio Hibari	29057	16469	0.09
5983	Higepiyo	7.12	Comedy	39	Spring 2009	Kinema Citrus	5399	2217	0.2
5984	Ristorante Paradiso	7.36	Drama Josei Romance SliceofLife	11	Spring 2009	David Production	37163	13368	0.11
8220	Baby Felix	5.52	Comedy Kids	65	Fall 2000	Radix	484	207	0.24
5992	Tsuyoshi Shikkari Shinasai	6.86	Comedy Drama Romance School Shounen SliceofLife	112	Fall 1992	Unknown	1737	685	0.15
5997	Sabu to Ichi Torimono Hikae	6.37	Action SliceofLife Adventure Police MartialArts Samurai Historical Drama Shounen	52	Fall 1968	Toei Animation	1564	188	0.22
6008	Jewelpet	6.65	Fantasy Magic Shoujo	52	Spring 2009	Studio Comet	8655	3532	0.13
6012	Kinpatsu no Jeanie	-1	Historical Drama	13	Summer 1979	Unknown	676	179	0.22
6023	Nogizaka Haruka no Himitsu: Purezza	7.2	Comedy Ecchi Romance	12	Fall 2009	Diomedéa	63351	48493	0.03
6024	Chi's Sweet Home: Atarashii Ouchi	7.75	Comedy Kids SliceofLife	104	Spring 2009	Madhouse	24777	11689	0.08
6030	Needless	7.28	Action Sci-Fi Comedy SuperPower Ecchi Seinen	24	Summer 2009	Madhouse	126334	69741	0.09
6033	Dragon Ball Kai	7.73	Action Adventure Comedy Fantasy MartialArts Shounen SuperPower	97	Spring 2009	Toei Animation	269840	212339	0.04
6045	Kimi ni Todoke	8.02	SliceofLife Drama Romance School Shoujo	25	Fall 2009	Production I.G	648101	409858	0.04
6055	F	6.67	Cars Shounen Sports	31	Spring 1988	Studio Deen	2316	658	0.14
6056	Sasuke	6.52	Action MartialArts Historical Shounen	29	Fall 1968	Unknown	999	291	0.19
6067	Moeru! Oniisan	6.22	Action Adventure Comedy	24	Spring 1988	Studio Pierrot	885	169	0.22
6069	Gregory Horror Show	6.61	Mystery Comedy Horror Demons Supernatural	25	Fall 1999	Milky Cartoon	3114	1527	0.07
6075	Ai no Wakakusa Yama Monogatari	6.08	Comedy	12	Summer 1999	Gainax	939	321	0.21
6077	Akubi Girl	5.89	Comedy Fantasy	26	Spring 2006	Tatsunoko Production	690	267	0.24
6087	Jetter Mars	6.22	Action Drama Mecha Sci-Fi	27	Winter 1977	Toei Animation	921	365	0.18
6093	Anmitsu Hime	6.3	Comedy Historical Shoujo	51	Fall 1986	Studio Pierrot	867	229	0.22
6098	Sora no Manimani	7.09	SliceofLife Comedy Romance School Seinen	12	Summer 2009	Studio Comet	38230	19181	0.06
6112	Shin Koihime†Musou	6.84	Comedy Ecchi Fantasy Historical	12	Fall 2009	Doga Kobo	27992	14971	0.07
6114	Rainbow: Nisha Rokubou no Shichinin	8.52	Drama Historical Seinen Thriller	26	Spring 2010	Madhouse	304557	135582	0.07
6116	Mainichi Kaasan	7.32	SliceofLife Comedy	142	Spring 2009	Unknown	2589	546	0.22
6117	Gokujou!! Mecha Mote Iinchou	6.38	Comedy Romance School Shoujo	51	Spring 2009	SynergySP	6606	1919	0.26
6119	Cookin' Idol Ai! Mai! Main!	6.18	Comedy Kids	305	Spring 2009	Studio Deen	1552	248	0.25
6129	Umi Monogatari: Anata ga Ite Kureta Koto	6.64	Supernatural Drama Magic Romance Fantasy	12	Summer 2009	Zexcs	23241	7075	0.16
6130	Marie & Gali	6.31	Comedy	40	Spring 2009	Toei Animation	3557	627	0.27
6131	Charady no Joke na Mainichi	5.39	Comedy	365	Spring 2009	Unknown	2207	328	0.47
6149	Chibi Maruko-chan (1995)	7.18	SliceofLife Comedy Kids School	-1	Winter 1995	Nippon Animation	3052	1	0.3
6164	Aoi Hana	7.16	Romance ShoujoAi SliceofLife	11	Summer 2009	J.C.Staff	78669	36656	0.07
6165	White Album 2nd Season	6.84	Drama Harem Music Romance	13	Fall 2009	Seven Arcs	40366	22083	0.05
6166	Asobi ni Iku yo!	6.65	Comedy Ecchi Harem Romance Sci-Fi	12	Summer 2010	AIC PLUS+	162121	100942	0.06
6195	Rita to Nantoka	-1	SliceofLife	26	Fall 2010	Nippon Animation	445	104	0.31
6201	Princess Lover!	6.79	Harem Comedy Ecchi School	12	Summer 2009	GoHands	175850	125841	0.04
6203	Sasameki Koto	7.09	Comedy Romance School ShoujoAi	13	Fall 2009	AIC	58576	27328	0.07
6205	Kämpfer	6.45	Action Comedy Ecchi Romance School ShoujoAi SuperPower	12	Fall 2009	Nomad	237051	164401	0.07
6211	Tokyo Magnitude 8.0	8.06	Drama	11	Summer 2009	Bones, Kinema Citrus	237316	120069	0.04
6213	Toaru Kagaku no Railgun	7.72	Action Sci-Fi SuperPower	24	Fall 2009	J.C.Staff	458949	277246	0.04
6261	Koguma no Misha	-1	Kids Adventure Comedy Drama	26	Fall 1979	Nippon Animation	362	150	0.27
6262	Manga Sekai Mukashibanashi	7.06	Adventure Fantasy Historical Drama	127	Fall 1976	Madhouse	1277	452	0.17
6277	Manga Nippon Mukashibanashi (1976)	6	Fantasy Historical	1471	Winter 1976	Group TAC	1083	423	0.21
6303	Perman	6.38	Adventure Comedy	54	Spring 1967	Unknown	2238	1534	0.11
6311	Sarutobi Ecchan	6.04	Comedy Kids Magic School	26	Fall 1971	Toei Animation	686	250	0.23
6324	Omamori Himari	6.93	Action Harem Comedy Demons Supernatural Romance Ecchi Fantasy	12	Winter 2010	Zexcs	201739	141531	0.03
6347	Baka to Test to Shoukanjuu	7.6	Comedy Romance School SuperPower	13	Winter 2010	SILVER LINK.	529741	377592	0.05
6374	Kagaku Ninja-tai Gatchaman II	6.45	Action Adventure Sci-Fi Shounen	52	Fall 1978	Tatsunoko Production	1827	719	0.12
6375	Kagaku Ninja-tai Gatchaman F	6.34	Action Adventure Sci-Fi Shounen	48	Fall 1979	Tatsunoko Production	1730	707	0.12
6377	Zan Sayonara Zetsubou Sensei	7.91	Comedy Parody School Shounen	13	Summer 2009	Shaft	89260	46023	0.03
6381	Strike Witches 2	7.32	Action Ecchi Magic Military Sci-Fi	12	Summer 2010	AIC Spirits	73066	48504	0.03
6383	Chargeman Ken!	4.73	Action Adventure Sci-Fi Shounen	65	Spring 1974	Tama Production	2463	686	0.21
6397	Tentou Mushi no Uta	6.35	Drama SliceofLife	104	Fall 1974	Tatsunoko Production	568	239	0.24
6425	Weiß Survive	6.11	Game Comedy Ecchi	16	Summer 2009	Studio Hibari	18867	10363	0.07
6428	Psychoarmor Govarian	6.13	Action Mecha SuperPower Sci-Fi	26	Summer 1983	Knack Productions	845	199	0.22
6444	Tegamibachi	7.65	Adventure Supernatural Fantasy Shounen	25	Fall 2009	Studio Pierrot	103916	47679	0.09
6448	Yuusei Shounen Papii	5.87	Action Sci-Fi Space SuperPower	52	Summer 1965	Eiken	581	163	0.34
6452	Akuu Daisakusen Srungle	6.17	Action Mecha Sci-Fi	53	Winter 1983	Unknown	1095	284	0.21
6468	Tensai Bakabon	6.42	SliceofLife Comedy	40	Fall 1971	Unknown	840	287	0.26
6472	Gakkou no Kowai Uwasa: Hanako-san ga Kita!!	6.2	Horror	35	Summer 1994	Group TAC	1389	340	0.19
6481	Sugar Bunnies Fleur	-1	Kids	26	Spring 2009	Asahi Production	457	85	0.33
6482	Sugar Bunnies Chocolate!	-1	Kids	26	Spring 2008	Asahi Production	429	89	0.36
6500	Seikon no Qwaser	6.45	Action SuperPower Supernatural Ecchi Seinen	24	Winter 2010	Hoods Entertainment	263615	130633	0.16
6509	Kiteretsu Daihyakka	6.66	Comedy Drama Kids SliceofLife	331	Spring 1988	Gallop	3441	2119	0.18
6511	Chou Seimeitai Transformers Beast Wars Neo	6.45	Action Adventure Space Mecha Shounen	35	Winter 1999	Production Reed	2095	1137	0.11
6512	Nyan Koi!	7.2	Harem Comedy Romance	12	Fall 2009	AIC	223345	157653	0.03
6520	Anime TV de Hakken! Tamagotchi	-1	Comedy Fantasy Kids SliceofLife	27	Summer 1997	Unknown	508	169	0.27
6523	Porong Porong Pororo	5.95	Kids	52	Fall 2003	Unknown	489	236	0.22
6525	Peeping Life	5.24	SliceofLife Comedy	10	Spring 2009	Unknown	2556	867	0.22
6547	Angel Beats!	8.15	Action Comedy Drama School Supernatural	13	Spring 2010	P.A. Works	1591773	1229098	0.03
6560	Popee the Performer	7.14	Comedy Dementia	39	Winter 2000	Nippon Animation	6341	2855	0.11
6571	Koume-chan ga Iku!	5.97	Comedy Romance SliceofLife	12	Summer 1999	Gainax	974	215	0.23
6573	Darker than Black: Ryuusei no Gemini	7.48	Action Sci-Fi Mystery SuperPower	12	Fall 2009	Bones	349653	262714	0.02
6574	Hanamaru Youchien	7.31	SliceofLife Comedy Seinen	12	Winter 2010	Gainax	65009	36064	0.06
6582	Tentai Senshi Sunred 2nd Season	7.9	Comedy Parody Seinen SuperPower	26	Fall 2009	AIC ASTA	6910	3772	0.06
6583	Super Bikkuriman	-1	Adventure Fantasy Comedy Demons Sci-Fi	44	Spring 1992	Toei Animation	386	124	0.26
6586	Yume-iro Pâtissière	7.87	Kids School Shoujo	50	Fall 2009	Studio Pierrot, Studio Hibari	63739	41504	0.06
6594	Katanagatari	8.36	Action Adventure Historical MartialArts Romance	12	Winter 2010	White Fox	442694	201975	0.05
6604	Kuruneko	7.31	Comedy SliceofLife	50	Summer 2009	Studio Deen, DAX Production	4029	914	0.17
6609	Pucca	6.56	Comedy Parody Romance	26	Fall 2006	Unknown	11341	9151	0.05
6625	Nono-chan	6.18	Comedy SliceofLife	61	Summer 2001	Toei Animation	761	184	0.27
6629	Asari-chan	6.05	SliceofLife Comedy Shoujo	54	Winter 1982	Toei Animation	617	222	0.27
6633	Queen's Blade: Gyokuza wo Tsugu Mono	6.58	Action Adventure Ecchi Fantasy	12	Fall 2009	Arms	45659	26160	0.06
6634	Sengoku Basara Ni	7.57	Action Historical SuperPower MartialArts Samurai	12	Summer 2010	Production I.G	60553	38532	0.03
6636	Chou Kousoku Galvion	5.97	Action Sci-Fi Police Mecha	22	Winter 1984	Artmic	1123	211	0.19
6645	Chu-Bra!!	6.23	Ecchi Comedy School Seinen	12	Winter 2010	Zexcs	42810	24473	0.14
6658	Unko-san: Tsuiteru Hito ni Shika Mienai Yousei	5.35	Comedy Magic	13	Spring 2009	Kachidoki Studio	630	145	0.38
6672	Video Senshi Lezarion	6.41	Action Mecha Sci-Fi	45	Spring 1984	Toei Animation	816	218	0.26
6674	Reporter Blues	6.43	Mystery Comedy	52	Fall 1991	TMS Entertainment	745	236	0.24
6676	Asura Cryin' 2	7.31	Action Supernatural Mecha	13	Fall 2009	Seven Arcs	56393	42743	0.02
6682	11eyes	6.16	Action Ecchi SuperPower Supernatural	12	Fall 2009	Doga Kobo	207294	146869	0.07
6701	Jim Button	-1	Kids Adventure Fantasy Magic	26	Fall 1974	Eiken	336	119	0.33
6702	Fairy Tail	7.68	Action Adventure Comedy Magic Fantasy Shounen	175	Fall 2009	Satelight, A-1 Pictures	1312470	737096	0.13
6707	Kuroshitsuji II	7.22	Action Comedy Historical Demons Supernatural Shounen	12	Summer 2010	A-1 Pictures	437730	340878	0.03
6712	Natsu no Arashi! Akinaichuu	7.32	Comedy Romance Supernatural	13	Fall 2009	Shaft	17376	9019	0.04
6727	Mechakko Dotakon	-1	Comedy Sci-Fi	28	Spring 1981	Unknown	317	112	0.29
6730	Tonde Mon Pe	-1	Kids	42	Summer 1982	Unknown	265	111	0.32
6731	Ultraman Kids no Kotowaza Monogatari	6.04	Comedy Kids SuperPower	26	Spring 1986	Unknown	528	224	0.27
6746	Durarara!!	8.18	Action Mystery Supernatural	24	Winter 2010	Brain's Base	1111256	651208	0.05
6747	Dance in the Vampire Bund	7.06	Action Supernatural Vampire	12	Winter 2010	Shaft	189926	119903	0.08
6758	Tatakau Shisho: The Book of Bantorra	7.24	Action Fantasy Seinen SuperPower	27	Fall 2009	David Production	54376	16495	0.14
6771	Dorimogu Daa!!	-1	Adventure Fantasy Kids	49	Fall 1986	Unknown	362	160	0.27
6773	Shakugan no Shana III (Final)	7.56	Action Supernatural Drama Romance Fantasy	24	Fall 2011	J.C.Staff	205429	135142	0.04
6774	Kuuchuu Buranko	7.96	Comedy Psychological Drama Seinen	11	Fall 2009	Toei Animation	73503	23128	0.1
6779	Pokonyan!	6.63	Comedy Fantasy Kids Magic	170	Spring 1993	Unknown	661	330	0.2
6798	Saa Ikou! Tamagotchi	5.77	Kids	12	Fall 2007	OLM	812	459	0.14
6802	So Ra No Wo To	7.56	Military Sci-Fi Music SliceofLife	12	Winter 2010	A-1 Pictures	136174	56423	0.08
6811	InuYasha: Kanketsu-hen	8.22	Action Adventure Comedy Historical Demons Supernatural Magic Romance Fantasy Shounen	26	Fall 2009	Sunrise	213386	150825	0.02
6822	Ukkari Pénélope (2009)	-1	Comedy SliceofLife	26	Summer 2009	Nippon Animation	477	134	0.34
6868	Wansa-kun	-1	Comedy	26	Spring 1973	Mushi Production	533	121	0.33
6875	Iron Man	6.1	Action Mecha Drama	12	Fall 2010	Madhouse	24456	13112	0.19
6880	Deadman Wonderland	7.22	Action Horror Sci-Fi Shounen Supernatural	12	Spring 2011	Manglobe	946514	693044	0.04
6889	Time Bokan Series: Zenderman	5.96	Action Sci-Fi Adventure Comedy SuperPower Mecha	52	Winter 1979	Tatsunoko Production	709	227	0.28
6895	Hakuouki	7.41	Action Historical Supernatural Drama Samurai Josei	12	Spring 2010	Studio Deen	142384	78891	0.06
6899	Stitch!: Itazura Alien no Daibouken	6.13	Adventure Comedy Kids Sci-Fi	29	Fall 2009	Madhouse	1710	944	0.08
6900	Tamagotchi!	6.3	Comedy Kids	143	Fall 2009	OLM Digital	1059	243	0.25
6901	Battle Spirits: Shounen Gekiha Dan	6.98	Game Military Adventure Magic	50	Fall 2009	Sunrise	2547	1212	0.1
6902	Saikyou Bushouden: Sangoku Engi	6.83	Historical	52	Spring 2010	Future Planet, Beijing Huihuang Animation Company	2104	335	0.18
6907	Mikan-Seijin	5.84	Comedy	26	Unknown	Unknown	460	184	0.2
6917	Tsuideni Tonchinkan	-1	Comedy	43	Fall 1987	Unknown	525	112	0.31
6919	X-Men	6.37	Action Drama SuperPower	12	Spring 2011	Madhouse	22358	12764	0.13
6920	Blade	6.24	Action Drama Horror Vampire	12	Summer 2011	Madhouse	22934	12368	0.12
6947	Uchurei!	5.68	Comedy Sci-Fi SliceofLife	12	Summer 2009	Robot Communications	1134	581	0.19
6956	Working!!	7.7	Comedy Romance Seinen SliceofLife	13	Spring 2010	A-1 Pictures	357762	222098	0.04
6970	Choujin Sentai Baratack	6.25	Sci-Fi Adventure Mecha	31	Summer 1977	Toei Animation	706	200	0.25
6971	Gegege no Kitarou (1971)	6.45	Adventure SuperPower Demons Supernatural	45	Fall 1971	Toei Animation	1743	487	0.18
6973	Senkou no Night Raid	6.88	Action Military Historical SuperPower	13	Spring 2010	A-1 Pictures	39555	12178	0.17
6974	Seikimatsu Occult Gakuin	7.07	Sci-Fi Mystery Comedy Supernatural School	13	Summer 2010	A-1 Pictures	90253	46937	0.08
6979	Shukufuku no Campanella	6.31	Adventure Fantasy Harem Magic	12	Summer 2010	AIC	27495	12633	0.15
6980	Kaidan Restaurant	7.27	Horror Kids Mystery Supernatural	23	Fall 2009	Toei Animation	13762	4837	0.15
6981	Super Zugan	-1	Game Comedy Shounen	21	Fall 1992	Studio Deen	448	103	0.28
6989	Uchuu Ace	-1	Action Adventure Sci-Fi	52	Spring 1965	Tatsunoko Production	492	119	0.39
7004	Shin Calimero	6.21	Comedy	52	Fall 1992	Toei Animation	1765	1284	0.12
7048	Crush Gear Nitro	6.3	Cars Shounen Sports	50	Winter 2003	Sunrise	1264	696	0.15
7054	Kaichou wa Maid-sama!	8.06	Comedy Romance School Shoujo	26	Spring 2010	J.C.Staff	883462	665028	0.03
7058	Uragiri wa Boku no Namae wo Shitteiru	7.26	Adventure Drama Fantasy Shoujo ShounenAi	24	Spring 2010	J.C.Staff	82844	39669	0.1
7062	Hidamari Sketch x ☆☆☆	7.93	SliceofLife Comedy School Seinen	12	Winter 2010	Shaft	23389	14798	0.03
7079	Ookamikakushi	6.34	Action Mystery Horror Supernatural	12	Winter 2010	AIC	66271	34974	0.1
7081	Danball Senki	7.02	Action Kids Mecha	44	Spring 2011	OLM	7206	3886	0.09
7082	Shugo Chara! Party!	6.62	Comedy Magic School Shoujo	25	Fall 2009	Satelight	61590	43498	0.08
7088	Ichiban Ushiro no Daimaou	6.89	Action Harem Comedy Magic Ecchi Fantasy School	12	Spring 2010	Artland	400743	319770	0.03
7103	Miracle☆Train: Oedo-sen e Youkoso	6.52	Fantasy Shoujo	13	Fall 2009	Yumeta Company	17618	7567	0.21
7106	Ougon Senshi Gold Lightan	6.07	Action Sci-Fi Adventure Mecha	52	Spring 1981	Tatsunoko Production	789	190	0.23
7109	Gyouten Ningen Batsealer	-1	Action Adventure Fantasy Magic	52	Spring 2001	Unknown	434	158	0.23
7148	Ladies versus Butlers!	6.64	Harem Comedy Romance Ecchi School	12	Winter 2010	Xebec	173270	120376	0.04
7152	Anyamal Tantei Kiruminzoo	7.01	Magic Comedy Shoujo	50	Fall 2009	Satelight	6470	1559	0.18
7160	Yoroshiku Mechadock	6.3	Action Cars Comedy Police Sports	30	Fall 1984	Tatsunoko Production	1486	325	0.19
7175	Himitsukessha Taka no Tsume Countdown	-1	Comedy Parody SuperPower	11	Fall 2009	DLE	454	143	0.33
7176	Cheburashka Arere?	6.46	Kids SliceofLife Comedy	26	Fall 2009	GoHands	3048	1509	0.2
7177	Gokyoudai Monogatari	-1	Comedy	32	Fall 2009	Unknown	378	78	0.32
7189	Kotatsu Neko (TV)	-1	Comedy	26	Fall 2009	Unknown	442	87	0.37
7193	Aoi Bungaku Series	7.74	Drama Historical Psychological Seinen Thriller	12	Fall 2009	Madhouse	168859	57772	0.09
7211	Rose O'Neill Kewpie	-1	Comedy	26	Winter 2010	TMS Entertainment	274	53	0.47
7245	Sekai Meisaku Douwa: Wow! Maerchen Oukoku	6.52	Fantasy	26	Spring 1995	Toei Animation	648	266	0.18
7247	Naked Wolves	5.96	Action Kids Sports Comedy	52	Spring 2009	Kate Arrow	593	173	0.33
7307	Gegege no Kitarou (1985)	6.54	Comedy Supernatural	108	Fall 1985	Toei Animation	1746	546	0.15
7334	Bakugan Battle Brawlers: Gundalian Invaders	6.21	Action Adventure Fantasy Game Shounen	39	Spring 2010	TMS Entertainment	32746	27684	0.04
7395	Card Wang: Mix Master	6.49	Game Adventure Fantasy Shounen	39	Fall 2005	Nippon Animation	1399	731	0.11
7405	Jankenman	6.14	Adventure SuperPower	51	Spring 1991	Unknown	554	304	0.21
7419	Wrestler Gundan Seisenshi Robin Jr.	-1	Action Adventure Comedy Fantasy Kids Parody Sci-Fi SuperPower	50	Fall 1989	Unknown	300	93	0.38
7448	Pacusi	5.6	Comedy	18	Spring 1994	Unknown	400	155	0.25
7452	Mini Moni Yaru no da Pyon!	-1	Comedy	66	Summer 2001	Unknown	332	134	0.23
7463	Weiß Survive R	6.1	Comedy Ecchi Game	12	Winter 2010	Studio Hibari	10024	6334	0.04
7479	Karate Baka Ichidai	-1	Adventure Historical Sports MartialArts	47	Fall 1973	TMS Entertainment	891	148	0.27
7505	Knyacki!	6.14	Comedy Kids Drama Fantasy	-1	Spring 1995	Unknown	634	0	0.35
7522	Taichi Senjimon	6.34	Action Adventure Fantasy Magic	39	Spring 2007	Toei Animation	1209	415	0.18
7525	Kick Off 2002	-1	Sports	26	Winter 2002	Unknown	340	78	0.33
7551	Gowapper 5 Gordam	6.19	Action Adventure Mecha Sci-Fi	36	Spring 1976	Tatsunoko Production	540	180	0.21
7561	Kaitou Reinya	5.7	Comedy	12	Winter 2010	Stingray	3020	1770	0.12
7575	Oh! Family	-1	SliceofLife Comedy Romance Drama Shoujo	26	Fall 1986	Unknown	770	165	0.23
7580	Ikkitousen: Xtreme Xecutor	6.78	Action Ecchi MartialArts School SuperPower	12	Spring 2010	Arms, TNK	41667	24543	0.04
7588	Saraiya Goyou	7.82	Mystery Historical Drama Samurai Seinen	12	Spring 2010	Manglobe	70934	26153	0.06
7590	Mayoi Neko Overrun!	6.72	Comedy Harem Romance	13	Spring 2010	AIC	117221	68973	0.07
7592	Nurarihyon no Mago	7.65	Action Demons Shounen Supernatural	24	Summer 2010	Studio Deen	222742	129727	0.05
7593	Kiss x Sis (TV)	6.71	Harem Comedy Romance Ecchi School Seinen	12	Spring 2010	feel.	437709	338218	0.05
7605	Parasol Henbei	6.05	Adventure Comedy Fantasy Kids Magic	200	Fall 1989	Unknown	444	221	0.26
7619	Gegege no Kitarou (1996)	6.69	Adventure Demons Supernatural	114	Winter 1996	Toei Animation	2593	955	0.17
7625	Yousei Dick	-1	Fantasy Kids	26	Summer 1992	Unknown	361	103	0.34
7627	Mitsudomoe	7.59	Comedy School SliceofLife	13	Summer 2010	Bridge	90822	46895	0.08
7629	The Arari Show	-1	Comedy Drama SliceofLife	26	Summer 2006	Unknown	195	50	0.41
7639	Shounen Santa no Daibouken!	-1	Adventure Fantasy Shounen	24	Spring 1996	Studio Deen	285	75	0.34
7643	Domo-kun	6.36	SliceofLife Comedy Kids	37	Winter 1999	dwarf	1979	477	0.22
7645	Heartcatch Precure!	7.79	Action SliceofLife Comedy Magic Fantasy School Shoujo	49	Winter 2010	Toei Animation	24088	10492	0.09
7647	Arakawa Under the Bridge	7.6	Comedy Romance Seinen	13	Spring 2010	Shaft	289994	153237	0.08
7655	Major S6	8.38	Comedy Drama Shounen Sports	25	Spring 2010	SynergySP	50558	39583	0.01
7661	Giant Killing	7.58	Sports Drama Seinen	26	Spring 2010	Studio Deen	58297	34927	0.07
7662	Shinrei Tantei Yakumo	7.35	Mystery Horror Supernatural	13	Fall 2010	Bee Train	113530	61668	0.07
7674	Bakuman.	8.23	Comedy Drama Romance Shounen	25	Fall 2010	J.C.Staff	490554	291194	0.05
7681	Kyouryuu Wakusei	-1	Adventure Fantasy Historical Sci-Fi	60	Spring 1993	Unknown	382	91	0.31
7720	Ookiku Furikabutte: Natsu no Taikai-hen	8.04	Comedy Seinen Sports	13	Spring 2010	A-1 Pictures	36732	25474	0.02
7723	Hipira-kun	6.12	Comedy Fantasy Kids Supernatural Vampire	10	Fall 2009	Sunrise	2811	1558	0.08
7724	Shiki	7.79	Horror Mystery Supernatural Thriller Vampire	22	Summer 2010	Daume	465342	255427	0.05
7750	DigiGirl Pop!: Strawberry & Pop Mix Flavor	-1	Comedy Sci-Fi	26	Winter 2003	Creators Dot Com	358	85	0.31
7751	Midnight Horror School	-1	Comedy	52	Fall 2003	Unknown	610	102	0.28
7761	Masuda Kousuke Gekijou Gag Manga Biyori +	7.05	Comedy	12	Winter 2010	Studio Deen	1998	820	0.11
7768	Tantei Opera Milky Holmes	6.94	Mystery Comedy SuperPower	12	Fall 2010	J.C.Staff	39578	18777	0.1
7769	Ookami-san to Shichinin no Nakama-tachi	7.22	Comedy Parody Romance	12	Summer 2010	J.C.Staff	235671	147972	0.05
7779	Andersen Monogatari (TV)	6.21	Kids Fantasy Drama	52	Winter 1971	Unknown	759	263	0.26
7785	Yojouhan Shinwa Taikei	8.61	Mystery Comedy Psychological Romance	11	Spring 2010	Madhouse	307558	114567	0.05
7791	K-On!!	8.15	Comedy Music School SliceofLife	26	Spring 2010	Kyoto Animation	509434	345013	0.04
7793	Ring ni Kakero 1: Kage Dou-hen	6.42	Action Shounen Sports	6	Spring 2010	Toei Animation	1337	451	0.13
7808	Zukkoke Knight: Don De La Mancha	-1	Adventure Comedy Historical Romance	23	Spring 1980	Unknown	507	157	0.31
7817	B-gata H-kei	6.94	Comedy Ecchi Romance School Seinen	12	Spring 2010	Hal Film Maker, TYO Animations	323103	238140	0.05
7845	Seton Doubutsuki	6.73	Adventure Fantasy	45	Fall 1989	Unknown	477	176	0.24
7867	Gon	5.73	Action Adventure Kids	50	Spring 2012	Daewon Media	1505	440	0.33
7904	Kemono no Souja Erin Recaps	6.77	Adventure Drama Fantasy Historical SliceofLife	10	Winter 2010	Production I.G	2134	687	0.14
7955	The Marshmallow Times	6.45	SliceofLife	52	Spring 2004	Unknown	610	209	0.23
7956	Cybot Robocchi	-1	Comedy Sci-Fi	39	Fall 1982	Unknown	385	135	0.28
7960	Pachislo Kizoku Gin	-1	Action Game	23	Spring 2001	Actas	611	89	0.24
7980	Shin Obake no Q-tarou	-1	SliceofLife Comedy Supernatural School	70	Fall 1971	Unknown	340	121	0.36
7981	Obake no Q-tarou (1985)	6.26	Comedy Kids School SliceofLife Supernatural	510	Spring 1985	Unknown	404	187	0.26
8011	Time Bokan Series: Gyakuten Ippatsuman	5.88	Action Comedy Mecha Sci-Fi	58	Winter 1982	Tatsunoko Production	789	241	0.24
8025	Chi-Sui Maru	-1	Comedy	41	Winter 2010	Unknown	410	93	0.37
8041	Sennin Buraku	5.97	Comedy Ecchi	23	Fall 1963	Eiken	651	155	0.37
8057	Shin Koihime†Musou: Otome Tairan	7.02	Adventure Comedy Ecchi Fantasy Historical	12	Spring 2010	Doga Kobo	18085	10411	0.04
8065	Karakuri Kengou Den Musashi Lord	-1	Action Adventure Mecha	50	Fall 1990	Studio Pierrot	470	130	0.23
8074	Highschool of the Dead	7.15	Action Horror Supernatural Ecchi Shounen	12	Summer 2010	Madhouse	1108591	906093	0.04
8086	Densetsu no Yuusha no Densetsu	7.6	Action Adventure Magic Fantasy Shounen	24	Summer 2010	Zexcs	244977	149374	0.04
8123	Cooking Papa	6.58	Comedy SliceofLife	151	Spring 1992	Eiken	1369	310	0.2
8129	Kuragehime	8.13	SliceofLife Comedy Josei	11	Fall 2010	Brain's Base	183836	114366	0.02
8130	Mighty Orbots	5.89	Sci-Fi Adventure Comedy Mecha	13	Fall 1984	Tokyo Movie Shinsha	571	196	0.23
8139	Shin Minashigo Hutch	6.33	Adventure Comedy Drama	26	Spring 1974	Tatsunoko Production	583	305	0.19
8140	Konchuu Monogatari Minashigo Hutch (1989)	6.49	Adventure Comedy Drama	55	Summer 1989	Tatsunoko Production	952	619	0.13
8143	Sockies: Frontier Quest	-1	Comedy	39	Spring 2011	Unknown	249	47	0.48
8158	Gegege no Kitarou: Jigoku-hen	6.23	Adventure Fantasy Comedy Supernatural Horror	7	Winter 1988	Toei Animation	709	222	0.19
8179	Eagle Sam	-1	Comedy Sports	51	Spring 1983	Unknown	317	86	0.41
8182	Bouken Shounen Shadar	-1	Adventure Horror	156	Fall 1967	Unknown	471	159	0.29
8183	Bouken Korobokkuru	-1	Adventure	26	Fall 1973	Tatsunoko Production, Eiken	402	172	0.29
8184	Bouken Gabotenjima	-1	Adventure	39	Spring 1967	Unknown	370	116	0.33
8189	The World of Golden Eggs	-1	Comedy Parody	26	Winter 2005	Plus Heads, Studio Crocodile	686	124	0.28
8191	Hoshi Shinichi Short Short	-1	Comedy Sci-Fi	26	Fall 2007	Echoes	316	62	0.3
8194	Akuma-kun	6.17	Adventure Fantasy Horror Magic Supernatural	42	Spring 1989	Toei Animation	809	220	0.28
8195	Guru Guru Town Hanamaru-kun	-1	Kids	101	Fall 1999	Studio Pierrot	307	108	0.29
8206	Hime Chen! Otogi Chikku Idol Lilpri	7	Magic Shoujo	51	Spring 2010	TMS Entertainment	8742	3529	0.19
8213	Hoka Hoka Kazoku	5.8	Comedy	1428	Fall 1976	Eiken	560	311	0.18
8215	Genji Tsuushin Agedama	6.33	Action Parody Comedy Sci-Fi	51	Fall 1991	Gallop	1019	205	0.2
8216	Aa Harimanada	6.12	Sports MartialArts Seinen	23	Spring 1992	E&G Films	1308	506	0.17
8217	Jewelpet Twinkle☆	7.38	Fantasy Magic School Shoujo	52	Spring 2010	Studio Comet	8462	4665	0.08
8234	Muumin	7.06	Adventure Comedy Fantasy SliceofLife	65	Fall 1969	Mushi Production	4633	2376	0.11
8235	Muumin (1972)	6.58	Adventure Comedy Fantasy SliceofLife	52	Winter 1972	Mushi Production	1926	953	0.13
8239	Anime Yasei no Sakebi	-1	Adventure Drama	22	Spring 1982	Unknown	397	141	0.31
8240	Wanpaku Oomukashi Kum Kum	6.1	Kids Adventure Comedy Historical	26	Fall 1975	Sunrise	541	189	0.25
8241	Rio: Rainbow Gate!	5.89	Game Comedy Ecchi	13	Winter 2011	Xebec	34028	14909	0.22
8244	Keshikasu-kun	-1	Comedy Kids	25	Unknown	Shogakukan Music & Digital Entertainment	252	24	0.51
8277	Hyakka Ryouran: Samurai Girls	6.83	Action Harem Comedy Ecchi Samurai School	12	Fall 2010	Arms	152082	91219	0.07
8285	Ai no Senshi Rainbowman	6.46	Action Adventure Mecha Sci-Fi	22	Fall 1982	Unknown	901	308	0.24
8287	SD Gundam Sangokuden Brave Battle Warriors	6.34	Action Historical Mecha	51	Spring 2010	Sunrise	3843	1640	0.18
8311	Tegamibachi Reverse	7.78	Adventure Supernatural Fantasy Shounen	25	Fall 2010	Studio Pierrot	53986	31166	0.04
8336	Hanakappa	-1	Comedy Kids	-1	Spring 2010	Xebec, OLM	467	0	0.44
8345	Ukkari Pénélope	-1	Comedy SliceofLife	26	Fall 2006	Nippon Animation	296	85	0.37
8353	Ketsuinu	-1	Comedy	13	Spring 2010	Toei Animation	407	84	0.35
8373	Shin Mitsubachi Maya no Bouken	6.32	Adventure Comedy	52	Fall 1982	Nippon Animation	2459	1982	0.07
8375	Chogattai Majutsu Robot Ginguiser	6.06	Adventure Mecha Sci-Fi Shounen	26	Spring 1977	Nippon Animation	801	239	0.25
8394	Cyborg 009 (TV)	6.89	Action Adventure Mecha Sci-Fi Shounen	26	Spring 1968	Toei Animation	5240	2290	0.12
8407	Sora no Otoshimono: Forte	7.55	Comedy Ecchi Harem Romance Sci-Fi Shounen Supernatural	12	Fall 2010	AIC ASTA	245833	200435	0.02
8409	Marie & Gali ver. 2.0	5.94	Comedy	30	Spring 2010	Toei Animation	857	249	0.16
8410	Metal Fight Beyblade: Baku	6.78	Adventure Comedy Sports	51	Spring 2010	Tatsunoko Production, SynergySP	30297	26537	0.02
8415	Oi! Ryouma	-1	Adventure Drama Historical	39	Spring 1992	Unknown	388	99	0.3
8424	MM!	7.12	Harem Comedy Ecchi School	12	Fall 2010	Xebec	204287	144299	0.04
8425	Gosick	8.1	Mystery Historical Drama Romance	24	Winter 2011	Bones	428699	221312	0.07
8426	Hourou Musuko	7.74	Drama Romance School Seinen SliceofLife	11	Winter 2011	AIC Classic	104533	40667	0.08
8436	Animentary: Ketsudan	-1	Military Historical	25	Spring 1971	Tatsunoko Production	874	157	0.27
8449	Togainu no Chi	6.28	Action Sci-Fi ShounenAi	12	Fall 2010	A-1 Pictures	75396	40571	0.11
8476	Otome Youkai Zakuro	7.47	Demons Historical Military Romance Seinen Supernatural	13	Fall 2010	J.C.Staff	100477	55487	0.06
8478	Doubutsu Kankyou Kaigi	-1	Kids	20	Spring 2010	Studio Deen	316	81	0.34
8501	Chibikko Kaijuu Yadamon	-1	Comedy Kids Supernatural	26	Fall 1967	Unknown	308	91	0.38
8503	Fushigi Mahou Fun Fun Pharmacy	6.66	Kids Magic	48	Winter 1998	Toei Animation	2102	422	0.14
8516	Baka to Test to Shoukanjuu Ni!	7.76	Comedy Romance School SuperPower	13	Summer 2011	SILVER LINK.	315295	257010	0.02
8520	Biriken	-1	Kids Comedy	32	Summer 1988	Shin-Ei Animation	232	78	0.38
8521	Biriken Nandemo Shoukai	-1	Kids Comedy	22	Spring 1989	Shin-Ei Animation	222	80	0.39
8525	Kami nomi zo Shiru Sekai	7.73	Comedy Harem Romance Shounen Supernatural	12	Fall 2010	Manglobe	510719	358472	0.04
8536	Fortune Arterial: Akai Yakusoku	6.73	Comedy Romance School Supernatural Vampire	12	Fall 2010	feel., Zexcs	102584	73744	0.04
8538	Gokujou!! Mecha Mote Iinchou Second Collection	6.21	Comedy Romance School Shoujo	51	Spring 2010	SynergySP	2229	799	0.13
8542	Shin Ace wo Nerae!	6.49	Drama Romance School Shoujo Sports	25	Fall 1978	Tohokushinsha Film Corporation	1659	395	0.17
8553	Time Bokan Series: Time Patroltai Otasukeman	6.2	Action Adventure Comedy Sci-Fi	53	Winter 1980	Tatsunoko Production	792	337	0.2
8557	Shinryaku! Ika Musume	7.46	Comedy Shounen SliceofLife	12	Fall 2010	Diomedéa	159116	92814	0.06
8595	Kotencotenco	-1	Adventure Comedy Fantasy Kids Magic	52	Fall 2005	Unknown	249	64	0.37
8624	Digimon Xros Wars	6.73	Action Adventure Comedy Fantasy Shounen	30	Summer 2010	Toei Animation	38607	24892	0.11
8630	Hidan no Aria	6.88	Action Comedy Romance School	12	Spring 2011	J.C.Staff	311122	221678	0.04
8675	Seitokai Yakuindomo	7.6	Comedy School Shounen SliceofLife	13	Summer 2010	GoHands	394763	235667	0.05
8676	Amagami SS	7.36	SliceofLife Comedy Romance School	25	Summer 2010	AIC	289597	155410	0.08
8685	Ryuuichi Manga Gekijou Onbu Obake	-1	Supernatural	52	Fall 1972	Eiken	287	82	0.44
8687	Doraemon (2005)	7.52	Sci-Fi Comedy Kids Shounen	-1	Spring 2005	Shin-Ei Animation	12037	5	0.27
8726	Soredemo Machi wa Mawatteiru	7.44	SliceofLife Comedy Seinen	12	Fall 2010	Shaft	50371	22305	0.08
8753	Ultraman Kids: Haha wo Tazunete 3000-man Kounen	6.35	Kids Space	26	Fall 1991	Unknown	485	178	0.3
8763	Hajime Ningen Gyatoruz	5.99	Comedy Historical	77	Fall 1974	Tokyo Movie Shinsha	493	179	0.28
8764	Hajime Ningen Gon	5.97	Comedy Historical	39	Spring 1996	Studio Pierrot	442	238	0.2
8765	Futarigurashi	6.01	Comedy Ecchi Romance	36	Spring 1998	Studio Bogey, Public & Basic	1255	187	0.26
8769	Ore no Imouto ga Konnani Kawaii Wake ga Nai	7.1	SliceofLife Comedy	12	Fall 2010	AIC Build	565710	413245	0.04
8777	Nobara no Julie	-1	Adventure Historical Music Drama	13	Winter 1979	Unknown	499	141	0.26
8786	Inakappe Taishou	6.23	Comedy Sports	104	Fall 1970	Tatsunoko Production	470	171	0.32
8795	Panty & Stocking with Garterbelt	7.73	Action Comedy Parody Supernatural Ecchi	13	Fall 2010	Gainax	295370	182764	0.06
8799	Okawari-Boy Starzan-S	-1	Action Sci-Fi Adventure	34	Winter 1984	Tatsunoko Production	426	106	0.27
8812	Alice SOS	6.02	Adventure	28	Spring 1998	J.C.Staff	1445	298	0.21
8815	Domo TV	6.29	Comedy	26	Unknown	dwarf	1278	790	0.11
8829	Shounen Ashibe (TV)	-1	Comedy SliceofLife	37	Spring 1991	Life Work	493	131	0.33
8832	Shounen Ashibe 2	-1	Comedy SliceofLife	25	Fall 1992	Life Work	338	106	0.36
8841	Kore wa Zombie Desu ka?	7.43	Action Comedy Ecchi Harem Magic Supernatural	12	Winter 2011	Studio Deen	526740	386973	0.04
8853	Chouriki Robo Galatt	-1	Action Adventure Comedy Mecha Sci-Fi	25	Fall 1984	Sunrise	513	107	0.29
8861	Yosuga no Sora: In Solitude, Where We Are Least Alone.	6.26	Drama Ecchi Harem Romance	12	Fall 2010	feel.	359136	241158	0.06
8879	Dolphin Ouji	-1	Action Adventure Kids Sci-Fi	3	Spring 1965	Unknown	303	78	0.42
8890	Nippon-ichi no Otoko no Tamashii	-1	Comedy Romance	16	Winter 1999	Studio Deen	948	165	0.2
8891	Nippon-ichi no Otoko no Tamashii 2	-1	Comedy Romance	16	Spring 1999	Studio Deen	500	118	0.23
8897	Ganbare! Marine Kid	-1	Action Adventure Sci-Fi Kids	13	Fall 1966	Unknown	358	125	0.31
8899	Kaitei Shounen Marine	6.17	Action Adventure Kids Sci-Fi	65	Winter 1969	Unknown	528	171	0.28
8900	Saru Getchu: On Air 2nd	-1	Adventure Comedy Fantasy Kids Romance Shounen	51	Fall 2006	Xebec	490	164	0.24
8915	Dantalian no Shoka	7.26	Action Mystery Historical Supernatural	12	Summer 2011	Gainax	126249	62879	0.08
8917	Mouretsu Pirates	7.17	Sci-Fi Space	26	Winter 2012	Satelight	65954	26675	0.17
8934	Star Driver: Kagayaki no Takuto	7.23	Action Romance Mecha Shounen	25	Fall 2010	Bones	98153	47604	0.11
8937	Toaru Majutsu no Index II	7.61	Action Magic Sci-Fi SuperPower	24	Fall 2010	J.C.Staff	366426	265217	0.02
8956	Denkou Chou Tokkyuu Hikarian	6.32	Action Adventure Kids	52	Spring 2002	Unknown	513	236	0.22
8960	MonHun Nikki Girigiri Airou Mura: Airou Kiki Ippatsu	6.02	Action Comedy	10	Summer 2010	DLE	1126	323	0.19
8961	Tono to Issho: Ippunkan Gekijou	6.23	Comedy Samurai Seinen	12	Summer 2010	Gathering	3005	1770	0.09
8964	Stitch!: Zutto Saikou no Tomodachi	6.1	Adventure Comedy Kids	29	Summer 2010	Shin-Ei Animation	1598	781	0.12
8999	Origami Warriors	-1	Action Adventure	52	Unknown	Unknown	348	112	0.19
9013	Kuruneko 2nd Season	7	Comedy SliceofLife	50	Summer 2010	Studio Deen, DAX Production	1175	470	0.11
9015	Obake no... Holly	-1	Comedy Kids Magic Fantasy	200	Winter 1991	Unknown	396	147	0.26
9028	Edokko Boy: Gatten Tasuke	-1	Comedy MartialArts Police Sports	22	Fall 1990	Studio Pierrot	418	122	0.3
9041	IS: Infinite Stratos	6.75	Action Sci-Fi Harem Comedy Ecchi Mecha	12	Winter 2011	8bit	503818	388600	0.04
9061	RPG Densetsu Hepoi	-1	Adventure Fantasy	50	Fall 1990	Gallop	447	104	0.29
9065	Hakuouki Hekketsuroku	7.62	Action Drama Historical Josei Samurai Supernatural	10	Fall 2010	Studio Deen	74619	49175	0.03
9070	Oden-kun	-1	Comedy	156	Summer 2005	Unknown	288	91	0.31
9074	Arakawa Under the Bridge x Bridge	7.75	Comedy Romance Seinen	13	Fall 2010	Shaft	136905	92284	0.04
9106	Nogsaegjeoncha Hamos	6.23	Action Adventure Fantasy Shounen	26	Winter 1998	Unknown	672	300	0.15
9107	Pokemon Best Wishes!	6.4	Action Adventure Comedy Fantasy Kids	84	Fall 2010	OLM	71657	52475	0.09
9119	Chirorin Mura Monogatari	6.64	Kids SliceofLife	170	Spring 1992	Unknown	663	388	0.19
9175	Tsuruhime Ja!	-1	Kids SliceofLife Comedy Shoujo	49	Winter 1990	Madhouse	419	190	0.27
9181	Motto To LOVE-Ru	7.34	Sci-Fi Harem Comedy Ecchi School Shounen	12	Fall 2010	Xebec	259545	208088	0.02
9200	Dae Jang Geum: Jang Geum's Dream 2	7.1	Adventure Comedy Historical	26	Spring 2007	Unknown	1251	670	0.08
9241	Super Robot Taisen OG: The Inspector	7.25	Action Mecha Sci-Fi Space	26	Fall 2010	Asahi Production	8114	3595	0.13
9253	Steins;Gate	9.11	Thriller Sci-Fi	24	Spring 2011	White Fox	1771162	1134756	0.03
9284	Bakuhatsu Gorou	-1	Comedy Sports	26	Spring 1970	Unknown	511	129	0.36
9289	Hanasaku Iroha	7.95	SliceofLife Comedy Drama	26	Spring 2011	P.A. Works	266837	126092	0.06
9314	Fractale	6.96	Adventure Fantasy Sci-Fi	11	Winter 2011	A-1 Pictures, Ordet	74415	38892	0.08
9330	Dragon Crisis!	6.7	Action Magic Romance School Seinen Supernatural	12	Winter 2011	Studio Deen	149382	104501	0.06
9331	Yumekui Merry	6.95	Action Supernatural	13	Winter 2011	J.C.Staff	123078	73087	0.08
9345	Gakkou no Kowai Uwasa Shin: Hanako-san ga Kita!!	-1	Comedy Horror School Supernatural	33	Summer 2010	Unknown	733	110	0.28
9346	Battle Spirits: Brave	7.08	Game Military Sci-Fi Adventure Demons	50	Fall 2010	Sunrise	2994	1410	0.11
9367	Freezing	6.91	Action Sci-Fi Harem Drama Romance Ecchi MartialArts Seinen	12	Winter 2011	A.C.G.T.	268974	197607	0.05
9371	Karl to Fushigi na Tou	-1	Adventure Mystery Kids Fantasy	26	Fall 2010	Nippon Animation	358	55	0.35
9379	Denpa Onna to Seishun Otoko	7.18	Sci-Fi SliceofLife Comedy	12	Spring 2011	Shaft	249947	137119	0.06
9383	Chie-chan Funsenki: Jarinko Chie	-1	SliceofLife Comedy Drama Seinen	39	Fall 1991	Tokyo Movie Shinsha	326	94	0.33
9391	Ginga Hyouryuu Vifam 13	-1	Action Adventure Mecha Sci-Fi	26	Spring 1998	Sunrise	499	127	0.24
9395	Miyanishi Tatsuya Gekijou: Omae Umasou da na	6.36	Adventure Kids	20	Fall 2010	Unknown	1283	568	0.17
9424	Seupideuwang Beongae	6.11	Action Game School Shounen Sports	26	Spring 1998	Unknown	528	255	0.19
9426	Pururun! Shizuku-chan	-1	Comedy Kids	51	Fall 2006	TMS Entertainment	300	76	0.35
9433	A-jang.com	5.74	Fantasy	13	Fall 2001	Unknown	529	182	0.31
9438	Rainbow Sentai Robin	-1	Action Adventure Sci-Fi	48	Spring 1966	Toei Animation	577	146	0.32
9441	Yume-iro Pâtissière SP Professional	7.6	SliceofLife Shoujo	13	Fall 2010	Studio Pierrot	33704	27618	0.02
9455	Ninpen Manmaru	-1	Comedy Samurai Shounen	30	Summer 1997	Shin-Ei Animation	314	86	0.34
9479	Coppelion	6.48	Action Sci-Fi Seinen	13	Fall 2013	GoHands	106260	52779	0.19
9493	Dororon Enma-kun Meeramera	6.53	Action Comedy Parody SuperPower Demons Supernatural Magic Ecchi	12	Spring 2011	Brain's Base	15493	5796	0.21
9510	Mitsudomoe Zouryouchuu!	7.71	SliceofLife Comedy School	8	Winter 2011	Bridge	39781	30541	0.02
9513	Beelzebub	7.91	Action Comedy Demons Supernatural School Shounen	60	Winter 2011	Pierrot Plus	462977	252852	0.09
9518	Ichigo Ichie: Kimi no Kotoba	-1	SliceofLife Comedy School	13	Fall 2010	Unknown	459	99	0.26
9520	Zero Tester	-1	Action Sci-Fi Adventure Mecha	38	Fall 1973	Sunrise	541	115	0.35
9522	Zero Tester: Chikyuu wo Mamore!	-1	Action Adventure Mecha Sci-Fi	28	Summer 1974	Sunrise	366	96	0.38
9533	Pururun! Shizuku-chan Aha	-1	Comedy Kids	51	Fall 2007	TMS Entertainment	224	60	0.39
9539	Cardfight!! Vanguard	7.04	Action Game Adventure Demons Shounen	65	Winter 2011	TMS Entertainment	42692	24668	0.13
9540	Bucket de Gohan	-1	Comedy	20	Winter 1996	Unknown	270	84	0.36
9561	Shokupan Mimi	5.64	Comedy	12	Fall 2010	Kachidoki Studio	1393	876	0.07
9562	Tachumaru Gekijou	-1	Comedy Parody	26	Fall 2010	Tatsunoko Production	262	53	0.46
9587	Oniichan no Koto nanka Zenzen Suki ja Nai n da kara ne!!	6.15	Harem Comedy Romance Ecchi	12	Winter 2011	Zexcs	75649	45632	0.1
9598	Haiyoru! Nyaruani: Remember My Love(craft-sensei)	6.26	Comedy Sci-Fi	11	Winter 2011	DLE	24989	14920	0.06
9613	Big X	-1	Action Historical Sci-Fi Shounen	59	Spring 1964	Tokyo Movie Shinsha	737	135	0.38
9624	30-sai no Hoken Taiiku	6.7	Ecchi Parody Romance Seinen	12	Spring 2011	Gathering	53473	29071	0.08
9627	Kakko Kawaii Sengen!	5.64	Comedy	5	Fall 2010	Unknown	1157	409	0.16
9656	Kimi ni Todoke 2nd Season	8.01	SliceofLife Drama Romance School Shoujo	12	Winter 2011	Production I.G	334486	263445	0.01
9693	Moshidora	6.92	Drama Sports	10	Spring 2011	Production I.G	19677	9886	0.11
9712	Maria†Holic Alive	6.99	Comedy Parody School ShoujoAi	12	Spring 2011	Shaft	56706	32699	0.08
9736	Astarotte no Omocha!	6.59	Comedy Demons Ecchi Fantasy Romance Seinen	12	Spring 2011	Diomedéa	121641	78544	0.07
9750	Itsuka Tenma no Kuro Usagi	6.6	Comedy Supernatural Romance Ecchi Vampire	12	Summer 2011	Zexcs	114873	67777	0.09
9756	Mahou Shoujo Madoka★Magica	8.38	Psychological Drama Magic Thriller	12	Winter 2011	Shaft	971621	700785	0.03
9768	Shima Shima Tora no Shimajirou	6.08	Adventure Comedy Fantasy Kids Magic	726	Winter 1994	Unknown	547	230	0.28
9770	Hello Kitty no Stump Village	5.93	Fantasy Kids	26	Unknown	Unknown	584	302	0.17
9776	A-Channel	6.96	Comedy School Seinen SliceofLife	12	Spring 2011	Studio Gokumi	87240	48693	0.09
9781	Hyouga Senshi Gaislugger	-1	Action Mecha Sci-Fi	20	Spring 1977	Toei Animation	500	121	0.29
9799	Shin-Men	6.07	Action Comedy SuperPower Seinen	13	Fall 2010	Shin-Ei Animation	1237	442	0.18
9806	Qin Shi Ming Yue: Bai Bu Fei Jian	6.38	Action Historical MartialArts Fantasy	10	Winter 2007	Sparkly Key Animation Studio	2840	581	0.16
9807	Harimogu Harry	-1	Kids	140	Summer 1996	Unknown	218	81	0.36
9810	Nyani ga Nyandaa Nyandaa Kamen	6.52	Comedy Kids	83	Winter 2000	Sunrise	653	350	0.2
9811	Hanasaka Tenshi Tenten-kun	-1	Comedy Fantasy	43	Fall 1998	Nippon Animation	269	87	0.31
9812	Bit the Cupid	-1	Comedy	48	Spring 1995	Group TAC	266	75	0.37
9821	McDull: Chuntian Huahua Zhonghua Bowuguan	-1	Comedy Historical	5	Spring 2006	Unknown	208	85	0.3
9822	Xiang Qi Wang	-1	Game	26	Unknown	Unknown	471	121	0.25
9834	Level E	7.45	Sci-Fi Comedy Shounen	13	Winter 2011	Studio Pierrot, David Production	81291	41875	0.09
9856	Manga Nihon Emaki	-1	Historical	46	Fall 1977	Unknown	318	66	0.32
9863	SKET Dance	8.25	Comedy School Shounen	77	Spring 2011	Tatsunoko Production	185346	70818	0.12
9868	Chengyu Donghua Lang	-1	Historical Kids	180	Unknown	Unknown	292	117	0.29
9881	Chou Supercar Gattiger	6.16	Action Cars Sci-Fi	25	Fall 1977	Unknown	498	202	0.25
9882	High School Mystery: Gakuen Nanafushigi	-1	Horror Mystery	41	Spring 1991	Unknown	836	160	0.22
9883	Osomatsu-kun (1988)	6.7	Comedy	86	Winter 1988	Studio Pierrot	4597	1026	0.18
9884	Osomatsu-kun	6.46	Comedy	56	Winter 1966	Studio Zero	2848	602	0.22
9885	Shin Bikkuriman	-1	Comedy Fantasy	72	Spring 1989	Toei Animation	305	95	0.35
9893	Suite Precure♪	7.27	Action Magic Fantasy Shoujo	48	Winter 2011	Toei Animation	12150	5669	0.1
9900	Hamster Club	6.44	Kids	140	Fall 2000	Unknown	635	229	0.22
9902	Hyper ERT	-1	Kids	20	Unknown	Unknown	163	54	0.32
9903	Zhi duoduo Zhi duoduo	-1	Kids	15	Unknown	Unknown	172	52	0.44
9905	Captain (TV)	-1	Sports Shounen	26	Winter 1983	Eiken	555	178	0.27
9906	Sue Cat	-1	Adventure Music Shoujo	40	Summer 1980	Knack Productions	354	95	0.32
9916	Samurai Giants	6.36	Sports	46	Fall 1973	Madhouse, Tokyo Movie Shinsha	926	184	0.29
9919	Ao no Exorcist	7.59	Action Demons Fantasy Shounen Supernatural	25	Spring 2011	A-1 Pictures	1417630	1105894	0.03
9922	Oretachi ni Tsubasa wa Nai: Under the Innocent Sky.	6.7	Comedy Drama Ecchi Harem Romance	12	Spring 2011	Nomad	75817	36863	0.11
9926	Sekaiichi Hatsukoi	7.79	Comedy Drama Romance ShounenAi	12	Spring 2011	Studio Deen	173696	135952	0.03
9934	Nekogami Yaoyorozu	6.64	SliceofLife Comedy Supernatural Seinen	12	Summer 2011	AIC PLUS+	17784	7507	0.15
9936	Maken-Ki!	6.41	Action Ecchi Harem MartialArts School SuperPower	12	Fall 2011	AIC Spirits	216749	142997	0.06
9938	Ikoku Meiro no Croisée The Animation	7.44	SliceofLife Historical Seinen	12	Summer 2011	Satelight	51736	25745	0.09
9941	Tiger & Bunny	7.94	Action Mystery Comedy SuperPower	25	Spring 2011	Sunrise	182872	87486	0.08
9947	Lan Mao	-1	Adventure Comedy	3057	Fall 1999	Unknown	597	93	0.5
9948	Wo Wei Ge Kuang	-1	Music	52	Unknown	Unknown	295	66	0.33
9949	Fuwa Aoyun Manyouji	-1	Comedy Sports	100	Unknown	Unknown	200	72	0.37
9950	Hulu Xiongdi	6.44	Action SuperPower	13	Unknown	Unknown	396	200	0.21
9952	Wei Qi Shao Nian	-1	Game Historical	26	Unknown	Unknown	460	133	0.26
9955	Da Zuiba Dudu	-1	SliceofLife Kids	52	Unknown	Unknown	202	68	0.4
9956	The Primitives: Bongo and Grunge	-1	Comedy	52	Unknown	Unknown	137	39	0.43
9969	Gintama'	9.08	Action Sci-Fi Comedy Historical Parody Samurai Shounen	51	Spring 2011	Sunrise	365579	190008	0.03
9978	Kyouryuu Tankentai Born Free	5.87	Action Sci-Fi	25	Fall 1976	Sunrise	671	194	0.25
9981	Phi Brain: Kami no Puzzle	7.2	Action Game Mystery Shounen	25	Fall 2011	Sunrise	95549	47777	0.14
9989	Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai.	8.42	SliceofLife Supernatural Drama	11	Spring 2011	A-1 Pictures	1157747	870583	0.01
9996	Hyouge Mono	7.99	Historical Samurai Seinen	39	Spring 2011	Bee Train	21866	3138	0.16
10014	Shouwa Monogatari	6.93	Drama Historical	13	Spring 2011	WAO World	5026	1309	0.18
10015	Yu☆Gi☆Oh! Zexal	6.34	Action Game Fantasy Shounen	73	Spring 2011	Gallop	53642	33308	0.14
10030	Bakuman. 2nd Season	8.4	Comedy Drama Romance Shounen	25	Fall 2011	J.C.Staff	289356	220954	0.02
10033	Toriko	7.56	Action Adventure Comedy Fantasy Shounen	147	Spring 2011	Toei Animation	100907	37022	0.16
10049	Nurarihyon no Mago: Sennen Makyou	8	Action Demons Shounen Supernatural	24	Summer 2011	Studio Deen	135878	97146	0.02
10073	Seikon no Qwaser II	6.39	Action SuperPower Supernatural Ecchi Seinen	12	Spring 2011	Hoods Entertainment	112105	72674	0.06
10079	Hoshizora e Kakaru Hashi	6.78	Comedy Ecchi Harem Romance School	12	Spring 2011	Doga Kobo	146642	103539	0.04
10080	Kami nomi zo Shiru Sekai II	7.94	Comedy Harem Romance Shounen Supernatural	12	Spring 2011	Manglobe	325315	270304	0.01
10087	Fate/Zero	8.34	Action Supernatural Magic Fantasy	13	Fall 2011	ufotable	1090273	773576	0.02
10109	Softenni	6.52	Comedy Sports Ecchi School	12	Spring 2011	Xebec	21373	9198	0.15
10110	Mayo Chiki!	7.31	Harem Comedy Romance Ecchi School	13	Summer 2011	feel.	391433	287222	0.03
10135	Manga Hajimete Monogatari	-1	Adventure Comedy Historical	305	Spring 1978	Unknown	425	178	0.24
10136	Manga Doushite Monogatari	-1	Kids Adventure Comedy	100	Spring 1984	Unknown	295	119	0.3
10137	Manga Naruhodo Monogatari	-1	Adventure Kids	102	Spring 1986	Unknown	249	87	0.35
10138	Manga Hajimete Omoshiro Juku	-1	Adventure Kids	110	Winter 1989	Unknown	339	141	0.29
10155	Dog Days	6.96	Action Adventure Fantasy Magic	13	Spring 2011	Seven Arcs	163866	99832	0.09
10156	Sacred Seven	6.63	Action Sci-Fi SuperPower School	12	Summer 2011	Sunrise	69382	39299	0.11
10161	No.6	7.58	Action Sci-Fi Mystery Drama	11	Summer 2011	Bones	325787	205797	0.05
10162	Usagi Drop	8.43	SliceofLife Josei	11	Summer 2011	Production I.G	391626	241673	0.02
10163	C: The Money of Soul and Possibility Control	7.25	Action Mystery SuperPower Thriller	11	Spring 2011	Tatsunoko Production	250212	162154	0.05
10165	Nichijou	8.48	SliceofLife Comedy School Shounen	26	Spring 2011	Kyoto Animation	647924	289512	0.06
10177	DD Hokuto no Ken	6.16	Parody Seinen	12	Winter 2011	Unknown	4113	1981	0.1
10187	HenSemi (TV)	6.55	Comedy Ecchi Seinen	13	Spring 2011	Xebec	39658	19376	0.12
10194	Bada-ui Jeonseol Jangbogo	6.08	Action Adventure Mystery Comedy	26	Unknown	Unknown	713	226	0.18
10197	Nyanpire The Animation	6.68	Comedy Supernatural Vampire	12	Summer 2011	Gonzo	24592	16455	0.09
10210	Bug tte Honey	-1	Adventure Comedy	51	Fall 1986	Tokyo Movie Shinsha	377	107	0.32
10213	Maji de Watashi ni Koi Shinasai!	6.77	Harem Comedy SuperPower Romance Ecchi MartialArts School	12	Fall 2011	Lerche	231553	138072	0.06
10216	Yondemasu yo, Azazel-san. (TV)	7.54	Comedy Supernatural Demons	13	Spring 2011	Production I.G	64259	37298	0.05
10217	Kaitou Tenshi Twin Angel: Kyun Kyun☆Tokimeki Paradise!!	6.05	Magic	12	Summer 2011	J.C.Staff	7234	2410	0.21
10224	Uchuu Majin Daikengou	6.08	Action Sci-Fi Adventure Space Mecha	26	Summer 1978	Toei Animation, Studio Nue	772	217	0.25
10232	Tamayura: Hitotose	7.31	SliceofLife Comedy Drama	12	Fall 2011	TYO Animations	38506	13271	0.11
10236	Kagee Grimm Douwa	-1	Kids Adventure Fantasy Magic Romance Supernatural Demons Historical Drama	52	Unknown	Unknown	283	80	0.37
10237	Ki-Fighter Taerang	-1	Adventure Kids	26	Summer 2002	Unknown	187	60	0.4
10239	Mayutoro The Toons	-1	Comedy Fantasy Kids	33	Fall 2003	Unknown	177	61	0.34
10241	Sekai Monoshiri Ryoko	5.68	Comedy	1006	Fall 1971	Unknown	498	264	0.24
10242	Ton-Ton Atta to Niigata no Mukashibanashi	-1	Comedy	13	Fall 2004	Unknown	170	54	0.42
10250	Ultra B	6.06	Comedy SuperPower	119	Spring 1987	Shin-Ei Animation	742	457	0.2
10257	Pretty Rhythm: Aurora Dream	7.36	SliceofLife Sports Music Shoujo	51	Spring 2011	Tatsunoko Production	16907	8022	0.11
10271	Gyakkyou Burai Kaiji: Hakairoku-hen	8.25	Game Psychological Thriller Seinen	26	Spring 2011	Madhouse	140118	93251	0.02
10278	The iDOLM@STER	7.63	Music Comedy Drama	25	Summer 2011	A-1 Pictures	130168	54225	0.1
10282	Manga Nippon Mukashibanashi	6.07	Historical	12	Winter 1975	Unknown	516	184	0.24
10308	Sengoku Otome: Momoiro Paradox	6.59	Action Comedy Historical Samurai Sci-Fi SuperPower	13	Spring 2011	TMS Entertainment	39748	20024	0.1
10319	Chou Dendou Robo Tetsujin 28-gou FX	6.16	Action Adventure Mecha Sci-Fi	47	Spring 1992	Unknown	784	247	0.2
10321	Uta no☆Prince-sama♪ Maji Love 1000%	7.1	Harem Music Comedy Romance School Shoujo	13	Summer 2011	A-1 Pictures	167818	114586	0.07
10324	Tono to Issho: Gantai no Yabou	6.47	Comedy Historical Parody Samurai Seinen	12	Spring 2011	Gathering	2692	1214	0.1
10330	Bakugan Battle Brawlers: Mechtanium Surge	6.15	Action Adventure Fantasy Game Shounen	46	Winter 2011	TMS Entertainment	31671	26282	0.04
10336	Last Exile: Ginyoku no Fam	7.09	Action Adventure Sci-Fi	21	Fall 2011	Gonzo	39500	17909	0.1
10338	Honto ni Atta! Reibai Sensei	6.55	Comedy School Shounen Supernatural	22	Spring 2011	DLE	6872	2638	0.15
10346	Ring ni Kakero 1: Sekai Taikai-hen	6.45	Sports	6	Spring 2011	Toei Animation	1089	395	0.15
10347	Happy Kappy	5.44	Comedy Fantasy Shoujo	25	Spring 2011	Unknown	1073	294	0.36
10348	Fireball Charming	6.8	Sci-Fi	13	Spring 2011	Jinnis Animation Studios	7319	5233	0.06
10349	Suzy's Zoo: Daisuki! Witzy	6.02	Kids	25	Spring 2011	Digital Media Lab	539	221	0.25
10357	Jinrui wa Suitai Shimashita	7.78	Comedy Fantasy Seinen	12	Summer 2012	AIC ASTA	158291	61445	0.08
10359	Jewelpet Sunshine	6.52	Fantasy Magic Shoujo	52	Spring 2011	Studio Comet	3787	1051	0.17
10360	Kinniku Banzuke: Kongou-kun no Daibouken!	5.25	Action Shounen Sports	3	Summer 2001	Studio Pierrot	454	161	0.21
10370	Metal Fight Beyblade 4D	6.8	Adventure Sports	52	Spring 2011	SynergySP	27270	23562	0.02
10372	Kamisama Dolls	7.04	Action Seinen Supernatural	13	Summer 2011	Brain's Base	64938	35444	0.09
10378	Shinryaku!? Ika Musume	7.51	Comedy Shounen SliceofLife	12	Fall 2011	Diomedéa	78017	52577	0.03
10379	Natsume Yuujinchou San	8.6	SliceofLife Demons Supernatural Drama Shoujo	13	Summer 2011	Brain's Base	200904	125678	0.01
10396	Ben-To	7.28	Action Comedy MartialArts	12	Fall 2011	David Production	267602	180222	0.05
10397	Mashiro-iro Symphony: The Color of Lovers	7.11	Harem Drama Romance School	12	Fall 2011	Manglobe	130036	85099	0.04
10444	Digimon Xros Wars: Aku no Death General to Nanatsu no Oukoku	7.16	Action Adventure Fantasy Comedy Shounen	24	Spring 2011	Toei Animation	22062	16117	0.03
10447	Aquarion Evol	7.14	Action Comedy Drama Fantasy Mecha Romance Sci-Fi	26	Winter 2012	Satelight, 8bit	93687	51009	0.08
10456	Kyoukaisenjou no Horizon	7.1	Action Sci-Fi Fantasy	13	Fall 2011	Sunrise	153993	72938	0.1
10459	Puu-Neko	-1	Comedy	11	Spring 2011	DLE	842	142	0.26
10460	Kimi to Boku.	7.7	Comedy Drama Romance School Shounen SliceofLife	13	Fall 2011	J.C.Staff	148886	65483	0.08
10465	Manyuu Hikenchou	6.22	Action Comedy Historical Ecchi Samurai Seinen	12	Summer 2011	Hoods Entertainment	59558	24421	0.11
10490	Blood-C	6.56	Action Mystery Horror Supernatural Vampire School	12	Summer 2011	Production I.G	255157	144196	0.08
10495	Yuru Yuri	7.6	SliceofLife Comedy School ShoujoAi	12	Summer 2011	Doga Kobo	279284	157341	0.06
10506	Shiawase Haitatsu Taneko	-1	Comedy	-1	Spring 2011	Kachidoki Studio	503	0	0.63
10507	Inazuma Eleven Go	6.98	Shounen Sports SuperPower	47	Spring 2011	OLM	54307	43784	0.04
10513	Usavich IV	6.65	Comedy	13	Spring 2011	Kanaban Graphics	2456	1964	0.04
10521	Working'!!	7.87	Comedy Romance Seinen SliceofLife	13	Fall 2011	A-1 Pictures	219037	169462	0.01
10524	Duel Masters Victory	5.82	Action Adventure Comedy Shounen	52	Spring 2011	Unknown	1109	452	0.18
10525	Shinseiki Duel Masters Flash	5.8	Comedy Kids	24	Spring 2006	SynergySP	597	216	0.27
10526	Duel Masters Zero	5.99	Action Game Kids	24	Fall 2007	Unknown	1509	796	0.11
10527	Duel Masters Cross	6.35	Action Adventure Comedy Shounen	100	Spring 2008	Unknown	1906	1073	0.1
10528	Duel Masters Cross Shock	6.2	Action Adventure Comedy Shounen	50	Spring 2010	Unknown	1713	929	0.12
10533	Fujilog	-1	Comedy	13	Spring 2011	Unknown	460	120	0.3
10539	Hato no Oyome-san	-1	Comedy	4	Spring 2011	DLE	331	96	0.3
10540	Genki!! Ekoda-chan	-1	Comedy	22	Spring 2011	DLE	783	145	0.27
10541	Shuukan Shimakou	-1	Comedy	11	Spring 2011	DLE	496	87	0.31
10554	Yakyuukyou no Uta	6.49	Action Drama Sports	25	Winter 1978	Nippon Animation	845	180	0.28
10562	Machine Hayabusa	6.18	Action Cars Sports Shounen	21	Spring 1976	Toei Animation	650	236	0.24
10568	Kamisama no Memochou	7.54	Mystery	12	Summer 2011	J.C.Staff	205012	103892	0.07
10572	Ro-Kyu-Bu!	6.84	Comedy Ecchi School Sports	12	Summer 2011	Barnum Studio, Project No.9, Studio Blanc	71266	40385	0.08
10578	C³	6.66	Action Comedy Ecchi School Supernatural	12	Fall 2011	SILVER LINK.	154898	94193	0.09
10588	Persona 4 the Animation	7.52	Sci-Fi Adventure Mystery SuperPower Supernatural School	25	Fall 2011	AIC ASTA	221067	127976	0.07
10607	Rerere no Tensai Bakabon	6.22	Comedy	24	Fall 1999	Studio Pierrot	506	192	0.27
10611	R-15	6.5	Comedy Ecchi Harem Romance School	12	Summer 2011	AIC, Remic	80067	46198	0.09
10620	Mirai Nikki	7.54	Action Mystery Psychological Shounen Supernatural Thriller	26	Fall 2011	Asread	1533289	1154210	0.04
10623	Hayan Ma-eum Baeggu	-1	Adventure	13	Fall 2000	Unknown	674	156	0.23
10633	Shiodome Cable TV	-1	Comedy	22	Spring 2011	DLE	252	79	0.36
10671	Morita-san wa Mukuchi.	6.53	Comedy School SliceofLife	13	Summer 2011	Seven	20936	12334	0.07
10705	Yasai no Yousei: N.Y.Salad	-1	Kids	26	Spring 2007	Unknown	311	74	0.36
10706	Yasai no Yousei: N.Y.Salad 2nd Series	-1	Kids	26	Spring 2008	Unknown	223	66	0.36
10709	Manga Nihon Keizai Nyuumon	-1	SliceofLife Historical Drama Seinen	25	Fall 1987	Knack Productions	287	62	0.35
10719	Boku wa Tomodachi ga Sukunai	7.27	Ecchi SliceofLife Comedy Harem Romance School	12	Fall 2011	AIC Build	637856	475182	0.03
10721	Mawaru Penguindrum	7.98	Mystery Comedy Dementia Psychological Drama	24	Summer 2011	Brain's Base	248060	106107	0.08
10774	Soccer Fever	-1	Historical Sports	51	Spring 1994	Unknown	488	155	0.27
10790	Kore wa Zombie Desu ka? of the Dead	7.56	Action Harem Comedy Supernatural Magic Ecchi	10	Spring 2012	Studio Deen	322201	258146	0.02
10793	Guilty Crown	7.52	Action Sci-Fi SuperPower Drama Romance Mecha	22	Fall 2011	Production I.G	950798	620576	0.07
10797	Kayoe! Chuugaku	-1	Comedy School	425	Summer 2011	DLE	375	73	0.42
10798	Un-Go	7.4	Mystery Supernatural	11	Fall 2011	Bones	128732	64941	0.07
10800	Chihayafuru	8.23	Drama Game Josei School SliceofLife Sports	25	Fall 2011	Madhouse	348658	170333	0.06
10802	MonHun Nikki Girigiri Airou Mura G	6.06	Action Comedy	13	Summer 2011	DLE	535	206	0.21
10808	Mobile Suit Gundam AGE	6.49	Action Mecha Sci-Fi Space	49	Fall 2011	Sunrise	26453	14002	0.14
10810	Pucca 2	6.52	Action Comedy Parody Romance	13	Spring 2008	Unknown	5890	4949	0.03
10815	UFO Senshi Dai Apolon 2	-1	Action Sci-Fi Mecha	21	Fall 1976	Eiken, Studio Live	373	107	0.36
10838	Double-J	5.5	Comedy School Shounen	11	Summer 2011	DLE	10737	5646	0.15
10847	Inumarudashi	5.24	Comedy	4	Summer 2011	Gathering	610	173	0.2
10855	Penguin no Mondai Max	-1	Comedy Kids	50	Spring 2010	Shogakukan Music & Digital Entertainment	226	75	0.34
10856	Penguin no Mondai DX?	-1	Comedy Kids	52	Spring 2011	Unknown	216	67	0.35
10869	Scan2Go	6.08	Game Cars Space Kids	52	Summer 2010	SynergySP	2100	1199	0.13
10870	Koukaku Kidoutai: Stand Alone Complex - Tachikoma na Hibi (TV)	7.28	Sci-Fi Comedy Mecha	12	Spring 2007	Production I.G	10931	5251	0.04
10884	Saki Achiga-hen: Episode of Side-A	7.33	Game School SliceofLife	12	Spring 2012	Studio Gokumi	31032	17844	0.06
10887	Dame Oyaji	-1	SliceofLife Comedy	26	Spring 1974	Knack Productions	297	72	0.43
10889	Jungle Kurobee	-1	Comedy	31	Spring 1973	Tokyo Movie Shinsha	350	87	0.39
10908	Kakko Kawaii Sengen! 2	5.85	Comedy	10	Summer 2011	Unknown	660	260	0.16
10953	Pants Pankurou	-1	SliceofLife Comedy Kids	85	Spring 2004	Unknown	176	52	0.39
10958	High Score	5.62	SliceofLife Comedy School Shoujo	8	Fall 2011	DLE	7092	4395	0.07
10965	Kagaku Bouken-tai Tansar 5	-1	Adventure Mystery Sci-Fi Supernatural	34	Summer 1979	Sunrise	304	85	0.35
10987	Zettai Zetsumei Dangerous Jiisan (2004)	-1	Comedy Kids	51	Spring 2004	Studio Hibari	308	90	0.34
10989	Stray Sheep: Poe no Chicchana Daibouken	-1	Comedy Kids	12	Fall 2001	Unknown	255	79	0.33
10995	Ganbare!! Nattou-san	-1	Comedy	4	Summer 2011	Kachidoki Studio	239	45	0.47
10997	Fujilog 2nd Season	-1	Comedy	13	Fall 2011	Unknown	312	96	0.27
11013	Inu x Boku SS	7.46	Comedy Supernatural Romance Shounen	12	Winter 2012	David Production	404817	256591	0.05
11017	Battle Spirits: Heroes	6.18	Game Sci-Fi	50	Fall 2011	Sunrise	1617	625	0.16
11021	Muv-Luv Alternative: Total Eclipse	7.11	Action Military Sci-Fi Mecha	24	Summer 2012	Satelight, ixtl	80484	43760	0.09
11061	Hunter x Hunter (2011)	9.1	Action Adventure Fantasy Shounen SuperPower	148	Fall 2011	Madhouse	1673924	1094486	0.02
11079	Kill Me Baby	6.87	Comedy School Seinen	13	Winter 2012	J.C.Staff	97354	47555	0.13
11111	Another	7.55	Mystery Horror Supernatural Thriller School	12	Winter 2012	P.A. Works	1219780	925862	0.03
11123	Sekaiichi Hatsukoi 2	7.97	Comedy Drama Romance ShounenAi	12	Fall 2011	Studio Deen	126286	107736	0.01
11177	Cross Fight B-Daman	6.39	Game Kids	52	Fall 2011	SynergySP	5224	3406	0.1
11179	Papa no Iukoto wo Kikinasai!	7.33	Comedy Romance SliceofLife	12	Winter 2012	feel.	162399	113011	0.04
11197	Kuma no Puutarou	-1	Comedy	30	Spring 1995	Studio Deen	206	57	0.4
11203	Hero Hero-kun	-1	Adventure Comedy Game Kids	104	Spring 2000	Studio Flag, Studio Bogey	253	87	0.31
11213	Hoshi no Ko Poron	-1	Sci-Fi	260	Spring 1974	Unknown	402	126	0.33
11227	Rinne no Lagrange	6.92	Action Sci-Fi Comedy Mecha	12	Winter 2012	Xebec	59610	26773	0.1
11235	Amagami SS+ Plus	7.44	SliceofLife Comedy Romance School	13	Winter 2012	AIC	131666	95169	0.03
11239	Hidamari Sketch x Honeycomb	7.94	SliceofLife Comedy School Seinen	12	Fall 2012	Shaft	19584	11425	0.03
11241	Brave 10	6.8	Action Adventure Historical SuperPower Samurai Seinen	12	Winter 2012	TMS Entertainment	130165	82375	0.07
11245	Manga Nihonshi	-1	Historical	52	Spring 1983	Unknown	359	95	0.28
11268	Ganso Tensai Bakabon	6.26	SliceofLife Comedy	103	Fall 1975	Unknown	791	263	0.23
11275	Akadou Suzunosuke	-1	Adventure Historical	52	Spring 1972	Unknown	567	171	0.32
11285	Black★Rock Shooter (TV)	6.85	Action Drama School SliceofLife	8	Winter 2012	Ordet, SANZIGEN	302397	198365	0.06
11307	Ginga Patrol PJ	6.64	Drama Military Sci-Fi Space	26	Unknown	Eiken	853	507	0.11
11319	Zero no Tsukaima F	7.52	Adventure Magic Romance Ecchi Fantasy	12	Winter 2012	J.C.Staff	333447	273812	0.02
11341	Tantei Opera Milky Holmes Dai 2 Maku	7.22	Mystery Comedy SuperPower	12	Winter 2012	J.C.Staff, Artland	16198	9234	0.06
11371	Shin Tennis no Ouji-sama	7.56	Action Comedy Sports Shounen	13	Winter 2012	Production I.G, M.S.C	49053	35659	0.03
11385	Digimon Xros Wars: Toki wo Kakeru Shounen Hunter-tachi	6.45	Action Adventure Comedy Fantasy Shounen	25	Fall 2011	Toei Animation	20923	14268	0.05
11405	Skyers 5	-1	Action Sci-Fi	12	Fall 1967	Unknown	379	100	0.37
11421	Iruka to Shounen	-1	Adventure Kids	13	Summer 1975	Eiken	268	81	0.37
11433	Ano Natsu de Matteru	7.49	Comedy Drama Romance Sci-Fi SliceofLife	12	Winter 2012	J.C.Staff	306842	186825	0.04
11457	Chibi☆Devi!	6.76	Fantasy Shoujo Supernatural	75	Fall 2011	SynergySP	12646	4373	0.22
11491	Recorder to Randoseru Do♪	6.69	Comedy School Seinen SliceofLife	13	Winter 2012	Seven	43906	28448	0.07
11497	Sore Ike! Zukkoke Sannin-gumi	-1	Comedy Kids School	26	Spring 2004	Nippon Animation	214	53	0.42
11499	Sankarea	7.36	Comedy Ecchi Horror Romance Shounen Supernatural	12	Spring 2012	Studio Deen	464331	318184	0.04
11521	Hello Kitty: Ringo no Mori no Fantasy	5.88	Comedy Fantasy Kids	13	Spring 2006	Asahi Production	537	257	0.18
11525	Mamimume★Mogacho	-1	Kids	13	Summer 2001	Unknown	251	70	0.34
11533	Momotarou Densetsu	-1	Adventure Comedy	51	Fall 1989	Knack Productions	392	113	0.27
11541	Ad Lib Anime Kenkyuujo	-1	Comedy	38	Fall 2011	Unknown	945	159	0.33
11545	Happyakuyachou Hyouri Kewaishi	-1	Historical Drama	16	Fall 1990	Shin-Ei Animation	442	117	0.27
11547	Sengoku☆Paradise Kiwami	6.07	Action Comedy Drama Historical Romance Samurai Shoujo	26	Fall 2011	Milky Cartoon, LMD	4768	841	0.24
11589	Puu-Neko Shougekijou	-1	Comedy	11	Summer 2011	Unknown	346	92	0.26
11595	Perman (1983)	6.41	Kids Comedy SuperPower School	526	Spring 1983	Shin-Ei Animation	2087	1297	0.17
11597	Nisemonogatari	8.18	Mystery Comedy Supernatural Ecchi	11	Winter 2012	Shaft	572431	428713	0.01
11609	Sono Toki, Shimakou ga Ugoita!	-1	Comedy	11	Summer 2011	DLE	312	83	0.31
11615	Morita-san wa Mukuchi. 2	6.68	Comedy School SliceofLife	13	Fall 2011	Seven	11801	8921	0.02
11617	High School DxD	7.4	Comedy Demons Ecchi Harem Romance School	12	Winter 2012	TNK	995532	812823	0.04
11633	Blood Lad	7.33	Action Comedy Demons Seinen Supernatural Vampire	10	Summer 2013	Brain's Base	535363	377208	0.04
11665	Natsume Yuujinchou Shi	8.67	SliceofLife Demons Supernatural Drama Shoujo	13	Winter 2012	Brain's Base	193052	114646	0.01
11697	Area no Kishi	7.22	Comedy School Shounen Sports	37	Winter 2012	Shin-Ei Animation	59931	33902	0.12
11703	Code:Breaker	6.8	Action Comedy SuperPower Supernatural School Shounen	13	Fall 2012	Kinema Citrus	257812	167779	0.07
11733	Chi-Sui Maru 2nd Season	-1	Comedy	34	Winter 2011	Unknown	269	70	0.39
11739	Kimi to Boku. 2	7.98	Comedy Drama Romance School Shounen SliceofLife	13	Spring 2012	J.C.Staff	72918	47337	0.02
11741	Fate/Zero 2nd Season	8.59	Action Supernatural Magic Fantasy	12	Spring 2012	ufotable	808294	649100	0.01
11751	Senki Zesshou Symphogear	7.03	Action Sci-Fi Music	13	Winter 2012	Satelight, Encourage Films	95904	45745	0.08
11757	Sword Art Online	7.25	Action Game Adventure Romance Fantasy	25	Summer 2012	A-1 Pictures	2214395	1907261	0.04
11759	Accel World	7.32	Action Game Sci-Fi Romance School	24	Spring 2012	Sunrise	598685	405638	0.08
11761	Medaka Box	7.07	Action Comedy Ecchi MartialArts School Shounen SuperPower	12	Spring 2012	Gainax, Asahi Production	203806	119974	0.07
11763	Sekai de Ichiban Tsuyoku Naritai!	5.81	Action Ecchi Sports	12	Fall 2013	Arms	42979	16567	0.2
11769	Gokujo.: Gokurakuin Joshikou Ryou Monogatari	6.2	Comedy Ecchi School Seinen ShoujoAi	12	Winter 2012	LMD	26423	13691	0.09
11771	Kuroko no Basket	8.15	Comedy School Shounen Sports	25	Spring 2012	Production I.G	810207	609160	0.03
11783	Dog Days'	7.09	Action Adventure Magic Fantasy	13	Summer 2012	Seven Arcs	89348	65703	0.04
11785	Haiyore! Nyaruko-san	7.07	Sci-Fi Comedy Parody	12	Spring 2012	Xebec	284937	160124	0.07
11809	gdgd Fairies	6.8	Comedy	12	Fall 2011	Unknown	4270	1935	0.14
11829	Manga Mitokoumon	6.49	Historical	46	Summer 1981	Unknown	520	207	0.19
11835	Qin Shi Ming Yue: Zhu Zi Bai Jia	7.03	Action Historical MartialArts Fantasy	34	Unknown	Sparkly Key Animation Studio	1084	354	0.15
11837	Zetman	6.89	Action Drama Horror Romance Sci-Fi Seinen Supernatural	13	Spring 2012	TMS Entertainment	110214	66331	0.08
11841	Qin Shi Ming Yue: Ye Jin Tianming	6.81	Action Historical MartialArts Fantasy	18	Unknown	Sparkly Key Animation Studio	1027	396	0.14
11843	Danshi Koukousei no Nichijou	8.28	SliceofLife Comedy School	12	Winter 2012	Sunrise	593890	364587	0.04
11857	Judo Sanka	-1	Sports Shounen	27	Spring 1974	Unknown	368	92	0.36
11859	Queen's Blade: Rebellion	6.32	Action Adventure Ecchi Fantasy	12	Spring 2012	Arms	35047	16032	0.08
11873	Oraa Guzura Dado (1987)	6.19	Comedy Kids	44	Fall 1987	Tatsunoko Production	474	262	0.2
11887	Kokoro Connect	7.82	SliceofLife Comedy Supernatural Drama Romance School	13	Summer 2012	SILVER LINK.	632426	398032	0.04
11919	Zoku Attacker You! Kin Medal e no Michi	6.11	Sports Romance	52	Unknown	Unknown	853	418	0.18
11933	Oda Nobuna no Yabou	7.46	Comedy Historical Romance	12	Summer 2012	Madhouse, Studio Gokumi	242603	159454	0.04
12021	Poyopoyo Kansatsu Nikki	7.68	SliceofLife Comedy Seinen	52	Winter 2012	Studio Deen	18640	8595	0.11
12031	Kingdom	8.04	Action Historical Military Seinen	38	Summer 2012	Studio Pierrot	135459	55016	0.09
12039	What's Michael? (TV)	-1	Comedy	45	Spring 1988	Daume	601	120	0.31
12119	Natsu-iro Kiseki	7.02	School SliceofLife Supernatural	12	Spring 2012	Sunrise	37915	15947	0.12
12123	Yurumates 3D	6.3	SliceofLife Comedy Seinen	13	Spring 2012	C2C	7256	4456	0.11
12139	Wanpaku Tanteidan	-1	Action Mystery	35	Winter 1968	Mushi Production	534	95	0.35
12145	Backkom	5.84	Comedy Kids	52	Unknown	RG Animation Studios	1468	998	0.14
12149	AKB0048	7.39	Music Sci-Fi	13	Spring 2012	Satelight	54160	31555	0.08
12175	Koi to Senkyo to Chocolate	7.09	Drama Romance School	12	Summer 2012	AIC Build	184264	104403	0.05
12181	Nihon Omoshiro Mukashibanashi	-1	Comedy Historical Parody	12	Fall 2011	Unknown	279	75	0.34
12185	Mameushi-kun	-1	Comedy Fantasy Kids	52	Fall 2007	TMS Entertainment	180	50	0.39
12189	Hyouka	8.14	Mystery School SliceofLife	22	Spring 2012	Kyoto Animation	940736	513461	0.05
12191	Smile Precure!	6.74	Action Magic Fantasy Shoujo	48	Winter 2012	Toei Animation	27528	14434	0.12
12243	Game Center Arashi	-1	Comedy Game Kids Shounen	26	Spring 1982	Shin-Ei Animation	436	102	0.29
12281	Rinne no Lagrange Season 2	6.99	Action Comedy Mecha Sci-Fi	12	Summer 2012	Xebec	25263	15165	0.05
12291	Acchi Kocchi (TV)	7.51	SliceofLife Comedy Romance School	12	Spring 2012	AIC	253071	152078	0.06
12293	Campione!: Matsurowanu Kamigami to Kamigoroshi no Maou	7.05	Comedy Ecchi Fantasy Harem Magic Romance	13	Summer 2012	Diomedéa	303861	223807	0.05
12321	Thermae Romae	7.02	Comedy Historical Seinen	3	Winter 2012	Gonzo, DLE	20600	12747	0.05
12359	Pecola	-1	Kids	26	Fall 2002	Unknown	339	154	0.25
12361	Track City	6.2	Action Cars	26	Winter 2000	SBS TV Production	938	489	0.17
12365	Bakuman. 3rd Season	8.58	Comedy Drama Romance Shounen	25	Fall 2012	J.C.Staff	268794	199772	0.01
12367	Shining Hearts: Shiawase no Pan	6.15	Action Fantasy	12	Spring 2012	Production I.G	38128	18475	0.13
12391	Mouretsu Atarou (1990)	-1	Comedy Kids SliceofLife	34	Spring 1990	Toei Animation	282	73	0.32
12393	Oyako Club	5.6	SliceofLife Comedy	1818	Fall 1994	Eiken	716	428	0.17
12403	Yuru Yuri♪♪	7.85	SliceofLife Comedy School ShoujoAi	12	Summer 2012	Doga Kobo	150091	110706	0.02
12413	Jormungand	7.85	Action Adventure Seinen	12	Spring 2012	White Fox	270163	152313	0.04
12431	Uchuu Kyoudai	8.52	Comedy Sci-Fi Seinen SliceofLife Space	99	Spring 2012	A-1 Pictures	150428	37234	0.09
12445	Tasogare Otome x Amnesia	7.86	Horror Mystery Romance School Shounen Supernatural	12	Spring 2012	SILVER LINK.	316252	186375	0.04
12461	Hiiro no Kakera	6.74	Fantasy Romance Shoujo Supernatural	13	Spring 2012	Studio Deen	93779	51361	0.1
12467	Nazo no Kanojo X	7.25	Romance School Seinen	13	Spring 2012	Hoods Entertainment	202006	121180	0.08
12471	Eureka Seven AO	6.7	Action Adventure Drama Mecha Sci-Fi	24	Spring 2012	Bones	83704	45239	0.09
12481	Gregory Horror Show: The Second Guest	6.64	Mystery Comedy Horror Demons Supernatural	25	Spring 2000	Milky Cartoon	1416	912	0.05
12483	Gregory Horror Show: The Last Train	6.3	Mystery Comedy Horror Demons Supernatural Vampire	26	Fall 2000	Milky Cartoon	1219	747	0.07
12487	Kyoukaisenjou no Horizon II	7.55	Action Fantasy Sci-Fi	13	Summer 2012	Sunrise	72010	44861	0.04
12531	Sakamichi no Apollon	8.36	Drama Josei Music Romance School	12	Spring 2012	Tezuka Productions, MAPPA	284901	159591	0.03
12549	Dakara Boku wa, H ga Dekinai.	6.64	Comedy Supernatural Romance Ecchi	12	Summer 2012	feel.	332158	229141	0.07
12611	Sengoku Collection	6.44	Fantasy Parody Samurai	26	Spring 2012	Brain's Base	21564	6027	0.27
12613	Morizo to Kikkoro	-1	Kids	52	Spring 2004	Unknown	169	51	0.37
12651	Danball Senki W	7.05	Action Kids Mecha	58	Winter 2012	OLM	4559	2651	0.08
12677	Ozma	6.11	Action Sci-Fi Adventure	6	Spring 2012	Gonzo, LandQ studios	13949	7542	0.13
12679	Joshiraku	7.49	SliceofLife Comedy Shounen	13	Summer 2012	J.C.Staff	95565	34587	0.09
12711	Uta no☆Prince-sama♪ Maji Love 2000%	7.25	Comedy Harem Music Romance School Shoujo	13	Spring 2013	A-1 Pictures	96030	68402	0.05
12753	Phi Brain: Kami no Puzzle - Orpheus Order-hen	7.29	Action Game Mystery Shounen	25	Spring 2012	Sunrise	43112	26488	0.06
12763	0-sen Hayato	-1	Historical Military	38	Winter 1964	Unknown	599	161	0.36
12765	Yuuyake Banchou	-1	Action	26	Fall 1968	Unknown	339	67	0.41
12767	Yuusei Kamen	-1	Sci-Fi	39	Summer 1966	Eiken	367	97	0.38
12771	Youyou no Neko Tsumami	-1	SliceofLife Comedy	130	Spring 1992	Visual 80, Telescreen	267	72	0.39
12781	Yoshimoto Muchikko Monogatari	-1	Comedy	47	Fall 1998	Shin-Ei Animation	212	59	0.45
12793	Yanbou Ninbou Tonbou	-1	Fantasy	39	Spring 1995	Unknown	208	58	0.42
12809	Wonder Bebil-kun	-1	Comedy Fantasy	30	Spring 2003	Radix	244	53	0.41
12815	Shirokuma Cafe	7.94	SliceofLife Comedy Josei	50	Spring 2012	Studio Pierrot	75553	14427	0.19
12835	Umeboshi Denka	-1	Comedy SliceofLife	26	Spring 1969	Unknown	308	89	0.41
12863	Pretty Rhythm: Dear My Future	6.68	SliceofLife Sports Music Shoujo	51	Spring 2012	Tatsunoko Production, Dongwoo A&E	6813	3456	0.1
12875	Ginga e Kickoff!!	7.24	Sports Shounen	39	Spring 2012	TYO Animations	20414	10591	0.09
12883	Tsuritama	7.7	Comedy Sci-Fi SliceofLife Sports	12	Spring 2012	A-1 Pictures	143088	63453	0.08
12887	Uchuu Shounen Soran	-1	Action Adventure Sci-Fi	96	Spring 1965	Eiken	391	97	0.39
12897	Uchuu Patrol Hopper	-1	Sci-Fi Space	44	Winter 1965	Toei Animation	412	90	0.42
12929	Saint Seiya Omega	6.28	Action Adventure Fantasy Shounen	97	Spring 2012	Toei Animation	39732	16861	0.23
12951	AWOL	5.62	Action Space Military Sci-Fi	12	Winter 1998	Studio Deen	945	224	0.22
12963	Jewelpet Kira☆Deco!	6.66	Fantasy Magic Shoujo	52	Spring 2012	Studio Comet	2955	1119	0.15
12967	Arcana Famiglia	6.28	Action Harem Supernatural Romance Shoujo	12	Summer 2012	J.C.Staff	172137	107445	0.11
12979	Naruto SD: Rock Lee no Seishun Full-Power Ninden	7.14	Action Comedy Parody	51	Spring 2012	Studio Pierrot	64979	35502	0.14
13029	Arashi no Yoru ni: Himitsu no Tomodachi	6.76	Adventure Drama	26	Spring 2012	Sparky Animation	2295	763	0.23
13115	Hakuouki Reimeiroku	7.48	Action Historical Supernatural Drama Samurai Josei	12	Summer 2012	Studio Deen	48480	26871	0.05
13125	Shinsekai yori	8.35	Drama Horror Mystery Psychological Sci-Fi Supernatural	25	Fall 2012	A-1 Pictures	619318	255272	0.08
13139	Gakkatsu!	6.5	Comedy School	25	Spring 2012	NHK	6643	2502	0.22
13141	Shiba Inuko-san	5.77	Comedy	26	Spring 2012	Hotline	8571	3620	0.16
13143	Baku Tech! Bakugan	5.96	Action Game Shounen	51	Spring 2012	Unknown	3488	2220	0.12
13145	Cardfight!! Vanguard: Asia Circuit-hen	6.84	Action Game Adventure Demons Shounen	39	Spring 2012	TMS Entertainment	19641	14842	0.04
13159	Kuromajo-san ga Tooru!!	6.49	Comedy Magic School SliceofLife	60	Spring 2012	Shin-Ei Animation	7933	1540	0.28
13161	Hagure Yuusha no Aesthetica	6.89	Action SuperPower Ecchi Fantasy	12	Summer 2012	Arms	323353	234071	0.05
13163	Furusato Saisei: Nippon no Mukashibanashi	7	Historical Kids Supernatural	258	Spring 2012	Tomason	9635	533	0.26
13165	Paboo & Mojies	-1	Kids	52	Spring 2012	Dongwoo A&E	228	43	0.48
13167	Zoobles!	-1	Kids	26	Spring 2011	Dongwoo A&E	242	47	0.47
13177	Little Charo	-1	SliceofLife	50	Spring 2008	Unknown	373	107	0.29
13179	Little Charo 2	-1	SliceofLife	50	Spring 2010	Unknown	288	85	0.32
13185	Juusen Battle Monsuno	6.31	Action Adventure	52	Fall 2012	Larx Entertainment	5356	2404	0.16
13201	Monster Farm: Legend e no Michi	6.75	Action Adventure Comedy Fantasy	25	Spring 2000	TMS Entertainment	13008	9854	0.04
13203	Lupin the Third: Mine Fujiko to Iu Onna	7.78	Action Adventure Comedy Ecchi Samurai Seinen	13	Spring 2012	TMS Entertainment	47841	21715	0.06
13207	Himitsukessha Taka no Tsume Gaiden: Mukashi no Yoshida-kun	-1	Comedy Historical Parody	9	Winter 2012	Unknown	384	144	0.32
13231	Metal Fight Beyblade Zero G	6.09	Adventure Sports	38	Spring 2012	Tatsunoko Production, SynergySP	9898	6809	0.09
13261	Inazuma Eleven Go: Chrono Stone	7.17	Sports SuperPower Shounen	51	Spring 2012	OLM	38045	30354	0.04
13307	Shounen Ninja Kaze no Fujimaru	-1	Action Adventure Samurai Shounen	65	Summer 1964	Toei Animation	661	144	0.29
13331	Jormungand: Perfect Order	7.94	Action Adventure Seinen	12	Fall 2012	White Fox	151317	110540	0.02
13333	Tari Tari	7.32	Music SliceofLife School	13	Summer 2012	P.A. Works	133495	61813	0.07
13349	Chouyaku Hyakuninisshu: Uta Koi.	7.48	Comedy Historical Romance Josei	13	Summer 2012	TYO Animations	24468	8316	0.13
19257	Meganebu!	6.29	Comedy School SliceofLife	12	Fall 2013	Studio Deen	28205	9785	0.32
13367	Kono Naka ni Hitori, Imouto ga Iru!	6.6	Comedy Ecchi Harem Mystery Romance School	12	Summer 2012	Studio Gokumi	172349	112167	0.05
13377	Recorder to Randoseru Re♪	6.87	Comedy School Seinen SliceofLife	13	Spring 2012	Seven	24723	19892	0.02
13409	Moyashimon Returns	7.22	Comedy Supernatural School Seinen	11	Summer 2012	Telecom Animation Film, Shirogumi	22284	14568	0.05
13431	Himitsukessha Taka no Tsume NEO	-1	Comedy Parody SuperPower	38	Spring 2012	DLE	423	125	0.33
13455	Zumomo to Nupepe	-1	Comedy	32	Spring 2012	Egg	282	62	0.45
13457	Tomodachi 8-nin	-1	Comedy Kids	398	Spring 2011	Egg	256	20	0.57
13459	Ribbon-chan	-1	Comedy	24	Spring 2012	Unknown	204	49	0.45
13463	Panda no Taputapu	-1	Kids	431	Spring 2012	Kachidoki Studio	279	27	0.48
13465	Little Charo: Touhoku-hen	-1	Kids	12	Spring 2012	Unknown	225	55	0.4
13503	Cofun Gal no Coffy (TV)	-1	Comedy Parody	11	Spring 2006	Unknown	246	82	0.34
13505	Cofun Gal no Coffy Campus Life	-1	Comedy	11	Fall 2009	Unknown	235	70	0.39
13535	Binbougami ga!	7.73	Comedy Parody Shounen Supernatural	13	Summer 2012	Sunrise	195938	120400	0.04
13551	Shuukan Storyland	-1	SliceofLife Comedy Drama Seinen	56	Fall 1999	Satelight	446	86	0.28
13585	Natsuyuki Rendezvous	7.29	Supernatural Drama Romance Josei	11	Summer 2012	Doga Kobo	66716	34170	0.07
13599	Robotics;Notes	7.35	Sci-Fi Mystery Drama Mecha School	22	Fall 2012	Production I.G	157614	81365	0.07
13601	Psycho-Pass	8.38	Action Sci-Fi Police Psychological	22	Fall 2012	Production I.G	1211503	720340	0.04
13655	Little Busters!	7.52	SliceofLife Comedy Supernatural Drama School	26	Fall 2012	J.C.Staff	236200	106133	0.1
13659	Ore no Imouto ga Konnani Kawaii Wake ga Nai.	7.05	Comedy Romance SliceofLife	13	Spring 2013	A-1 Pictures	359102	288292	0.03
13663	To LOVE-Ru Darkness	7.51	Comedy Ecchi Harem Romance School Sci-Fi Shounen	12	Fall 2012	Xebec	284954	215176	0.02
13679	Tottoko Hamtarou Hai!	6.65	Kids Adventure	77	Spring 2006	Unknown	3584	2329	0.07
13759	Sakura-sou no Pet na Kanojo	8.19	SliceofLife Comedy Drama Romance School	24	Fall 2012	J.C.Staff	920871	643241	0.03
13769	Kamen no Ninja Akakage	-1	Action Fantasy	23	Fall 1987	Toei Animation	596	178	0.2
14045	Mangirl!	5.86	Comedy SliceofLife	13	Winter 2013	Doga Kobo	27920	15087	0.1
14075	Zetsuen no Tempest	7.99	Action Mystery Psychological Drama Magic Fantasy Shounen	24	Fall 2012	Bones	482114	269385	0.06
14093	Pokemon Best Wishes! Season 2	6.41	Action Adventure Comedy Fantasy Kids	24	Summer 2012	OLM	46326	37539	0.03
14131	Girls & Panzer	7.55	Action Sports Military School	12	Fall 2012	Actas	225650	137852	0.05
14199	Oniichan dakedo Ai sae Areba Kankeinai yo ne!	6.53	Comedy Ecchi Harem Romance School	12	Fall 2012	SILVER LINK.	236709	143557	0.07
14211	Instant History	-1	Historical	312	Spring 1961	Unknown	503	138	0.36
14213	Otogi Manga Calendar	-1	Historical	312	Summer 1962	Unknown	427	140	0.33
14227	Tonari no Kaibutsu-kun	7.55	SliceofLife Comedy Romance School Shoujo	13	Fall 2012	Brain's Base	762563	571939	0.03
14237	Busou Shinki	6.32	Action Sci-Fi SliceofLife Mecha	12	Fall 2012	8bit	33527	15105	0.18
14277	Chitose Get You!!	6.26	Comedy Romance School Seinen SliceofLife	26	Summer 2012	SILVER LINK.	17993	10165	0.14
14283	Vividred Operation	6.46	Action Sci-Fi Ecchi	12	Winter 2013	A-1 Pictures	60079	30037	0.14
14289	Sukitte Ii na yo.	7.49	Drama Romance School Shoujo	13	Fall 2012	Zexcs	475603	348399	0.03
14333	Tanken Driland	6.48	Adventure Fantasy	37	Summer 2012	Toei Animation	5485	843	0.36
14345	Btooom!	7.39	Action Sci-Fi Psychological Seinen	12	Fall 2012	Madhouse	678842	510409	0.03
14355	Yama no Susume	6.82	Adventure SliceofLife Comedy	12	Winter 2013	8bit	61181	28399	0.05
14397	Chihayafuru 2	8.43	Drama Game Josei School SliceofLife Sports	25	Winter 2013	Madhouse	183624	127828	0.02
14467	K	7.51	Action Mystery SuperPower Supernatural	13	Fall 2012	GoHands	597674	400631	0.05
14511	Minami-ke Tadaima	7.69	Comedy School SliceofLife	13	Winter 2013	feel.	49160	29696	0.03
14513	Magi: The Labyrinth of Magic	8.07	Action Adventure Fantasy Magic Shounen	25	Fall 2012	A-1 Pictures	775824	535193	0.04
14515	Sasami-san@Ganbaranai	6.68	Comedy Romance Supernatural	12	Winter 2013	Shaft	73763	28637	0.17
14527	Medaka Box Abnormal	7.46	Action Comedy Ecchi MartialArts School Shounen SuperPower	12	Fall 2012	Gainax, Asahi Production	117766	84653	0.02
14563	Maji de Otaku na English! Ribbon-chan: Eigo de Tatakau Mahou Shoujo	5.27	Comedy Magic	12	Summer 2012	AIC Frontier	4774	1579	0.2
14623	Chikyuu SOS Sore Ike Kororin	-1	Action Comedy Kids Sci-Fi	26	Spring 1992	Gallop	225	64	0.37
14645	Hiiro no Kakera Dai Ni Shou	7.23	Fantasy Romance Shoujo Supernatural	13	Fall 2012	Studio Deen	44296	30329	0.05
14653	Hayate no Gotoku! Can't Take My Eyes Off You	7.05	Comedy Harem Parody Shounen	12	Fall 2012	Manglobe	46733	30556	0.06
14693	Yurumates 3D Plus	6.4	Comedy Seinen SliceofLife	13	Summer 2012	C2C	4325	3170	0.03
14713	Kamisama Hajimemashita	8.04	Comedy Demons Supernatural Romance Fantasy Shoujo	13	Fall 2012	TMS Entertainment	435195	304918	0.03
14719	JoJo no Kimyou na Bouken (TV)	8.06	Action Adventure Supernatural Vampire Shounen	26	Fall 2012	David Production	965386	714621	0.03
14741	Chuunibyou demo Koi ga Shitai!	7.77	SliceofLife Comedy Drama Romance School	12	Fall 2012	Kyoto Animation	955524	691636	0.03
14749	Ore no Kanojo to Osananajimi ga Shuraba Sugiru	7.06	Comedy Harem Romance School	13	Winter 2013	A-1 Pictures	399161	269459	0.04
14765	Ixion Saga DT	7.21	Action Comedy Fantasy	25	Fall 2012	Brain's Base	94524	46402	0.12
14811	GJ-bu	7.35	Comedy School SliceofLife	12	Winter 2013	Doga Kobo	147283	84933	0.05
14813	Yahari Ore no Seishun Love Comedy wa Machigatteiru.	8.07	SliceofLife Comedy Drama Romance School	13	Spring 2013	Brain's Base	971934	726380	0.02
14827	D.C.III: Da Capo III	6.58	Ecchi Romance School Drama	13	Winter 2013	Kazami Gakuen Koushiki Douga-bu	25514	13528	0.07
14829	Fate/kaleid liner Prisma☆Illya	7.11	Action Comedy Magic Fantasy	10	Summer 2013	SILVER LINK.	213640	120976	0.06
14833	Maoyuu Maou Yuusha	7.31	Adventure Demons Romance Fantasy	12	Winter 2013	Arms	355361	212430	0.06
14913	Battle Spirits: Sword Eyes	6.58	Game Adventure Fantasy	29	Fall 2012	Sunrise	1980	741	0.14
14921	RDG: Red Data Girl	6.58	Fantasy Magic	12	Spring 2013	P.A. Works	96718	52541	0.12
14941	AKB0048: Next Stage	7.66	Music Sci-Fi	13	Winter 2013	Satelight	32155	23550	0.03
14967	Boku wa Tomodachi ga Sukunai Next	7.4	Harem SliceofLife Comedy Romance School	12	Winter 2013	AIC Build	424995	348392	0.01
14989	Chousoku Henkei Gyrozetter	6.42	Action Cars Mecha Shounen	51	Fall 2012	A-1 Pictures	4609	985	0.31
15043	Haitai Nanafa	6	Comedy Supernatural	13	Fall 2012	Passione	9237	3898	0.09
15045	Litchi DE Hikari Club	5.22	Comedy Drama Horror Psychological Romance	8	Fall 2012	Kachidoki Studio	10305	5883	0.14
15051	Love Live! School Idol Project	7.44	Music SliceofLife School	13	Winter 2013	Sunrise	355325	228525	0.05
15059	Initial D Fifth Stage	8.08	Action Cars Sports Drama Seinen	14	Fall 2012	SynergySP	91317	65899	0.01
15061	Aikatsu!	7.38	Music School Shoujo SliceofLife	178	Fall 2012	Sunrise, Bandai Namco Pictures	33059	8078	0.19
15069	Robin-kun to 100 nin no Otomodachi Season 2	-1	Kids	13	Summer 2012	Unknown	167	47	0.43
15085	Amnesia	6.07	Harem Mystery Romance Fantasy Josei	12	Winter 2013	Brain's Base	237307	155335	0.11
15109	Cuticle Tantei Inaba	7.3	Action Mystery Comedy Supernatural Shounen	12	Winter 2013	Zexcs	84572	39448	0.12
15119	Senran Kagura	6.33	Action Comedy Ecchi School	12	Winter 2013	Artland	109324	42317	0.13
15125	Teekyuu	6.61	Comedy School Shounen Sports	12	Fall 2012	MAPPA	54606	30036	0.05
15225	Hentai Ouji to Warawanai Neko.	7.24	Harem Comedy Supernatural Romance School	12	Spring 2013	J.C.Staff	371534	257556	0.04
15313	Wooser no Sono Higurashi	6.23	SliceofLife Comedy Fantasy	12	Fall 2012	SANZIGEN	10624	6330	0.09
15315	Mondaiji-tachi ga Isekai kara Kuru Sou Desu yo?	7.56	Action Comedy Fantasy Supernatural	10	Winter 2013	Diomedéa	463838	332808	0.03
15377	Hyakka Ryouran: Samurai Bride	6.77	Action Ecchi Comedy Harem Samurai School	12	Spring 2013	Arms	83664	51340	0.06
15379	Kotoura-san	7.23	Comedy Drama Romance School	12	Winter 2013	AIC Classic	266724	178736	0.05
15417	Gintama': Enchousen	9.04	Action Comedy Historical Parody Samurai Sci-Fi Shounen	13	Fall 2012	Sunrise	222819	143353	0.01
15451	High School DxD New	7.54	Action Harem Comedy Demons Romance Ecchi School	12	Summer 2013	TNK	668482	585660	0.02
15479	Hey Yo Yorang	-1	Adventure Comedy Fantasy Kids Magic	26	Summer 2003	Unknown	322	87	0.27
15489	Yu☆Gi☆Oh! Zexal Second	6.85	Action Game Fantasy Shounen	73	Fall 2012	Gallop	27514	17955	0.06
15545	Oshiri Kajiri Mushi (TV)	5.1	Comedy Kids	20	Fall 2012	Kinema Citrus	1223	528	0.29
15547	Cross Fight B-Daman eS	6.36	Game Kids	52	Fall 2012	SynergySP	2143	1314	0.09
15565	Maken-Ki! Two	6.19	Action Harem SuperPower Ecchi MartialArts School	10	Winter 2014	Xebec	113798	76130	0.05
15579	Shinkai Densetsu Meremanoid	-1	Adventure Fantasy	24	Fall 1997	Triangle Staff	570	75	0.32
15583	Date A Live	7.22	Sci-Fi Harem Comedy Romance Mecha School	12	Spring 2013	AIC PLUS+	725237	541505	0.04
15605	Brothers Conflict	6.13	Harem Romance Shoujo	12	Summer 2013	Brain's Base	143313	101512	0.09
15611	Cardfight!! Vanguard: Link Joker-hen	7.17	Action Adventure Demons Game Shounen	59	Winter 2013	TMS Entertainment	17011	11595	0.06
15613	Hakkenden: Touhou Hakken Ibun	7.44	Action Demons Supernatural Fantasy Shoujo	13	Winter 2013	Studio Deen	96288	50274	0.08
15651	Phi Brain: Kami no Puzzle - Shukuteki! Rätsel-hen	7.28	Action Game Mystery Shounen	25	Fall 2013	Sunrise	31633	16537	0.06
15689	Nekomonogatari: Kuro	7.98	Comedy Supernatural Romance Ecchi	4	Fall 2012	Shaft	421717	336635	0.01
15699	Haiyore! Nyaruko-san W	7.28	Sci-Fi Comedy Parody	12	Spring 2013	Xebec	147938	104404	0.03
15731	Tamayura: More Aggressive	7.55	Comedy Drama SliceofLife	12	Summer 2013	TYO Animations	16863	7720	0.06
15749	Chiisana Ojisan	5.9	SliceofLife	30	Unknown	Kachidoki Studio	665	98	0.29
15751	Senyuu.	7.35	Action Comedy Parody Fantasy Shounen	13	Winter 2013	Ordet, LIDENFILMS	101638	60351	0.04
15787	Backstage Idol Story	-1	Music	8	Fall 2012	Unknown	570	101	0.34
15793	Senki Zesshou Symphogear G	7.46	Action Music Sci-Fi	13	Summer 2013	Satelight	49269	30970	0.03
15795	Beast Saga	5.67	Action Sci-Fi Kids Shounen	38	Winter 2013	SynergySP	1329	357	0.32
15809	Hataraku Maou-sama!	7.83	Comedy Demons Supernatural Romance Fantasy	13	Spring 2013	White Fox	1061216	839612	0.02
15863	Ginga Kikoutai Majestic Prince	7.36	Action Mecha School Sci-Fi Seinen Space	24	Spring 2013	Doga Kobo, Orange	49347	25316	0.12
15865	Tamagotchi! Yume Kira Dream	-1	Comedy Kids	49	Fall 2012	OLM	452	112	0.34
15873	Pyun Pyun Maru	-1	Comedy MartialArts	26	Summer 1967	Toei Animation	294	71	0.44
15875	Shin Kyojin no Hoshi	-1	Sports	52	Fall 1977	Unknown	478	139	0.33
15883	Fantasista Doll	6.16	Sci-Fi Magic Fantasy	12	Summer 2013	Hoods Entertainment, Production IMS	24344	10842	0.2
15897	Picchipichi Shizuku-chan	-1	Comedy Kids	52	Fall 2012	Unknown	225	56	0.39
15905	Qin Shi Ming Yue: Wanli Changcheng	7.17	Action Historical MartialArts Fantasy	37	Unknown	Sparkly Key Animation Studio	1044	308	0.18
15911	Yuyushiki	7.38	SliceofLife Comedy School Seinen	12	Spring 2013	Kinema Citrus	88623	42054	0.07
15913	Happy☆Lucky Bikkuriman	-1	Adventure Comedy Fantasy Kids	46	Fall 2006	Toei Animation	331	112	0.29
15915	Magical Hat	-1	Adventure Comedy Fantasy Kids	33	Fall 1989	Studio Pierrot	355	81	0.34
15957	Dokachin	-1	Comedy Kids	26	Fall 1968	Tatsunoko Production	229	60	0.44
16005	Zettai Karen Children: The Unlimited - Hyoubu Kyousuke	7.53	Action SuperPower Supernatural Shounen	12	Winter 2013	Manglobe	118590	66029	0.04
16009	Kamisama no Inai Nichiyoubi	7.35	Adventure Mystery Fantasy	12	Summer 2013	Madhouse	190201	101189	0.09
16011	Tokyo Ravens	7.53	Action Comedy Supernatural Magic Romance School	24	Fall 2013	8bit	375763	226432	0.06
16027	Greek Roman Sinhwa: Olympus Guardian	-1	Adventure Fantasy Historical	39	Winter 2003	Unknown	822	169	0.18
16035	Karneval (TV)	7.14	Action Fantasy Josei Mystery Sci-Fi	13	Spring 2013	Manglobe	178536	98473	0.09
16049	Toaru Kagaku no Railgun S	8.06	Action Sci-Fi SuperPower	24	Spring 2013	J.C.Staff	292223	199391	0.02
16051	Ro-Kyu-Bu! SS	7.1	Comedy Ecchi School Sports	12	Summer 2013	Barnum Studio, Project No.9	32693	21505	0.05
16067	Nagi no Asu kara	8.09	Drama Fantasy Romance	26	Fall 2013	P.A. Works	466251	235756	0.08
16123	Saki Zenkoku-hen	7.42	Game SliceofLife School	13	Winter 2014	Studio Gokumi	28969	17548	0.03
16131	Machine Robo: Butchigiri Battle Hackers	-1	Action Mecha Sci-Fi	31	Summer 1987	Unknown	535	151	0.23
16157	Choujigen Game Neptune The Animation	6.99	Action Comedy Fantasy Parody Sci-Fi Supernatural	12	Summer 2013	David Production	132095	64373	0.09
16159	Mirai Kara Kita Shounen Super Jetter	-1	Action Comedy SuperPower Sci-Fi	52	Winter 1965	Unknown	353	98	0.37
16169	Choboraunyopomi Gekijou Ai Mai Mii	5.84	Comedy SliceofLife	13	Winter 2013	Seven	26459	14899	0.09
16201	Aku no Hana	7.15	Psychological Drama Romance School Shounen	13	Spring 2013	Zexcs	163372	67749	0.16
16211	Bakumatsu Gijinden Roman	6.16	Historical Fantasy	12	Winter 2013	TMS Entertainment	9919	4261	0.25
16241	Yondemasu yo, Azazel-san. Z	7.58	Comedy Demons Supernatural	13	Spring 2013	Production I.G	31704	23641	0.02
16303	Chikkun Takkun	-1	Comedy Sci-Fi	23	Spring 1984	Studio Pierrot, Gallop	410	101	0.31
16317	Ishida to Asakura	5.91	Comedy School Seinen	12	Winter 2013	Unknown	12674	9047	0.09
16347	Usavich V	6.33	Comedy	13	Winter 2013	Kanaban Graphics	1727	1287	0.05
16353	Love Lab	7.36	Comedy Romance School	13	Summer 2013	Doga Kobo	159805	78255	0.07
16355	Dansai Bunri no Crime Edge	6.72	Action Romance Fantasy Seinen	13	Spring 2013	Studio Gokumi	95547	51458	0.12
16385	Dog Days''	6.97	Action Adventure Magic Fantasy	12	Winter 2015	Seven Arcs Pictures	62332	40200	0.04
16393	Norakuro-kun	-1	Comedy Mystery	50	Fall 1987	Studio Pierrot	363	80	0.36
16397	Photokano	6.22	Ecchi Romance School	13	Spring 2013	Madhouse	93558	45399	0.14
16405	Boku no Imouto wa "Osaka Okan"	5.79	Comedy	12	Winter 2013	Charaction	17597	10276	0.13
16417	Tamako Market	7.38	SliceofLife Comedy	12	Winter 2013	Kyoto Animation	296679	153961	0.05
16419	Dokidoki! Precure	6.59	Action Magic Fantasy Shoujo	49	Winter 2013	Toei Animation	17135	8677	0.1
16454	Surf Side High-School	-1	Comedy Ecchi School	20	Summer 1999	Magic Bus	419	84	0.33
16486	Shin Kyojin no Hoshi II	-1	Sports	23	Spring 1979	Unknown	406	128	0.33
16498	Shingeki no Kyojin	8.48	Action Military Mystery SuperPower Drama Fantasy Shounen	25	Spring 2013	Wit Studio	2531397	2182587	0.02
16512	Devil Survivor 2 The Animation	6.89	Action Demons Supernatural	13	Spring 2013	Bridge	148907	87019	0.11
16518	Arata Kangatari	6.5	Adventure Fantasy Shounen	12	Spring 2013	Satelight	60937	36726	0.1
16524	Suisei no Gargantia	7.5	Action Sci-Fi Adventure Mecha	13	Spring 2013	Production I.G	283656	195150	0.04
16526	Ranpou	-1	Parody Comedy School	21	Spring 1984	Unknown	268	60	0.42
16530	Ojamanga Yamada-kun	-1	Comedy SliceofLife	103	Fall 1980	Unknown	546	164	0.28
16592	Danganronpa: Kibou no Gakuen to Zetsubou no Koukousei The Animation	7.29	Mystery Horror Psychological School	13	Summer 2013	Lerche	689579	515794	0.03
16650	Pro Golfer Saru (TV)	-1	Sports Kids	143	Spring 1985	Shin-Ei Animation	304	95	0.34
16668	Kakumeiki Valvrave	7.17	Action Military Space Mecha	12	Spring 2013	Sunrise	143653	87537	0.06
16696	2020 Nyeon Ujuui Wonder Kiddy	-1	Sci-Fi Space	13	Unknown	Unknown	397	148	0.3
16706	Kami nomi zo Shiru Sekai: Megami-hen	8.08	Harem Comedy Supernatural Romance Shounen	12	Summer 2013	Manglobe	274320	212006	0.02
16726	gdgd Fairies 2	6.94	Comedy Fantasy	12	Winter 2013	Unknown	2110	1362	0.09
16732	Kiniro Mosaic	7.26	SliceofLife Comedy School Seinen	12	Summer 2013	Studio Gokumi	153668	69795	0.08
16742	Watashi ga Motenai no wa Dou Kangaetemo Omaera ga Warui!	7.04	SliceofLife Comedy School	12	Summer 2013	SILVER LINK.	510608	320109	0.09
16890	Makai Ouji: Devils and Realist	7.06	Mystery Comedy Historical Demons Supernatural Fantasy School Josei	12	Summer 2013	Doga Kobo	96785	48726	0.1
16894	Kuroko no Basket 2nd Season	8.28	Comedy Sports School Shounen	25	Fall 2013	Production I.G	588404	497022	0.01
16906	Line Offline: Salaryman	6.59	Comedy	114	Winter 2013	Shogakukan Music & Digital Entertainment	1701	508	0.25
16908	Ganbare! Oden-kun	-1	Comedy	102	Winter 2013	Kachidoki Studio	250	59	0.44
16910	Namiuchigiwa no Muromi-san	6.97	SliceofLife Comedy Fantasy Shounen	13	Spring 2013	Tatsunoko Production	36687	20744	0.07
16918	Gin no Saji	8.11	Comedy School Shounen SliceofLife	11	Summer 2013	A-1 Pictures	231006	131106	0.04
16982	Hayate no Gotoku! Cuties	7.05	Comedy Harem Parody Romance Shounen	12	Spring 2013	Manglobe	37759	23772	0.04
17074	Monogatari Series: Second Season	8.78	Mystery Comedy Supernatural Romance Vampire	26	Summer 2013	Shaft	509401	336572	0.01
17080	Soukyuu no Fafner: Dead Aggressor - Exodus	7.39	Action Drama Mecha Military Sci-Fi	13	Winter 2015	Xebec, I.Gzwei	18818	8308	0.08
17082	Aiura	6.69	Comedy School Shounen SliceofLife	12	Spring 2013	LIDENFILMS	69699	41863	0.04
17086	Agigongryong Doolie (1988)	-1	Kids	7	Spring 1988	Unknown	325	139	0.33
17088	Agigongryong Doolie	6.25	Adventure Kids	6	Fall 1987	Unknown	406	188	0.29
17090	Agigongryong Doolie (2009)	-1	Adventure Kids	26	Winter 2009	Unknown	320	125	0.37
17092	Dallyeola Hani	6.67	Sports	13	Summer 1988	Daewon Media	601	235	0.22
17102	Lolling Seutajeu	-1	Kids Sports	26	Spring 2009	Unknown	214	56	0.4
17106	Wala! Pyeon-uijeom The Animation	-1	SliceofLife	24	Fall 2009	Unknown	231	61	0.39
17115	Pokemon Best Wishes! Season 2: Episode N	6.68	Action Adventure Comedy Kids Fantasy	14	Winter 2013	OLM	31492	25041	0.02
19291	Pokemon XY	7.28	Action Adventure Comedy Fantasy Kids	93	Fall 2013	OLM	104814	75343	0.07
17127	Chokkyuu Hyoudai Robot Anime: Straight Title	5.85	Comedy Mecha	12	Winter 2013	Bouncy	2094	697	0.29
17141	Kara The Animation	5.45	Action	5	Winter 2013	Unknown	962	187	0.23
17147	Gakkatsu! 2nd Season	6.44	Comedy School	25	Winter 2013	Fanworks	1703	590	0.13
17211	Shouwa Ahozoushi Akanuke Ichiban!	-1	Comedy Shoujo	22	Fall 1985	Tatsunoko Production	700	151	0.26
17247	Machine-Doll wa Kizutsukanai	7.15	Action Ecchi Fantasy School	12	Fall 2013	Lerche	264089	174310	0.05
17249	Pretty Rhythm: Rainbow Live	7.52	SliceofLife Sports Music Shoujo	51	Spring 2013	Tatsunoko Production, Dongwoo A&E	9951	4717	0.09
17265	Log Horizon	8	Action Game Adventure Magic Fantasy	25	Fall 2013	Satelight	872925	571062	0.05
17267	Futari wa Milky Holmes	5.8	Mystery Comedy SuperPower	12	Summer 2013	J.C.Staff	9293	4637	0.12
17291	Jinzou Konchuu Kabutoborg VxV	6.17	Action Comedy Fantasy Game Shounen	52	Fall 2006	Unknown	545	188	0.23
17315	Shin Pro Golfer Saru	-1	Kids Sports	10	Spring 1988	Shin-Ei Animation	200	62	0.43
17353	Tenpou Suikoden Neo	5.23	Historical	5	Winter 2013	Kachidoki Studio	880	222	0.18
17389	Kingdom 2nd Season	8.39	Action Military Historical Seinen	39	Summer 2013	Studio Pierrot	79350	47556	0.02
17423	Pink Lady Monogatari: Eikou no Tenshi-tachi	-1	Music SliceofLife Drama	33	Fall 1978	Toei Animation	346	62	0.38
17457	Chingou Muchabee	-1	Adventure Comedy	51	Winter 1971	Unknown	254	62	0.47
17467	Otoko Ippiki Gaki Daishou	-1	Action Drama Shounen	156	Fall 1969	Unknown	687	109	0.28
17487	Tantei Shounen Kageman	-1	Comedy Mystery	39	Spring 2001	Studio Hibari	218	45	0.37
17497	Jewelpet Happiness	6.7	Fantasy Magic Shoujo	52	Spring 2013	Studio Comet	2557	861	0.15
17505	Mushibugyou	7.35	Action Historical SuperPower Ecchi MartialArts Samurai Fantasy Shounen	26	Spring 2013	Seven Arcs Pictures	73702	36803	0.09
17513	Diabolik Lovers	5.3	Harem School Shoujo Vampire	12	Fall 2013	Zexcs	247790	177270	0.11
17521	Ookami Shounen Ken	-1	Adventure Kids	86	Fall 1963	Toei Animation	432	113	0.34
17549	Non Non Biyori	7.95	Comedy School Seinen SliceofLife	12	Fall 2013	SILVER LINK.	295922	150764	0.04
17599	Konpora Kid	-1	Comedy Kids Sci-Fi	26	Summer 1985	Toei Animation	189	45	0.43
17601	Non-tan to Issho	-1	Kids	263	Fall 1992	Studio Pierrot	272	117	0.33
17613	Poka Poka Mori no Rascal	-1	Kids	52	Spring 2006	Nippon Animation	264	83	0.34
17619	Souya Monogatari	-1	Adventure Drama Historical	21	Winter 1984	Unknown	333	73	0.34
17623	Futago no Monchhichi	-1	Comedy Kids	130	Winter 1980	Unknown	238	75	0.41
17624	Omakase Scrappers	-1	Adventure Comedy Sci-Fi	39	Spring 1994	JCF	243	71	0.33
17651	Genei wo Kakeru Taiyou	6.42	Magic	13	Summer 2013	AIC	47877	21477	0.15
17667	Harisu no Kaze	-1	Comedy School	70	Spring 1966	Unknown	369	86	0.34
17669	Kunimatsu-sama no Otoridai	-1	Comedy School Sports	46	Fall 1971	Unknown	329	77	0.43
17671	Animal 1	-1	Sports	27	Spring 1968	Unknown	429	113	0.36
17681	Zettai Bouei Leviathan	6.31	Fantasy Magic Comedy	13	Spring 2013	Gonzo	25216	12106	0.16
17687	Bemubemu Hunter Kotengu Tenmaru	-1	Adventure Fantasy	19	Spring 1983	Toei Animation	314	92	0.34
17703	Danchi Tomoo	-1	Comedy Seinen	78	Spring 2013	Unknown	819	103	0.41
17705	DD Hokuto no Ken (2013)	6.51	Parody Seinen	13	Spring 2013	Unknown	3253	1477	0.13
17707	Glass no Kamen Desu ga	5.56	Comedy Parody	3	Spring 2013	DLE	1220	351	0.21
17727	Haitai Nanafa 2nd Season	5.98	Comedy Supernatural	13	Spring 2013	Passione	3304	1485	0.06
17729	Grisaia no Kajitsu	7.55	Drama Harem Psychological Romance School	13	Fall 2014	8bit	453783	310342	0.04
17731	Ketsuekigata-kun!	6.59	Comedy	12	Spring 2013	feel., Assez Finaud Fabric	9507	5473	0.1
17733	Dibetagurashi: Ahiru no Seikatsu	5.87	Comedy SliceofLife	39	Spring 2013	Unknown	833	133	0.33
17741	Kimi no Iru Machi	6.94	SliceofLife Drama Romance Shounen	12	Summer 2013	Gonzo	123213	66188	0.07
17777	Saikin, Imouto no Yousu ga Chotto Okashiinda ga.	6.27	Comedy Ecchi Romance Shounen Supernatural	12	Winter 2014	Project No.9	136125	82423	0.08
17821	Stella Jogakuin Koutou-ka C³-bu	6.54	Military School Sports	13	Summer 2013	Gainax	49175	23303	0.13
17827	Daitoshokan no Hitsujikai	6.93	Harem Romance School	12	Fall 2014	Hoods Entertainment, Felix Film	105260	58388	0.07
17831	Inu to Hasami wa Tsukaiyou	6.58	Comedy Supernatural	12	Summer 2013	Gonzo	115924	71345	0.1
17849	Sparrow's Hotel	5.47	Comedy	12	Spring 2013	Hotline	9019	5766	0.12
17873	Pokemon Best Wishes! Season 2: Decolora Adventure	6.3	Action Adventure Comedy Kids Fantasy	20	Spring 2013	OLM	29381	23313	0.02
17893	Cheonbangjichuk Hani	-1	Sports Comedy School Drama	13	Unknown	Daewon Media	329	151	0.26
17895	Golden Time	7.78	Comedy Drama Romance	24	Fall 2013	J.C.Staff	688649	442612	0.06
17909	Uchouten Kazoku	7.88	SliceofLife Comedy Demons Drama Fantasy	13	Summer 2013	P.A. Works	137249	54812	0.07
17917	Danball Senki Wars	7.08	Action Kids Mecha	37	Spring 2013	OLM	3680	1885	0.1
17919	Houkago no Pleiades (TV)	6.72	Magic Space	12	Spring 2015	Gainax	30955	12763	0.17
17969	Tanken Driland: 1000-nen no Mahou	6.03	Adventure Fantasy	51	Spring 2013	Toei Animation	1100	196	0.25
18001	Freezing Vibration	6.82	Action Military Sci-Fi Harem Drama Romance Ecchi MartialArts Seinen	12	Fall 2013	A.C.G.T.	138170	103200	0.04
18005	Forza! Hidemaru	-1	Sports	26	Spring 2002	Unknown	303	108	0.3
18007	Dalam-iwa Goseumdochi	-1	Military Historical	32	Unknown	Unknown	450	33	0.41
18041	Rozen Maiden (2013)	7.35	Action Comedy Drama Magic Seinen	13	Summer 2013	Studio Deen	66365	37540	0.07
18055	Hakkenden: Touhou Hakken Ibun 2nd Season	7.66	Action Demons Supernatural Fantasy Shoujo	13	Summer 2013	Studio Deen	53592	36232	0.02
18095	Nourin	6.82	Comedy Parody Romance Ecchi School	12	Winter 2014	SILVER LINK.	148476	80606	0.08
18097	Inazuma Eleven Go: Galaxy	6.65	Shounen Sports SuperPower	43	Spring 2013	OLM	31602	23924	0.05
18099	Recorder to Randoseru Mi☆	6.67	Comedy School Seinen SliceofLife	12	Summer 2013	Seven	18673	14228	0.02
18115	Magi: The Kingdom of Magic	8.28	Action Adventure Magic Fantasy Shounen	25	Fall 2013	A-1 Pictures	639860	463350	0.02
18119	Servant x Service	7.68	Comedy Seinen SliceofLife	13	Summer 2013	A-1 Pictures	170993	97307	0.05
18121	Teekyuu 2	6.75	Comedy School Shounen Sports	12	Summer 2013	MAPPA	26367	20877	0.02
18133	Ikeike! Momon-chan	5.45	Comedy	15	Fall 2012	Unknown	692	439	0.13
18137	Train Heroes	-1	Kids	26	Spring 2013	Unknown	333	62	0.51
18139	Tonari no Seki-kun	7.58	Comedy School Seinen	21	Winter 2014	Shin-Ei Animation	175478	103802	0.05
18153	Kyoukai no Kanata	7.78	SliceofLife Supernatural Fantasy	12	Fall 2013	Kyoto Animation	848484	531679	0.04
18155	Line Town	-1	Comedy Kids	50	Spring 2013	Unknown	659	141	0.29
18179	Yowamushi Pedal	8	Comedy Sports Drama Shounen	38	Fall 2013	TMS Entertainment	181339	112580	0.06
18191	Boku wa Ou-sama (TV)	-1	Kids	12	Spring 2013	Graphinica	292	79	0.36
18195	Little Busters!: Refrain	8.23	SliceofLife Comedy Supernatural Drama Romance School	13	Fall 2013	J.C.Staff	133750	82179	0.03
18205	World Fool News (TV)	5.96	SliceofLife Comedy	12	Spring 2014	Unknown	1915	905	0.21
18227	Bakujuu Gasshin Ziguru Hazeru	-1	Action Mecha	6	Spring 2013	Production Reed	440	88	0.39
18229	Gatchaman Crowds	7.33	Sci-Fi Adventure	12	Summer 2013	Tatsunoko Production	163259	77447	0.1
18241	Himitsukessha Taka no Tsume MAX	-1	Comedy Parody SuperPower	38	Spring 2013	DLE	376	115	0.36
18245	White Album 2	7.71	Drama Music Romance SliceofLife	13	Fall 2013	Satelight	191370	106075	0.04
18247	IS: Infinite Stratos 2	6.55	Action Sci-Fi Harem Comedy Ecchi Mecha	12	Fall 2013	8bit	303912	242867	0.04
18277	Strike the Blood	7.14	Action Harem Supernatural Ecchi Vampire Fantasy School	24	Fall 2013	SILVER LINK., Connect	499734	321823	0.07
18295	Kakumeiki Valvrave 2nd Season	7.3	Action Space Mecha	12	Fall 2013	Sunrise	81652	62074	0.03
18365	Mazinger ZIP!	5.62	Comedy Mecha	237	Spring 2013	Kate Arrow	753	273	0.23
18391	Mini Van	6.9	Game SliceofLife Comedy Parody	37	Spring 2013	DLE	1645	853	0.1
18411	Gingitsune	7.18	Seinen SliceofLife Supernatural	12	Fall 2013	Diomedéa	49508	25995	0.09
18447	Spheres	-1	Action Fantasy SuperPower	26	Winter 2003	Unknown	495	113	0.23
18465	Genshiken Nidaime	7.46	SliceofLife Comedy Parody	13	Summer 2013	Production I.G	44413	25537	0.05
18469	Odoriko Clinoppe	-1	Comedy SliceofLife	26	Spring 2013	Unknown	217	44	0.44
18495	Kitakubu Katsudou Kiroku	6.78	Comedy School SliceofLife	12	Summer 2013	Nomad	42819	16915	0.18
18497	Yozakura Quartet: Hana no Uta	7.5	Action Comedy SuperPower Supernatural Magic Shounen	13	Fall 2013	Tatsunoko Production	103092	42552	0.06
18507	Free!	7.39	SliceofLife Comedy Sports Drama School	12	Summer 2013	Kyoto Animation, Animation Do	585161	424112	0.06
18523	Senyuu. 2	7.48	Action Comedy Fantasy Parody Shounen	13	Summer 2013	Ordet, LIDENFILMS	50509	39772	0.02
18573	Noobow	-1	Kids SliceofLife	26	Fall 1995	Unknown	193	58	0.39
18635	Akane-chan	-1	SliceofLife Comedy School Shoujo	26	Spring 1968	Toei Animation	525	161	0.31
18671	Chuunibyou demo Koi ga Shitai! Ren	7.56	Comedy Drama Romance School SliceofLife	12	Winter 2014	Kyoto Animation	522620	402317	0.02
18677	Yuusha ni Narenakatta Ore wa Shibushibu Shuushoku wo Ketsui Shimashita.	6.9	Comedy Romance Ecchi Fantasy	12	Fall 2013	Asread	236819	144266	0.06
18679	Kill la Kill	8.11	Action Comedy SuperPower Ecchi School	24	Fall 2013	Trigger	1283021	838228	0.06
18689	Diamond no Ace	8.12	Comedy School Shounen Sports	75	Fall 2013	Production I.G, Madhouse	181230	95612	0.06
18767	BlazBlue: Alter Memory	6.13	Action Fantasy	12	Fall 2013	Hoods Entertainment, teamKG	78558	40137	0.15
18771	Gifuu Doudou!!: Kanetsugu to Keiji	6.48	Action Historical MartialArts Samurai Seinen	25	Summer 2013	Studio Deen	7089	2127	0.35
18819	Alice Tantei Kyoku	-1	Mystery Kids Fantasy	56	Spring 1995	Unknown	307	97	0.34
18845	Ninja Hattori-kun (2012)	6.44	Comedy	52	Spring 2012	Shin-Ei Animation	1494	982	0.12
18893	Aoki Hagane no Arpeggio: Ars Nova	7.4	Action Sci-Fi Seinen	12	Fall 2013	SANZIGEN	131641	77259	0.07
18897	Nisekoi	7.65	Harem Comedy Romance School Shounen	20	Winter 2014	Shaft	857824	614039	0.04
18937	Hakken Taiken Daisuki! Shimajirou	-1	Adventure Comedy Fantasy Kids Magic	101	Spring 2008	Unknown	264	97	0.34
18939	Shimajirou Hesoka	-1	Adventure Comedy Fantasy Kids Magic	101	Spring 2010	The Answer Studio	236	75	0.4
18941	Shimajirou no Wow!	-1	Adventure Comedy Fantasy Kids Magic	-1	Spring 2012	The Answer Studio	307	0	0.54
18983	Yuuto-kun ga Iku	-1	Kids Sports	26	Summer 2013	Shirogumi	217	47	0.46
19023	Wake Up, Girls!	6.99	Drama Music	12	Winter 2014	Tatsunoko Production, Ordet	46365	20284	0.11
19067	Future Card Buddyfight	6.73	Game	64	Winter 2014	Xebec, OLM	7943	3901	0.14
19087	Kaiketsu Tamagon	-1	Adventure Comedy Kids	195	Fall 1972	Tatsunoko Production	277	102	0.35
19111	Love Live! School Idol Project 2nd Season	7.81	Music School SliceofLife	13	Spring 2014	Sunrise	204825	155708	0.02
19117	Toaru Hikuushi e no Koiuta	7.19	Adventure Drama Romance	13	Winter 2014	TMS Entertainment	86007	45964	0.07
19121	Doctor Chichibuyama	-1	Ecchi Parody Seinen	2	Spring 1988	Production Reed	471	125	0.26
19151	Walkure Romanze	6.38	Action Ecchi Romance Harem School Sports	12	Fall 2013	8bit	108289	57064	0.12
19157	Youkai Watch	6.54	Comedy Demons Kids Supernatural	214	Winter 2014	OLM	19438	3918	0.27
19163	Date A Live II	7.24	Comedy Harem Mecha Romance School Sci-Fi	10	Spring 2014	Production IMS	445431	365282	0.02
19207	Maji de Otaku na English! Ribbon-chan: Eigo de Tatakau Mahou Shoujo - The TV	5.34	Comedy Magic	10	Summer 2013	AIC Frontier	2799	1136	0.12
19221	Ore no Nounai Sentakushi ga, Gakuen Love Comedy wo Zenryoku de Jama Shiteiru	7.26	Harem Comedy Romance School	10	Fall 2013	Diomedéa	333922	236811	0.03
19305	Nyuru Nyuru!! Kakusen-kun	-1	Comedy	25	Summer 2013	DLE	553	144	0.35
19311	Turuturutu Narongi	-1	Adventure Kids	52	Winter 2005	Unknown	183	46	0.41
19315	Pupa	3.41	Fantasy Horror Psychological	12	Winter 2014	Studio Deen	149948	93235	0.15
19319	Gundam Build Fighters	7.79	Action Sci-Fi Mecha	25	Fall 2013	Sunrise	59655	38640	0.05
19325	Kwaegeol Longman Narongi	-1	Adventure Kids	52	Winter 2006	Unknown	175	54	0.38
19363	Gin no Saji 2nd Season	8.29	Comedy School Shounen SliceofLife	11	Winter 2014	A-1 Pictures	120433	93780	0.01
19365	Samurai Flamenco	6.91	Action Comedy Parody SuperPower	22	Fall 2013	Manglobe	114702	45061	0.17
19367	Galilei Donna	6.44	Action Sci-Fi Adventure	11	Fall 2013	A-1 Pictures	49189	26025	0.15
19369	Outbreak Company	7.3	Harem Comedy Parody Fantasy	12	Fall 2013	feel.	281505	187402	0.04
19383	Yami Shibai	7.06	Dementia Horror Demons Supernatural	13	Summer 2013	ILCA	76957	44317	0.04
19429	Akuma no Riddle	6.64	Action School ShoujoAi	12	Spring 2014	Diomedéa	223133	138092	0.07
19445	Tetsujin 28-gou Gao!	-1	SliceofLife Mecha	151	Spring 2013	Eiken	339	65	0.5
19457	Green Saver	-1	Adventure Kids	26	Fall 2009	Unknown	194	61	0.33
19467	Revbahaf Wang-gug Jaegeon-soelgi	-1	Comedy Drama Shoujo	26	Spring 2007	Unknown	544	71	0.3
19501	Giga Tribe	-1	Comedy Parody Shounen SuperPower	39	Fall 2008	Unknown	298	70	0.32
19505	Kaizoku Ouji	-1	Adventure Shounen	31	Spring 1966	Toei Animation	357	85	0.38
19547	Beompeoking Jaepeo	-1	Action Cars	26	Unknown	Daewon Media	260	92	0.31
19585	Kobo-chan	6.55	Comedy Kids SliceofLife	63	Fall 1992	Eiken	365	135	0.27
19647	Hajime no Ippo: Rising	8.6	Comedy Sports Drama Shounen	25	Fall 2013	Madhouse, MAPPA	175315	129332	0.01
19681	Hustle Punch	-1	Comedy Kids Fantasy	26	Fall 1965	Toei Animation	429	90	0.36
19685	Kanojo ga Flag wo Oraretara	6.44	Comedy Harem Romance School	13	Spring 2014	Hoods Entertainment	153793	92849	0.1
19703	Kyousou Giga (TV)	7.78	Action Fantasy Supernatural	10	Fall 2013	Toei Animation	147410	52450	0.06
19755	Oshiri Kajiri Mushi (TV) 2nd Season	5.34	Comedy Kids	32	Fall 2013	Kinema Citrus	668	323	0.19
19769	Mahou Sensou	6.03	Action Fantasy Magic	12	Winter 2014	Madhouse	202335	124576	0.09
19775	Sidonia no Kishi	7.69	Action Mecha Sci-Fi Seinen Space	12	Spring 2014	Polygon Pictures	197189	120827	0.05
19815	No Game No Life	8.2	Game Adventure Comedy Supernatural Ecchi Fantasy	12	Spring 2014	Madhouse	1751054	1426896	0.02
19825	Saikyou Ginga Ultimate Zero: Battle Spirits	6.5	Game Adventure Space	49	Fall 2013	Sunrise	1420	493	0.19
19831	Ore wa Chokkaku	-1	Comedy	36	Winter 1991	Studio Pierrot	335	75	0.32
19839	Wei Qi Shao Nian 2	-1	Game Historical	26	Unknown	Unknown	251	67	0.33
19841	Super Seisyun Brothers	6.78	Comedy Josei SliceofLife	14	Fall 2013	AIC PLUS+	27895	17418	0.07
19843	Tamagotchi! Miracle Friends	-1	Comedy Fantasy Kids	29	Fall 2013	OLM	450	116	0.33
19855	Nobunagun	6.71	Action Sci-Fi SuperPower	13	Winter 2014	Bridge	59431	33485	0.16
19871	Gaist Crusher	5.86	Action Fantasy Supernatural	51	Fall 2013	Studio Pierrot	2020	319	0.31
19873	Marude Dameo	-1	Comedy Sci-Fi Shounen	47	Fall 1991	Studio Pierrot	263	68	0.35
19875	Robotan	-1	Comedy Kids	104	Fall 1966	Unknown	350	153	0.31
19877	Battle Spirits: Sword Eyes Gekitouden	6.77	Game Adventure Fantasy	21	Spring 2013	Sunrise	1375	580	0.12
19901	Donkikko	-1	Comedy Shounen	21	Fall 1967	Unknown	252	65	0.4
19919	Tesagure! Bukatsumono	6.75	Parody School SliceofLife	12	Fall 2013	Yaoyorozu	10574	2723	0.16
19947	Ikkyuu-san (1978)	-1	Action Sports School	26	Spring 1978	Nippon Animation	452	118	0.33
19959	Barbapapa (1977)	5.97	Comedy Kids Fantasy	48	Spring 1977	Topcraft	598	365	0.18
19961	Heisei Tensai Bakabon	-1	SliceofLife Comedy	46	Winter 1990	Studio Pierrot	521	180	0.28
19965	Ikinari Dagon	-1	Adventure Fantasy	12	Spring 1988	Nippon Animation	220	58	0.4
19981	Shisukon Ouji	-1	Adventure	14	Winter 1964	Unknown	249	61	0.49
19985	Uchuujin Pipi	-1	Kids	52	Spring 1965	Unknown	203	47	0.54
19987	Kaitou Pride	-1	Kids Adventure Comedy	105	Spring 1965	Unknown	224	56	0.42
19989	Tatakae! Osper	-1	Action Sci-Fi Shounen	52	Winter 1966	Unknown	289	66	0.45
19991	Tobidase! Bacchiri	-1	Comedy Kids Mystery	132	Fall 1966	Unknown	227	66	0.44
19993	Kaminari Boy Pikkari★bee	-1	Adventure Comedy Kids	54	Spring 1967	Unknown	205	57	0.45
19995	King Kong: 001/7 Tom Thumb	-1	Adventure Sci-Fi	26	Spring 1967	Toei Animation	298	69	0.47
19997	Fight Da!! Pyuta	-1	Action Comedy Sci-Fi Shounen	26	Spring 1968	Unknown	329	80	0.36
19999	Sobakasu Pucchi	-1	Adventure Comedy Kids	162	Spring 1969	Unknown	223	67	0.46
20001	Mouretsu Atarou	-1	Comedy Kids SliceofLife	90	Spring 1969	Toei Animation	283	61	0.45
20003	Roppou Yabure-kun	-1	SliceofLife	110	Spring 1969	Unknown	267	68	0.45
20005	Pinch to Punch	-1	Comedy	156	Fall 1969	Unknown	258	78	0.4
20009	Doubutsu Mura Monogatari	-1	Kids	100	Spring 1970	Eiken	270	88	0.37
20023	Otanoshimi Anime Gekijou	-1	Comedy	26	Spring 1970	Unknown	223	63	0.44
20025	Itazura Tenshi Chippo-chan	-1	Comedy Kids	240	Spring 1970	Unknown	237	91	0.37
20027	Nihon Meisaku Douwa Series: Akai Tori no Kokoro	-1	Kids Adventure Fantasy	26	Winter 1979	Shin-Ei Animation	355	99	0.37
20031	D-Frag!	7.58	Game Comedy School Seinen	12	Winter 2014	Brain's Base	314521	210351	0.04
20033	Miss Monochrome The Animation	6.4	Music SliceofLife Comedy	13	Fall 2013	SANZIGEN, LIDENFILMS	43139	25813	0.09
20047	Sakura Trick	7.02	SliceofLife Comedy Romance School Seinen ShoujoAi	12	Winter 2014	Studio Deen	209543	117706	0.09
20053	Wizard Barristers: Benmashi Cecil	6.19	Action Police Magic Fantasy	12	Winter 2014	Arms	51847	24900	0.19
20057	Space☆Dandy	7.88	Sci-Fi Space Comedy	13	Winter 2014	Bones	267394	135822	0.06
20075	Obocchama-kun	-1	Comedy Parody	164	Winter 1989	Shin-Ei Animation	346	127	0.33
20077	Dotanba no Manners	-1	Comedy SliceofLife	283	Fall 1984	Eiken	268	107	0.34
20079	Ijiwaru Baasan	-1	Comedy SliceofLife	39	Fall 1970	Unknown	297	79	0.38
20081	Ijiwaru Baasan (1996)	-1	SliceofLife Comedy	46	Spring 1996	Eiken	226	64	0.36
20083	Doteraman	-1	Sci-Fi Comedy	20	Fall 1986	Tatsunoko Production	305	76	0.35
20085	Only You: Viva! Cabaret Club	-1	Comedy	15	Fall 1998	Unknown	239	48	0.35
20087	Treasure Gaust	-1	Game	5	Spring 2007	SynergySP	298	88	0.31
20115	Gekisou! Rubenkaiser	-1	Cars Shounen Sports	17	Fall 1977	Toei Animation	366	100	0.35
20117	Kotowaza House	-1	Comedy SliceofLife	773	Spring 1987	Eiken	357	166	0.26
20123	Kappamaki	-1	Comedy SliceofLife	130	Spring 2003	Unknown	221	71	0.32
20125	Tobidase! Machine Hiryuu	-1	Cars Comedy Parody Shounen	21	Fall 1977	Toei Animation, Tatsunoko Production	280	82	0.4
20127	Kariage-kun	-1	Comedy Seinen SliceofLife	59	Fall 1989	Toei Animation	286	84	0.32
20147	Robokko Beeton	-1	Adventure Comedy Kids SliceofLife	50	Fall 1976	Sunrise	226	56	0.46
20173	Mori no Senshi Bonolon	-1	Adventure Fantasy Kids	26	Fall 2007	Unknown	182	48	0.39
20183	Manga Ijin Monogatari	-1	Historical	46	Fall 1977	Unknown	322	93	0.34
20199	Ganbare Gonbe	-1	Comedy Kids Parody	77	Spring 1980	Unknown	189	49	0.48
20201	Easy Cooking Animation: Seishun no Shokutaku	-1	Comedy	25	Summer 1989	Madhouse	270	65	0.45
20223	Shounen Tokugawa Ieyasu	-1	Drama Historical Shounen	20	Spring 1975	Toei Animation	352	76	0.38
20231	Manga Kodomo Bunko	-1	Drama Fantasy Kids	51	Fall 1978	Unknown	251	53	0.43
20233	Tonari no Tamageta-kun	-1	Comedy Sci-Fi	60	Spring 1974	Unknown	261	67	0.44
20237	Anime Document: München e no Michi	-1	Sports	16	Spring 1972	Unknown	323	75	0.43
20239	Hana no Kakarichou	-1	Comedy Seinen SliceofLife	25	Fall 1976	Unknown	268	60	0.43
20243	Gatapishi	-1	Comedy SliceofLife	199	Spring 1990	Shin-Ei Animation	282	117	0.28
20267	Wooser no Sono Higurashi: Kakusei-hen	6.62	Comedy Fantasy SliceofLife	12	Winter 2014	SANZIGEN, LIDENFILMS	5736	4004	0.06
20329	Koroshiya-san: The Hired Gun	5.57	Action Comedy Police Seinen Thriller	10	Fall 2013	Opera House	6302	2925	0.14
20431	Hoozuki no Reitetsu	7.8	Comedy Demons Supernatural Fantasy Seinen	13	Winter 2014	Wit Studio	104944	45319	0.09
20457	Inari, Konkon, Koi Iroha.	7.22	Comedy Romance School Seinen Supernatural	10	Winter 2014	Production IMS	127226	67692	0.05
20473	Teekyuu 3	6.79	Comedy School Shounen Sports	12	Fall 2013	MAPPA	22342	17686	0.01
20507	Noragami	8.01	Action Adventure Comedy Supernatural Shounen	12	Winter 2014	Bones	1535575	1181215	0.02
20509	Fate/kaleid liner Prisma☆Illya 2wei!	7.3	Action Comedy Fantasy Magic	10	Summer 2014	SILVER LINK.	124622	87658	0.02
20533	Z/X: Ignition	6.53	Game Sci-Fi Adventure Fantasy	12	Winter 2014	Telecom Animation Film	36722	19757	0.12
20541	Mikakunin de Shinkoukei	7.44	SliceofLife Comedy Romance School	12	Winter 2014	Doga Kobo	298188	183366	0.03
20555	SoniAni: Super Sonico The Animation	6.1	Music SliceofLife	12	Winter 2014	White Fox	70333	29240	0.21
20583	Haikyuu!!	8.53	Comedy Sports Drama School Shounen	25	Spring 2014	Production I.G	1185274	896822	0.02
20603	Kyoufu no Kyou-chan	-1	Comedy Parody	7	Fall 1994	Unknown	203	79	0.29
20689	Hamatora The Animation	7.3	Mystery Comedy SuperPower Drama	12	Winter 2014	NAZ	249144	143323	0.07
20709	Sabage-bu!	7.38	Action Military Comedy Shoujo	12	Summer 2014	Pierrot Plus	127985	59272	0.07
20755	Ganbare! Lulu Lolo	-1	Kids SliceofLife	26	Winter 2013	Fanworks	283	77	0.4
20785	Mahouka Koukou no Rettousei	7.53	Action Sci-Fi Supernatural Magic Romance School	26	Spring 2014	Madhouse	760749	520791	0.07
20787	Black Bullet	7.17	Action Sci-Fi Mystery Seinen	13	Spring 2014	Kinema Citrus, Orange	709300	503294	0.04
20847	Seitokai Yakuindomo*	7.74	SliceofLife Comedy School Shounen	13	Winter 2014	GoHands	201472	134282	0.03
20853	Hitsugi no Chaika	7.29	Action Adventure Comedy Romance Fantasy	12	Spring 2014	Bones	309823	191130	0.05
20899	JoJo no Kimyou na Bouken Part 3: Stardust Crusaders	8.12	Action Adventure Supernatural Drama Shounen	24	Spring 2014	David Production	694803	587864	0.01
20931	Oneechan ga Kita	6.37	Comedy SliceofLife	12	Winter 2014	C2C	89350	63368	0.04
20945	Iron Kid	6.92	Action Adventure Comedy Sci-Fi	26	Spring 2006	Daewon Media	3384	2648	0.05
20971	Kiniro no Corda: Blue♪Sky	6.43	Harem Music School Shoujo	12	Spring 2014	TYO Animations	23282	12021	0.13
20973	Sekai Seifuku: Bouryaku no Zvezda	7.09	Action Comedy Fantasy	12	Winter 2014	A-1 Pictures	119408	61046	0.08
21013	Marvel Disk Wars: The Avengers	5.91	Action Kids SuperPower	51	Spring 2014	Toei Animation	6916	1641	0.33
21019	Noonbory	-1	Kids Fantasy	26	Fall 2009	Daewon Media	163	48	0.43
21033	Seikoku no Dragonar	6.52	Comedy Ecchi Fantasy School	12	Spring 2014	C-Station	170220	118202	0.06
21039	Gatchaman Crowds Insight	7.3	Adventure Sci-Fi	12	Summer 2015	Tatsunoko Production	63861	30963	0.08
21053	Ikemen Kyuugo-tai Nurse Angels	-1	Comedy	10	Spring 2013	Unknown	257	59	0.36
21067	Strange+	6	SliceofLife Comedy Josei	12	Winter 2014	Seven	28386	14854	0.14
21085	Witch Craft Works	7.07	Action Fantasy Magic Seinen Supernatural	12	Winter 2014	J.C.Staff	238744	154235	0.05
21105	Love Stage!!	7.32	Comedy Romance ShounenAi	10	Summer 2014	J.C.Staff	193013	149134	0.04
21167	Escha & Logy no Atelier: Tasogare no Sora no Renkinjutsushi	6.45	Fantasy	12	Spring 2014	Studio Gokumi	54383	25450	0.15
21177	Nobunaga the Fool	6.69	Action Historical Mecha Sci-Fi	24	Winter 2014	Satelight	88201	37730	0.2
21185	Baby Steps	7.85	Romance School Shounen Sports	25	Spring 2014	Studio Pierrot	122031	77227	0.05
21267	Go! Go! 575	5.65	SliceofLife	4	Winter 2014	C2C, Lay-duce	10247	7280	0.05
21273	Gochuumon wa Usagi Desu ka?	7.52	SliceofLife Comedy	12	Spring 2014	White Fox	185607	88005	0.07
21325	Pupipo!	6.82	SliceofLife Comedy Supernatural School	15	Winter 2014	AIC PLUS+	18281	11118	0.07
21327	Isshuukan Friends.	7.57	SliceofLife Comedy School Shounen	12	Spring 2014	Brain's Base	251774	150900	0.05
21353	Tokyo ESP	6.57	Action Sci-Fi Comedy SuperPower Supernatural Shounen	12	Summer 2014	Xebec	148430	82508	0.12
21405	Bokura wa Minna Kawai-sou	7.72	SliceofLife Comedy Romance School Seinen	12	Spring 2014	Brain's Base	306236	203521	0.04
21407	Happiness Charge Precure!	6.77	Action Magic Fantasy Shoujo	49	Winter 2014	Toei Animation	8936	3928	0.12
21421	Mahou Shoujo Taisen	5.77	Magic	26	Spring 2014	Gainax	15558	5692	0.23
21427	Minna Atsumare! Falcom Gakuen	5.9	Parody Comedy School Seinen	13	Winter 2014	Unknown	4641	2224	0.12
21431	Gokukoku no Brynhildr	6.92	Drama Mystery Sci-Fi Seinen	13	Spring 2014	Arms	280819	181913	0.05
21433	Chou Zenmairobo: Patrasche	-1	Comedy Historical Mecha Parody Sci-Fi	13	Winter 2014	Nippon Animation	393	132	0.31
21435	Yama no Susume: Second Season	7.55	Adventure Comedy SliceofLife	24	Summer 2014	8bit	25662	13288	0.05
21437	Buddy Complex	7.17	Action Sci-Fi Mecha	13	Winter 2014	Sunrise	72349	45976	0.07
21439	Uta no☆Prince-sama♪ Maji Love Revolutions	7.04	Comedy Harem Music Romance School Shoujo	13	Spring 2015	A-1 Pictures	49449	29961	0.06
21447	Meitantei Rascal	-1	Adventure Mystery Kids	12	Winter 2014	Nippon Animation	342	96	0.33
21483	Sanchoume no Yuuhi	-1	Comedy SliceofLife	27	Fall 1990	Unknown	248	60	0.4
21485	Dokkan! Robotendon	-1	Adventure Kids SliceofLife	26	Fall 1995	Tatsunoko Production	187	54	0.41
21487	Shin Dokonjou Gaeru	-1	SliceofLife Comedy Shounen	30	Fall 1981	Unknown	309	96	0.35
21491	Ninjaman Ippei	-1	Action Comedy School SliceofLife	13	Fall 1982	Unknown	254	86	0.34
21507	Soul Eater NOT!	5.98	Action Comedy Ecchi Shounen Supernatural	12	Spring 2014	Bones	167538	102639	0.14
21511	Kantai Collection: KanColle	6.88	Action Military Sci-Fi SliceofLife School	12	Winter 2015	Diomedéa	187671	96281	0.1
21523	Baku Tech! Bakugan Gachi	5.86	Action Game Shounen	39	Spring 2013	Unknown	1711	1075	0.09
21539	Oraa Guzura Dado	-1	Comedy Kids	52	Fall 1967	Tatsunoko Production	284	97	0.36
21549	Hitotsuboshi-ke no Ultra Baasan	-1	Comedy SliceofLife	13	Fall 1982	Shaft, Knack Productions	280	75	0.36
21553	Asobo Toy-chan	-1	Kids	53	Fall 1994	Unknown	189	64	0.41
21561	Ryuugajou Nanana no Maizoukin (TV)	7.19	Adventure Comedy Mystery Supernatural	11	Spring 2014	A-1 Pictures	195516	110062	0.05
21563	Kamigami no Asobi	7.09	Harem Supernatural Romance Fantasy Shoujo	12	Spring 2014	Brain's Base	116969	71854	0.08
21573	Senki Zesshou Symphogear GX	7.43	Action Music Sci-Fi	13	Summer 2015	Satelight	38001	22842	0.03
21603	Mekakucity Actors	7.08	Sci-Fi Comedy SuperPower Supernatural Romance	12	Spring 2014	Shaft	373894	219659	0.07
21639	Yu☆Gi☆Oh! Arc-V	6.79	Action Game Fantasy Shounen	148	Spring 2014	Gallop	45530	20770	0.14
21671	Keroro	6.86	Comedy Sci-Fi Shounen	23	Spring 2014	Sunrise	7057	3892	0.11
21677	Captain Earth	6.42	Action Mecha Romance Sci-Fi Space	25	Spring 2014	Bones	60199	24546	0.24
21681	Hanayamata	7.33	SliceofLife Comedy School	12	Summer 2014	Madhouse	93655	40773	0.1
21729	Cardfight!! Vanguard: Legion Mate-hen	6.79	Action Adventure Demons Game Shounen	33	Spring 2014	TMS Entertainment	11879	8154	0.05
21743	Donten ni Warau	7.52	Action Historical Shoujo Supernatural	12	Fall 2014	Doga Kobo	103752	50019	0.09
21809	Kenzen Robo Daimidaler	6.17	Ecchi Comedy Mecha Seinen	12	Spring 2014	TNK	57459	25003	0.18
21821	Fuuun Ishin Dai☆Shogun	5.73	Action Historical Mecha	12	Spring 2014	J.C.Staff, A.C.G.T.	22996	9613	0.2
21835	Majin Bone	6.67	Game	52	Spring 2014	Toei Animation	8742	2606	0.34
21843	Shingeki no Bahamut: Genesis	7.67	Action Adventure Demons Supernatural Magic Fantasy	12	Fall 2014	MAPPA	330227	192178	0.04
21845	Ushinawareta Mirai wo Motomete	6.76	Sci-Fi Drama Romance School	12	Fall 2014	feel.	78179	34980	0.14
21851	Tesagure! Bukatsumono Encore	7.1	Parody School SliceofLife	12	Winter 2014	Yaoyorozu	4035	1836	0.06
21855	Hanamonogatari	7.99	Mystery Comedy Supernatural	5	Summer 2014	Shaft	326419	233486	0.01
21863	Mangaka-san to Assistant-san to The Animation	7.18	Harem SliceofLife Comedy Ecchi Seinen	12	Spring 2014	Zexcs	220260	139968	0.05
21877	High Score Girl	7.88	Game Comedy Romance School Seinen	12	Summer 2018	J.C.Staff	169402	102347	0.05
21881	Sword Art Online II	6.79	Action Game Adventure Romance Fantasy	24	Summer 2014	A-1 Pictures	1437210	1199824	0.05
21939	Mushishi Zoku Shou	8.72	Adventure SliceofLife Mystery Historical Supernatural Fantasy Seinen	10	Spring 2014	Artland	226522	113559	0.02
21981	Pic-lele	-1	Kids	12	Winter 2014	Kachidoki Studio	154	31	0.53
21995	Ao Haru Ride	7.67	Comedy Drama Romance School Shoujo SliceofLife	12	Summer 2014	Production I.G	591908	421817	0.03
21997	Duel Masters Victory V	5.95	Action Adventure Comedy Shounen	51	Spring 2012	Unknown	844	332	0.2
21999	Duel Masters Victory V3	5.88	Action Adventure Comedy Shounen	51	Spring 2013	Unknown	889	336	0.22
22013	Koukaku Kidoutai Nyuumon Arise	6.85	Comedy	26	Winter 2014	Production I.G	6886	2316	0.09
22043	Fairy Tail (2014)	7.73	Action Adventure Comedy Fantasy Magic Shounen	102	Spring 2014	A-1 Pictures, Bridge	716382	440657	0.08
22065	T-Rex	-1	Action Adventure Comedy Kids	52	Fall 1992	Unknown	238	83	0.34
22099	Hero Bank	6.05	Game Kids	51	Spring 2014	TMS Entertainment	2571	551	0.41
22101	Soredemo Sekai wa Utsukushii	7.67	Adventure Romance Fantasy Shoujo	12	Spring 2014	Studio Pierrot	228677	139884	0.06
22123	Inugami-san to Nekoyama-san	6.57	Comedy School ShoujoAi	12	Spring 2014	Seven	63667	40794	0.05
22135	Ping Pong the Animation	8.63	Drama Psychological Seinen Sports	11	Spring 2014	Tatsunoko Production	265774	145309	0.03
22145	Kuroshitsuji: Book of Circus	8.13	Action Mystery Comedy Historical Demons Supernatural Shounen	10	Summer 2014	A-1 Pictures	295450	220321	0.02
22147	Amagi Brilliant Park	7.52	Comedy Drama Fantasy Magic	13	Fall 2014	Kyoto Animation	496580	350647	0.03
22189	Futsuu no Joshikousei ga [Locodol] Yattemita.	6.9	SliceofLife Comedy Seinen	12	Summer 2014	feel.	38716	18149	0.13
22199	Akame ga Kill!	7.53	Action Adventure Drama Fantasy Shounen	24	Summer 2014	White Fox	1408729	1088784	0.04
22215	Pretty Rhythm: All Star Selection	6.36	Music Shoujo Sports	11	Spring 2014	Tatsunoko Production, Dongwoo A&E	2455	864	0.13
22219	Warera Salaryman Tou	-1	Comedy SliceofLife	26	Fall 1970	Unknown	206	46	0.54
22221	Monoshiri Daigaku: Ashita no Calendar	5.77	Historical	1274	Summer 1966	Unknown	456	229	0.25
22225	Momo Kyun Sword	5.59	Comedy Ecchi Fantasy	12	Summer 2014	Project No.9, Tri-Slash	28876	9900	0.26
22247	Azumi Mamma★Mia	-1	Comedy Kids	60	Summer 1997	Toei Animation	319	80	0.3
22265	Free!: Eternal Summer	7.68	SliceofLife Comedy Sports Drama School	13	Summer 2014	Kyoto Animation, Animation Do	310522	233108	0.04
22273	Selector Infected WIXOSS	7.26	Game Psychological	12	Spring 2014	J.C.Staff	128417	69860	0.08
22297	Fate/stay night: Unlimited Blade Works	8.22	Action Fantasy Magic Supernatural	12	Fall 2014	ufotable	742718	592974	0.01
22313	Shinken Densetsu: Tight Road	-1	Action MartialArts	13	Fall 1994	Toei Animation	401	66	0.31
22319	Tokyo Ghoul	7.81	Action Mystery Horror Psychological Supernatural Drama Seinen	12	Summer 2014	Studio Pierrot	1895488	1594880	0.02
22345	Funny Pets 2nd Season	5.56	Comedy	12	Fall 2006	Unknown	323	167	0.2
22359	Sanzoku no Musume Ronja	7.15	Adventure	26	Fall 2014	Studio Ghibli, Polygon Pictures	24822	5582	0.22
22381	Nandaka Velonica	6	Comedy Fantasy Kids	10	Winter 2014	Cyclone Graphics	1081	504	0.17
22433	Break Blade	7.29	Action Military Fantasy Mecha Shounen	12	Spring 2014	Production I.G, Xebec	79938	44198	0.05
22439	Hello Kitty: Ringo no Mori no Mystery	-1	Comedy Kids Mystery	13	Winter 2007	Asahi Production	363	154	0.23
22441	Hello Kitty: Ringo no Mori to Parallel Town	-1	Comedy Fantasy Kids	27	Fall 2007	Asahi Production	379	161	0.22
22465	KutsuDaru.	-1	Fantasy Kids School SliceofLife	48	Spring 2014	Egg	516	87	0.36
22503	Washimo	-1	Sci-Fi SliceofLife Comedy Kids School	10	Winter 2014	Studio Deen	386	95	0.43
22507	Initial D Final Stage	8.24	Sports Cars Seinen	4	Spring 2014	SynergySP	85307	61880	0.01
22509	Manga Nihonshi (NHK Han)	-1	Historical	40	Spring 1992	Unknown	371	101	0.26
22535	Kiseijuu: Sei no Kakuritsu	8.4	Action Sci-Fi Horror Psychological Drama Seinen	24	Fall 2014	Madhouse	1243239	942917	0.02
22537	Yami Shibai 2	6.5	Dementia Horror Supernatural	13	Summer 2014	ILCA	36759	28348	0.02
22541	Oniku Daisuki! Zeushi-kun	-1	Comedy	12	Winter 2014	DLE	366	140	0.29
22547	Blade & Soul	6.09	Action Adventure Fantasy MartialArts	13	Spring 2014	Gonzo	109933	60004	0.15
22585	Nukko.	-1	Comedy	24	Spring 2012	Kachidoki Studio	230	27	0.54
22651	Kero Kero Keroppi: Hasunoue Town Kiki Ippatsu!	-1	Kids Fantasy	6	Fall 2006	Unknown	213	78	0.29
22663	Seiken Tsukai no World Break	6.91	Action Fantasy Harem Romance School Supernatural	12	Winter 2015	Diomedéa	236854	172278	0.05
22669	Gohan Kaijuu Pap	-1	Action Comedy Kids	-1	Spring 2011	DLE	265	0	0.5
22687	Terra Formars	7.04	Action Sci-Fi Space Horror Drama Seinen	13	Fall 2014	LIDENFILMS	185982	119498	0.09
22693	Lady Jewelpet	7.39	Fantasy Magic Romance Shoujo	52	Spring 2014	Studio Comet, Zexcs	7906	2921	0.14
22709	Zettai Zetsumei Dangerous Jiisan (2005)	-1	Comedy Kids	19	Spring 2005	Unknown	217	67	0.4
22729	Aldnoah.Zero	7.44	Action Military Sci-Fi Mecha	12	Summer 2014	A-1 Pictures, TROYCA	432548	306310	0.04
22733	Dragon Collection	6.24	Fantasy Shounen	51	Spring 2014	OLM	4459	1262	0.31
22735	Oreca Battle	5.91	Game	51	Spring 2014	Xebec, OLM	2233	582	0.37
22755	Chikasugi Idol Akae-chan	-1	Comedy Game Parody	12	Winter 2014	DLE	276	79	0.42
22777	Dragon Ball Kai (2014)	7.69	Action Adventure Comedy SuperPower MartialArts Fantasy Shounen	61	Spring 2014	Toei Animation	127879	98522	0.03
22789	Barakamon	8.41	Comedy SliceofLife	12	Summer 2014	Kinema Citrus	503396	325820	0.02
22817	Kindaichi Shounen no Jikenbo Returns	7.53	Mystery Shounen	25	Spring 2014	Toei Animation	14842	6687	0.13
22821	Himitsukessha Taka no Tsume EX	-1	Comedy Parody SuperPower	38	Spring 2014	DLE	355	97	0.42
22831	Abarenbou Rikishi!! Matsutarou	6.11	Sports Seinen	23	Spring 2014	Toei Animation	7992	3256	0.3
22835	Himegoto	5.94	SliceofLife Comedy Ecchi School	13	Summer 2014	Asahi Production	95796	58797	0.08
22849	Nyamen	-1	Comedy	12	Winter 2014	Unknown	985	152	0.23
22865	Rokujouma no Shinryakusha!? (TV)	7.18	Harem Comedy Supernatural School	12	Summer 2014	SILVER LINK.	148889	92797	0.05
22877	Seireitsukai no Blade Dance	6.82	Action Harem Comedy Supernatural Romance Ecchi Fantasy School	12	Summer 2014	TNK	283537	203224	0.04
22893	Mon Cheri CoCo	-1	Romance Shoujo	13	Summer 1972	Unknown	549	88	0.32
22955	Francesca	5.49	Fantasy Comedy	24	Summer 2014	Telecom Animation Film	8628	1384	0.38
22997	Shin Skyers 5	-1	Action Sci-Fi	25	Fall 1971	Unknown	278	67	0.41
22999	Nippon Tanjou	-1	Historical	5	Summer 1970	Mushi Production	241	57	0.49
23001	Manga Jinbutsushi	-1	Historical	365	Summer 1970	Unknown	257	90	0.38
23011	Otoko Doahou! Koushien	-1	Action Sports	156	Fall 1970	Unknown	317	82	0.35
23013	Norakuro	-1	Comedy	26	Fall 1970	Eiken	326	79	0.42
23015	Hazedon	-1	Kids Adventure Comedy	26	Fall 1972	Sunrise	204	52	0.47
23037	Bakumatsu Rock	6.05	Action Music Comedy Historical Shoujo	12	Summer 2014	Studio Deen	25970	10401	0.27
23067	Tenkai Knights	6.45	Action Sci-Fi Adventure Comedy SuperPower Kids Mecha Shounen	52	Spring 2014	Bones	3155	1443	0.14
23079	Glasslip	5.44	Romance SliceofLife Supernatural	13	Summer 2014	P.A. Works	144554	81795	0.17
23107	GO-GO Tamagotchi!	-1	Comedy Fantasy Kids	50	Spring 2014	OLM	473	134	0.29
23121	Jinsei	6.49	Comedy School SliceofLife	13	Summer 2014	feel.	60096	26067	0.17
23133	M3: Sono Kuroki Hagane	6.61	Action Drama Mecha Mystery Psychological Sci-Fi	24	Spring 2014	Satelight, C2C	51615	18321	0.21
23135	PriPara	7.44	Music SliceofLife School Shoujo	140	Summer 2014	Tatsunoko Production, Dongwoo A&E	16298	3010	0.2
23149	47 Todoufuken R	-1	Comedy Kids	12	Winter 2014	Unknown	358	135	0.35
23151	Shounen Hollywood: Holly Stage for 49	6.1	Music SliceofLife Shoujo	13	Summer 2014	Zexcs	14008	4282	0.29
23199	Durarara!!x2 Shou	8.03	Action Mystery Supernatural	12	Winter 2015	Shuka	388580	267808	0.02
23201	Sengoku Basara: Judge End	6.87	Action SuperPower MartialArts Samurai Historical	12	Summer 2014	Telecom Animation Film	23591	12311	0.07
23209	Sora no Method	6.77	Drama Fantasy School SliceofLife	13	Fall 2014	Studio 3Hz	88590	34589	0.14
23213	Kantoku Fuyuki Todoki	5.93	Comedy Josei SliceofLife	13	Spring 2014	DLE	6016	2722	0.17
23229	Meshimase Lodoss-tou Senki: Sorette Oishii no?	5.62	Comedy	13	Spring 2014	Studio Deen, Studio Hibari	2070	451	0.17
23233	Shinmai Maou no Testament	6.8	Action Ecchi Fantasy Romance Harem Demons	12	Winter 2015	Production IMS	476324	347969	0.05
23251	Gugure! Kokkuri-san	7.58	Comedy Supernatural Shounen	12	Fall 2014	TMS Entertainment	152205	86200	0.07
23259	Gundam: G no Reconguista	5.76	Action Mecha Sci-Fi Space	26	Fall 2014	Sunrise	25083	9649	0.24
23269	Hello!! Kiniro Mosaic	7.53	SliceofLife Comedy School Seinen	12	Spring 2015	Studio Gokumi	65635	40121	0.03
23273	Shigatsu wa Kimi no Uso	8.74	Drama Music Romance School Shounen	22	Fall 2014	A-1 Pictures	1442330	1036649	0.03
23277	Saenai Heroine no Sodatekata	7.54	Harem Comedy Romance Ecchi School	12	Winter 2015	A-1 Pictures	451172	273323	0.04
23281	Psycho-Pass 2	7.42	Action Sci-Fi Police Psychological	11	Fall 2014	Tatsunoko Production	508172	352491	0.03
23283	Zankyou no Terror	8.12	Mystery Psychological Thriller	11	Summer 2014	MAPPA	822187	547800	0.03
23289	Gekkan Shoujo Nozaki-kun	7.96	Comedy Romance School	12	Summer 2014	Doga Kobo	681194	471410	0.03
23309	Rail Wars!	6.41	Action Harem Police Ecchi	12	Summer 2014	Passione	166262	94431	0.12
23311	Garo: Honoo no Kokuin	7.41	Action Demons Fantasy Magic Supernatural	24	Fall 2014	MAPPA	120332	53734	0.12
23313	Zettai Zetsumei Dangerous Jiisan	-1	Comedy Kids	33	Fall 2003	Unknown	241	83	0.34
23321	Log Horizon 2nd Season	7.62	Action Game Adventure Magic Fantasy	25	Fall 2014	Studio Deen	485345	344195	0.04
23325	Shirogane no Ishi: Argevollen	6.5	Action Mecha	24	Summer 2014	Xebec	40540	18458	0.2
23327	Space☆Dandy 2nd Season	8.27	Space Comedy Sci-Fi	13	Summer 2014	Bones	130277	85493	0.02
23333	DRAMAtical Murder	6.09	Action Sci-Fi SuperPower Psychological	12	Summer 2014	NAZ	137781	73471	0.17
23347	Gan to Gon	-1	Comedy Kids	260	Spring 1974	Unknown	293	95	0.35
23349	Kirin Monoshiri Yakata	5.82	Kids	1565	Winter 1975	Unknown	433	263	0.19
23351	Youkaiden Nekome Kozou	-1	Adventure Horror Psychological Seinen Supernatural	25	Spring 1976	Unknown	554	85	0.37
23375	Minarai Diva	5.38	Music	10	Summer 2014	Yaoyorozu	1488	182	0.37
23393	Shin Don Chuck Monogatari	6.15	Adventure Kids SliceofLife	73	Spring 1976	Unknown	376	189	0.27
23409	Duel Masters VS	5.92	Action Adventure Comedy Shounen	49	Spring 2014	Ascension	900	300	0.25
23421	Re:␣Hamatora	7.4	Mystery Comedy SuperPower Drama	12	Summer 2014	Lerche	139473	88228	0.05
23433	Shin Strange+	6.25	SliceofLife Comedy Josei	12	Summer 2014	Seven	12541	7930	0.05
23511	Choubakuretsu Ijigen Menko Battle: Gigant Shooter Tsukasa	-1	Action Game Comedy Kids	32	Spring 2014	Fanworks	341	91	0.35
23539	Gudetama	7.05	Comedy Kids	-1	Spring 2014	Gathering	9106	2	0.21
23551	Choboraunyopomi Gekijou Dai Ni Maku Ai Mai Mii: Mousou Catastrophe	5.99	Comedy SliceofLife	12	Summer 2014	Seven	11005	7516	0.04
23555	Neko no Dayan	-1	Kids Magic	52	Spring 2014	Kachidoki Studio	490	83	0.36
23587	The iDOLM@STER Cinderella Girls	7.15	Comedy Drama Music	13	Winter 2015	A-1 Pictures	63111	30661	0.07
23607	Gaki Deka	-1	Comedy Ecchi Kids Parody Shounen	22	Fall 1989	Gallop	242	65	0.39
23623	Non Non Biyori Repeat	8.18	Comedy School Seinen SliceofLife	12	Summer 2015	SILVER LINK.	142489	88531	0.02
23673	Ookami Shoujo to Kuro Ouji	7.17	Comedy Romance School Shoujo	12	Fall 2014	TYO Animations	336542	248288	0.04
23721	Carino Coni	-1	Fantasy Kids	26	Spring 2014	Unknown	268	82	0.33
23737	Neko Pitcher	-1	Comedy Sports Kids	51	Spring 2014	Unknown	487	66	0.36
23755	Nanatsu no Taizai	7.89	Action Adventure Ecchi Fantasy Magic Shounen Supernatural	24	Fall 2014	A-1 Pictures	1394358	1151443	0.03
23787	Hi☆sCoool! SeHa Girls	6.51	Comedy Game	13	Fall 2014	TMS Entertainment	10523	5469	0.14
23799	Dango San Kyoudai Attoiuma Gekijou	-1	Kids Music	50	Fall 1999	Unknown	199	67	0.42
23829	Komatsu Sakyo Anime Gekijou	-1	Comedy Parody Sci-Fi Space	24	Fall 1989	Gainax	283	72	0.39
23847	Yahari Ore no Seishun Love Comedy wa Machigatteiru. Zoku	8.27	SliceofLife Comedy Drama Romance School	13	Spring 2015	feel.	713318	579427	0.01
23897	Lovely Movie: Itoshi no Muco	6.33	SliceofLife	20	Summer 2013	Doga Kobo	1164	337	0.2
23901	Lovely Movie: Itoshi no Muco Season 2	6.13	SliceofLife	22	Spring 2014	Doga Kobo	699	239	0.23
23915	The Adventures of Hello Kitty & Friends	5.87	Fantasy Kids	52	Unknown	Unknown	523	275	0.17
23945	Majimoji Rurumo	6.85	Comedy Magic Ecchi Fantasy School Shounen	12	Summer 2014	J.C.Staff	63284	35237	0.09
23973	Fuku-chan	-1	Kids SliceofLife	71	Winter 1982	Shin-Ei Animation	208	62	0.43
24011	Lance N' Masques	5.52	Fantasy	12	Fall 2015	Studio Gokumi	44874	20345	0.28
24031	Denki-gai no Honya-san	7.21	Comedy Seinen SliceofLife	12	Fall 2014	Shin-Ei Animation	108808	56352	0.08
24037	Selector Spread WIXOSS	7.39	Game Psychological	12	Fall 2014	J.C.Staff	68567	45238	0.04
24041	Jarujio Animal	-1	Adventure Comedy Parody	10	Spring 2010	Unknown	175	45	0.48
24075	Persona 4 the Golden Animation	6.63	Sci-Fi Adventure Mystery SuperPower Supernatural School	12	Summer 2014	A-1 Pictures	70802	38480	0.11
24121	Patta Potta Monta	-1	Comedy Kids SliceofLife	26	Summer 2006	Unknown	178	57	0.32
24133	Taimadou Gakuen 35 Shiken Shoutai	6.9	Action Ecchi Fantasy Harem Military Romance Supernatural	12	Fall 2015	SILVER LINK.	239275	156663	0.05
24135	Nobunaga Concerto	7.6	Comedy Historical Romance Shounen	10	Summer 2014	Fuji TV	47267	22837	0.09
24211	Orenchi no Furo Jijou	7	Comedy Fantasy Josei	13	Fall 2014	Asahi Production	85745	61563	0.05
24231	Hitsugi no Chaika: Avenging Battle	7.22	Action Adventure Comedy Romance Fantasy	10	Fall 2014	Bones	167311	124107	0.02
24277	Yowamushi Pedal: Grande Road	8.12	Comedy Drama Shounen Sports	24	Fall 2014	TMS Entertainment	106380	80515	0.03
24403	Nyanpuku Nyaruma	-1	Comedy	3	Unknown	Kachidoki Studio	430	28	0.57
24405	World Trigger	7.58	Action Sci-Fi Supernatural School Shounen	73	Fall 2014	Toei Animation	264062	90960	0.15
24415	Kuroko no Basket 3rd Season	8.34	Comedy Sports School Shounen	25	Winter 2015	Production I.G	506465	411971	0.01
24417	Maido! Urayasu Tekkin Kazoku	6.21	Comedy Shounen	25	Summer 2014	Studio Deen	777	228	0.23
24439	Kekkai Sensen	7.65	Action Comedy SuperPower Supernatural Vampire Fantasy Shounen	12	Spring 2015	Bones	625476	360051	0.06
24455	Madan no Ou to Vanadis	7.17	Adventure Ecchi Fantasy Harem Romance	13	Fall 2014	Satelight	265671	182741	0.05
24465	Heli-Tako Puu-chan	-1	Comedy Kids	42	Winter 1998	Toei Animation	167	46	0.41
24625	Gundam Build Fighters Try	7.27	Action Sci-Fi Mecha	25	Fall 2014	Sunrise	34746	25269	0.04
24629	Koufuku Graffiti	6.8	SliceofLife Comedy Seinen	12	Winter 2015	Shaft	69897	28557	0.16
24663	Dororonpa!	-1	SliceofLife Comedy Supernatural	115	Spring 1991	Shin-Ei Animation	389	111	0.31
24699	Ai Tenchi Muyou!	6.19	Comedy Sci-Fi Shounen	50	Fall 2014	AIC PLUS+	28662	10873	0.17
24701	Mushishi Zoku Shou 2nd Season	8.76	Adventure Fantasy Historical Mystery Seinen SliceofLife Supernatural	10	Fall 2014	Artland	198954	100107	0.02
24703	High School DxD BorN	7.45	Action Comedy Demons Ecchi Harem Romance School	12	Spring 2015	TNK	571266	484271	0.02
24705	Ore, Twintail ni Narimasu.	6.51	Action Comedy Romance Fantasy School Shounen	12	Fall 2014	Production IMS	129384	66515	0.13
24765	Gakkougurashi!	7.63	SliceofLife Psychological School Horror Mystery	12	Summer 2015	Lerche	340561	199990	0.06
24775	Koishite!! Namashi-chan	-1	SliceofLife Kids	-1	Unknown	Kachidoki Studio	210	16	0.55
24793	Bloody Bunny	5.86	Comedy	26	Unknown	Kachidoki Studio	538	236	0.17
24797	Kubire 3 Shimai	-1	Comedy	7	Unknown	Kachidoki Studio	132	47	0.38
24833	Ansatsu Kyoushitsu	8.12	Action Comedy School Shounen	22	Winter 2015	Lerche	1264954	912815	0.04
24835	Mobile Suit Gundam-san	6.19	Comedy Parody Mecha	13	Summer 2014	Sunrise	6154	4042	0.08
24845	Nyanfuru	-1	Music Comedy	124	Winter 2014	MMDGP	444	30	0.52
24855	Girlfriend (Kari)	5.94	School SliceofLife	12	Fall 2014	SILVER LINK.	36671	11822	0.26
24873	Juuou Mujin no Fafnir	6.25	Fantasy Harem Romance School	12	Winter 2015	Diomedéa	126029	81441	0.09
24875	Barnacle Lou	-1	Kids	52	Summer 2009	Unknown	188	63	0.35
24893	Sidonia no Kishi: Daikyuu Wakusei Seneki	7.77	Action Sci-Fi Space Mecha Seinen	12	Spring 2015	Polygon Pictures	102389	70977	0.03
24909	Kaitou Joker	6.88	Adventure Mystery Comedy Shounen	13	Fall 2014	Shin-Ei Animation	10974	4778	0.17
24969	Sumiko (TV)	-1	Comedy SliceofLife Kids	8	Summer 2014	Unknown	236	80	0.36
25013	Akatsuki no Yona	8.05	Action Adventure Comedy Fantasy Romance Shoujo	24	Fall 2014	Studio Pierrot	586957	367262	0.04
25059	Nikoniko, Pun	-1	Fantasy Comedy Kids	40	Unknown	Unknown	173	57	0.39
25063	Anime Roukyoku Kikou Shimizu no Jirochouden	-1	Comedy Historical Drama	30	Spring 2000	Unknown	231	81	0.35
25099	Ore ga Ojousama Gakkou ni "Shomin Sample" Toshite Gets♥Sareta Ken	6.81	Comedy Ecchi Harem Romance School	12	Fall 2015	SILVER LINK.	203046	132888	0.04
25139	Oh! My Konbu	-1	Comedy SliceofLife Shounen	22	Spring 1991	Unknown	248	65	0.33
25157	Trinity Seven	7.17	Action Harem Comedy Supernatural Magic Romance Ecchi Fantasy School Shounen	12	Fall 2014	Seven Arcs Pictures	602856	445619	0.04
25159	Inou-Battle wa Nichijou-kei no Naka de	7.14	Harem SliceofLife Comedy Supernatural Romance School	12	Fall 2014	Trigger	323085	201747	0.05
25183	Gangsta.	7.4	Action Drama Seinen	12	Summer 2015	Manglobe	428797	263000	0.06
25283	Kuusen Madoushi Kouhosei no Kyoukan	6.4	Action Drama Fantasy Magic School	12	Summer 2015	Diomedéa	198059	137840	0.06
25397	Absolute Duo	6.51	Action Harem Supernatural Romance Ecchi School	12	Winter 2015	8bit	425840	320572	0.06
25429	Isuca	6.03	Action Comedy Ecchi Romance School Seinen Supernatural	10	Winter 2015	Arms	122521	75651	0.1
25503	Fuusen Inu Tinny	-1	Adventure Kids	26	Fall 2014	Steve N' Steven	297	73	0.42
25517	Magic Kaito 1412	7.88	Adventure Comedy Romance Shounen	24	Fall 2014	A-1 Pictures	94709	53666	0.07
25519	Yuuki Yuuna wa Yuusha de Aru	7.38	SliceofLife Psychological Drama Magic Fantasy	12	Fall 2014	Studio Gokumi	119748	55216	0.08
25589	Yeongsimi	-1	Comedy School SliceofLife Kids	13	Unknown	Unknown	150	46	0.45
25607	Sekai no Fushigi Tanken Series	-1	Adventure Fantasy Historical	10	Unknown	Unknown	137	33	0.53
25609	Genki Genki Non-tan	-1	Kids Music	15	Fall 2002	Polygon Pictures	192	67	0.4
25611	Genki Genki Non-tan (2004)	-1	Music Kids	10	Spring 2004	Polygon Pictures	181	69	0.39
25615	Genki Genki Non-tan (2006)	-1	Music Kids	10	Fall 2006	Polygon Pictures	176	66	0.39
25649	Junjou Romantica 3	7.76	Comedy Drama Romance ShounenAi	12	Summer 2015	Studio Deen	92499	70239	0.02
25681	Kamisama Hajimemashita◎	8.16	Comedy Demons Supernatural Romance Fantasy Shoujo	12	Winter 2015	TMS Entertainment	247905	190718	0.02
25717	AIUEO Anime Sekai no Douwa: Aesop Monogatari Anime Series	-1	Adventure Fantasy Kids	26	Summer 1989	Unknown	631	174	0.29
25731	Cross Ange: Tenshi to Ryuu no Rondo	7.41	Action Mecha Sci-Fi	25	Fall 2014	Sunrise	154537	82433	0.07
25777	Shingeki no Kyojin Season 2	8.45	Action Military Mystery SuperPower Drama Fantasy Shounen	12	Spring 2017	Wit Studio	1591506	1337762	0.01
25809	Oretachi Ijiwaru Kei	-1	Comedy	14	Winter 2005	Karaku	243	73	0.33
25835	Shirobako	8.35	Comedy Drama	24	Fall 2014	P.A. Works	349479	129452	0.07
25859	Re-Kan!	6.77	Comedy School Seinen Supernatural	13	Spring 2015	Pierrot Plus	52790	24853	0.18
25867	Rolling☆Girls	6.6	Action Adventure SliceofLife SuperPower	12	Winter 2015	Wit Studio	77126	26964	0.2
25879	Working!!!	8.03	Comedy Romance Seinen SliceofLife	13	Summer 2015	A-1 Pictures	194901	136700	0.02
25939	Mahou Shoujo Lyrical Nanoha ViVid	6.74	Action Adventure Magic MartialArts	12	Spring 2015	A-1 Pictures	21552	10410	0.08
25965	Backkom 2	5.81	Comedy Kids	52	Unknown	RG Animation Studios	555	402	0.13
25967	Backkom Sports	5.78	Comedy Kids Sports	52	Unknown	RG Animation Studios	496	336	0.14
25999	Minna Atsumare! Falcom Gakuen SC	6.03	Parody Comedy School Seinen	12	Winter 2015	Unknown	2602	1072	0.09
26055	JoJo no Kimyou na Bouken Part 3: Stardust Crusaders 2nd Season	8.45	Action Adventure Supernatural Drama Shounen	24	Winter 2015	David Production	641298	555181	0.01
26085	Military!	5.82	Ecchi SliceofLife Comedy Military Seinen	12	Winter 2015	Creators in Pack	33892	20671	0.1
26087	Mama Ohanashi Kikasete	-1	Fantasy Kids	15	Spring 1987	Unknown	159	48	0.45
26089	Gutchonpa Omoshiro Hanashi	-1	Kids	5	Fall 1987	Unknown	136	41	0.46
26163	Ganbare! Lulu Lolo 2nd Season	-1	Kids SliceofLife	26	Fall 2014	Fanworks	237	66	0.42
26165	Yuri Kuma Arashi	7.08	Psychological Drama Fantasy School Seinen ShoujoAi	12	Winter 2015	SILVER LINK.	84385	32697	0.16
26243	Owari no Seraph	7.49	Action Military Supernatural Drama Vampire Shounen	12	Spring 2015	Wit Studio	888227	642719	0.03
26349	Danna ga Nani wo Itteiru ka Wakaranai Ken	7.38	SliceofLife Comedy Romance Seinen	13	Fall 2014	Seven	273464	195180	0.03
26351	Nagato Yuki-chan no Shoushitsu	6.73	Comedy Romance School Seinen SliceofLife	16	Spring 2015	Satelight	108383	50955	0.14
26395	Teekyuu 4	6.73	Comedy Shounen Sports	12	Spring 2015	Millepensee	18283	14086	0.02
26441	Junketsu no Maria	7.16	Comedy Historical Magic Romance Fantasy Seinen	12	Winter 2015	Production I.G	129451	68775	0.09
26443	Triage X	6.34	Action Adventure Ecchi Shounen	10	Spring 2015	Xebec	119192	65158	0.11
26453	Tribe Cool Crew	6.91	Music School	50	Fall 2014	Sunrise, Bandai Namco Pictures	4386	1269	0.35
27369	Eigo de Asobo: Tanken Goblin Tou	-1	Kids Adventure Fantasy Comedy	100	Spring 1990	Gallop	194	63	0.43
27393	Kyuumei Senshi Nanosaver	-1	Adventure Shounen	28	Spring 1997	Unknown	206	53	0.37
27441	Show By Rock!!	7.04	Comedy Music	12	Spring 2015	Bones	66565	27122	0.12
27451	Porong Porong Pororo 2	-1	Kids	52	Winter 2006	Unknown	262	143	0.23
27453	Pororo-wa Noraehaeyo	-1	Kids Music	14	Unknown	Unknown	191	94	0.28
27455	Porong Porong Pororo 3	-1	Kids Sci-Fi	52	Spring 2009	Unknown	249	138	0.23
27457	Porong Porong Pororo 4	-1	Cars Kids	26	Winter 2012	Unknown	263	131	0.28
27459	Porong Porong Pororo 5	-1	Kids Cars	26	Winter 2014	Unknown	262	132	0.27
27461	Pororo's English Show	-1	Kids Music	13	Unknown	Unknown	179	84	0.3
27467	Yoligongju Loopy	-1	Kids Magic	6	Unknown	Unknown	194	78	0.39
27519	Konna Watashitachi ga Nariyuki de Heroine ni Natta Kekka www (TV)	-1	Comedy Magic	12	Fall 2014	Unknown	472	123	0.31
27521	Gra-P & Rodeo	-1	Music Comedy	61	Fall 2014	Pie in the sky	323	74	0.41
27525	Fate/kaleid liner Prisma☆Illya 2wei Herz!	7.25	Action SliceofLife Comedy Magic Fantasy	10	Summer 2015	SILVER LINK.	106809	73011	0.02
27551	Deko Boko Friends	-1	Comedy Kids	61	Spring 2002	Unknown	188	60	0.36
27589	47 Todoufuken	5.59	Kids Comedy	26	Spring 2011	Pollyanna Graphics	373	164	0.28
27621	Glass no Kamen Desu ga to Z	6.09	Comedy Parody	14	Spring 2013	DLE	667	200	0.21
27629	Tantei Kageki Milky Holmes TD	6.45	Mystery Comedy SuperPower	12	Winter 2015	J.C.Staff, Nomad	7721	3519	0.12
27631	God Eater	7.3	Action Fantasy Military Sci-Fi	13	Summer 2015	ufotable	426616	242285	0.1
27655	Aldnoah.Zero 2nd Season	6.98	Action Mecha Sci-Fi Space	12	Winter 2015	A-1 Pictures, TROYCA	265556	210410	0.04
27663	Baby Steps 2nd Season	8.07	Sports Romance School Shounen	25	Spring 2015	Studio Pierrot	75937	58349	0.02
27681	Sasurai-kun	-1	SliceofLife Comedy	13	Spring 1992	Shin-Ei Animation	201	52	0.41
27687	Oshiri Kajiri Mushi (TV) 3rd Season	5.27	Comedy Kids	10	Fall 2014	Kinema Citrus	550	287	0.2
27693	Heart Cocktail	-1	Romance Seinen	77	Fall 1986	Unknown	734	123	0.22
27721	Kasumin	6.31	Fantasy Kids	26	Fall 2001	OLM	734	148	0.2
27723	Kasumin 2nd Season	-1	Kids Fantasy	26	Fall 2002	OLM	267	82	0.32
27727	Binan Koukou Chikyuu Boueibu LOVE!	6.89	SliceofLife Comedy Parody Magic School	12	Winter 2015	Diomedéa	70904	32910	0.18
27737	Battle Spirits: Burning Soul	6.71	Game	51	Spring 2015	Bandai Namco Pictures	3152	1128	0.19
27741	Shounen Hollywood: Holly Stage for 50	6.57	Music SliceofLife Shoujo	13	Winter 2015	Zexcs	5643	2381	0.12
27757	Anisava	5.69	SliceofLife Comedy Romance	13	Summer 2013	TMS Entertainment, DLE	589	265	0.27
27775	Plastic Memories	7.94	Sci-Fi Drama Romance	13	Spring 2015	Doga Kobo	643043	396899	0.05
27785	Doamaiger D	5.32	Action Comedy Mecha	13	Winter 2015	ILCA	1581	729	0.19
27787	Nisekoi:	7.39	Comedy Harem Romance School Shounen	12	Spring 2015	Shaft	500350	404576	0.02
27811	Zhong Hua Xiao Zi	6.24	Action Historical Demons Supernatural MartialArts Samurai	26	Unknown	Unknown	487	162	0.22
27815	Cardfight!! Vanguard G	6.52	Action Game Shounen	48	Fall 2014	TMS Entertainment	11747	7147	0.1
27829	Heavy Object	7.29	Action Military Sci-Fi Mecha	24	Fall 2015	J.C.Staff, SANZIGEN	128848	59739	0.14
27831	Durarara!!x2 Ten	8.01	Action Mystery Supernatural	12	Summer 2015	Shuka	312429	216764	0.01
27833	Durarara!!x2 Ketsu	8.1	Action Mystery Supernatural	12	Winter 2016	Shuka	297451	194936	0.02
27899	Tokyo Ghoul √A	7.07	Action Mystery Horror Psychological Supernatural Drama Seinen	12	Winter 2015	Studio Pierrot	1226168	1072579	0.03
27927	Urawa no Usagi-chan	5.39	SliceofLife Comedy School	12	Spring 2015	A-Real	13406	6200	0.16
27943	Nano Invaders	-1	Action Adventure Shounen SuperPower	52	Fall 2014	Unknown	989	104	0.29
27947	Lupin III (2015)	7.93	Action Adventure Comedy Mystery Seinen	24	Fall 2015	TMS Entertainment, Telecom Animation Film	49984	18493	0.06
27965	Maboroshi Mabo-chan	-1	Kids Adventure Fantasy	24	Spring 1992	Unknown	154	48	0.42
27989	Hibike! Euphonium	8	Music School Drama	13	Spring 2015	Kyoto Animation	329403	174405	0.04
27991	K: Return of Kings	7.63	Action SuperPower Supernatural	13	Fall 2015	GoHands	257638	166381	0.04
28013	Macross Δ	7.27	Action Military Sci-Fi Music Space Romance Mecha	26	Spring 2016	Satelight	62280	24479	0.1
28019	Slippy Dandy	-1	Action Kids Mystery	4	Summer 1987	Unknown	150	40	0.5
28025	Tsukimonogatari	8.14	Mystery Comedy Supernatural Ecchi	4	Fall 2014	Shaft	315680	229529	0
28071	Itsumo Kokoro ni Taiyou wo!	-1	Comedy Ecchi	16	Fall 1999	Studio Deen	691	195	0.21
28087	Ehon Yose	-1	Historical Horror Kids	50	Unknown	Unknown	275	62	0.41
28089	Oyo Neko Bunyan	-1	Comedy Kids	31	Spring 1984	Shin-Ei Animation	179	49	0.44
28121	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka	7.64	Action Adventure Comedy Romance Fantasy	13	Spring 2015	J.C.Staff	1075095	870168	0.02
28145	Johnny Cypher	-1	Action Adventure Sci-Fi	130	Fall 1968	Unknown	289	88	0.37
28155	Yoru no Yatterman	6.51	Action Adventure Comedy Drama	12	Winter 2015	Tatsunoko Production	29299	12811	0.22
28171	Shokugeki no Souma	8.29	Ecchi School Shounen	24	Spring 2015	J.C.Staff	1167795	889263	0.03
28201	Yeonghongibyeong Lazenca	-1	Action Adventure Mecha Sci-Fi	13	Unknown	Unknown	258	67	0.35
28207	Ketsuekigata-kun! 2	6.51	Comedy	12	Winter 2015	feel., Assez Finaud Fabric	4011	2722	0.04
28221	Etotama	6.85	Action Comedy Fantasy	12	Spring 2015	Shirogumi, Encourage Films	69647	29950	0.12
28223	Death Parade	8.2	Game Mystery Psychological Drama Thriller	12	Winter 2015	Madhouse	1213828	857277	0.03
28247	Pankis! 2-jigen	-1	Comedy Music	24	Winter 2015	DLE	548	120	0.38
28249	Arslan Senki (TV)	7.71	Action Adventure Drama Fantasy Historical Shounen	25	Spring 2015	SANZIGEN, LIDENFILMS	304409	164712	0.08
28283	Sengoku Musou	6.57	Action Historical Samurai	12	Winter 2015	TYO Animations	19654	8278	0.17
28297	Ore Monogatari!!	7.96	Comedy Romance Shoujo	24	Spring 2015	Madhouse	480559	267314	0.08
28387	Joukamachi no Dandelion	7.21	SliceofLife Comedy SuperPower Seinen	12	Summer 2015	Production IMS	132414	67321	0.08
28391	Ao no Kanata no Four Rhythm	6.71	Sci-Fi Sports Drama School	12	Winter 2016	Gonzo	126998	68176	0.13
28401	Q Transformers: Kaette Kita Convoy no Nazo	5.59	SliceofLife Parody Mecha	13	Winter 2015	DLE	865	328	0.22
28423	Kyoukai no Rinne (TV)	6.89	Comedy Supernatural Romance School Shounen	25	Spring 2015	Brain's Base	76435	31156	0.17
28497	Rokka no Yuusha	7.35	Action Adventure Fantasy Magic Mystery	12	Summer 2015	Passione	486940	343368	0.04
28537	Garo: Guren no Tsuki	5.89	Action Demons Fantasy Magic Supernatural	23	Fall 2015	MAPPA	26839	8589	0.25
28595	Pac-World	4.9	Adventure Comedy Sci-Fi	52	Spring 2014	OLM Digital	1292	677	0.24
28617	Punch Line	6.99	Comedy Ecchi Sci-Fi SuperPower Supernatural	12	Spring 2015	MAPPA	187203	95269	0.13
28619	Ranpo Kitan: Game of Laplace	6.61	Mystery	11	Summer 2015	Lerche	101423	51437	0.16
28621	Subete ga F ni Naru	7.27	Sci-Fi Mystery Psychological	11	Fall 2015	A-1 Pictures	138962	69992	0.09
28623	Koutetsujou no Kabaneri	7.26	Action Horror Supernatural Drama Fantasy	12	Spring 2016	Wit Studio	592987	395731	0.05
28669	Go! Princess Precure	7.7	Action SliceofLife Comedy Magic Fantasy School Shoujo	50	Winter 2015	Toei Animation	12545	5249	0.1
28677	Yamada-kun to 7-nin no Majo (TV)	7.65	Harem Mystery Comedy Supernatural Romance School Shounen	12	Spring 2015	LIDENFILMS	564446	418171	0.03
28701	Fate/stay night: Unlimited Blade Works 2nd Season	8.33	Action Fantasy Magic Supernatural	13	Spring 2015	ufotable	605173	506098	0.01
28735	Shouwa Genroku Rakugo Shinjuu	8.6	Drama Historical Josei	13	Winter 2016	Studio Deen	223244	84037	0.06
28791	Gunslinger Stratos The Animation	6.09	Action Sci-Fi	12	Spring 2015	A-1 Pictures	65623	34571	0.19
28817	Mikagura Gakuen Kumikyoku (TV)	6.71	Action Comedy School ShoujoAi	12	Spring 2015	Doga Kobo	77237	39429	0.11
28819	Okusama ga Seitokaichou!	6.66	Comedy Ecchi Romance School Shounen	12	Summer 2015	Seven	216982	151533	0.05
28825	Himouto! Umaru-chan	7.17	Comedy School Seinen SliceofLife	12	Summer 2015	Doga Kobo	494283	337956	0.06
28833	Chain Chronicle: Haecceitas no Hikari	6.66	Action Adventure Fantasy Magic	12	Winter 2017	Telecom Animation Film, Graphinica	91597	38963	0.12
28835	Tesagure! Bukatsumono Spin-off Purupurun Sharumu to Asobou	6.95	Parody School SliceofLife	12	Spring 2015	Yaoyorozu	3537	1478	0.14
28861	Takamiya Nasuno Desu!: Teekyuu Spin-off	6.44	SliceofLife Comedy Shounen	12	Spring 2015	Millepensee	12381	8523	0.06
28869	Kaitou Joker 2nd Season	7.22	Adventure Comedy Mystery Shounen	13	Spring 2015	Shin-Ei Animation	4970	3027	0.05
28883	Hidan no Aria AA	6.25	Action School ShoujoAi	12	Fall 2015	Doga Kobo	81092	44535	0.12
28887	Setsuzoku Muyou	-1	Comedy	26	Unknown	Unknown	165	22	0.56
28891	Haikyuu!! Second Season	8.73	Comedy Sports Drama School Shounen	25	Fall 2015	Production I.G	874150	736157	0.01
28907	Gate: Jieitai Kanochi nite, Kaku Tatakaeri	7.74	Action Adventure Fantasy Military	12	Summer 2015	A-1 Pictures	601037	441412	0.03
28921	Disney Tsum Tsum	6.03	Kids	36	Unknown	Polygon Pictures	831	143	0.3
28927	Owari no Seraph: Nagoya Kessen-hen	7.64	Action Military Supernatural Drama Vampire Shounen	12	Fall 2015	Wit Studio	537525	438214	0.02
28929	Vampire Holmes	3.38	Mystery Comedy Supernatural	12	Spring 2015	Studio! Cucuri	16417	6410	0.33
28977	Gintama°	9.1	Action Comedy Historical Parody Samurai Sci-Fi Shounen	51	Spring 2015	Bandai Namco Pictures	404121	167130	0.05
28979	To LOVE-Ru Darkness 2nd	7.51	Comedy Ecchi Harem Romance School Sci-Fi Shounen	12	Summer 2015	Xebec	193047	139229	0.02
28981	Ame-iro Cocoa	4.72	Comedy SliceofLife	12	Spring 2015	EMT Squared	23230	13038	0.14
28999	Charlotte	7.77	Drama School SuperPower	13	Summer 2015	P.A. Works	1057447	811977	0.03
29003	Lena Lena	-1	SliceofLife	13	Summer 2009	Unknown	201	44	0.41
29017	Wooser no Sono Higurashi: Mugen-hen	6.59	Comedy Fantasy SliceofLife	13	Summer 2015	SANZIGEN	4173	2544	0.08
29067	Danna ga Nani wo Itteiru ka Wakaranai Ken 2 Sure-me	7.39	Comedy Romance Seinen SliceofLife	13	Spring 2015	Seven	157773	129129	0.01
29095	Grisaia no Rakuen	7.86	Drama Harem Psychological Romance	10	Spring 2015	8bit	310138	230681	0.02
29099	Washimo 2nd Season	-1	Sci-Fi SliceofLife Comedy Kids School	24	Winter 2015	Studio Deen	232	67	0.44
29163	Sore ga Seiyuu!	7.05	SliceofLife Comedy	13	Summer 2015	Gonzo	44241	19118	0.1
29209	Tomodachi de Iyou ne	-1	Kids SliceofLife	26	Unknown	Unknown	120	34	0.45
29325	Koukaku Kidoutai Arise: Alternative Architecture	7.26	Sci-Fi Police Psychological Mecha	10	Spring 2015	Production I.G	36984	16850	0.06
29361	Kareshi wa Hammerhead Shark	-1	SliceofLife Comedy Kids	-1	Unknown	Kachidoki Studio	217	19	0.52
29367	Jam the Housnail	-1	Adventure Kids	15	Summer 1996	Unknown	161	50	0.36
29369	Tick & Tack	-1	Kids Fantasy	18	Summer 1998	Unknown	158	41	0.46
29371	Naccio to Pomm	-1	Adventure Kids Sci-Fi	41	Unknown	Unknown	128	34	0.43
29373	Bip to Bap	-1	Kids Adventure	4	Spring 2001	Unknown	170	48	0.39
29375	Robot Pulta	-1	Adventure Comedy Kids Mecha	-1	Spring 1995	Unknown	198	0	0.46
29385	Chii-chan to Hige Ojisan	-1	SliceofLife Kids	10	Summer 2004	Unknown	173	50	0.43
29387	Momonga-mon	-1	Adventure Kids	15	Summer 2005	Unknown	166	23	0.45
29389	Shiro Hon	-1	Adventure Kids	6	Spring 2007	Unknown	140	34	0.43
29399	Ousama Monogatari	-1	Adventure Kids	10	Spring 2007	Unknown	234	19	0.53
29401	Shiritori Oukoku	-1	Kids	3	Winter 2008	Unknown	146	42	0.44
29421	Liv & Bell	-1	Adventure Kids	-1	Winter 2013	Unknown	187	0	0.48
29425	Teach	-1	Adventure Music Kids	5	Unknown	Unknown	167	13	0.5
29427	Mori no Ratio	-1	Adventure Kids Fantasy	11	Spring 2010	Unknown	276	26	0.38
29429	Straw Byururu	-1	Adventure Kids Magic Fantasy	7	Spring 2010	Unknown	254	31	0.38
29431	Eddie the Fast Break	-1	Sports Kids	7	Unknown	Unknown	213	14	0.58
29433	Ken to Kaijuu	-1	Kids Magic Fantasy	6	Fall 2009	Unknown	153	44	0.36
29435	Ongaku Sekai Ryokou	-1	Music Kids	4	Spring 2011	Unknown	157	33	0.5
29467	Bubaga	-1	Kids Adventure	8	Spring 1995	Unknown	163	49	0.42
29469	Daisuki! Nendomama	-1	Kids SliceofLife Fantasy	9	Spring 1994	Unknown	155	48	0.45
29471	Saikin Ponta	-1	Kids SliceofLife	12	Spring 1994	Unknown	221	78	0.3
29473	Toko-chan Chokkin	-1	Kids SliceofLife Adventure Historical	3	Spring 1995	Unknown	137	38	0.47
29485	Talpy	-1	Kids Fantasy	13	Fall 2005	Unknown	140	32	0.46
29487	Paniponi	-1	SliceofLife Kids	48	Spring 1998	Unknown	170	40	0.46
29489	Karasu no Puuta	-1	Kids	2	Summer 1995	Unknown	140	40	0.46
29507	Hamster Sam	-1	Kids Music	4	Winter 1999	Unknown	146	46	0.46
29527	Kagee Mukashibanashi	-1	Adventure Demons Drama Fantasy Historical Kids Magic Romance Samurai Supernatural	65	Unknown	Unknown	264	60	0.41
29529	Kagee Aesop Monogatari	-1	Adventure Demons Drama Fantasy Historical Kids Magic Romance Supernatural	26	Unknown	Unknown	241	59	0.43
29589	Denpa Kyoushi (TV)	6.9	Comedy Romance School Shounen	24	Spring 2015	A-1 Pictures	129007	65118	0.17
29687	Duel Masters VSR	5.55	Action Adventure Comedy Shounen	51	Spring 2015	Ascension	1023	265	0.3
29715	Nar Doma	5.74	Comedy	26	Spring 2015	Kachidoki Studio	2479	164	0.39
29722	Eikoku Ikka, Nihon wo Taberu	6.37	Comedy SliceofLife	24	Spring 2015	Fanworks	1127	266	0.3
29738	Konchuu Monogatari Tentoumu Chu! to Mitsubachi Hatsu Chu!	-1	Music	10	Spring 2014	Tatsunoko Production	227	67	0.38
29740	Notteke Explet's	-1	Kids	26	Spring 2004	Unknown	135	35	0.49
29745	Korokoro Animal	-1	Kids	60	Spring 2007	Unknown	138	40	0.45
29746	Kaden Manzai John TV Show!	-1	Comedy	25	Spring 2008	Unknown	159	41	0.48
29747	Warai no Show Gakkou	-1	Kids Comedy	20	Spring 2009	Unknown	139	37	0.49
29748	Kabushiki Kaisha Zoo	-1	Kids Comedy	12	Winter 2010	Unknown	155	41	0.46
29758	Taboo Tattoo	5.79	Action Mystery Comedy SuperPower Supernatural MartialArts Seinen	12	Summer 2016	J.C.Staff	215902	115277	0.17
29759	Korokoro Animal 2	-1	Kids	63	Spring 2014	Unknown	142	39	0.47
29785	Jitsu wa Watashi wa	6.91	Comedy Supernatural Romance Vampire Fantasy School Shounen	13	Summer 2015	TMS Entertainment, 3xCube	196274	125484	0.06
29786	Shimoneta to Iu Gainen ga Sonzai Shinai Taikutsu na Sekai	7.33	Comedy Ecchi School	12	Summer 2015	J.C.Staff	557478	383747	0.04
29787	Gochuumon wa Usagi Desu ka??	7.82	SliceofLife Comedy	12	Fall 2015	Kinema Citrus, White Fox	100082	58148	0.03
29803	Overlord	7.96	Action Adventure Fantasy Game Magic Supernatural	13	Summer 2015	Madhouse	1039944	794635	0.03
29836	Akuei to Gacchinpo	-1	Kids Comedy	13	Fall 2004	Unknown	240	93	0.35
29843	Akuei to Gacchinpo: Tenkomori	-1	Kids Comedy	12	Winter 2005	Unknown	226	75	0.4
29844	Nekoronde TV.	-1	Comedy	12	Unknown	Unknown	128	44	0.4
30411	Happy Jozy	-1	Comedy	52	Spring 2015	Kachidoki Studio	422	38	0.56
29846	Omakase! Miracle Cat-dan	-1	Comedy Kids SuperPower	32	Spring 2015	OLM Digital	378	55	0.42
29854	Ushio to Tora (TV)	7.6	Action Adventure Comedy Demons Shounen Supernatural	26	Summer 2015	MAPPA, Studio VOLN	180420	98249	0.09
29865	BAR Kiraware Yasai	5.07	Comedy	13	Spring 2015	Gathering	2382	740	0.3
29941	Million Doll	4.81	Music	11	Summer 2015	Asahi Production	10350	4774	0.24
29974	Diabolik Lovers More,Blood	5.66	Harem School Shoujo Vampire	12	Fall 2015	Zexcs	103705	74983	0.06
29976	Dance with Devils	6.36	Harem Demons Supernatural Romance Vampire Shoujo	12	Fall 2015	Brain's Base	93065	55284	0.11
30015	ReLIFE	8.03	SliceofLife Romance School	13	Summer 2016	TMS Entertainment	717580	503190	0.03
30016	Nanbaka	7.34	Action Comedy Drama	13	Fall 2016	Satelight	233884	126706	0.1
30025	Otenki Boys	-1	SuperPower Kids	30	Spring 1991	Unknown	133	37	0.46
30026	Ekubo Ouji	-1	Comedy Kids	50	Spring 1991	Unknown	145	47	0.45
30027	Meisaku World	-1	Adventure Fantasy Historical Kids Magic Supernatural	39	Spring 1988	Unknown	148	42	0.46
30028	Sekai Meisaku Douwa Series	-1	Adventure Fantasy Historical Kids Magic Supernatural	4	Spring 1988	Toei Animation	308	98	0.34
30030	Jewelpet Magical Change	6.39	Comedy Fantasy Magic Shoujo	39	Spring 2015	Studio Deen	2050	522	0.21
30034	Dolittle-sensei Monogatari	-1	Kids Adventure	13	Winter 1998	Unknown	194	59	0.39
30039	Future Card Buddyfight Hundred	6.64	Game	50	Spring 2015	Xebec, OLM	3919	2305	0.1
30048	Kkurukkuru-wa Chingu-deul	-1	Adventure SliceofLife Comedy Kids	13	Fall 2006	Unknown	148	42	0.45
30057	Mabeobsa-ui Adeul Cory	-1	Adventure Comedy Fantasy	13	Unknown	Unknown	122	41	0.41
30060	Chi Jian Chuanqi	-1	Action Adventure Fantasy	26	Unknown	Unknown	184	54	0.42
30091	Chaos Dragon: Sekiryuu Seneki	5.66	Action Fantasy Supernatural	12	Summer 2015	SILVER LINK., Connect	96810	42748	0.25
30116	Yancharu Moncha	-1	Kids	80	Spring 1999	Unknown	152	44	0.45
30117	Monpy	-1	Kids Adventure	18	Unknown	Unknown	112	32	0.44
30118	Futari wa Nakayoshi: Goo to Sue	-1	Kids SliceofLife	84	Spring 1991	Unknown	152	50	0.45
30119	Yowamushi Monsters	-1	Kids	-1	Winter 2013	Unknown	226	0	0.59
30120	Spoon-hime no Swing Kitchen	-1	Adventure Kids	34	Spring 1997	Unknown	149	33	0.53
30121	Fushigina Ano Ko wa Sutekina Kono Ko	-1	Adventure Kids	154	Spring 1994	Unknown	145	42	0.46
30123	Akagami no Shirayuki-hime	7.79	Fantasy Romance Drama Shoujo	12	Summer 2015	Bones	459085	289725	0.05
30127	Danchigai	6.54	Comedy SliceofLife	12	Summer 2015	Creators in Pack	89570	57528	0.04
30129	Konna Ko Iru kana	-1	Kids	-1	Spring 1986	Unknown	133	34	0.47
30131	Uwabaki Cook	-1	Kids	13	Winter 2015	Unknown	217	59	0.49
30138	Rusuden Hour: Sodan Brothers	-1	Comedy	25	Spring 2005	Unknown	166	42	0.35
30140	Xing Mao Lixian Ji Zhi Shu Fa Pian	-1	Kids Adventure	26	Unknown	Unknown	150	34	0.57
30144	Nyuru Nyuru!! Kakusen-kun 2nd Season	-1	Comedy	13	Spring 2015	DLE	378	110	0.37
30151	Kamiusagi Rope: Warau Asa ni wa Fukuraitaru tte Maji ssuka!?	-1	SliceofLife Comedy	-1	Fall 2012	Unknown	700	1	0.54
30156	Ba La La Xiao Mo Xian Zhi: Meng Huan Xuan Lu	6.19	Comedy Magic Shoujo	52	Winter 2015	Unknown	1134	234	0.27
30173	Fruity Samurai	5.83	Action Comedy Samurai Historical	13	Unknown	Unknown	480	152	0.2
30187	Sakurako-san no Ashimoto ni wa Shitai ga Umatteiru	7.43	Drama Mystery Thriller	12	Fall 2015	TROYCA	174026	92578	0.08
30205	Aoharu x Kikanjuu	7.18	Action Comedy Sports Shounen	12	Summer 2015	Brain's Base	184467	113669	0.08
30223	Shishou Series	-1	Horror Supernatural School Seinen	-1	Unknown	Pierrot Plus	6184	0	-1
30230	Diamond no Ace: Second Season	8.32	Comedy Sports School Shounen	51	Spring 2015	Production I.G, Madhouse	101140	69213	0.02
30232	Tamagotchi! Tamatomo Daishuu GO	-1	Comedy Fantasy Kids	26	Spring 2015	OLM	416	102	0.36
30240	Prison School	7.71	Comedy Ecchi Romance School Seinen	12	Summer 2015	J.C.Staff	696018	515188	0.05
30251	Venus Project: Climax	5.36	Action Music	6	Summer 2015	Nomad	6262	1882	0.23
30276	One Punch Man	8.57	Action Sci-Fi Comedy Parody SuperPower Supernatural	12	Fall 2015	Madhouse	2123866	1841220	0.01
30279	Yuru Yuri San☆Hai!	7.95	Comedy School ShoujoAi SliceofLife	12	Fall 2015	TYO Animations	98734	68218	0.02
30291	Mini Hama: Minimum Hamatora	6.31	Comedy Mystery School Shounen SuperPower	8	Fall 2015	Lerche	3841	1211	0.09
30296	Rakudai Kishi no Cavalry	7.53	Action Romance Ecchi Fantasy School	12	Fall 2015	SILVER LINK., Nexus	644218	497433	0.03
30307	Monster Musume no Iru Nichijou	7.08	Harem Comedy Romance Ecchi Fantasy Seinen	12	Summer 2015	Lerche	539332	398230	0.06
30342	Funassyi no Funafunafuna Biyori	-1	Comedy Kids SliceofLife	130	Spring 2015	Asahi Production	274	67	0.41
30344	The iDOLM@STER Cinderella Girls 2nd Season	7.35	Comedy Drama Music	12	Summer 2015	A-1 Pictures	30697	19119	0.03
30355	Wakaba*Girl	6.9	Comedy School SliceofLife	13	Summer 2015	Nexus	36887	20758	0.08
30363	Shinmai Maou no Testament Burst	6.91	Action Ecchi Fantasy Romance Harem Demons	10	Fall 2015	Production IMS	277156	211758	0.03
30375	Starmyu	6.93	Music School SliceofLife	12	Fall 2015	C-Station	38719	18854	0.11
30382	Aquarion Logos	5.72	Action Comedy Drama Fantasy Mecha Romance Sci-Fi	26	Summer 2015	Satelight	19718	6541	0.26
30383	Classroom☆Crisis	7.04	Drama Romance School Sci-Fi	13	Summer 2015	Lay-duce	101165	48416	0.15
30384	Miss Monochrome The Animation 2	6.5	Music SliceofLife Comedy	13	Summer 2015	SANZIGEN, LIDENFILMS	17722	11262	0.05
30385	Valkyrie Drive: Mermaid	6.12	Action Ecchi Fantasy ShoujoAi	12	Fall 2015	Arms	104160	50204	0.15
30386	Pikaia!	6.03	Drama Kids SliceofLife	13	Spring 2015	Production I.G, OLM	1004	184	0.26
30409	Nepos Napos	-1	Kids Fantasy	26	Winter 2005	The Answer Studio	144	41	0.43
30410	Gon 2nd Season	-1	Action Adventure Kids	26	Spring 2015	Daewon Media	383	160	0.26
30417	Panpaka Pants O-New!	-1	Comedy Kids	26	Spring 2015	DLE	297	63	0.41
30437	Wakako-zake	6.64	Seinen SliceofLife	12	Summer 2015	Office DCI	33025	22639	0.06
30470	Himitsukessha Taka no Tsume DO	-1	Comedy Parody SuperPower	38	Spring 2015	DLE	333	88	0.41
30484	Steins;Gate 0	8.51	Sci-Fi Thriller	23	Spring 2018	White Fox	590847	294077	0.03
30485	ChäoS;Child	6.39	Sci-Fi Mystery Psychological Supernatural	12	Winter 2017	SILVER LINK.	108167	41691	0.13
30503	Noragami Aragoto	8.22	Action Adventure Comedy Supernatural Shounen	13	Fall 2015	Bones	1039422	838883	0.01
30519	Ba La La Xiao Mo Xian Zhi: Caihong Xin Shi	6.03	Comedy Magic Shoujo	36	Spring 2011	Unknown	1109	282	0.24
30524	Kagewani	6.42	Horror Mystery Supernatural Thriller	13	Fall 2015	Tomovies	28332	13404	0.18
30544	Gakusen Toshi Asterisk	6.9	Action Comedy Ecchi Fantasy Harem Romance School Sci-Fi Supernatural	12	Fall 2015	A-1 Pictures	480569	363893	0.05
30549	Soukyuu no Fafner: Dead Aggressor - Exodus 2nd Season	7.63	Action Drama Mecha Military Sci-Fi	13	Fall 2015	Xebec, I.Gzwei	12408	6378	0.04
30567	Teekyuu 5	6.72	Comedy Shounen Sports	12	Summer 2015	Millepensee	15972	12112	0.01
30602	Great Hunt	-1	Comedy Music	19	Unknown	Fanworks	184	61	0.36
30605	Uwabaki Cook no Tekitou Uranai!	-1	Comedy	125	Winter 2015	Unknown	256	69	0.49
30649	Shin Atashin'chi	7.19	SliceofLife Comedy	26	Fall 2015	Shin-Ei Animation	2522	1124	0.19
30651	Itoshi no Muco	6.79	SliceofLife Comedy	25	Fall 2015	DLE	6454	2401	0.27
30652	Long Riders!	6.64	SliceofLife Comedy Sports Shounen	12	Fall 2016	Actas	22789	9081	0.19
30654	Ansatsu Kyoushitsu 2nd Season	8.54	Action Comedy School Shounen	25	Winter 2016	Lerche	899476	701408	0.02
30694	Dragon Ball Super	7.42	Action Adventure Comedy SuperPower MartialArts Fantasy Shounen	131	Summer 2015	Toei Animation	536891	345941	0.06
30705	Makura no Danshi	4.51	SliceofLife	12	Summer 2015	feel.	34260	21596	0.15
30721	Hacka Doll The Animation	6.41	Comedy Sci-Fi	13	Fall 2015	Creators in Pack	39885	18408	0.12
30727	Saenai Heroine no Sodatekata ♭	7.8	Harem Comedy Romance Ecchi School	11	Spring 2017	A-1 Pictures	239492	151829	0.03
30736	Shingeki no Bahamut: Virgin Soul	7.47	Action Adventure Demons Supernatural Magic Fantasy	24	Spring 2017	MAPPA	188396	83837	0.07
30740	Young Black Jack	7.24	Historical Drama Seinen	12	Fall 2015	Tezuka Productions	71112	36127	0.14
30746	Fushigi na Somera-chan	5.88	Comedy Magic SliceofLife	12	Fall 2015	Seven	11703	7068	0.11
30749	Saijaku Muhai no Bahamut	6.62	Action Harem Supernatural Romance Ecchi Fantasy Mecha School	12	Winter 2016	Lerche	279062	187712	0.06
30751	Usavich Zero	6.05	Comedy	13	Spring 2015	Kanaban Graphics	1395	803	0.09
30777	Kaijuu Sakaba Kanpai!	-1	Comedy Supernatural	13	Summer 2015	DLE	479	123	0.35
30782	Bikini Warriors	5.16	Comedy Ecchi Fantasy Parody	12	Summer 2015	feel.	67825	39363	0.13
30795	Bakuon!!	6.48	Comedy Seinen SliceofLife	12	Spring 2016	TMS Entertainment	52027	23011	0.19
30806	Schwarzesmarken	6.79	Action Military Sci-Fi Historical Drama Mecha	12	Winter 2016	ixtl, LIDENFILMS	93098	44425	0.14
30826	Suzakinishi The Animation	5.42	SliceofLife Comedy	12	Summer 2015	feel.	4459	1120	0.28
30831	Kono Subarashii Sekai ni Shukufuku wo!	8.15	Adventure Comedy Fantasy Magic Parody Supernatural	10	Winter 2016	Studio Deen	1290898	1041324	0.02
30851	Q Transformers: Saranaru Ninki Mono e no Michi	5.75	SliceofLife Parody Mecha	13	Summer 2015	DLE	579	220	0.27
30875	Washimo 3rd Season	-1	Comedy Kids School Sci-Fi SliceofLife	44	Spring 2015	Studio Deen	208	58	0.5
30892	Boo Boo Boy	-1	Cars Kids	26	Summer 2015	DLE	289	83	0.43
30893	Deban Desu Yo! Onigirizu	-1	Comedy	6	Summer 2015	Production Reed	296	93	0.39
30895	HaruChika: Haruta to Chika wa Seishun suru	6.36	Music SliceofLife Mystery Romance School	12	Winter 2016	P.A. Works	76925	31160	0.23
30901	Utawarerumono: Itsuwari no Kamen	7.27	Action Drama Fantasy	25	Fall 2015	White Fox	91255	45155	0.1
30906	Malta no Bouken	-1	Kids SliceofLife	12	Unknown	Unknown	118	39	0.41
30911	Tales of Zestiria the Cross	7.31	Action Adventure Magic Fantasy	12	Summer 2016	ufotable	267050	148708	0.07
30947	Kurayami Santa	5.24	Historical Supernatural	13	Summer 2015	ILCA	2451	1101	0.19
30948	Kowabon	5.24	Horror	13	Fall 2015	ILCA	29685	13008	0.2
30989	Bary-san no Imabari-ben Kouza	-1	Comedy	47	Summer 2015	Kachidoki Studio	499	64	0.48
31018	DD Hokuto no Ken 2 Ichigo Aji+	5.9	Comedy Parody School Seinen	12	Fall 2015	Ajia-Do	2961	1196	0.21
31019	Norasco (TV)	-1	SliceofLife Comedy	43	Spring 2014	Kachidoki Studio	254	47	0.51
31043	Boku dake ga Inai Machi	8.37	Mystery Psychological Supernatural Seinen	12	Winter 2016	A-1 Pictures	1359119	1071295	0.01
31044	Kamisama Minarai: Himitsu no Cocotama	6.01	Fantasy Kids Magic SliceofLife	139	Fall 2015	OLM	2439	214	0.29
31049	Beyblade Burst	6.33	Action Sci-Fi Adventure Sports Shounen	51	Spring 2016	OLM	16599	9803	0.14
31054	Letchu, Getchu, Saru Getchu	-1	Comedy	76	Spring 2002	Unknown	324	119	0.27
31068	Hime Chen! Otogi Chikku Idol Lilpri (2011)	6.66	Magic Shoujo	51	Spring 2011	Telecom Animation Film	1527	839	0.12
31071	Kinyoru, Abe Reiji: Heikinteki na Salaryman no Ijou na Nichijou	-1	Comedy	5	Summer 2015	DLE	427	119	0.31
31078	PikkaPika Summer	-1	Unknown	31	Summer 2015	Unknown	199	36	0.55
31080	Anne Happy♪	6.98	SliceofLife Comedy School	12	Spring 2016	SILVER LINK.	62371	32408	0.11
31091	Komori-san wa Kotowarenai!	6.26	SliceofLife Comedy School	12	Fall 2015	Artland	51357	31663	0.06
31098	Ushio to Tora (TV) 2nd Season	7.95	Action Adventure Comedy Demons Supernatural Shounen	13	Spring 2016	MAPPA, Studio VOLN	104734	71517	0.03
31109	Hatsukoi Monster	5.61	Comedy Romance School Shoujo	12	Summer 2016	Studio Deen	85383	34829	0.24
31139	Ame-iro Cocoa: Rainy Color e Youkoso!	4.8	SliceofLife Comedy	12	Fall 2015	EMT Squared	9350	5808	0.09
31898	Robocar Poli	-1	Kids Cars Comedy	26	Winter 2011	Unknown	272	135	0.28
31143	Onsen Yousei Hakone-chan	5.86	SliceofLife Comedy	13	Fall 2015	Production Reed, Asahi Production	26107	16447	0.11
31147	Concrete Revolutio: Choujin Gensou	6.71	Action Demons Drama Fantasy Mystery Sci-Fi SuperPower Supernatural	13	Fall 2015	Bones	75266	26572	0.21
31150	Xi Yang Yang Yu Hui Tai Lang	6.03	Adventure Comedy Kids	-1	Unknown	Unknown	442	1	0.49
31157	ClassicaLoid	6.41	Comedy Music	25	Fall 2016	Sunrise	22482	4836	0.39
31163	Dimension W	7.22	Action Sci-Fi Seinen	12	Winter 2016	Orange, Studio 3Hz	253127	148558	0.08
31173	Akagami no Shirayuki-hime 2nd Season	8	Drama Romance Fantasy Shoujo	12	Winter 2016	Bones	247889	182447	0.02
31174	Osomatsu-san	8.02	Comedy Parody	25	Fall 2015	Studio Pierrot	140962	60972	0.12
31177	Yakyuubu Aruaru	-1	Sports	3	Summer 2015	Unknown	294	78	0.45
31178	Uta no☆Prince-sama♪ Maji Love Legend Star	7.19	Harem Music Comedy Romance Shoujo	13	Fall 2016	A-1 Pictures	32859	16976	0.05
31181	Owarimonogatari	8.46	Mystery Comedy Supernatural Vampire	12	Fall 2015	Shaft	356371	218734	0.02
31196	Cardfight!! Vanguard G: GIRS Crisis-hen	6.67	Action Game Shounen	26	Fall 2015	TMS Entertainment	7708	4930	0.05
31211	Choegang Top Plate	-1	Action Kids Sports Comedy	26	Fall 2013	Unknown	340	127	0.28
31221	Tantei Team KZ Jiken Note	6.21	Mystery School	16	Fall 2015	Signal.MD	12870	6204	0.2
31223	Phantasy Star Online 2 The Animation	6.35	Action Game Sci-Fi School	12	Winter 2016	Telecom Animation Film	58803	31244	0.13
31227	Kindaichi Shounen no Jikenbo Returns 2nd Season	7.67	Mystery Shounen	22	Fall 2015	Toei Animation	8592	4464	0.05
31229	Servamp	6.93	Action Comedy Supernatural Drama Vampire Josei	12	Summer 2016	Brain's Base, Platinum Vision	200532	106708	0.12
31237	Ganbare-bu Next!	-1	Comedy Sports	6	Summer 2015	Doga Kobo	211	52	0.5
31239	Kotori Samba	-1	Music Comedy	240	Spring 2015	Unknown	243	80	0.44
31240	Re:Zero kara Hajimeru Isekai Seikatsu	8.29	Psychological Drama Thriller Fantasy	25	Spring 2016	White Fox	1478842	1130438	0.03
31246	Choegang Habche: Mix Master	6.2	Adventure Fantasy	39	Spring 2010	Unknown	565	185	0.22
31251	Mobile Suit Gundam: Iron-Blooded Orphans	8.02	Action Drama Mecha Sci-Fi Space	25	Fall 2015	Sunrise	165393	99290	0.05
31318	Comet Lucifer	5.86	Action Adventure Fantasy Mecha	12	Fall 2015	8bit	97175	45551	0.23
31338	Hundred	6.37	Action Sci-Fi Harem Romance Ecchi Mecha School	12	Spring 2016	Production IMS	272970	188107	0.07
31339	Drifters	7.94	Action Adventure Comedy Historical Samurai Fantasy Seinen	12	Fall 2016	Hoods Drifters Studio	410926	252770	0.05
31361	Neko Enikki	-1	Comedy SliceofLife	13	Summer 2015	Kachidoki Studio	300	46	0.51
31370	Tonkatsu DJ Agetarou	7.15	Music Comedy Shounen	12	Spring 2016	Studio Deen	11728	6312	0.12
31374	Shingeki! Kyojin Chuugakkou	7.05	Comedy Parody School Shounen	12	Fall 2015	Production I.G	155636	101266	0.09
31376	Flying Witch	7.53	SliceofLife Comedy Supernatural Magic Shounen	12	Spring 2016	J.C.Staff	212236	102799	0.09
31404	Netoge no Yome wa Onnanoko ja Nai to Omotta?	6.83	Game Comedy Romance Ecchi School	12	Spring 2016	Project No.9	383098	252350	0.06
31405	Joker Game	7.06	Military Historical Drama	12	Spring 2016	Production I.G	179990	85417	0.15
31410	Mini Van 2nd Season	6.22	Game SliceofLife Comedy Parody	26	Fall 2015	DLE	804	202	0.26
31414	Nijiiro Days	7.34	Comedy Romance School Shoujo SliceofLife	24	Winter 2016	Production Reed	166254	92973	0.06
31417	Binan Koukou Chikyuu Boueibu LOVE! LOVE!	7.05	SliceofLife Comedy Parody Magic School	12	Summer 2016	Studio Comet	24302	11814	0.1
31422	Minami Kamakura Koukou Joshi Jitenshabu	6.25	Sports School Shounen	12	Winter 2017	J.C.Staff, A.C.G.T.	16918	6660	0.22
31427	Zinba	6.68	Action Adventure Comedy SuperPower Demons Magic	52	Summer 2013	Unknown	1018	384	0.15
31430	Terra Formars: Revenge	6.73	Action Sci-Fi Space Horror Drama Seinen	13	Spring 2016	TYO Animations, LIDENFILMS	74985	49923	0.1
31433	Ginga Eiyuu Densetsu: Die Neue These - Kaikou	7.7	Action Drama Military Sci-Fi Space	12	Spring 2018	Production I.G	63633	27892	0.08
31439	Wagamama High Spec	5.41	Comedy School	12	Spring 2016	AXsiZ	29915	15302	0.14
31440	Teekyuu 6	6.63	Comedy Shounen Sports	12	Fall 2015	Millepensee	14120	10679	0.02
31442	Musaigen no Phantom World	6.89	Action Comedy Fantasy SliceofLife Supernatural	13	Winter 2016	Kyoto Animation	392009	226569	0.1
31445	Minna Atsumare! Falcom Gakuen 3rd Season	-1	Comedy Parody School Seinen	-1	Unknown	Unknown	711	0	-1
31452	Norn9: Norn+Nonet	6.56	Sci-Fi Adventure Romance Fantasy Josei	12	Winter 2016	Kinema Citrus	71268	31732	0.17
31456	Code:Realize - Sousei no Himegimi	6.65	Military Harem Historical Romance Fantasy Josei	12	Fall 2017	M.S.C	66070	23463	0.19
31464	Pichiko Dakyuubu	-1	Comedy Sports	29	Unknown	DLE	142	53	0.4
31478	Bungou Stray Dogs	7.79	Action Comedy Mystery Seinen SuperPower Supernatural	12	Spring 2016	Bones	792435	497596	0.04
31498	Pan de Peace!	5.62	SliceofLife Comedy School	13	Spring 2016	Asahi Production	28014	15535	0.16
31500	High School Fleet	7.3	Action Military School	12	Spring 2016	Production IMS	85720	43350	0.08
31517	Ohayou Ninja-tai Gatchaman	-1	Comedy Parody	475	Spring 2011	Unknown	571	167	0.31
31519	Anitore! EX	5.43	Comedy Sports	12	Fall 2015	Rising Force	27588	13474	0.13
31534	Larva	5.68	Comedy	26	Spring 2011	Unknown	1011	702	0.13
31537	Manaria Friends	6.63	Demons Fantasy Magic Supernatural	10	Winter 2019	CygamesPictures	90171	28241	0.14
31539	Kyoufu! Zombie Neko	-1	Comedy	52	Fall 2015	Kachidoki Studio	1096	64	0.44
31540	Sekkou Boys	6.29	Music Comedy	12	Winter 2016	LIDENFILMS	45518	22074	0.19
31547	Ryouma 30 Seconds	-1	Historical	5	Summer 2009	Unknown	172	40	0.39
31549	Peeping Life TV: Season 1??	5.68	Comedy SliceofLife	12	Fall 2015	Tatsunoko Production, CoMix Wave Films, FOREST Hunting One	2218	714	0.4
31555	Doushitemo Eto ni Hairitai	-1	Comedy	13	Fall 2015	Pollyanna Graphics	363	93	0.38
31559	Prince of Stride: Alternative	6.91	Sports Drama School	12	Winter 2016	Madhouse	144075	81521	0.13
31560	Miss Monochrome The Animation 3	6.54	Music SliceofLife Comedy	13	Fall 2015	SANZIGEN, LIDENFILMS	12830	8395	0.03
31562	Neko no Dayan: Nihon e Iku	-1	Kids	12	Fall 2015	Kachidoki Studio	275	61	0.46
31564	Sansha Sanyou	7.12	SliceofLife Comedy School	12	Spring 2016	Doga Kobo	53242	22668	0.1
31566	Ketsuekigata-kun! 3	6.39	Comedy	12	Fall 2015	feel., Zexcs, Assez Finaud Fabric	2815	1752	0.05
31573	Brave Beats	6.44	Adventure Music	22	Fall 2015	Bandai Namco Pictures	3906	1512	0.25
31578	JK Meshi!	4.62	Comedy	26	Fall 2015	Kyotoma, Office Nobu	10051	3735	0.32
31580	Ajin	7.49	Action Mystery Horror Supernatural Seinen	13	Winter 2016	Polygon Pictures	446881	280192	0.07
31588	All Out!!	7.09	School Seinen Sports	25	Fall 2016	Madhouse, TMS Entertainment	89453	44516	0.15
31592	Pokemon XY&Z	7.63	Action Adventure Comedy Kids Fantasy	47	Fall 2015	OLM	82010	65118	0.03
31610	Kyoukai no Rinne (TV) 2nd Season	7.18	Comedy Supernatural Romance School Shounen	25	Spring 2016	Brain's Base	29583	14699	0.07
31621	Ooyasan wa Shishunki!	6.56	Comedy SliceofLife	12	Winter 2016	Seven Arcs Pictures	41475	28032	0.05
31629	Granblue Fantasy The Animation	6.7	Adventure Fantasy	13	Spring 2017	A-1 Pictures	144869	63855	0.12
31630	Gyakuten Saiban: Sono "Shinjitsu", Igi Ari!	6.45	Comedy Drama Mystery Police	24	Spring 2016	A-1 Pictures	107475	39563	0.27
31631	Monster Hunter Stories: Ride On	6.21	Fantasy	75	Fall 2016	David Production	13267	1364	0.4
31633	Sushi Police	4.67	Comedy Police	13	Winter 2016	KOO-KI	11985	4338	0.35
31636	Dagashi Kashi	6.63	Comedy Shounen SliceofLife	12	Winter 2016	feel.	337656	173115	0.15
31637	Gate: Jieitai Kanochi nite, Kaku Tatakaeri 2nd Season	7.77	Action Military Adventure Fantasy	12	Winter 2016	A-1 Pictures	413838	335209	0.02
31640	Fuusen Inu Tinny 2nd Season	-1	Adventure Kids	26	Fall 2015	Steve N' Steven	211	53	0.49
31646	3-gatsu no Lion	8.43	Drama Game Seinen SliceofLife	22	Fall 2016	Shaft	461713	208655	0.05
31670	Kaitou Joker 3rd Season	7.19	Adventure Comedy Mystery Shounen	13	Spring 2016	Shin-Ei Animation	3919	2173	0.06
31673	Larva 2nd Season	6.03	Comedy	34	Winter 2013	Unknown	641	466	0.12
31674	Larva 3rd Season	6.14	Comedy	26	Unknown	Unknown	397	284	0.12
31680	Super Lovers	7.08	SliceofLife Comedy Drama Romance ShounenAi	10	Spring 2016	Studio Deen	103020	73494	0.07
31691	San Mao Liu Lang Ji	-1	Comedy Historical Kids	25	Unknown	Unknown	180	69	0.35
31692	Gogulyeoui Jeolm-eun Musadeul	-1	Historical	7	Unknown	Unknown	116	32	0.42
31696	Witch Village Story	-1	SliceofLife	24	Winter 2005	Unknown	159	51	0.41
31698	Zhan Long Si Qu	-1	Kids Cars	64	Unknown	Unknown	316	133	0.28
31699	Good Morning!!! Doronjo	-1	Comedy Parody	243	Spring 2015	Oddjob	450	128	0.34
31700	Xiao Taiji	-1	Action Kids MartialArts	14	Unknown	Unknown	165	45	0.49
31701	Wu Lan Qi Qi Ge	-1	Historical Kids	26	Unknown	Unknown	152	30	0.52
31706	Fate/kaleid liner Prisma☆Illya 3rei!!	7.55	Action Comedy Fantasy Magic	12	Summer 2016	SILVER LINK.	93262	60845	0.02
31710	Divine Gate	5.6	Action Sci-Fi Fantasy	12	Winter 2016	Studio Pierrot	144029	68851	0.22
31716	Rewrite	6.69	Action Comedy Supernatural Romance School	13	Summer 2016	8bit	170193	92343	0.1
31722	Nanatsu no Taizai: Seisen no Shirushi	7.12	Action Adventure Ecchi Fantasy Magic Shounen Supernatural	4	Summer 2016	A-1 Pictures	475981	400113	0.01
31733	Bishoujo Senshi Sailor Moon Crystal Season III	7.72	Demons Magic Romance Shoujo	13	Spring 2016	Toei Animation	41548	26846	0.03
31737	Gakusen Toshi Asterisk 2nd Season	7.08	Sci-Fi Harem Comedy Supernatural Romance Ecchi Fantasy School	12	Spring 2016	A-1 Pictures	316957	253641	0.02
31741	Magi: Sinbad no Bouken (TV)	7.91	Action Adventure Fantasy Magic Shounen	13	Spring 2016	Lay-duce	343441	249682	0.02
31746	Dochamon Junior	-1	Comedy Kids	16	Fall 2015	Unknown	228	71	0.39
31747	Oshiri Kajiri Mushi (TV) 4th Season	5.34	Comedy Kids	10	Fall 2015	Kinema Citrus	453	232	0.24
31753	Ganbare! Lulu Lolo 3rd Season	-1	Kids SliceofLife	10	Winter 2016	Fanworks	240	52	0.47
31764	Nejimaki Seirei Senki: Tenkyou no Alderamin	7.73	Action Adventure Fantasy Military	13	Summer 2016	Madhouse	245963	161838	0.04
31771	Amanchu!	7.27	SliceofLife Comedy School Shounen	12	Summer 2016	J.C.Staff	80435	32889	0.13
31777	Neko nanka Yondemo Konai.	6.03	SliceofLife Seinen	12	Fall 2015	Unknown	1335	529	0.11
31783	Yowamushi Pedal: New Generation	7.69	Comedy Sports Drama Shounen	25	Winter 2017	TMS Entertainment	59843	36138	0.04
31790	Active Raid: Kidou Kyoushuushitsu Dai Hachi Gakari	5.88	Comedy Mecha Police Sci-Fi	12	Winter 2016	Production IMS, Orange	53679	20511	0.29
31793	Mahou Shoujo Nante Mou Ii Desukara.	5.94	Comedy Magic	12	Winter 2016	Pine Jam	22093	13060	0.1
31798	Kiznaiver	7.43	Sci-Fi Drama Romance	12	Spring 2016	Trigger	540306	330845	0.06
31804	Kuma Miko	6.3	SliceofLife Comedy Seinen	12	Spring 2016	Kinema Citrus, EMT Squared	65017	30450	0.17
31815	Kono Danshi, Mahou ga Oshigoto Desu.	7.04	Magic Fantasy ShounenAi	4	Winter 2016	CoMix Wave Films	22151	15509	0.03
31821	Arslan Senki (TV): Fuujin Ranbu	7.53	Action Adventure Historical Supernatural Drama Fantasy Shounen	8	Summer 2016	LIDENFILMS	116095	84300	0.02
31845	Masou Gakuen HxH	6.18	Action Sci-Fi Harem Comedy Romance Ecchi Fantasy School	12	Summer 2016	Production IMS	205337	118431	0.1
31848	Ojisan to Marshmallow	6.6	SliceofLife Comedy Romance	12	Winter 2016	Creators in Pack	53706	37829	0.06
31859	Hai to Gensou no Grimgar	7.69	Action Adventure Drama Fantasy	12	Winter 2016	A-1 Pictures	537777	355785	0.05
31884	Mahoutsukai Precure!	7.08	Action SliceofLife Magic Fantasy School Shoujo	50	Winter 2016	Toei Animation	9476	3098	0.13
31890	Nurse Witch Komugi-chan R	5.95	Comedy Magic Parody	12	Winter 2016	Tatsunoko Production	10772	3817	0.26
31892	The Legend of Huainanzi	-1	Adventure Fantasy Historical	26	Unknown	Unknown	296	32	0.36
31893	The Legend of Huainanzi 2nd Season	-1	Adventure Fantasy Historical	26	Unknown	Unknown	184	30	0.41
31904	Big Order (TV)	5.4	Action Shounen SuperPower	10	Spring 2016	Asread	178199	103622	0.15
31914	Shoujo-tachi wa Kouya wo Mezasu	6.33	School	12	Winter 2016	Barnum Studio, Project No.9	97928	45419	0.16
31924	Monchhichiisu	-1	Kids	20	Winter 2013	Unknown	146	46	0.43
31931	Full Metal Panic! Invisible Victory	7.6	Action Mecha Military	12	Spring 2018	Xebec	76075	34896	0.04
31933	JoJo no Kimyou na Bouken Part 4: Diamond wa Kudakenai	8.51	Action Adventure Comedy Supernatural Drama Shounen	39	Spring 2016	David Production	625022	494738	0.01
31952	Kono Bijutsubu ni wa Mondai ga Aru!	7.26	Comedy Romance School Seinen	12	Summer 2016	feel.	213851	114481	0.06
31953	New Game!	7.62	Game SliceofLife Comedy	12	Summer 2016	Doga Kobo	333461	199599	0.05
31964	Boku no Hero Academia	8.11	Action Comedy School Shounen SuperPower	13	Spring 2016	Bones	1909814	1655900	0.01
31965	Ba La La Xiao Mo Xian Zhi: Qiji Wubu	5.88	Comedy Magic Shoujo	52	Spring 2013	Unknown	682	208	0.22
31988	Hibike! Euphonium 2	8.3	Music School Drama	13	Fall 2016	Kyoto Animation	164555	103466	0.02
31994	Yami Shibai 3	6.29	Dementia Horror Supernatural	13	Winter 2016	ILCA	27481	20145	0.03
32011	Hakuouki: Otogisoushi	6.61	Fantasy Historical Josei Samurai	12	Spring 2016	DLE	5324	2420	0.08
32013	Oshiete! Galko-chan	7.11	SliceofLife Comedy School	12	Winter 2016	feel.	136467	78467	0.05
32023	Bubuki Buranki	6.3	Action Sci-Fi Drama Mecha	12	Winter 2016	SANZIGEN	66693	28990	0.23
32032	Seikaisuru Kado	6.81	Sci-Fi	12	Spring 2017	Toei Animation	93940	41501	0.13
32038	Show By Rock!! #	7.03	Music Comedy	12	Fall 2016	Bones	24089	11156	0.07
32039	Show By Rock!! Short!!	6.42	Music Comedy	12	Summer 2016	Bones	11222	6094	0.06
32083	Luck & Logic	6.1	Action Fantasy	12	Winter 2016	Doga Kobo	91958	47584	0.17
32084	Watashitachi, Luck Logic-bu!	5.39	Game Comedy School	12	Winter 2016	Doga Kobo	3915	1153	0.11
32093	Tanaka-kun wa Itsumo Kedaruge	7.9	SliceofLife Comedy School	12	Spring 2016	SILVER LINK.	314798	180905	0.05
32094	Reikenzan: Hoshikuzu-tachi no Utage	7.11	Comedy Magic Fantasy	12	Winter 2016	Studio Deen	77012	42400	0.07
32105	Sousei no Onmyouji	7.32	Action Supernatural Romance Fantasy Shounen	50	Spring 2016	Studio Pierrot	375693	154468	0.16
32136	Narara Superboard	-1	Action Adventure Comedy	54	Summer 1990	Unknown	243	84	0.34
32171	Ange Vierge	6.03	Adventure Magic Fantasy School	12	Summer 2016	SILVER LINK.	44646	15714	0.21
32175	Shounen Maid	7.3	Comedy Shoujo SliceofLife	12	Spring 2016	8bit	64512	35508	0.09
32182	Mob Psycho 100	8.49	Action SliceofLife Comedy Supernatural	12	Summer 2016	Bones	1255830	942402	0.02
32189	Danganronpa 3: The End of Kibougamine Gakuen - Mirai-hen	7.36	Action Mystery Horror Psychological	12	Summer 2016	Lerche	256160	173405	0.03
32212	Ensemble Stars!	6.83	Music School	24	Summer 2019	David Production	29196	5363	0.19
32214	Koukaku no Pandora	6.53	Action Sci-Fi Comedy Ecchi	12	Winter 2016	Studio Gokumi, AXsiZ	39751	16090	0.19
32221	Robocar Poli 2	-1	Cars Police Kids	26	Winter 2012	Unknown	224	107	0.32
32228	Teekyuu 7	6.68	Comedy Shounen Sports	12	Winter 2016	Millepensee	13118	9726	0.01
32230	Xi You Ji	6.89	Adventure Fantasy	52	Unknown	Unknown	545	256	0.19
32237	Burutabu-chan	-1	Comedy Fantasy Magic	-1	Unknown	Unknown	169	62	0.35
32245	Kuromukuro	7.21	Action Sci-Fi Mecha	26	Spring 2016	P.A. Works	110580	54926	0.11
32262	Renai Boukun	6.7	Harem Comedy Supernatural Romance Ecchi School	12	Spring 2017	EMT Squared	264610	162318	0.09
32271	Dies Irae	5.38	Action Military SuperPower Magic	11	Fall 2017	A.C.G.T.	113012	35826	0.26
32274	Ketsuekigata-kun! 4	6.34	Comedy	12	Winter 2016	feel., Zexcs	2594	1535	0.06
32282	Shokugeki no Souma: Ni no Sara	8.21	Ecchi School Shounen	13	Summer 2016	J.C.Staff	802974	671406	0.01
32301	Active Raid: Kidou Kyoushuushitsu Dai Hachi Gakari 2nd	6.38	Sci-Fi Comedy Police Mecha	12	Summer 2016	Production IMS	18129	9555	0.09
32309	Tabi Machi Late Show	6.22	SliceofLife Drama	4	Winter 2016	CoMix Wave Films	8046	5141	0.11
32313	Concrete Revolutio: Choujin Gensou - The Last Song	7.05	Action Sci-Fi Mystery SuperPower Demons Supernatural Drama Fantasy	11	Spring 2016	Bones	30062	15297	0.06
32353	Bonobono (TV 2016)	6.36	SliceofLife Comedy	-1	Spring 2016	Eiken	2342	1	0.38
32360	Qualidea Code	6.51	Action Magic Supernatural	12	Summer 2016	A-1 Pictures	136345	72781	0.11
32370	D.Gray-man Hallow	7.75	Action Adventure SuperPower Demons Shounen	13	Summer 2016	TMS Entertainment	155950	86157	0.05
32379	Berserk	6.39	Action Adventure Demons Drama Fantasy Horror Military Romance Seinen Supernatural	12	Summer 2016	Millepensee, GEMBA	254341	145480	0.13
32400	KochinPa!	4.28	Comedy	12	Winter 2016	Unknown	1764	944	0.14
32402	Mim Mam Mint	-1	Comedy	4	Winter 2016	Kachidoki Studio	354	34	0.57
32407	Clockwork Planet	6.47	Fantasy Sci-Fi	12	Spring 2017	Xebec	130534	60636	0.18
32417	Chibinacs	-1	Comedy	25	Spring 2006	Unknown	147	50	0.39
32418	Chibinacs 2.0	-1	Comedy	25	Spring 2007	Unknown	148	53	0.39
32419	Chibinacs 3	-1	Comedy	25	Summer 2008	Unknown	158	52	0.43
32438	Mayoiga	5.53	Mystery Comedy Horror Psychological Drama	12	Spring 2016	Diomedéa	189103	109432	0.15
32447	Nora to Oujo to Noraneko Heart	5.39	Comedy Ecchi	11	Summer 2017	W-Toon Studio, DMM.futureworks	36864	15715	0.18
32448	Kirin Ashita no Calendar	-1	Historical Kids	1306	Winter 1980	Unknown	339	196	0.21
32454	Usakame	5.8	SliceofLife Comedy Sports Shounen	12	Spring 2016	Millepensee	10285	6104	0.1
32455	Gekidol	5.76	Music	12	Winter 2021	Hoods Entertainment	8609	3	0.23
32483	Cheer Danshi!!	6.71	Sports Drama School	12	Summer 2016	Brain's Base	53460	25006	0.15
32491	Kanojo to Kanojo no Neko: Everything Flows	7.7	SliceofLife Psychological Romance	4	Winter 2016	LIDENFILMS	94272	54707	0.01
32494	Days (TV)	7.2	Sports School Shounen	24	Summer 2016	MAPPA	109636	60149	0.13
32526	Love Live! Sunshine!!	7.4	Music SliceofLife School	13	Summer 2016	Sunrise	140379	86265	0.05
32542	Sakamoto Desu ga?	7.59	SliceofLife Comedy School Seinen	12	Spring 2016	Studio Deen	541911	324965	0.09
32555	Stella no Mahou	6.87	Game SliceofLife Comedy School	12	Fall 2016	SILVER LINK.	33679	14079	0.12
32568	Kamiwaza Wanda	-1	Sci-Fi Kids	47	Spring 2016	TMS Entertainment	491	62	0.41
32571	Shounen Ashibe: Go! Go! Goma-chan	6.12	SliceofLife Comedy Seinen	32	Spring 2016	Bridge, Husio Studio	2568	587	0.37
32572	Neko Neko Nihonshi	6.2	Historical Parody Kids Samurai	32	Spring 2016	Joker Films	2101	271	0.28
32580	Uniminipet	-1	Adventure Fantasy	26	Summer 2001	Unknown	219	69	0.38
32582	Duel Masters VSRF	5.44	Action Adventure Comedy Shounen	51	Spring 2016	Studio Hibari	1078	224	0.35
32585	Telemonster	-1	Adventure	52	Winter 2016	Unknown	335	41	0.54
32590	Taeng-gu & Ulasyong	-1	Action Comedy Mecha	26	Spring 2001	Unknown	178	46	0.45
32595	Seisen Cerberus: Ryuukoku no Fatalités	5.64	Adventure Fantasy	13	Spring 2016	Bridge	84952	39137	0.22
32596	The Snack World (TV)	-1	Adventure Comedy Kids Fantasy	50	Spring 2017	OLM, OLM Digital	524	60	0.39
32601	12-sai.: Chicchana Mune no Tokimeki	6.42	Romance School Shoujo	12	Spring 2016	OLM	27034	15446	0.13
32603	Okusama ga Seitokaichou!+!	6.65	Comedy Romance Ecchi School Shounen	12	Fall 2016	Seven	122043	89762	0.03
32606	Onigiri	5.35	Comedy Supernatural Fantasy	13	Spring 2016	Pierrot Plus	25939	10254	0.17
32607	Gi(a)rlish Number	6.88	SliceofLife	12	Fall 2016	Diomedéa	89326	36292	0.12
32608	Endride	5.65	Adventure Fantasy	24	Spring 2016	Brain's Base	61776	17392	0.37
32615	Youjo Senki	8	Action Military Magic	12	Winter 2017	Nut	600880	402559	0.04
32630	Coral no Tanken	-1	Adventure Kids Music	50	Spring 1979	Unknown	193	61	0.4
32648	Handa-kun	7.39	SliceofLife Comedy Shounen	12	Summer 2016	Diomedéa	200188	114312	0.07
32660	Petit Petit Muse	-1	Cars Horror Kids	26	Winter 2008	Unknown	302	70	0.33
32663	Tama & Friends: Uchi no Tama Shirimasen ka?	-1	Adventure Kids	104	Fall 2016	Kachidoki Studio	532	104	0.35
32664	Bananya	6.72	SliceofLife Comedy Kids	13	Summer 2016	Gathering	53632	32147	0.12
32670	Battle Spirits: Double Drive	5.83	Game Fantasy	51	Spring 2016	Bandai Namco Pictures	1171	246	0.25
32673	Udon no Kuni no Kiniro Kemari	7.76	SliceofLife Fantasy Seinen	12	Fall 2016	LIDENFILMS	99145	49894	0.07
32681	Uchuu Patrol Luluco	7.59	Action Adventure Comedy Space	13	Spring 2016	Trigger	124427	76147	0.05
32682	Kagewani: Shou	6.45	Mystery Horror Supernatural Thriller	13	Spring 2016	Tomovies	16146	8789	0.08
32686	Keijo!!!!!!!!	7.02	Action Sports Ecchi Shounen	12	Fall 2016	Xebec	296623	172952	0.1
32691	Flowering Heart	6.14	Kids Magic	26	Winter 2016	Unknown	3016	1336	0.14
32696	Fukigen na Mononokean	7.42	Comedy Demons Supernatural	13	Summer 2016	Pierrot Plus	101218	54972	0.08
32697	Ozmafia!!	5.46	Harem Historical Romance Fantasy Shoujo	12	Summer 2016	Creators in Pack	17572	8046	0.2
32717	Aikatsu Stars!	7.52	Music School Shoujo SliceofLife	100	Spring 2016	Bandai Namco Pictures	14513	3733	0.15
32729	Orange	7.62	Sci-Fi Drama Romance School Shoujo	13	Summer 2016	Telecom Animation Film	545748	322463	0.06
32772	Puzzle & Dragons Cross	6.48	Game Kids	89	Summer 2016	Studio Pierrot	7380	933	0.35
32785	Future Card Buddyfight Triple D	6.43	Game	51	Spring 2016	Xebec, OLM	2994	1574	0.14
32792	Mobile Suit Gundam Unicorn RE:0096	7.58	Action Drama Mecha Military Sci-Fi Space	22	Spring 2016	Sunrise	24747	13294	0.08
32802	Cardfight!! Vanguard G: Stride Gate-hen	6.67	Action Game Shounen	24	Spring 2016	TMS Entertainment	6707	4214	0.05
32805	Nyanbo!	6.35	Comedy	26	Fall 2016	Shirogumi	5613	1954	0.28
32807	Xiong Chumo	-1	Comedy Kids	104	Unknown	Unknown	231	91	0.4
32818	Xiong Chumo Zhi: Huanqiu Da Maoxian	-1	Comedy Kids	104	Unknown	Unknown	181	66	0.47
32819	Xiong Chumo Zhi: Conglin Zongdongyuan	-1	Comedy Kids	104	Summer 2013	Unknown	185	61	0.48
32820	Xiong Chumo Zhi: Chunri Dui Dui Peng	-1	Adventure Comedy Kids	52	Fall 2014	Unknown	189	67	0.46
32821	Xiong Chumo Zhi: Dongri Le Fantian	-1	Comedy Kids	52	Unknown	Unknown	173	59	0.5
32828	Amaama to Inazuma	7.53	Comedy SliceofLife Seinen	12	Summer 2016	TMS Entertainment	230111	122112	0.07
32829	Nobunaga no Shinobi	7.07	Comedy Historical	26	Fall 2016	TMS Entertainment	19224	9276	0.12
32830	Chou Shounen Tanteidan Neo	5.25	Mystery	13	Winter 2017	DLE	2267	328	0.42
32836	Senki Zesshou Symphogear AXZ	7.6	Action Music Sci-Fi	13	Summer 2017	Satelight	27738	14765	0.04
32842	Panpaka Pants	-1	Comedy Kids	27	Fall 2008	DLE	262	52	0.44
32843	Senki Zesshou Symphogear XV	8.21	Action Music Sci-Fi	13	Summer 2019	Satelight	28318	10823	0.04
32866	Brave Witches	6.82	Action Ecchi Magic Military Sci-Fi	12	Fall 2016	SILVER LINK.	48188	20888	0.11
32867	Bungou Stray Dogs 2nd Season	8.2	Action Mystery Seinen SuperPower Supernatural	12	Fall 2016	Bones	480682	356210	0.01
32876	Nameko: Sekai no Tomodachi	-1	Comedy Kids	26	Spring 2016	Studio Deen	442	28	0.59
32878	ēlDLIVE	6.16	Action Sci-Fi Space Police Shounen	12	Winter 2017	Studio Pierrot	42000	18191	0.23
32881	Tiger Mask W	6.98	Action Sports Drama Shounen	38	Fall 2016	Toei Animation	18478	5928	0.28
32887	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka Gaiden: Sword Oratoria	7.05	Action Adventure Fantasy	12	Spring 2017	J.C.Staff	315578	199917	0.06
32899	Watashi ga Motete Dousunda	7.1	Harem Comedy Romance School Shoujo	12	Fall 2016	Brain's Base	291969	182161	0.08
32901	Eromanga-sensei	6.49	Comedy Drama Romance Ecchi	12	Spring 2017	A-1 Pictures	513293	357122	0.08
32906	Bishoujo Yuugi Unit Crane Game Girls	4.44	Comedy Game Space	13	Spring 2016	Kyotoma	6634	3254	0.27
32924	Urara Meirochou	7.13	SliceofLife Comedy Fantasy Seinen	12	Winter 2017	J.C.Staff	106150	39205	0.14
33290	Gra-P & Rodeo II	-1	Music Comedy	27	Summer 2016	Pie in the sky	300	57	0.49
32935	Haikyuu!!: Karasuno Koukou vs. Shiratorizawa Gakuen Koukou	8.87	Comedy Sports Drama School Shounen	10	Fall 2016	Production I.G	727240	619835	0
32936	Gin no Guardian	6.25	Adventure Fantasy	12	Spring 2017	Haoliners Animation League	88068	45912	0.13
32937	Kono Subarashii Sekai ni Shukufuku wo! 2	8.31	Adventure Comedy Parody Supernatural Magic Fantasy	10	Winter 2017	Studio Deen	990857	825156	0.01
32944	CoCO & NiCO	-1	Comedy Kids	39	Spring 2016	Kachidoki Studio	549	64	0.43
32947	Battery	5.72	SliceofLife Sports Drama	11	Summer 2016	Zero-G	45544	19510	0.21
32948	Fune wo Amu	7.64	SliceofLife Drama Romance	11	Fall 2016	Zexcs	85958	36375	0.07
32949	Kuzu no Honkai	7.31	Drama Romance School Seinen	12	Winter 2017	Lerche	462466	264613	0.07
32951	Rokudenashi Majutsu Koushi to Akashic Records	7.19	Action Magic Fantasy School	12	Spring 2017	LIDENFILMS	478935	352662	0.04
32956	Aware! Meisaku-kun	-1	Comedy Parody Kids School	-1	Spring 2016	Pie in the sky	434	0	0.47
32961	Regalia: The Three Sacred Stars	5.99	Action Sci-Fi Mecha	13	Summer 2016	Actas	25923	6874	0.27
32962	Occultic;Nine	6.94	Sci-Fi Mystery	12	Fall 2016	A-1 Pictures	167865	68238	0.15
32977	Aggressive Retsuko	7.64	Music SliceofLife Comedy	100	Spring 2016	Fanworks	73153	36362	0.07
32979	Flip Flappers	7.68	Sci-Fi Adventure Comedy Magic	13	Fall 2016	Studio 3Hz	156048	68247	0.08
32981	Hand Shakers	5.35	Action	12	Winter 2017	GoHands	87242	32248	0.32
32983	Natsume Yuujinchou Go	8.59	SliceofLife Demons Supernatural Drama Shoujo	11	Fall 2016	Shuka	135177	72069	0.02
32995	Yuri!!! on Ice	7.92	Comedy Sports	12	Fall 2016	MAPPA	580801	430803	0.05
32998	91 Days	7.84	Action Drama Historical	12	Summer 2016	Shuka	466565	255359	0.06
32999	Neko mo, Onda-ke	-1	SliceofLife Comedy	12	Spring 2016	Studio! Cucuri	470	124	0.35
33002	Panpaka Pants W-O-New!	-1	Comedy Kids	26	Spring 2016	DLE	259	61	0.49
33003	Mahou Shoujo Ikusei Keikaku	7	Action Fantasy Magic Supernatural Thriller	12	Fall 2016	Lerche	127946	65647	0.09
33012	Island	6.35	Drama Sci-Fi	12	Summer 2018	feel.	103133	43876	0.21
33018	Katsugeki/Touken Ranbu	6.73	Action Historical Samurai Fantasy	13	Summer 2017	ufotable	97144	26489	0.25
33019	Reikenzan: Eichi e no Shikaku	6.93	Comedy Magic Fantasy	12	Winter 2017	Studio Deen	36941	20824	0.07
33021	Ragnastrike Angels	4.34	Action	12	Spring 2016	Satelight	11065	5431	0.16
33023	Touken Ranbu: Hanamaru	6.82	Action SliceofLife Comedy Historical Drama Fantasy	12	Fall 2016	Doga Kobo	66452	18833	0.22
33026	Time Bokan 24	5.89	Adventure Comedy Mecha	24	Fall 2016	Tatsunoko Production	4134	878	0.43
33027	Infini-T Force	6.5	Action Sci-Fi SuperPower	12	Fall 2017	Tatsunoko Production	7579	1877	0.26
33028	Danganronpa 3: The End of Kibougamine Gakuen - Zetsubou-hen	7.49	Action Mystery Horror Psychological School	11	Summer 2016	Lerche	225956	160854	0.03
33031	Shakunetsu no Takkyuu Musume	7.08	Sports	12	Fall 2016	Kinema Citrus	35854	18093	0.1
33037	Tsukiuta. The Animation	6.95	Music	13	Summer 2016	Studio Pierrot	22405	8259	0.16
33041	Bubuki Buranki: Hoshi no Kyojin	6.83	Action Sci-Fi Drama Mecha	12	Fall 2016	SANZIGEN	23300	13652	0.08
33044	Asa Da yo! Kaishain	-1	Comedy	744	Spring 2016	DLE	608	66	0.52
33046	B-Project: Kodou*Ambitious	6.63	Music Shoujo	12	Summer 2016	A-1 Pictures	37598	17319	0.14
33047	Fate/Extra: Last Encore	6.29	Action Fantasy Magic	10	Winter 2018	Shaft	157725	77138	0.1
33051	Mobile Suit Gundam: Iron-Blooded Orphans 2nd Season	8.24	Action Drama Mecha Sci-Fi Space	25	Fall 2016	Sunrise	97951	66471	0.02
33083	Wa Wa Wa Wappi-chan	-1	Kids	26	Summer 2006	Unknown	127	33	0.53
33084	Wa Wa Wa Wappi-chan 2nd Season	-1	Kids	26	Unknown	Unknown	109	30	0.55
33085	Unko-san: Tsuiteru Hito ni Shika Mienai Yousei Junjou Ha	-1	Comedy Magic	13	Winter 2010	Kachidoki Studio	267	71	0.44
33089	Kemono Friends	7.58	Adventure Comedy Fantasy	12	Winter 2017	Yaoyorozu	67918	31787	0.1
33094	WWW.Working!!	7.45	SliceofLife Comedy	13	Fall 2016	A-1 Pictures	124034	77107	0.05
33095	Shouwa Genroku Rakugo Shinjuu: Sukeroku Futatabi-hen	8.79	Drama Historical Josei	12	Winter 2017	Studio Deen	140007	57236	0.04
33099	Washimo 4th Season	-1	Sci-Fi SliceofLife Comedy Kids School	44	Spring 2016	Studio Deen	202	48	0.52
33113	Scared Rider Xechs	5.27	Sci-Fi Adventure Harem Romance	12	Summer 2016	Satelight	18425	4433	0.38
33123	Koto Nakare Hero Gingerman	-1	Comedy	12	Winter 2009	Kenji Studio	166	47	0.38
33184	Battle Girl High School	5.84	Action Sci-Fi School	12	Summer 2017	SILVER LINK.	20625	5029	0.31
33188	Sore Ike! Sabuibo Mask	-1	SliceofLife Comedy	8	Spring 2016	DLE	237	38	0.61
33197	Lostorage Incited WIXOSS	6.71	Game Psychological	12	Fall 2016	J.C.Staff	48595	22483	0.11
33203	Fukumenkei Noise	7.01	Music Drama Romance School Shoujo	12	Spring 2017	Brain's Base	87871	44567	0.11
33206	Kobayashi-san Chi no Maid Dragon	8.03	SliceofLife Comedy Fantasy	13	Winter 2017	Kyoto Animation	772246	564690	0.03
33222	Fudanshi Koukou Seikatsu	6.55	SliceofLife Comedy School Shoujo	12	Summer 2016	EMT Squared	55949	37631	0.07
33240	Koneko no Chi: Ponponra Daibouken	6.79	SliceofLife	51	Fall 2016	Marza Animation Planet	6057	1225	0.22
33241	Honobono Log	7.38	Romance SliceofLife	10	Spring 2016	Fanworks	53564	30656	0.02
33244	Kiitarou Shounen no Youkai Enikki	6.45	Comedy Supernatural	12	Fall 2016	Creators in Pack	25255	11196	0.12
33245	Ame-iro Cocoa in Hawaii	4.77	Comedy SliceofLife	12	Fall 2016	EMT Squared	5562	2215	0.12
33253	Ajin 2nd Season	7.68	Action Horror Mystery Seinen Supernatural	13	Fall 2016	Polygon Pictures	226381	171205	0.02
33255	Saiki Kusuo no Ψ-nan	8.45	Comedy School Shounen SliceofLife Supernatural	120	Summer 2016	J.C.Staff, Egg Firm	591140	365729	0.04
33262	Chobitto Zukan	-1	Fantasy Kids	52	Summer 2016	Kachidoki Studio	225	37	0.55
33267	Jinxiu Shenzhou Zhi Qi You Ji	-1	Adventure Fantasy	-1	Unknown	Unknown	470	0	0.36
33274	Onara Gorou	5.51	Comedy	13	Summer 2016	ILCA	11034	4923	0.23
33299	Magic-Kyun! Renaissance	7.08	Music Magic Romance School	13	Fall 2016	Sunrise	38728	20417	0.08
33300	Manga Kotowaja Jiten	-1	Comedy Historical	88	Fall 1980	Tsuchida Productions	195	69	0.35
33310	Peach Command Shin Momotarou Densetsu	-1	Adventure Comedy	24	Fall 1990	Knack Productions	202	61	0.4
33314	Digimon Universe: Appli Monsters	6.61	Action Sci-Fi Adventure Comedy Kids Fantasy	52	Fall 2016	Toei Animation	11093	4114	0.19
33337	ACCA: 13-ku Kansatsu-ka	7.68	Mystery Police Drama Fantasy Seinen	12	Winter 2017	Madhouse	121858	62584	0.08
33341	Time Travel Shoujo: Mari Waka to 8-nin no Kagakusha-tachi	6.52	Sci-Fi Adventure	12	Summer 2016	WAO World	14479	5621	0.22
33352	Violet Evergarden	8.64	SliceofLife Drama Fantasy	13	Winter 2018	Kyoto Animation	1039300	615251	0.04
33354	Cardcaptor Sakura: Clear Card-hen	7.66	Adventure Comedy Fantasy Magic Romance Shoujo	22	Winter 2018	Madhouse	91956	33780	0.08
33362	Starmyu 2nd Season	7.33	Music SliceofLife School	12	Spring 2017	C-Station	14002	7074	0.07
33371	Atom: The Beginning	6.85	Action Sci-Fi Mecha Seinen	12	Spring 2017	Production I.G, OLM, Signal.MD	26904	11399	0.17
33377	Trickster: Edogawa Ranpo "Shounen Tanteidan" yori	6.23	Sci-Fi Mystery Psychological Drama	24	Fall 2016	TMS Entertainment, Shin-Ei Animation	98209	28192	0.28
33383	Mask Masters	-1	Action Adventure	26	Unknown	Unknown	160	35	0.36
33392	Gakuen Handsome	6.62	Comedy Parody School ShounenAi	12	Fall 2016	Team YokkyuFuman	28760	17356	0.14
33394	Mahou Shoujo? Naria☆Girls	3.84	Magic	12	Summer 2016	Bouncy	6479	1771	0.37
33398	Neko Konogoro	-1	Comedy	-1	Summer 2016	Kachidoki Studio	938	0	0.56
33414	Otona no Ikkyuu-san	-1	Comedy Historical	13	Summer 2016	Unknown	294	56	0.45
33417	Super Lovers 2	7.3	SliceofLife Comedy Drama Romance ShounenAi	10	Winter 2017	Studio Deen	62690	44772	0.03
33419	12-sai.: Chicchana Mune no Tokimeki 2nd Season	6.59	Romance School Shoujo	12	Fall 2016	OLM	13108	7999	0.07
33421	Hitori no Shita: The Outcast	6.78	Action SuperPower Supernatural	12	Summer 2016	Namu Animation	125138	53432	0.13
33430	Oscar's Oasis	5.81	Comedy	78	Winter 2011	TUBA	613	402	0.15
33431	Vicky and Johnny	-1	Comedy Kids	104	Unknown	TUBA	44	16	0.28
33433	Shuumatsu no Izetta	6.76	Action Historical Military	12	Fall 2016	Ajia-Do	149902	65453	0.17
33434	Heybot!	5.93	Sci-Fi Comedy Parody Kids	50	Fall 2016	Bandai Namco Pictures	1795	320	0.42
33447	Piace: Watashi no Italian	5.88	SliceofLife Comedy	12	Winter 2017	Zero-G	13955	7819	0.13
33462	Bernard-jou Iwaku.	6	Comedy School	12	Fall 2016	Creators in Pack	18982	9746	0.17
33473	Tokyo Futago Athletic	-1	Comedy Sports	8	Winter 2017	Ripromo	392	86	0.4
33475	Busou Shoujo Machiavellianism	6.96	Action Comedy School Shounen	12	Spring 2017	SILVER LINK., Connect	262476	184762	0.05
33478	UQ Holder!: Mahou Sensei Negima! 2	7	Action Sci-Fi Magic Fantasy Shounen	12	Fall 2017	J.C.Staff	135148	74428	0.05
33479	Muzumuzu Eighteen	-1	SliceofLife	20	Spring 2016	Unknown	213	36	0.58
33486	Boku no Hero Academia 2nd Season	8.33	Action Comedy SuperPower School Shounen	25	Spring 2017	Bones	1611771	1389299	0.01
33487	Masamune-kun no Revenge	6.83	Comedy Harem Romance School Shounen	12	Winter 2017	SILVER LINK.	547027	396717	0.05
33489	Little Witch Academia (TV)	7.91	Adventure Comedy Fantasy Magic School	25	Winter 2017	Trigger	461846	256285	0.06
33490	Kaitou Joker 4th Season	7.34	Adventure Mystery Comedy Shounen	13	Fall 2016	Shin-Ei Animation	3241	1729	0.06
33502	Shuumatsu Nani Shitemasu ka? Isogashii Desu ka? Sukutte Moratte Ii Desu ka?	7.73	Sci-Fi Drama Romance Fantasy	12	Spring 2017	Satelight, C2C	275841	166689	0.04
33506	Ao no Exorcist: Kyoto Fujouou-hen	7.43	Action Demons Supernatural Fantasy Shounen	12	Winter 2017	A-1 Pictures	527247	376853	0.03
33531	Juushinki Pandora	6.34	Sci-Fi Mecha	26	Spring 2018	Satelight	30827	8878	0.23
33532	Twin Angel Break	5.89	Drama Magic	12	Spring 2017	J.C.Staff	10998	3104	0.27
33538	Shima Kousaku no Asia Risshi-den	-1	Drama Seinen	26	Spring 2013	Unknown	445	45	0.42
33540	Shima Kousaku no Asia Shinseki-den	-1	Cars Drama Seinen	30	Unknown	Unknown	736	41	0.41
33541	Bishoujo Yuugi Unit Crane Game Girls Galaxy	4.82	Game Space Comedy	12	Fall 2016	Kyotoma	2816	1415	0.17
33572	Idol Memories	5.38	Music	12	Fall 2016	Seven Arcs Pictures	7535	1506	0.28
33573	BanG Dream!	6.96	Music	13	Winter 2017	Xebec, Issen	61367	28851	0.08
33583	Nana Moon	-1	Kids Fantasy	52	Unknown	Unknown	205	42	0.35
33589	ViVid Strike!	7.09	Action Drama Magic MartialArts	12	Fall 2016	Seven Arcs Pictures	55530	20848	0.09
33599	Na Sa Er Ding	-1	Adventure Demons Fantasy	50	Winter 2015	Unknown	661	72	0.23
33630	Xing You Ji	-1	Sci-Fi Adventure Fantasy	26	Unknown	Unknown	526	79	0.29
33654	Hitorijime My Hero	7.41	Drama Romance School ShounenAi SliceofLife	12	Summer 2017	Encourage Films	102536	63849	0.06
33668	Soushin Shoujo Matoi	6.72	Supernatural Magic	12	Fall 2016	White Fox	22238	8459	0.18
33670	Xingji Biaoche Wang	-1	Action Adventure Cars	52	Winter 2006	Unknown	225	68	0.37
33671	Feng Shu Zhan Jing	-1	Action Adventure Mecha	26	Unknown	Unknown	176	49	0.32
33690	Nazotokine	4.86	Game	12	Fall 2016	Tengu Kobo	11819	4125	0.3
33726	Saiyuuki Reload Blast	7.22	Action Adventure Comedy Demons Supernatural Drama Josei	12	Summer 2017	Platinum Vision	33085	12022	0.14
33727	Neko no Dayan: Fushigi Gekijou	-1	Kids	30	Fall 2016	Kachidoki Studio	242	38	0.49
33731	Gabriel DropOut	7.49	Comedy Demons Supernatural School Shounen	12	Winter 2017	Doga Kobo	343510	217706	0.05
33733	Inazuma Eleven: Ares no Tenbin	6.68	Sports	26	Spring 2018	OLM	24740	13799	0.07
33737	Megaton-kyuu Musashi	-1	Mecha School	-1	Summer 2021	OLM	1084	0	-1
33739	Tian Xin Ge Ge	-1	Comedy Historical Kids	52	Fall 2011	Puzzle Animation Studio Limited	244	76	0.29
33743	Fuuka	6.54	Drama Ecchi Music Romance School Shounen	12	Winter 2017	Diomedéa	223931	134655	0.11
33746	Anitore! XX: Hitotsu Yane no Shita de	5.62	Comedy Sports	12	Fall 2016	Rising Force	12753	6696	0.09
33753	Tian Xin Ge Ge 2nd Season	-1	Comedy Historical Kids	52	Fall 2012	Puzzle Animation Studio Limited	175	60	0.34
33771	Cheating Craft	5.44	Action Comedy School	12	Fall 2016	Blade	54124	22500	0.24
33775	Soul Buster	5.81	Action Samurai	12	Fall 2016	Studio Pierrot	19449	7489	0.22
33788	Marginal#4: Kiss kara Tsukuru Big Bang	6.7	Comedy Music School	12	Winter 2017	J.C.Staff	13677	5277	0.17
33792	Feng Shu Zhan Jing 2	-1	Adventure Kids Mecha	26	Winter 2012	Unknown	156	48	0.38
33795	Mahou Shoujo Nante Mou Ii Desukara. Second Season	6.08	Comedy Magic	12	Fall 2016	Pine Jam	10821	7272	0.05
33797	ID-0	6.59	Sci-Fi Space Mecha	12	Spring 2017	SANZIGEN	17454	9014	0.13
33803	Sengoku Choujuu Giga: Kou	5.89	Historical Demons Supernatural Samurai	13	Fall 2016	ILCA	5574	2348	0.23
33811	Teekyuu 8	6.67	Comedy Sports Shounen	12	Fall 2016	Millepensee	11705	8287	0.02
33814	Ao Oni The Animation	5.14	Comedy Horror	13	Fall 2016	Studio Deen	16844	9910	0.18
33834	Sin: Nanatsu no Taizai	5.69	Ecchi Fantasy	12	Spring 2017	Artland, TNK	111846	40515	0.22
33835	PJ Berri no Mogumogu Munyamunya	-1	Comedy	20	Summer 2016	Doga Kobo	306	64	0.36
33836	Seiren	6.31	Romance School	12	Winter 2017	Studio Gokumi, AXsiZ	157855	70517	0.16
33840	Kabuki-bu!	6.62	School	12	Spring 2017	Studio Deen	16921	5435	0.25
33842	Fushigi no Yappo Shima: Pukipuki to Poi	-1	Kids	25	Winter 2012	Unknown	126	40	0.4
33850	Nil Admirari no Tenbin	6.61	Harem Historical Romance Fantasy Josei	12	Spring 2018	Zero-G	29765	9804	0.19
33889	Saredo Tsumibito wa Ryuu to Odoru	5.82	Action Drama Fantasy Sci-Fi	12	Spring 2018	Seven Arcs Pictures	46490	12529	0.27
33899	IDOLiSH7	7.78	Music	17	Winter 2018	TROYCA	39513	15896	0.08
33933	Yasamura Yasashi no Yasashii Sekai	-1	Comedy	33	Fall 2016	DLE	991	40	0.52
33946	Mikan Seijin Arawaru	-1	Comedy	58	Summer 2016	Unknown	294	28	0.58
33948	Hinako Note	6.76	Comedy SliceofLife	12	Spring 2017	Passione	79732	29747	0.14
33966	Yume Oukoku to Nemureru 100-nin no Ouji-sama	5.9	Adventure Harem Fantasy	12	Summer 2018	Project No.9	14569	4220	0.23
33975	3-Nen D-Gumi Glass no Kamen	4.71	Comedy Parody School	13	Fall 2016	DLE	1964	928	0.24
33983	Onihei	7.31	Historical Seinen	13	Winter 2017	Studio M2	33930	13746	0.14
33985	Bloodivores	5.51	Action Supernatural Vampire	12	Fall 2016	Creators in Pack, Namu Animation	83433	39266	0.22
33988	Demi-chan wa Kataritai	7.62	Comedy Vampire Fantasy School Seinen	12	Winter 2017	A-1 Pictures	318206	213378	0.03
34009	To Be Hero	7	Comedy	12	Fall 2016	Haoliners Animation League	49586	27826	0.11
34012	Isekai Shokudou	7.35	Comedy Fantasy Mystery	12	Summer 2017	SILVER LINK.	150933	81705	0.1
34013	Hagane Orchestra	5.58	Game Adventure Comedy Parody	12	Fall 2016	Fanworks	4340	1663	0.14
34019	Tsugumomo	7.07	Action Comedy Ecchi School Seinen Supernatural	12	Spring 2017	Zero-G	134124	69341	0.09
34028	Idol Jihen	5.68	Music	12	Winter 2017	MAPPA, Studio VOLN	12001	3859	0.32
34034	Pokemon Sun & Moon	6.84	Action Game Kids Fantasy School	146	Fall 2016	OLM	67085	23167	0.18
34051	Akiba's Trip The Animation	6.55	Action Comedy Supernatural Ecchi	13	Winter 2017	Gonzo	112912	55391	0.17
34052	100% Pascal-sensei (TV)	5.72	Comedy	36	Spring 2017	OLM	2220	673	0.37
34055	Berserk 2nd Season	6.69	Action Adventure Demons Drama Fantasy Horror Magic Military Romance Supernatural	12	Spring 2017	Millepensee, GEMBA	124485	85329	0.05
34076	Uchouten Kazoku 2	8.13	Comedy Demons Drama Fantasy SliceofLife	12	Spring 2017	P.A. Works	51229	25917	0.03
34077	Cardfight!! Vanguard G: Next	6.59	Action Game Shounen	52	Fall 2016	OLM	7044	3642	0.09
34078	Ukkari Pénélope (2013)	-1	Kids SliceofLife	13	Unknown	Unknown	149	46	0.49
34086	Tales of Zestiria the Cross 2nd Season	7.35	Action Adventure Magic Fantasy	13	Winter 2017	ufotable	129670	81511	0.04
34088	Chiruran: Nibun no Ichi	5.67	Action Comedy Historical	12	Winter 2017	LandQ studios	6799	3540	0.17
34096	Gintama.	8.99	Action Comedy Historical Parody Samurai Sci-Fi Shounen	12	Winter 2017	Bandai Namco Pictures	201735	115105	0.02
34102	Sakurada Reset	7.37	Mystery SuperPower Supernatural School	24	Spring 2017	David Production	119064	33611	0.23
34104	Knight's & Magic	7.13	Action Fantasy Mecha School	13	Summer 2017	8bit	178518	116155	0.07
34106	Kyoukai no Rinne (TV) 3rd Season	7.07	Comedy Supernatural Romance School Shounen	25	Spring 2017	Brain's Base	18691	7924	0.06
34126	Rewrite 2nd Season	7.26	Action Military Comedy Supernatural Romance Fantasy	11	Winter 2017	8bit	91071	54425	0.05
34129	Xia Lan	-1	Action Adventure Historical Supernatural Drama Magic MartialArts Fantasy	156	Winter 2012	Beijing Rocen Digital	426	77	0.34
34134	One Punch Man 2nd Season	7.41	Action Sci-Fi Comedy Parody SuperPower Supernatural	12	Spring 2019	J.C.Staff	994488	666395	0.03
34148	Nyanko Days	6.61	SliceofLife Comedy	12	Winter 2017	EMT Squared	55668	34779	0.05
34156	PePePePengiin	-1	Comedy	13	Fall 2016	DLE	425	95	0.41
34176	Zero kara Hajimeru Mahou no Sho	7.1	Action Adventure Magic Fantasy	12	Spring 2017	White Fox	201601	121613	0.07
34177	Tenshi no 3P!	6.66	Music School SliceofLife	12	Summer 2017	Project No.9	49863	22182	0.12
34182	Nikoniko♪Connie-chan	-1	Kids	5	Spring 2009	Unknown	108	29	0.49
34207	Dochamon Junior 2	-1	Comedy Kids	16	Fall 2016	Calf Studio	177	29	0.51
34209	Meiji Tokyo Renka	6.93	Harem Historical Supernatural Romance Shoujo	12	Winter 2019	TMS Entertainment	31953	14780	0.11
34223	Forest Fairy Five	3.47	Music Comedy Fantasy	13	Winter 2017	Unknown	2612	601	0.52
34233	Kimoshiba	-1	Comedy Horror Kids Supernatural	13	Fall 2016	TMS Entertainment, Jinnis Animation Studios	270	51	0.51
34234	Ohayou! Kokekkou-san	-1	Comedy Kids	50	Fall 2016	TMS Entertainment, TOCSIS	194	28	0.6
36925	Pretty All Friends	-1	Music SliceofLife Sports	-1	Unknown	Unknown	1012	0	-1
34235	Pittanko! Nekozakana	-1	Comedy Kids	50	Fall 2016	TMS Entertainment, Studio Comet	225	31	0.57
34249	Aqua Kids	-1	Adventure Kids	26	Spring 2004	Unknown	193	75	0.35
34257	Cinderella Girls Gekijou	6.54	Comedy SliceofLife	13	Spring 2017	Gathering, Lesprit	14954	6424	0.08
34262	Oushitsu Kyoushi Heine	7.47	SliceofLife Comedy Historical Shounen	12	Spring 2017	Bridge	102935	59408	0.08
34264	Ninja Bear the Animation★	-1	Comedy School	-1	Unknown	KOO-KI	355	0	-1
34279	Grancrest Senki	7.25	Action Drama Fantasy Romance	24	Winter 2018	A-1 Pictures	211902	100552	0.12
34280	Gamers!	6.92	Game Comedy Romance School	12	Summer 2017	Pine Jam	455313	313233	0.06
34281	High School DxD Hero	7.28	Action Comedy Demons Ecchi Harem Romance School	12	Spring 2018	Passione	309467	202846	0.05
34284	Yuuki Yuuna wa Yuusha de Aru: Washio Sumi no Shou	7.64	SliceofLife Drama Magic Fantasy	6	Fall 2017	Studio Gokumi	32995	14852	0.05
34289	Schoolgirl Strikers: Animation Channel	5.72	Action Sci-Fi School	13	Winter 2017	J.C.Staff	17698	5081	0.31
34290	Kirakira☆Precure A La Mode	6.92	Action Fantasy Magic Shoujo SliceofLife	49	Winter 2017	Toei Animation	8201	2780	0.12
34292	Kamigami no Ki	5.97	Comedy Historical Supernatural	17	Fall 2016	Sotsu	674	138	0.34
34295	Choboraunyopomi Gekijou Dai San Maku Ai Mai Mii: Surgical Friends	6.11	SliceofLife Comedy	12	Winter 2017	Seven	8328	4797	0.09
34309	Nananin no Ayakashi: Chimi Chimi Mouryou!! Gendai Monogatari	-1	Comedy Supernatural	8	Winter 2017	DLE	594	90	0.39
34332	Hulaing Babies	5.88	SliceofLife Comedy	12	Winter 2019	Gaina	3303	1216	0.23
34337	Ikemen Sengoku: Toki wo Kakeru ga Koi wa Hajimaranai	6.26	Historical Romance	12	Summer 2017	TMS Entertainment, Jinnis Animation Studios	7265	3600	0.15
34338	Lost Song	7.01	Drama Fantasy	12	Spring 2018	Dwango, LIDENFILMS	31031	16807	0.07
34348	Rescue Academia	-1	Sci-Fi Adventure	-1	Unknown	Gaina	1359	0	-1
34350	Alice to Zouroku	7.12	Adventure Mystery Seinen	12	Spring 2017	J.C.Staff	98291	45954	0.15
34358	Ocha-ken: Hotto Monogatari	-1	Kids SliceofLife	13	Winter 2006	Unknown	191	59	0.38
34363	Ocha-ken: Ryokutto Monogatari	-1	SliceofLife Kids	13	Fall 2008	Unknown	179	53	0.37
34368	Vatican Kiseki Chousakan	6.39	Mystery Supernatural Drama	12	Summer 2017	J.C.Staff	40746	15455	0.25
34382	Citrus	6.51	Drama Romance School ShoujoAi	12	Winter 2018	Passione	340760	197345	0.11
34383	Netsuzou TRap	5.37	Drama Romance ShoujoAi	12	Summer 2017	Creators in Pack	113804	57692	0.15
34392	One Room	5.57	SliceofLife	12	Winter 2017	Typhoon Graphics	89779	42375	0.12
34393	Room Mate	4.76	Harem SliceofLife	12	Spring 2017	Typhoon Graphics	20516	9351	0.2
34402	Love Kome: We Love Rice	4.64	SliceofLife	12	Spring 2017	Encourage Films	9458	3836	0.29
34403	Hajimete no Gal	6.31	Comedy Ecchi Romance School Shounen	10	Summer 2017	NAZ	332807	224909	0.08
34410	Ba La La Xiao Mo Xian Zhi: Feiyue Cai Ling Bao	-1	Comedy Magic Shoujo	26	Fall 2016	Qianqi Animation	667	149	0.28
34411	Taishou Mebiusline: Chicchai-san	4.73	Historical Supernatural	12	Fall 2017	Studio A-CAT	10486	3782	0.24
34427	Frame Arms Girl	6.42	Action Sci-Fi SliceofLife Mecha	12	Spring 2017	Zexcs, Studio A-CAT	28488	10507	0.21
34445	Yuuki Yuuna wa Yuusha de Aru: Yuusha no Shou	7.65	Drama Fantasy Magic SliceofLife	6	Fall 2017	Studio Gokumi	30160	14345	0.02
34449	The Reflection	5.14	Action SuperPower	12	Summer 2017	Studio Deen	26983	5189	0.5
34451	Kekkai Sensen & Beyond	7.88	Action Comedy Fantasy Shounen SuperPower Supernatural Vampire	12	Fall 2017	Bones	300721	176812	0.03
34456	Sentai Hero Sukiyaki Force: Gunma no Heiwa wo Negau Season	-1	Comedy Parody SuperPower	24	Winter 2017	Studio 4°C	466	55	0.52
34467	Yami Shibai 4	5.73	Dementia Horror Supernatural	13	Winter 2017	ILCA	20474	14119	0.03
34474	Tsukipro The Animation	6.73	Music	13	Fall 2017	PRA	13145	3769	0.21
34488	Gan Gan Ganko-chan	-1	Sci-Fi Comedy Kids	10	Winter 2017	10Gauge	283	67	0.41
34490	Sushi Azarashi	-1	Comedy	30	Winter 2001	M.S.C	196	48	0.4
34494	Sakura Quest	7.41	SliceofLife Comedy	25	Spring 2017	P.A. Works	121626	37985	0.18
34497	Death March kara Hajimaru Isekai Kyousoukyoku	6.54	Adventure Fantasy Harem	12	Winter 2018	SILVER LINK., Connect	334103	239264	0.06
34501	Kenka Banchou Otome: Girl Beats Boys	6.45	Action MartialArts School Shoujo	12	Spring 2017	Project No.9, A-Real	57888	35450	0.07
34502	Inazma Delivery	6.33	Action Sci-Fi Comedy	10	Winter 2017	Kanaban Graphics	745	292	0.25
34503	KochinPa! Dainiki	4.85	Comedy	24	Winter 2017	Unknown	1105	542	0.14
34510	Hei Mao Jing Zhang	5.62	Action Adventure Cars Comedy Kids Police	5	Winter 1984	Shanghai Animation Film Studio	363	185	0.2
34511	Hei Mao Jing Zhang (1992)	-1	Action Adventure Cars Comedy Kids Police	12	Winter 1992	Shanghai Animation Film Studio	261	112	0.26
34522	Wake Up, Girls! Shin Shou	6.5	Music Drama	12	Fall 2017	Millepensee	10763	3724	0.13
34525	Centaur no Nayami	6.48	SliceofLife Comedy Fantasy School Seinen	12	Summer 2017	Haoliners Animation League	71320	35593	0.16
34542	Inuyashiki	7.7	Action Drama Psychological Sci-Fi Seinen	11	Fall 2017	MAPPA	420332	249599	0.05
34543	Dive!!	6.08	Comedy Sports	12	Summer 2017	Zero-G	40480	15954	0.22
34547	Shoukoku no Altair	7.55	Military Adventure Historical Drama Fantasy Shounen	24	Summer 2017	MAPPA	58212	19115	0.19
34550	Warau Salesman New	6.27	Comedy Drama Seinen	12	Spring 2017	Shin-Ei Animation	15617	5880	0.32
34561	Re:Creators	7.57	Action Sci-Fi Fantasy Mecha	22	Spring 2017	TROYCA	365335	158394	0.11
34565	Jikan no Shihaisha	6.33	Supernatural Shounen	13	Summer 2017	Project No.9	59426	20799	0.21
34566	Boruto: Naruto Next Generations	5.81	Action Adventure SuperPower MartialArts Shounen	-1	Spring 2017	Studio Pierrot	529732	26	0.25
34572	Black Clover	7.38	Action Comedy Magic Fantasy Shounen	170	Fall 2017	Studio Pierrot	860404	103	0.13
34973	Love Live! Sunshine!! 2nd Season	7.58	Music School SliceofLife	13	Fall 2017	Sunrise	84826	50345	0.04
34577	Nanatsu no Taizai: Imashime no Fukkatsu	7.84	Action Adventure Fantasy Magic Shounen Supernatural	24	Winter 2018	A-1 Pictures	757404	592000	0.02
34580	Nana Maru San Batsu	6.7	Game School Seinen	12	Summer 2017	TMS Entertainment	63869	32204	0.15
34591	Natsume Yuujinchou Roku	8.65	SliceofLife Demons Supernatural Drama Shoujo	11	Spring 2017	Shuka	134852	64091	0.02
34599	Made in Abyss	8.74	Sci-Fi Adventure Mystery Drama Fantasy	13	Summer 2017	Kinema Citrus	862410	550412	0.02
34607	Lostorage Conflated WIXOSS	7.1	Game Psychological	12	Spring 2018	J.C.Staff	25416	10405	0.07
34612	Saiki Kusuo no Ψ-nan 2	8.48	SliceofLife Comedy Supernatural School Shounen	24	Winter 2018	J.C.Staff, Egg Firm	349764	251764	0.01
34618	Blend S	7.36	SliceofLife Comedy	12	Fall 2017	A-1 Pictures	453108	306162	0.04
34620	Kono Yo no Hate de Koi wo Utau Shoujo YU-NO	6.58	Sci-Fi Drama	26	Spring 2019	feel.	100399	32961	0.18
34636	Ballroom e Youkoso	8.21	Comedy Drama Romance School Shounen Sports	24	Summer 2017	Production I.G	218597	116967	0.07
34643	Kokekkou-san	-1	Kids	26	Fall 2009	Unknown	136	42	0.43
34662	Fate/Apocrypha	7.16	Action Supernatural Drama Magic Fantasy	25	Summer 2017	A-1 Pictures	339526	194061	0.08
34664	Capsule Boy	-1	Sci-Fi Kids	26	Spring 2016	Unknown	144	45	0.41
34665	Kemy Lang Buka Chaka	-1	Adventure Kids	156	Winter 2009	Unknown	127	43	0.4
34666	Kemy	-1	Kids	52	Winter 2011	Unknown	125	41	0.4
34667	Kemy Tamheomdae	-1	Adventure Kids	26	Summer 2016	Unknown	120	35	0.47
34669	Ba La La Xiao Mo Xian Zhi: Feiyue Cai Ling Bao 2nd Season	-1	Comedy Magic Shoujo	26	Spring 2017	Qianqi Animation	540	121	0.29
34676	Xiong Chumo Zhi: Xiari Lianlian Kan	-1	Comedy Kids	52	Unknown	Unknown	147	53	0.45
34677	Xiong Chumo Zhi: Qiu Ri Tuantuanzhuan	-1	Comedy Kids	52	Unknown	Unknown	139	52	0.46
34701	Girls★Battle Aloe Megumi	-1	Action Comedy Kids	24	Unknown	Unknown	126	34	0.44
34712	Kujira no Kora wa Sajou ni Utau	7.2	Mystery SuperPower Drama Fantasy Shoujo	12	Fall 2017	J.C.Staff	165474	89167	0.08
34725	Kaito x Ansa	5.03	Game	12	Summer 2017	Tengu Kobo	3525	311	0.23
34738	Sengoku Choujuu Giga: Otsu	5.91	Historical Demons Supernatural Samurai	13	Winter 2017	ILCA	2564	1590	0.09
34741	Tomica Hyper Rescue Drive Head: Kidou Kyuukyuu Keisatsu (TV)	-1	Adventure Mecha Police Sci-Fi	37	Spring 2017	OLM	806	133	0.37
34745	Mahoujin Guruguru (2017)	7.86	Adventure Fantasy Magic Comedy Shounen	24	Summer 2017	Production I.G	27728	8691	0.13
34754	Rilu Rilu Fairilu: Yousei no Door	6.6	SliceofLife Magic Fantasy	59	Winter 2016	Studio Deen	1898	243	0.23
34771	Dynamic Chord	4.71	Music	12	Fall 2017	Studio Pierrot, Pierrot Plus	8009	1383	0.39
34787	Idol Time PriPara	7.13	Music School Shoujo	51	Spring 2017	Tatsunoko Production, Dongwoo A&E	4449	1241	0.16
34794	Yukai na Animal Bus	-1	Comedy Kids	12	Winter 2017	TMS Entertainment	193	40	0.53
34798	Yuru Camp△	8.27	SliceofLife Comedy	12	Winter 2018	C-Station	306650	151226	0.04
34799	PriPri Chii-chan!!	6.24	Sci-Fi Comedy Shoujo	36	Spring 2017	OLM	2678	584	0.32
34800	Action Heroine Cheer Fruits	6.55	Comedy School SliceofLife	12	Summer 2017	Diomedéa	11747	3952	0.22
34822	Tsuki ga Kirei	8.18	Romance School	12	Spring 2017	feel.	358911	197652	0.04
34823	Souryo to Majiwaru Shikiyoku no Yoru ni...	4.62	Drama Ecchi Romance	12	Spring 2017	Seven	36082	15954	0.24
34825	Keppeki Danshi! Aoyama-kun	6.99	Comedy Seinen Sports	12	Summer 2017	Studio Hibari	118676	63291	0.1
34831	Hanitarou Desu.	-1	SliceofLife Comedy	70	Fall 1997	Toei Animation	153	42	0.42
34832	Macross (Shin Series)	-1	Action Military Sci-Fi Music Space Romance Mecha	-1	Unknown	Unknown	3456	0	-1
34834	Hina Logi: From Luck & Logic	6.68	Action Comedy Fantasy School	12	Summer 2017	Doga Kobo	23435	8966	0.15
34836	Future Card Buddyfight Battsu	6.33	Game	52	Spring 2017	Xebec, OLM	2645	1301	0.14
34839	Sanrio Danshi	6.61	SliceofLife Drama School	12	Winter 2018	Studio Pierrot	40336	15458	0.16
34841	Haruniwa Ie no 3 Nin-me	-1	SliceofLife Comedy Supernatural	45	Winter 1998	Toei Animation	188	39	0.41
34852	Pikaia!!	-1	SliceofLife Kids Drama	13	Winter 2017	Unknown	386	110	0.27
34863	Zoku Touken Ranbu: Hanamaru	7.31	Action SliceofLife Comedy Historical Drama Fantasy	12	Winter 2018	Doga Kobo	22084	8170	0.07
34866	Yu☆Gi☆Oh! VRAINS	6.64	Action Game Sci-Fi Fantasy Shounen	120	Spring 2017	Gallop	32679	8029	0.21
34881	Aho Girl	6.9	Comedy Romance School Shounen	12	Summer 2017	Diomedéa	337686	228698	0.07
34888	Makeruna!! Aku no Gundan!	5.32	Comedy Shounen	12	Spring 2017	Tatsunoko Production	1648	794	0.27
34891	Buppu na Mainichi	-1	Comedy	27	Spring 2017	MMDGP	317	44	0.58
34901	Beyblade Burst God	6.7	Action Adventure Sci-Fi Shounen Sports	51	Spring 2017	OLM	7992	4692	0.08
34902	Tsurezure Children	7.67	Comedy Romance School Shounen	12	Summer 2017	Studio Gokumi	483639	329447	0.03
34903	RoboMasters the Animated Series	6.42	Action Mecha School	6	Fall 2017	Gonzo, DandeLion Animation Studio	11227	2821	0.18
34905	Duel Masters (2017)	5.73	Action Adventure Comedy Shounen	51	Spring 2017	Ascension	1389	190	0.36
34914	New Game!!	7.76	Game SliceofLife Comedy	12	Summer 2017	Doga Kobo	200056	128094	0.03
34915	The iDOLM@STER SideM	7.18	Music	13	Fall 2017	A-1 Pictures	17070	6106	0.12
34927	Rilu Rilu Fairilu: Mahou no Kagami	-1	SliceofLife Magic Fantasy	51	Spring 2017	Studio Deen	1387	139	0.31
34928	Akindo Sei no Little Peso	-1	Sci-Fi Comedy	12	Spring 2017	Fanworks	373	86	0.49
34933	Kakegurui	7.42	Game Mystery Psychological Drama School Shounen	12	Summer 2017	MAPPA	843908	619004	0.05
34934	Koi to Uso	6.57	Drama Romance School	12	Summer 2017	LIDENFILMS	280436	161444	0.08
34964	Killing Bites	6.63	Action Ecchi Sci-Fi Seinen	12	Winter 2018	LIDENFILMS	133604	72386	0.11
34966	Jigoku Shoujo: Yoi no Togi	6.54	Horror Mystery Psychological Supernatural	6	Summer 2017	Studio Deen	45113	18308	0.08
35444	Neko to Mata	-1	Supernatural	67	Spring 2017	Unknown	497	34	0.52
34975	Marvel Future Avengers	5.64	Action SuperPower Kids	26	Summer 2017	Madhouse	3050	455	0.24
34978	Nobunaga no Shinobi: Ise Kanegasaki-hen	7.13	Comedy Historical	26	Spring 2017	TMS Entertainment	9186	5635	0.05
34979	Shounen Ashibe: Go! Go! Goma-chan 2	5.87	SliceofLife Comedy Seinen	32	Spring 2017	Bridge, Husio Studio	886	314	0.28
34984	Koi wa Ameagari no You ni	7.54	Romance Seinen	12	Winter 2018	Wit Studio	196601	94650	0.06
34990	Unicorn no Kyupi	-1	Kids Fantasy	-1	Spring 2017	Unknown	139	0	0.53
35015	Ani ni Tsukeru Kusuri wa Nai!	7.46	SliceofLife Comedy School	12	Spring 2017	Fanworks, Imagineer	60586	34482	0.04
35025	"Eikou Naki Tensai-tachi" Kara no Monogatari	-1	Sports	2	Spring 2017	J.C.Staff	550	88	0.39
35062	Mahoutsukai no Yome	8.1	SliceofLife Magic Fantasy Shounen	24	Fall 2017	Wit Studio	622300	272915	0.07
35067	Osomatsu-san 2nd Season	7.6	Comedy Parody	25	Fall 2017	Studio Pierrot	43693	18863	0.09
35069	Sekai no Yami Zukan	4.68	Horror Supernatural	13	Spring 2017	ILCA	19500	6816	0.27
35073	Overlord II	7.78	Action Game Adventure Supernatural Magic Fantasy	13	Winter 2018	Madhouse	646042	510232	0.02
35075	Hoozuki no Reitetsu 2nd Season	7.88	Comedy Demons Fantasy Seinen Supernatural	13	Fall 2017	Studio Deen	35964	18466	0.04
35076	Juuni Taisen	6.55	Action	12	Fall 2017	Graphinica	224045	135709	0.08
35078	Mitsuboshi Colors	7.43	Comedy Shounen SliceofLife	12	Winter 2018	SILVER LINK.	75163	28596	0.11
35079	Kino no Tabi: The Beautiful World - The Animated Series	7.58	Action Adventure SliceofLife	12	Fall 2017	Lerche	143354	68248	0.09
35106	Ninja Tamamaru	-1	Kids MartialArts	26	Spring 2008	Unknown	120	34	0.46
35107	Shin Ninja Tamamaru	-1	Kids MartialArts	26	Winter 2009	Unknown	103	27	0.47
35108	Ninja Tamamaru: Toukaidou Gojuusan-ji	-1	Kids MartialArts	26	Winter 2010	Unknown	111	30	0.45
35112	Panpaka Pants O New-san	-1	Comedy Kids	24	Spring 2017	Unknown	223	21	0.51
35114	Clione no Akari	5.41	Drama School	12	Summer 2017	drop	12497	4250	0.29
35138	Taikong Lixianji	-1	Action Sci-Fi Kids Mecha	26	Winter 2010	Unknown	264	49	0.34
35156	High & Low: G-Sword	5.14	Action Drama Shounen	5	Winter 2017	Unknown	526	234	0.16
35180	3-gatsu no Lion 2nd Season	9	Drama Game Seinen SliceofLife	22	Fall 2017	Shaft	266243	148885	0.02
35183	Gurazeni	6.34	Comedy Drama Seinen Sports	12	Spring 2018	Studio Deen	10089	3960	0.3
35203	Isekai wa Smartphone to Tomo ni.	6.24	Adventure Harem Comedy Magic Romance Fantasy	12	Summer 2017	Production Reed	346386	257027	0.08
35220	Youkai Apartment no Yuuga na Nichijou	7.18	SliceofLife Mystery Supernatural	26	Summer 2017	Shin-Ei Animation	56216	23155	0.16
35222	Gakuen Babysitters	7.84	Comedy School Shoujo SliceofLife	12	Winter 2018	Brain's Base	168776	105231	0.04
35226	Akita Kenritsu Iburi Gakkou Chuutou-bu	-1	Comedy	27	Spring 2017	Unknown	357	14	0.61
35240	Princess Principal	7.71	Action Mystery Historical	12	Summer 2017	Actas, Studio 3Hz	155342	71772	0.07
35241	Konohana Kitan	7.56	SliceofLife Fantasy Seinen ShoujoAi	12	Fall 2017	Lerche	109029	43371	0.11
35247	Owarimonogatari 2nd Season	8.93	Mystery Comedy Supernatural Vampire	7	Summer 2017	Shaft	270878	159101	0.01
35248	18if	6.17	Mystery Supernatural	13	Summer 2017	Gonzo	46598	17927	0.24
35249	Uma Musume: Pretty Derby (TV)	7.28	Comedy SliceofLife Sports	13	Spring 2018	P.A. Works	82647	35957	0.11
35250	Urahara	5.79	Comedy Fantasy Psychological Sci-Fi	12	Fall 2017	Shirogumi, EMT Squared	30156	6136	0.4
35251	Sengoku Night Blood	6.1	Historical Romance Fantasy	12	Fall 2017	Typhoon Graphics	34603	10765	0.24
35252	Hatena☆Illusion	5.37	Comedy Supernatural Romance Ecchi	12	Winter 2020	Children's Playground Entertainment	29551	9560	0.29
35254	Time Bokan: Gyakushuu no San Akunin	5.99	Adventure Comedy Historical Mecha	24	Fall 2017	Tatsunoko Production	1505	428	0.25
35295	Washimo 5th Season	-1	Sci-Fi SliceofLife Comedy Kids School	44	Spring 2017	Studio Deen	174	36	0.52
35298	Ramen Daisuki Koizumi-san	6.52	Comedy SliceofLife	12	Winter 2018	Studio Gokumi, AXsiZ	49788	20757	0.18
35302	Neko Neko Nihonshi 2nd Season	6.21	Historical Parody Kids Samurai	32	Spring 2017	Joker Films	475	150	0.24
35303	Furusato Meguri: Nippon no Mukashibanashi	6.14	Historical Kids Supernatural	50	Spring 2017	Unknown	841	193	0.22
35313	Kemono Friends 2	5.87	Adventure Comedy	12	Winter 2019	Tomason	13642	5233	0.18
35317	Mini Rope	-1	Comedy SliceofLife	4	Spring 2012	Unknown	206	60	0.39
35319	Freaky Highschool	-1	Horror School	69	Summer 2016	Unknown	367	43	0.53
35330	Poputepipikku	7.27	Comedy Dementia Parody	12	Winter 2018	Kamikaze Douga	168467	84386	0.14
35332	World Fool News (TV) Part II	5.78	SliceofLife Comedy	12	Spring 2017	Unknown	949	426	0.27
35334	ClassicaLoid 2nd Season	6.5	Music Comedy	25	Fall 2017	Sunrise	6019	1865	0.15
35335	Musashino!	-1	Comedy School SliceofLife	-1	Unknown	A-Real	3504	0	-1
35362	Mori no Yousei: Kinoko no Musume	-1	Music Comedy Fantasy	-1	Unknown	Unknown	1261	0	-1
35364	Kkoma Sinseon Tao	-1	Kids Magic	39	Summer 2009	Unknown	121	44	0.34
35365	Kkoma Sinseon Tao 2	-1	Kids Magic	13	Winter 2013	Unknown	116	44	0.35
35370	Teekyuu 9	6.61	Comedy Sports	12	Summer 2017	Millepensee	10794	6830	0.03
35372	Otoppe	-1	Music Kids Fantasy	-1	Spring 2017	Unknown	167	0	0.52
35376	Himouto! Umaru-chan R	7.36	Comedy School Seinen SliceofLife	12	Fall 2017	Doga Kobo	178583	111513	0.04
35383	Yousei Land Mukashibanashi	4.93	Comedy Historical Fantasy	12	Spring 2017	Unknown	572	242	0.23
35385	Yukai na Animal Bus 2nd Season	-1	Comedy Kids	12	Summer 2017	TMS Entertainment	140	34	0.48
35413	Imouto sae Ireba Ii.	7.38	Comedy Romance	12	Fall 2017	SILVER LINK.	228968	129114	0.07
35427	Animegataris	6.42	Comedy Parody School	12	Fall 2017	WAO World	61425	28562	0.15
35434	Konbini Kareshi	6.3	SliceofLife Romance	12	Summer 2017	Studio Pierrot	68262	28682	0.17
35476	Little Charo 4: Eigo de Aruku New York	-1	Adventure Kids	36	Spring 2013	Unknown	104	30	0.42
35478	Neko no Robu	-1	SliceofLife Comedy	-1	Spring 2017	Kachidoki Studio	919	0	0.54
35484	Osake wa Fuufu ni Natte kara	6.94	SliceofLife Comedy Romance	13	Fall 2017	Creators in Pack	135273	81680	0.06
35503	Shoujo☆Kageki Revue Starlight	7.62	Music School	12	Summer 2018	Kinema Citrus	57600	22503	0.09
35507	Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e (TV)	7.85	SliceofLife Psychological Drama School	12	Summer 2017	Lerche	577290	437639	0.02
35508	Shampoo Ouji	-1	Adventure Fantasy Kids	12	Fall 2007	Unknown	107	29	0.44
35516	Dappys	5.36	Music Comedy	4	Spring 2017	DLE	922	105	0.41
35517	Caribadix	-1	Music Comedy	46	Spring 2017	Unknown	368	59	0.5
35540	Slow Start	7.03	Comedy School SliceofLife	12	Winter 2018	CloverWorks	63210	26390	0.12
35541	Turning Mecard	5.97	Game Adventure Cars Kids Mecha	52	Winter 2015	Unknown	553	191	0.21
35542	Turning Mecard W	-1	Game Adventure Cars Kids Mecha	26	Spring 2016	Unknown	294	104	0.26
35543	Turning Mecard W Season 2	-1	Game Adventure Cars Kids Mecha	26	Spring 2017	Unknown	277	90	0.29
35557	Houseki no Kuni (TV)	8.41	Action Drama Fantasy Mystery Seinen	12	Fall 2017	Orange	304278	156415	0.04
35589	Toji no Miko	6.83	Action Fantasy	24	Winter 2018	Studio Gokumi	63683	18883	0.21
35605	Astar-eul Hyanghae Chaguchagu	-1	Unknown	27	Spring 2014	Unknown	214	48	0.37
35629	Skirt no Naka wa Kedamono Deshita.	5.38	Drama Ecchi Romance	12	Summer 2017	Magic Bus	41984	21467	0.15
35639	Just Because!	7.29	SliceofLife Drama Romance School	12	Fall 2017	Pine Jam	218640	106606	0.08
35641	Vary Peri	-1	Adventure Comedy Kids Magic	40	Fall 2012	Unknown	112	25	0.48
35642	Lei Su Deng Shandian Chong Xian	-1	Cars Kids	26	Unknown	Unknown	210	119	0.2
35643	Huoli Shaonian Wang zhi Chuanqi Zaixian	-1	Game Kids Magic Fantasy	40	Fall 2014	Unknown	217	90	0.24
35656	Oshiri Tantei	-1	Mystery Comedy Kids Fantasy	10	Spring 2018	Toei Animation	494	31	0.42
35672	Yama no Susume: Third Season	7.56	Adventure Comedy SliceofLife	13	Summer 2018	8bit	16542	7717	0.03
35694	Kirin the Noop	-1	Adventure	2	Winter 2014	Unknown	277	87	0.41
35695	Keito no Yousei: Knit to Wool	-1	Kids Fantasy	4	Summer 2015	Unknown	140	15	0.47
35696	Konigiri-kun	-1	Kids	-1	Winter 2015	Unknown	168	0	0.49
35697	Beads no Mori no Rabi	-1	Kids Magic	-1	Spring 2015	Unknown	172	0	0.55
35698	Oidon to	-1	Sports Kids	-1	Winter 2016	Unknown	155	0	0.51
35699	Mono-darake!	-1	Kids	3	Summer 2014	Unknown	137	20	0.41
35710	Baby Gamba	-1	Comedy Kids	13	Summer 2014	Unknown	181	52	0.45
35712	Boku no Kanojo ga Majimesugiru Sho-bitch na Ken	6.28	Harem Comedy Romance Ecchi School	10	Fall 2017	Diomedéa, Studio Blanc	183979	99186	0.13
35714	Yami Shibai 5	6.3	Dementia Horror Supernatural	13	Summer 2017	ILCA	17920	11479	0.03
35730	Musekinin Galaxy☆Tylor	4.01	Military Sci-Fi Space Comedy Parody	12	Summer 2017	Seven	5071	1680	0.34
35739	Pikotarou no Lullaby Lullaby (TV)	5.55	Comedy Parody	9	Summer 2017	DLE	4413	2429	0.19
35756	Comic Girls	7.42	SliceofLife Comedy	12	Spring 2018	Nexus	111146	54561	0.07
35757	Gin no Guardian II	6.61	Adventure Fantasy	6	Winter 2018	Emon, Blade	44859	26971	0.04
35760	Shingeki no Kyojin Season 3	8.59	Action Military Mystery SuperPower Drama Fantasy Shounen	12	Summer 2018	Wit Studio	1212430	991045	0.01
35788	Shokugeki no Souma: San no Sara	8.14	Ecchi School Shounen	12	Fall 2017	J.C.Staff	659490	526083	0.01
35789	Yowamushi Pedal: Glory Line	7.58	Comedy Drama Shounen Sports	25	Winter 2018	TMS Entertainment	41568	24272	0.03
35790	Tate no Yuusha no Nariagari	8	Action Adventure Drama Fantasy	25	Winter 2019	Kinema Citrus	907714	636889	0.04
35799	Miniforce	-1	Action Adventure	52	Unknown	Unknown	82	36	0.32
35817	Curry no Kuni no Coburoux	-1	Comedy	13	Fall 2004	Artland	165	48	0.38
35818	Love Kome: We Love Rice 2nd Season	4.83	SliceofLife	12	Fall 2017	Encourage Films	3411	1755	0.11
35821	Chio-chan no Tsuugakuro	7.45	Comedy Seinen	12	Summer 2018	Diomedéa	89367	46073	0.09
35828	Miira no Kaikata	7.42	SliceofLife Comedy Supernatural	12	Winter 2018	8bit	83252	40970	0.09
35834	Angolmois: Genkou Kassenki	7.15	Action Drama Historical Military Samurai	12	Summer 2018	NAZ	47270	24327	0.11
35835	RErideD: Tokigoe no Derrida	5.7	Action Sci-Fi Drama	12	Fall 2018	GEEK TOYS	35741	10889	0.25
35838	Shoujo Shuumatsu Ryokou	8.19	Adventure Mystery Sci-Fi SliceofLife	12	Fall 2017	White Fox	228188	95790	0.06
35839	Sora yori mo Tooi Basho	8.57	Adventure Comedy Drama	13	Winter 2018	Madhouse	344406	168250	0.03
35843	Gintama.: Porori-hen	8.53	Action Comedy Historical Parody Samurai Sci-Fi Shounen	13	Fall 2017	Bandai Namco Pictures	127958	79630	0.01
35847	SSSS.Gridman	7.19	Action Sci-Fi Mecha	12	Fall 2018	Trigger	199953	102416	0.08
35849	Darling in the FranXX	7.33	Action Drama Mecha Romance Sci-Fi	24	Winter 2018	A-1 Pictures, Trigger, CloverWorks	988865	660081	0.06
35857	Lupin III: Part 5	8.17	Action Adventure Comedy Mystery Seinen	24	Spring 2018	Telecom Animation Film	28897	11879	0.05
35860	Karakai Jouzu no Takagi-san	7.77	SliceofLife Comedy Romance School Shounen	12	Winter 2018	Shin-Ei Animation	361838	207570	0.06
35883	Cinderella Girls Gekijou 2nd Season	6.65	SliceofLife Comedy	13	Fall 2017	Gathering, Lesprit	7323	4041	0.04
35889	Hakata Tonkotsu Ramens	7.41	Action Mystery	12	Winter 2018	Satelight	120346	58057	0.1
35905	Ryuuou no Oshigoto!	6.92	Comedy Game SliceofLife	12	Winter 2018	Project No.9	133518	70486	0.08
35914	Catchy-kun no Nice Catch!	-1	Comedy	13	Summer 2017	DLE	229	44	0.58
35920	Hello Jadoo	-1	SliceofLife	122	Summer 2011	Unknown	234	79	0.31
35923	Ame-iro Cocoa Series: Ame-con!!	4.78	SliceofLife Comedy	12	Fall 2017	EMT Squared	4398	2073	0.17
35928	Devils Line	6.79	Action Drama Romance Seinen Supernatural Vampire	12	Spring 2018	Platinum Vision	164432	78637	0.12
35957	Yura Yura Suizokukan	-1	Comedy SliceofLife	40	Summer 2017	Kachidoki Studio	349	38	0.51
35962	Papan Ga Panda!	-1	Kids Music	-1	Unknown	Unknown	115	0	0.53
35963	PJ Berri no Mogumogu Munyamunya Season 2	-1	Comedy	6	Summer 2017	Doga Kobo	257	60	0.42
35964	Basilisk: Ouka Ninpouchou	5.47	Action Drama Historical MartialArts	24	Winter 2018	Seven Arcs Pictures	29524	7361	0.26
35968	Wotaku ni Koi wa Muzukashii	7.96	Comedy Romance SliceofLife	11	Spring 2018	A-1 Pictures	528912	336834	0.03
35972	Fairy Tail: Final Series	7.55	Action Adventure Comedy Magic Fantasy Shounen	51	Fall 2018	A-1 Pictures, Bridge, CloverWorks	323151	165079	0.05
35983	Harukana Receive	6.7	SliceofLife Sports	12	Summer 2018	C2C	80796	34552	0.16
35988	Dame x Prince Anime Caravan	6.53	Adventure Comedy Romance Fantasy	12	Winter 2018	Studio Flad	22025	8041	0.16
35994	Satsuriku no Tenshi	6.87	Adventure Horror Psychological Thriller	16	Summer 2018	J.C.Staff	382383	197570	0.12
35997	Märchen Mädchen	5.4	Fantasy Magic School	10	Winter 2018	Hoods Entertainment	35063	12284	0.27
35999	Dia Horizon (Kabu)	5.05	Action Adventure Magic Fantasy	12	Fall 2017	Fanworks	4952	235	0.67
36000	Sora to Umi no Aida	5.68	Sci-Fi Adventure Space Fantasy	12	Fall 2018	TMS Entertainment	17960	4900	0.37
36001	Alice or Alice	5.33	Seinen SliceofLife	12	Spring 2018	EMT Squared	30139	13686	0.16
36002	Otona no Ikkyuu-san 2nd Season	-1	Comedy Historical	13	Spring 2017	Unknown	171	46	0.41
36003	Kimoshiba 2	-1	Comedy Horror Kids Supernatural	13	Spring 2017	Jinnis Animation Studios	142	47	0.37
36009	Two Car	5.65	Sports	12	Fall 2017	SILVER LINK.	19463	6694	0.32
36015	Shaolin Chuanqi	-1	Action Adventure Comedy Fantasy MartialArts Shounen	26	Unknown	Unknown	77	15	0.49
36022	Cardfight!! Vanguard G: Z	6.48	Action Game Shounen	24	Fall 2017	OLM	5083	2810	0.07
36023	Persona 5 the Animation	6.47	Action Fantasy Supernatural	26	Spring 2018	CloverWorks	179712	59758	0.2
36027	Ousama Game The Animation	5	Mystery Dementia Horror Supernatural Drama School	12	Fall 2017	Seven	176008	97969	0.18
36028	Golden Kamuy	7.83	Action Adventure Historical Seinen	12	Spring 2018	Geno Studio	220135	107966	0.05
36029	Hakyuu Houshin Engi	5.41	Adventure Demons Fantasy Shounen Supernatural	23	Winter 2018	C-Station	17629	3262	0.41
36036	Running Man	-1	Action Adventure Kids	48	Summer 2017	Unknown	101	31	0.29
36037	Senran Kagura Shinovi Master: Tokyo Youma-hen	6.3	Action Comedy Ecchi School	12	Fall 2018	TNK	30265	8461	0.12
36049	Dagashi Kashi 2	6.87	SliceofLife Comedy Shounen	12	Winter 2018	Tezuka Productions	115150	62588	0.06
36073	Aiseki Mogol Girl	-1	Comedy	12	Fall 2017	Unknown	374	86	0.52
36094	Hakumei to Mikochi	7.65	Fantasy Seinen SliceofLife	12	Winter 2018	Lerche	47637	15263	0.15
36108	Takunomi.	6.43	Comedy SliceofLife	12	Winter 2018	Production IMS	36901	14206	0.16
36124	Itou Junji: Collection	6.17	Mystery Comedy Horror Demons Psychological Supernatural Drama Thriller School	12	Winter 2018	Studio Deen	95082	45530	0.16
36135	Oretacha Youkai Ningen	-1	Demons Horror Parody	25	Fall 2017	DLE	1582	137	0.38
36144	Garo: Vanishing Line	7.17	Action Demons Supernatural Fantasy	24	Fall 2017	MAPPA	59132	20390	0.16
36166	Fireball Humorous	5.76	Sci-Fi Comedy	3	Fall 2017	Jinnis Animation Studios	2752	1054	0.16
36167	Yuhuwa Chingudeul	-1	Kids	26	Unknown	Unknown	65	21	0.35
36196	Kaijuu Girls: Ultra Kaijuu Gijinka Keikaku 2nd Season	6.14	Comedy Fantasy Parody	12	Winter 2018	Studio PuYUKAI	4060	2217	0.08
36198	Omiai Aite wa Oshiego, Tsuyoki na, Mondaiji.	5.59	Ecchi Romance School	12	Fall 2017	Seven	47639	21625	0.15
36220	Itsudatte Bokura no Koi wa 10 cm Datta.	7.52	Comedy Drama Romance School	6	Fall 2017	Lay-duce	142253	74290	0.03
36231	Hinomaru!	-1	Adventure Comedy Fantasy	12	Summer 2017	Unknown	466	42	0.48
36245	Evil or Live	5.83	Psychological School	12	Fall 2017	Haoliners Animation League	62247	29584	0.19
36252	Library Cross Infinite	-1	Mystery Supernatural Romance Josei	-1	Unknown	Unknown	1476	0	-1
36259	Pingu in the City	6.59	Comedy Kids SliceofLife	26	Fall 2017	DandeLion Animation Studio	37137	13311	0.19
36265	Sylvanian Families: Mini Story	-1	Kids SliceofLife	12	Fall 2017	Unknown	210	65	0.38
36266	Mahou Shoujo Site	6.48	Drama Horror Psychological Supernatural	12	Spring 2018	production doA	152026	70903	0.12
36267	Uchuu Senkan Tiramisù	6.38	Comedy Mecha Sci-Fi SliceofLife Space	13	Spring 2018	Gonzo	23788	9437	0.19
36288	Glamorous Heroes	4.5	Action Game	10	Fall 2017	drop	4043	542	0.25
36296	Hinamatsuri	8.21	Comedy Sci-Fi Seinen SliceofLife Supernatural	12	Spring 2018	feel.	347326	209253	0.03
36309	Butlers: Chitose Momotose Monogatari	5.64	Comedy School Supernatural	12	Spring 2018	SILVER LINK.	20756	5531	0.26
36316	Shichisei no Subaru	6.13	Action Fantasy Game Sci-Fi	12	Summer 2018	Lerche	97150	45225	0.16
36317	Gaikotsu Shotenin Honda-san	7.32	Comedy SliceofLife	12	Fall 2018	DLE	84659	39834	0.11
36407	Kenja no Mago	6.54	Action Comedy Magic Romance Fantasy	12	Spring 2019	SILVER LINK.	331554	231727	0.07
36409	Yodel no Onna	5.36	Music Comedy	-1	Fall 2017	DLE	1168	0	0.42
36418	Koneko no Chi: Ponponra Dairyokou	6.49	SliceofLife	25	Spring 2018	Marza Animation Planet	1904	578	0.16
36423	Zhandou Wang Zhi Jufeng Zhan Hun	6.38	Action Kids Shounen	52	Summer 2012	Unknown	498	231	0.16
36425	Zhandou Wang Zhi Jufeng Zhan Hun 2	-1	Action Kids Shounen	40	Fall 2013	Unknown	323	171	0.18
36427	Zhandou Wang Zhi Jufeng Zhan Hun 3	-1	Action Kids Shounen	40	Fall 2015	Unknown	359	177	0.18
36429	Zhen Gyi Hong Shi	-1	Action Military Sci-Fi Adventure Mecha	52	Fall 2014	Unknown	362	50	0.35
36431	One Room Second Season	6.13	SliceofLife	12	Summer 2018	Zero-G	34579	18784	0.05
36432	Toaru Majutsu no Index III	6.76	Action Sci-Fi SuperPower Magic	26	Fall 2018	J.C.Staff	174394	74993	0.07
36440	Ku Pao Ying Xiong	5.69	Action Adventure Fantasy Game Magic	26	Fall 2017	B.CMAY PICTURES	3271	389	0.27
36456	Boku no Hero Academia 3rd Season	8.25	Action Comedy SuperPower School Shounen	25	Spring 2018	Bones	1333355	1080843	0.01
36458	Soukou Musume Senki	5.3	Action Military Fantasy	12	Winter 2021	Studio A-CAT	8605	2	0.24
36470	Tada-kun wa Koi wo Shinai	7.55	Comedy Romance SliceofLife	13	Spring 2018	Doga Kobo	185649	96798	0.06
36474	Sword Art Online: Alicization	7.57	Action Game Adventure Romance Fantasy	24	Fall 2018	A-1 Pictures	651688	440041	0.04
36475	Sword Art Online Alternative: Gun Gale Online	7.07	Action Fantasy Game Military Sci-Fi	12	Spring 2018	Studio 3Hz	421918	281246	0.07
36483	B-Project: Zecchou*Emotion	6.71	Music Shoujo	12	Winter 2019	Bandai Namco Pictures	10903	4243	0.09
36486	Lalala Lala-chan ★Uchuu ni Muchuu★	-1	Adventure Kids Fantasy	12	Fall 2017	Usagi Ou	184	51	0.4
36506	Fuwafuwa Hour: Pui Pui & Muu Muu	-1	Kids Fantasy	-1	Summer 2017	Unknown	166	0	0.53
36510	Ulysses: Jehanne Darc to Renkin no Kishi	5.35	Action Fantasy	12	Fall 2018	AXsiZ	74217	25644	0.26
36511	Tokyo Ghoul:re	6.53	Action Psychological Supernatural Mystery Drama Horror Seinen	12	Spring 2018	Studio Pierrot, Pierrot Plus	698167	486747	0.06
36513	Rokuhoudou Yotsuiro Biyori	7.61	SliceofLife Seinen	12	Spring 2018	Zexcs	22827	10308	0.09
36516	Beatless	6.2	Action Drama Romance Sci-Fi	20	Winter 2018	Diomedéa	136059	36022	0.27
36522	Ling Qi 2	7.49	Action Comedy Magic ShounenAi Supernatural	12	Winter 2018	Haoliners Animation League	28932	15475	0.04
36525	Dorei-ku The Animation	5.98	Drama Psychological	12	Spring 2018	TNK, Zero-G	50882	21256	0.19
36530	Porong Porong Pororo 6	-1	Kids	26	Spring 2016	Unknown	160	74	0.29
36531	Shinkansen Henkei Robo Shinkalion The Animation	6.78	Action Sci-Fi Kids Mecha	76	Winter 2018	OLM	2533	306	0.29
36536	Starmyu 3rd Season	6.89	Music SliceofLife School	12	Summer 2019	C-Station	7559	2702	0.08
36548	Kokkoku	7.04	Psychological Supernatural Drama Mystery Seinen	12	Winter 2018	Geno Studio	142143	64453	0.11
36551	Lalala Lala-chan: Patapata Daisensou	-1	Adventure Fantasy Kids	12	Fall 2016	Usagi Ou	157	54	0.38
36552	Pikachin-Kit	-1	Sci-Fi Comedy Kids	115	Winter 2018	OLM, Shin-Ei Animation	309	37	0.43
36563	Megalo Box	7.92	Action Sci-Fi SliceofLife Sports Drama	13	Spring 2018	TMS Entertainment	340142	210698	0.04
36565	Major 2nd (TV)	7.49	Comedy Drama Shounen Sports	25	Spring 2018	OLM	24861	13264	0.06
36587	Granblue Fantasy The Animation Season 2	6.78	Adventure Fantasy	12	Fall 2019	MAPPA	46692	17206	0.07
36593	Hug tto! Precure	7.72	Action Magic Fantasy Shoujo	49	Winter 2018	Toei Animation	11216	3248	0.11
36611	Bary-san no Shokoku Manyuuki	-1	Comedy	47	Winter 2016	Kachidoki Studio	161	41	0.42
36618	Flowering Heart 2	6.31	Kids Magic	26	Spring 2017	Unknown	1019	230	0.14
36632	Ore ga Suki nano wa Imouto dakedo Imouto ja Nai	4.91	Comedy Ecchi Romance	10	Fall 2018	NAZ, Magia Doraglier	92295	40493	0.21
36633	Date A Live III	7.13	Sci-Fi Harem Comedy Romance Mecha School	12	Winter 2019	J.C.Staff	223731	135419	0.04
36649	Banana Fish	8.45	Action Adventure Drama Shoujo	24	Summer 2018	MAPPA	415468	185959	0.07
36652	Piano no Mori (TV)	7.33	Adventure Music Comedy Drama School Seinen	12	Spring 2018	Gaina	82718	40516	0.09
36653	Tsurune: Kazemai Koukou Kyuudoubu	7.58	Sports Drama School	13	Fall 2018	Kyoto Animation	87195	41884	0.07
36654	Tsukumogami Kashimasu	6.71	SliceofLife Comedy Historical Demons Supernatural	12	Summer 2018	Telecom Animation Film	13797	4423	0.21
36657	Stone Age	-1	Kids Fantasy	26	Summer 2017	Unknown	176	45	0.38
36666	An Ling Yu Shi Di Qi	6.03	Sci-Fi Adventure Kids	13	Spring 2017	Unknown	624	181	0.19
36704	Free!: Dive to the Future	7.59	Comedy Drama School SliceofLife Sports	12	Summer 2018	Kyoto Animation, Animation Do	113969	64505	0.04
36726	Yuragi-sou no Yuuna-san	7.06	Comedy Ecchi Harem Romance Shounen Supernatural	12	Summer 2018	Xebec	186687	99230	0.07
36728	Mameneko	6.06	SliceofLife	12	Winter 2018	Charaction	1173	323	0.25
36735	Capsule Samurai	-1	Comedy Music Samurai	40	Unknown	Unknown	128	46	0.36
36736	Shikato	-1	Comedy Kids	135	Unknown	Unknown	104	36	0.39
36740	Dragon Egg	-1	Action Sci-Fi Kids	52	Fall 2017	Unknown	229	28	0.44
36754	Kakuriyo no Yadomeshi	7.5	Demons Drama Romance Supernatural	26	Spring 2018	Gonzo	101513	41433	0.1
36784	Hataraku Onii-san!	6.36	SliceofLife Comedy	12	Winter 2018	Tomovies	6370	2877	0.2
36793	3D Kanojo: Real Girl	6.78	Romance School Shoujo	12	Spring 2018	Hoods Entertainment	210853	121018	0.1
36797	gdMen	5.91	Comedy Fantasy	12	Winter 2018	Strawberry Meets Pictures	2437	877	0.27
36800	Amanchu! Advance	7.13	SliceofLife Comedy School Shounen	12	Spring 2018	J.C.Staff	27169	11967	0.07
36817	Sunohara-sou no Kanrinin-san	6.86	Comedy SliceofLife	12	Summer 2018	SILVER LINK.	96351	43979	0.09
36828	Caligula (TV)	6.03	Action Sci-Fi	12	Spring 2018	Satelight	65279	22744	0.25
36838	Gintama.: Shirogane no Tamashii-hen	8.81	Action Comedy Historical Parody Samurai Sci-Fi Shounen	12	Winter 2018	Bandai Namco Pictures	126835	75576	0.01
36840	25-sai no Joshikousei	5.54	Ecchi Romance School	12	Winter 2018	Lilix	30002	14048	0.12
36847	Nanatsu no Bitoku	5.21	Ecchi Fantasy	10	Winter 2018	Bridge	40288	16172	0.09
36864	Akkun to Kanojo	6.83	Comedy Josei Romance School	25	Spring 2018	Yumeta Company	101236	53321	0.08
36873	Back Street Girls: Gokudolls	6.93	Comedy Ecchi Seinen	10	Summer 2018	J.C.Staff	94244	52561	0.14
36881	Dennou Senshi Dokan-kun	-1	Comedy	11	Winter 2007	DLE	127	38	0.43
36882	Arifureta Shokugyou de Sekai Saikyou	6.52	Action Adventure Fantasy Harem	13	Summer 2019	Asread, White Fox	353554	229911	0.09
36884	Hisone to Maso-tan	7.37	Comedy Drama Fantasy Military	12	Spring 2018	Bones	64726	31781	0.09
36894	Inazma Delivery: Dougyousha Attack-hen	6.25	Action Sci-Fi Comedy	10	Winter 2018	Kanaban Graphics	496	180	0.29
36902	Mahou Shoujo Ore	6.64	Comedy Fantasy Magic	12	Spring 2018	Pierrot Plus	68526	21758	0.21
36906	Jashin-chan Dropkick	6.94	Comedy Supernatural	11	Summer 2018	Nomad	74506	31354	0.15
36934	Captain Tsubasa (2018)	7.42	Action Sports Shounen	52	Spring 2018	David Production	53904	18327	0.16
36943	Tachibanakan Triangle	5.58	Comedy Ecchi ShoujoAi	12	Spring 2018	Creators in Pack, Studio Lings	50063	23817	0.13
36945	Himote House	5.72	Comedy SuperPower	12	Fall 2018	Bouncy	14148	3504	0.36
36949	Shokugeki no Souma: San no Sara - Tootsuki Ressha-hen	8.08	Ecchi School Shounen	12	Spring 2018	J.C.Staff	474921	371901	0.01
36976	Cutie Honey Universe	5.43	Action Comedy Magic Romance Sci-Fi Shounen	12	Spring 2018	Production Reed	15730	3588	0.36
36978	Annyeong Totobi	-1	Kids	104	Summer 2011	Unknown	165	58	0.38
36981	Neko no Dayan (2017)	-1	Kids	30	Fall 2017	Unknown	159	43	0.37
36982	Micchiri Neko	6.8	Comedy Kids	39	Winter 2018	helo.inc	6738	2936	0.15
36993	Chao Zhi Neng Zu Qiu	6.38	Comedy Sports	52	Summer 2010	Unknown	654	285	0.21
37002	Uchi no Oochopus	-1	Kids	38	Winter 2018	Unknown	189	14	0.52
37007	Hinomaruzumou	7.6	MartialArts Shounen Sports	24	Fall 2018	Gonzo	81746	42402	0.1
37008	Tsukipro The Animation 2nd Season	-1	Music	-1	Summer 2021	Unknown	2890	0	-1
37023	Layton Mystery Tanteisha: Katri no Nazotoki File	7.26	Mystery Comedy Kids	50	Spring 2018	LIDENFILMS	13429	1928	0.21
37029	Hoozuki no Reitetsu 2nd Season: Sono Ni	7.84	Comedy Demons Fantasy Seinen Supernatural	13	Spring 2018	Studio Deen	21175	11430	0.02
37036	Binan Koukou Chikyuu Boueibu Happy Kiss!	6.51	Comedy Magic Parody School SliceofLife	12	Spring 2018	Studio Comet	9623	3417	0.15
37054	Sentai Hero Sukiyaki Force: Gunma no Heiwa wo Negau Season e, Mata?	-1	Comedy Parody SuperPower	24	Winter 2018	Studio 4°C	235	43	0.53
37086	Kakegurui××	7.33	Drama Game Mystery Psychological School Shounen	12	Winter 2019	MAPPA	435529	311220	0.03
37096	Puzzle & Dragon	-1	Game Kids	-1	Spring 2018	Studio Pierrot	962	0	0.4
37101	Xiong Chumo Zhi: Xiongxiong Leyuan	-1	Adventure Comedy Kids	52	Spring 2017	Unknown	141	47	0.43
37102	Xiong Chumo Zhi: Tanxian Riji	-1	Adventure Comedy Kids	52	Fall 2017	Unknown	144	48	0.45
37105	Grand Blue	8.41	SliceofLife Comedy Seinen	12	Summer 2018	Zero-G	421403	263651	0.04
37106	Kitsune no Koe	6.43	Music	12	Fall 2018	Yumeta Company	16606	7971	0.11
37117	Bakutsuri Bar Hunter	-1	Adventure Kids	25	Fall 2018	Toei Animation, Gallop	344	49	0.42
37126	Nobunaga no Shinobi: Anegawa Ishiyama-hen	7.05	Comedy Historical	26	Spring 2018	TMS Entertainment	6493	3426	0.05
37140	Gegege no Kitarou (2018)	7.23	Comedy Demons Supernatural Shounen	97	Spring 2018	Toei Animation	40208	2941	0.31
37141	Hataraku Saibou (TV)	7.64	Comedy Shounen	13	Summer 2018	David Production	439537	232069	0.08
37151	Marvel Future Avengers 2nd Season	6.17	Action SuperPower Kids	13	Summer 2018	Madhouse	893	237	0.15
37154	Grimms Notes The Animation	5.99	Action Adventure Magic Fantasy	12	Winter 2019	Brain's Base	34508	9678	0.3
37171	Asobi Asobase	8.19	Comedy School	12	Summer 2018	Lerche	280369	153977	0.05
37178	Kiratto Pri☆chan	6.93	Music SliceofLife Magic Shoujo	51	Spring 2018	Tatsunoko Production, Dongwoo A&E	3740	602	0.2
37188	Fumikiri Jikan	6.39	Comedy SliceofLife	12	Spring 2018	EKACHI EPILKA	32679	18815	0.08
37202	Radiant	6.87	Action Adventure Fantasy Magic	21	Fall 2018	Lerche	143725	57813	0.17
37204	Aikatsu Friends!	7.1	Music SliceofLife School Shoujo	50	Spring 2018	Bandai Namco Pictures	8663	2243	0.16
37206	Anima Yell!	6.93	Comedy School Sports	12	Fall 2018	Doga Kobo	32420	14610	0.13
37210	Isekai Maou to Shoukan Shoujo no Dorei Majutsu	6.98	Comedy Ecchi Fantasy Harem Magic	12	Summer 2018	Ajia-Do	425943	314498	0.04
37219	Xiongmao He Xiao Yan Shu	-1	Comedy Kids	52	Unknown	Unknown	96	29	0.46
37221	Release the Spyce	6.97	Action School	12	Fall 2018	Lay-duce	55692	21592	0.15
37225	Xiao Hua Xian	-1	Kids Magic	52	Winter 2014	Taomee	208	43	0.34
37232	Merc Storia: Mukiryoku no Shounen to Bin no Naka no Shoujo	6.54	Action Adventure Magic Fantasy	12	Fall 2018	Encourage Films	24023	7657	0.25
37244	Gan Gan Ganko-chan 2nd Season	-1	Sci-Fi Comedy Kids	8	Winter 2018	10Gauge	149	41	0.41
37245	Gundam Build Divers	6.31	Action Sci-Fi Mecha	25	Spring 2018	Sunrise	21005	10062	0.14
37254	Last Period: Owarinaki Rasen no Monogatari	6.45	Action Adventure Comedy Fantasy Magic	12	Spring 2018	J.C.Staff	30805	9232	0.21
37258	Omae wa Mada Gunma wo Shiranai	5.23	Comedy School	12	Spring 2018	Asahi Production	12056	5211	0.21
37259	Hanebado!	6.93	Seinen Sports	13	Summer 2018	LIDENFILMS	125469	68041	0.11
37263	Quiz Tokiko-san	-1	Game SliceofLife	40	Summer 2017	Unknown	265	43	0.47
37268	Z/X: Code Reunion	5.7	Sci-Fi Fantasy School Shounen	12	Fall 2019	Passione	10539	2540	0.25
37281	Joshiochi!: 2-kai kara Onnanoko ga... Futtekita!?	6.4	Comedy Ecchi	9	Summer 2018	Ark	39600	18970	0.08
37283	Beyblade Burst Chouzetsu	6.3	Action Sci-Fi Adventure Sports Shounen	51	Spring 2018	OLM	6048	3200	0.11
37300	Xiao Liyu Lixian Ji	-1	Adventure Kids Magic Fantasy	52	Unknown	Unknown	191	98	0.25
37302	Kemurikusa (TV)	7.07	Fantasy Sci-Fi	12	Winter 2019	Yaoyorozu	23522	8094	0.21
37320	Amai Choubatsu: Watashi wa Kanshu Senyou Pet	5.47	Ecchi	13	Spring 2018	Magic Bus	21446	10482	0.1
37324	Youkai Watch: Shadow Side	6.58	Comedy Demons Kids Supernatural	49	Spring 2018	OLM	1447	323	0.16
37325	Kuroneko Monroe	-1	Comedy	23	Spring 2018	Unknown	468	36	0.5
37328	Oshiete Mahou no Pendulum: Rilu Rilu Fairilu	-1	SliceofLife Magic Fantasy	26	Summer 2018	Studio Deen	769	87	0.4
37338	Chuukan Kanriroku Tonegawa	7.14	Comedy Parody Psychological Drama Seinen	24	Summer 2018	Madhouse	30924	9377	0.22
37345	Plunderer	6.5	Action Ecchi Fantasy Shounen	24	Winter 2020	GEEK TOYS	220623	83282	0.17
37347	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka II	7.24	Action Adventure Comedy Romance Fantasy	12	Summer 2019	J.C.Staff	500644	344737	0.02
37349	Goblin Slayer	7.46	Action Adventure Fantasy	12	Fall 2018	White Fox	706484	500635	0.06
37359	Kekkero Ke	-1	Comedy	13	Spring 2018	Production I.G	344	22	0.58
37368	Shounen Ashibe: Go! Go! Goma-chan 3	5.75	SliceofLife Comedy Seinen	32	Spring 2018	Bridge, Husio Studio	583	198	0.31
37369	Neko Neko Nihonshi 3rd Season	-1	Historical Parody Kids Samurai	32	Spring 2018	Joker Films	352	101	0.26
37374	Pastel Memories	5.12	Action Sci-Fi Adventure	12	Winter 2019	Project No.9	16416	3637	0.4
37379	Chihayafuru 3	8.52	Game SliceofLife Sports Drama School Josei	24	Fall 2019	Madhouse	88901	40652	0.02
37393	Watashi, Nouryoku wa Heikinchi de tte Itta yo ne!	6.86	Comedy Fantasy	12	Fall 2019	Project No.9	108903	68657	0.07
37395	Zoids Wild	6.29	Action Sci-Fi Adventure Comedy Mecha	50	Summer 2018	OLM	4919	453	0.38
37403	Ahiru no Sora	7.35	Comedy Sports Drama School Shounen	50	Fall 2019	Diomedéa	132093	38484	0.13
37422	Cinderella Girls Gekijou 3rd Season	6.53	Comedy SliceofLife	13	Summer 2018	Gathering, Lesprit	5075	2566	0.05
37426	Sarazanmai	7.54	Action Supernatural Fantasy	11	Spring 2019	MAPPA, Lapin Track	96624	39439	0.15
37428	Chara to Otamajakushi Shima	-1	Adventure Kids Fantasy	40	Spring 2018	33 Collective	157	22	0.53
37430	Tensei shitara Slime Datta Ken	8.07	Fantasy Shounen	24	Fall 2018	8bit	747190	521775	0.03
37433	Wakaokami wa Shougakusei!	6.56	Comedy SliceofLife Supernatural	24	Spring 2018	Madhouse, DLE	5169	1160	0.24
37435	Carole & Tuesday	7.95	Drama Music Sci-Fi	24	Spring 2019	Bones	227545	97796	0.08
37446	Hyakuren no Haou to Seiyaku no Valkyria	5.75	Fantasy Harem	12	Summer 2018	EMT Squared	127112	70422	0.15
37447	Karakuri Circus (TV)	7.09	Action Adventure Mystery Drama Shounen	36	Fall 2018	Studio VOLN	80469	21784	0.18
37448	Ladyspo	4.18	Action Comedy Sci-Fi	12	Spring 2018	Brio Animation	3101	625	0.33
37450	Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai	8.38	Comedy Supernatural Drama Romance School	13	Fall 2018	CloverWorks	940033	685665	0.02
37451	Boogiepop wa Warawanai (2019)	7.1	Psychological Mystery Horror	18	Winter 2019	Madhouse	167010	48297	0.21
37458	Kyoto Teramachi Sanjou no Holmes	6.75	Drama Mystery Romance SliceofLife	12	Summer 2018	Seven	44749	20368	0.15
37467	Usagi no Matthew	-1	SliceofLife	52	Spring 2018	Kachidoki Studio	601	21	0.57
37472	Lalala Lala-chan: Lala to Mainichi	-1	Adventure Kids Fantasy	12	Winter 2019	Unknown	198	36	0.44
37475	Kishuku Gakkou no Juliet	7.47	Action Comedy Romance School Shounen	12	Fall 2018	LIDENFILMS	216734	128018	0.05
37476	Cardfight!! Vanguard (2018)	6.76	Action Game Shounen	52	Spring 2018	OLM	7611	3166	0.13
37481	Ongaku Shoujo (TV)	5.96	Music SliceofLife	12	Summer 2018	Studio Deen	12816	4006	0.25
37484	Duel Masters!	5.92	Action Adventure Comedy Shounen	51	Spring 2018	Ascension	932	152	0.36
37487	Muhyo to Rouji no Mahouritsu Soudan Jimusho	6.7	Action Mystery Comedy Supernatural Drama Shounen	12	Summer 2018	Studio Deen	40319	11785	0.18
37490	Gyakuten Saiban: Sono "Shinjitsu", Igi Ari! Season 2	7.14	Comedy Drama Mystery Police	23	Fall 2018	CloverWorks	26528	11923	0.07
37491	Gintama.: Shirogane no Tamashii-hen - Kouhan-sen	8.86	Action Sci-Fi Comedy Historical Parody Samurai Shounen	14	Summer 2018	Bandai Namco Pictures	114591	67276	0.01
37496	Double Decker! Doug & Kirill	6.87	Action Sci-Fi Comedy Police	13	Fall 2018	Sunrise	30830	11969	0.17
37497	Irozuku Sekai no Ashita kara	7.55	Drama Magic Romance School	13	Fall 2018	P.A. Works	225561	100486	0.08
37509	W'z	5.54	Action Music	13	Winter 2019	GoHands	19992	5370	0.32
37510	Mob Psycho 100 II	8.84	Action SliceofLife Comedy Supernatural	13	Winter 2019	Bones	835688	623709	0.01
37517	Happy Sugar Life	6.89	Drama Horror Psychological Shounen	12	Summer 2018	Ezόla	186243	95645	0.09
37520	Dororo	8.19	Action Adventure Demons Historical Samurai Shounen Supernatural	24	Winter 2019	Tezuka Productions, MAPPA	688715	373871	0.05
37521	Vinland Saga	8.71	Action Adventure Drama Historical Seinen	24	Summer 2019	Wit Studio	671949	380519	0.02
37522	Pet	6.48	Mystery Psychological Supernatural Seinen	13	Winter 2020	Geno Studio	74529	19739	0.27
37525	Babylon	6.81	Mystery Psychological Thriller	12	Fall 2019	Revoroot	104100	39383	0.12
37555	Hangyakusei Million Arthur	6.09	Action Adventure Fantasy Magic	10	Fall 2018	J.C.Staff	25596	6004	0.18
37559	Oretacha Youkai Ningen G	-1	Demons Horror Parody	26	Spring 2018	DLE	435	83	0.45
37560	Mannaka no Rikkun@Kin Tele	-1	Comedy Seinen	12	Winter 2019	Sakura Create	346	29	0.59
37561	Akanesasu Shoujo	6.47	Action School Sci-Fi	12	Fall 2018	DandeLion Animation Studio	29611	10614	0.24
37569	Sirius	7.04	Action Historical Supernatural Vampire	12	Summer 2018	P.A. Works	167994	90540	0.07
37571	Senjuushi	4.93	Action Military	12	Summer 2018	TMS Entertainment	11397	2025	0.44
37576	Majutsushi Orphen Hagure Tabi	5.78	Action Adventure Drama Magic MartialArts Fantasy	13	Winter 2020	Studio Deen	48815	16317	0.24
37578	Planet With	7.23	Action Mecha Sci-Fi	12	Summer 2018	J.C.Staff	48275	23070	0.11
37579	Tonari no Kyuuketsuki-san	7.1	Comedy ShoujoAi SliceofLife Supernatural Vampire	12	Fall 2018	Studio Gokumi, AXsiZ	77129	36584	0.11
37584	Bakumatsu	5.77	Action Historical Samurai	12	Fall 2018	Studio Deen	18680	4059	0.31
37587	Lapis Re:LiGHTs	6.63	Music Magic Fantasy	12	Summer 2020	Yokohama Animation Lab	29145	10026	0.17
37597	Dakaretai Otoko 1-i ni Odosarete Imasu.	7.38	Comedy Drama Romance ShounenAi	13	Fall 2018	CloverWorks	80055	48703	0.07
37598	Phantom in the Twilight	6.41	Action Supernatural Vampire	12	Summer 2018	LIDENFILMS	35355	12737	0.18
37599	Magatsu Wahrheit: Zuerst	6.6	Action Magic Fantasy	12	Fall 2020	Yokohama Animation Lab	24870	7129	0.17
37601	Lord of Vermilion: Guren no Ou	5.35	Action Fantasy	12	Summer 2018	Asread, Tear Studio	34392	10109	0.29
37611	Future Card Buddyfight Battsu: All-Star Fight	6.66	Game	8	Spring 2018	Xebec, OLM	1357	787	0.11
37614	Hitoribocchi no Marumaru Seikatsu	7.51	Comedy School Shounen SliceofLife	12	Spring 2019	C2C	143738	74921	0.07
37616	Ten Count	-1	Drama Romance ShounenAi	-1	Unknown	Unknown	20963	0	-1
37630	Washimo 6th Season	-1	Sci-Fi SliceofLife Comedy Kids School	42	Spring 2018	Unknown	130	19	0.54
37646	Hataraku Onii-san! no 2!	6.4	Comedy SliceofLife	11	Summer 2018	Fanworks, Tomovies	2690	1614	0.08
37651	Fate/Extra: Last Encore - Illustrias Tendousetsu	6.54	Action Fantasy Magic	3	Summer 2018	Shaft	46351	31001	0.01
37653	Caribadix 2nd Season	-1	Music Comedy	39	Spring 2018	Unknown	231	38	0.54
37657	Gakuen Basara	6.17	Action Comedy School	12	Fall 2018	Brain's Base	14790	3192	0.3
37662	Shinya! Tensai Bakabon	6.01	SliceofLife Comedy	12	Summer 2018	Pierrot Plus	2801	928	0.36
37675	Overlord III	7.95	Action Magic Fantasy Game Supernatural	13	Summer 2018	Madhouse	549484	441320	0.01
37686	Pugpug	-1	Kids	4	Spring 1998	Unknown	82	21	0.52
37698	Ukkari Pénélope (2017)	-1	Kids SliceofLife	13	Fall 2017	Unknown	102	35	0.39
37714	Shin Manga Naruhodo Monogatari	-1	Kids	40	Spring 1988	Unknown	111	39	0.42
37716	Beelzebub-jou no Okinimesu mama.	7.26	Comedy Demons Fantasy Romance Shounen	12	Fall 2018	LIDENFILMS	65531	30074	0.11
37722	Uchi no Maid ga Uzasugiru!	6.97	SliceofLife Comedy ShoujoAi	12	Fall 2018	Doga Kobo	88050	45441	0.1
37739	Future Card Shin Buddyfight	6.44	Game	47	Summer 2018	Xebec, OLM	1809	835	0.16
37744	Isekai Cheat Magician	5.38	Action Adventure Fantasy	12	Summer 2019	Encourage Films	191481	111022	0.16
37747	Ame-iro Cocoa: Side G	4.88	SliceofLife Comedy	12	Winter 2019	EMT Squared	7400	2805	0.17
37749	Turning Mecard R	-1	Cars Game Kids Mecha	26	Fall 2017	Unknown	196	65	0.37
37750	Turning Mecard W: Vandyne-ui Bimil	-1	Adventure Cars Game Kids Mecha	6	Fall 2017	Unknown	192	66	0.32
37752	Gonglyong Mecard	-1	Game Adventure Cars Kids Mecha	52	Fall 2017	Unknown	262	59	0.32
37769	Aguu: Tensai Ningyou	5.48	Action Drama Supernatural	12	Summer 2018	Studio Deen	5993	1819	0.31
37778	Pastel Life	6.6	Music SliceofLife	6	Spring 2018	Studio A-CAT	4708	3322	0.03
37779	Yakusoku no Neverland	8.65	Sci-Fi Mystery Horror Psychological Thriller Shounen	12	Winter 2019	CloverWorks	1133952	863136	0.01
37780	Okojo to Yamane	-1	SliceofLife Comedy	26	Summer 2018	Unknown	740	37	0.52
37786	Yagate Kimi ni Naru	7.93	Romance School ShoujoAi	13	Fall 2018	TROYCA	193457	91030	0.06
37787	Space Bug	-1	Adventure Space	26	Summer 2018	Studio W.Baba, P.I.C.S.	559	81	0.53
37798	Chaechaepong Kimchi Pong	-1	Adventure Kids Fantasy	26	Summer 2002	Unknown	109	30	0.3
37799	Tokyo Ghoul:re 2nd Season	6.33	Action Drama Horror Mystery Psychological Seinen Supernatural	12	Fall 2018	Studio Pierrot, Pierrot Plus	471661	334815	0.06
37806	Gunjou no Magmell	6.03	Action Adventure SuperPower Fantasy Shounen	13	Spring 2019	Pierrot Plus	99015	48374	0.19
37823	Conception	4.65	Action Adventure Harem Magic Romance Fantasy	12	Fall 2018	Gonzo	83897	30190	0.32
37869	BanG Dream! 2nd Season	7.59	Music	13	Winter 2019	SANZIGEN	27967	15787	0.05
37870	BanG Dream! 3rd Season	8.05	Music	13	Winter 2020	SANZIGEN	20753	9834	0.03
37873	BanG Dream! Garupa☆Pico	7.78	Music Comedy	26	Summer 2018	SANZIGEN, DMM.futureworks	14919	9659	0.03
37890	Oshi ga Budoukan Ittekuretara Shinu	7.45	Comedy Music Seinen ShoujoAi SliceofLife	12	Winter 2020	8bit	28277	13683	0.09
37893	Yami Shibai 6	6.15	Dementia Horror Supernatural	13	Summer 2018	ILCA	13685	8360	0.04
37920	Ueno-san wa Bukiyou	6.64	Comedy Romance Seinen	12	Winter 2019	Lesprit	83605	44028	0.12
37924	Ani ni Tsukeru Kusuri wa Nai! 2	7.72	Comedy School SliceofLife	24	Summer 2018	Fanworks, Imagineer	30419	19362	0.02
37926	Nakanohito Genome [Jikkyouchuu]	6.87	Game Comedy Drama	12	Summer 2019	SILVER LINK.	84933	40504	0.12
37927	Nu Sheng Su She Ri Chang	-1	SliceofLife Comedy	12	Fall 2016	Unknown	131	30	0.38
37940	Yatogame-chan Kansatsu Nikki	6.21	SliceofLife Comedy School Shounen	12	Spring 2019	Creators in Pack, Saetta	22587	12256	0.12
37941	Naengjang-go Nala Cocomong	-1	Kids	26	Spring 2008	Unknown	91	36	0.42
37942	Hello Cocomong	-1	Kids Music	13	Winter 2010	Unknown	100	44	0.35
37943	Cocomong 2	-1	Kids	26	Spring 2011	Unknown	94	39	0.39
37944	Hello Cocomong 2	-1	Kids Music	13	Fall 2014	Unknown	93	41	0.36
37945	Cocomong 3	-1	Kids	26	Spring 2015	Unknown	92	39	0.37
37951	Ice Kuritarou	-1	Kids	49	Fall 2017	Unknown	140	17	0.51
37952	Shoumetsu Toshi	5.46	Action Adventure Mystery Drama Fantasy	12	Spring 2019	Madhouse	53124	12950	0.38
37956	3D Kanojo: Real Girl 2nd Season	7.66	Romance School Shoujo	12	Winter 2019	Hoods Entertainment	109424	70550	0.04
37958	Fukigen na Mononokean Tsuzuki	7.57	Comedy Demons Supernatural	13	Winter 2019	Pierrot Plus	36172	19665	0.04
37962	IDOLiSH7: Second Beat!	8.15	Music	15	Spring 2020	TROYCA	15156	3318	0.06
37964	Mayonaka no Occult Koumuin	6.71	Demons Fantasy Mystery Shoujo Supernatural	12	Spring 2019	LIDENFILMS	49445	21657	0.17
37965	Kaze ga Tsuyoku Fuiteiru	8.45	Comedy Sports Drama	23	Fall 2018	Production I.G	196221	102342	0.04
37968	Kirakira Happy★Hirake! Cocotama	-1	SliceofLife Kids Magic Fantasy	55	Fall 2018	OLM	514	76	0.35
37972	Hoshiai no Sora	7.53	SliceofLife Sports Drama School	12	Fall 2019	8bit	106397	54759	0.05
37975	Piano no Mori (TV) 2nd Season	7.4	Comedy Drama Music School Seinen	12	Winter 2019	Gaina	32498	17520	0.04
37976	Zombieland Saga	7.52	Comedy Music Supernatural	12	Fall 2018	MAPPA	317337	172182	0.1
37978	Kamisama Minarai: Himitsu no Cocotama - Minarai Cocotama-dou	-1	SliceofLife Kids Magic Fantasy	8	Summer 2018	OLM	234	71	0.33
37979	Mahou Shoujo Tokushusen Asuka	6.34	Action Drama Magic Military Seinen	12	Winter 2019	LIDENFILMS	62636	23631	0.17
37982	Domestic na Kanojo	6.77	Drama Romance School Shounen	12	Winter 2019	Diomedéa	400598	273039	0.06
37984	Kumo Desu ga, Nani ka?	6.94	Adventure Comedy Fantasy	24	Winter 2021	Millepensee	132114	19	0.05
37988	Uchuu Senkan Tiramisù II	6.54	Comedy Mecha Sci-Fi SliceofLife Space	13	Fall 2018	Gonzo	8008	4524	0.07
37989	Golden Kamuy 2nd Season	8.2	Action Adventure Historical Seinen	12	Fall 2018	Geno Studio	112494	73902	0.02
37990	Gurazeni Season 2	6.74	Comedy Sports Drama Seinen	12	Fall 2018	Studio Deen	3796	2548	0.08
37991	JoJo no Kimyou na Bouken Part 5: Ougon no Kaze	8.61	Action Adventure Shounen	39	Fall 2018	David Production	542642	383733	0.01
37992	Jingai-san no Yome	5.66	Comedy Romance Fantasy Josei	12	Fall 2018	Saetta	30384	15951	0.17
37993	Watashi ni Tenshi ga Maiorita!	7.36	SliceofLife Comedy ShoujoAi	12	Winter 2019	Doga Kobo	128398	62419	0.08
37998	Girly Air Force	6.18	Action Sci-Fi	12	Winter 2019	Satelight	54255	24374	0.15
37999	Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen	8.43	Comedy Psychological Romance School Seinen	12	Winter 2019	A-1 Pictures	925543	678999	0.02
38000	Kimetsu no Yaiba	8.62	Action Demons Historical Shounen Supernatural	26	Spring 2019	ufotable	1423778	1079964	0.02
38003	Bungou Stray Dogs 3rd Season	8.17	Action Mystery Seinen SuperPower Supernatural	12	Spring 2019	Bones	299019	188700	0.01
38004	Strike Witches: 501 Butai Hasshin Shimasu!	6.48	Military Sci-Fi Comedy Shounen	12	Spring 2019	Acca effe, Giga Production	13574	4683	0.15
38005	Strike Witches: Road to Berlin	7.32	Action Military Sci-Fi Magic Ecchi	12	Fall 2020	David Production	15278	3929	0.08
38006	Renmei Kuugun Koukuu Mahou Ongakutai Luminous Witches	-1	Military Sci-Fi Music Magic Ecchi	-1	Unknown	Shaft	5585	0	-1
38008	Hawaiian Conu	-1	SliceofLife Comedy	13	Summer 2018	Magic Bus	198	27	0.58
38009	Re:Stage! Dream Days♪	6.69	Music School SliceofLife	12	Summer 2019	Yumeta Company, Graphinica	8117	3056	0.19
38010	Kaeru Ouji to Imomushi Henry	-1	Comedy Magic Fantasy	130	Summer 2018	Unknown	254	33	0.57
38016	Zannen na Ikimono Jiten	-1	Comedy SliceofLife	10	Summer 2018	NHK Enterprises	277	66	0.46
38020	Beatless Final Stage	6.81	Action Drama Romance Sci-Fi	4	Summer 2018	Diomedéa	26349	16138	0.02
38062	Endro~!	6.94	Fantasy Magic SliceofLife	12	Winter 2019	Studio Gokumi	55889	22006	0.14
38069	Yi Kong Zhi Dian	-1	Adventure Kids Sports	40	Unknown	Unknown	143	39	0.43
38070	Kkoma Bus Tayo	-1	Cars Kids	26	Summer 2010	Unknown	178	103	0.25
38071	Kkoma Bus Tayo 2	-1	Cars Kids	26	Fall 2011	Unknown	142	79	0.25
38072	Kkoma Bus Tayo 3	-1	Cars Kids	26	Winter 2014	Unknown	134	73	0.27
38074	Kkoma Bus Tayo 4	-1	Cars Kids	26	Summer 2016	Unknown	133	70	0.29
38075	Titipo Titipo	-1	Cars Kids	26	Winter 2018	Unknown	133	58	0.34
38080	Kono Oto Tomare!	7.87	Drama Music Romance School Shounen	13	Spring 2019	Platinum Vision	143559	69731	0.06
38083	Ken En Ken: Aoki Kagayaki	6.06	Action Adventure Demons Magic MartialArts Fantasy	13	Fall 2018	Studio Deen	13576	4428	0.23
38084	Fate/Grand Order: Zettai Majuu Sensen Babylonia	7.95	Action Supernatural Magic Fantasy	21	Fall 2019	CloverWorks	160369	77485	0.05
38089	Okoshiyasu, Chitose-chan	6.58	SliceofLife Comedy Josei	24	Fall 2018	Gathering	4862	1071	0.25
38091	Hachigatsu no Cinderella Nine (TV)	6.08	School Sports	12	Spring 2019	TMS Entertainment	20621	7562	0.25
38092	Chiro-wa Chingu-deul	-1	Adventure Kids	52	Unknown	Unknown	92	34	0.4
38093	Zet Ranger	-1	Action Kids Sci-Fi SuperPower	26	Unknown	Unknown	83	23	0.53
38094	Kkaemo-ui Moheom	-1	Kids	84	Unknown	Unknown	76	25	0.5
38098	Mix	7.25	Drama Romance School Shounen Sports	24	Spring 2019	OLM	17153	6978	0.12
38099	Pakkororin	-1	Kids	-1	Spring 2011	Unknown	118	0	0.57
38101	5-toubun no Hanayome	7.59	Harem Comedy Romance School Shounen	12	Winter 2019	Tezuka Productions	442930	325568	0.03
38117	Zhu Zhu Xia: Da Nao Huang Gong	-1	Sci-Fi SuperPower Kids	4	Unknown	Unknown	109	49	0.39
38118	Zhu Zhu Xia: Mo Huan Zhu Luo Ji	-1	Sci-Fi SuperPower Kids MartialArts	20	Unknown	Unknown	124	53	0.4
38119	Zhu Zhu Xia: Wu Xia 2008	-1	Sci-Fi Historical Sports SuperPower Kids	20	Unknown	Unknown	121	53	0.39
38120	Zhu Zhu Xia: Yong Chuang Weilai Cheng	-1	Sci-Fi Sports SuperPower Kids School	40	Unknown	Unknown	126	51	0.43
38121	Bai Bian Zhu Zhu Xia	-1	Sci-Fi SuperPower Kids Fantasy	80	Summer 2009	Unknown	143	67	0.38
38122	Zhu Zhu Xia: Jimu Shijie de Tonghua	-1	Sci-Fi SuperPower Kids Fantasy	52	Unknown	Unknown	132	56	0.42
38123	Zhu Zhu Xia: Xingfu Jiuyuan Dui	-1	Sci-Fi SuperPower Kids	52	Unknown	Unknown	121	53	0.43
38124	Zhu Zhu Xia: Bian Shen Xiao Ying Xiong	-1	Sci-Fi SuperPower Kids	52	Unknown	Unknown	116	49	0.43
38125	Zhu Zhu Xia: Bian Shen Zhandu	-1	Sci-Fi SuperPower Kids MartialArts	52	Unknown	Unknown	122	50	0.46
38126	Zhu Zhu Xia: Bai Bian Lian Meng	-1	Sci-Fi SuperPower Kids	52	Winter 2015	Unknown	124	55	0.38
38127	Zhu Zhu Xia: Wu Ling Shou Wei Zhe	-1	Sci-Fi SuperPower Kids	52	Fall 2015	Unknown	121	50	0.42
38128	Zhu Zhu Xia: Guang Ming Shou Wei Zhe	-1	Kids Sci-Fi SuperPower	52	Spring 2016	Unknown	117	50	0.42
38129	Zhu Zhu Xia: Meng Xiang Shou Wei Zhe	-1	Sci-Fi SuperPower Kids	52	Fall 2016	Unknown	118	48	0.43
38131	Zhu Zhu Xia: Chao Xing Meng Chong	-1	Sci-Fi SuperPower Kids	124	Spring 2017	Unknown	123	52	0.41
38136	Zhu Zhu Xia: Zhong Ji Jue Zhan - Qian Ye Pian	-1	Sci-Fi SuperPower Kids	52	Summer 2015	Unknown	115	45	0.43
38138	Zhu Zhu Xia: Jing Qiu Xiao Yingxiong	-1	Sci-Fi Sports SuperPower Kids	104	Spring 2018	Unknown	146	36	0.52
38145	Doukyonin wa Hiza, Tokidoki, Atama no Ue.	7.76	SliceofLife Comedy	12	Winter 2019	Zero-G	128888	71736	0.06
38147	Hoshi no Shima no Nyanko	-1	Adventure SliceofLife	26	Fall 2018	Animation Planet	328	33	0.6
38150	Namu Amida Butsu!: Rendai Utena	6.07	Fantasy	12	Spring 2019	Asahi Production	11886	2799	0.3
38157	Circlet Princess	6	Action School Sci-Fi Sports	12	Winter 2019	SILVER LINK.	14014	3842	0.25
38161	Kabukichou Sherlock	6.91	Mystery Comedy Drama	24	Fall 2019	Production I.G	67651	16715	0.24
38162	Rinshi!! Ekoda-chan	5.53	SliceofLife Comedy Seinen	11	Winter 2019	Ascension, Creators in Pack, Zero-G	8879	2913	0.33
38166	Malta no Bouken Season 3	-1	Adventure Kids	12	Spring 2017	Unknown	77	24	0.39
38167	Malta no Bouken Season 2	-1	Kids	12	Unknown	Unknown	67	23	0.36
38186	Bokutachi wa Benkyou ga Dekinai	7.33	Harem Comedy Romance School Shounen	13	Spring 2019	Silver, Arvo Animation	263544	168591	0.05
38192	Sacks&Guns!!	-1	Sci-Fi Mecha	-1	Fall 2021	Satelight	4856	0	-1
38199	Bermuda Triangle: Colorful Pastrale	5.46	Music Fantasy	12	Winter 2019	Seven Arcs Pictures	6718	1815	0.37
38203	The iDOLM@STER SideM: Wake Atte Mini!	6.2	SliceofLife Comedy	12	Fall 2018	Zero-G	2693	1205	0.11
38212	Shuudengo, Capsule Hotel de, Joushi ni Binetsu Tsutawaru Yoru.	5.45	Ecchi Josei Romance	12	Fall 2018	Suiseisha	14459	6269	0.09
38226	Choukadou Girl ⅙	6	Comedy Romance Seinen	12	Spring 2019	Studio A-CAT	13341	6607	0.21
38235	Inazuma Eleven: Orion no Kokuin	6.79	Sports	49	Fall 2018	OLM	15200	8094	0.07
38251	Sono Toki, Kanojo wa.	5.67	Drama Romance	12	Fall 2018	MASTER LIGHTS	12915	3487	0.26
38254	Hashiri Tsuzukete Yokattatte.	6.43	Drama SliceofLife	4	Fall 2018	Signal.MD	9884	4624	0.07
38256	Magia Record: Mahou Shoujo Madoka☆Magica Gaiden (TV)	6.77	Psychological Drama Magic Thriller	13	Winter 2020	Shaft	107415	37592	0.13
38262	Pingu in the City (2018)	6.47	SliceofLife Comedy Kids	26	Fall 2018	Polygon Pictures	8384	3012	0.13
38268	Hangyakusei Million Arthur 2nd Season	6.35	Action Adventure Magic Fantasy	13	Spring 2019	J.C.Staff	12648	3713	0.1
38276	Houkago Saikoro Club	6.72	Game Comedy School Shounen	12	Fall 2019	LIDENFILMS	34830	15186	0.17
38284	Devidol!	5.56	Comedy	11	Fall 2018	Unknown	1992	256	0.37
38295	Joshikausei	5.76	Comedy School SliceofLife	12	Spring 2019	Seven	42922	20664	0.17
38297	Maou-sama, Retry!	6.51	Action Adventure Fantasy	12	Summer 2019	EKACHI EPILKA	145983	92992	0.11
38301	Kouya no Kotobuki Hikoutai	6.86	Action Military Adventure	12	Winter 2019	WAO World, GEMBA	26802	8909	0.22
38302	Boku no Tonari ni Ankoku Hakaishin ga Imasu.	6.64	SliceofLife Comedy School Josei	12	Winter 2020	EMT Squared	37227	13437	0.2
38328	Azur Lane	6.28	Action Military Sci-Fi	12	Fall 2019	Bibury Animation Studios	105637	34075	0.19
38331	Stand My Heroes: Piece of Truth	5.7	Mystery Romance Josei	12	Fall 2019	M.S.C	17862	4409	0.29
38337	Gochuumon wa Usagi Desu ka? Bloom	7.98	SliceofLife Comedy	12	Fall 2020	Encourage Films	34740	10351	0.04
38363	Ohayou Hakushon Daimaou	-1	Comedy Parody	237	Spring 2014	Kate Arrow	254	86	0.32
38365	Aigan Kaijuu	-1	Action Sci-Fi Comedy Parody Fantasy	50	Fall 2018	Shimogumi	326	35	0.59
38378	Lei Su Deng Shandian Chong Xian 2	-1	Cars Kids	40	Unknown	Unknown	220	138	0.17
38379	Lei Su Deng Shandian Chong Xian 3	-1	Cars Kids	40	Unknown	Unknown	152	77	0.28
38390	Chuubyou Gekihatsu Boy	6.78	Comedy School	11	Fall 2019	Studio Deen	33859	12715	0.2
38397	Nande Koko ni Sensei ga!?	6.47	Comedy Ecchi School Seinen	12	Spring 2019	Tear Studio	202256	121588	0.07
38408	Boku no Hero Academia 4th Season	8.06	Action Comedy SuperPower School Shounen	25	Fall 2019	Bones	952836	644355	0.02
38427	Daifuku-kun@Kin Tele	-1	Comedy	12	Fall 2018	Unknown	176	25	0.61
38440	Shikizakura	-1	Action Sci-Fi Drama	12	Unknown	Sublimation	3383	0	-1
38449	Choujigen Kakumei Anime: Dimension High School	5.21	School	11	Winter 2019	Unknown	8477	1637	0.5
38451	Reizouko no Tsukenosuke!	-1	Comedy Kids Parody	-1	Fall 2018	Unknown	119	0	0.55
38472	Isekai Quartet	7.45	Comedy Fantasy Parody	12	Spring 2019	Studio PuYUKAI	279086	182467	0.04
38474	Yuru Camp△ Season 2	8.61	SliceofLife Comedy	13	Winter 2021	C-Station	101971	9	0.01
38476	Heya Camp△	7.19	SliceofLife Comedy	12	Winter 2020	C-Station	65066	32967	0.04
38480	Toaru Kagaku no Accelerator	7.18	SuperPower Supernatural Fantasy School	12	Summer 2019	J.C.Staff, A.C.G.T.	151964	70007	0.06
38481	Toaru Kagaku no Railgun T	8.25	Action Sci-Fi SuperPower	25	Winter 2020	J.C.Staff	140037	47791	0.03
38483	Ore wo Suki nano wa Omae dake ka yo	7.39	Harem Comedy Romance School	12	Fall 2019	Connect	273098	173699	0.05
38524	Shingeki no Kyojin Season 3 Part 2	9.1	Action Drama Fantasy Military Mystery Shounen SuperPower	10	Spring 2019	Wit Studio	1073626	906824	0
38525	Chuldong! Super Wings	-1	Adventure Cars Kids	52	Fall 2013	Unknown	169	83	0.29
38526	Chuldong! Super Wings 2	-1	Adventure Cars Kids	52	Spring 2017	Unknown	144	67	0.32
38529	Rifle Is Beautiful	6.19	SliceofLife Comedy School	12	Fall 2019	Studio 3Hz	26588	7485	0.28
38534	Huoli Shaonian Wang 3	-1	Game Kids	40	Unknown	Unknown	190	106	0.14
38535	Huoli Shaonian Wang 3: Xuji	-1	Game Kids	26	Unknown	Unknown	164	94	0.15
38537	Huoli Shaonian Wang zhi You Quan Yingxiong	-1	Game Kids Magic SuperPower	42	Unknown	Unknown	112	42	0.36
38538	Huoli Shaonian Wang zhi Chuanqi Zaixian: Xuji	-1	Adventure Fantasy Game Kids Magic	26	Unknown	Unknown	112	43	0.3
38544	Egao no Daika	6.06	Military SliceofLife Drama Fantasy Mecha	12	Winter 2019	Tatsunoko Production	30695	11456	0.24
38549	TV Yarou Nanaana	6.2	Adventure Comedy	24	Spring 2018	Studio Crocodile	1211	516	0.17
38555	Otome Game no Hametsu Flag shika Nai Akuyaku Reijou ni Tensei shiteshimatta...	7.49	Comedy Drama Romance Fantasy School	12	Spring 2020	SILVER LINK.	238610	144162	0.04
38560	Sylvanian Families: Mini Story 2nd Season	-1	SliceofLife Kids	12	Fall 2018	Unknown	124	43	0.4
38568	Susume! Dokan-kun	-1	Comedy Mecha	13	Summer 2007	DLE	94	30	0.42
38569	Tatakae! Dokan-kun: Gekitou-kun	-1	Comedy Mecha	13	Winter 2008	DLE	96	34	0.43
38570	Tatakae! Dokan-kun: Robolympic-hen	-1	Comedy Mecha	13	Spring 2008	DLE	92	32	0.41
38571	Tobidase! Dokan-kun	-1	Comedy Mecha	15	Fall 2011	DLE	100	35	0.34
38572	Assassins Pride	5.94	Fantasy	12	Fall 2019	EMT Squared	215988	115759	0.16
38573	Tsuujou Kougeki ga Zentai Kougeki de Ni-kai Kougeki no Okaasan wa Suki Desu ka?	5.54	Adventure Comedy Fantasy	12	Summer 2019	J.C.Staff	178807	77026	0.23
38578	Star☆Twinkle Precure	7.25	Action Magic Fantasy Shoujo	49	Winter 2019	Toei Animation	7086	2041	0.13
38585	Mahoutsukai ni Narenakatta Onnanoko no Hanashi.	-1	Drama Fantasy Magic School SliceofLife	-1	Unknown	J.C.Staff	3480	0	0
38610	Tejina-senpai	6.47	Comedy Ecchi School Seinen	12	Summer 2019	LIDENFILMS	173250	93067	0.11
38611	Power Battle Watch Car	-1	Cars Kids	13	Spring 2016	Unknown	132	54	0.34
38612	Power Battle Watch Car Season 2	-1	Cars Kids	13	Summer 2016	Unknown	110	48	0.36
38619	Joshikousei no Mudazukai	7.71	Comedy School	12	Summer 2019	Passione	75680	34786	0.08
38631	Kkoma Bus Tayo 5	-1	Cars Kids	26	Summer 2018	Unknown	137	45	0.39
38656	Darwin's Game	7.3	Action Sci-Fi Mystery SuperPower Shounen	11	Winter 2020	Nexus	305455	184837	0.06
38659	Shinchou Yuusha: Kono Yuusha ga Ore Tueee Kuse ni Shinchou Sugiru	7.54	Action Adventure Comedy Fantasy	12	Fall 2019	White Fox	357092	252392	0.04
38668	Dorohedoro	8.1	Action Comedy Horror Magic Fantasy Seinen	12	Winter 2020	MAPPA	268894	149999	0.04
38669	Tsukiuta. The Animation 2	6.52	Music	13	Fall 2020	Children's Playground Entertainment	4958	919	0.13
38670	Actors: Songs Connection	6.23	Music School	12	Fall 2019	Drive	12022	3850	0.21
38671	Enen no Shouboutai	7.68	Action Supernatural Shounen	24	Summer 2019	David Production	711770	397998	0.08
38673	Mini Toji	6.14	Action Comedy Fantasy	10	Winter 2019	Project No.9	5163	2624	0.11
38680	Fruits Basket 1st Season	8.2	Comedy Drama Romance Shoujo SliceofLife Supernatural	25	Spring 2019	TMS Entertainment	372802	181913	0.06
38691	Dr. Stone	8.34	Sci-Fi Adventure Shounen	24	Summer 2019	TMS Entertainment	945133	621993	0.04
38707	RobiHachi	6.51	Adventure Comedy Sci-Fi Space	12	Spring 2019	Studio Comet	26641	8461	0.27
38731	Diamond no Ace: Act II	8.23	Comedy Sports School Shounen	52	Spring 2019	Madhouse	55084	27067	0.03
38749	Blade Runner: Black Lotus	-1	Sci-Fi Thriller	13	Unknown	Sola Digital Arts	8387	0	-1
38753	Araburu Kisetsu no Otome-domo yo.	7.5	Comedy Drama Romance School Shounen	12	Summer 2019	Lay-duce	204221	112318	0.05
38759	Sewayaki Kitsune no Senko-san	7.36	SliceofLife Comedy Supernatural Romance	12	Spring 2019	Doga Kobo	229506	128270	0.08
38767	Cinderella Girls Gekijou: Climax Season	6.47	SliceofLife Comedy	13	Spring 2019	Gathering, Lesprit	3251	1699	0.06
38776	Manul no Yuube	-1	SliceofLife	-1	Fall 2018	Unknown	259	0	0.68
38778	Midara na Ao-chan wa Benkyou ga Dekinai	6.78	Comedy Romance Ecchi Shounen	12	Spring 2019	SILVER LINK.	161854	96142	0.08
38787	Senryuu Shoujo	7.41	SliceofLife Comedy School Shounen	12	Spring 2019	Connect	127460	66234	0.07
38790	Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu.	7.59	Action Game Sci-Fi Adventure Comedy Fantasy	12	Winter 2020	SILVER LINK.	278001	182384	0.05
38797	Papa datte, Shitai	5.97	ShounenAi	8	Winter 2019	Magic Bus	19671	12147	0.06
38804	Kiratto Pri☆chan Season 2	7.06	Music SliceofLife Comedy Magic Shoujo	51	Spring 2019	Tatsunoko Production	1626	360	0.18
38814	Nobunaga-sensei no Osanazuma	5.27	Comedy Ecchi Harem Romance School	12	Spring 2019	Seven	56676	29251	0.15
38830	Hachi-nan tte, Sore wa Nai deshou!	6.19	Action Fantasy	12	Spring 2020	SynergySP, Shin-Ei Animation	129426	83960	0.07
38835	Umayon	6.08	SliceofLife Comedy Sports	12	Summer 2020	W-Toon Studio, DMM.futureworks	11354	4984	0.11
38843	Shironeko Project: Zero Chronicle	5.3	Action Adventure Magic Fantasy	12	Spring 2020	Project No.9	58294	27339	0.13
38851	Virtual-san wa Miteiru	5.42	Comedy Music	12	Winter 2019	Lide	6570	1452	0.41
38853	Ex-Arm	2.18	Action Sci-Fi Ecchi Seinen	12	Winter 2021	Visual Flight	46649	22	0.5
38857	Neko no Nyagh: Nya Misérables	-1	Game Kids	25	Spring 2019	Unknown	300	66	0.38
38860	Bakumatsu: Crisis	5.7	Action Historical Samurai	12	Spring 2019	Studio Deen	9885	1978	0.23
38881	Jimoto ga Japan	-1	SliceofLife Comedy Shounen	50	Spring 2019	Oddjob	1553	54	0.48
38883	Haikyuu!!: To the Top	8.39	Comedy Sports Drama School Shounen	13	Winter 2020	Production I.G	470208	335260	0.01
38889	Kono Oto Tomare! 2nd Season	8.43	Drama Music Romance School Shounen	13	Fall 2019	Platinum Vision	82333	53424	0.02
38909	Infinite Dendrogram	6.14	Game Fantasy	13	Winter 2020	NAZ	113280	53418	0.16
38920	Kochouki: Wakaki Nobunaga	6.51	Action Historical Drama Samurai	12	Summer 2019	Studio Deen	22065	7244	0.2
38923	Sinbi Apateu: Ghost Ball Bimil	6.48	Action Mystery Kids	24	Summer 2016	Unknown	464	235	0.13
38924	Nekopara	6.76	SliceofLife Comedy	12	Winter 2020	Felix Film	110004	39712	0.14
38940	Cop Craft	6.74	Action Fantasy Magic Police Sci-Fi	12	Summer 2019	Millepensee	92206	42853	0.15
38959	Lord El-Melloi II Sei no Jikenbo: Rail Zeppelin Grace Note	7.36	Fantasy Mystery Supernatural	13	Summer 2019	TROYCA	108495	47463	0.08
38993	Karakai Jouzu no Takagi-san 2	8.15	SliceofLife Comedy Romance School Shounen	12	Summer 2019	Shin-Ei Animation	182529	111785	0.02
39003	Kyou mo Tsuno ga Aru	-1	Comedy	50	Winter 2019	MMDGP	392	28	0.57
39007	Kawauso Labo	-1	Comedy	26	Winter 2019	Kachidoki Studio	671	21	0.54
39012	Capsule Boy 2: Ujuleul Jikyeola	-1	Sci-Fi Kids	26	Winter 2019	Unknown	109	18	0.51
39017	Kyokou Suiri	6.96	Mystery Demons Supernatural Romance Shounen	12	Winter 2020	Brain's Base	262705	130014	0.09
39026	Dumbbell Nan Kilo Moteru?	7.36	Comedy Ecchi SliceofLife Sports	12	Summer 2019	Doga Kobo	236040	120773	0.08
39029	Mr. Shadow	-1	Supernatural	3	Winter 2019	Unknown	258	43	0.52
39030	Hataage! Kemono Michi	6.69	Comedy Fantasy Shounen	12	Fall 2019	ENGI	135278	75407	0.11
39031	B Rappers Street	-1	Music Comedy	50	Spring 2019	Pie in the sky	499	41	0.56
39039	Duel Masters!!	-1	Action Adventure Comedy Shounen	51	Spring 2019	Brain's Base, Shogakukan Music & Digital Entertainment	796	90	0.43
39040	Kedama no Gonjirou	-1	Action Adventure Comedy Fantasy Shounen	51	Spring 2019	OLM, Wit Studio	389	39	0.56
39063	Fairy Gone	5.81	Action Demons Fantasy Magic Supernatural	12	Spring 2019	P.A. Works	134898	35300	0.35
39071	Machikado Mazoku	7.68	SliceofLife Comedy Magic	12	Summer 2019	J.C.Staff	90708	41791	0.06
39078	Aikatsu Friends!: Kagayaki no Jewel	6.89	Music SliceofLife School Shoujo	26	Spring 2019	Bandai Namco Pictures	3539	1286	0.09
39110	Yousei Chii-tan☆	-1	SliceofLife Kids	-1	Unknown	Unknown	139	0	-1
39119	Manga Furusato Mukashibanashi	-1	Adventure Historical Kids Magic Samurai Fantasy	26	Summer 1976	Unknown	104	24	0.48
39121	Hong Mao Lan Tu: Chuang Taikong	-1	Kids	11	Unknown	Unknown	63	21	0.44
39122	Hong Mao Lan Tu: Kaixin Yike	-1	Kids	96	Unknown	Unknown	68	26	0.39
39123	Hong Mao Lan Tu: Konglong Shijie	-1	Kids	88	Unknown	Unknown	64	19	0.49
39124	Hong Mao Lan Tu: Le Fantian	-1	Kids	64	Unknown	Unknown	63	19	0.5
39125	Hong Mao Lan Tu: Maoyan Kan Yuzhou	-1	Kids	97	Unknown	Unknown	69	22	0.47
39126	Hong Mao Lan Tu: Ni Wen Wo Da	-1	Kids	83	Unknown	Unknown	67	22	0.46
39127	Hong Mao Lan Tu: Shuimo Donghua	-1	Kids	42	Unknown	Unknown	59	19	0.45
39128	Hong Mao Lan Tu: Xiao Youmo	-1	Kids	71	Unknown	Unknown	62	18	0.51
39129	Hong Mao Lan Tu: Qi Xia Chuan	-1	Kids	108	Unknown	Unknown	80	34	0.36
39130	Hong Mao Lan Tu: A Muxing	-1	Kids	30	Unknown	Unknown	68	20	0.44
39131	Hong Mao Lan Tu: Zhang Jian Zou Tianya	-1	Kids	108	Unknown	Unknown	69	24	0.45
39133	Hong Mao Lan Tu: Guangming Jian	-1	Kids	79	Unknown	Unknown	58	17	0.47
39135	Hong Mao Lan Tu: Yongzhe Guilai	-1	Kids	52	Unknown	Unknown	63	23	0.41
39136	Hong Mao Lan Tu: Haidi Lixian Ji	-1	Kids	52	Unknown	Unknown	62	20	0.43
39137	Hong Mao Lan Tu: Meng Guo Li Xian Ji	-1	Kids	56	Unknown	Unknown	58	18	0.47
39138	Hong Mao Lan Tu: Ao You Guo Lixian Ji	-1	Kids	48	Spring 2013	Unknown	65	19	0.44
39139	Hong Mao Lan Tu: Kuaile Shizi	-1	Kids	80	Unknown	Unknown	62	21	0.41
39140	Hong Mao Lan Tu: Qi Xia Waizhuan	-1	Kids	52	Spring 2017	Unknown	70	20	0.47
39183	Super Shiro	6	Kids	48	Fall 2019	Science SARU	1538	245	0.26
39184	A3! Season Spring & Summer	7.14	SliceofLife Drama	12	Winter 2020	P.A. Works, Studio 3Hz	20153	5880	0.13
39194	Shin Chuuka Ichiban!	6.4	Comedy Shounen	12	Fall 2019	Production I.G, Nihon Ad Systems	8619	3086	0.23
39195	Beastars	8.05	SliceofLife Psychological Drama Shounen	12	Fall 2019	Orange	462481	332874	0.03
39196	Mairimashita! Iruma-kun	7.7	Comedy Demons Supernatural Fantasy School Shounen	23	Fall 2019	Bandai Namco Pictures	196362	117467	0.05
39198	Kanata no Astra	8.16	Sci-Fi Adventure Space Shounen	12	Summer 2019	Lerche	197328	111924	0.05
39199	Katsute Kami Datta Kemono-tachi e	6.41	Action Drama Fantasy Military Shounen	12	Summer 2019	MAPPA	92645	42001	0.17
39221	Bem	6.03	Action Demons Supernatural	12	Summer 2019	Production I.G, LandQ studios	52770	15344	0.27
39244	Cardfight!! Vanguard: Zoku Koukousei-hen	6.27	Action Game Shounen	14	Spring 2019	OLM	3422	1842	0.07
39247	Kobayashi-san Chi no Maid Dragon S	-1	SliceofLife Comedy Fantasy	-1	Summer 2021	Kyoto Animation	106489	1	0
39277	Youkai Watch!	6.23	Comedy Demons Kids Supernatural	36	Spring 2019	OLM	1337	437	0.14
39282	Beyblade Burst Gachi	6.09	Action Sci-Fi Adventure Sports Shounen	52	Spring 2019	OLM	3883	1478	0.14
39292	Princess Connect! Re:Dive	7.06	Action Adventure Comedy Fantasy	13	Spring 2020	CygamesPictures	145572	65382	0.09
39324	Uchi no Ko no Tame naraba, Ore wa Moshikashitara Maou mo Taoseru kamo Shirenai.	7.04	Fantasy SliceofLife	12	Summer 2019	Maho Film	130550	73092	0.11
39326	Kawaikereba Hentai demo Suki ni Natte Kuremasu ka?	6.6	Comedy Ecchi Harem Romance School	12	Summer 2019	Seven, GEEK TOYS	184350	106301	0.07
39337	Araiya-san!: Ore to Aitsu ga Onnayu de!?	6.44	Comedy Ecchi Romance	8	Spring 2019	Magic Bus	32041	15860	0.08
39355	Radiant 2nd Season	7.63	Action Adventure Magic Fantasy	21	Fall 2019	Lerche	67545	33677	0.04
39356	Neko Neko Nihonshi 4th Season	-1	Historical Parody Kids Samurai	32	Spring 2019	Unknown	191	35	0.4
39388	Koisuru Asteroid	6.87	SliceofLife Comedy School	12	Winter 2020	Doga Kobo	59816	22319	0.18
39417	Granbelm	6.75	Fantasy Magic Mecha	13	Summer 2019	Nexus	41657	14743	0.23
39450	Zen-chan Two-chan	-1	Kids	78	Fall 1969	Unknown	94	21	0.52
39456	Sounan Desu ka?	6.62	Adventure Comedy Seinen	12	Summer 2019	Ezόla	109692	61975	0.1
39457	Shounen Ashibe: Go! Go! Goma-chan 4	6	SliceofLife Comedy Seinen	24	Spring 2019	Unknown	489	146	0.37
39463	Gleipnir	7.02	Action Mystery Supernatural Ecchi Seinen	13	Spring 2020	Pine Jam	271352	132194	0.09
39468	Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan wo Erandeiraremasen	8.03	SliceofLife Fantasy	14	Fall 2019	Ajia-Do	148895	95126	0.04
39469	Tsugu Tsugumomo	7.51	Action Comedy Supernatural Ecchi School Seinen	12	Spring 2020	Zero-G	58806	26073	0.04
39473	Möbius Dust	-1	Action Game Kids	-1	Unknown	Unknown	818	0	-1
39474	Oni (TV)	-1	Demons Kids	-1	Unknown	dwarf	110	0	-1
39491	Psycho-Pass 3	7.54	Action Sci-Fi Police Psychological	8	Fall 2019	Production I.G	175152	60798	0.04
39506	Phantasy Star Online 2: Episode Oracle	6.55	Action Sci-Fi Space	25	Fall 2019	Gonzo	18103	4570	0.17
39523	Choujin Koukousei-tachi wa Isekai demo Yoyuu de Ikinuku you desu!	6.34	Fantasy	12	Fall 2019	Project No.9	150384	91983	0.1
39527	Try Knights	4.69	Sports School Josei	12	Summer 2019	Gonzo, Seven	14942	3496	0.38
39528	Washimo 7th Season	-1	Sci-Fi SliceofLife Comedy Kids School	40	Spring 2019	Unknown	94	14	0.65
39533	Given	8.32	Drama Music Romance ShounenAi SliceofLife	11	Summer 2019	Lerche	260768	170263	0.03
39534	Jibaku Shounen Hanako-kun	7.78	Comedy School Shounen Supernatural	12	Winter 2020	Lerche	284905	149379	0.06
39535	Mushoku Tensei: Isekai Ittara Honki Dasu	8.37	Drama Magic Fantasy	11	Winter 2021	Studio Bind	319654	39	0.01
39539	No Guns Life	6.89	Action Sci-Fi Drama Seinen	12	Fall 2019	Madhouse	145181	56822	0.15
39547	Yahari Ore no Seishun Love Comedy wa Machigatteiru. Kan	8.46	SliceofLife Comedy Drama Romance School	12	Summer 2020	feel.	390621	199414	0.02
39551	Tensei shitara Slime Datta Ken 2nd Season	8.06	Comedy Fantasy	12	Winter 2021	8bit	341178	35	0.01
39567	Keishichou Tokumubu Tokushu Kyouakuhan Taisakushitsu Dainanaka: Tokunana	6.03	Action Police Vampire Fantasy	12	Fall 2019	Anima&Co.	36800	12066	0.25
39570	High Score Girl II	8.08	Comedy Game Romance School Seinen	9	Fall 2019	J.C.Staff	83181	54935	0.02
39572	Wangu Xian Qiong III: Eren Gu Pian	-1	Adventure Comedy Fantasy	13	Spring 2019	ASK Animation Studio	841	122	0.18
39575	Somali to Mori no Kamisama	7.82	Adventure SliceofLife Demons Drama Fantasy	12	Winter 2020	Satelight	193956	84732	0.08
39581	TV Yarou Nanaana: Wakuwaku Doukutsu Land	6.11	Adventure Comedy	24	Spring 2019	Unknown	952	353	0.28
39582	Kitsutsuki Tanteidokoro	6.03	Mystery Historical	12	Spring 2020	LIDENFILMS	20414	5091	0.25
39583	number24	6.63	Sports School	12	Winter 2020	PRA	30782	10052	0.16
39586	Hataraku Saibou!!	7.45	Comedy Shounen	8	Winter 2021	David Production	149393	5700	0.03
39587	Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season	8.5	Psychological Drama Thriller Fantasy	13	Summer 2020	White Fox	614588	330007	0.01
39590	Africa no Salaryman (TV)	6.52	SliceofLife Comedy	12	Fall 2019	HOTZIPANG	19052	5830	0.3
39592	Mobile Suit Gundam: The Origin - Advent of the Red Comet	8.09	Action Military Sci-Fi Space Mecha Shounen	13	Spring 2019	Sunrise	11056	6053	0.03
39597	Sword Art Online: Alicization - War of Underworld	7.63	Action Game Adventure Romance Fantasy	12	Fall 2019	A-1 Pictures	428786	310819	0.01
39609	Ochikobore Fruit Tart	6.77	Music SliceofLife	12	Fall 2020	feel.	22801	5847	0.13
39617	Yakusoku no Neverland 2nd Season	7.49	Sci-Fi Mystery Psychological Thriller Shounen	11	Winter 2021	CloverWorks	482725	60	0.03
39620	Hakata Mentai! Pirikarako-chan	5.05	Comedy SliceofLife	12	Summer 2019	G-angle	2360	1035	0.35
39622	Bakugan: Battle Planet	5.57	Action Game Fantasy	50	Spring 2019	TMS Entertainment	3816	1300	0.25
39628	Kaijuu Step Wandabada	-1	Comedy Kids	26	Fall 2019	Usagi Ou	127	20	0.44
39634	Boy General	-1	Action Drama Historical Military	50	Unknown	Unknown	68	17	0.35
39635	Daifuku-kun@Kin Tele 2nd Season	-1	Comedy	26	Spring 2019	Unknown	184	19	0.68
39664	Gifu no Tatekayoko	-1	Comedy Kids	26	Spring 2019	Unknown	91	20	0.47
39668	Watanuki-san Chi no	-1	SliceofLife	12	Spring 2019	Unknown	1611	115	0.3
39679	Ju Bing Chang Cheng Zhuan	-1	Action Adventure Demons Kids Magic Fantasy	40	Winter 2019	2:10 AM Animation	262	30	0.26
39681	D4DJ: First Mix	7.7	Music	13	Fall 2020	SANZIGEN	11845	3831	0.08
39685	Mabeob Chunjamun	-1	Adventure Kids Magic MartialArts	26	Unknown	Unknown	56	14	0.52
39686	Mabeob Chunjamun Season 2	-1	Adventure Kids Magic MartialArts	26	Unknown	Unknown	51	13	0.52
39691	Robot Trains	-1	Kids	32	Unknown	Unknown	50	13	0.44
39699	King of Prism: Shiny Seven Stars	6.4	Music Sports Shounen	12	Spring 2019	Tatsunoko Production	3335	1025	0.18
39701	Nanatsu no Taizai: Kamigami no Gekirin	6.41	Action Adventure Supernatural Magic Fantasy Shounen	24	Fall 2019	Studio Deen, Marvy Jack	408034	232771	0.11
39710	Yesterday wo Utatte	7.02	SliceofLife Drama Romance Seinen	12	Spring 2020	Doga Kobo	210030	102038	0.07
39725	I★Chu: Halfway Through the Idol	6.11	Music SliceofLife Comedy School	-1	Winter 2021	Lay-duce	8104	4	0.17
39730	Houkago Teibou Nisshi	7.38	SliceofLife Comedy School Seinen	12	Spring 2020	Doga Kobo	38031	15732	0.09
39783	5-toubun no Hanayome ∬	8.05	Harem Comedy Romance School Shounen	12	Winter 2021	Bibury Animation Studios	245999	110	0.01
39790	Adachi to Shimamura	7.21	SliceofLife Romance School ShoujoAi	12	Fall 2020	Tezuka Productions	104719	34330	0.08
39792	Eizouken ni wa Te wo Dasu na!	8.17	Adventure Comedy School Seinen	12	Winter 2020	Science SARU	211247	87586	0.07
39798	Zhu Zhu Xia: Konglong Riji	-1	Sci-Fi Historical SuperPower Kids	104	Spring 2019	Unknown	124	30	0.53
39799	Val x Love	5.89	Harem Comedy Supernatural Romance Ecchi School Shounen	12	Fall 2019	Hoods Entertainment	61341	24662	0.2
39808	Non Non Biyori Nonstop	8.35	SliceofLife Comedy Seinen	12	Winter 2021	SILVER LINK.	47968	3	0.01
39811	Fairy Gone 2nd Season	6.39	Action Demons Supernatural Magic Fantasy	12	Fall 2019	P.A. Works	34744	14841	0.09
39820	Chuldong! Super Wings 3	-1	Adventure Cars Kids	40	Fall 2018	Unknown	192	31	0.59
39836	Yami Shibai 7	5.93	Dementia Horror Supernatural	13	Summer 2019	ILCA	11916	6566	0.05
39893	Muteking the Dancing Hero	-1	Action Comedy Kids Magic Mecha Sci-Fi Shounen SuperPower	-1	Unknown	Unknown	182	0	-1
39905	Collar x Malice	-1	Josei Mystery Police Romance Thriller	-1	Unknown	Unknown	2221	0	-1
39918	Shining Star	-1	Kids Music	52	Fall 2017	Maro Studio	341	87	0.15
39936	Nezha Chuan Qi	-1	Adventure	52	Summer 2003	Unknown	202	99	0.13
39940	Shokugeki no Souma: Shin no Sara	7.76	Ecchi School Shounen	12	Fall 2019	J.C.Staff	355360	252988	0.02
39942	Uchi Tama?! Uchi no Tama Shirimasen ka?	6.9	SliceofLife	11	Winter 2020	MAPPA, Lapin Track	15837	4906	0.21
39948	Muhyo to Rouji no Mahouritsu Soudan Jimusho 2nd Season	6.83	Action Mystery Comedy Supernatural Drama Shounen	12	Summer 2020	Studio Deen	17915	4868	0.07
39959	Ani ni Tsukeru Kusuri wa Nai! 3	7.67	SliceofLife Comedy School	12	Fall 2019	Fanworks, Imagineer	21605	13285	0.02
39960	Yatogame-chan Kansatsu Nikki Nisatsume	6.31	SliceofLife Comedy School Shounen	12	Winter 2020	Creators in Pack, Saetta	12495	7330	0.05
39963	Yubisaki kara no Honki no Netsujou: Osananajimi wa Shouboushi	6	Comedy Romance Ecchi	8	Summer 2019	Studio Hokiboshi	15143	7767	0.08
39966	Tamayomi	5.73	Sports School	12	Spring 2020	Studio A-CAT	24625	7403	0.3
39978	Waresho! Warera! Shodobutsu Aigo Iinkai	-1	Comedy	5	Summer 2019	Unknown	575	46	0.48
39979	Business Fish	5.57	SliceofLife Comedy	6	Summer 2019	Unknown	2998	310	0.32
39988	Isekai Quartet 2	7.38	Comedy Parody Fantasy	12	Winter 2020	Studio PuYUKAI	155951	107889	0.02
39990	Vlad Love	5.94	Comedy Supernatural Vampire School	12	Winter 2021	Production I.G, Drive	22816	3	0.15
40004	Bokutachi wa Benkyou ga Dekinai!	7.36	Harem Comedy Romance School Shounen	13	Fall 2019	Silver, Arvo Animation	173795	121847	0.02
40010	Ishuzoku Reviewers	7.58	Comedy Ecchi Fantasy	12	Winter 2020	Passione	311653	149781	0.07
40028	Shingeki no Kyojin: The Final Season	9.17	Action Military Mystery SuperPower Drama Fantasy Shounen	16	Winter 2021	MAPPA	733260	553	0
40040	Odoru Mowai-kun	-1	Comedy Kids	26	Summer 2019	Monster's Egg	436	98	0.31
40045	Motto! Majime ni Fumajime Kaiketsu Zorori	-1	Adventure Comedy Kids	25	Spring 2020	Ajia-Do, Bandai Namco Pictures	493	64	0.3
40046	Id:Invaded	7.9	Mystery Police Psychological Sci-Fi	13	Winter 2020	NAZ	211234	104730	0.06
40056	Deca-Dence	7.48	Action Sci-Fi Adventure	12	Summer 2020	Nut	201869	91497	0.09
40059	Golden Kamuy 3rd Season	8.46	Action Adventure Historical Seinen	12	Fall 2020	Geno Studio	75226	32912	0.01
40074	Gibiate	3.89	Action Horror MartialArts Samurai Fantasy	12	Summer 2020	Studio elle, l-a-unch・BOX	52447	9602	0.45
40075	Koi to Producer: EVOL×LOVE	6.12	Sci-Fi Mystery SuperPower Romance	12	Summer 2020	MAPPA	34414	9783	0.16
40085	Maesetsu!	5.78	SliceofLife Comedy	12	Fall 2020	Studio Gokumi, AXsiZ	8565	1970	0.3
40087	Penguin no Mondai POW	-1	Kids	51	Spring 2012	Unknown	66	18	0.42
40089	Pittanko!! Nekozakana	-1	Unknown	-1	Fall 2017	Unknown	412	0	0.37
40090	Sinbi Apateu: Ghost Ball X-ui Tansaeng	-1	Unknown	23	Fall 2017	Unknown	179	32	0.39
40091	Xiao Hua Xian 2nd Season	-1	Kids Magic	52	Summer 2015	Taomee	111	29	0.39
40092	Xiao Hua Xian 3rd Season: Shou Hu Tian Shi	-1	Kids Magic	40	Spring 2017	Taomee	121	24	0.48
40128	Arte	7.17	Drama Historical Romance Seinen SliceofLife	12	Spring 2020	Seven Arcs	80684	37334	0.1
40129	Rebirth	5.34	Game SliceofLife Comedy	-1	Winter 2020	LIDENFILMS	3142	1	0.34
40136	Oda Cinnamon Nobunaga	6.55	SliceofLife Comedy Historical Seinen	12	Winter 2020	Studio Signpost	14879	5000	0.25
40137	ARP Backstage Pass	5.59	Music	10	Winter 2020	Dynamo Pictures	5003	1250	0.32
40145	Yu☆Gi☆Oh!: Sevens	5.4	Action Game Fantasy Shounen	-1	Spring 2020	Bridge	12037	2	0.28
40148	22/7	6.81	Music	12	Winter 2020	A-1 Pictures	29141	11558	0.16
40165	Listeners	5.38	Action Mecha Music Sci-Fi	12	Spring 2020	MAPPA	49237	11926	0.37
40166	Zoids Wild Zero	-1	Action Sci-Fi Adventure Comedy	50	Fall 2019	OLM	2544	96	0.25
40167	Cardfight!! Vanguard: Shinemon-hen	6.56	Action Game Shounen	31	Summer 2019	OLM	2396	1065	0.12
40174	Zombieland Saga: Revenge	-1	Music Comedy Supernatural	-1	Spring 2021	MAPPA	56858	0	0
40196	Kandagawa Jet Girls	5.66	Sports Ecchi	12	Fall 2019	TNK	25815	8618	0.22
40197	Urashimasakatasen no Nichijou	5.96	SliceofLife Comedy School	12	Fall 2019	Gainax Kyoto	4094	2184	0.2
40221	Kami no Tou	7.66	Action Adventure Mystery Drama Fantasy	13	Spring 2020	Telecom Animation Film	534804	342538	0.03
40228	Bananya: Fushigi na Nakama-tachi	6.52	SliceofLife Comedy Kids	13	Fall 2019	TMS Entertainment, Gathering	8694	5147	0.05
40230	Housekishou Richard-shi no Nazo Kantei	7.16	Drama Mystery SliceofLife	12	Winter 2020	Shuka	41085	16877	0.13
40249	Balala Xiaomoxian: Mofa Hai Ying Bao	-1	Comedy Magic	26	Fall 2018	Unknown	809	42	0.25
40254	XL Joushi.	5.97	Romance Ecchi Josei	8	Fall 2019	Magic Bus	22659	9540	0.09
40266	Aikatsu on Parade!	6.83	Music SliceofLife School Shoujo	25	Fall 2019	Bandai Namco Pictures	3632	1100	0.15
40272	A3! Season Autumn & Winter	7.26	SliceofLife Drama	12	Fall 2020	P.A. Works, Studio 3Hz	11749	2849	0.06
40273	Fuwa no go renkan	-1	Historical	54	Fall 2007	Unknown	68	24	0.35
40299	Gokiburi-chan	-1	Kids	20	Spring 2005	Unknown	82	27	0.28
40320	Tenka Hyakken: Meiji-kan e Youkoso!	5.06	Action Adventure Historical Supernatural MartialArts Fantasy	12	Fall 2019	LIDENFILMS	6618	1506	0.27
40327	Mewkledreamy	6.51	Adventure Kids Fantasy	-1	Spring 2020	J.C.Staff	4165	0	0.2
40333	Uzumaki	-1	Dementia Horror Psychological Supernatural Drama Romance Seinen	4	Unknown	Drive	28814	0	-1
40351	Pokemon (2019)	7.28	Action Adventure Comedy Kids Fantasy	-1	Fall 2019	OLM	41344	5	0.11
40356	Tate no Yuusha no Nariagari Season 2	-1	Action Adventure Drama Fantasy	-1	Unknown	Kinema Citrus, DR Movie	219840	1	0.08
40357	Tate no Yuusha no Nariagari Season 3	-1	Action Adventure Drama Fantasy	-1	Unknown	Unknown	108628	1	0.1
40358	Gal to Kyouryuu	6.45	SliceofLife Comedy Seinen	12	Spring 2020	Kamikaze Douga, Space Neko Company	22011	3437	0.34
40359	Ikebukuro West Gate Park	6.83	Mystery Drama	12	Fall 2020	Doga Kobo	66395	18894	0.17
40367	Go! Go! Atom	-1	Action Sci-Fi Adventure Kids Drama Mecha	52	Fall 2019	Unknown	508	68	0.32
40368	Egg Car	-1	Adventure Comedy Kids Fantasy	52	Fall 2019	Unknown	162	14	0.53
40392	Runway de Waratte	7.65	SliceofLife Drama School Shounen	12	Winter 2020	Ezόla	81601	40249	0.06
40397	Maoujou de Oyasumi	8.04	SliceofLife Comedy Supernatural Magic Fantasy Shounen	12	Fall 2020	Doga Kobo	96017	42696	0.05
40403	Shin Sakura Taisen the Animation	5.81	Sci-Fi Adventure Mecha Shounen	12	Spring 2020	SANZIGEN	13568	2862	0.32
40406	Nanami-chan 4th Series	-1	Kids	16	Summer 2007	Unknown	78	20	0.4
40407	Nanami-chan 5th Series	-1	Kids	16	Summer 2008	Unknown	68	18	0.45
40408	Nanami-chan 6th Series	-1	Kids	16	Summer 2009	Unknown	65	18	0.42
40417	Fruits Basket 2nd Season	8.54	SliceofLife Comedy Supernatural Drama Romance Shoujo	25	Spring 2020	TMS Entertainment	197274	79090	0.02
40423	Taeko no Nichijou	-1	SliceofLife	26	Fall 2019	DLE	370	43	0.5
40436	Peter Grill to Kenja no Jikan	5.51	Harem Comedy Ecchi Fantasy	12	Summer 2020	Wolfsbane	111211	44504	0.17
40454	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka III	7.49	Action Adventure Comedy Romance Fantasy	12	Fall 2020	J.C.Staff	298231	132998	0.02
40473	Chou Futsuu Toshi Kashiwa Densetsu R	4.47	Comedy Fantasy	10	Summer 2020	Super Normal Studio	3770	397	0.39
40483	Murenase! Seton Gakuen	7.08	Comedy School	12	Winter 2020	Studio Gokumi	125231	74782	0.06
40487	Eily wa Ou-sama!	-1	Comedy Magic Fantasy	10	Fall 2019	Unknown	259	25	0.57
40496	Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e	7.34	Action Demons Magic Fantasy School	13	Summer 2020	SILVER LINK.	356060	236529	0.03
40497	Mahouka Koukou no Rettousei: Raihousha-hen	7.31	Action Sci-Fi Supernatural Magic Romance School	13	Fall 2020	8bit	197342	76107	0.04
40504	Major 2nd (TV) 2nd Season	7.6	Comedy Sports Drama Shounen	25	Spring 2020	OLM	13317	5440	0.04
40506	Shadowverse (TV)	5.09	Game Fantasy	-1	Spring 2020	Zexcs	10041	1	0.35
40507	Arifureta Shokugyou de Sekai Saikyou 2nd Season	-1	Action Adventure Harem Fantasy	-1	Unknown	Unknown	84196	0	0.09
40513	Nami yo Kiitekure	7.37	Comedy Drama Romance Seinen	12	Spring 2020	Sunrise	58063	22378	0.13
40526	Dragon, Ie wo Kau.	-1	Comedy Fantasy Shounen	-1	Spring 2021	Signal.MD	6907	0	0
40529	No Guns Life 2nd Season	7.05	Action Sci-Fi Drama Seinen	12	Summer 2020	Madhouse	55681	22028	0.05
40530	Jaku-Chara Tomozaki-kun	7.01	Drama Romance School	12	Winter 2021	Project No.9	120047	21	0.05
40532	Appare-Ranman!	7.33	Cars Comedy Historical	13	Spring 2020	P.A. Works	89963	32245	0.1
40540	Sword Art Online: Alicization - War of Underworld 2nd Season	7.42	Action Game Adventure Romance Fantasy	11	Summer 2020	A-1 Pictures	320775	201021	0.02
40550	Assault Lily: Bouquet	6.46	Action Magic Fantasy	12	Fall 2020	Shaft	53164	15541	0.18
40571	Majo no Tabitabi	7.57	Adventure Magic Fantasy	12	Fall 2020	C2C	199299	83078	0.05
40586	Slime Taoshite 300-nen, Shiranai Uchi ni Level Max ni Nattemashita	-1	Comedy Fantasy	-1	Spring 2021	Revoroot	32490	0	0
40590	Utawarerumono: Futari no Hakuoro	-1	Action Drama Fantasy	-1	Unknown	Unknown	6657	0	-1
40591	Kaguya-sama wa Kokurasetai?: Tensai-tachi no Renai Zunousen	8.74	Comedy Psychological Romance School Seinen	12	Spring 2020	A-1 Pictures	654744	443172	0.01
40594	Tatoeba Last Dungeon Mae no Mura no Shounen ga Joban no Machi de Kurasu Youna Monogatari	6.75	Adventure Fantasy	12	Winter 2021	LIDENFILMS	111812	11	0.06
40595	Kimi to Boku no Saigo no Senjou, Aruiwa Sekai ga Hajimaru Seisen	6.54	Action Military Romance Fantasy	12	Fall 2020	SILVER LINK.	146308	59565	0.09
40608	Muv-Luv Alternative	-1	Action Military Sci-Fi Drama Mecha	-1	Fall 2021	Unknown	4046	0	-1
40610	Healin' Good♡Precure	6.88	Action Magic Fantasy Shoujo	45	Winter 2020	Toei Animation	6240	433	0.13
40620	Uramichi Oniisan	-1	SliceofLife Comedy	-1	Summer 2021	Studio Blanc	4176	0	-1
40623	Dokyuu Hentai HxEros	5.74	Action Comedy Supernatural Ecchi School Shounen	12	Summer 2020	Project No.9	78428	25489	0.19
40652	Onmyou Hyakki Monogatari	-1	Historical Demons Supernatural	-1	Unknown	Unknown	1872	0	-1
40670	Usagi no Mofy (TV)	-1	Kids	26	Winter 2013	Unknown	68	23	0.38
40671	Usagi no Mofy (TV 2014)	-1	Kids	26	Fall 2014	Unknown	63	19	0.42
40672	Usagi no Mofy (TV 2016)	-1	Kids	26	Winter 2016	Unknown	59	14	0.49
40677	Argonavis from BanG Dream!	6.76	Music	13	Spring 2020	SANZIGEN	7721	2249	0.13
40679	2.43: Seiin Koukou Danshi Volley-bu	6.41	SliceofLife Sports Drama School	12	Winter 2021	David Production	63008	14	0.1
40682	Kingdom 3rd Season	8.4	Action Historical Military Seinen	-1	Spring 2020	Studio Signpost	39329	5	0.04
40685	Super Cub	-1	SliceofLife School	-1	Spring 2021	Studio Kai	4535	0	-1
40708	Monster Musume no Oishasan	6.51	Comedy Romance Ecchi Fantasy	12	Summer 2020	Arvo Animation	114585	54007	0.12
40714	Youkai Watch Jam: Youkai Gakuen Y - N to no Souguu	6.28	Comedy Demons Kids Supernatural School	-1	Winter 2020	OLM	875	1	0.26
40716	Kakushigoto (TV)	8.02	SliceofLife Comedy Shounen	12	Spring 2020	Ajia-Do	197585	90983	0.05
40729	Nomad: Megalo Box 2	-1	Action Sci-Fi SliceofLife Sports Drama	-1	Spring 2021	TMS Entertainment	43556	0	0
40738	Natsunagu!	5.84	Drama SliceofLife	12	Winter 2020	IMAGICA Lab.	19716	6561	0.18
40746	Overflow	6.76	Ecchi Romance	8	Winter 2020	Studio Hokiboshi	59322	32931	0.06
40748	Jujutsu Kaisen (TV)	8.54	Action Demons Supernatural School Shounen	24	Fall 2020	MAPPA	707976	299	0.01
40750	Kaifuku Jutsushi no Yarinaoshi	6.22	Ecchi Fantasy	12	Winter 2021	TNK	222096	77	0.07
40752	Bishounen Tanteidan	-1	Mystery School	-1	Spring 2021	Shaft	4954	0	-1
40758	Hulaing Babies Petit	-1	SliceofLife Comedy	12	Winter 2020	Gaina	702	96	0.34
40763	Show By Rock!! Mashumairesh!!	6.91	Music Comedy	12	Winter 2020	Kinema Citrus	9700	3235	0.14
40776	Haikyuu!!: To the Top 2nd Season	8.57	Comedy Sports Drama School Shounen	12	Fall 2020	Production I.G	355906	194898	0.01
40783	Shachou, Battle no Jikan Desu!	5.87	Action Adventure Fantasy	12	Spring 2020	C2C	25893	9931	0.24
40786	Skate-Leading☆Stars	6.4	Comedy Sports Drama School	12	Winter 2021	J.C.Staff	21185	7	0.12
40803	Hypnosis Mic: Division Rap Battle - Rhyme Anima	6.75	Action Sci-Fi Music	13	Fall 2020	A-1 Pictures	33519	8378	0.18
40815	Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan wo Erandeiraremasen 2nd Season	8.16	SliceofLife Fantasy	12	Spring 2020	Ajia-Do	100076	68386	0.01
40832	Mukashi Keibanashi	-1	Comedy Parody Sports Fantasy	4	Fall 2019	DLE	132	48	0.4
40833	Inu to Neko Docchi mo Katteru to Mainichi Tanoshii	6.96	SliceofLife Comedy	24	Fall 2020	Team TillDawn	8546	4	0.09
40834	Ousama Ranking	-1	Action Adventure Comedy Historical Fantasy Seinen	-1	Unknown	Wit Studio	1503	0	0
40839	Kanojo, Okarishimasu	7.37	Comedy Romance School Shounen	12	Summer 2020	TMS Entertainment	442452	289037	0.04
40842	Idoly Pride	6.79	Music	12	Winter 2021	Lerche	14564	6	0.1
40850	Breakers	6.35	Sports	16	Winter 2020	Albacrow	8021	2158	0.27
40852	Dr. Stone: Stone Wars	8.29	Sci-Fi Adventure Shounen	11	Winter 2021	TMS Entertainment	414084	65	0.01
40854	BanG Dream! Garupa☆Pico: Oomori	7.63	Music Comedy	26	Spring 2020	SANZIGEN	5734	2871	0.03
40870	SSSS.Dynazenon	-1	Action Sci-Fi Mecha	-1	Spring 2021	Trigger	24979	0	0
40879	Love Live! Nijigasaki Gakuen School Idol Doukoukai	7.62	Music SliceofLife School	13	Fall 2020	Sunrise	39832	13467	0.06
40880	Kiratto Pri☆chan Season 3	6.51	Music SliceofLife Comedy Magic Shoujo	-1	Spring 2020	Tatsunoko Production	1102	0	0.23
40893	Komatta Jiisan	6.42	Adventure SliceofLife Comedy Drama Romance Seinen	13	Spring 2020	Kachidoki Studio	3286	1502	0.11
40902	Shokugeki no Souma: Gou no Sara	7.35	Ecchi School Shounen	13	Spring 2020	J.C.Staff	272984	132920	0.04
40904	Bokutachi no Remake	-1	Comedy	-1	Unknown	feel.	3928	0	0.07
40906	Dragon Quest: Dai no Daibouken (2020)	7.08	Action Adventure Fantasy Shounen	-1	Fall 2020	Toei Animation	40668	5	0.11
40907	World Trigger 2nd Season	8.09	Action Sci-Fi Supernatural School Shounen	13	Winter 2021	Toei Animation	55547	11	0.01
40908	Kemono Jihen	7.56	Action Mystery Demons Supernatural Shounen	12	Winter 2021	Ajia-Do	130520	19	0.03
40911	Yuukoku no Moriarty	7.97	Mystery Historical Psychological Shounen	11	Fall 2020	Production I.G	135996	51925	0.04
40930	Azur Lane: Bisoku Zenshin!	7	Military Sci-Fi SliceofLife Comedy	12	Winter 2021	Yostar Pictures, CANDY BOX	19547	5	0.04
40934	Bungou to Alchemist: Shinpan no Haguruma	6.33	Action Adventure Fantasy	13	Spring 2020	OLM	31176	5778	0.28
40935	Beastars 2nd Season	8.06	SliceofLife Psychological Drama Shounen	-1	Winter 2021	Orange	176946	10	0.01
40938	Hige wo Soru. Soshite Joshikousei wo Hirou.	-1	Drama Romance	-1	Spring 2021	Project No.9	35871	0	0.15
40939	Marumaru Manul	-1	Comedy	-1	Winter 2020	Kachidoki Studio	452	0	0.55
40953	Lalalacoco	-1	SliceofLife Comedy Kids	13	Winter 2020	Studio Comet	107	15	0.43
40956	Enen no Shouboutai: Ni no Shou	7.78	Action Supernatural Shounen	24	Summer 2020	David Production	344406	137992	0.03
40957	Shin Chuuka Ichiban! 2nd Season	6.63	Comedy Shounen	-1	Winter 2021	Production I.G, Nihon Ad Systems	2887	1	0.08
40958	Rail Romanesque	5.02	SliceofLife	12	Fall 2020	Saetta	19767	6079	0.25
40960	Cheat Kusushi no Slow Life: Isekai ni Tsukurou Drugstore	-1	Comedy Fantasy	-1	Summer 2021	EMT Squared	8438	0	0.5
40961	Hortensia Saga (TV)	5.54	Action Adventure Magic Fantasy	12	Winter 2021	LIDENFILMS	28702	9	0.18
40964	Back Arrow	5.81	Action Fantasy Mecha	24	Winter 2021	Studio VOLN	21131	2	0.19
40974	Kuma Kuma Kuma Bear	7.14	Adventure Comedy Fantasy	12	Fall 2020	EMT Squared	70011	34615	0.07
40983	Hakushon Daimaou 2020	-1	Comedy Fantasy	20	Spring 2020	Nippon Animation, Tatsunoko Production	546	107	0.36
40995	Hentatsu (TV)	5.1	Adventure Mystery	12	Winter 2020	Yaoyorozu	4143	1348	0.23
41006	Higurashi no Naku Koro ni Gou	7.03	Mystery Dementia Horror Psychological Supernatural Thriller	24	Fall 2020	Passione	160008	19	0.11
41025	Fumetsu no Anata e	-1	Adventure Supernatural Drama Shounen	20	Spring 2021	Brain's Base	55742	0	0
41062	Tomica Kizuna Gattai: Earth Granner	5.49	Action Adventure Mecha Sci-Fi	-1	Spring 2020	OLM	884	1	0.45
41074	Digimon Adventure:	6.77	Action Adventure Comedy Fantasy Kids	66	Spring 2020	Toei Animation	41152	5	0.15
41101	Poccolies	-1	SliceofLife Kids	-1	Spring 2020	Kachidoki Studio	192	0	0.46
41103	Koi to Yobu ni wa Kimochi Warui	-1	Comedy Romance	-1	Spring 2021	Nomad	16254	0	0
41109	Log Horizon: Entaku Houkai	7.28	Action Game Adventure Magic Fantasy	12	Winter 2021	Studio Deen	137295	13	0.02
41114	Olga no Russia Gokouza	-1	SliceofLife Comedy	11	Winter 2007	DLE	64	34	0.17
41115	Arms Rally	-1	Military Adventure Cars Sports	11	Winter 2007	Iyasakadou Film	115	43	0.23
41116	Kakugen! Kakuza Tousan	-1	Comedy Drama Historical Parody	13	Winter 2008	Unknown	55	19	0.38
41117	Gozonji! Kakuza Tousan	-1	Cars Drama Historical Parody	11	Summer 2007	Unknown	72	25	0.34
41118	Kakuza Tousan	-1	Comedy Drama Historical Parody	11	Winter 2007	Unknown	90	25	0.23
41120	Fugou Keiji: Balance:Unlimited	7.56	Mystery Comedy Police	11	Spring 2020	CloverWorks	220520	92334	0.05
41156	Kirakira Shougakusei Celeb-chan	-1	Comedy Parody	11	Winter 2007	Unknown	56	22	0.29
41159	Leonardo Hakase to Kirin-mura no Nakama-tachi (TV)	-1	Comedy Kids	13	Winter 2008	Unknown	59	18	0.36
41160	Leonardo Hakase to Kirin-mura no Nakama desho	-1	Comedy Kids	26	Spring 2008	Unknown	55	16	0.37
41169	Love Live! Superstar!!	-1	Music SliceofLife School	-1	Summer 2021	Unknown	10273	0	-1
41226	Uzaki-chan wa Asobitai!	7.05	SliceofLife Comedy Romance Ecchi	12	Summer 2020	ENGI	232181	126485	0.08
41265	Mars Red	-1	Action Military Historical Supernatural Vampire	-1	Spring 2021	Signal.MD	13159	0	0
41266	Bessatsu Olympia Kyklos	7.02	SliceofLife Comedy Historical Sports Seinen	24	Spring 2020	Gosay Studio	12603	3171	0.16
41276	Onigiri ni Naritai Cogimyun	-1	Fantasy Kids School	-1	Winter 2020	Unknown	84	0	0.49
41277	Rainbow Ruby	-1	Kids Fantasy	26	Spring 2017	Unknown	60	14	0.46
41283	Cardfight!! Vanguard Gaiden: If	6.41	Action Game Adventure Comedy Parody Demons	25	Spring 2020	OLM	1932	471	0.18
41312	Kami-tachi ni Hirowareta Otoko	6.86	Adventure SliceofLife Magic Fantasy	12	Fall 2020	Maho Film	85100	46547	0.07
41332	Ore no Yubi de Midarero.: Heitengo Futarikiri no Salon de...	5.88	Ecchi Romance	8	Spring 2020	Magic Bus	18091	7164	0.08
41345	Noblesse	6.83	Action Supernatural Vampire School	13	Fall 2020	Production I.G	158196	55554	0.13
41349	Ooya-san to Boku	-1	SliceofLife	10	Spring 2020	Fanworks	223	34	0.53
41353	The God of High School	7.07	Action Sci-Fi Adventure Comedy Supernatural MartialArts Fantasy	13	Summer 2020	MAPPA	480227	270918	0.07
41364	One Room Third Season	6.46	SliceofLife	12	Fall 2020	Zero-G	18583	7258	0.04
41372	Senyoku no Sigrdrifa	6.48	Action Military	12	Fall 2020	A-1 Pictures	31733	8319	0.2
41380	100-man no Inochi no Ue ni Ore wa Tatteiru	6.45	Action Game Drama Fantasy Shounen	12	Fall 2020	Maho Film	132579	65929	0.1
41381	Garugaku.: Sei Girls Square Gakuin	5.42	Music School	-1	Spring 2020	OLM, Wit Studio	1388	0	0.32
41383	Obake Zukan	-1	Comedy Demons Kids Supernatural Fantasy	-1	Summer 2020	Fanworks	387	0	0.38
41384	Norimono Man: Mobile Land no Car-kun	-1	SliceofLife Cars Comedy Kids	-1	Spring 2020	CloverWorks	160	0	0.44
41389	Tonikaku Kawaii	7.96	Comedy Romance Shounen	12	Fall 2020	Seven Arcs	317474	164090	0.03
41392	Urasekai Picnic	6.53	Sci-Fi Adventure Mystery Fantasy ShoujoAi	12	Winter 2021	LIDENFILMS, Felix Film	61416	2	0.12
41401	TV Yarou Nanaana: Kaibutsu Kraken wo Oe!	6.02	Adventure Comedy	24	Spring 2020	Studio Crocodile	889	169	0.25
41402	Mairimashita! Iruma-kun 2nd Season	-1	Comedy Demons Supernatural Fantasy School Shounen	-1	Spring 2021	Bandai Namco Pictures	49726	0	0.11
41404	Neko Neko Nihonshi 5th Season	-1	Historical Parody Kids Samurai	-1	Spring 2020	Unknown	164	0	0.58
41405	Bakugan: Armored Alliance	5.29	Action Fantasy Game	52	Spring 2020	TMS Entertainment	1728	0	0.3
41416	Konglong Baobei Zhi Longshen Yongshi	-1	Action Sci-Fi Adventure Comedy Kids	52	Unknown	Unknown	40	7	0.61
41426	Watanuki-san Chi to	-1	SliceofLife	12	Spring 2020	Unknown	913	61	0.32
41433	Akudama Drive	7.75	Action Sci-Fi	12	Fall 2020	Studio Pierrot	202536	88466	0.04
41440	Anoyo no Subete wa, Obake-gumi!	-1	Comedy Supernatural	13	Spring 2020	Unknown	539	1	0.48
41456	Sentouin, Hakenshimasu!	-1	Action Comedy Fantasy	-1	Spring 2021	J.C.Staff	13176	0	0
41457	86	-1	Sci-Fi Drama	-1	Spring 2021	A-1 Pictures	19269	0	0
41458	Origami Ninja Koyankinte	-1	Comedy Kids	-1	Spring 2020	Directions	79	0	0.68
41461	Date A Live IV	-1	Harem Comedy Romance School	-1	Unknown	Unknown	54581	0	0.12
41466	Kyojinzoku no Hanayome	5.19	Fantasy ShounenAi	9	Summer 2020	Studio Hokiboshi	16850	6752	0.12
41470	Micchiri Wanko! Animation	-1	Comedy Kids	24	Spring 2020	Charaction	553	26	0.3
41487	Tensei shitara Slime Datta Ken 2nd Season Part 2	-1	Comedy Fantasy	-1	Summer 2021	8bit	81377	1	0
41488	Tensura Nikki: Tensei shitara Slime Datta Ken	-1	SliceofLife Comedy Fantasy Shounen	-1	Spring 2021	8bit	62412	1	0
41491	Nanatsu no Taizai: Fundo no Shinpan	7.16	Action Adventure Supernatural Magic Fantasy Shounen	24	Winter 2021	Studio Deen	155269	64	0.03
41494	Feng Shen Bang Chuanqi	-1	Action Fantasy	100	Unknown	Unknown	44	9	0.52
41514	Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu. II	-1	Action Sci-Fi Adventure Comedy Fantasy	-1	Unknown	Unknown	48936	0	0
41520	Show by Rock!! Stars!!	6.73	Music Comedy	12	Winter 2021	Kinema Citrus	5849	3	0.07
41521	WIXOSS Diva(A)Live	5.33	Game Psychological	-1	Winter 2021	J.C.Staff	6023	2	0.2
41522	Washimo 8th Season	-1	Sci-Fi SliceofLife Comedy Kids School	-1	Spring 2020	Unknown	61	0	0.66
41529	Duel Masters King	-1	Action Adventure Comedy Shounen	-1	Spring 2020	Brain's Base, Shogakukan Music & Digital Entertainment	461	1	0.51
41530	Magia Record: Mahou Shoujo Madoka☆Magica Gaiden (TV) 2nd Season	-1	Psychological Drama Magic Thriller	-1	Unknown	Unknown	18262	0	-1
41556	Maiko-san Chi no Makanai-san	-1	SliceofLife Comedy Shounen	12	Winter 2021	J.C.Staff	3635	1	0
41558	Asatir: Mirai no Mukashi Banashi	5.9	Adventure	13	Spring 2020	Toei Animation	2772	549	0.37
41567	Isekai Quartet 3	-1	Comedy Parody Fantasy	-1	Unknown	Unknown	42114	1	0
41573	Majutsushi Orphen Hagure Tabi: Kimluck-hen	6.22	Action Adventure Drama Magic MartialArts Fantasy	11	Winter 2021	Studio Deen	12505	3	0.06
41574	Guraburu!	5.66	Adventure Fantasy	12	Fall 2020	W-Toon Studio, DMM.futureworks	9296	2792	0.14
41587	Boku no Hero Academia 5th Season	-1	Action Comedy SuperPower School Shounen	-1	Spring 2021	Bones	231671	6	0.06
41595	Tiger & Bunny 2	-1	Action Comedy Mystery SuperPower	-1	Unknown	Bandai Namco Pictures	5511	0	-1
41619	Munou na Nana	7.33	Psychological Shounen SuperPower Supernatural Thriller	13	Fall 2020	Bridge	161644	77401	0.06
41623	Isekai Maou to Shoukan Shoujo no Dorei Majutsu Ω	-1	Harem Comedy Magic Ecchi Fantasy	-1	Spring 2021	Tezuka Productions, Okuruto Noboru	85667	2	0.06
41635	Zhu Zhu Xia: Jing Su Xiao Yingxiong	-1	Sci-Fi Cars Space SuperPower Kids	104	Fall 2019	Unknown	75	23	0.53
41638	Bite-Choicar	-1	Cars Kids	26	Spring 2020	Unknown	137	0	0.51
41667	Monkateu	-1	Action Adventure Fantasy Kids	52	Summer 2017	Unknown	73	24	0.38
41686	Zo Zo Zo Zombie-kun (TV)	-1	Comedy Kids	100	Spring 2020	J.C.Staff	215	18	0.4
41694	Hataraku Saibou Black (TV)	7.57	Action Seinen	13	Winter 2021	LIDENFILMS	123446	16	0.03
41710	Genjitsu Shugi Yuusha no Oukoku Saikenki	-1	Action Military Harem Magic Romance Fantasy	-1	Summer 2021	J.C.Staff	15032	0	0
41762	Tenchi Souzou Design-bu	6.76	SliceofLife Comedy Fantasy Seinen	12	Winter 2021	Asahi Production	35781	7	0.1
41776	Oshiri Tantei 2nd Season	-1	Mystery Comedy Kids Fantasy	16	Winter 2019	Toei Animation	78	19	0.45
41777	Oshiri Tantei 3rd Season	-1	Mystery Comedy Kids Fantasy	13	Summer 2019	Toei Animation	66	16	0.53
41778	Oshiri Tantei 4th Season	-1	Comedy Fantasy Kids Mystery	13	Spring 2020	Toei Animation	67	11	0.58
41783	Iwa Kakeru!: Sport Climbing Girls	6.49	Comedy Sports School	12	Fall 2020	Blade	59773	20976	0.16
41807	Get Up! Get Live! #Geragera	-1	SliceofLife Comedy	10	Summer 2020	Spell Bound	790	87	0.37
41812	Megami-ryou no Ryoubo-kun.	-1	Harem Comedy Romance Ecchi Shounen	-1	Unknown	Asread	3163	0	-1
41813	Kaijuu Step Wandabada 2nd Season	-1	Comedy Kids	-1	Fall 2020	Usagi Ou	75	0	0.67
41833	Kyuuketsuki Sugu Shinu	-1	Comedy Supernatural Vampire Shounen	-1	Unknown	Madhouse	984	0	-1
48363	RPG Fudousan	-1	SliceofLife Comedy Fantasy	-1	Unknown	Unknown	285	0	-1
41834	King's Raid: Ishi wo Tsugumono-tachi	5.58	Action Adventure Magic Fantasy	26	Fall 2020	OLM, Sunrise Beyond	41180	4	0.25
41899	Ore dake Haireru Kakushi Dungeon	6.47	Action Adventure Harem Ecchi Fantasy	12	Winter 2021	Okuruto Noboru	122606	21	0.05
41911	Hanyou no Yashahime: Sengoku Otogizoushi	6.86	Action Adventure Comedy Historical Demons Supernatural Magic Fantasy	24	Fall 2020	Sunrise	77864	2	0.11
41930	Kamisama ni Natta Hi	6.86	Drama Fantasy	12	Fall 2020	P.A. Works	161314	63954	0.07
41946	Shuumatsu no Harem	-1	Sci-Fi Harem Ecchi Shounen	-1	Unknown	Studio Gokumi, AXsiZ	12283	0	0
41951	Mukashi Keibanashi 2nd Season	-1	Comedy Parody Sports Fantasy	4	Spring 2020	Unknown	104	37	0.46
42033	Jingju Mao	-1	Action Adventure Comedy Kids Fantasy	60	Unknown	Dazzling Star	50	9	0.52
42068	Utau Soccer Panda Mifanda	-1	Music SliceofLife	-1	Unknown	Unknown	89	0	-1
42071	Yuuki Yuuna wa Yuusha de Aru Churutto!	-1	SliceofLife Comedy Drama Magic Fantasy	-1	Spring 2021	W-Toon Studio, DMM.futureworks	2365	0	-1
42072	Kenja no Deshi wo Nanoru Kenja	-1	Adventure Fantasy	-1	Unknown	Unknown	3524	0	-1
42090	Taeko no Nichijou 2nd Season	-1	SliceofLife	132	Summer 2020	DLE	205	10	0.54
42144	Jingju Mao Zhi Xinnian de Maoxian	-1	Action Adventure Comedy Kids Fantasy	52	Summer 2017	Dazzling Star	53	10	0.5
42145	Hulaing Babies Aratame: Staying Babies	-1	SliceofLife Comedy	4	Summer 2020	Gaina	534	122	0.28
42146	Jingju Mao Zhi Cheng Feng Polang	-1	Action Adventure Comedy Kids MartialArts Fantasy	52	Summer 2018	Dazzling Star	65	9	0.5
42179	Lalalacoco II	-1	Comedy Kids SliceofLife	-1	Summer 2020	Unknown	92	0	0.59
42192	Edens Zero	-1	Action Sci-Fi Adventure Comedy Fantasy Shounen	-1	Spring 2021	J.C.Staff	26239	0	0.33
42203	Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season Part 2	8.64	Psychological Drama Thriller Fantasy	12	Winter 2021	White Fox	342829	51	0.01
42205	Shaman King (2021)	-1	Action Adventure Comedy SuperPower Supernatural Shounen	-1	Spring 2021	Bridge	45941	0	0
42249	Tokyo Revengers	-1	Action Drama School Shounen	-1	Spring 2021	LIDENFILMS	22069	0	0
42250	Bungou Stray Dogs Wan!	7.74	SliceofLife Comedy Supernatural	12	Winter 2021	Bones, Nomad	39324	10	0.03
42260	Ninja Collection	3.84	Supernatural	13	Summer 2020	ILCA, DRAWIZ, Toho Interactive Animation	12232	2343	0.39
42263	Konglong Baobei Zhi Longshen Yongshi 2	-1	Action Sci-Fi Adventure Comedy Kids	52	Unknown	Unknown	38	6	0.63
42264	Konglong Baobei Zhi Longshen Yongshi 3	-1	Action Sci-Fi Adventure Comedy Kids	52	Unknown	Unknown	39	6	0.6
42282	Otome Game no Hametsu Flag shika Nai Akuyaku Reijou ni Tensei shiteshimatta... X	-1	Comedy Drama Romance Fantasy School	-1	Summer 2021	Unknown	45612	0	0
42295	Fushigi Dagashiya: Zenitendou	-1	Mystery Kids	-1	Fall 2020	Toei Animation	725	0	0.24
42307	Subarashiki Kono Sekai The Animation	-1	Action Adventure	-1	Spring 2021	Shin-Ei Animation, domerica	12780	0	0
42321	Battle Athletess Daiundoukai ReSTART!	-1	Action Sci-Fi Adventure Comedy Sports School	-1	Spring 2021	Seven	1094	0	-1
42340	Meikyuu Black Company	-1	Comedy Fantasy	-1	Summer 2021	SILVER LINK.	3569	0	0
42351	Senpai ga Uzai Kouhai no Hanashi	-1	Comedy Romance	-1	Unknown	Doga Kobo	5210	0	0
42361	Ijiranaide, Nagatoro-san	-1	SliceofLife Comedy Romance	-1	Spring 2021	Telecom Animation Film	73950	2	0.05
42385	The iDOLM@STER Million Live!	-1	Music	-1	Unknown	Shirogumi	2307	0	-1
42391	Osomatsu-san 3rd Season	7.42	Comedy Parody	25	Fall 2020	Studio Pierrot	13134	3	0.05
42395	Shakunetsu Kabaddi	-1	Sports	-1	Spring 2021	TMS Entertainment	11971	0	-1
42414	Eternity: Shinya no Nurekoi Channel ♡	5.58	Ecchi Romance	12	Fall 2020	Seven	4067	607	0.15
42429	Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan wo Erandeiraremasen 3rd Season	-1	SliceofLife Fantasy	-1	Unknown	Unknown	22341	0	-1
42468	Zhandou Wang Zhi Jufeng Zhan Hun 5	-1	Action Kids	26	Fall 2018	Alpha Animation	67	15	0.41
42482	Seizei Ganbare! Mahou Shoujo Kurumi 3rd Season	-1	Parody Magic	-1	Fall 2020	Pie in the sky	600	1	0.44
42506	World Witches Hasshin Shimasu!	5.97	Military Comedy	12	Winter 2021	Acca effe, Giga Production	5867	1	0.12
42514	Anime Kapibara-san	6.48	Comedy Kids	-1	Fall 2020	Shin-Ei Animation, Lesprit	2041	1	0.15
42516	Cardfight!! Vanguard: overDress	-1	Action Game	12	Spring 2021	Kinema Citrus	937	0	-1
42517	Ookami-san wa Taberaretai	5.61	Romance Ecchi	3	Summer 2020	Peak Hunt	10140	4052	0.04
42568	Yakunara Mug Cup mo	-1	SliceofLife	-1	Spring 2021	Nippon Animation	2468	0	0
42571	Dogeza de Tanondemita	5.72	Comedy Ecchi Fantasy	12	Fall 2020	DMM pictures	32957	12126	0.12
42587	Yuuki Yuuna wa Yuusha de Aru: Dai Mankai no Shou	-1	SliceofLife Drama Magic Fantasy	-1	Unknown	Studio Gokumi	3860	0	0
42590	Mashiro no Oto	-1	Music Drama School	-1	Spring 2021	Shin-Ei Animation	7299	0	0
42625	Heion Sedai no Idaten-tachi	-1	Action Adventure Demons Fantasy Seinen	-1	Summer 2021	MAPPA	11381	0	0
42627	Peach Boy Riverside	-1	Fantasy Shounen	-1	Summer 2021	Asahi Production	6172	0	0
42653	Aikatsu Planet!	6.35	Kids Music	-1	Winter 2021	Bandai Namco Pictures	1032	0	0.08
42654	Robocar Poli 3	-1	Cars Comedy Kids	26	Winter 2014	Unknown	62	28	0.29
42657	Himitsukessha Taka no Tsume: Golden Spell	6.18	Comedy Parody SuperPower	12	Fall 2020	DLE	708	245	0.35
42660	Robocar Poli 4	-1	Cars Comedy Kids	26	Summer 2015	Unknown	61	28	0.25
42668	Taisou Zamurai	7.27	Sports	11	Fall 2020	MAPPA	34725	11703	0.13
42670	Princess Connect! Re:Dive Season 2	-1	Action Adventure Comedy Fantasy	-1	Unknown	CygamesPictures	24238	0	0
42714	Otona nya Koi no Shikata ga Wakaranee!	5.63	Romance Ecchi	8	Fall 2020	Ether Kitten	9163	2076	0.1
42717	Kaeru no Pickles: Kimochi no Iro	-1	SliceofLife Kids	12	Fall 2020	Unknown	673	41	0.28
42740	Ji Jia Shou Shen Zhi Baolie Feiche	-1	Action Adventure Cars	40	Spring 2016	Alpha Animation	68	16	0.36
42745	Machikado Mazoku 2nd Season	-1	SliceofLife Comedy Magic	-1	Unknown	Unknown	15266	0	0
42765	Ji Jia Shou Shen	-1	Action Adventure	26	Unknown	Qianqi Animation	35	6	0.47
42766	Ji Jia Shou Shen 2nd Season	-1	Action Adventure	26	Unknown	Qianqi Animation	32	6	0.53
42774	Sayonara Watashi no Cramer	-1	Sports Drama Shounen	-1	Spring 2021	LIDENFILMS	5914	0	-1
42822	Kai Byoui Ramune	6.86	Comedy Psychological Supernatural Shounen	12	Winter 2021	Platinum Vision	29800	7	0.09
42825	Project Scard: Praeter no Kizu	5.51	Action SuperPower	13	Winter 2021	GoHands	17736	1	0.25
42826	Seijo no Maryoku wa Bannou Desu	-1	Romance Fantasy	-1	Spring 2021	Diomedéa	3618	0	0
42852	Little Village People	-1	Parody	15	Unknown	Unknown	29	4	0.36
42870	Uchuu Nanchara Kotetsu-kun	-1	Space	-1	Spring 2021	Fanworks	164	0	-1
42883	Sore dake ga Neck	5.64	Mystery	12	Fall 2020	Toho Interactive Animation	4698	1979	0.16
42892	Baraou no Souretsu	-1	Action Historical Supernatural Drama Shoujo	-1	Unknown	Unknown	2306	0	-1
42897	Horimiya	8.6	SliceofLife Comedy Romance School Shounen	13	Winter 2021	CloverWorks	363936	189	0.01
42923	SK∞	7.96	Comedy Sports	12	Winter 2021	Bones	150742	26	0.02
42938	Fruits Basket: The Final	-1	SliceofLife Comedy Supernatural Drama Romance Shoujo	-1	Spring 2021	Unknown	51708	0	0
42941	Uma Musume: Pretty Derby (TV) Season 2	7.21	SliceofLife Comedy Sports	13	Winter 2021	Studio Kai	15872	1	0.05
42959	Yatogame-chan Kansatsu Nikki Sansatsume	6.28	SliceofLife Comedy School Shounen	-1	Winter 2021	Creators in Pack, LEVELS	7229	1	0.04
42962	Uzaki-chan wa Asobitai! 2nd Season	-1	SliceofLife Comedy Romance Ecchi	-1	Unknown	Unknown	43219	0	0
42963	Kanojo, Okarishimasu 2nd Season	-1	Comedy Romance School Shounen	-1	Unknown	Unknown	90814	1	0.09
42979	Zhandou Wang Zhi Jufeng Zhan Hun 5: Heti Fanwai Pian	-1	Action Kids	10	Winter 2020	Alpha Animation	67	13	0.36
42981	Idolls!	4.78	Music	-1	Winter 2021	Shin-Ei Animation	2699	0	0.29
42998	Awajishima no Shichifukujin	-1	Comedy Kids Supernatural	-1	Fall 2020	Unknown	82	0	0.66
43007	Osananajimi ga Zettai ni Makenai Love Comedy	-1	Harem Comedy Romance School	-1	Spring 2021	Doga Kobo	22176	0	0
43229	Godzilla: S.P	-1	Action	13	Spring 2021	Bones, Orange	7658	0	0
43299	Wonder Egg Priority	8.32	Psychological Drama Fantasy	12	Winter 2021	CloverWorks	222725	36	0.02
43325	Yuukoku no Moriarty 2nd Season	-1	Mystery Historical Psychological Shounen	13	Spring 2021	Production I.G	28404	0	0
43350	Gebäude Bäude	6.33	Sci-Fi Comedy	10	Fall 2020	Jinnis Animation Studios	469	196	0.06
43416	Kaoru no Taisetsu na Mono	-1	Comedy	-1	Fall 2020	Kachidoki Studio	201	1	0.58
43439	Shadows House	-1	SliceofLife Supernatural Seinen	-1	Spring 2021	CloverWorks	8059	0	0
43470	Rikei ga Koi ni Ochita no de Shoumei shitemita. 2nd Season	-1	Comedy Romance	-1	Unknown	Unknown	23112	1	0
43523	Tsuki ga Michibiku Isekai Douchuu	-1	Adventure Fantasy	-1	Unknown	C2C	7803	0	0
43608	Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen 3rd Season	-1	Comedy Psychological Romance School Seinen	-1	Unknown	Unknown	111055	0	0.08
43629	Tokyo Babylon 2021	-1	Supernatural Drama Fantasy Shoujo ShounenAi	-1	Unknown	GoHands	5135	0	0
43684	Semi wa Magic Cube	-1	Action Comedy Fantasy	26	Summer 2018	Durufix	310	17	0.23
43691	Kageki Shoujo!!	-1	Drama School Seinen	-1	Unknown	Pine Jam	1481	0	-1
43729	Semi wa Magic Cube 2nd Season	-1	Action Fantasy	26	Spring 2020	Unknown	305	20	0.27
43735	Cue!	-1	Music	-1	Unknown	Yumeta Company, Graphinica	378	0	-1
43756	Bakuten!!	-1	Sports	-1	Spring 2021	Zexcs	5626	0	-1
43763	Cestvs: The Roman Fighter	-1	Action Historical Drama Seinen	-1	Spring 2021	Bandai Namco Pictures	2513	0	0
43767	Night Head 2041	-1	Sci-Fi Mystery Psychological Supernatural Drama	-1	Summer 2021	Shirogumi	3253	0	-1
43771	Vazzrock The Animation	-1	Music	-1	Unknown	Unknown	326	0	-1
43778	Motto! Majime ni Fumajime Kaiketsu Zorori 2nd Season	-1	Adventure Comedy Kids	-1	Spring 2021	Ajia-Do	134	0	-1
43814	Deatte 5-byou de Battle	-1	Action SuperPower Supernatural	-1	Unknown	Unknown	2132	0	0
43969	Kanojo mo Kanojo	-1	SliceofLife Comedy Romance School Shounen	-1	Unknown	Unknown	6573	0	0.5
44026	Zannen na Ikimono Jiten (2019)	-1	Comedy SliceofLife	8	Summer 2019	NHK Enterprises	64	16	0.44
44037	Shin no Nakama ja Nai to Yuusha no Party wo Oidasareta node, Henkyou de Slow Life suru Koto ni Shima	-1	Adventure SliceofLife Fantasy	-1	Unknown	Studio Flad, Wolfsbane	3502	0	-1
44040	Abciee Shuugyou Nikki	5.32	Comedy	-1	Winter 2021	Fanworks	1413	2	0.24
44041	SD Gundam World Heroes	-1	Unknown	-1	Spring 2021	Unknown	229	0	-1
44044	Jimihen!!: Jimiko wo Kaechau Jun Isei Kouyuu!!	6.12	Romance Ecchi	8	Winter 2021	Studio Hokiboshi	17613	0	0.09
44056	Tokyo Gambo	-1	SliceofLife	-1	Fall 2020	Jumonji	1918	1	0.17
44081	B-Project 3rd Season	-1	Music Shoujo	-1	Unknown	Unknown	1502	0	-1
44191	Tropical-Rouge! Precure	-1	Action Magic Fantasy Shoujo	-1	Winter 2021	Toei Animation	1555	1	0
44203	Seirei Gensouki	-1	Action Adventure Harem Drama Romance Fantasy	-1	Unknown	TMS Entertainment	5074	0	0
44204	Kyokou Suiri 2nd Season	-1	Mystery Demons Supernatural Romance Shounen	-1	Unknown	Unknown	29739	0	0
44208	Yami Shibai 8	6.09	Dementia Horror Supernatural	-1	Winter 2021	ILCA	5556	3	0.04
44235	Pui Pui Molcar	8.33	Kids	-1	Winter 2021	Shin-Ei Animation	3418	0	0.04
44274	Puraore! Pride of Orange	-1	Sports	-1	Fall 2021	C2C	966	0	-1
44275	Selection Project	-1	Music	-1	Unknown	Doga Kobo	463	0	-1
44276	Kyuukyoku Shinka shita Full Dive RPG ga Genjitsu yori mo Kusoge Dattara	-1	Action Game Comedy Fantasy	-1	Spring 2021	ENGI	7863	0	0
44387	Sankaku Mado no Sotogawa wa Yoru	-1	Mystery Supernatural Drama	-1	Unknown	Unknown	819	0	-1
44511	Chainsaw Man	-1	Action Adventure Demons Shounen	-1	Unknown	MAPPA	37134	1	0
44516	Koroshi Ai	-1	Action Romance Josei	-1	Unknown	Unknown	2432	0	-1
44524	Isekai Meikyuu de Harem wo	-1	Action Adventure Harem Romance Fantasy	-1	Unknown	Unknown	3219	0	0
44583	Rail Romanesque 2nd Season	-1	SliceofLife	-1	Unknown	Unknown	2075	0	-1
44848	Iii Icecrin	-1	Kids	-1	Spring 2021	Shin-Ei Animation	57	0	-1
44881	100-man no Inochi no Ue ni Ore wa Tatteiru 2nd Season	-1	Action Game Drama Fantasy Shounen	-1	Summer 2021	Unknown	20934	0	0
44940	World Trigger 3rd Season	-1	Action Sci-Fi Supernatural School Shounen	-1	Unknown	Unknown	11261	0	0
44942	Shuumatsu no Walküre	-1	Action SuperPower Supernatural Drama Seinen	-1	Unknown	Graphinica	16291	0	0.2
44961	Platinum End	-1	Psychological Supernatural Drama Shounen	-1	Fall 2021	Signal.MD	17398	0	0
45055	Taishou Otome Otogibanashi	-1	SliceofLife Comedy Historical Romance Shounen	-1	Fall 2021	SynergySP	2302	0	-1
45207	Okashi na Sabaku no Suna to Manu	-1	Comedy	50	Winter 2021	Kachidoki Studio	291	1	0.35
45425	Slow Loop	-1	SliceofLife	-1	Unknown	Unknown	711	0	-1
45486	Kuma Kuma Kuma Bear 2nd Season	-1	Adventure Comedy Fantasy	-1	Unknown	Unknown	12411	1	0
45560	Orient	-1	Action Fantasy Shounen	-1	Unknown	Unknown	2049	0	-1
45572	Mahouka Koukou no Yuutousei	-1	Sci-Fi Magic Fantasy	-1	Unknown	Unknown	26379	0	0.33
45577	IDOLiSH7 3rd Season	-1	Music	-1	Unknown	TROYCA	2799	0	-1
45596	Kindan Joshi	-1	Comedy Romance	5	Winter 2021	Unknown	264	47	0.29
45613	Kawaii dake ja Nai Shikimori-san	-1	SliceofLife Comedy Romance	-1	Unknown	Unknown	2777	0	-1
45618	Dinosaur Biyori	-1	SliceofLife	-1	Spring 2021	Unknown	231	0	-1
45653	Soredemo Ayumu wa Yosetekuru	-1	SliceofLife Comedy Romance School Shounen	-1	Unknown	Unknown	5464	0	0
45665	Fairy Ranmaru: Anata no Kokoro Otasuke Shimasu	-1	SliceofLife School	-1	Spring 2021	Studio Comet	1430	0	1
45782	D4DJ Petit Mix	6.51	Music Comedy	-1	Winter 2021	W-Toon Studio, DMM.futureworks	1575	1	0.02
45783	Saiyuuki Reload: Zeroin	-1	Action Adventure Comedy Demons Supernatural Drama Josei	-1	Unknown	LIDENFILMS	1484	0	-1
46093	Shiroi Suna no Aquatope	-1	SliceofLife	-1	Summer 2021	P.A. Works	3335	0	-1
46095	Vivy: Fluorite Eye's Song	-1	Sci-Fi	-1	Spring 2021	Wit Studio	6613	0	-1
46102	Odd Taxi	-1	Mystery	-1	Spring 2021	OLM, P.I.C.S.	2928	0	0
46118	Wave!!: Surfing Yappe!! (TV)	6.05	SliceofLife Sports	12	Winter 2021	Asahi Production	19952	8	0.12
46352	Blue Period	-1	Drama School Seinen	-1	Unknown	Unknown	3099	0	0
46381	Shinkansen Henkei Robo Shinkalion Z the Animation	-1	Action Sci-Fi Kids Mecha	-1	Spring 2021	Unknown	288	0	-1
46422	Niehime to Kemono no Ou	-1	Romance Fantasy Shoujo	-1	Unknown	Unknown	1072	0	-1
46471	Tantei wa Mou, Shindeiru.	-1	Mystery Comedy Drama Romance	-1	Unknown	ENGI	5133	0	0
46569	Jigokuraku	-1	Historical Shounen	-1	Unknown	Unknown	3006	0	-1
46604	Girls' Frontline	-1	Action Military Sci-Fi Drama	-1	Unknown	Asahi Production	1994	0	-1
46652	Duel Masters King!	-1	Action Adventure Comedy Shounen	-1	Spring 2021	Brain's Base, Shogakukan Music & Digital Entertainment	154	0	-1
46654	IDOLiSH7 3rd Season Part 2	-1	Music	-1	Unknown	TROYCA	1610	0	-1
46701	Yubisaki kara no Honki no Netsujou 2: Osananajimi wa Shouboushi	-1	Comedy Romance Ecchi	-1	Summer 2021	Unknown	1424	0	0
46985	Shinka no Mi: Shiranai Uchi ni Kachigumi Jinsei	-1	Fantasy	-1	Unknown	Unknown	1114	0	-1
47158	Tomodachi no Imouto ga Ore ni dake Uzai	-1	Comedy Romance School	-1	Unknown	Unknown	2388	0	0
47159	Tensai Ouji no Akaji Kokka Saisei Jutsu	-1	Comedy Fantasy	-1	Unknown	Unknown	1640	0	0
47160	Goblin Slayer 2nd Season	-1	Action Adventure Fantasy	-1	Unknown	Unknown	39848	0	0
47161	Shikkakumon no Saikyou Kenja	-1	Action Adventure Fantasy	-1	Unknown	J.C.Staff	1624	0	-1
47162	Shokei Shoujo no Virgin Road	-1	Action Adventure Fantasy	-1	Unknown	Unknown	1097	0	-1
47163	Tensei Kenja no Isekai Life: Dai-2 no Shokugyou wo Ete, Sekai Saikyou ni Narimashita	-1	Action Adventure Fantasy	-1	Unknown	Revoroot	1190	0	-1
47164	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka IV	-1	Action Adventure Comedy Romance Fantasy	-1	Unknown	Unknown	40991	0	0
47250	Jouran: The Princess of Snow and Blood	-1	Action Historical Supernatural	-1	Spring 2021	Bakken Record	6221	0	0
47257	Shinigami Bocchan to Kuro Maid	-1	Comedy Drama Romance	-1	Unknown	J.C.Staff	2930	0	0
47391	Seven Knights Revolution: Eiyuu no Keishousha	-1	Action Adventure Magic Fantasy	-1	Spring 2021	LIDENFILMS, domerica	1247	0	0
47591	Kuro Gal ni Natta kara Shinyuu to shitemita.	-1	Romance ShounenAi	-1	Winter 2021	Irawias	3636	3	0.04
47623	Chickip Dancers	-1	SliceofLife	-1	Fall 2021	Fanworks	25	0	-1
47639	Blue Reflection Ray	-1	Magic	-1	Spring 2021	J.C.Staff	883	0	0
47778	Kimetsu no Yaiba: Yuukaku-hen	-1	Action Historical Demons Supernatural Shounen	-1	Unknown	ufotable	59440	3	0.04
47790	Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru	-1	Action Fantasy	-1	Summer 2021	SILVER LINK., Studio Palette	1900	0	-1
47917	Bocchi the Rock!	-1	Music SliceofLife Comedy	-1	Unknown	Unknown	468	0	-1
48252	Ore, Tsushima	-1	SliceofLife Comedy Seinen	-1	Unknown	Fanworks, Space Neko Company	135	0	0
48316	Kage no Jitsuryokusha ni Naritakute!	-1	Action Comedy Fantasy	-1	Unknown	Unknown	775	0	0
48365	Youkai Watch ♪	-1	Comedy Demons Kids Supernatural	-1	Spring 2021	Unknown	143	0	-1
48391	Mazica Party	-1	Game Magic Fantasy	-1	Spring 2021	OLM	58	0	-1
48406	Re-Main	-1	Sports School	-1	Unknown	MAPPA	1452	0	0.25
48413	Hataraku Maou-sama! 2nd Season	-1	Comedy Demons Supernatural Romance Fantasy	-1	Unknown	Unknown	74069	4	0.07
48414	Sabikui Bisco	-1	Action Adventure Fantasy	-1	Unknown	OZ	1407	0	-1
48417	Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e	-1	Magic Fantasy School	-1	Unknown	SILVER LINK.	41425	5	0.04
48418	Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e	-1	Action Demons Magic Fantasy School	-1	Unknown	SILVER LINK.	7707	2	0.2
48441	Eiyuu Densetsu: Sen no Kiseki	-1	Action	-1	Unknown	Unknown	308	0	-1
48442	Shikaru Neko	-1	SliceofLife	-1	Spring 2021	Unknown	177	0	0.5
48466	Kyoukai Senki	-1	Action Mecha	-1	Fall 2021	Sunrise Beyond	454	0	0
48470	D_Cide Traumerei	-1	Action Adventure Drama Magic Fantasy	-1	Summer 2021	SANZIGEN	287	0	-1
48471	Tsuki to Laika to Nosferatu	-1	Sci-Fi Space Vampire	-1	Unknown	Arvo Animation	1857	0	0
48483	Mieruko-chan	-1	Comedy Horror Supernatural	-1	Unknown	Passione	7010	0	0
48488	Higurashi no Naku Koro ni Sotsu	-1	Mystery Dementia Horror Psychological Supernatural Thriller	-1	Summer 2021	Unknown	11309	0	0
48491	Yama no Susume: Next Summit	-1	Adventure SliceofLife Comedy	-1	Unknown	8bit	1386	2	0.06
48492	Scarlet Nexus	-1	Action Fantasy	-1	Summer 2021	Sunrise	310	0	0.17
\.


--
-- Data for Name: anime_names; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.anime_names ("MAL_ID", "Name", "English name", "Japanese name") FROM stdin;
1	Cowboy Bebop	Cowboy Bebop	カウボーイビバップ
6	Trigun	Trigun	トライガン
7	Witch Hunter Robin	Witch Hunter Robin	Witch Hunter ROBIN (ウイッチハンターロビン)
8	Bouken Ou Beet	Beet the Vandel Buster	冒険王ビィト
15	Eyeshield 21	Unknown	アイシールド21
16	Hachimitsu to Clover	Honey and Clover	ハチミツとクローバー
17	Hungry Heart: Wild Striker	Unknown	ハングリーハート Wild Striker
18	Initial D Fourth Stage	Unknown	頭文字〈イニシャル〉D FOURTH STAGE
19	Monster	Monster	モンスター
20	Naruto	Naruto	ナルト
21	One Piece	One Piece	ONE PIECE
22	Tennis no Ouji-sama	The Prince of Tennis	テニスの王子様
23	Ring ni Kakero 1	Unknown	リングにかけろ１
24	School Rumble	School Rumble	スクールランブル
25	Sunabouzu	Desert Punk	砂ぼうず
26	Texhnolyze	Texhnolyze	TEXHNOLYZE
27	Trinity Blood	Trinity Blood	トリニティ・ブラッド
28	Yakitate!! Japan	Yakitate!! Japan	焼きたて!! ジャぱん
29	Zipang	Unknown	ジパング
30	Neon Genesis Evangelion	Neon Genesis Evangelion	新世紀エヴァンゲリオン
33	Kenpuu Denki Berserk	Berserk	剣風伝奇ベルセルク
45	Rurouni Kenshin: Meiji Kenkaku Romantan	Rurouni Kenshin	るろうに剣心 -明治剣客浪漫譚-
48	.hack//Sign	.hack//Sign	.hack//SIGN
50	Aa! Megami-sama! (TV)	Ah! My Goddess	ああっ女神さまっ
52	Kidou Tenshi Angelic Layer	Battle Doll Angelic Layer	機動天使エンジェリックレイヤー
53	Ai Yori Aoshi	Ai Yori Aoshi	藍より青し
55	Arc the Lad	Unknown	アークザラッド
56	Avenger	Unknown	アヴェンジャー
57	Beck	Beck:Mongolian Chop Squad	ベック
58	Blue Gender	Blue Gender	BLUE GENDER
59	Chobits	Chobits	ちょびっツ
60	Chrno Crusade	Chrono Crusade	クロノクルセイド
61	D.N.Angel	D.N.Angel	Ｄ・Ｎ・ＡＮＧＥＬ
62	D.C.: Da Capo	D.C.~Da Capo~	D.C.～ダ・カーポ～
63	DearS	DearS	ディアーズ
64	Rozen Maiden	Rozen Maiden	ローゼンメイデン
65	Rozen Maiden: Träumend	Rozen Maiden:Träumend	ローゼンメイデン トロイメント
66	Azumanga Daioh	Azumanga Daioh:The Animation	あずまんが大王 THE ANIMATION
67	Basilisk: Kouga Ninpou Chou	Basilisk	バジリスク 甲賀忍法帖
68	Black Cat (TV)	Black Cat	ブラックキャット
69	Cluster Edge	Unknown	CLUSTER EDGE（クラスターエッジ）
71	Full Metal Panic!	Full Metal Panic!	フルメタル・パニック！
72	Full Metal Panic? Fumoffu	Full Metal Panic? Fumoffu	フルメタル・パニック? ふもっふ
73	Full Metal Panic! The Second Raid	Full Metal Panic! The Second Raid	フルメタル パニック！The Second Raid
74	Gakuen Alice	Gakuen Alice	学園アリス
75	Soukyuu no Fafner: Dead Aggressor	Fafner of the Blue Sky	蒼穹のファフナーDead Aggressor
76	Mahou Shoujo Lyrical Nanoha	Magical Girl Lyrical Nanoha	魔法少女リリカルなのは
77	Mahou Shoujo Lyrical Nanoha A's	Magical Girl Lyrical Nanoha A's	魔法少女リリカルなのは エース
79	Shuffle!	Shuffle!	SHUFFLE! (シャッフル!)
80	Mobile Suit Gundam	Mobile Suit Gundam	機動戦士ガンダム
85	Mobile Suit Zeta Gundam	Mobile Suit Zeta Gundam	機動戦士Ζガンダム
86	Mobile Suit Gundam ZZ	Mobile Suit Gundam ZZ	機動戦士ガンダムZZ
89	Mobile Suit Victory Gundam	Mobile Suit V Gundam	機動戦士Vガンダム
90	Mobile Suit Gundam Wing	Mobile Suit Gundam Wing	新機動戦記ガンダムW
92	After War Gundam X	After War Gundam X	機動新世紀ガンダムX
93	Mobile Suit Gundam SEED	Mobile Suit Gundam SEED	機動戦士ガンダムSEED
94	Mobile Suit Gundam SEED Destiny	Unknown	機動戦士ガンダムSEED DESTINY
95	Turn A Gundam	∀ Gundam	∀ガンダム
96	Mobile Fighter G Gundam	Mobile Fighter G Gundam	機動武闘伝Gガンダム
97	Last Exile	Last Exile	LAST EXILE（ラストエグザイル）
98	Mai-HiME	My-Hime	舞-HiME
99	Mai-Otome	My-Otome	舞-乙HiME
100	Shin Shirayuki-hime Densetsu Prétear	Prétear:The New Legend of Snow White	新白雪姫伝説プリーティア
101	Air	Air	AIR
102	Aishiteruze Baby★★	Unknown	愛してるぜ ベイベ★★
103	Akazukin Chacha	Red Riding Hood Chacha	赤ずきんチャチャ
104	Ayashi no Ceres	Ceres, Celestial Legend	妖しのセレス
105	Boys Be...	Boys Be...	ボーイズ・ビー
106	Hana yori Dango	Hana Yori Dango	花より男子
107	Ou Dorobou Jing	Jing:King of Bandits	王ドロボウ JING
109	Bakuretsu Tenshi	Burst Angel	爆裂天使
110	Chuuka Ichiban!	Unknown	中華一番
111	Corrector Yui	Corrector Yui	コレクター・ユイ
112	Chou Henshin Cosprayers	The Cosmopolitan Prayers	超変身コス∞プレイヤー
113	Uchuu no Stellvia	Stellvia	宇宙のステルヴィア
114	Sakigake!! Cromartie Koukou	Cromartie High School	魁!! クロマティ高校
115	El Hazard: The Alternative World	Unknown	異次元の世界エルハザード
116	El Hazard: The Wanderers	El-Hazard:The Wanderers	神秘の世界エルハザード
119	Final Approach	Unknown	φなる・あぷろーち
120	Fruits Basket	Fruits Basket	フルーツバスケット
121	Fullmetal Alchemist	Fullmetal Alchemist	鋼の錬金術師
122	Full Moon wo Sagashite	Searching for the Full Moon	満月をさがして
123	Fushigi Yuugi	Mysterious Play	ふしぎ遊戯
125	Futakoi	Twin Love	双恋
126	Futakoi Alternative	Unknown	フタコイ オルタナティブ
127	Gate Keepers	Unknown	ゲートキーパーズ
129	Gensoumaden Saiyuuki	Saiyuki	幻想魔伝 最遊記
130	Saiyuuki Reload	Saiyuki Reload	最遊記RELOAD
131	Saiyuuki Reload Gunlock	Saiyuki Gunlock	最遊記RELOAD GUNLOCK
132	GetBackers	Getbackers	ゲットバッカーズ　奪還屋
133	Green Green	Green Green	グリーングリーン
134	Gunslinger Girl	Gunslinger Girl	ガンスリンガー・ガール
135	Hikaru no Go	Hikaru no Go	ヒカルの碁
136	Hunter x Hunter	Hunter x Hunter	HUNTER×HUNTER（ハンター×ハンター）
141	Jinki:Extend	Jinki:Extend	ジンキ・エクステンド
142	Kamikaze Kaitou Jeanne	Unknown	神風怪盗ジャンヌ
143	Kannazuki no Miko	Destiny of the Shrine Maiden	神無月の巫女
144	Kanon	Unknown	カノン
145	Kareshi Kanojo no Jijou	His and Her Circumstances	彼氏彼女の事情
146	Kono Minikuku mo Utsukushii Sekai	This Ugly Yet Beautiful World	この醜くも美しい世界
147	Kimi ga Nozomu Eien	Rumbling Hearts	君が望む永遠
148	Kita e.: Diamond Dust Drops	Diamond Daydreams	北へ。 ～Diamond Dust Drops～
149	Loveless	Loveless	LOVELESS
150	Blood+	Blood+	ブラッドプラス
152	Solty Rei	Unknown	ソルティレイ
153	Juuni Kokuki	The Twelve Kingdoms	十二国記
154	Shaman King	Shaman King	シャーマンキング
156	X	X	X−エックス−
157	Mahou Sensei Negima!	Negima!	魔法先生 ネギま！
158	Maria-sama ga Miteru	Maria Watches Over Us	マリア様がみてる
159	Boukyaku no Senritsu	The Melody of Oblivion	忘却の旋律
160	Ima, Soko ni Iru Boku	Now and Then, Here and There	今、そこにいる僕
161	Peace Maker Kurogane	Peace Maker Kurogane	PEACE MAKER 鐵
162	Pita Ten	Pita-Ten	ぴたテン
163	Power Stone	Unknown	パワーストーン
165	RahXephon	RahXephon	ラーゼフォン
166	Samurai 7	Samurai 7	サムライセブン
167	Scrapped Princess	Scrapped Princess	スクラップド・プリンセス
168	s.CRY.ed	s-CRY-ed	スクライド
169	Shingetsutan Tsukihime	Lunar Legend Tsukihime	真月譚 月姫
170	Slam Dunk	Slam Dunk	スラムダンク
171	Strange Dawn	Unknown	ストレンジ・ドーン
173	Tactics	Unknown	タクティクス
174	Tenjou Tenge	Tenjho Tenge	天上天下
175	Tokyo Underground	Tokyo Underground	東京アンダーグラウンド
177	Tsubasa Chronicle	Tsubasa RESERVoir CHRoNiCLE	ツバサ・クロニクル
178	Ultra Maniac	Ultramaniac - Magical Girl	ウルトラマニアック
180	Vandread	Vandread	ヴァンドレッド
181	Vandread: The Second Stage	Unknown	ヴァンドレッド the second stage
182	Tenkuu no Escaflowne	The Vision of Escaflowne	天空のエスカフローネ
183	Whistle!	Unknown	ホイッスル！
184	Xenosaga The Animation	Unknown	ゼノサーガ THE ANIMATION
185	Initial D First Stage	Initial D First Stage	頭文字〈イニシャル〉D
186	Initial D Second Stage	Initial D Second Stage	頭文字〈イニシャル〉D SECOND STAGE
189	Love Hina	Love Hina	ラブひな
193	Maburaho	Maburaho	まぶらほ
195	Onegai☆Teacher	Please Teacher!	おねがい☆ティーチャー
196	Onegai☆Twins	Please Twins	おねがい☆ツインズ
197	Rizelmine	Unknown	りぜるまいん
198	Speed Grapher	Speed Grapher	スピードグラファー
200	Tenshi na Konamaiki	Cheeky Angel	天使な小生意気
202	Wolf's Rain	Wolf's Rain	ウルフズレイン
204	Yumeria	Unknown	ゆめりあ
205	Samurai Champloo	Samurai Champloo	サムライチャンプルー
206	Lodoss-tou Senki: Eiyuu Kishi Den	Record of Lodoss War:Chronicles of the Heroic Knight	ロードス島戦記　英雄騎士伝
209	R.O.D: The TV	R.O.D -The TV-	アール・オー・ディー ザ・ティーヴィー
210	Ranma ½	Ranma ½	らんま1/2
218	Kidou Senkan Nadesico	Martian Successor Nadesico	機動戦艦ナデシコ
222	Mezzo DSA	Unknown	メゾ
223	Dragon Ball	Dragon Ball	ドラゴンボール
225	Dragon Ball GT	Dragon Ball GT	ドラゴンボールGT
226	Elfen Lied	Elfen Lied	エルフェンリート
228	Jigoku Shoujo	Hell Girl	地獄少女
229	Ninin ga Shinobuden	Ninja Nonsense	ニニンがシノブ伝
230	Air Master	Air Master	エアマスター
231	Asagiri no Miko	Shrine of the Morning Mist	朝霧の巫女
232	Cardcaptor Sakura	Cardcaptor Sakura	カードキャプターさくら
233	Daa! Daa! Daa!	Unknown	だぁ! だぁ! だぁ!
234	Dan Doh!!	Unknown	ダンドー
235	Detective Conan	Case Closed	名探偵コナン
236	E's Otherwise	E's Otherwise	エスアザーワイズ
237	Koukyoushihen Eureka Seven	Eureka Seven	交響詩篇エウレカセブン
238	Rekka no Honoo	Flame of Recca	烈火の炎
239	Gankutsuou	Gankutsuou:The Count of Monte Cristo	巌窟王
240	Genshiken	Genshiken	げんしけん
241	Girls Bravo: First Season	Girls Bravo	GIRLSブラボー first season
242	Gokusen	The Gokusen	ごくせん
243	Gravitation	Gravitation	グラビテーション
244	Agatha Christie no Meitantei Poirot to Marple	Agatha Christie's Great Detectives Poirot and Marple	アガサ・クリスティーの名探偵ポワロとマープル
245	Great Teacher Onizuka	Great Teacher Onizuka	グレート・ティーチャー・オニヅカ
246	Groove Adventure Rave	Rave Master	レイヴ
247	Harukanaru Toki no Naka de: Hachiyou Shou	Haruka:Beyond the Stream of Time – A Tale of the Eight Guardians	遙かなる時空の中で〜八葉抄〜
248	Ichigo 100%	Strawberry 100%	いちご100%
249	InuYasha	InuYasha	犬夜叉
534	Slayers	Slayers	スレイヤーズ
250	Konjiki no Gash Bell!!	Zatch Bell!	金色のガッシュベル!!
251	Kyou kara Maou!	King From Now On!	今日からマ王！
252	Madlax	Unknown	マドラックス
253	Jungle wa Itsumo Hare nochi Guu	Haré+Guu	ジャングルはいつもハレのちグゥ
257	Ikkitousen	Ikki Tousen	一騎当千
260	Happy☆Lesson (TV)	Unknown	HAPPY☆LESSON
261	Happy☆Lesson: Advance	Unknown	HAPPY☆LESSON ADVANCE
263	Hajime no Ippo	Fighting Spirit	はじめの一歩 THE FIGHTING!
266	Gunparade March: Arata Naru Kougunka	Gunparade March:A New Song for the March	ガンパレード・マーチ -新たなる行軍歌-
267	Gungrave	Gungrave	ガングレイヴ
269	Bleach	Bleach	BLEACH - ブリーチ -
270	Hellsing	Hellsing	Hellsing [ヘルシング]
271	Gad Guard	Unknown	ガドガード
272	Noir	Noir	ノワール
273	Mahoutsukai ni Taisetsu na Koto	Someday's Dreamers	魔法遣いに大切なこと
274	Kiddy Grade	Kiddy Grade	キディ・グレイド
275	Love♥Love?	Love♥Love?	LOVE♥LOVE?
276	Mahoromatic: Automatic Maiden	Mahoromatic:Automatic Maiden	まほろまてぃっく
277	Mahoromatic: Motto Utsukushii Mono	Mahoromatic ~Something More Beautiful~	まほろまてぃっく  ~もっと美しいもの~
278	Viewtiful Joe	Unknown	ビューティフル ジョー
279	Kyougoku Natsuhiko: Kousetsu Hyaku Monogatari	Requiem from the Darkness	京極夏彦　巷説百物語
280	Animal Yokochou	Animal Lane	アニマル横町
282	Angel Heart	Unknown	エンジェル・ハート
283	Akage no Anne	Anne of Green Gables	赤毛のアン
284	Area 88 (TV)	Unknown	エリア８８
285	Argento Soma	Unknown	アルジェント ソーマ
286	B'T X	Unknown	B`T X　ビート・エックス
287	Grappler Baki (TV)	Unknown	グラップラー刃牙
288	Bakuten Shoot Beyblade	Beyblade	爆転シュート　ベイブレード
289	Comic Party	Comic Party	こみっくパーティー
290	Seikai no Monshou	Crest of the Stars	星界の紋章
291	D.C.S.S: Da Capo Second Season	D.C.S.S. ~Da Capo Second Season~	D.C.S.S. ～ダ・カーポ セカンドシーズン～
292	Dear Boys	Hoop Days	ディア・ボーイズ
293	Di Gi Charat	Unknown	デ・ジ･キャラット
294	Divergence Eve	Unknown	ダイバージェンス・イヴ
295	Divergence Eve 2: Misaki Chronicles	Misaki Chronicle:Divergence Eve	みさきクロニクル 〜ダイバージェンス・イヴ〜
296	Dragon Drive	Dragon Drive	ドラゴンドライブ
297	Grenadier: Hohoemi no Senshi	Grenadier:The Beautiful Warrior	グレネーダー 〜ほほえみの閃士〜
298	.hack//Tasogare no Udewa Densetsu	.hack//Legend Of The Twilight	.hack//黄昏の腕輪伝説
301	Cinderella Boy	Unknown	シンデレラボーイ
302	Mirai Shounen Conan	Future Boy Conan	未来少年コナン
303	Aa! Megami-sama!: Chichaitte Koto wa Benri da ne	Oh! My Goddess:The Adventures of Mini-Goddess	ああっ女神さまっ 小っちゃいって事は便利だねっ
306	Abenobashi Mahou☆Shoutengai	Magical☆Shopping Arcade Abenobashi	アベノ橋魔法☆商店街
307	Kerokko Demetan	Adventures On Rainbow Pond	けろっこデメタン
308	Zettai Shounen	Unknown	絶対少年
309	Akahori Gedou Hour Rabuge	Akahori's Heretical Hour Love Game	あかほり外道アワーらぶげ
310	Chiisana Obake: Acchi, Kocchi, Socchi	Three Little Ghosts	小さなおばけ アッチ・ソッチ・コッチ
311	Ace wo Nerae!	Unknown	エースをねらえ!
318	Hand Maid May	Unknown	HAND MAID メイ
321	Najica Dengeki Sakusen	Najica Blitz Tactics	ナジカ電撃作戦
322	Paradise Kiss	Paradise Kiss	Paradise kiss
323	Mousou Dairinin	Paranoia Agent	妄想代理人
324	Kidou Keisatsu Patlabor: On Television	Patlabor:The Mobile Police - The TV Series	機動警察パトレイバー ON TELEVISION
325	Peach Girl	Peach Girl:Super Pop Love Hurricane	ピーチガール
326	Petshop of Horrors	Pet Shop of Horrors	Pet Shop of Horrors (ペットショップ・オブ・ホラーズ)
327	Puchi Pri*Yucie	Petite Princess Yucie	ぷちぷり＊ユーシィ
328	Piano (TV)	Piano:The Melody of a Young Girl's Heart	PIANO
329	Planetes	Planetes	プラネテス
330	Midori no Hibi	Midori Days	美鳥の日々
331	Mahoujin Guruguru	Magical Circle Guru Guru	魔法陣グルグル
332	Dokidoki♡Densetsu: Mahoujin Guruguru	Magical Circle Guru Guru 2	ドキドキ♡伝説 魔法陣グルグル
333	Mama wa Shougaku 4 Nensei	Mama is Just a Fourth Grade Pupil	ママは小学４年生
334	Marmalade Boy	Marmalade Boy	ママレード・ボーイ
335	Matantei Loki Ragnarok	Mythical Detective Loki Ragnarok	魔探偵ロキ RAGNAROK
336	Ginyuu Mokushiroku Meine Liebe	Unknown	吟遊黙示録 マイネリーベ
337	Psychic Academy	Psychic Academy	サイキックアカデミー煌羅万象
338	Versailles no Bara	The Rose of Versailles	ベルサイユのばら
339	Serial Experiments Lain	Serial Experiments Lain	シリアルエクスペリメンツレイン
340	Mutsu Enmei Ryuu Gaiden: Shura no Toki	Time of Shura	陸奥圓明流外伝 修羅の刻
341	Spiral: Suiri no Kizuna	Spiral:Bond of Reasoning	スパイラル -推理の絆-
342	Starship Operators	Unknown	スターシップ・オペレーターズ
343	Tsukuyomi: Moon Phase	Tsukuyomi:Moon Phase	月詠 −MOON PHASE−
344	Futatsu no Spica	Twin Spica	ふたつのスピカ
345	Eikoku Koi Monogatari Emma	Emma:A Victorian Romance	英國戀物語エマ
346	W: Wish	Double Wish	W 〜ウィッシュ〜
347	Wild Arms: Twilight Venom	Wild Arms	ワイルドアームズ トワイライトヴェノム
348	Binzume Yousei	Bottle Fairy	瓶詰妖精
349	Magical Canan	Magical Kanan	まじかるカナン
350	Ojamajo Doremi	Magical DoReMi	おジャ魔女どれみ
1818	Claymore	Claymore	クレイモア
351	Ojamajo Doremi Sharp	Unknown	おジャ魔女どれみ＃
352	Motto! Ojamajo Doremi	More! Useless Witch Doremi	も〜っと！おジャ魔女どれみ
353	Ojamajo Doremi Dokkaan!	Useless Witch Doremi Kaboom!	おジャ魔女どれみドッカ〜ン！
354	UG☆Ultimate Girls	Ultimate Girls	UG☆アルティメットガール
355	Shakugan no Shana	Shakugan no Shana:Season I	灼眼のシャナ
356	Fate/stay night	Fate/stay night	Fate/stay night
360	Himiko-den	Legend of Himiko	火魅子伝
364	Gallery Fake	Unknown	ギャラリーフェイク
369	Boogiepop wa Warawanai	Boogiepop Phantom	ブギーポップは笑わない Boogiepop Phantom
370	Burn Up Excess	Burn Up Excess	バーンナップEXCESS
375	Bannou Bunka Neko-Musume (1998)	All Purpose Cultural Cat Girl Nuku Nuku TV	万能文化猫娘
379	Heppoko Jikken Animation Excel♥Saga	Excel Saga	へっぽこ実験アニメーション エクセル♥サーガ
383	Galaxy Angel	Unknown	ギャラクシーエンジェル
384	Gantz	Gantz	ガンツ
385	Gilgamesh	Gilgamesh	ギルガメッシュ
386	H2	Unknown	Ｈ２[エイチ・ツー]
387	Haibane Renmei	Haibane Renmei	灰羽連盟
388	Capeta	Unknown	カペタ
390	Suzuka	Suzuka	涼風
392	Yuu☆Yuu☆Hakusho	Yu Yu Hakusho:Ghost Files	幽☆遊☆白書
394	Ai Yori Aoshi: Enishi	Ai Yori Aoshi:Enishi	藍より青し～縁～
395	Gantz 2nd Stage	Gantz:Second Stage	ガンツ
396	Seikai no Senki	Banner of the Stars	星界の戦旗
397	Seikai no Senki II	Banner of the Stars II	星界の戦旗 II
400	Seihou Bukyou Outlaw Star	Outlaw Star	星方武侠アウトロースター
403	Hanaukyou Maid-tai	Unknown	花右京メイド隊
406	Buzzer Beater	Unknown	BUZZER BEATER
407	Tantei Gakuen Q	Detective School Q	探偵学園Q
411	Gun x Sword	Gun x Sword	ガン×ソード
412	Kore ga Watashi no Goshujinsama	He is My Master	これが私の御主人様
417	Ragnarök The Animation	Ragnarok the Animation	RAGNARÖK THE ANIMATION
419	Samurai Deeper Kyou	Samurai Deeper Kyo	SAMURAI DEEPER KYO
421	Stratos 4	Unknown	ストラトス・フォー
424	Dirty Pair	Dirty Pair	ダーティペア
427	Kaleido Star	Kaleido Star	カレイドスター
435	Magic Knight Rayearth	Magic Knight Rayearth	魔法騎士（マジックナイト）レイアース
440	Shoujo Kakumei Utena	Revolutionary Girl Utena	少女革命ウテナ
444	Maria-sama ga Miteru: Haru	Maria Watches Over Us:Printemps	マリア様がみてる～春～
445	Tales of Eternia The Animation	Tales of Eternia	テイルズ オブ エターニア THE ANIMATION
446	Weiß Kreuz Glühen	Knight Hunters Eternity	ヴァイスクロイツ・グリーエン
447	Weiß Kreuz	Knight Hunters	Weiß kreuz　ヴァイス　クロイツ
455	Fantastic Children	Fantastic Children	ファンタジックチルドレン
456	Gokujou Seitokai	Best Student Council	極上生徒会
457	Mushishi	Mushi-Shi	蟲師
467	Koukaku Kidoutai: Stand Alone Complex	Ghost in the Shell:Stand Alone Complex	攻殻機動隊 STAND ALONE COMPLEX
469	Karin	Karin	かりん
470	Okusama wa Joshikousei (TV)	My Wife is a High School Girl	おくさまは女子高生
471	To Heart 2	To Heart 2	トゥハート2
472	To Heart	To Heart	トゥハート
473	Tide-Line Blue	Unknown	タイドライン・ブルー
476	Ginban Kaleidoscope	Skating Rink Kaleidoscope	銀盤カレイドスコープ
477	Aria the Animation	Aria the Animation	ARIA The ANIMATION
478	Sousei no Aquarion	Aquarion	創聖のアクエリオン
479	Ueki no Housoku	The Law of Ueki	うえきの法則
481	Yu☆Gi☆Oh! Duel Monsters	Yu-Gi-Oh!	遊☆戯☆王　デュエルモンスターズ
482	Yu☆Gi☆Oh!: Duel Monsters GX	Yu-Gi-Oh! GX	遊☆戯☆王　デュエルモンスターズ GX
483	Kurau Phantom Memory	Unknown	クラウ ファントムメモリー
485	Damekko Doubutsu	Unknown	だめっこどうぶつ
486	Kino no Tabi: The Beautiful World	Kino's Journey	キノの旅 -the Beautiful World-
487	Girls Bravo: Second Season	Girls Bravo:Second Season	GIRLSブラボー second season
488	Ichigo Mashimaro	Strawberry Marshmallow	苺ましまろ
489	Kamichu!	Kamichu!	かみちゅ!
490	Paniponi Dash!	Pani Poni Dash!	ぱにぽにだっしゅ！
495	Bakuretsu Hunters	Sorcerer Hunters	爆れつハンター
497	Yami to Boushi to Hon no Tabibito	Yamibo:Darkness, The Hat and the Travelers of the Books	ヤミと帽子と本の旅人
501	Doraemon	Unknown	ドラえもん
505	Fushigiboshi no☆Futagohime	Unknown	ふしぎ星の☆ふたご姫
506	Glass no Kamen	Unknown	ガラスの仮面
508	Tottoko Hamtarou	Hamtaro	とっとこハム太郎
509	I My Me! Strawberry Eggs	I My Me! Strawberry Eggs	あぃまぃみぃ！ストロベリー・エッグ
510	Kakyuusei 2: Hitomi no Naka no Shoujo-tachi	Kakyusei 2	下級生２ ～瞳の中の少女たち～
511	Kidou Shinsengumi Moeyo Ken TV	Moeyo Ken TV	機動新撰組 萌えよ剣 TV
516	Keroro Gunsou	Sgt. Frog	ケロロ軍曹
518	Mahou no Princess Minky Momo	Magical Princess Minky Momo	魔法のプリンセス　ミンキーモモ
519	Mahoraba: Heartful days	Unknown	まほらば ~Heartful days~
521	Mermaid Melody Pichi Pichi Pitch	Mermaid Melody:Pichi Pichi Pitch	マーメイドメロディー ぴちぴちピッチ
525	Otogizoushi	Otogi Zoshi:The Legend of Magatama	お伽草子
527	Pokemon	Pokémon	ポケットモンスター
529	Saishuu Heiki Kanojo	She, The Ultimate Weapon	最終兵器彼女
530	Bishoujo Senshi Sailor Moon	Sailor Moon	美少女戦士セーラームーン
532	Bishoujo Senshi Sailor Moon S	Sailor Moon S	美少女戦士セーラームーン S
533	Sensei no Ojikan: Doki Doki School Hours	Teacher's Time	せんせいのお時間
535	Slayers Next	Slayers Next	スレイヤーズNEXT
538	Shin Tenchi Muyou!	Tenchi in Tokyo	新・天地無用!
545	Mousou Kagaku Series: Wandaba Style	Mousou Kagaku Series:Wandaba Style	妄想科学シリーズ ワンダバスタイル
546	Wind: A Breath of Heart (TV)	Unknown	Wind -a breath of heart-
550	Yu☆Gi☆Oh!	Unknown	遊☆戯☆王
551	Grappler Baki: Saidai Tournament-hen	Unknown	グラップラー刃牙(バキ) 最大トーナメント編
552	Digimon Adventure	Digimon:Digital Monsters	デジモンアドベンチャー
553	Yami no Matsuei	Descendants of Darkness	闇の末裔
554	Koutetsu Tenshi Kurumi	Steel Angel Kurumi	鋼鉄天使くるみ
555	Koutetsu Tenshi Kurumi 2	Steel Angel Kurumi 2	鋼鉄天使くるみ2式
558	Major S2	Unknown	メジャー  (第2シリーズ)
561	Sakura Taisen	Sakura Wars	サクラ大戦
563	DNA²	DNA²	Ｄ・Ｎ・Ａ²　～何処かで失くしたあいつのアイツ～
567	The Big O	The Big O	THEビッグオー
568	Bubblegum Crisis Tokyo 2040	Unknown	バブルガムクライシス TOKYO2040
569	Musekinin Kanchou Tylor	The Irresponsible Captain Tylor	無責任艦長タイラー
573	Saber Marionette J	Saber Marionette J	セイバーマリオネットJ
576	Magikano	Unknown	マジカノ
577	Kagi Hime Monogatari: Eikyuu Alice Rondo	Eternal Alice	鍵姫物語 永久アリス輪舞曲
579	Battle Programmer Shirase	Unknown	バトルプログラマーシラセ
580	Kogepan	Scorched Bread	こげぱん
582	Sexy Commando Gaiden: Sugoi yo!! Masaru-san	Unknown	セクシーコマンドー外伝 すごいよ!! マサルさん
584	Noein: Mou Hitori no Kimi e	Noein:to your other self	ノエイン もうひとりの君へ
586	Ayakashi: Japanese Classic Horror	Unknown	怪～ayakashi～ Japanese Classic Horror
587	Hanbun no Tsuki ga Noboru Sora	Looking Up At The Half-Moon	半分の月がのぼる空
589	Ginga Nagareboshi Gin	Unknown	銀牙　流れ星銀
590	Kage kara Mamoru!	Guardian Ninja Mamoru	陰からマモル！
591	Amaenaide yo!!	Ah My Buddha	あまえないでよっ!!
592	PopoloCrois	Unknown	ポポロクロイス
593	Mugen no Ryvius	Infinite Ryvius	無限のリヴァイアス
598	Jinzou Ningen Kikaider The Animation	Android Kikaider	人造人間キカイダーTHE ANIMATION
600	Legend of Duo	Unknown	LEGEND OF DUO
603	Futari wa Precure	Pretty Cure	ふたりはプリキュア
604	Mahou no Stage Fancy Lala	Magical Stage Fancy Lala	魔法のステージ・ファンシーララ
605	Tenshi ni Narumon!	I'm Gonna Be an Angel!	天使になるもんっ！
606	Kazemakase Tsukikage Ran	Carried by the Wind:Tsukikage Ran	風まかせ月影蘭
607	Otogi Juushi Akazukin	Fairy Musketeers	おとぎ銃士 赤ずきん
610	Popotan	Unknown	ぽぽたん
611	Platonic Chain	Unknown	プラトニック・チェーン
612	PetoPeto-san	Unknown	ぺとぺとさん
613	Onmyou Taisenki	Unknown	陰陽大戦記
614	Okusama wa Mahou Shoujo	Madam is a Magical Girl	奥さまは魔法少女
616	Nurse Angel Ririka SOS	Unknown	ナースエンジェルりりかＳＯＳ
618	Juubee Ninpuuchou: Ryuuhougyoku-hen	Ninja Scroll:The Series	獣兵衛忍風帖「龍宝玉篇」
620	Takahashi Rumiko Gekijou Ningyo no Mori	Mermaid Forest	高橋留美子劇場 人魚の森
621	Night Walker: Mayonaka no Tantei	Nightwalker:The Midnight Detective	Night Walker -真夜中の探偵-
623	Shichinin no Nana	Unknown	七人のナナ
624	Mouse	Unknown	マウス
626	Mamotte Shugogetten!	Protect Me, Heavenly Moon Guardian!	まもって守護月天！
627	Major S1	Unknown	メジャー （第1シリーズ）
630	Mahoutsukai Tai! (TV)	Magic User's Club	魔法使いTai!
633	Legend of Basara	Unknown	LEGEND OF BASARA
634	Koi Kaze	Unknown	恋風
635	Juubee-chan: Lovely Gantai no Himitsu	Jubei-chan the Ninja Girl:Secret of the Lovely Eyepatch	十兵衛ちゃん ーラブリー眼帯の秘密
636	Juubee-chan 2: Siberia Yagyuu no Gyakushuu	Jubei-chan 2:The Counterattack of Siberia Yagyu	十兵衛ちゃん2 ～シベリア柳生の逆襲～
637	Iketeru Futari	Unknown	イケてる２人
646	Haunted Junction	Unknown	HAUNTED じゃんくしょん
648	Tsuki wa Higashi ni Hi wa Nishi ni: Operation Sanctuary	Unknown	月は東に日は西に〜Operation Sanctuary〜
649	Hanaukyou Maid-tai: La Verite	Hanaukyo Maid Team:La Verite	花右京メイド隊 La Verite
652	Galaxy Angel Z	Unknown	ギャラクシーエンジェルＺ
653	Galaxy Angel 3	Unknown	ギャラクシーエンジェルＡＡ
655	Galaxy Angel 4	Unknown	ギャラクシーエンジェル4
658	Touhai Densetsu Akagi: Yami ni Maiorita Tensai	Unknown	闘牌伝説アカギ　闇に舞い降りた天才
667	Kashimashi: Girl Meets Girl	Girl Meets Girl	かしまし〜ガール・ミーツ・ガール〜
668	Koi Koi 7	Koi Koi Seven	こいこい7
670	Lamune	Unknown	ラムネ
671	Lemon Angel Project	Unknown	レモン エンジェル プロジェクト
677	Sentimental Journey	Unknown	センチメンタルジャーニー
678	Shadow Skill: Eigi	Unknown	影技 SHADOW SKILL
682	Otogi Story Tenshi no Shippo	Angel Tales	おとぎストーリー　天使のしっぽ
684	Tenshi no Shippo Chu!	Unknown	天使のしっぽＣｈｕ！
685	To Heart: Remember My Memories	Unknown	トゥハート ~remember my memories~
687	Tokyo Mew Mew	Mew Mew Power	東京ミュウミュウ
688	Uta∽Kata	Utakata	うた∽かた
690	Kyuuketsuhime Miyu (TV)	Vampire Princess Miyu	吸血姫美夕
691	Yawara!	Unknown	YAWARA!
693	Burn Up Scramble	Unknown	バーンナップスクランブル
694	Canvas 2: Niji-iro no Sketch	Canvas 2:Rainbow Colored Sketch	Canvas2 ～虹色のスケッチ～
696	Tenchi Muyou!	Unknown	天地無用！
1823	Shin Hakkenden	Unknown	神八剣伝
706	Comic Party Revolution	Unknown	こみっくパーティー Revolution
708	Patapata Hikousen no Bouken	Unknown	パタパタ飛行船の冒険
709	Mujin Wakusei Survive	Unknown	無人惑星サヴァイヴ
710	Rec	Unknown	レック
712	Zoids Genesis	Zoids Genesis	ゾイド ジェネシス
714	High School! Kimengumi	Funny Faces in High School	ハイスクール！奇面組
718	Yume de Aetara (TV)	If I See You in My Dreams	夢で逢えたら
721	Princess Tutu	Princess Tutu	プリンセスチュチュ
727	Kingyo Chuuihou!	Goldfish Warning!	きんぎょ注意報！
729	Hiatari Ryoukou!	Sunny Ryoko	陽あたり良好！
738	MÄR	Unknown	メル
740	Bishoujo Senshi Sailor Moon R	Sailor Moon R	美少女戦士セーラームーン R
744	Trouble Chocolate	Unknown	トラブルチョコレート
749	Nanami-chan	Unknown	ななみちゃん
750	Binchou-tan	Unknown	びんちょうタン
751	Bomberman Jetters	Unknown	ボンバーマン ジェッターズ
754	Yuki no Joou (TV)	The Snow Queen	雪の女王
763	Zoids	Zoids	ゾイド
764	Zoids Shinseiki/Zero	Zoids:New Century	ゾイド新世紀／ゼロ
771	Ginyuu Mokushiroku Meine Liebe Wieder	Unknown	吟遊黙示録マイネリーベ ヴィーダー
776	Nanaka 6/17	Unknown	ななか６／１７
782	Gasaraki	Gasaraki	ガサラキ
783	Miami Guns	Unknown	マイアミ☆ガンズ
786	Pugyuru	Unknown	ぷぎゅる
789	Shinigami no Ballad.	Momo, Girl God of Death	しにがみのバラッド。
790	Ergo Proxy	Ergo Proxy	エルゴプラクシー
795	Oniisama e...	Brother, Dear Brother	おにいさまへ…
798	Yomigaeru Sora: Rescue Wings	Unknown	よみがえる空 -Rescue Wings-
799	Kokoro Toshokan	Unknown	ココロ図書館
800	NieA Under 7	Unknown	ニア アンダーセブン
801	Koukaku Kidoutai: Stand Alone Complex 2nd GIG	Ghost in the Shell:Stand Alone Complex 2nd GIG	攻殻機動隊 S.A.C. 2nd GIG
810	Android Ana Maico 2010	Android Announcer Maico 2010	アンドロイド・アナ　MAICO ２０１０
812	Chikyuu Shoujo Arjuna	Arjuna	地球少女アルジュナ
813	Dragon Ball Z	Dragon Ball Z	ドラゴンボールZ
817	Tactical Roar	Unknown	タクティカルロア
831	Chicchana Yukitsukai Sugar	A Little Snow Fairy Sugar	ちっちゃな雪使いシュガー
832	Ginsoukikou Ordian	Unknown	銀装騎攻オーディアン
833	Choujuushin Gravion	Super Heavy God Gravion	超重神グラヴィオン
835	Sister Princess: Re Pure	Unknown	シスター・プリンセス ～リピュア～
836	Sister Princess	Unknown	シスター・プリンセス
838	Narutaru: Mukuro Naru Hoshi Tama Taru Ko	Shadow Star Narutaru	なるたる ～骸なる星・珠たる子～
840	Narue no Sekai	The World of Narue	成恵の世界
841	Colorful	Colorful	カラフル
845	Kiba	Kiba	牙-KIBA-
846	School Rumble Ni Gakki	School Rumble 2nd Semester	スクールランブル 二学期
849	Suzumiya Haruhi no Yuuutsu	The Melancholy of Haruhi Suzumiya	涼宮ハルヒの憂鬱
850	Gakuen Heaven	Gakuen Heaven	学園ヘヴン
852	Gokinjo Monogatari	Neighborhood Stories	ご近所物語
853	Ouran Koukou Host Club	Ouran High School Host Club	桜蘭高校ホスト部
854	Soul Link	Unknown	Soul Link
855	Strawberry Panic	Strawberry Panic	ストロベリー・パニック
856	Utawarerumono	Utawarerumono	うたわれるもの
857	Air Gear	Air Gear	エア・ギア
858	Gunparade Orchestra	Gunparade Orchestra	ガンパレード・オーケストラ
859	Digimon Savers	Digimon Data Squad	デジモンセイバーズ
860	Makai Senki Disgaea	Disgaea	魔界戦記ディスガイア
861	xxxHOLiC	xxxHOLiC	×××HOLiC（ホリック）
863	Joshikousei: Girl's High	High School Girls	女子高生 GIRL'S HIGH
865	Kikou Senki Dragonar	Metal Armor Dragonar	機甲戦記ドラグナー
872	Mahou Shoujo-tai Arusu	Tweeny Witches	魔法少女隊アルス
873	.hack//Roots	.hack//roots	.hack//Roots
874	Digimon Tamers	Digimon Tamers	デジモンテイマーズ
876	Street Fighter II V	Street Fighter II:The Animated Series	ストリートファイターII V
877	Nana	Nana	NANA [ナナ]
878	Zegapain	Zegapain	ゼーガペイン
879	Simoun	Unknown	シムーン
880	Aa! Megami-sama!: Sorezore no Tsubasa	Ah! My Goddess:Flights of Fancy	ああっ女神さまっ　それぞれの翼
886	Amaenaide yo!! Katsu!!	Ah My Buddha Katsu	あまえないでよっ!! 喝!!
888	Megami Kouhosei	Unknown	女神候補生
889	Black Lagoon	Black Lagoon	BLACK LAGOON
890	Yuusha-Ou GaoGaiGar	King of Braves GaoGaiGar	勇者王ガオガイガー
907	Princess Princess	Princess Princess	プリンセス・プリンセス
909	Geneshaft	Unknown	ジーンシャフト
910	Himawari!	Himawari!	ひまわりっ!
912	Ninkuu	Unknown	忍空
913	Kakutou Bijin Wulong	Fighting Beauty Wulong	格闘美神 武龍
914	Ike! Ina-chuu Takkyuubu	The Ping-Pong Club	行け! 稲中卓球部
915	Ginga Densetsu Weed	Unknown	銀牙伝説ウィード
916	Tokkou	Tokko	TOKKÔ[特公]
918	Gintama	Gintama	銀魂
919	Ray The Animation	Ray The Animation	RAY THE ANIMATION
924	Transformers: Choujin Master Force	Transformers Super-God Masterforce	トランスフォーマー・超神マスターフォース
925	Transformers: The☆Headmasters	Transformers The Headmasters	トランスフォーマー ザ☆ヘッドマスターズ
926	Tatakae! Chou Robot Seimeitai Transformers Victory	Transformers Victory	戦え! 超ロボット生命体トランスフォーマーV[ビクトリー]
927	Transformers Superlink	Transformers Energon	トランスフォーマー スーパーリンク
928	Transformers Galaxy Force	Transformers Cybertron	トランスフォーマー ギャラクシーフォース
929	Seisenshi Dunbine	Aura Battler Dunbine	聖戦士ダンバイン
930	Densetsu Kyojin Ideon	Space Runaway Ideon	伝説巨神イデオン
934	Higurashi no Naku Koro ni	When They Cry	ひぐらしのなく頃に
935	Witchblade	Witchblade	ウィッチブレイド
940	Inukami!	Unknown	いぬかみっ!
941	Renkin San-kyuu Magical? Pokaan	Unknown	錬金3級 まじかる?ぽか〜ん
942	Nishi no Yoki Majo: Astraea Testament	The Good Witch Of The West	西の善き魔女 Astraea Testament
943	Yume Tsukai	Unknown	夢使い
944	The Third: Aoi Hitomi no Shoujo	Unknown	ザ・サード 蒼い瞳の少女
951	Chibi Maruko-chan	Unknown	ちびまる子ちゃん
952	Magical Nyan Nyan Taruto	Magical Meow Meow Taruto	魔法少女猫[まじかる にゃん にゃん]たると
953	Jyu Oh Sei	Jyu-Oh-Sei:Planet of the Beast King	獣王星
956	Daikuu Maryuu Gaiking	Dino Mech Gaiking	大空魔竜ガイキング
957	Saiunkoku Monogatari	The Story of Saiunkoku	彩雲国物語
958	HeatGuy J	HeatGuy J	ヒートガイジェイ
959	Shin Chou Kyou Ryo: Condor Hero	The Legend of Condor Hero	神鵰侠侶 コンドルヒーロー
960	Shin Chou Kyou Ryo: Condor Hero II	Legend of the Condor Hero II	神鵰俠侶 II 襄陽風雲
961	Virtua Fighter	Unknown	バーチャファイター
962	Aria the Natural	Aria the Natural	ARIA The NATURAL
964	Hit wo Nerae!	Unknown	ヒットをねらえ!
965	Yoshinaga-sanchi no Gargoyle	Gargoyle of Yoshinaga House	吉永さん家のガーゴイル
966	Crayon Shin-chan	Shin Chan	クレヨンしんちゃん
967	Hokuto no Ken	Fist of the North Star	北斗の拳
968	Kakutou Bijin Wulong: Rebirth	Fighting Beauty Wulong Rebirth	格闘美神 武龍[ウーロン] REBIRTH
969	Tsubasa Chronicle 2nd Season	Tsubasa RESERVoir CHRoNiCLE Season Two	ツバサ・クロニクル 第2シリーズ
970	Yokoyama Mitsuteru Sangokushi	Unknown	横山光輝 三国志
971	Astro Boy: Tetsuwan Atom	Astro Boy (2003)	アストロボーイ・鉄腕アトム
973	Glass no Kantai: La Legende du Vent de l'Univers	Glass Fleet:The Legend of the Wind of the Universe	ガラスの艦隊～La legende du vent de l'univers～
980	Rikujou Bouei-tai Mao-chan	Ground Defense Force! Mao-chan	陸上防衛隊まおちゃん
988	Shinshaku Sengoku Eiyuu Densetsu: Sanada Juu Yuushi The Animation	Unknown	新釈 戦国英雄伝説 眞田十勇士 The Animation
990	Kamisama Kazoku	Unknown	神様家族
992	Dual! Parallel Lun-Lun Monogatari	Dual! Parallel Trouble Adventure	デュアル！ぱられルンルン物語
996	Bishoujo Senshi Sailor Moon: Sailor Stars	Sailor Moon Sailor Stars	美少女戦士セーラームーン セーラースターズ
998	Blue Seed	Blue Seed	ブルーシード
1000	Uchuu Kaizoku Captain Herlock	Space Pirate Captain Harlock	宇宙海賊・キャプテンハーロック
1005	Star Ocean EX	Star Ocean EX	スターオーシャンEX
1013	Le Chevalier D'Eon	Unknown	シュヴァリエ Le Chevalier D'Eon
1017	Majutsushi Orphen	Orphen	魔術士オーフェン
1018	Majutsushi Orphen: Revenge	Orphen 2:Revenge	魔術士オーフェンRevenge
1019	Honoo no Mirage	Mirage of Blaze	炎の蜃気楼 [ミラージュ]
1021	Kaikan Phrase	Unknown	快感 フレーズ
1022	Generator Gawl	Unknown	ジェネレイターガウル
1025	Kachou Ouji	Legend of Black Heaven	課長王子
1035	Patalliro Saiyuuki!	Unknown	パタリロ西遊記！
1037	Saint Beast: Seijuu Kourin-hen	Unknown	セイント・ビースト～聖獣降臨編～
1040	Mizuiro Jidai	Unknown	水色時代
1045	Elf wo Karu Mono-tachi	Those Who Hunt Elves	エルフを狩るモノたち
1046	Elf wo Karu Mono-tachi II	Those Who Hunt Elves II	エルフを狩るモノたち II
1048	The SoulTaker: Tamashii-gari	SoulTaker	The SoulTaker～魂狩～
1050	Bobobo-bo Bo-bobo	Bobobo-bo Bo-bobo	ボボボーボ・ボーボボ
1057	Ippatsu Kiki Musume	Unknown	イッパツ危機娘
1060	Oruchuban Ebichu	Unknown	おるちゅばんエビちゅ
1062	Nekojiru Gekijou Jirujiru Original	Unknown	ねこぢる劇場 ぢるぢるORIGINAL
1065	Touch	Unknown	タッチ
1067	Kishin Houkou Demonbane (TV)	Unknown	機神咆吼デモンベイン
1068	Chou Denji Robo Combattler V	Unknown	超電磁ロボ コンバトラーＶ
1069	Chou Denji Machine Voltes V	Unknown	超電磁マシーン ボルテスV
1070	Love Get Chu	Unknown	ラブゲッCHU ～ミラクル声優白書～
1082	Hikari to Mizu no Daphne	Daphne in the Brilliant Blue	光と水のダフネ
1083	Human Crossing	Human Crossing	人間交差点
1086	Kenran Butou Sai: The Mars Daybreak	Mars Daybreak	絢爛舞踏祭ザ･マーズ･デイブレイク
1087	Kimagure Orange☆Road	Unknown	きまぐれオレンジ☆ロード
1088	Macross	Macross	超時空要塞マクロス
1093	Oishinbo	Unknown	美味しんぼ
1097	Lime-iro Senkitan	Unknown	らいむいろ戦奇譚
1098	Samurai Girl Real Bout High School	Samurai Girl Real Bout High School	SAMURAI GIRL　リアルバウトハイスクール
1103	Shinkon Gattai Godannar!!	Marriage of God & Soul Godannar!!	神魂合体ゴーダンナー！！
1104	Shinkon Gattai Godannar!! 2nd Season	Unknown	神魂合体ゴーダンナー!! SECOND SEASON
1108	Senkaiden Houshin Engi	Soul Hunter	仙界伝 封神演義
1110	Mermaid Melody Pichi Pichi Pitch Pure	Unknown	マーメイドメロディーぴちぴちピッチピュア
1123	Bouken Ou Beet Excellion	Beet the Vandel Buster Excellion	冒険王ビィト エクセリオン
1126	Figure 17: Tsubasa & Hikaru	Unknown	フィギュア17 つばさ&ヒカル
1127	UFO Princess Valkyrie	UFO Ultramaiden Valkyrie	円盤皇女ワるきゅーレ
1128	UFO Princess Valkyrie 2: Juunigatsu no Yasoukyoku	UFO Ultramaiden Valkyrie 2:December Nocturne	円盤皇女ワるきゅーレ 十二月の夜想曲
1132	Digimon Frontier	Digimon Frontier	デジモンフロンティア
1133	Tenchi Muyou! GXP	Unknown	天地無用! GXP
1136	Betterman	Unknown	ベターマン
1137	Mushrambo	Shinzo	マシュランボー
1138	Medarot	Medabots	メダロット
1139	Monkey Magic	Unknown	モンキーマジック
1142	Hachimitsu to Clover II	Honey and Clover II	ハチミツとクローバー II
1145	Kaze no Youjinbou	Kaze no Yojimbo	旋風の用心棒
1149	Choujuushin Gravion Zwei	Super Heavy God Gravion Zwei	超重神グラヴィオンツヴァイ
1156	I: Wish You Were Here	Zaion:I Wish You Were Here	i -wish you were here- ～あなたがここにいてほしい～
1157	Final Fantasy: Unlimited	Unknown	ファイナルファンタジー：アンリミテッド
1161	Maze☆Bakunetsu Jikuu (TV)	Maze:The Mega-Burst Space	MAZE☆爆熱時空
1163	Neo Ranga	Unknown	南海奇皇ネオランガ
1164	Mahou Senshi Louie	Rune Soldier	魔法戦士リウイ
1167	Samurai Gun	Unknown	サムライガン
1172	Slayers Try	Unknown	スレイヤーズ TRY
1175	Metal Fighter Miku	Metal Fighter Miku	メタルファイター・MIKU
1179	Gakuen Senki Muryou	Shingu:Secret of the Stellar Wars	学園戦記ムリョウ
1180	Hyper Police	Unknown	はいぱーぽりす
1184	Lost Universe	Unknown	ロスト・ユニバース
1186	Battle Athletess Daiundoukai (TV)	Battle Athletes Victory	バトルアスリーテス大運動会
1188	Momoiro Sisters	Unknown	ももいろシスターズ
1189	Eden's Bowy	Unknown	エデンズ　ボゥイ
1193	Happy Seven: The TV Manga	Unknown	はっぴぃセブン ～ざ・テレビまんが～
1194	Coyote Ragtime Show	Unknown	コヨーテ ラグタイムショー
1195	Zero no Tsukaima	The Familiar of Zero	ゼロの使い魔
1196	Masuda Kousuke Gekijou Gag Manga Biyori	Unknown	増田こうすけ劇場 ギャグマンガ日和
1198	Tsuyokiss	Unknown	つよきす
1199	Nintama Rantarou	Unknown	忍たま乱太郎
1200	Gun-dou Musashi	Gun Samurai	GUN道 MUSASHI
1210	NHK ni Youkoso!	Welcome to the N.H.K.	N・H・Kにようこそ！
1212	Oban Star-Racers	Unknown	オーバン・スターレーサーズ
1214	Binbou Shimai Monogatari	Unknown	貧乏姉妹物語
1218	Tonagura!	Unknown	となグラ！
1219	Chocotto Sister	Unknown	ちょこッとSister
1221	Demashita! Powerpuff Girls Z	Powerpuff Girls Z	出ましたっ！パワパフガールズZ
1222	Bokura ga Ita	Unknown	僕等がいた
1224	Aquarian Age: Sign for Evolution	Aquarian Age:Sign for Evolution	アクエリアンエイジ Sign for Evolution
1226	Seihou Tenshi Angel Links	Angel Links	星方天使エンジェルリンクス
1230	Innocent Venus	Unknown	イノセント・ヴィーナス
1231	Saber Marionette J to X	Unknown	セイバーマリオネットJ to X
1236	SF Saiyuuki Starzinger	Spaceketeers	ＳＦ西遊記 スタージンガー
1239	Bishoujo Senshi Sailor Moon SuperS	Sailor Moon SuperS	美少女戦士セーラームーン Super S
1243	Night Head Genesis	Unknown	NIGHT HEAD GENESIS (ナイト ヘッド ジェネシス)
1246	Yuugo: Koushounin	Yugo The Negotiator	勇午 ～交渉人～
1247	Project BLUE Chikyuu SOS	Project Blue Earth SOS	Project BLUE 地球SOS
1249	Zone of the Enders: Dolores, I	Zone of the Enders:Dolores	Z.O.E Dolores,i
1250	Erementar Gerad	Elemental Gelade	エレメンタルジェレイド
1251	Fushigi no Umi no Nadia	Nadia:Secret of Blue Water	ふしぎの海のナディア
1254	Saint Seiya	Saint Seiya:Knights of the Zodiac	聖闘士星矢(セイントセイヤ)
1261	Kyattou Ninden Teyandee	Samurai Pizza Cats	キャッ党忍伝てやんでえ
1264	Yoroiden Samurai Troopers	Ronin Warriors	鎧伝サムライトルーパー
1279	Taiyou no Ko Esteban	The Mysterious Cities of Gold	太陽の子エステバン
1281	Gakkou no Kaidan	Ghost Stories	学校の怪談
1292	Afro Samurai	Afro Samurai	アフロサムライ
1293	Urusei Yatsura	Urusei Yatsura	うる星やつら
1300	Omishi Mahou Gekijou: Risky★Safety	Unknown	臣士魔法劇場 リスキー★セフティ
1312	Chikyuu Bouei Kigyou Dai-Guard	Unknown	地球防衛企業ダイ・ガード
1313	Digimon Adventure 02	Digimon Adventure 02	デジモンアドベンチャー０２
1314	DT Eightron	DT Eightron	ＤＴエイトロン
1316	Idaten Jump	Idaten Jump	韋駄天翔(ジャンプ)
1325	Hamelin no Violin Hiki	Violinist of Hamelin	ハーメルンのバイオリン弾き
1327	Aoki Densetsu Shoot!	Blue Legend Shoot!	蒼き伝説　シュート！
1333	Fushigi na Koala Blinky	Noozles	ふしぎなコアラ ブリンキー
1337	Dororon Enma-kun	Unknown	ドロロンえん魔くん
1349	A.D. Police (TV)	A.D. Police:To Protect and Serve	アドバンスドポリス
1356	Hokuto no Ken 2	Fist of the North Star 2	北斗の拳2
1371	Hi no Tori	Bird of Fire	火の鳥
1372	Taiho Shichau zo (TV)	You're Under Arrest (1996)	逮捕しちゃうぞ (1996)
1374	Kyoushoku Soukou Guyver (2005)	Unknown	強殖装甲ガイバー
1375	Watashi no Ashinaga Ojisan	My Daddy Long Legs	私のあしながおじさん
1377	Uchuu Koukyoushi Maetel: Ginga Tetsudou 999 Gaiden	Space Symphonic Poem Maetel:Galaxy Express 999 Side Story	宇宙交響詩メーテル ～銀河鉄道999外伝～
1391	Future GPX Cyber Formula	Unknown	新世紀ＧＰＸサイバーフォーミュラ
1397	Macross 7	Unknown	マクロス７
1409	IGPX: Immortal Grand Prix	Unknown	IGPX:Immortal Grand Prix
1410	IGPX: Immortal Grand Prix (2005) 2nd Season	IGPX:Immortal Grand Prix	IGPX -Immortal Grand Prix-
1412	Lupin III	Lupin III	ルパン三世
1425	Lupin III: Part II	Unknown	新・ルパン三世
1426	Lupin III: Part III	Unknown	ルパン三世 - Part III
1442	Alexander Senki	Reign:The Conqueror	アレクサンダー戦記
1445	Mach GoGoGo	Speed Racer	マッハＧｏＧｏＧｏ
1448	Hyakujuu-Ou GoLion	Voltron:Defender of the Universe	百獣王ゴライオン
1450	Brigadoon: Marin to Melan	Brigadoon	ブリガドーン まりんとメラン
1453	Maison Ikkoku	Maison Ikkoku	めぞん一刻
1454	Kemonozume	Unknown	ケモノヅメ
1456	L/R: Licensed by Royal	Licensed by Royalty	L/R -Licensed by Royal-
1458	Uchuu no Kishi Tekkaman	Tekkaman	宇宙の騎士テッカマン
1459	Uchuu no Kishi Tekkaman Blade	Tekkaman Blade	宇宙の騎士テッカマンブレード
1465	Hakaima Sadamitsu	Sadamitsu the Destroyer	破壊魔定光
1466	Hakugei Densetsu	Hakugei:Legend of the Moby Dick	白鯨伝説
1469	Monster Farm: Enbanseki no Himitsu	Monster Rancher	モンスターファーム
1470	City Hunter	Unknown	シティーハンター
1471	City Hunter 2	Unknown	シティーハンター2
1472	City Hunter 3	Unknown	シティーハンター3
1473	City Hunter '91	Unknown	シティーハンター'91
1482	D.Gray-man	D.Gray-man	ディー・グレイマン
1483	Master Keaton	Unknown	マスターキートン
1485	Akachan to Boku	Baby and Me	赤ちゃんと僕
1486	Kodomo no Omocha (TV)	Kodocha	こどものおもちゃ
1490	Ginga Tetsudou Monogatari	The Galaxy Railways	銀河鉄道物語
1491	Ginga Tetsudou 999	Unknown	銀河鉄道９９９
1492	Project ARMS	Project ARMS	プロジェクトアームズ
1493	Project ARMS: The 2nd Chapter	Project ARMS:The 2nd Chapter	PROJECT ARMS -The 2nd Chapter-
1498	Black Blood Brothers	Black Blood Brothers	ブラック・ブラッド・ブラザーズ
1502	Mahou Shoujo Pretty Sammy (1996)	Magical Project S	魔法少女プリティサミー(1996)
1508	Sci-fi Harry	Sci-fi Harry	サイファイハリー
1509	Mamotte! Lollipop	Save Me! Lollipop	まもって！ロリポップ
1516	Kirarin☆Revolution	Kirarin Revolution	きらりん☆レボリューション
1517	Silent Möbius	Unknown	サイレントメビウス
1519	Black Lagoon: The Second Barrage	Black Lagoon:The Second Barrage	BLACK LAGOON The Second Barrage
1524	Fuujin Monogatari	Windy Tales	風人物語
1530	Kanon (2006)	Kanon	カノン (2006)
1532	Suki na Mono wa Suki Dakara Shou ga Nai!!	Sukisho	好きなものは好きだからしょうがない！！
1533	Ai Tenshi Densetsu Wedding Peach	Wedding Peach	愛天使伝説 ウェディングピーチ
1534	Futari wa Precure: Splash☆Star	Pretty Cure:Splash Star	ふたりはプリキュア Splash☆Star
1535	Death Note	Death Note	デスノート
1536	Busou Renkin	Buso Renkin	武装錬金
1537	Genshi Shounen Ryuu	Ryu the Primitive Boy	原始少年リュウ
1538	Pumpkin Scissors	Unknown	パンプキン・シザーズ
1541	Souten no Ken	Fist of the Blue Sky	蒼天の拳
1542	Brain Powerd	Unknown	ブレンパワード
1543	Yoake Mae yori Ruriiro na: Crescent Love	Brighter Than the Dawning Blue	夜明け前より瑠璃色な -Crescent Love-
1546	Negima!?	Negima!? Magister Negi Magi	ネギま!?
1547	Obake no Q-tarou	Unknown	オバケのＱ太郎
1548	Shin Taketori Monogatari: 1000-nen Joou	Queen Millennia	新竹取物語１０００年女王
1550	Attack No.1	Unknown	アタックNo.1
1554	Asatte no Houkou.	Living for the Day After Tomorrow	あさっての方向。
1555	Tokimeki Memorial: Only Love	Tokimeki Memorial	ときめきメモリアル Only Love
1557	Shounen Onmyouji	Shonen Onmyoji	少年陰陽師
1559	Shijou Saikyou no Deshi Kenichi	KenIchi:The Mightiest Disciple	史上最強の弟子 ケンイチ
1561	Lovedol: Lovely Idol	Lovely Idol	らぶドル～Lovely Idol～
1562	Yamato Nadeshiko Shichihenge♥	The Seven Metamorphoses of Yamato Nadeshiko	ヤマトナデシコ七変化♥
1563	Magic Knight Rayearth II	Magic Knight Rayearth II	魔法騎士（マジックナイト）レイアース II
1564	Pokemon Advanced Generation	Pokemon:Advanced	ポケットモンスター　アドバンスジェネレーション
1565	Pokemon Diamond & Pearl	Unknown	ポケットモンスター ダイヤモンド&パール
1567	Kaitou Saint Tail	Mysterious Thief Saint Tail	怪盗セイント・テール
1568	Sumomomo Momomo: Chijou Saikyou no Yome	Unknown	すもももももも〜地上最強のヨメ〜
1569	Otome wa Boku ni Koishiteru	Otoboku:Maidens are Falling for Me!	乙女は僕に恋してる
1570	Happiness!	Happiness!	はぴねす！
1571	Ghost Hunt	Ghost Hunt	ゴーストハント
1572	Jungle Taitei	Kimba the White Lion	ジャングル大帝
1573	Kishin Douji Zenki	Zenki	鬼神童子ZENKI
1574	Get Ride! AMDriver	Unknown	Get Ride! アムドライバー
1575	Code Geass: Hangyaku no Lelouch	Code Geass:Lelouch of the Rebellion	コードギアス 反逆のルルーシュ
1578	Koisuru Tenshi Angelique: Kokoro no Mezameru Toki	Loving Angel Angelique:When Hearts Awaken	恋する天使アンジェリーク　～心のめざめる時～
1579	Kiniro no Corda: Primo Passo	La corda d'oro:primo passo	金色のコルダ ～primo passo～
1581	Gift: Eternal Rainbow	Unknown	ギフト～ eternal rainbow
1583	009-1	009-1	ゼロゼロナインワン
1587	Tenpou Ibun: Ayakashi Ayashi	Ghost Slayers Ayashi	天保異聞 妖奇士
1588	Mamoru-kun ni Megami no Shukufuku wo!	Venus to Mamoru!	護くんに女神の祝福を！
1589	Bartender	Bartender	バーテンダー
1590	Legendz: Yomigaeru Ryuuou Densetsu	Legendz:Tale of the Dragon Kings	レジェンズ 甦る竜王伝説
1591	Kujibiki♥Unbalance	Unknown	くじびき♥アンバランス
1592	Hataraki Man	Unknown	働きマン
1594	Jigoku Shoujo Futakomori	Hell Girl:Two Mirrors	地獄少女 二籠
1597	Panyo Panyo Di Gi Charat	Unknown	ぱにょぱにょ　デ・ジ・キャラット
1599	Eat-Man '98	Unknown	イートマン `98
1600	Galaxy Angel Rune	Unknown	ギャラクシーエンジェる～ん
1601	Red Garden	Red Garden	レッド ガーデン
1812	Hanoka	Unknown	HANOKA～葉ノ香～
1602	Soukou no Strain	Strain:Strategic Armored Infantry	奏光のストレイン
1603	Super Robot Taisen OG: Divine Wars	Super Robot Wars The Original Generation:The Divine Wars	スーパーロボット大戦OG -ディバイン・ウォーズ-
1604	Katekyo Hitman Reborn!	Reborn!	家庭教師ヒットマンREBORN!
1606	Kekkaishi (TV)	Kekkaishi	結界師
1607	Venus Versus Virus	Venus Versus Virus	ヴィーナス ヴァーサス ヴァイアラス
1608	Salaryman Kintarou	Unknown	サラリーマン金太郎
1614	Captain Tsubasa: Road to 2002	Captain Tsubasa	キャプテン翼 (2001)
1617	Massugu ni Ikou.	Unknown	まっすぐにいこう。
1618	Soreyuke! Uchuu Senkan Yamamoto Yohko (1999)	Unknown	それゆけ!宇宙戦艦　ヤマモト・ヨーコ
1623	G-On Riders	Unknown	G-on らいだーす
1628	Maou Dante	Demon Lord Dante	魔王ダンテ
1629	Devilman Lady	The Devil Lady	デビルマンレディー
1638	Peter Pan no Bouken	Peter Pan & Wendy	ピーターパンの冒険
1642	Sugar Sugar Rune	Sugar Sugar Rune	シュガシュガルーン
1650	Uchuu Senkan Yamato	Star Blazers:The Quest for Iscandar	宇宙戦艦ヤマト
1651	Uchuu Senkan Yamato 2	Star Blazers:The Comet Empire	宇宙戦艦ヤマト2
1652	Uchuu Senkan Yamato III	Star Blazers:The Bolar Wars	宇宙戦艦ヤマトⅢ
1655	Nerima Daikon Brothers	Nerima Daikon Brothers	練馬大根ブラザーズ
1656	PostPet Momobin	Unknown	ポストペットモモ便
1660	Kurogane Communication	Kurogane Communication	鉄コミュニケイション
1661	Cutey Honey	Unknown	キューティーハニー
1663	Haha wo Tazunete Sanzenri	Unknown	母をたずねて三千里
1664	Babel Nisei (2001)	Babel II:Beyond Infinity	バビル２世
1666	Babel Nisei	Babel II	バビル２世
1667	Barom One	Unknown	バロムワン
1668	Bakuten Shoot Beyblade G Revolution	Beyblade G Revolution	爆転シュート　ベイブレードＧレボリューション
1669	Bakuten Shoot Beyblade 2002	Beyblade V-Force	爆転シュート　ベイブレード2002
1672	Bomberman B-Daman Bakugaiden	Unknown	B[ボンバーマン]ビーダマン爆外伝
1673	Bomberman B-Daman Bakugaiden Victory	Unknown	B[ボンバーマン]ビーダマン爆外伝V[ビクトリー]
1674	Captain Tsubasa J	Unknown	キャプテン翼Ｊ
1675	Chou Robot Seimeitai Transformers Micron Densetsu	Transformers Armada	超ロボット生命体トランスフォーマー マイクロン伝説
1676	Cosmo Warrior Zero	Unknown	コスモウォーリアー零
1678	Cyborg 009: The Cyborg Soldier	Cyborg 009	サイボーグ009 THE CYBORG SOLDIER
1683	Di Gi Charat Nyo	Unknown	デ・ジ・キャラットにょ
1684	Dotto Koni-chan	.Koni-chan	ドッとKONIちゃん
1685	Duel Masters	Unknown	デュエル・マスターズ
1688	Nanatsu-iro★Drops	Unknown	ななついろ★ドロップス
1690	Bokura no	Bokurano	ぼくらの
1691	Kaze no Stigma	Kaze no Stigma	風のスティグマ
1693	Reideen	Reideen	ライディーン
1694	iDOLM@STER Xenoglossia	IDOLM@STER Xenoglossia	アイドルマスター XENOGLOSSIA（ゼノグラシア）
1695	Les Misérables: Shoujo Cosette	Unknown	レ・ミゼラブル 少女コゼット
1698	Nodame Cantabile	Nodame Cantabile	のだめカンタービレ
1699	Romeo x Juliet	Romeo x Juliet	ロミオ×ジュリエット
1703	Tokyo Tribe 2	Unknown	TOKYO TRIBE 2
1704	Eat-Man	Unknown	イートマン
1705	Genma Taisen: Shinwa Zenya no Shou	Genma Wars	幻魔大戦－神話前夜の章
1706	Gun Frontier	Unknown	ガンフロンティア
1707	Kinnikuman II Sei	Ultimate Muscle	キン肉マンII世
1708	Majuu Sensen: The Apocalypse	Beast Fighter:The Apocalypse	魔獣戦線 THE APOCALYPSE
1710	Rockman.EXE	MegaMan NT Warrior	ロックマン エグゼ
1711	Ryuusei Sentai Musumet	Unknown	流星戦隊ムスメット
1712	Shin Seiki Den Mars	Unknown	神世紀伝　マーズ
1713	Submarine Super 99	Unknown	サブマリン スーパー９９
1721	Hitohira	Unknown	ひとひら
1722	Nagasarete Airantou	Unknown	ながされて藍蘭島
1724	Saint October	Unknown	セイントオクトーバー
1726	Devil May Cry	Devil May Cry	デビル メイ クライ
1727	Shinkyoku Soukai Polyphonica	Polyphonica	神曲奏界ポリフォニカ
1728	Super GALS! Kotobuki Ran	Super GALS!	超GALS! 寿蘭
1735	Naruto: Shippuuden	Naruto:Shippuden	ナルト- 疾風伝
1737	Uchuu Senshi Baldios	Space Warrior Bladios	宇宙戦士 バルディオス
1738	Muteki Kanban Musume	Ramen Fighter Miki	無敵看板娘
1739	Shibawanko no Wa no Kokoro	Unknown	しばわんこの和のこころ
1740	Naikaku Kenryoku Hanzai Kyousei Torishimarikan Zaizen Joutarou	Government Crime Investigation Agent Zaizen Jotaro	内閣権力犯罪強制取締官・財前丈太郎
1743	Super Milk-chan	Super Milk-Chan	スーパーミルクチャン
1744	Wagamama☆Fairy Mirumo de Pon!	Mirmo Zibang!	わがまま☆フェアリー ミルモでポン!
1745	Wild 7 Another Bouryaku Unga	Wild 7 Another	ワイルド7 another　謀略運河
1746	Zoids Fuzors	Zoids Fuzors	ゾイド・フューザーズ
1769	Oh! Super Milk-chan	The Super Milk-Chan Show	OH! スーパーミルクチャン
1771	Ring ni Kakero 1: Nichibei Kessen-hen	Ring ni Kakero 1 Episode:The Pacific War	リングにかけろ1 日米決戦編
1775	Jikuu Tenshou Nazca	Dimension Movement of Nazca	時空転抄ナスカ
1778	Dae Jang Geum: Jang Geum's Dream	Unknown	少女チャングムの夢
1792	Overman King Gainer	Unknown	オーバーマン キングゲイナー
1806	Master Mosquiton '99	Master of Mosquiton '99	マスターモスキートン'99
1807	Prism Ark	Unknown	プリズム・アーク
1808	Kamichama Karin	Unknown	かみちゃまかりん
1810	Kyoushirou to Towa no Sora	Shattered Angels	京四郎と永遠（とわ）の空
1816	Sonic X	Sonic X	ソニック X
1826	Deltora Quest	Deltora Quest	デルトラクエスト
1827	Seirei no Moribito	Moribito - Guardian of the Spirit	精霊の守り人
1835	Ryuusei no Rockman	Megaman Star Force	流星のロックマン
1836	Shuffle! Memories	Unknown	シャッフル！メモリーズ
1837	Sumeba Miyako no Cosmos-sou Suttoko Taisen Dokkoida	Dokkoida?!	住めば都のコスモス荘 すっとこ大戦ドッコイダー
1839	Jagainu-kun	Unknown	じゃがいぬくん
1840	Zero no Tsukaima: Futatsuki no Kishi	The Familiar of Zero:Knight of the Twin Moons	ゼロの使い魔 ～双月の騎士～
1842	Major S3	Unknown	メジャー  (第3シリーズ)
1844	Clamp Gakuen Tanteidan	CLAMP School Detectives	CLAMP学園探偵団
1845	Gaiking: Legend of Daiku-Maryu	Unknown	ガイキング Legend of Daiku-Maryu
1846	Princess Nine: Kisaragi Joshikou Yakyuubu	Princess Nine	プリンセスナイン 如月女子高野球部
1848	Haou Taikei Ryuu Knight	Lord of Lords Ryu Knight	覇王大系リューナイト
1852	Hidamari Sketch	Hidamari Sketch	ひだまりスケッチ
1853	Cutey Honey F	Cutey Honey F	キューティーハニーＦ
1858	Gakuen Utopia Manabi Straight!	Unknown	がくえんゆーとぴあ まなびストレート！
1860	Tokyo Majin Gakuen Kenpucho: Tou	Tokyo Majin	東京魔人學園剣風帖　龖（トウ）
1863	Silk Road Shounen Yuuto	Unknown	シルクロード少年 ユート
1864	Koisuru Tenshi Angelique: Kagayaki no Ashita	Loving Angel Angelique:Radiant Tomorrow	恋する天使アンジェリーク ～かがやきの明日～
1865	Getsumen To Heiki Mina	Unknown	月面兎兵器ミーナ
1868	Giniro no Olynsis: Tokito	Unknown	銀色のオリンシス TOKITO
1872	Saru Getchu: On Air	Ape Escape	サルゲッチュ ～オンエアー～
1873	Plawres Sanshirou	Plastic Model Wrestling Sanshiro	プラレス３四郎
1878	Kaze no Shoujo Emily	Unknown	風の少女エミリー
1881	Sasami: Mahou Shoujo Club	Sasami Magical Girls Club	砂沙美 -魔法少女クラブ-
1882	Sasami: Mahou Shoujo Club 2	Sasami Magical Girls Club	砂沙美☆魔法少女クラブ シーズン2
1883	Kappa no Kaikata	How to Breed Kappas	カッパの飼い方
1884	Himesama Goyoujin	Princess Beware	姫様ご用心
1885	Master of Epic: The Animation Age	Unknown	マスター オブ エピック The Animation Age
1886	Fushigiboshi no☆Futagohime Gyu!	Unknown	ふしぎ星の☆ふたご姫
1887	Lucky☆Star	Lucky☆Star	らき☆すた
1889	Higurashi no Naku Koro ni Kai	When They Cry:Kai	ひぐらしのなく頃に解
1891	YAT Anshin! Uchuu Ryokou	Unknown	ＹＡＴ　安心！宇宙旅行
1892	YAT Anshin! Uchuu Ryokou 2	Unknown	ＹＡＴ　安心！宇宙旅行 2
1893	Azuki-chan	Unknown	あずきちゃん
1897	Zettai Muteki Raijin-Oh	Zettai Muteki Raijin-Oh	絶対無敵ライジンオー
1899	Masou Kishin Cybuster	Cybuster	魔装機神サイバスター
1912	Marginal Prince: Gekkeiju no Ouji-tachi	Unknown	マージナルプリンス -月桂樹の王子達-
1914	Saiunkoku Monogatari 2nd Season	Tales of Saiunkoku	彩雲国物語 第2シリーズ
1915	Mahou Shoujo Lyrical Nanoha StrikerS	Magical Girl Lyrical Nanoha StrikerS	魔法少女リリカルなのはStrikerS
1929	Futari wa Precure: Max Heart	Pretty Cure Max Heart	ふたりはプリキュア ー マックスハート
1932	Yes! Precure 5	Yes! Pretty Cure 5	Yes! プリキュア5
1936	Misute♡naide Daisy	Don't Leave Me Alone, Daisy	みすて♡ないでデイジー
1941	Moonlight Mile 1st Season: Lift Off	Unknown	ムーンライトマイル 1stシーズン -Lift off-
1942	Rocket Girls	Unknown	ロケットガール
1946	Ashita no Nadja	Tomorrow's Nadja	明日のナージャ
1947	Kikou Sennyo Rouran	Strange Steel Fairy Rouran	奇鋼仙女ロウラン
1955	Kimagure Robot	Unknown	きまぐれロボット
1956	Ikkitousen: Dragon Destiny	Ikkitousen:Dragon Destiny	一騎当千 Dragon Destiny
1960	Sore Ike! Anpanman	Unknown	それいけ！アンパンマン
1962	Chikyuu Bouei Kazoku	The Daichis:Earth's Defense Family	地球防衛家族
1965	Sola	Unknown	sola
1972	Meitantei Holmes	Sherlock Hound	名探偵ホームズ
1974	Glass no Kamen (2005)	Glass Mask	ガラスの仮面 (2005)
1975	Mutekiou Tri-Zenon	Invincible King Tri-Zenon	無敵王トライゼノン
1985	UFO Robo Grendizer	Unknown	UFOロボ グレンダイザー
1986	Wakusei Robo Danguard Ace	Dangard Ace	惑星ロボ ダンガードA[エース]
1988	Himawari!!	Himawari Too!!	ひまわりっ！！
1991	Juusou Kikou Dancougar Nova	Unknown	獣装機攻ダンクーガノヴァ
2001	Tengen Toppa Gurren Lagann	Gurren Lagann	天元突破グレンラガン
2002	Heroic Age	Heroic Age	ヒロイック・エイジ
2004	Hanada Shounen-shi	Unknown	花田少年史
2011	Taiho Shichau zo Special	You're Under Arrest Mini Specials	逮捕しちゃうぞ Special
2012	Jigoku Sensei Nube	Unknown	地獄先生ぬ～べ～
2014	Taiho Shichau zo: Second Season	You're Under Arrest:Fast & Furious	逮捕しちゃうぞ SECOND SEASON
2024	Yoshimune	Unknown	吉宗
2025	Darker than Black: Kuro no Keiyakusha	Darker than Black	Darker than BLACK -黒の契約者-
2026	Hayate no Gotoku!	Hayate the Combat Butler	ハヤテのごとく！
2030	El Cazador de la Bruja	El Cazador de la Bruja	エル・カザド
2031	Shining Tears X Wind	Shining Tears X Wind	シャイニング・ティアーズ・クロス・ウィンド
2032	Wellber no Monogatari: Sisters of Wellber	Unknown	ウエルベールの物語 Sisters of Wellber
2034	Lovely★Complex	Lovely Complex	ラブ★コン
2035	Eikoku Koi Monogatari Emma: Molders-hen	Emma:A Victorian Romance Season Two	英國戀物語エマ ～メルダース編～
2036	Cosmic Baton Girl Comet-san☆	Unknown	Cosmic Baton Girl コメットさん☆
2037	Hime-chan no Ribbon	Unknown	姫ちゃんのリボン
2038	Mahou no Star Magical Emi	Unknown	魔法のスター マジカルエミ
2039	Mahou no Yousei Persia	Unknown	魔法の妖精 ペルシャ
2040	Mahou no Angel Sweet Mint	Unknown	魔法のエンジェル スイートミント
2041	Ai to Yuuki no Pig Girl Tonde Buurin	Super Pig	愛と勇気のピッグガール　とんでぶーりん
2043	Cat's Eye	Unknown	キャッツ・アイ
2044	Mahou no Tenshi Creamy Mami	Magical Angel Creamy Mami	魔法の天使 クリィミーマミ
2074	Kero Kero Chime	Unknown	ケロケロちゃいむ
2075	Kiko-chan Smile	Unknown	きこちゃんすまいる
2076	Kindaichi Shounen no Jikenbo	Unknown	金田一少年の事件簿
2084	NG Knight Ramune & 40	Unknown	NG騎士ラムネ＆４０
2087	VS Knight Lamune & 40 Fire	Unknown	VS騎士ラムネ&40炎
2089	Choujikuu Seiki Orguss	The Super Dimension Century Orguss	超時空世紀オーガス
2104	Seto no Hanayome	My Bride is a Mermaid	瀬戸の花嫁
2105	Touka Gettan	Unknown	桃華月憚
2106	Kiss Dum: Engage Planet	Unknown	キスダム -ENGAGE planet-
2108	Rockman.EXE Axess	MegaMan:Axess	ロックマンエグゼ Axess
2109	Rockman.EXE Stream	Unknown	ロックマンエクゼStream
2110	Rockman.EXE Beast	Unknown	ロックマン エグゼ ＢＥＡＳＴ
2112	Over Drive	Unknown	オーバードライヴ
2113	Tenkuu Senki Shurato	Unknown	天空戦記シュラト
2116	Captain Tsubasa	Unknown	キャプテン翼
2127	Chouja Raideen	Unknown	超者ライディーン
2128	Yuusha Raideen	Unknown	勇者ライディーン
2129	True Tears	True Tears	true tears
2130	Kaibutsu Oujo	Princess Resurrection	怪物王女
2142	Blue Dragon	Unknown	ブルー・ドラゴン
2150	Tanoshii Muumin Ikka	Unknown	楽しいムーミン一家
2151	Nils no Fushigi na Tabi	Wonderful Adventures of Nils	ニルスのふしぎな旅
2152	Oh! Edo Rocket	Oh! Edo Rocket	大江戸ロケット
2153	Saint Beast: Kouin Jojishi Tenshi Tan	Unknown	セイント・ビースト～光陰叙事詩天使譚～
2155	Kono Aozora ni Yakusoku wo: Youkoso Tsugumi Ryou e	Unknown	この青空に約束を― ～ようこそつぐみ寮へ～
2156	Bakugan Battle Brawlers	Unknown	爆丸バトルブローラーズ
2157	Koutetsushin Jeeg	Unknown	鋼鉄神ジーグ
2158	Terra e... (TV)	Unknown	地球へ…
2159	Ookiku Furikabutte	Big Windup!	おおきく振りかぶって
2161	Skull Man	The Skull Man	スカルマン SKULL MAN
2162	Koutetsu Sangokushi	Unknown	鋼鉄三国志
2164	Dennou Coil	Den-noh Coil	電脳コイル
2165	Gegege no Kitarou (2007)	Unknown	ゲゲゲの鬼太郎 (2007)
2166	Doujin Work	Dojin Work	ドージンワーク
2167	Clannad	Clannad	CLANNAD
2200	Muteki Choujin Zanbot 3	Invincible Superman Zanbot 3	無敵超人サンボット３
2203	Waga Seishun no Arcadia: Mugen Kidou SSX	Endless Orbit SSX	わが青春のアルカディア・無限軌道ＳＳＸ
2204	Karakurizoushi Ayatsuri Sakon	Unknown	人形草紙あやつり左近
2213	Black Jack (TV)	Unknown	ブラックジャック
2214	Black Jack 21	Unknown	ブラック・ジャック21
2215	Kishin Taisen Gigantic Formula	Unknown	機神大戦 ギガンティック・フォーミュラ
2216	Shigurui	Shigurui:Death Frenzy	シグルイ
2221	Aishite Knight	Rock'n Roll Kids	愛してナイト
2222	Dr. Slump: Arale-chan	Unknown	Dr.スランプ・アラレちゃん
2223	Maple Town Monogatari	Maple Town	メイプルタウン物語
2224	Hikari no Densetsu	Unknown	光の伝説
2225	Alps no Shoujo Heidi	Unknown	アルプスの少女ハイジ
2226	Mori no Tonto-tachi	A Christmas Adventure	森のトントたち
2227	Lady Lady!!	Unknown	レディレディ！！
2228	Honoo no Toukyuuji: Dodge Danpei	Unknown	炎の闘球児・ドッジ弾平
2229	Dragon Quest: Dai no Daibouken (TV)	Unknown	ドラゴンクエスト・ダイの大冒険
2230	Hana no Ko Lunlun	Flower Angel	花の子ルンルン
2231	Miyuki	Unknown	みゆき
2232	Funny Pets	Unknown	ファニーペッツ
2233	Ocha-ken: Chokotto Monogatari	Unknown	お茶犬 ちょこっとものがたり
2234	Panda-Z: The Robonimation	Unknown	パンダーゼット THE ROBONIMATION
2243	Karasu Tengu Kabuto	Unknown	カラス天狗カブト
2244	Rakugo Tennyo Oyui	Unknown	落語天女おゆい
2245	Seraphim Call	Unknown	セラフィムコール
2246	Mononoke	Mononoke	モノノ怪
2251	Baccano!	Baccano!	バッカーノ！
2252	Devilman	Unknown	デビルマン
2253	Mazinger Z	Mazinger Z	マジンガーＺ
2254	Sentou Mecha Xabungle	Unknown	戦闘メカザブングル
2255	Choujuu Kishin Dancougar	Super Bestial Machine God Dancougar	超獣機神ダンクーガ
2257	Taiyou no Kiba Dagram	Unknown	太陽の牙ダグラム
2259	Dr. Rin ni Kiitemite!	Unknown	Dr.リンにきいてみて！
2280	Hare Tokidoki Buta (TV)	Tokyo Pig	はれときどきぶた
2281	Jikuu Tantei Genshi-kun	Flint the Time Detective	時空探偵ゲンシクン
2282	Tezuka Osamu no Kyuuyaku Seisho Monogatari: In the Beginning	In The Beginning:The Bible Stories	手塚治虫の旧約聖書物語 In The Beginning
2283	Red Baron	Unknown	レッドバロン
2284	Transformers: Car Robots	Transformers:Robots in Disguise	トランスフォーマー・カーロボット
2285	D.I.C.E.	Unknown	ディノブレイカー
2287	Kakutou Ryouri Densetsu Bistro Recipe	Fighting Foodons	格闘料理伝説ビストロレシピ
2288	Akihabara Dennou-gumi	Unknown	アキハバラ電脳組
2308	Lime-iro Ryuukitan X	Unknown	らいむいろ流奇譚 X CROSS ～恋, 教ヘテクダサイ.～
2316	Akakichi no Eleven	Unknown	赤き血のイレブン
2330	Jibaku-kun	Bucky:The Incredible Kid	ジバクくん
2331	Uchuu Densetsu Ulysses 31	Ulysses 31	宇宙伝説ユリシーズ31
2333	Anime Sanjuushi	The Three Musketeers	アニメ三銃士
2335	Kenyuu Densetsu Yaiba	Legendary Brave Swordsman Yaiba	剣勇伝説ＹＡＩＢＡ
2337	Tetsujin 28-gou (2004)	Tetsujin 28	鉄人２８号 (2004)
2361	Sei Juushi Bismarck	Saber Rider and the Star Sheriffs	星銃士 ビスマルク
2362	Run=Dim	Unknown	RUN=DIM (ランディム)
2363	Pokemon Housoukyoku	Pokemon Chronicles	ポケモン放送局
2364	Virus: Virus Buster Serge	Unknown	VIRUS -VIRUS BUSTER SERGE-
2366	Touma Kishinden Oni	Unknown	闘魔鬼神伝ONI
2367	Moetan	Unknown	もえたん
2369	Rental Magica	Rental Magica	レンタルマギカ
2382	Firestorm	Unknown	FIRESTORM　ファイアーストーム
2383	Cybersix	Cybersix	サイバーシックス
2389	Kagaku Ninja-tai Gatchaman	Gatchaman	科学忍者隊ガッチャマン
2390	Hoshi no Kirby	Kirby:Right Back at Ya!	星のカービィ
2391	SD Gundam Force	Unknown	SDガンダムフォース
2400	GS Mikami	Unknown	GS（ゴーストスイーパー）美神
2402	Ashita no Joe	Tomorrow's Joe	あしたのジョー
2403	Kodomo no Jikan (TV)	Unknown	こどものじかん
2404	Zombie-Loan	Zombie-Loan	ZOMBIE-LOAN ゾンビローン
2405	Hello! Lady Lynn	Unknown	ハロー! レディリン
2406	Sazae-san	Mrs. Sazae	サザエさん
2409	Gokudou-kun Manyuuki	Gokudo	ゴクドーくん漫遊記
2415	Super Fishing Grander Musashi	Unknown	スーパーフィッシング グランダー武蔵
2416	Grander Musashi RV	Unknown	グランダー武蔵ＲＶ
2451	Space Cobra	Space Adventure Cobra	スペースコブラ
2467	3 Choume no Tama: Uchi no Tama Shirimasen ka?	Tama and Friends	3丁目のタマ うちのタマ知りませんか?
2471	Doraemon (1979)	Doraemon	ドラえもん
2476	School Days	School Days	スクールデイズ
2484	Gear Fighter Dendoh	Unknown	GEAR戦士 電童
2486	Rumiko Takahashi Anthology	Unknown	高橋留美子劇場
2487	Kyouryuu Boukenki Jura Tripper	Unknown	恐竜冒険記ジュラトリッパー
2489	Onegai My Melody	Onegai My Melody	おねがいマイメロディ
2494	Goshuushou-sama Ninomiya-kun	Good Luck! Ninomiya-kun	ご愁傷さま二ノ宮くん
2495	Chance Triangle Session	Unknown	チャンス　トライアングルセッション
2501	Papuwa	Unknown	パプワ
2503	Nangoku Shounen Papuwa-kun	Unknown	南国少年パプワくん
2508	Genshiken 2	Genshiken 2	げんしけん2
2510	Sengoku Majin Goushougun	Macron 1	戦国魔神ゴーショーグン
2518	Masuda Kousuke Gekijou Gag Manga Biyori 2	Unknown	増田こうすけ劇場 ギャグマンガ日和2
2521	Haja Kyosei G Dangaiou	Unknown	破邪巨星Gダンガイオ
2523	Izumo: Takeki Tsurugi no Senki	Izumo:Flash of a Brave Sword	IZUMO -猛き剣の閃記-
2542	Lady Georgie	Unknown	レディジョージィ
2543	Robin Hood no Daibouken	The Great Adventures of Robin Hood	ロビンフッドの大冒険
2544	Kazoku Robinson Hyouryuuki: Fushigi na Shima no Flone	The Swiss Family Robinson:Flone of the Mysterious Island	家族ロビンソン漂流記ふしぎな島のフローネ
2545	Huckleberry no Bouken	Unknown	ハックルベリィの冒険
2546	Alps Monogatari: Watashi no Annette	Unknown	アルプス物語　わたしのアンネット
2547	Shoukoujo Sara	A Little Princess Sara	小公女セーラ
2548	Ai no Wakakusa Monogatari	Tales of Little Women	愛の若草物語
2549	Perrine Monogatari	Unknown	ペリーヌ物語
2552	Tetsuko no Tabi	Unknown	鉄子の旅
2553	Flanders no Inu	A Dog of Flanders	フランダースの犬
2554	Ai Shoujo Pollyanna Story	Unknown	愛少女ポリアンナ物語
2555	Shoukoushi Cedie	Little Lord Fauntleroy	小公子セディ
2556	Jungle Taitei (1989)	Unknown	ジャングル大帝
2557	Trapp Ikka Monogatari	The Trapp Family Story	トラップ 一家 物語
2558	Wakakusa Monogatari: Nan to Jo-sensei	Little Women II:Jo's Boys	若草物語ナンとジョー先生
2559	Romeo no Aoi Sora	Romeo and the Black Brothers	ロミオの青い空
2561	Captain Future	Unknown	キャプテンフューチャー
2562	Shion no Ou	Unknown	しおんの王 - The Flowers of Hard Blood
2564	Code-E	Unknown	CODE-E
2565	Jungle Taitei: Susume Leo!	Unknown	ジャングル大帝・進めレオ
2566	Uchuujin Tanaka Tarou	Taro the Space Alien	うちゅう人田中太郎
2567	Pinocchio yori Piccolino no Bouken	The Adventures of Piccolino	ピノキオより ピコリーノの冒険
2568	Kojika Monogatari	Story of a Fawn	子鹿物語 THE YEARLING
2569	Jungle Book Shounen Mowgli	The Jungle Book	ジャングルブック・少年モーグリ
2570	Ochame na Futago: Claire Gakuin Monogatari	The Mischevious Twins	おちゃめな双子　－クレア学院物語－
2571	Mitsubachi Maya no Bouken	Maya the Bee	みつばちマーヤの冒険
2572	Fushigi no Kuni no Alice	Alice in Wonderland	ふしぎの国のアリス
2573	Minami no Niji no Lucy	Lucy-May of the Southern Rainbow	南の虹のルーシー
2574	Kashi no Ki Mokku	Unknown	樫の木モック
2575	Don Chuck Monogatari	Don Chuck Stories	ドンチャック物語
2576	Araiguma Rascal	Raccoon Rascal	あらいぐまラスカル
2577	Tom Sawyer no Bouken	The Adventures of Tom Sawyer	トム・ソーヤーの冒険
2578	TaoTao Ehonkan Sekai Doubutsu Banashi	Unknown	タオタオ絵本館
2579	Anime 80-nichikan Sekai Isshuu	Around the World with Willy Fog	アニメ80日間世界一周
2581	Mobile Suit Gundam 00	Mobile Suit Gundam 00	機動戦士ガンダム00
2582	Soukou Kihei Votoms	Armored Trooper Votoms	装甲騎兵ボトムズ
2595	D.C.II: Da Capo II	Unknown	D.C.II ～ダ・カーポII～
2596	Shinreigari	Ghost Hound	神霊狩 GHOST HOUND
2598	Juusenki L-Gaim	Unknown	重戦機エルガイム
2602	Kenkou Zenrakei Suieibu Umishou	Unknown	ケンコー全裸系水泳部 ウミショー
2603	Mushi-Uta	Mushi-Uta	ムシウタ
2604	Sky Girls	Unknown	スカイガールズ
2605	Sayonara Zetsubou Sensei	Sayonara, Zetsubou-Sensei	さよなら絶望先生
2608	Wangan Midnight	Unknown	湾岸ミッドナイト
2609	Kakyuusei (TV)	Unknown	下級生
2612	Spoon Oba-san	Spoon Oba-san	スプーンおばさん
2613	Mirai Shounen Conan 2: Taiga Daibouken	Future Boy Conan 2:River Adventure	未来少年コナンII　タイガアドベンチャー
2618	Takarajima	Unknown	宝島
2619	Spider Riders: Oracle no Yuusha-tachi	Spider Riders	スパイダーライダーズ ～オラクルの勇者たち～
2620	Spider Riders: Yomigaeru Taiyou	Spider Riders:Resurrected Sun	スパイダーライダーズ ～よみがえる太陽～
2624	Flanders no Inu, Boku no Patrasche	A Dog of Flanders:My Patrasche	フランダースの犬　～ぼくのパトラッシュ～
2683	Tokyo Majin Gakuen Kenpucho: Tou Dai Ni Maku	Unknown	東京魔人學園剣風帖　龖（トウ） 第弐幕
2684	Buzzer Beater 2nd Season	Unknown	BUZZER BEATER 第2期
2686	Tetsujin 28-gou	Gigantor	鉄人２８号
2687	Gokuu no Daibouken	Adventures of the Monkey King	悟空の大冒険
2688	Akai Koudan Zillion	Zillion	赤い光弾ジリオン
2694	Hidamari no Ki	Tree in the Sun	陽だまりの樹
2699	Uchuu Kaizoku Mito no Daibouken	Space Pirate Mito	宇宙海賊ミトの大冒険
2700	Uchuu Kaizoku Mito no Daibouken: Futari no Joou-sama	Space Pirate Mito 2	宇宙海賊ミトの大冒険 2人の女王様
2701	Susie-chan to Marvy	Little Susie and Marvy	スージーちゃんとマービー
2702	Bakukyuu Renpatsu!! Super B-Daman	Unknown	爆球連発!!スーパービーダマン
2703	Chousoku Spinner	Super YoYo	超速スピナー
2704	Kaiketsu Jouki Tanteidan	Steam Detectives	快傑蒸気探偵団
2705	Bakusou Kyoudai Let's & Go	Unknown	爆走兄弟レッツ＆ゴー!!
2706	Bakusou Kyoudai Let's & Go WGP	Unknown	爆走兄弟レッツ＆ゴー!!　ＷＧＰ
2707	Majime ni Fumajime Kaiketsu Zorori	Unknown	まじめにふまじめ　かいけつゾロリ
2708	Wankorobee	Unknown	わんころべえ
2709	Bakusou Kyoudai Let's & Go MAX	Unknown	爆走兄弟レッツ＆ゴー!! ＭＡＸ
2713	Rockman.EXE Beast+	Unknown	ロックマンエグゼビースト+（プラス）
2716	Urayasu Tekkin Kazoku	Unknown	浦安鉄筋家族
2717	Ginga Tetsudou Monogatari: Eien e no Bunkiten	Unknown	銀河鉄道物語 ～永遠への分岐点～
2718	Umi no Triton	Triton of the Sea	海のトリトン
2719	MapleStory	Unknown	メイプルストーリー
2723	D4 Princess	Unknown	D4 プリンセス
2727	Sweet Valerian	Unknown	スウィート・ヴァレリアン
2732	Baby Baachan	Baby Grandma	ベイベーばあちゃん
2735	Mugen Senki Portriss	Unknown	無限戦記ポトリス
2736	Mojakou	Unknown	モジャ公
2738	Kasumin 3rd Season	Unknown	カスミン (第3シリーズ)
2740	Monkey Turn	Unknown	モンキーターン
2741	Monkey Turn V	Unknown	モンキー ターン V
2742	Omoikkiri Kagaku Adventure Sou Nanda!	Full-Blast Science Adventure:So That's How It Is!	おもいっきり科学アドベンチャー そーなんだ!
2744	Potemayo	Unknown	ぽてまよ
2747	Tetsuwan Atom	Astro Boy	鉄腕アトム
2748	Dash! Kappei	Unknown	ダッシュ勝平
2749	Heisei Inu Monogatari Bow	Heisei Period Dog Tale Bow	平成イヌ物語バウ
2757	Juuni Senshi Bakuretsu Eto Ranger	Unknown	十二戦支　爆烈エトレンジャー
2758	Shippuu! Iron Leaguer	Unknown	疾風！ アイアンリーガー
2762	Igano Kabamaru	Unknown	伊賀野カバ丸
2766	Super Doll Licca-chan	Unknown	スーパードール リカちゃん
2769	Galactic Patrol Lensman	Unknown	GALACTIC PATROL　レンズマン
2771	Chou Kuse ni Narisou	I'll Make a Habit of It	超くせになりそう
2772	Juushin Enbu: Hero Tales	Hero Tales	獣神演武 - HERO TALES -
2781	Saint Luminous Jogakuin	St. Luminous Mission High School	聖ルミナス女学院
2783	Oyayubi Hime Monogatari	Thumbelina:A Magical Story	おやゆび姫物語
2786	Bakegyamon	Unknown	妖逆門
2787	Shakugan no Shana II (Second)	Shakugan no Shana:Season II	灼眼のシャナII –Second–
2789	B-Legend! Battle B-Daman	Battle B-Daman	B-伝説(ビーレジェンド)! バトルビーダマン
2795	Dragonaut: The Resonance	Dragonaut - The Resonance	ドラゴノーツ-ザ・レソナンス-
2799	Hello! Sandybell	Unknown	ハロー！サンディベル
2800	Candy Candy	Unknown	キャンディ・キャンディ
2803	Densetsu no Yuusha Da Garn	Unknown	伝説の勇者ダ・ガーン
2804	Hana no Mahoutsukai Mary Bell	Unknown	花の魔法使いマリーベル
2805	Onegai! Samia Don	Unknown	おねがい！サミアどん
2806	Yadamon	Yadamon:Magical Dreamer	ヤダモン
2809	Fuusen Shoujo Temple-chan	Temple the Balloonist	風船少女テンプルちゃん
2810	Anime Himitsu no Hanazono	The Secret Garden	アニメ ひみつの花園
2813	Chiisana Ahiru no Ooki na Ai no Monogatari: Ahiru no Kwak	Unknown	小さなアヒルの大きな愛の物語 あひるのクワック
2814	Dondon Dommel to Ron	Wowser	どんどんドメルとロン
2815	Geragera Boes Monogatari	Ox Tales	げらげらブース物語
2816	Toushou Daimos	Daimos	闘将ダイモス
2817	Cinderella Monogatari	The Story of Cinderella	シンデレラ物語
2818	Madou King Granzort	Mado King Granzort	魔動王グランゾート
2819	Dragon Quest: Abel Yuusha Densetsu	Dragon Warrior	ドラゴンクエスト～勇者アベル伝説～
2820	Time Travel Tondekeman!	Time Quest	たいむとらぶる トンデケマン!
2822	Bamboo Bears	Unknown	バンブー・ベアーズ
2823	Barbapapa	Barbapapa	バーバパパ
2824	Barbapapa Sekai wo Mawaru	Barbapapa Around the World	バーバパパ　世界をまわる
2825	Arabian Nights: Sindbad no Bouken (TV)	Unknown	アラビアンナイト シンドバットの冒険
2826	Oz no Mahoutsukai (1986)	The Wonderful Wizard of Oz	オズの魔法使い
2827	Calimero	Unknown	カリメロ
2828	Ie Naki Ko	Unknown	家なき子
2829	Ie Naki Ko Remy	Sans Famille	家なき子レミ
2834	Miracle☆Girls	Unknown	ミラクル☆ガールズ
2835	Patalliro!	Unknown	パタリロ！
2836	Chiisana Viking Vickie	Unknown	小さなバイキングビッケ
2882	Anime Oyako Gekijou	Superbook	アニメ 親子劇場
2885	Ganbare Goemon	Legend of the Mystical Ninja	がんばれゴエモン
2892	Hakushon Daimaou	Bob in the Bottle	ハクション大魔王
2903	Sakigake!! Otokojuku	Charge!! Men's Private School	魁!!男塾
2904	Code Geass: Hangyaku no Lelouch R2	Code Geass:Lelouch of the Rebellion R2	コードギアス 反逆のルルーシュ 続編
2907	Cyborg Kuro-chan	Unknown	サイボーグクロちゃん
2912	Ohayou! Spank	Unknown	おはよう！スパンク
2913	Daisougen no Chiisana Tenshi: Bush Baby	Bush Baby, Little Angel of the Great Plains	大草原の小さな天使　ブッシュベイビー
2916	Genki Bakuhatsu Ganbaruger	Energetic Bomb Ganbaruger	元気爆発ガンバルガー
2921	Ashita no Joe 2	Rocky Joe 2	あしたのジョー２
2923	Shugo Chara!	Shugo Chara!	しゅごキャラ！
2924	ef: A Tale of Memories.	ef - a tale of memories.	ef - a tale of memories.
2926	Myself; Yourself	Myself; Yourself	マイセルフ; ユアセルフ
2927	KimiKiss Pure Rouge	KimiKiss:Pure Rouge	キミキス pure rouge
2929	Moonlight Mile 2nd Season: Touch Down	Unknown	ムーンライトマイル 2ndシーズン -Touch down-
2930	Tensai? Dr. Hamax	Unknown	天才？Dr.ハマックス
2931	Mokke	Unknown	もっけ
2933	Mirai Keisatsu Urashiman	Future Police Urashiman	未来警察ウラシマン
2934	Shiawase Sou no Okojo-san	Unknown	しあわせソウのオコジョさん
2938	Idol Densetsu Eriko	Legendary Idol Eriko	アイドル伝説えり子
2942	Sketchbook: Full Color's	Sketchbook ~full color's~	スケッチブック ～full color's～
2963	Minami-ke	Unknown	みなみけ
2964	Blue Drop: Tenshi-tachi no Gikyoku	Blue Drop	BLUE DROP ～天使達の戯曲～
2965	Suteki Tantei Labyrinth	Fantastic Detective Labyrinth	素敵探偵☆ラビリンス
2966	Ookami to Koushinryou	Spice and Wolf	狼と香辛料
2970	Night Wizard	Unknown	ナイトウィザード
2980	Kuusou Kagaku Sekai Gulliver Boy	Fantascience World Gulliver Boy	空想科学世界ガリバーボーイ
2985	Majin Tantei Nougami Neuro	Neuro:Supernatural Detective	魔人探偵 脳噛ネウロ
2986	Bamboo Blade	Bamboo Blade	バンブーブレード
2987	Ginga Hyouryuu Vifam	Unknown	銀河漂流バイファム
2993	Rosario to Vampire	Rosario + Vampire	ロザリオとバンパイア
3000	Taiho Shichau zo: Full Throttle	You're Under Arrest:Full Throttle	逮捕しちゃうぞ フルスロットル
3001	Moyashimon	Unknown	もやしもん
3002	Gyakkyou Burai Kaiji: Ultimate Survivor	Kaiji:Ultimate Survivor	逆境無頼カイジ Ultimate Survivor
3006	Atashin'chi	My Family	あたしンち
3008	Time Bokan Series: Yatterman	Unknown	タイムボカンシリーズ ヤッターマン
3009	Tiger Mask	Tiger Mask	タイガーマスク
3010	Kaiketsu Zorro	The Magnificent Zorro	快傑ゾロ
3012	Gekitou! Crush Gear Turbo	Unknown	激闘! クラッシュギアTURBO
3020	Gu-Gu Ganmo	Unknown	Gu-Guガンモ
3021	Yume Senshi Wingman	Wingman	夢戦士ウイングマン
3022	Haai Step Jun	Unknown	はーいステップジュン
3023	Esper Mami	Unknown	エスパー魔美
3024	Ribbon no Kishi	Princess Knight	リボンの騎士
3035	Chouon Senshi Borgman	Unknown	超音戦士ボーグマン
3036	Tobe! Isami	Soar High! Isami	飛べ！イサミ
3044	Tetsuwan Atom (1980)	Astro Boy (1980)	鉄腕アトム
3053	Ganbare! Kickers	Fight! Kickers	がんばれ！キッカーズ
3054	La Seine no Hoshi	Unknown	ラ・セーヌの星
3059	Ninja Senshi Tobikage	Ninja Robots	忍者戦士飛影
3073	Robby to Kerobby	Robby & Kerobby	ロビーとケロビー
3075	Tondera House no Daibouken	The Flying House	トンデラハウスの大冒険
3077	Warau Salesman	Laughing Salesman	笑ゥせぇるすまん
3079	Aoki Ryuusei SPT Layzner	Blue Comet SPT Layzner	蒼き流星SPTレイズナー
3081	Attacker You!	Attacker You!	アタッカーＹＯＵ！
3091	xxxHOLiC Kei	Unknown	×××HOLiC・継
3092	Junjou Romantica	Junjo Romantica	純情ロマンチカ
3098	Shutsugeki! Machine Robo Rescue	Unknown	出撃！マシンロボレスキュー
3099	Juusenshi Gulkeeva	Unknown	獣戦士ガルキーバ
3101	F-Zero: Falcon Densetsu	F-Zero:GP Legend	F-ZERO ファルコン伝説
3104	Geisters: Fractions of the Earth	Geisters:Fractions of the Earth	ガイスターズ FRACTIONS OF THE EARTH
3110	Kaze no Naka no Shoujo: Kinpatsu no Jeanie	Unknown	風の中の少女 金髪のジェニー
3112	Papillon Rose	Papillon Rose	パピヨンローゼ
3114	Chiisana Kyojin Microman	Unknown	小さな巨人ミクロマン
3116	Dash! Yonkurou	Unknown	ダッシュ！四駆郎
3125	Tokimeki Tonight	Unknown	ときめきトゥナイト
3129	Kaibutsu-kun	Unknown	怪物くん
3130	Kaibutsu-kun (1980)	Unknown	怪物くん (1980)
3131	Ashita Tenki ni Naare	A Great Super Shot Boy	あした天気になあれ
3132	Boukensha: The Man Was from Spain	Christopher Columbus	冒険者－THE MAN WAS FROM SPAIN－
3136	Ochamegami Monogatari: Korokoro Pollon	Little Pollon	おちゃめ神物語コロコロポロン
3137	Tsurikichi Sanpei	Unknown	釣りキチ三平
3146	GR: Giant Robo	Unknown	GR -ジャイアントロボ-
3151	Genei Toushi Bastof Lemon	BASToF Syndrome	幻影闘士バストフレモン
3159	The Kabocha Wine	The Pumpkin Wine	Ｔｈｅかぼちゃワイン
3162	Makiba no Shoujo Katri	Katri, Girl of the Meadows	牧場の少女カトリ
3164	Ichigo Ichie: Koibana Tomobana	Unknown	一期一会 恋バナ友バナ
3166	Ayakashi	Unknown	アヤカシ
3176	Nessa no Haou Gandalla	Gandalla:The King of Burning Desert	熱沙の覇王ガンダーラ
3180	Manga Aesop Monogatari (TV)	Unknown	まんがイソップ物語
3182	Massugu ni Ikou. 2nd Season	Unknown	まっすぐにいこう。第2期
3185	Fortune Quest L	Fortune Quest	フォーチュン·クエストL
3193	Asobot Senki Gokuu	Monkey Typhoon	アソボット戦記五九
3194	Ningyohime Marina no Bouken	Saban's Adventures of the Little Mermaid	人魚姫 マリーナの冒険
3196	Wakakusa no Charlotte	Unknown	若草のシャルロット
3199	Nanatsu no Umi no Tico	Tico and Friends	七つの海のティコ
3201	Pure-tou no Nakama-tachi	Serendipity the Pink Dragon	セレンディピティ物語 ピュア島の仲間たち
3202	Daisuki! Hello Kitty	Unknown	大好き！ハローキティ
3205	Cream Lemon: Lemon Angel	Lemon Angel	くりぃむレモン レモンエンジェル
3213	Ganbare Genki	Unknown	がんばれ元気
3225	Minami-ke Okawari	Unknown	みなみけ～おかわり～
3226	Major S4	Unknown	メジャー　（第4シリーズ)
3228	Zoku Sayonara Zetsubou Sensei	Unknown	俗・さよなら絶望先生
3229	Kimi ga Aruji de Shitsuji ga Ore de	Unknown	君が主で執事が俺で
3230	Druaga no Tou: The Aegis of Uruk	Tower of Druaga:The Aegis of Uruk	ドルアーガの塔 〜the Aegis of URUK〜
3231	Gunslinger Girl: Il Teatrino	Gunslinger Girl:Il Teatrino	ガンスリンガー ガール -IL TEATRINO-
3243	Elec-king The Animation	Unknown	エレキング The Animation
3251	Hatara Kids Mai Ham Gumi	Master Hamsters	はたらキッズマイハム組
3259	Lemon Angel (1988)	Lemon Angel (1988)	レモンエンジェル
3264	Lemon Angel (1988/II)	Lemon Angel (1988/II)	レモンエンジェル
3270	IGPX: Immortal Grand Prix (2005)	IGPX:Immortal Grand Prix	IGPX -Immortal Grand Prix-
3271	Bakutou Sengen Daigunder	Daigunder	爆闘宣言ダイガンダー
3272	Kinnikuman	Unknown	キン肉マン
3281	Kinnikuman: Kinnikusei Oui Soudatsu-hen	Unknown	キン肉マン　キン肉星王位争奪編
3285	Himitsu no Akko-chan	Secrets of Akko-chan	ひみつのアッコちゃん
3290	Vampiyan Kids	Vampiyan Kids	バンパイヤン・キッズ
3294	Gasshin Sentai Mechander Robo	Combining Squadron Mechander Robo	合身戦隊メカンダーロボ
3295	Yatterman	Unknown	ヤッターマン
3297	Aria the Origination	Aria the Origination	ARIA The ORIGINATION
3298	Hatenkou Yuugi	Hatenkou Yugi	破天荒遊戯
3299	H2O: Footprints in the Sand	H2O:Footprints in the Sand	H2O ~FOOTPRINTS IN THE SAND~
3305	Muteki Koujin Daitarn 3	Unknown	無敵鋼人ダイターン３
3312	Dr. Slump	Unknown	ドクタースランプ
3313	Montana Jones	Unknown	モンタナ・ジョーンズ
3315	Kikou Keisatsu Metal Jack	Unknown	機甲警察 メタルジャック
3317	Uchuusen Sagittarius	Unknown	宇宙船サジタリウス
3322	Wagaya no Oinari-sama.	Our Home's Fox Deity	我が家のお稲荷さま。
3325	Yuusha Exkaiser	The Brave Fighter Exkizer	勇者エクスカイザー
3327	Giant Gorg	Giant Gorg	巨神ゴーグ〈ジャイアントゴーグ〉
3332	Stop!! Hibari-kun!	Unknown	ストップ！！ひばりくん！
3335	Haikara-san ga Tooru	Smart-san	はいからさんが通る
3342	Mnemosyne: Mnemosyne no Musume-tachi	Rin:Daughters of Mnemosyne	Mnemosyne－ムネモシュネの娘たち－
3345	Mikan Enikki	Unknown	みかん絵日記
3349	Kiddy GiRL-AND	Kiddy Girl-AND	キディ・ガーランド
3355	Fortune Dogs	Unknown	ふぉうちゅんドッグす
3356	Mahoutsukai Sally	Sally the Witch	魔法使いサリー
3358	Kure-nai	Kurenai	紅
3359	Amatsuki	Amatsuki	あまつき
3361	UFO Senshi Dai Apolon	Unknown	ＵＦＯ戦士ダイアポロン
3363	RD Sennou Chousashitsu	Unknown	RD 潜脳調査室
3366	Persona: Trinity Soul	Persona:Trinity Soul	ペルソナ 〜トリニティ・ソウル〜
3369	Shoubushi Densetsu Tetsuya	Unknown	勝負師伝説哲也
3372	RGB Adventure	RGB Adventure	RGBアドベンチャ
3388	Majokko Megu-chan	Unknown	魔女っ子メグちゃん
3389	Bus Gamer	Unknown	BUS GAMER
3391	Maicching Machiko-sensei	Miss Machiko	まいっちんぐマチコ先生
3399	Rokushin Gattai GodMars	God Mars	六神合体ゴッドマーズ
3407	Blassreiter	Blassreiter	ブラスレイター
3414	Hula Kappa	Unknown	フラカッパー
3418	Jungle no Ouja Taa-chan	Unknown	ジャングルの王者ターちゃん
3420	Shigofumi	Shigofumi:Letters from the Departed	シゴフミ
3424	Porphy no Nagai Tabi	The Orphans of Simitra	ポルフィの長い旅
3425	Meiken Lassie	Unknown	名犬ラッシー
3432	Chou Mashin Eiyuuden Wataru	Super Demon Hero Wataru	超魔神英雄伝ワタル
3433	Go-Q-Choji Ikkiman	Battle Ball	剛Q超児イッキマン
3434	Hey! Bumboo	Bumpety Boo	へーい！ブンブー
3435	Joou Heika no Petite Angie	Angie Girl	女王陛下のプティアンジェ
3436	Meme Iroiro Yume no Tabi	The Many Dream Journeys of Meme	ミームいろいろ夢の旅
3437	Mister Ajikko	Unknown	ミスター味っ子
3438	Moero! Top Striker	Top Striker	燃えろ! トップストライカー
3444	The☆Ultraman	Unknown	ザ☆ウルトラマン
3451	Space Oz no Bouken	The Wonderful Galaxy of Oz	スペース・オズの冒険
3455	To LOVE-Ru	To LOVE Ru	To LOVEる -とらぶる-
3457	Vampire Knight	Vampire Knight	ヴァンパイア騎士〈ナイト〉
3458	Pi Po Pa Po Patrol-kun	Pi Po Pa Po Patrol	ピポパポパトルくん
3460	Bosco Daibouken	Bosco Adventure	ボスコアドベンチャー
3464	Kemeko Deluxe!	Unknown	ケメコデラックス！
3467	Nogizaka Haruka no Himitsu	Haruka Nogizaka's Secret	乃木坂春香の秘密
3470	Special A	Special A (S.A)	スペシャル・エー
3486	Yuusha Tokkyuu Might Gaine	Unknown	勇者特急マイトガイン
3493	Ryuusei no Rockman Tribe	Mega Man Star Force Tribe	流星のロックマン トライブ
3500	Yume Miru, Anime: on-chan	Unknown	ユメミル、アニメ「onちゃん」
3501	Wellber no Monogatari: Sisters of Wellber Zwei	Sisters of Wellber Zwei	ウエルベールの物語 ～Sisters of Wellber～ 第二幕
3503	Kanokon	Kanokon:The Girl Who Cried Fox	かのこん
3505	Yuusha Shirei Dagwon	Unknown	勇者指令ダグオン
3514	Noramimi	Unknown	のらみみ
3519	Garakuta-doori no Stain	Mr. Stain on Junk Alley	ガラクタ通りのステイン
3545	Kochira Katsushikaku Kameari Kouenmae Hashutsujo	Unknown	こちら葛飾区亀有公園前派出所 (1996)
3549	Allison to Lillia	Allison & Lillia	アリソンとリリア
3550	Midori no Makibao	Green Makibao	みどりのマキバオー
3561	Dennou Boukenki Webdiver	Brain Adventure Record Webdiver	電脳冒険記ウェブダイバー
3568	Ganbarist! Shun	Unknown	ガンバリスト! 駿
3571	Mach GoGoGo (1997)	Speed Racer X	マッハGoGoGo
3572	Macross F	Macross Frontier	マクロスF（フロンティア）
3573	Moegaku★5	Unknown	もえがく★５
3576	Kodai Ouja Kyouryuu King	Dinosaur King	古代王者 恐竜キング Ｄキッズアドベンチャー
3577	Kyouran Kazoku Nikki	Unknown	狂乱家族日記
3579	Getter Robo	Getter Robo	ゲッターロボ
3588	Soul Eater	Soul Eater	ソウルイーター
3594	Tears to Tiara	Tears to Tiara	ティアーズ・トゥ・ティアラ
3604	Hidamari Sketch x 365	Hidamari Sketch x 365	ひだまりスケッチ×365
3609	Kikou Kantai Dairugger XV	Armored Fleet Dairugger XV	機甲艦隊ダイラガーXV
3613	Toshokan Sensou	Library Wars	図書館戦争
3614	Yakushiji Ryouko no Kaiki Jikenbo	Ryoko's Case File	薬師寺涼子の怪奇事件簿
3615	Neo Angelique Abyss	Unknown	ネオアンジェリーク Abyss
3616	Kamen no Maid Guy	Unknown	仮面のメイドガイ
3619	Nanako SOS	Nanako SOS	ななこSOS
3627	D.C.II S.S.: Da Capo II Second Season	Unknown	D.C.II S.S. ～ダ・カーポII セカンドシーズン～
3630	Miracle Shoujo Limit-chan	Unknown	ミラクル少女リミットちゃん
3631	Aoi Blink	Blue Blink	青いブリンク
3637	Bouken Yuuki Pluster World	Adventure Hero Pluster World	冒険遊記プラスターワールド
3638	Kaiketsu Zorori	Kaiketsu Zorori	かいけつゾロリ
3653	Kurogane no Linebarrels	Linebarrels of Iron	鉄のラインバレル
3654	Macademi Wasshoi!	Unknown	まかでみWAっしょい！
3655	Nabari no Ou	Nabari no Ou	隠の王
3656	Monochrome Factor	Unknown	モノクローム･ファクター
3660	Mahou no Idol Pastel Yumi	Magical Idol Pastel Yumi	魔法のアイドル パステルユーミ
3667	Strike Witches	Strike Witches	ストライクウィッチーズ
3668	Telepathy Shoujo Ran	Unknown	テレパシー少女 蘭
3670	Kikou Souseiki Mospeada	Genesis Climber Mospeada	機甲創世記モスピーダ
3672	Tottemo! Luckyman	Unknown	とっても！ラッキーマン
3673	Nijuu Mensou no Musume	The Daughter of 20 Faces	二十面相の娘
3676	Machine Robo: Cronos no Dai Gyakushuu	Machine Robo:Revenge of Cronos	マシンロボ クロノスの大逆襲
3683	Kabatotto	Hippo and Thomas	カバトット
3689	Hatsumei Boy Kanipan	Unknown	発明BOYカニパン
3690	Chou Hatsumei Boy Kanipan	Unknown	超発明BOYカニパン
3691	Watashi to Watashi: Futari no Lotte	The Two Lottes	わたしとわたし～ふたりのロッテ
3692	Yes! Precure 5 GoGo!	Unknown	Yes! プリキュア5 GoGo!
3701	Kaiba	Kaiba	カイバ
3704	Zenryoku Usagi	Unknown	全力ウサギ
3710	Hakaba Kitarou	Graveyard Kitaro	墓場鬼太郎
3712	Zero no Tsukaima: Princesses no Rondo	The Familiar of Zero:Rondo of Princesses	ゼロの使い魔 ～三美姫（プリンセッセ）の輪舞（ロンド）～
3713	Jigoku Shoujo Mitsuganae	Hell Girl:Three Vessels	地獄少女 三鼎
3723	Koala Boy Kokki	The Adventures of the Little Koala	コアラボーイコッキィ
3724	Taiko no Tatsujin	Taiko Drum Master	太鼓の達人
3731	Itazura na Kiss	ItaKiss	イタズラなKiss
3736	Parappa the Rapper	Unknown	パラッパラッパー
3737	Usavich	Usavich	ウサビッチ
3738	Usavich II	Usavich II	ウサビッチ
3750	Maria-sama ga Miteru 4th	Maria Watches Over Us Season 4	マリア様がみてる〜４th〜
3754	Tongari Boushi no Memole	Unknown	とんがり帽子のメモル
3761	Wanwan Sanjuushi	Dogtanian and the Three Muskehounds	ワンワン三銃士
3765	Pygmalio	Unknown	ピグマリオ
3768	Play Ball	Play Ball	プレイボール
3769	Play Ball 2nd	Play Ball 2nd	プレイボール2nd
3772	Saiko Robot Kombock	Cubix	로보짱 큐빅스
3776	Go! Go! Itsutsugo Land	Unknown	ゴーゴー五つ子ら・ん・ど
3800	Arrow Emblem Grand Prix no Taka	Super Grand Prix	アローエンブレム　グランプリの鷹
3806	Sasuga no Sarutobi	Amazing Sarutobi	さすがの猿飛
3807	Honoo no Alpenrose: Judy & Randy	Alpenrose	炎のアルペンローゼ・ジュディ＆ランディ
3808	Futari Daka	Futari Daka	ふたり鷹
3809	Shirayuki Hime no Densetsu	The Legend of Snow White	白雪姫の伝説
3810	Mori no Youki na Kobito-tachi: Belfy to Lillibit	The Littl' Bits	森の陽気な小人たち ベルフィーとリビット
3811	Hoshi no Oujisama Petit Prince	The Prince of the Stars:Le Petit Prince	星の王子さま　プチ・プランス
3812	Yume no Hoshi no Button Nose	Dream Star Button Nose	夢の星のボタンノーズ
3819	Sasurai no Taiyou	Nozomi In The Sun	さすらいの太陽
3822	Sougen no Shoujo Laura	Laura, Girl of the Prairies	草原の少女ローラ
3823	Little Lulu to Chicchai Nakama	Little Lulu	リトル・ルルとちっちゃい仲間
3825	Dokaben	Unknown	ドカベン
3827	Ore wa Teppei	My Name Is Teppei	おれは鉄兵
3834	Hoshi no Ko Chobin	Starchild Chobin	星の子チョビン
3835	Ai no Gakkou Cuore Monogatari	Unknown	愛の学校 クオレ物語
3836	Meiken Jolie	Belle and Sebastian	名犬ジョリィ
3837	Mashin Eiyuuden Wataru	Unknown	魔神英雄伝ワタル
3838	Himitsu no Akko-chan 2	Unknown	ひみつのアッコちゃん２
3839	Himitsu no Akko-chan 3	Unknown	ひみつのアッコちゃん 第３期
3840	Crystal Blaze	Glass Maiden	クリスタル ブレイズ
3841	Chi's Sweet Home	Unknown	チーズスイートホーム
3844	Apache Yakyuugun	Apache Baseball Team	アパッチ野球軍
3845	Mahoutsukai Chappy	Unknown	魔法使いチャッピー
3846	Microid S	Unknown	ミクロイドＳ
3858	Konchuu Monogatari Minashigo Hutch	The Adventures of Hutch the Honeybee	昆虫物語みなしごハッチ
3859	Top Secret: The Revelation	Unknown	秘密（トップシークレット） The Revelation
3869	Sakura Momoko Gekijou: Coji-Coji	Coji-Coji	さくらももこ劇場 コジコジ
3870	Kick no Oni	Demon of the Kick	キックの鬼
3873	Honey Honey no Suteki na Bouken	Honey Honey's Wonderful Adventures	ハニーハニーのすてきな冒険
3874	Ashita e Free Kick	Unknown	あしたへフリーキック
3875	Mahoutsukai Sally 2	Unknown	魔法使いサリー２
3876	Maeterlinck no Aoi Tori: Tyltyl Mytyl no Bouken Ryokou	Unknown	メーテルリングの青い鳥 チルチルミチルの冒険旅行
3877	Sasurai no Shoujo Nell	Nell the Wandering Girl	さすらいの少女ネル
3878	Mahou Shoujo Lalabel	Unknown	魔法少女ララベル
3879	Paris no Isabelle	Unknown	巴里のイザベル
3880	Makyou Densetsu Acrobunch	Unknown	魔境伝説アクロバンチ
3881	Majokko Tickle	Unknown	魔女っ子チックル
3885	Sugar Bunnies	Sugar Bunnies	シュガーバニーズ
3900	Ougon Bat	Golden Bat	黄金バット
3907	Ginga Sengoku Gunyuuden Rai	Galaxy Warring State Chronicle Rai	銀河戦国群雄伝ライ
3909	Bikkuriman	Unknown	ビックリマン
3915	Time Bokan	Time Fighters	タイムボカン
3927	Mobile Suit Gundam 00 Second Season	Mobile Suit Gundam 00:Second Season	機動戦士ガンダム00 セカンドシーズン
3932	Magnerobo Ga-Keen	Unknown	マグネロボ・ガ・キーン
3935	Karakuri Kiden: Hiwou Senki	Hiwou War Chronicles	機巧奇傳　ヒヲウ戦記
3936	Personal Computer Travel Tanteidan	Superbook 2	パソコントラベル探偵団
3937	Takoyaki Mant-Man	Takoyaki Capeman	たこやきマントマン
3947	Jarinko Chie (TV)	Unknown	じゃりン子チエ
3958	Kannagi	Kannagi:Crazy Shrine Maidens	かんなぎ
3969	Kagaku Kyuujo-tai TechnoVoyager	Thunderbirds 2086	科学救助隊テクノボイジャー
3972	Yu☆Gi☆Oh! 5D's	Yu-Gi-Oh! 5D's	遊☆戯☆王5D's（ファイブディーズ）
3974	Tetsuwan Birdy Decode	Birdy the Mighty:Decode	鉄腕バーディー (2008)
3975	Uchi no 3 Shimai	Unknown	うちの3姉妹
4013	Paul no Miracle Daisakusen	Paul in Fantasy Island	ポールのミラクル大作戦
4021	Seiyou Kottou Yougashiten: Antique	Antique Bakery	西洋骨董洋菓子店 ~アンティーク~
4023	Kitty's Paradise	Hello Kitty's Paradise	キティズパラダイス
4024	Sanrio Anime Sekai Meisaku Gekijou	Hello Kitty's Furry Tale Theater	サンリオ・アニメ世界名作劇場
4025	Asobou! Hello Kitty	Unknown	あそぼう!! ハローキティ
4028	Slayers Revolution	Unknown	スレイヤーズ
4038	Zettai Karen Children	Psychic Squad	絶対可憐チルドレン
4039	Golgo 13 (TV)	Golgo 13	ゴルゴ13
4044	Youkai Ningen Bem	Unknown	妖怪人間ベム
4049	Mafukiden: Pandarian	Pandalian	魔豆奇伝パンダリアン
4050	Kouchuu Ouja Mushiking: Mori no Tami no Densetsu	Mushiking:The Guardians of the Forest	甲虫王者ムシキング ～森の民の伝説～
4051	Net Ghost Pipopa	Web Ghosts PiPoPa	ネットゴーストPIPOPA
4052	Medarot Damashii	Medabots Spirits	メダロット魂
4054	Norimono Oukoku BuBu ChaCha	Unknown	ぶぶチャチャ
4056	Masuda Kousuke Gekijou Gag Manga Biyori 3	Unknown	増田こうすけ劇場 ギャグマンガ日和3
4060	Grimm Meisaku Gekijou	Grimm's Fairy Tale Classics	グリム名作劇場
4061	Grimm Masterpiece Theater II	Grimm's Fairy Tale Classics	新グリム名作劇場
4062	Musashi no Ken	Unknown	六三四の剣
4063	Sekirei	Sekirei	セキレイ
4066	Tytania	Tytania	タイタニア
4067	Shin Megami Tensei Devil Children	Unknown	真・女神転生 デビチル
4068	Shin Megami Tensei Devil Children: Light & Dark	Unknown	真･女神転生Ｄチルドレン ライト＆ダーク
4073	Kyouryuu Daisensou Izenborg	Unknown	恐竜大戦争アイゼンボーグ
4080	Kyou kara Maou! 3rd Series	Unknown	今日からマ王！第3シリーズ
4081	Natsume Yuujinchou	Natsume's Book of Friends	夏目友人帳
4083	Wonder Beat Scramble	Unknown	ワンダービート S(スクランブル)
4086	Muka Muka Paradise	Unknown	ムカムカパラダイス
4087	Michiko to Hatchin	Michiko & Hatchin	ミチコとハッチン
4088	Wonder 3	The Amazing 3	ワンダー３
4101	Wan Wan Celepoo Soreyuke! Tetsunoshin	Unknown	ワンワンセレプー それゆけ！徹之進
4104	Mini Moni the TV	Unknown	ミニモニ. じゃてーびぃ
4113	Mahou no Mako-chan	Unknown	魔法のマコちゃん
4114	Onegai My Melody: Kuru Kuru Shuffle!	Unknown	おねがいマイメロディ くるくるシャッフル！
4119	Juushin Liger	Bio Armor Ryger	獣神ライガー
4121	Meimon! Daisan Yakyuubu	Meimon! The Third Baseball Club	名門！第三野球部
4132	Wakakusa no Yon Shimai	Little Women	若草の四姉妹
4151	Blade of the Immortal	Blade of the Immortal	無限の住人
4154	Time Bokan Series: Yattodetaman	Firebird	タイムボカンシリーズ　ヤットデタマン
4181	Clannad: After Story	Clannad ~After Story~	CLANNAD〜AFTER STORY〜 クラナド アフターストーリー
4183	Uchuu Taitei God Sigma	Space Emperor God Sigma	宇宙大帝ゴッドシグマ
4186	Chrome Shelled Regios	Chrome Shelled Regios	鋼殻のレギオス
4189	Fuyu no Sonata	Unknown	冬のソナタ
4191	Popolocrois Monogatari	Popolocrois Monogatari	ポポロクロイス物語
4192	Hayate no Gotoku!!	Hayate the Combat Butler!!	ハヤテのごとく!!
4196	Ikkitousen: Great Guardians	Unknown	一騎当千:Great Guardians
4197	Blue Dragon: Tenkai no Shichi Ryuu	Blue Dragon:The Seven Dragons of the Heavens	BLUE DRAGON 天界の七竜
4198	Koutetsu Jeeg	Unknown	鋼鉄ジーグ
4199	Entaku no Kishi Monogatari: Moero Arthur	Unknown	円卓の騎士物語　燃えろアーサー
4208	Tetsujin 28-gou (1980)	The New Adventures of Gigantor	鉄人２８号 (1980)
4209	Mission-E	Unknown	MISSION-E
4211	Hareluya II Boy	Hareluya II Boy	ハレルヤIIBOY
4214	Rosario to Vampire Capu2	Rosario + Vampire Capu2	ロザリオとバンパイア Capu2
4224	Toradora!	Toradora!	とらドラ！
4240	Ginga Senpuu Braiger	Galactic Whirlwind Braiger	銀河旋風ブライガー
4242	Ginga Reppuu Baxingar	Galactic Gale Baxingar	銀河烈風バクシンガー
4244	Ginga Shippuu Sasuraiger	Galactic Gale Sasuraiger	銀河疾風サスライガー
4262	Koihime†Musou	Unknown	恋姫†無双
4264	Ultraviolet: Code 044	Ultraviolet:Code 044	ウルトラヴァイオレットコード044
4286	Bonobono (TV)	Bonobono	ぼのぼの
4314	Nanami-chan 2nd Series	Unknown	ななみちゃん 第2シリーズ
4316	Nanami-chan 3rd Series	Unknown	ななみちゃん 第三期
4331	Penguin no Mondai	Unknown	ペンギンの問題
4332	Seigi wo Aisuru Mono Gekkou Kamen	Unknown	正義を愛する者、月光仮面
4334	Heroman	Unknown	ヒーローマン
4339	Ashita e Attack!	Attack on Tomorrow	あしたへアタック！
4362	Fireball	Fireball	ファイアボール
4375	Kyoro-chan	Unknown	キョロちゃん
4382	Suzumiya Haruhi no Yuuutsu (2009)	The Melancholy of Haruhi Suzumiya Season 2	涼宮ハルヒの憂鬱
4383	Catman Series III	Unknown	キャットマン
4411	Mirai Robo Daltanias	Future Robo Daltanius	未来ロボ ダルタニアス
4415	World Destruction: Sekai Bokumetsu no Rokunin	Sands of Destruction	ワールド・デストラクション ～世界撲滅の六人～
4416	Yuusha-Ou GaoGaiGar Final Grand Glorious Gathering	King of Braves GaoGaiGar Final Grand Glorious Gathering	勇者王ガオガイガーFINAL Grand Glorious Gathering
4427	Tatakae!! Ramenman	Fight!! Ramenman	闘将!!拉麺男
4439	Kurenai Sanshirou	Judo Boy	紅三四郎
4443	Duel Masters Charge	Unknown	デュエル・マスターズ　チャージ
4444	Zero Duel Masters	Unknown	ゼロ デュエル・マスターズ
4459	Ojarumaru	Prince Mackaroo	おじゃる丸
4468	Nagagutsu wo Haita Neko no Bouken	Unknown	長靴をはいた猫の冒険
4470	Gene Diver	Unknown	ジーンダイバー
4477	Nodame Cantabile: Paris-hen	Unknown	のだめカンタービレ 巴里編
4483	Mahoutsukai ni Taisetsu na Koto: Natsu no Sora	Someday's Dreamers II:Sora	魔法遣いに大切なこと ～夏のソラ～
4486	Getter Robo G	Getter Robo G	ゲッターロボG
4503	Choujikuu Kidan Southern Cross	Robotech Masters	超時空騎団サザンクロス
4504	Kinkyuu Hasshin Saver Kids	Emergency Departure Rescue Kids	緊急発進セイバーキッズ
4511	Hoero! Bun Bun	Unknown	ほえろブンブン
4514	Seton Doubutsuki: Kuma no Ko Jacky	Monarch:The Big Bear of Tallac	シートン動物記　くまの子ジャッキー
4515	Seton Doubutsuki: Risu no Banner	Bannertail:The Story of Gray Squirrel	シートン動物記　りすのバナ
4532	Taiyou no Yuusha Fighbird	Brave of the Sun Fighbird	太陽の勇者ファイバード
4536	Muteki Robo Trider G7	Invincible Robo Trider G7	無敵ロボトライダーG7
4547	RoboDz	Unknown	ロボディーズ-RoboDz-風雲篇
4548	Yozakura Quartet	Unknown	夜桜四重奏 ～ヨザクラカルテット～
4549	Hokuto no Ken: Raoh Gaiden Ten no Haoh	Legends of the Dark King:A Fist of the North Star Story	北斗の拳 ラオウ外伝 天の覇王
4550	Hyakko	Unknown	ヒャッコ
4551	Hakushaku to Yousei	Earl and Fairy	伯爵と妖精
4553	Sukima no Kuni no Polta	Unknown	スキマの国のポルタ
4554	Dokkiri Doctor	Startling Doctor	どっきりドクター
4563	Bakukyuu Hit! Crash B-Daman	Unknown	爆球HIT! クラッシュビーダマン
4574	Saikyou Robot Daiouja	Unknown	最強ロボ ダイオージャ
4581	Shikabane Hime: Aka	Corpse Princess:Aka	屍姫 赫
4584	Topo Gigio	Return of Topo Gigio	帰って来た　トッポ・ジージョ
4586	Daisuki! BuBu ChaCha	I love BuBu ChaCha	だいすき! ぶぶチャチャ
4591	Yoiko	Unknown	よいこ
4597	Kouya no Shounen Isamu	Unknown	荒野の少年イサム
4598	Urikupen Kyuujo-tai	Urikupen Rescue Team	ウリクペン救助隊
4599	Tanoshii Willow Town	Unknown	楽しいウイロータウン
4614	Moero Arthur: Hakuba no Ouji	Unknown	燃えろアーサー・白馬の王子
4615	Yama Nezumi Rocky Chuck	Fables of the Green Forest	山ねずみ ロッキーチャック
4616	Yumemiru Topo Gigio	Unknown	夢見るトッポ・ジージョ
4618	RideBack	Ride Back	ライドバック
4651	Yume no Crayon Oukoku	Crayon Kingdom of Dreams	夢のクレヨン王国
4654	Toaru Majutsu no Index	A Certain Magical Index	とある魔術の禁書目録
4657	Arad Senki: Slap Up Party	Unknown	アラド戦記 ～スラップアップパーティー～
4662	Neo Angelique Abyss: Second Age	Unknown	ネオアンジェリーク Abyss -Second Age-
4663	Tekken Chinmi	Iron Fist Chinmi	鉄拳チンミ
4667	B-Legend! Battle B-Daman Fire Spirits!	Battle B-Daman:Fire Spirits!	B-伝説(ビーレジェンド)! バトルビーダマン 炎魂(ファイヤースピリッツ!)
4684	Scarecrowman	Scarecrowman	スケアクロウマン
4690	Cyborg 009 (1979)	Cyborg 009	サイボーグ009
4709	Aesop's World	Unknown	イソップ・ワールド
4719	Queen's Blade: Rurou no Senshi	Queen's Blade:The Exiled Virgin	クイーンズブレイド 流浪の戦士
4720	White Album	White Album	ホワイトアルバム
4722	Skip Beat!	Skip Beat!	スキップ・ビート！
4723	Seishun Anime Zenshuu	Animated Classics of Japanese Literature	青春アニメ全集
4725	Ga-Rei: Zero	Ga-Rei-Zero	喰霊–零–
4726	Druaga no Tou: The Sword of Uruk	Tower of Druaga:The Sword of Uruk	ドルアーガの塔 ～the Sword of URUK～
4737	Himitsukessha Taka no Tsume	Eagle Talon	秘密結社 鷹の爪
4742	Papa to Odorou	Let's Dance with Papa	パパと踊ろう
4744	Akaneiro ni Somaru Saka	Akane Iro ni Somaru Saka	あかね色に染まる坂
4752	Vampire Knight: Guilty	Vampire Knight:Guilty	ヴァンパイア騎士〈ナイト〉Guilty
4773	Yamato Takeru	Unknown	ヤマトタケル
4782	Mama wa Poyopoyo Saurus ga Osuki	Mama Loves the Poyopoyo-Saurus	ママはぽよぽよザウルスがお好き
4789	ef: A Tale of Melodies.	ef - a tale of melodies.	ef - a tale of melodies.
4800	Huckleberry Finn Monogatari	Unknown	ハックルベリー・フィン物語
4801	Suhoyojeong Michel	Michel	수호요정 미셸
4807	Mashin Eiyuuden Wataru 2	Spirit Hero Wataru 2	魔神英雄伝ワタル2
4808	Hurricane Polymar	Hurricane Polymar	破裏拳ポリマー
4810	Shinzou Ningen Casshern	Neo Human Casshan	新造人間キャシャーン
4814	Junjou Romantica 2	Junjo Romantica 2	純情ロマンチカ2(に)
4823	Youkai Ningen Bem (2006)	Humanoid Monster Bem	妖怪人間ベム
4853	Tezuka Osamu no Don Dracula	Unknown	手塚治虫のドン・ドラキュラ
4879	Mouryou no Hako	Unknown	魍魎の匣
4884	Tales of the Abyss	Tales of the Abyss	テイルズ オブ ジ アビス
4896	Umineko no Naku Koro ni	Umineko:When They Cry	うみねこのなく頃に
4898	Kuroshitsuji	Black Butler	黒執事
4903	Kyou no 5 no 2 (TV)	Unknown	今日の５の２
4905	Mach Girl	Unknown	マッハガール
4908	Bihada Ichizoku	Unknown	美肌一族
4928	Idol Tenshi Youkoso Youko	Idol Angel Welcome Yoko	アイドル天使ようこそようこ
4929	Next Senki Ehrgeiz	Next War Chronicle Ehrgeiz	ネクスト戦記エーアガイツ
4933	Muu no Hakugei	The White Whale of Mu	ムーの白鯨
4935	Ikkyuu-san	Ikkyu the Little Monk	一休さん
4936	Ninja Hattori-kun	Ninja Hattori-kun	忍者ハットリくん
4940	Sabaku no Kaizoku! Captain Kuppa	Captain Kuppa	砂漠の海賊！ キャプテンクッパ
4962	Rokumon Tengai Mon Colle Knights	Six Gates Faraway Mon Colle Knights	六門天外モンコレナイト
4975	ChäoS;HEAd	ChäoS;HEAd	カオスヘッド
4981	Casshern Sins	Casshern Sins	キャシャーン SINS
4999	Asu no Yoichi!	Samurai Harem	明日のよいち！
5005	Tentai Senshi Sunred	Unknown	天体戦士サンレッド
5018	Piroppo	Unknown	ピロッポ
5022	Toushi Gordian	Gordian Warrior	闘士ゴーディアン
5023	Ninpuu Kamui Gaiden	Unknown	忍風カムイ外伝
5027	Stitch!	Stitch!	スティッチ！
5028	Major S5	Unknown	メジャー
5030	Maria†Holic	Maria†Holic	まりあ†ほりっく
5032	Cobra The Animation	Unknown	COBRA THE ANIMATION
5034	Shikabane Hime: Kuro	Corpse Princess:Kuro	屍姫 玄
5039	Kurozuka	Kurozuka	黒塚
5040	One Outs	One Outs	ワンナウツ
5041	Guin Saga	Unknown	グイン・サーガ
5052	Eightman	8 Man	エイトマン
5070	Beast Wars Second Chou Seimeitai Transformers	Unknown	ビーストウォーズⅡ（セカンド） 超生命体トランスフォーマー
5071	Croket!	Croket!	コロッケ！
5074	Tetsuwan Birdy Decode:02	Birdy the Mighty:Decode 02	鉄腕バーディー DECODE:02
5075	Yuusha Keisatsu J-Decker	Unknown	勇者警察ジェイデッカー
5079	Kurokami The Animation	Kurokami The Animation	黒神 The Animation
5081	Bakemonogatari	Bakemonogatari	化物語
5082	Battle Spirits: Shounen Toppa Bashin	Unknown	バトルスピリッツ 少年突破バシン
5088	Fabre-sensei wa Meitantei	Dr. Fabre is a Detective	ファーブル先生は名探偵
5089	Noramimi 2	Unknown	のらみみ2
5091	Manga Sarutobi Sasuke	Ninja the Wonder Boy	まんが猿飛佐助
5104	Andes Shounen Pepero no Bouken	Adventures of Pepero the Andes Boy	アンデス少年ペペロの冒険
5112	Akikan!	Akikan!	アキカン!
5114	Fullmetal Alchemist: Brotherhood	Fullmetal Alchemist:Brotherhood	鋼の錬金術師 FULLMETAL ALCHEMIST
5129	Jikuu Boukenki Zentrix	Zentrix	時空冒険記　ゼントリックス
5131	Groizer X	Gloizer X	グロイザーＸ
5132	Let's Nupu Nupu	Let's Nupu Nupu	LET'S　ぬぷぬぷっ
5140	Karaoke Senshi Mike-tarou	Unknown	カラオケ戦士 マイク次郎
5141	Taishou Yakyuu Musume.	Taisho Baseball Girls	大正野球娘。
5143	Tokusou Kihei Dorvack	Special Powered Armor Troop Dorvack	特装機兵ドルバック
5150	Hatsukoi Limited.	Hatsukoi Limited	初恋限定。
5153	Kikou Kai Galient	Unknown	機甲界ガリアン
5155	Genji Monogatari Sennenki	Millennium Old Journal:Tale of Genji	源氏物語千年紀Genji
5162	Minami-ke Okaeri	Unknown	みなみけ おかえり
5184	Negibouzu no Asatarou	Unknown	ねぎぼうずのあさたろう
5189	Chou Tokkyuu Hikarian	Super Express Hikarian	超特急ヒカリアン
5197	Dragon League	Dragon League	ドラゴンリーグ
5200	Offside (TV)	Unknown	オフサイド
5201	Salad Juu Yuushi Tomatoman	Tomatoman	サラダ十勇士トマトマン
5203	Shin Maple Town Monogatari: Palm Town-hen	Palm Town	新メイプルタウン物語 パームタウン編
5217	Goal FH: Field Hunter	Goal Field Hunter	ゴールFH (フィールド・ハンター)
5220	Shangri-La	Shangri-La	シャングリ・ラ
5223	Robotan (1986)	Unknown	ロボタン
5226	Souten Kouro	Beyond the Heavens	蒼天航路
5231	Inazuma Eleven	Unknown	イナズマイレブン
5233	Slayers Evolution-R	Unknown	スレイヤーズ EVOLUTION-R
5234	Zettai Yareru Greece Shinwa	Unknown	絶対やれるギリシャ神話
5235	Live On Cardliver Kakeru	Unknown	ライブオン CARDLIVER 翔
5241	Mofu☆Mofu	Unknown	モフ☆モフ
5249	Mitsume ga Tooru	Unknown	三つ目がとおる
5250	God Mazinger	Unknown	ゴッドマジンガー
5258	Hajime no Ippo: New Challenger	Fighting Spirit:New Challenger	はじめの一歩 新シリーズ
5262	Shugo Chara!! Doki	Shugo Chara!! Doki	しゅごキャラ！！どきっ
5267	Gamba no Bouken	Adventure of Gamba	ガンバの冒険
5273	Miracle Giants Doumu-kun	Unknown	ミラクル・ジャイアンツ童夢くん
5274	Magical★Taruruuto-kun	Unknown	まじかる☆タルるートくん
5276	Happy Happy Clover	Unknown	はぴはぴクローバー
5277	Sekirei: Pure Engagement	Sekirei:Pure Engagement	セキレイ～Pure Engagement～
5278	Totsugeki! Pappara-tai	Charge! Pappara Team	突撃! パッパラ隊
5287	Ippatsu Kanta-kun	Unknown	一発貫太くん
5292	Getter Robo Go	Getter Robo Go	ゲッターロボ號
5300	Zoku Natsume Yuujinchou	Natsume's Book of Friends Season 2	続 夏目友人帳
5304	Akiba-chan	Akiba-chan	アキバちゃん
5307	Sora wo Kakeru Shoujo	The Girl Who Leapt Through Space	宇宙をかける少女
5311	Astroganger	Unknown	アストロガンガー
5337	Bakugan Battle Brawlers: New Vestroia	Bakugan:New Vestroia	爆丸バトルブローラーズ  New Vestroia
5341	Ookami to Koushinryou II	Spice and Wolf II	狼と香辛料II
5342	Asura Cryin'	Unknown	アスラクライン
5343	Monkey Punch: Manga Katsudou Daishashin	Unknown	モンキー・パンチ　漫画活動大写真
5344	Time Bokan Series: Itadakiman	Unknown	タイムボカンシリーズ　イタダキマン
5355	Sengoku Basara	Sengoku Basara:Samurai Kings	戦国BASARA
5356	Canaan	Canaan	CANAAN
5374	Miracle! Mimika	Miracle! Mimika	味楽る!ミミカ
5375	Gakkyuu Ou Yamazaki	King of Classroom, Yamazaki	学級王ヤマザキ
5395	Nekketsu Saikyou Go-Saurer	Unknown	熱血最強ゴウザウラー
5397	Usavich III	Usavich III	ウサビッチ III
5420	Kemono no Souja Erin	Erin	獣の奏者エリン
5440	Ougon Yuusha Goldran	The Brave of Gold Goldran	黄金勇者ゴルドラン
5454	Yoku Wakaru Gendai Mahou	Modern Magic Made Simple	よくわかる現代魔法
5468	Yattokame Tanteidan	Unknown	やっとかめ探偵団
5473	Tsuri Baka Nisshi	Unknown	釣りバカ日誌
5474	Yobarete Tobidete Akubi-chan	Unknown	よばれてとびでて！アクビちゃん
5475	Time Bokan 2000: Kaitou Kiramekiman	Unknown	タイムボカン2000 怪盗きらめきマン
5476	Fushigi na Melmo	Marvelous Melmo	ふしぎなメルモ
5477	Gozonji! Gekkou Kamen-kun	Unknown	ごぞんじ！月光仮面くん
5478	Bikkuriman 2000	Unknown	ビックリマン2000
5485	Shin Mazinger Shougeki! Z-hen	Mazinger Edition Z:The Impact!	Ｚマジンガー; 真マジンガー 衝撃！Z編
5494	Konnichiwa Anne: Before Green Gables	Before Green Gables	こんにちは アン ～Before Green Gables
5504	Shinkyoku Soukai Polyphonica Crimson S	Polyphonica Crimson S	神曲奏界ポリフォニカcrimsonS
5505	Viper's Creed	Viper's Creed	ヴァイパーズ・クリード
5507	Senjou no Valkyria	Valkyria Chronicles	戦場のヴァルキュリア
5520	Onegai My Melody Sukkiri♪	Unknown	おねがい マイメロディ すっきり♪
5525	07-Ghost	07-Ghost	セブンゴースト
5530	Pandora Hearts	PandoraHearts	パンドラハーツ
5534	Hai! Akko Desu	Unknown	ハーイあっこです
5594	Fuusen no Doratarou	Unknown	フーセンのドラ太郎
5597	Natsu no Arashi!	Unknown	夏のあらし！
5600	Little El Cid no Bouken	Adventures of Little El Cid	リトル・エル・シドの冒険
5618	Dokonjou Gaeru	Unknown	ど根性ガエル
5628	21 Emon	Unknown	21エモン
5630	Higashi no Eden	Eden of The East	東のエデン
5636	Restol: Teugsu Gujo Dae	RESTOL, The Full-Armed Rescue Squad	레스톨 특수 구조대
5658	Great Mazinger	Unknown	グレートマジンガー
5670	GA: Geijutsuka Art Design Class	Unknown	GA 芸術科アートデザインクラス
5671	Saki	Unknown	咲-Saki-
5675	Basquash!	Unknown	バスカッシュ！
5678	Kobato.	Kobato.	こばと。
5680	K-On!	K-ON!	けいおん!
5682	Phantom: Requiem for the Phantom	Phantom:Requiem for the Phantom	Phantom 〜Requiem for the Phantom〜
5684	Fresh Precure!	Unknown	フレッシュプリキュア！
5688	Gegege no Kitarou (1968)	Unknown	ゲゲゲの鬼太郎
5690	Nodame Cantabile: Finale	Unknown	のだめカンタービレ フィナーレ
5702	Sora wo Miageru Shoujo no Hitomi ni Utsuru Sekai	Unknown	空を見上げる少女の瞳に映る世界
5712	Tanoshii Muumin Ikka Bouken Nikki	Unknown	楽しいムーミン一家 冒険日記
5725	Kodai Ouja Kyouryuu King: Yokuryuu Densetsu	Dinosaur King D-Kids Adventure:Pterosaur Legend	古代王者恐竜キング Dキッズ・アドベンチャー翼龍伝説
5734	Tayutama: Kiss on My Deity	Unknown	タユタマ -Kiss on my Deity-
5760	Dororo to Hyakkimaru	Dororo	どろろと百鬼丸
15059	Initial D Fifth Stage	Unknown	頭文字 D Fifth Stage
5763	Uchuu Kuubo Blue Noah	Space Carrier Blue Noah	宇宙空母ブルーノア
5809	Kupu~!! Mamegoma!	Unknown	クプ~!!まめゴマ!
5810	Sakuran Boy DT	Unknown	さくらんBOY DT
5821	Zenmai Zamurai	Unknown	ぜんまいざむらい
5829	Blocker Gundan IV Machine Blaster	Unknown	ブロッカー軍団Ⅳマシーンブラスター
5830	Tsurupika Hagemaru-kun	Little Baldy Hagemaru	つるピカハゲ丸くん
5832	Tiger Mask Nisei	Unknown	タイガーマスク二世
5833	Tondemo Senshi Muteking	Unknown	とんでも戦士ムテキング
5834	Kyojin no Hoshi	Unknown	巨人の星
5835	Hanasakeru Seishounen	Unknown	花咲ける青少年
5841	Yume wo Kanaeru Zou	Unknown	夢をかなえるゾウ
5854	Shin Chou Kyou Ryo: Condor Hero III	Legend of the Condor Hero III	神鵰俠侶 III:十六年之約
5883	Examurai Sengoku	Unknown	エグザムライ戦国
5886	Kujira no Josephina	Unknown	くじらのホセフィーナ
5891	Kousoku Denjin Albegus	Unknown	光速電神アルベガス
5908	Chinpui	Unknown	チンプイ
5909	Seitokai no Ichizon	Student Council's Discretion	生徒会の一存
5914	Kanamemo	Unknown	かなめも
5935	Animation Kikou: Marco Polo no Bouken	Marco Polo's Adventures	アニメーション紀行 マルコ・ポーロの冒険
5938	Onegai♪My Melody Kirara★	Unknown	おねがい♪マイメロディ きららっ★
5940	Seiken no Blacksmith	The Sacred Blacksmith	聖剣の刀鍛冶（ブラックスミス）
5941	Cross Game	Cross Game	クロスゲーム
5945	Element Hunters	Unknown	エレメントハンター
5953	Mahou no Princess Minky Momo: Yume wo Dakishimete	Magical Princess Minky Momo:Hold on to Your Dreams	魔法のプリンセス　ミンキーモモ（夢を抱きしめて）
5958	Sora no Otoshimono	Heaven's Lost Property	そらのおとしもの
5962	Metal Fight Beyblade	Metal Fight Beyblade	メタルファイト ベイブレード
5967	Kinnikuman II Sei: Ultimate Muscle	Unknown	キン肉マンII世 ULTIMATE MUSCLE
5968	Kinnikuman II Sei: Ultimate Muscle 2	Unknown	キン肉マンII世 ULTIMATE MUSCLE 2
5973	Fight Ippatsu! Juuden-chan!!	Juden Chan Recharged	ファイト一発！充電ちゃん！！
5983	Higepiyo	Unknown	ひげぴよ, ヒゲぴよ
5984	Ristorante Paradiso	Ristorante Paradiso	リストランテパラディーゾ
5992	Tsuyoshi Shikkari Shinasai	Unknown	ツヨシしっかりしなさい
5997	Sabu to Ichi Torimono Hikae	Sabu & Ichi's Arrest Warrant	佐武と市捕物控
6008	Jewelpet	Jewelpet	ジュエルペット
6012	Kinpatsu no Jeanie	Unknown	金髪のジェニー
6023	Nogizaka Haruka no Himitsu: Purezza	Unknown	乃木坂春香の秘密ぴゃあれっつぁ
6024	Chi's Sweet Home: Atarashii Ouchi	Chi's New Address	チーズスイートホーム あたらしいおうち
6030	Needless	Needless	ニードレス
6033	Dragon Ball Kai	Dragon Ball Z Kai	ドラゴンボール改
6045	Kimi ni Todoke	Kimi ni Todoke:From Me to You	君に届け
6055	F	Unknown	Ｆ-エフ
6056	Sasuke	Unknown	サスケ
6067	Moeru! Oniisan	The Burning Wild Man	燃える！お兄さん
6069	Gregory Horror Show	Gregory Horror Show	グレゴリーホラーショー
6075	Ai no Wakakusa Yama Monogatari	Unknown	愛の若草山物語
6077	Akubi Girl	Unknown	アクビガール
6087	Jetter Mars	Unknown	ジェッターマルス
6093	Anmitsu Hime	Princess Anmitsu	あんみつ姫
6098	Sora no Manimani	At The Mercy of The Sky	宙のまにまに
6112	Shin Koihime†Musou	Unknown	真恋姫†無双 ～乙女繚乱☆三国志演義～
6114	Rainbow: Nisha Rokubou no Shichinin	Rainbow	RAINBOW 二舎六房の七人
6116	Mainichi Kaasan	Kaasan:Mom's Life	毎日かあさん
6117	Gokujou!! Mecha Mote Iinchou	The Best!! Extremely Cool Student Council President	極上!!めちゃモテ委員長
6119	Cookin' Idol Ai! Mai! Main!	Unknown	クッキンアイドル　アイ！マイ！まいん！
6129	Umi Monogatari: Anata ga Ite Kureta Koto	Umi Monogatari	うみものがたり　～あなたがいてくれたコト～
6130	Marie & Gali	Unknown	マリー & ガリー
6131	Charady no Joke na Mainichi	Unknown	キャラディのジョークな毎日
6149	Chibi Maruko-chan (1995)	Little Miss Maruko	ちびまる子ちゃん
6164	Aoi Hana	Sweet Blue Flowers	青い花
6165	White Album 2nd Season	White Album Season 2	WHITE ALBUM 第2期
6166	Asobi ni Iku yo!	Cat Planet Cuties	あそびにいくヨ!
6195	Rita to Nantoka	Rita et Machin	リタとナントカ
6201	Princess Lover!	Unknown	プリンセスラバー!
6203	Sasameki Koto	Whispered Words	ささめきこと
6205	Kämpfer	Kämpfer	けんぷファー
6211	Tokyo Magnitude 8.0	Tokyo Magnitude 8.0	東京マグニチュード8.0
6213	Toaru Kagaku no Railgun	A Certain Scientific Railgun	とある科学の超電磁砲
6261	Koguma no Misha	Unknown	こぐまのミーシャ
6262	Manga Sekai Mukashibanashi	Manga Fairy Tales of the World	まんが世界昔ばなし
6277	Manga Nippon Mukashibanashi (1976)	Unknown	まんが日本昔ばなし（第2期）
6303	Perman	Unknown	パーマン
6311	Sarutobi Ecchan	Sarutobi Ecchan	さるとびエッちゃん
6324	Omamori Himari	Omamori Himari	おまもりひまり
6347	Baka to Test to Shoukanjuu	Baka & Test - Summon the Beasts	バカとテストと召喚獣
6374	Kagaku Ninja-tai Gatchaman II	Eagle Riders	科学忍者隊ガッチャマンII
6375	Kagaku Ninja-tai Gatchaman F	Eagle Riders (2)	科学忍者隊ガッチャマンF
6377	Zan Sayonara Zetsubou Sensei	Unknown	懺・さよなら絶望先生
6381	Strike Witches 2	Strike Witches 2	ストライクウィッチーズ 2
6383	Chargeman Ken!	Unknown	チャージマン研！
6397	Tentou Mushi no Uta	Song of the Ladybug	てんとう虫の歌
6425	Weiß Survive	Unknown	ヴァイス・サヴァイヴ
6428	Psychoarmor Govarian	Unknown	サイコアーマー ゴーバリアン
6444	Tegamibachi	Tegami Bachi:Letter Bee	テガミバチ
6448	Yuusei Shounen Papii	Prince Planet	遊星少年パピイ
6452	Akuu Daisakusen Srungle	Macron One	亜空大作戦　スラングル
6468	Tensai Bakabon	Unknown	天才バカボン
6472	Gakkou no Kowai Uwasa: Hanako-san ga Kita!!	Scary High School Rumors	学校のコワイうわさ　花子さんがきた！！
6481	Sugar Bunnies Fleur	Unknown	シュガーバニーズ フルール
6482	Sugar Bunnies Chocolate!	Unknown	シュガーバニーズ ショコラ！
6500	Seikon no Qwaser	The Qwaser of Stigmata	聖痕のクェイサー
6509	Kiteretsu Daihyakka	Kiteretsu Encyclopedia	キテレツ大百科
6511	Chou Seimeitai Transformers Beast Wars Neo	Beast Wars Neo	超生命体トランスフォーマー ビーストウォーズ・ネオ
6512	Nyan Koi!	Nyan Koi!	にゃんこい！
6520	Anime TV de Hakken! Tamagotchi	Animated Tamagotchi Found on Television!	アニメ　ＴＶで発見！！　たまごっち
6523	Porong Porong Pororo	Unknown	뽀롱뽀롱 뽀로로
6525	Peeping Life	Peeping Life:The Perfect Edition	ピーピング・ライフ
6547	Angel Beats!	Angel Beats!	Angel Beats!（エンジェルビーツ）
6560	Popee the Performer	Popee the Clown	POPEE the ぱフォーマー
6571	Koume-chan ga Iku!	Here Comes Koume!	小梅ちゃんが行く!!
6573	Darker than Black: Ryuusei no Gemini	Darker than Black:Gemini of the Meteor	DARKER THAN BLACK 流星の双子
6574	Hanamaru Youchien	Hanamaru Kindergarten	はなまる幼稚園
6582	Tentai Senshi Sunred 2nd Season	Unknown	天体戦士サンレッド
6583	Super Bikkuriman	Unknown	スーパービックリマン
6586	Yume-iro Pâtissière	Unknown	夢色パティシエール
6594	Katanagatari	Katanagatari	刀語
6604	Kuruneko	Unknown	くるねこ
6609	Pucca	Unknown	짜장소녀 뿌까
6625	Nono-chan	Unknown	ののちゃん
6629	Asari-chan	Unknown	あさりちゃん
6633	Queen's Blade: Gyokuza wo Tsugu Mono	Queen's Blade:Inheritor of the Throne	クイーンズブレイド 玉座を継ぐ者
6634	Sengoku Basara Ni	Sengoku Basara:Samurai Kings 2	戦国BASARA 弐
6636	Chou Kousoku Galvion	Super High Speed Galvion	超攻速ガルビオン
6645	Chu-Bra!!	Chu-Bra	ちゅーぶら!!
6658	Unko-san: Tsuiteru Hito ni Shika Mienai Yousei	Unknown	うんこさん ツイてる人にしか見えない妖精
6672	Video Senshi Lezarion	Video Warrior Laserion	ビデオ戦士レザリオン
6674	Reporter Blues	Unknown	レポーターブルース
6676	Asura Cryin' 2	Unknown	アスラクライン 2
6682	11eyes	11eyes	11eyes イレブンアイズ
6701	Jim Button	Unknown	ジムボタン
6702	Fairy Tail	Fairy Tail	FAIRY TAIL（フェアリーテイル）
6707	Kuroshitsuji II	Black Butler II	黒執事II
6712	Natsu no Arashi! Akinaichuu	Summer Storm! Open for Business	夏のあらし!春夏冬中
6727	Mechakko Dotakon	Mechanical Boy Dotakon	めちゃっこドタコン
6730	Tonde Mon Pe	Unknown	とんでモン・ぺ
6731	Ultraman Kids no Kotowaza Monogatari	Unknown	ウルトラマン キッズの ことわざ物語
6746	Durarara!!	Durarara!!	デュラララ!!
6747	Dance in the Vampire Bund	Dance in the Vampire Bund	ダンスインザヴァンパイアバンド
6758	Tatakau Shisho: The Book of Bantorra	Armed Librarians:The Book of Bantorra	戦う司書 The Book of Bantorra
6771	Dorimogu Daa!!	Mock & Sweet	ドリモグだァ!!
6773	Shakugan no Shana III (Final)	Shakugan no Shana:Season III	灼眼のシャナIII –Final–
6774	Kuuchuu Buranko	Welcome to Irabu's Office	空中ブランコ
6779	Pokonyan!	Rocky Rackat!	ポコニャン！
6798	Saa Ikou! Tamagotchi	Unknown	さぁイコー！たまごっち
6802	So Ra No Wo To	Sound of the Sky	ソ・ラ・ノ・ヲ・ト
6811	InuYasha: Kanketsu-hen	InuYasha:The Final Act	犬夜叉 完結編
6822	Ukkari Pénélope (2009)	Unknown	うっかりペネロペ
6868	Wansa-kun	Little Wansa	ワンサくん
6875	Iron Man	Iron Man	アイアンマン
6880	Deadman Wonderland	Deadman Wonderland	デッドマン・ワンダーランド
6889	Time Bokan Series: Zenderman	Unknown	タイムボカンシリーズ　ゼンダマン
6895	Hakuouki	Hakuoki ~Demon of the Fleeting Blossom~	薄桜鬼
6899	Stitch!: Itazura Alien no Daibouken	Unknown	スティッチ！～いたずらエイリアンの大冒険～
6900	Tamagotchi!	Unknown	たまごっち!
6901	Battle Spirits: Shounen Gekiha Dan	Unknown	バトルスピリッツ 少年激覇ダン
6902	Saikyou Bushouden: Sangoku Engi	Unknown	最強武将伝・三国演義
6907	Mikan-Seijin	Extraterrestrial Oranges	ミカンせいじん
6917	Tsuideni Tonchinkan	Anyway, It Doesn't Matter	ついでにとんちんかん
6918	Wolverine	Wolverine	ウルヴァリン
6919	X-Men	X-Men	エックスメン
6920	Blade	Blade	ブレイド
6947	Uchurei!	Unknown	ウチュレイ！
6956	Working!!	Wagnaria!!	ワーキング!!
6970	Choujin Sentai Baratack	Unknown	超人戦隊バラタック
6971	Gegege no Kitarou (1971)	Unknown	ゲゲゲの鬼太郎
6973	Senkou no Night Raid	Night Raid 1931	閃光のナイトレイド
6974	Seikimatsu Occult Gakuin	Occult Academy	世紀末オカルト学院
6979	Shukufuku no Campanella	Blessing of the Campanella	祝福のカンパネラ
6980	Kaidan Restaurant	Unknown	怪談レストラン
6981	Super Zugan	Unknown	スーパーヅガン
6989	Uchuu Ace	Space Ace	宇宙エース
7004	Shin Calimero	Calimero (1992)	新 カリメロ
7048	Crush Gear Nitro	Unknown	クラッシュギアNitro
7054	Kaichou wa Maid-sama!	Maid Sama!	会長はメイド様!
7058	Uragiri wa Boku no Namae wo Shitteiru	The Betrayal Knows My Name	裏切りは僕の名前を知っている
7062	Hidamari Sketch x ☆☆☆	Unknown	ひだまりスケッチ×☆☆☆
7079	Ookamikakushi	Okamikakushi:Masque of the Wolf	おおかみかくし
7081	Danball Senki	LBX:Little Battlers eXperience	ダンボール戦機
7082	Shugo Chara! Party!	Unknown	しゅごキャラ！パーティー！
7088	Ichiban Ushiro no Daimaou	Demon King Daimao	いちばんうしろの大魔王
7103	Miracle☆Train: Oedo-sen e Youkoso	Miracle Train:Welcome to the Oedo Line	ミラクル☆トレイン〜大江戸線へようこそ〜
7106	Ougon Senshi Gold Lightan	Golden Warrior:The Gold Lightan	黄金戦士ゴールド・ライタン
7109	Gyouten Ningen Batsealer	Captain Fatz and the Seamorphs	仰天人間バトシーラー
7148	Ladies versus Butlers!	Ladies versus Butlers!	れでぃ×ばと!
7152	Anyamal Tantei Kiruminzoo	Unknown	あにゃまる探偵 キルミンずぅ
7160	Yoroshiku Mechadock	What's Up Mechadoc	よろしくメカドック
7175	Himitsukessha Taka no Tsume Countdown	Unknown	秘密結社 鷹の爪 カウントダウン
7176	Cheburashka Arere?	Unknown	チェブラーシカ あれれ？
7177	Gokyoudai Monogatari	Unknown	ご姉弟物語
7189	Kotatsu Neko (TV)	Table Cat	炬燵猫
7193	Aoi Bungaku Series	Unknown	青い文学シリーズ
7211	Rose O'Neill Kewpie	Unknown	ローズオニール キューピー
7245	Sekai Meisaku Douwa: Wow! Maerchen Oukoku	The World's Most Famous Tales	アニメ世界の童話 / メルヘン王国
7247	Naked Wolves	Unknown	ネイキッドウルブズ
7307	Gegege no Kitarou (1985)	Unknown	ゲゲゲの鬼太郎
7334	Bakugan Battle Brawlers: Gundalian Invaders	Bakugan:Gundalian Invaders	爆丸バトルブローラーズ Gundalian Invaders
7395	Card Wang: Mix Master	Mix Master:King of Cards	카드왕 믹스마스터
7405	Jankenman	Unknown	ジャンケンマン
7419	Wrestler Gundan Seisenshi Robin Jr.	Unknown	レスラー軍団＜銀河編＞ 聖戦士ロビンＪｒ．
7448	Pacusi	Unknown	パ ク シ
7452	Mini Moni Yaru no da Pyon!	Unknown	ミニモニ。やるのだぴょん
7463	Weiß Survive R	Unknown	ヴァイス・サヴァイヴR
7479	Karate Baka Ichidai	Karate Master	空手バカ一代
7505	Knyacki!	Unknown	ニャッキ！
7522	Taichi Senjimon	Tai Chi Chasers	太極千字文
7525	Kick Off 2002	Kick Off (2002)	キックオフ２００２
7551	Gowapper 5 Gordam	Goliath the Super Fighter	ゴワッパー5ゴーダム
7561	Kaitou Reinya	Unknown	怪盗レーニャ
7575	Oh! Family	Unknown	Ｏｈ！ファミリー
7580	Ikkitousen: Xtreme Xecutor	Unknown	一騎当千 Xtreme Xecutor
7588	Saraiya Goyou	House of Five Leaves	さらい屋 五葉
7590	Mayoi Neko Overrun!	Unknown	迷い猫オーバーラン!
7592	Nurarihyon no Mago	Nura:Rise of the Yokai Clan	ぬらりひょんの孫
7593	Kiss x Sis (TV)	Unknown	キスシス
7605	Parasol Henbei	Unknown	パラソルヘンべえ
7619	Gegege no Kitarou (1996)	Spooky Kitaro	ゲゲゲの鬼太郎
7625	Yousei Dick	Fairy Dick	妖精ディック
7627	Mitsudomoe	Mitsudomoe	みつどもえ
7629	The Arari Show	The Arari Show	아라리쇼
7639	Shounen Santa no Daibouken!	Unknown	少年サンタの大冒険！
7643	Domo-kun	Unknown	どーもくん
7645	Heartcatch Precure!	Unknown	ハートキャッチプリキュア!
7647	Arakawa Under the Bridge	Arakawa Under the Bridge	荒川アンダー ザ ブリッジ
7655	Major S6	Unknown	メジャー 第6シリーズ
7661	Giant Killing	Giant Killing	ジャイアントキリング
7662	Shinrei Tantei Yakumo	Psychic Detective Yakumo	心霊探偵 八雲
7674	Bakuman.	Bakuman.	バクマン。
7681	Kyouryuu Wakusei	Dinosaur Planet	恐竜惑星
7720	Ookiku Furikabutte: Natsu no Taikai-hen	Big Windup! 2	おおきく振りかぶって　〜夏の大会編〜
7723	Hipira-kun	Unknown	ヒピラくん
7724	Shiki	Shiki	屍鬼
7750	DigiGirl Pop!: Strawberry & Pop Mix Flavor	Unknown	デジガールPOP! 〜STRAWBERRY＆POP MIX FLAVOR〜
7751	Midnight Horror School	Unknown	ミッドナイトホラースクール
7761	Masuda Kousuke Gekijou Gag Manga Biyori +	Unknown	増田こうすけ劇場 ギャグマンガ日和+
7768	Tantei Opera Milky Holmes	Unknown	探偵オペラ ミルキィホームズ
7769	Ookami-san to Shichinin no Nakama-tachi	Okami-San and Her Seven Companions	オオカミさんと七人の仲間たち
7779	Andersen Monogatari (TV)	Unknown	アンデルセン物語
7785	Yojouhan Shinwa Taikei	The Tatami Galaxy	四畳半神話大系
7791	K-On!!	K-ON! Season 2	けいおん!!
7793	Ring ni Kakero 1: Kage Dou-hen	Unknown	リングにかけろ1 影道編
7808	Zukkoke Knight: Don De La Mancha	Don Quixote	ずっこけナイト　ドンデラマンチャ
7817	B-gata H-kei	Yamada's First Time:B Gata H Kei	B型H系
7845	Seton Doubutsuki	Seton Animal Chronicles	シートン動物記
7867	Gon	Unknown	ゴン
7904	Kemono no Souja Erin Recaps	Unknown	獣の奏者 エリン 総集編
7955	The Marshmallow Times	Unknown	マシュマロ通信 <タイムス>
7956	Cybot Robocchi	Robby the Rascal	サイボットロボッチ
7960	Pachislo Kizoku Gin	Unknown	パチスロ貴族 銀
7980	Shin Obake no Q-tarou	Unknown	新オバケのＱ太郎
7981	Obake no Q-tarou (1985)	Unknown	オバケのQ太郎
8011	Time Bokan Series: Gyakuten Ippatsuman	Unknown	逆転!イッパツマン
8025	Chi-Sui Maru	Unknown	ちーすい丸
8041	Sennin Buraku	Hermit Village	仙人部落
8057	Shin Koihime†Musou: Otome Tairan	Unknown	真恋姫†無双 ~乙女大乱~
8065	Karakuri Kengou Den Musashi Lord	Musashi, the Samurai Lord	からくり剣豪伝ムサシロード
8074	Highschool of the Dead	High School of the Dead	学園黙示録 HIGHSCHOOL OF THE DEAD
15061	Aikatsu!	Unknown	アイカツ！アイドルカツドウ！
8086	Densetsu no Yuusha no Densetsu	The Legend of the Legendary Heroes	伝説の勇者の伝説
8123	Cooking Papa	Unknown	クッキングパパ
8129	Kuragehime	Princess Jellyfish	海月姫
8130	Mighty Orbots	Mighty Orbots	マイティ・オーボッツ
8139	Shin Minashigo Hutch	The New Adventures of Hutch the Honeybee	新みなしごハッチ
8140	Konchuu Monogatari Minashigo Hutch (1989)	Unknown	昆虫物語みなしごハッチ
8143	Sockies: Frontier Quest	Unknown	ソッキーズ フロンティアクエスト
8158	Gegege no Kitarou: Jigoku-hen	Unknown	ゲゲゲの鬼太郎　地獄編
8179	Eagle Sam	Unknown	イーグルサム
8182	Bouken Shounen Shadar	Adventure Boy Shadar	冒険少年シャダー
8183	Bouken Korobokkuru	Unknown	冒険コロボックル
8184	Bouken Gabotenjima	Adventure on the Gaboten Island	冒険ガボテン島
8189	The World of Golden Eggs	Unknown	ザ・ワールド・オブ・ゴールデン・エッグス
8191	Hoshi Shinichi Short Short	Unknown	星新一 ショートショート
8194	Akuma-kun	Unknown	悪魔くん
8195	Guru Guru Town Hanamaru-kun	Unknown	ぐるぐるタウン　はなまるくん
8206	Hime Chen! Otogi Chikku Idol Lilpri	Spellbound! Magical Princess Lilpri	ひめチェン! おとぎちっくアイドル リルぷりっ
8213	Hoka Hoka Kazoku	The Affectuous Family	ほかほか家族
8215	Genji Tsuushin Agedama	Unknown	ゲンジ通信あげだま
8216	Aa Harimanada	Unknown	ああ播磨灘
8217	Jewelpet Twinkle☆	Unknown	ジュエルペット てぃんくる☆
8220	Baby Felix	Baby Felix	ベイビーフィリックス
8234	Muumin	Unknown	ムーミン
8235	Muumin (1972)	Unknown	ムーミン
8239	Anime Yasei no Sakebi	Call of the wild	アニメ野性のさけび
8240	Wanpaku Oomukashi Kum Kum	Kum Kum	わんぱく大昔クムクム
8241	Rio: Rainbow Gate!	Rio - Rainbow Gate!:Reshuffle	リオ レインボーゲート!
8244	Keshikasu-kun	Unknown	ケシカスくん
8277	Hyakka Ryouran: Samurai Girls	Samurai Girls	百花繚乱 サムライガールズ
8285	Ai no Senshi Rainbowman	Unknown	愛の戦士レインボーマン
8287	SD Gundam Sangokuden Brave Battle Warriors	Unknown	SDガンダム三国伝 Brave Battle Warriors
8311	Tegamibachi Reverse	Tegami Bachi:Letter Bee Reverse	テガミバチ REVERSE
8336	Hanakappa	Unknown	はなかっぱ
8345	Ukkari Pénélope	Unknown	うっかりペネロペ
8353	Ketsuinu	Unknown	ケツ犬
8373	Shin Mitsubachi Maya no Bouken	Unknown	新みつばちマーヤの冒険
8375	Chogattai Majutsu Robot Ginguiser	Unknown	超合体魔術ロボ　ギンガイザー
8394	Cyborg 009 (TV)	Cyborg 009	サイボーグ009
8407	Sora no Otoshimono: Forte	Heaven's Lost Property:Forte	そらのおとしものf（フォルテ）
8409	Marie & Gali ver. 2.0	Unknown	マリー＆ガリー ver.2.0
8410	Metal Fight Beyblade: Baku	Beyblade:Metal Masters	メタルファイト ベイブレード～爆～
8415	Oi! Ryouma	Rainbow Samurai	お〜い!竜馬
8424	MM!	MM!	えむえむっ!
8425	Gosick	Unknown	GOSICK -ゴシック-
8426	Hourou Musuko	Wandering Son	放浪息子
8436	Animentary: Ketsudan	Unknown	アニメンタリー 決断
8449	Togainu no Chi	Togainu no Chi	咎狗の血
8476	Otome Youkai Zakuro	Zakuro	おとめ妖怪 ざくろ
8478	Doubutsu Kankyou Kaigi	Unknown	動物かんきょう会議
8501	Chibikko Kaijuu Yadamon	Unknown	ちびっこ怪獣ヤダモン
8503	Fushigi Mahou Fun Fun Pharmacy	Unknown	ふしぎ魔法 ファンファン・ファーマシィー
8516	Baka to Test to Shoukanjuu Ni!	Baka & Test – Summon the Beasts 2	バカとテストと召喚獣 にっ！
8520	Biriken	Unknown	ビリ犬
8521	Biriken Nandemo Shoukai	Unknown	ビリ犬なんでも商会
8525	Kami nomi zo Shiru Sekai	The World God Only Knows	神のみぞ知るセカイ
8536	Fortune Arterial: Akai Yakusoku	Unknown	FORTUNE ARTERIAL 赤い約束
8538	Gokujou!! Mecha Mote Iinchou Second Collection	The Best!! Extremely Cool Student Council President Second Collection	極上!!めちゃモテ委員長 セカンドコレクション
8542	Shin Ace wo Nerae!	New Aim for the Ace!	新・エースをねらえ!
8553	Time Bokan Series: Time Patroltai Otasukeman	Unknown	タイムボカンシリーズ タイムパトロール隊 オタスケマン
8557	Shinryaku! Ika Musume	The Squid Girl	侵略!イカ娘
8595	Kotencotenco	Unknown	こてんこてんこ
8624	Digimon Xros Wars	Digimon Fusion	デジモンクロスウォーズ
8630	Hidan no Aria	Aria the Scarlet Ammo	緋弾のアリア
8675	Seitokai Yakuindomo	Unknown	生徒会役員共
8676	Amagami SS	Amagami SS	アマガミSS
8685	Ryuuichi Manga Gekijou Onbu Obake	Unknown	おんぶおばけ
8687	Doraemon (2005)	Unknown	ドラえもん (2005)
8726	Soredemo Machi wa Mawatteiru	And Yet The Town Moves	それでも町は廻っている
8753	Ultraman Kids: Haha wo Tazunete 3000-man Kounen	Ultraman Kids Looking for Mother for 30000000 Light Years	ウルトラマンキッズ 母をたずねて3000万光年
8763	Hajime Ningen Gyatoruz	Unknown	はじめ人間ギャートルズ
8764	Hajime Ningen Gon	Unknown	はじめ人間ゴン
8765	Futarigurashi	Unknown	ふたり暮らし
8769	Ore no Imouto ga Konnani Kawaii Wake ga Nai	OreImo	俺の妹がこんなに可愛いわけがない
8777	Nobara no Julie	Julie the Wild Rose	野ばらのジュリー
8786	Inakappe Taishou	General Inakappe	いなかっぺ大将
8795	Panty & Stocking with Garterbelt	Panty & Stocking with Garterbelt	パンティ＆ストッキングwithガーターベルト
8799	Okawari-Boy Starzan-S	Unknown	OKAWARI-BOY スターザンS
8812	Alice SOS	Unknown	アリスＳＯＳ
8815	Domo TV	Unknown	どーもくん
8829	Shounen Ashibe (TV)	Unknown	少年アシベ
8832	Shounen Ashibe 2	Unknown	少年アシベ２
8841	Kore wa Zombie Desu ka?	Is This a Zombie?	これはゾンビですか?
8853	Chouriki Robo Galatt	Unknown	超力ロボ ガラット
8861	Yosuga no Sora: In Solitude, Where We Are Least Alone.	Yosuga no Sora	ヨスガノソラ In solitude, where we are least alone.
8879	Dolphin Ouji	Unknown	ドルフィン王子
8890	Nippon-ichi no Otoko no Tamashii	Unknown	日本一の男の魂
8891	Nippon-ichi no Otoko no Tamashii 2	Unknown	日本一の男の魂２
8897	Ganbare! Marine Kid	Marine Boy	がんばれ！マリンキッド
8899	Kaitei Shounen Marine	Marine Boy	海底少年マリン
8900	Saru Getchu: On Air 2nd	Unknown	サルゲッチュ ～オンエアー～2nd
8915	Dantalian no Shoka	The Mystic Archives of Dantalian	ダンタリアンの書架
8917	Mouretsu Pirates	Bodacious Space Pirates	モーレツ宇宙海賊
8934	Star Driver: Kagayaki no Takuto	Star Driver	STAR DRIVER 輝きのタクト
8937	Toaru Majutsu no Index II	A Certain Magical Index II	とある魔術の禁書目録Ⅱ
8956	Denkou Chou Tokkyuu Hikarian	Unknown	電光超特急ヒカリアン
8960	MonHun Nikki Girigiri Airou Mura: Airou Kiki Ippatsu	Unknown	モンハン日記 ぎりぎりアイルー村☆アイルー危機一髪☆
8961	Tono to Issho: Ippunkan Gekijou	Unknown	殿といっしょ 1分間劇場
8964	Stitch!: Zutto Saikou no Tomodachi	Unknown	スティッチ！～ずっと最高のトモダチ～
8999	Origami Warriors	Unknown	摺紙戰士
9013	Kuruneko 2nd Season	Unknown	くるねこ
9015	Obake no... Holly	Unknown	おばけの…　ホーリー
9028	Edokko Boy: Gatten Tasuke	Unknown	江戸っ子ボーイ がってん太助
9041	IS: Infinite Stratos	Infinite Stratos	IS 〈インフィニット・ストラトス〉
9061	RPG Densetsu Hepoi	Unknown	RPG伝説ヘポイ
9065	Hakuouki Hekketsuroku	Hakuoki ~Demon of the Fleeting Blossom~ Record of the Jade Blood	薄桜鬼 碧血録
9070	Oden-kun	Unknown	おでんくん
9074	Arakawa Under the Bridge x Bridge	Arakawa Under the Bridge x Bridge	荒川アンダー ザブリッジ×ブリッジ
9106	Nogsaegjeoncha Hamos	Hamos:The Green Chariot	녹색전차 해모수
9107	Pokemon Best Wishes!	Pokémon:Black & White	ポケットモンスターベストウイッシュ
9119	Chirorin Mura Monogatari	Nutsberry Town	チロリン村物語
9175	Tsuruhime Ja!	Unknown	つる姫じゃ～っ！
9181	Motto To LOVE-Ru	Motto To LOVE Ru	もっと To LOVEる -とらぶる-
9200	Dae Jang Geum: Jang Geum's Dream 2	Unknown	少女チャングムの夢
9241	Super Robot Taisen OG: The Inspector	Super Robot Wars OG:The Inspector	スーパーロボット大戦OG -ジ・インスペクター-
9253	Steins;Gate	Steins;Gate	STEINS;GATE
9284	Bakuhatsu Gorou	Unknown	ばくはつ五郎
9289	Hanasaku Iroha	Hanasaku Iroha:Blossoms for Tomorrow	花咲くいろは
9314	Fractale	Fractale	フラクタル
9330	Dragon Crisis!	Unknown	ドラゴンクライシス!
9331	Yumekui Merry	Dream Eater Merry	夢喰いメリー
9345	Gakkou no Kowai Uwasa Shin: Hanako-san ga Kita!!	Unknown	学校のｺﾜｲうわさ 新・花子さんがきた!!
9346	Battle Spirits: Brave	Unknown	バトルスピリッツ ブレイヴ
9367	Freezing	Freezing	フリージング
9371	Karl to Fushigi na Tou	Unknown	カルルとふしぎな塔
9379	Denpa Onna to Seishun Otoko	Ground Control to Psychoelectric Girl	電波女と青春男
9383	Chie-chan Funsenki: Jarinko Chie	Unknown	チエちゃん奮戦記 じゃりン子チエ
9391	Ginga Hyouryuu Vifam 13	Unknown	銀河漂流バイファム13
9395	Miyanishi Tatsuya Gekijou: Omae Umasou da na	Unknown	宮西達也劇場 おまえうまそうだな
9424	Seupideuwang Beongae	Wings of Dragon	스피드왕 번개
9426	Pururun! Shizuku-chan	Unknown	ぷるるんっ！しずくちゃん
9433	A-jang.com	Unknown	아장닷컴
9438	Rainbow Sentai Robin	Unknown	レインボー戦隊ロビン
9441	Yume-iro Pâtissière SP Professional	Unknown	夢色パティシエールSP（スペシャル）プロフェッショナル
9455	Ninpen Manmaru	Unknown	忍ペンまん丸
9479	Coppelion	Coppelion	コッペリオン
9493	Dororon Enma-kun Meeramera	Ghastly Prince Enma Burning Up	Dororonえん魔くん メ〜ラめら
9510	Mitsudomoe Zouryouchuu!	Unknown	みつどもえ増量中！
9513	Beelzebub	Beelzebub	べるぜバブ
9518	Ichigo Ichie: Kimi no Kotoba	Unknown	一期一会～キミノコトバ～
9520	Zero Tester	Unknown	ゼロテスター
9522	Zero Tester: Chikyuu wo Mamore!	Unknown	ゼロテスター 地球を守れ!
9533	Pururun! Shizuku-chan Aha	Unknown	ぷるるんっ! しずくちゃんあはっ☆
9539	Cardfight!! Vanguard	Cardfight!! Vanguard	カードファイト!! ヴァンガード
9540	Bucket de Gohan	Unknown	バケツでごはん
9561	Shokupan Mimi	Unknown	食パンミミー
9562	Tachumaru Gekijou	Unknown	たちゅまる劇場
9587	Oniichan no Koto nanka Zenzen Suki ja Nai n da kara ne!!	Unknown	お兄ちゃんのことなんかぜんぜん好きじゃないんだからねっ!!
9598	Haiyoru! Nyaruani: Remember My Love(craft-sensei)	Haiyoru! Nyaruani:Remember My Mr. Lovecraft	這いよる!ニャルアニ リメンバー・マイ・ラブ(クラフト先生)
9613	Big X	Unknown	ビッグX
9624	30-sai no Hoken Taiiku	A Thirty-Year Old's Health and Physical Education	30歳の保健体育
9627	Kakko Kawaii Sengen!	Unknown	カッコカワイイ宣言！
9656	Kimi ni Todoke 2nd Season	Kimi ni Todoke:From Me To You 2	君に届け 2ND SEASON
9693	Moshidora	Unknown	もしドラ
9712	Maria†Holic Alive	Maria†Holic Alive	まりあ†ほりっく あらいぶ
9736	Astarotte no Omocha!	Astarotte's Toy	アスタロッテのおもちゃ！
9750	Itsuka Tenma no Kuro Usagi	A Dark Rabbit has Seven Lives	いつか天魔の黒ウサギ
9756	Mahou Shoujo Madoka★Magica	Puella Magi Madoka Magica	魔法少女まどか★マギカ
9768	Shima Shima Tora no Shimajirou	Unknown	しましまとらのしまじろう
9770	Hello Kitty no Stump Village	Hello Kitty:Stump Village	ハローキティのスタンプヴィレッジ
9776	A-Channel	A-Channel	Aチャンネル
9781	Hyouga Senshi Gaislugger	Unknown	氷河戦士ガイスラッガー
9799	Shin-Men	Unknown	SHIN-MEN
9806	Qin Shi Ming Yue: Bai Bu Fei Jian	Qin's Moon:Hundred Steps Flying Sword	秦时明月
9807	Harimogu Harry	Unknown	はりもぐハーリー
9810	Nyani ga Nyandaa Nyandaa Kamen	Unknown	ニャニがニャンだー ニャンダーかめん
9811	Hanasaka Tenshi Tenten-kun	Unknown	花さか天使テンテンくん
9812	Bit the Cupid	Unknown	ビット・ザ・キューピッド
9821	McDull: Chuntian Huahua Zhonghua Bowuguan	Unknown	春田花花中華博物館
9822	Xiang Qi Wang	Xiangqi Master	象棋王
9834	Level E	Level E	レベルE
9856	Manga Nihon Emaki	Unknown	まんが日本絵巻
9863	SKET Dance	SKET Dance	スケットダンス
9868	Chengyu Donghua Lang	Unknown	成語動畫廊
9881	Chou Supercar Gattiger	Unknown	超スーパーカー ガッタイガー
9882	High School Mystery: Gakuen Nanafushigi	Unknown	ハイスクールミステリー 学園七不思議
9883	Osomatsu-kun (1988)	Osomatsu-kun (1988)	おそ松くん
9884	Osomatsu-kun	Unknown	おそ松くん
9885	Shin Bikkuriman	Unknown	新ビックリマン
9893	Suite Precure♪	Unknown	スイート プリキュア♪
9900	Hamster Club	Unknown	ハムスター倶楽部
9902	Hyper ERT	Unknown	小海白ERT
9903	Zhi duoduo Zhi duoduo	Gee Dor Dor, Gee Dor Dor	智多多知多多
9905	Captain (TV)	Unknown	キャプテン
9906	Sue Cat	Unknown	スーキャット
9916	Samurai Giants	Unknown	侍ジャイアンツ
9919	Ao no Exorcist	Blue Exorcist	青の祓魔師(エクソシスト)
9922	Oretachi ni Tsubasa wa Nai: Under the Innocent Sky.	We Without Wings – Under the Innocent Sky	俺たちに翼はない -under the innocent sky.
9926	Sekaiichi Hatsukoi	Sekai Ichi Hatsukoi - World's Greatest First Love	世界一初恋 TV
9934	Nekogami Yaoyorozu	The Everyday Tales of a Cat God	猫神やおよろず
9936	Maken-Ki!	Unknown	マケン姫っ！
9938	Ikoku Meiro no Croisée The Animation	Croisée in a Foreign Labyrinth The Animation	異国迷路のクロワーゼ The Animation
9941	Tiger & Bunny	Tiger & Bunny	TIGER & BUNNY （タイガー・アンド・バニー）
9947	Lan Mao	Blue Cat	蓝猫
9948	Wo Wei Ge Kuang	Unknown	我为歌狂
9949	Fuwa Aoyun Manyouji	Fuwa's Olympic Stories	福娃奥运漫游记
9950	Hulu Xiongdi	Unknown	葫芦兄弟
9952	Wei Qi Shao Nian	Chess Player	围棋少年
9955	Da Zuiba Dudu	Unknown	大嘴巴嘟嘟
9956	The Primitives: Bongo and Grunge	The Primitives:Bongo and Grunge	古惑香蕉頭
9969	Gintama'	Gintama Season 2	銀魂'
9978	Kyouryuu Tankentai Born Free	Unknown	恐竜探検隊ボーンフリー
9981	Phi Brain: Kami no Puzzle	Phi-Brain ~ Puzzle of God	ファイ・ブレイン 神のパズル
9989	Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai.	anohana:The Flower We Saw That Day	あの日見た花の名前を僕達はまだ知らない。
9996	Hyouge Mono	Unknown	へうげもの
10014	Shouwa Monogatari	Unknown	昭和物語 TV
10015	Yu☆Gi☆Oh! Zexal	Yu-Gi-Oh! Zexal	遊☆戯☆王ZEXAL
10030	Bakuman. 2nd Season	Bakuman.	バクマン。2ndシーズン
10033	Toriko	Toriko	トリコ
10049	Nurarihyon no Mago: Sennen Makyou	Nura:Rise of the Yokai Clan - Demon Capital	ぬらりひょんの孫 千年魔京
10073	Seikon no Qwaser II	The Qwaser of Stigmata II	聖痕のクェイサー II
10079	Hoshizora e Kakaru Hashi	A Bridge to the Starry Skies	星空へ架かる橋
10080	Kami nomi zo Shiru Sekai II	The World God Only Knows II	神のみぞ知るセカイ II
10087	Fate/Zero	Fate/Zero	フェイト/ゼロ
10109	Softenni	Softenni! the Animation	そふてにっ
10110	Mayo Chiki!	Mayo Chiki!	まよチキ!
10135	Manga Hajimete Monogatari	Unknown	まんがはじめて物語
10136	Manga Doushite Monogatari	Unknown	まんがどうして物語
10137	Manga Naruhodo Monogatari	Unknown	まんがなるほど物語
10138	Manga Hajimete Omoshiro Juku	Unknown	まんがはじめて面白塾
10155	Dog Days	Unknown	ドッグデイズ
10156	Sacred Seven	Sacred Seven	セイクリッドセブン
10161	No.6	No. 6	NO.6［ナンバー・シックス］
10162	Usagi Drop	Bunny Drop	うさぎドロップ
10163	C: The Money of Soul and Possibility Control	[C] CONTROL - The Money and Soul of Possibility	「C」 THE MONEY OF SOUL AND POSSIBILITY CONTROL
10165	Nichijou	Nichijou - My Ordinary Life	日常
10177	DD Hokuto no Ken	DD Fist of the North Star	DD北斗之拳
10187	HenSemi (TV)	Unknown	変ゼミ
10194	Bada-ui Jeonseol Jangbogo	The Legend of Blue	바다의 전설 장보고
10197	Nyanpire The Animation	Unknown	にゃんぱいあ The Animation
10210	Bug tte Honey	Unknown	Bugってハニー
10213	Maji de Watashi ni Koi Shinasai!	Majikoi:Oh! Samurai Girls	真剣で私に恋しなさい！
10216	Yondemasu yo, Azazel-san. (TV)	You're Being Summoned, Azazel	よんでますよ、アザゼルさん。
10217	Kaitou Tenshi Twin Angel: Kyun Kyun☆Tokimeki Paradise!!	Twin Angel:Twinkle Paradise	快盗天使ツインエンジェル 〜キュンキュン☆ときめきパラダイス!!〜
10224	Uchuu Majin Daikengou	Unknown	宇宙魔神ダイケンゴー
10232	Tamayura: Hitotose	Unknown	たまゆら～hitotose～
10236	Kagee Grimm Douwa	Unknown	影絵グリム童話
10237	Ki-Fighter Taerang	Ki Fighter	キ・ファイター テラン
10239	Mayutoro The Toons	Unknown	まゆとろ THE TOONS
10241	Sekai Monoshiri Ryoko	Unknown	世界ものしり旅行
10242	Ton-Ton Atta to Niigata no Mukashibanashi	Unknown	トントンあったと にいがたの昔ばなし
10250	Ultra B	Unknown	ウルトラ B
10257	Pretty Rhythm: Aurora Dream	Unknown	プリティーリズム オーロラドリーム
10271	Gyakkyou Burai Kaiji: Hakairoku-hen	Kaiji:Against All Rules	逆境無頼カイジ 破戒録篇
10278	The iDOLM@STER	THE IDOLM@STER	アイドルマスター
10282	Manga Nippon Mukashibanashi	Unknown	まんが日本昔ばなし
10308	Sengoku Otome: Momoiro Paradox	Battle Girls:Time Paradox	戦国乙女～桃色パラドックス～
10319	Chou Dendou Robo Tetsujin 28-gou FX	Unknown	超電動ロボ 鉄人28号FX
10321	Uta no☆Prince-sama♪ Maji Love 1000%	Uta no Prince Sama	うたの☆プリンスさまっ♪ マジLOVE1000%
10324	Tono to Issho: Gantai no Yabou	Unknown	殿といっしょ 眼帯の野望
10330	Bakugan Battle Brawlers: Mechtanium Surge	Bakugan:Mechtanium Surge	爆丸バトルブローラーズ Mechtanium Surge
10336	Last Exile: Ginyoku no Fam	Last Exile:Fam, the Silver Wing	ラストエグザイル-銀翼のファム-
10338	Honto ni Atta! Reibai Sensei	Unknown	ほんとにあった! 霊媒先生
10346	Ring ni Kakero 1: Sekai Taikai-hen	Unknown	リングにかけろ1 世界大会編
10347	Happy Kappy	Unknown	はっぴ〜カッピ
10348	Fireball Charming	Unknown	ファイアボール チャーミング
10349	Suzy's Zoo: Daisuki! Witzy	Unknown	Suzy's Zoo だいすき！ウィッツィー
10357	Jinrui wa Suitai Shimashita	Humanity Has Declined	人類は衰退しました
10359	Jewelpet Sunshine	Unknown	ジュエルペット サンシャイン
10360	Kinniku Banzuke: Kongou-kun no Daibouken!	Unknown	筋肉番付 金剛くんの大冒険!
10370	Metal Fight Beyblade 4D	Beyblade:Metal Fury	メタルファイト ベイブレード 4D
10372	Kamisama Dolls	Kamisama Dolls	神様ドォルズ
10378	Shinryaku!? Ika Musume	The Squid Girl 2	侵略!?イカ娘
10379	Natsume Yuujinchou San	Natsume's Book of Friends Season 3	夏目友人帳 参
10396	Ben-To	Ben-To	ベン・トー
10397	Mashiro-iro Symphony: The Color of Lovers	Mashiroiro Symphony:The Color of Lovers	ましろ色シンフォニー -The color of lovers-
10444	Digimon Xros Wars: Aku no Death General to Nanatsu no Oukoku	Digimon Fusion	デジモンクロスウォーズ～悪のデスジェネラルと七つの王国～
10447	Aquarion Evol	Aquarion Evol	アクエリオンEVOL
10456	Kyoukaisenjou no Horizon	Horizon in the Middle of Nowhere	境界線上のホライゾン
10459	Puu-Neko	Poo-Neko	プ～ねこ
10460	Kimi to Boku.	You and Me.	君と僕。
10465	Manyuu Hikenchou	Unknown	魔乳秘剣帖
10490	Blood-C	BLOOD-C	ブラッドシー
10495	Yuru Yuri	YuruYuri:Happy Go Lily	ゆるゆり
10506	Shiawase Haitatsu Taneko	Unknown	しあわせ配達おみくじタネコ
10507	Inazuma Eleven Go	Unknown	イナズマイレブン Go
10513	Usavich IV	Usavich IV	ウサビッチ IV
10521	Working'!!	Wagnaria!!2	ワーキング’！！
10524	Duel Masters Victory	Unknown	デュエル・マスターズ ビクトリー
10525	Shinseiki Duel Masters Flash	Unknown	新星輝デュエル・マスターズ フラッシュ
10526	Duel Masters Zero	Unknown	デュエル・マスターズ ゼロ
10527	Duel Masters Cross	Unknown	デュエル・マスターズ クロス
10528	Duel Masters Cross Shock	Unknown	デュエル・マスターズ クロスショック
10533	Fujilog	Unknown	フジログ
10539	Hato no Oyome-san	Unknown	ハトのおよめさん
10540	Genki!! Ekoda-chan	Unknown	元気!!江古田ちゃん
10541	Shuukan Shimakou	Weekly Shimako	週刊シマコー
10554	Yakyuukyou no Uta	Unknown	野球狂の詩
10562	Machine Hayabusa	Unknown	マシンハヤブサ
10568	Kamisama no Memochou	Heaven's Memo Pad	神様のメモ帳
10572	Ro-Kyu-Bu!	Ro-Kyu-Bu ~ Fast Break!	ロウきゅーぶ!
10578	C³	C³ - CubexCursedxCurious	シーキューブ
10588	Persona 4 the Animation	Persona 4 the Animation	ペルソナ4アニメーション
10607	Rerere no Tensai Bakabon	Unknown	レレレの天才バカボン
10611	R-15	Unknown	あーるじゅうご
10620	Mirai Nikki	The Future Diary	未来日記
10623	Hayan Ma-eum Baeggu	Unknown	하얀 마음 백구
10633	Shiodome Cable TV	Unknown	汐留ケーブルテレビ
10671	Morita-san wa Mukuchi.	Unknown	森田さんは無口。
10705	Yasai no Yousei: N.Y.Salad	Unknown	やさいのようせい N.Y.SALAD
10706	Yasai no Yousei: N.Y.Salad 2nd Series	Unknown	やさいのようせい N.Y.SALAD 2ndシリーズ
10709	Manga Nihon Keizai Nyuumon	Unknown	マンガ日本経済入門
10719	Boku wa Tomodachi ga Sukunai	Haganai:I don't have many friends	僕は友達が少ない
10721	Mawaru Penguindrum	Penguindrum	輪るピングドラム
10774	Soccer Fever	Unknown	サッカーフィーバー
10790	Kore wa Zombie Desu ka? of the Dead	Is this A Zombie? of the Dead	これはゾンビですか? OF THE DEAD
10793	Guilty Crown	Guilty Crown	ギルティクラウン
10797	Kayoe! Chuugaku	Kayoe! Chugaku	かよえ！チュー学
10798	Un-Go	Un-Go	UN-GO アン ゴ
10800	Chihayafuru	Chihayafuru	ちはやふる
10802	MonHun Nikki Girigiri Airou Mura G	Unknown	モンハン日記 ぎりぎりアイルー村G
10808	Mobile Suit Gundam AGE	Unknown	機動戦士ガンダムAGE
10810	Pucca 2	Unknown	짜장소녀 뿌까
10815	UFO Senshi Dai Apolon 2	Unknown	UFO戦士ダイアポロンII
10838	Double-J	Unknown	だぶるじぇい
10847	Inumarudashi	Unknown	いぬまるだしっ
10855	Penguin no Mondai Max	Unknown	ペンギンの問題 Max
10856	Penguin no Mondai DX?	Unknown	ペンギンの問題DX?
10869	Scan2Go	Scan2Go	스캔2고
10870	Koukaku Kidoutai: Stand Alone Complex - Tachikoma na Hibi (TV)	Ghost in the Shell:Stand Alone Complex:Tachikomatic Days	攻殻機動隊 STAND ALONE COMPLEX タチコマな日々
10884	Saki Achiga-hen: Episode of Side-A	Saki Episode of Side A	咲-Saki-阿知賀編 episode of side-A
10887	Dame Oyaji	Unknown	ダメおやじ
10889	Jungle Kurobee	Unknown	ジャングル黒べえ
10908	Kakko Kawaii Sengen! 2	Unknown	カッコカワイイ宣言！ 2
10953	Pants Pankurou	Unknown	パンツぱんくろう
10958	High Score	Unknown	HIGH SCORE [ハイスコア]
10965	Kagaku Bouken-tai Tansar 5	Unknown	科学冒険隊タンサー5
10987	Zettai Zetsumei Dangerous Jiisan (2004)	Unknown	絶体絶命でんぢゃらすじーさん
10989	Stray Sheep: Poe no Chicchana Daibouken	Unknown	ストレイシープ ポーのちっちゃな大冒険
10995	Ganbare!! Nattou-san	Unknown	頑張れ!!納父さん
10997	Fujilog 2nd Season	Unknown	フジログ 第2シーズン
11013	Inu x Boku SS	Inu X Boku Secret Service	妖狐×僕SS
11017	Battle Spirits: Heroes	Unknown	バトルスピリッツ 覇王（ヒーローズ）
11021	Muv-Luv Alternative: Total Eclipse	Muv-Luv Alternative:Total Eclipse	マブラヴ オルタネイティヴ トータル・イクリプス
11061	Hunter x Hunter (2011)	Hunter x Hunter	HUNTER×HUNTER（ハンター×ハンター）
11079	Kill Me Baby	Kill Me Baby	キルミーベイベー
11111	Another	Another	アナザー
11123	Sekaiichi Hatsukoi 2	Sekai Ichi Hatsukoi - World's Greatest First Love 2	世界一初恋 2
11177	Cross Fight B-Daman	B-Daman Crossfire	クロスファイト ビーダマン
11179	Papa no Iukoto wo Kikinasai!	Listen to Me, Girls. I Am Your Father!	パパのいうことを聞きなさい！
11197	Kuma no Puutarou	Unknown	クマのプー太郎
11203	Hero Hero-kun	Unknown	へろへろくん
11213	Hoshi no Ko Poron	Unknown	星の子ポロン
11227	Rinne no Lagrange	Lagrange:The Flower of Rin-ne	輪廻のラグランジェ
11235	Amagami SS+ Plus	Amagami SS+ plus	アマガミSS+ plus
11239	Hidamari Sketch x Honeycomb	Unknown	ひだまりスケッチ×ハニカム
11241	Brave 10	Brave 10	ブレイブ・テン
11245	Manga Nihonshi	Unknown	まんが日本史
11268	Ganso Tensai Bakabon	Unknown	元祖天才バカボン
11275	Akadou Suzunosuke	Unknown	赤胴鈴之助
11285	Black★Rock Shooter (TV)	Black Rock Shooter	ブラック★ロックシューター
11307	Ginga Patrol PJ	Unknown	銀河パトロールPJ
11319	Zero no Tsukaima F	The Familiar of Zero F	ゼロの使い魔F
11341	Tantei Opera Milky Holmes Dai 2 Maku	Detective Opera Milky Holmes 2	探偵オペラ ミルキィホームズ 第2幕
11371	Shin Tennis no Ouji-sama	The Prince of Tennis II	新テニスの王子様
11385	Digimon Xros Wars: Toki wo Kakeru Shounen Hunter-tachi	Digimon Fusion	デジモンクロスウォーズ 時を駆ける少年ハンターたち
11405	Skyers 5	Unknown	スカイヤーズ5
11421	Iruka to Shounen	Unknown	イルカと少年
11433	Ano Natsu de Matteru	Waiting in the Summer	あの夏で待ってる
11457	Chibi☆Devi!	Unknown	ちび☆デビ！
11491	Recorder to Randoseru Do♪	Recorder and Randsell	リコーダーとランドセル　ド♪
11497	Sore Ike! Zukkoke Sannin-gumi	Unknown	それいけ! ズッコケ三人組
11499	Sankarea	Sankarea:Undying Love	さんかれあ
11521	Hello Kitty: Ringo no Mori no Fantasy	Unknown	ハローキティ りんごの森のファンタジー
11525	Mamimume★Mogacho	Unknown	まみむめ★もがちょ
11533	Momotarou Densetsu	Unknown	桃太郎伝説
11541	Ad Lib Anime Kenkyuujo	Unknown	アドリブアニメ研究所
11545	Happyakuyachou Hyouri Kewaishi	Unknown	八百八町表裏 化粧師
11547	Sengoku☆Paradise Kiwami	Unknown	戦国☆パラダイス-極-（きわみ）
11589	Puu-Neko Shougekijou	Unknown	プ〜ねこ小劇場
11595	Perman (1983)	Superkid (1983)	パーマン (1983)
11597	Nisemonogatari	Nisemonogatari	偽物語
11609	Sono Toki, Shimakou ga Ugoita!	At that time Mr. Shimakoh moved!	その時、シマコーが動いた!
11615	Morita-san wa Mukuchi. 2	Unknown	森田さんは無口。２
11617	High School DxD	High School DxD	ハイスクールD×D
11633	Blood Lad	Blood Lad	ブラッドラッド
11665	Natsume Yuujinchou Shi	Natsume's Book of Friends Season 4	夏目友人帳 肆
11697	Area no Kishi	The Knight in the Area	エリアの騎士
11703	Code:Breaker	Code:Breaker	CØDE:BREAKER
11733	Chi-Sui Maru 2nd Season	Unknown	ちーすい丸
11739	Kimi to Boku. 2	You and Me 2	君と僕。2
11741	Fate/Zero 2nd Season	Fate/Zero Season 2	フェイト/ゼロ 2ndシーズン
11751	Senki Zesshou Symphogear	Symphogear	戦姫絶唱シンフォギア
11757	Sword Art Online	Sword Art Online	ソードアート・オンライン
11759	Accel World	Accel World	アクセル・ワールド
11761	Medaka Box	Medaka Box	めだかボックス
11763	Sekai de Ichiban Tsuyoku Naritai!	Wanna Be the Strongest in the World	世界でいちばん強くなりたい!
11769	Gokujo.: Gokurakuin Joshikou Ryou Monogatari	Unknown	ゴクジョッ。~極楽院女子高寮物語~
11771	Kuroko no Basket	Kuroko's Basketball	黒子のバスケ
11783	Dog Days'	Unknown	ドッグデイズ'
11785	Haiyore! Nyaruko-san	Nyaruko:Crawling With Love!	這いよれ！ニャル子さん
11809	gdgd Fairies	Unknown	gdgd妖精s（ぐだぐだふぇありーず）
11829	Manga Mitokoumon	Unknown	まんが水戸黄門
11835	Qin Shi Ming Yue: Zhu Zi Bai Jia	Qin's Moon:Hundred Schools of Thought	秦时明月
11837	Zetman	Zetman	ゼットマン
11841	Qin Shi Ming Yue: Ye Jin Tianming	Qin's Moon:Night Ends - Daylight	秦时明月
11843	Danshi Koukousei no Nichijou	Daily Lives of High School Boys	男子高校生の日常
11857	Judo Sanka	Unknown	柔道讃歌
11859	Queen's Blade: Rebellion	Unknown	クイーンズブレイド リベリオン
11873	Oraa Guzura Dado (1987)	Unknown	おらぁグズラだど
11887	Kokoro Connect	Kokoro Connect	ココロコネクト
11919	Zoku Attacker You! Kin Medal e no Michi	Unknown	続・アタッカーYOU 金メダルへの道
11933	Oda Nobuna no Yabou	The Ambition of Oda Nobuna	織田信奈の野望
12021	Poyopoyo Kansatsu Nikki	Poyopoyo	ポヨポヨ観察日記
12031	Kingdom	Kingdom	キングダム
12039	What's Michael? (TV)	Unknown	ホワッツマイケル?
12119	Natsu-iro Kiseki	Unknown	夏色キセキ
12123	Yurumates 3D	Unknown	ゆるめいつ 3でぃ
12139	Wanpaku Tanteidan	Unknown	わんぱく探偵団
12145	Backkom	Bernard	빼꼼
12149	AKB0048	AKB0048	AKB0048
12175	Koi to Senkyo to Chocolate	Love, Election and Chocolate	恋と選挙とチョコレート
12181	Nihon Omoshiro Mukashibanashi	Unknown	日本おもしろ昔話
12185	Mameushi-kun	Unknown	まめうしくん
12189	Hyouka	Hyouka	氷菓
12191	Smile Precure!	Glitter Force	スマイルプリキュア
12243	Game Center Arashi	Unknown	ゲームセンターあらし
12281	Rinne no Lagrange Season 2	Lagrange:The Flower of Rin-ne Season 2	輪廻のラグランジェ season 2
12291	Acchi Kocchi (TV)	Place to Place	あっちこっち
12293	Campione!: Matsurowanu Kamigami to Kamigoroshi no Maou	Campione!	カンピオーネ！ ～まつろわぬ神々と神殺しの魔王～
12321	Thermae Romae	Thermae Romae	テルマエ・ロマエ
12359	Pecola	Pecola	ペコラ
12361	Track City	Track City	트랙시티
12365	Bakuman. 3rd Season	Bakuman.	バクマン。
12367	Shining Hearts: Shiawase no Pan	Unknown	シャイニング・ハーツ 〜幸せのパン〜
12391	Mouretsu Atarou (1990)	Unknown	もーれつア太郎 (1990)
12393	Oyako Club	Unknown	親子クラブ
12403	Yuru Yuri♪♪	YuruYuri:Happy Go Lily ♪♪	ゆるゆり♪♪
12413	Jormungand	Jormungand	ヨルムンガンド
12431	Uchuu Kyoudai	Space Brothers	宇宙兄弟
12445	Tasogare Otome x Amnesia	Dusk Maiden of Amnesia	黄昏乙女×アムネジア
12461	Hiiro no Kakera	Hiiro no Kakera:The Tamayori Princess Saga	緋色の欠片
12467	Nazo no Kanojo X	Mysterious Girlfriend X	謎の彼女X
12471	Eureka Seven AO	Unknown	エウレカセブンAO
12481	Gregory Horror Show: The Second Guest	Unknown	グレゴリーホラーショー - The Second Guest
12483	Gregory Horror Show: The Last Train	Unknown	グレゴリーホラーショー - The Last Train
12487	Kyoukaisenjou no Horizon II	Horizon in the Middle of Nowhere II	境界線上のホライゾンII
12531	Sakamichi no Apollon	Kids on the Slope	坂道のアポロン
12549	Dakara Boku wa, H ga Dekinai.	So, I Can't Play H!	だから僕は、Hができない。
12611	Sengoku Collection	Sengoku Collection	戦国コレクション
12613	Morizo to Kikkoro	Unknown	モリゾーとキッコロ
12651	Danball Senki W	LBX:Little Battlers eXperience Season 2	ダンボール戦機 Ｗ
12677	Ozma	Ozma	オズマ
12679	Joshiraku	Joshiraku	じょしらく
12711	Uta no☆Prince-sama♪ Maji Love 2000%	Uta no Prince Sama 2	うたの☆プリンスさまっ♪ マジLOVE2000%
12753	Phi Brain: Kami no Puzzle - Orpheus Order-hen	Phi-Brain ~ Puzzle of God:The Orpheus Order	ファイ・ブレイン ～神のパズル オルペウス・オーダー編
12763	0-sen Hayato	Unknown	0戦はやと
12765	Yuuyake Banchou	Unknown	夕やけ番長
12767	Yuusei Kamen	Unknown	遊星仮面
12771	Youyou no Neko Tsumami	Unknown	ヨーヨーの猫つまみ
12781	Yoshimoto Muchikko Monogatari	Yoshimoto Insect Stories	ヨシモトムチッ子物語
12793	Yanbou Ninbou Tonbou	Unknown	ヤンボウ ニンボウ トンボウ
12809	Wonder Bebil-kun	Unknown	ワンダーベビルくん
12815	Shirokuma Cafe	Polar Bear Cafe	しろくまカフェ
12835	Umeboshi Denka	Unknown	ウメ星デンカ
12863	Pretty Rhythm: Dear My Future	Unknown	プリティーリズム ディアマイフューチャー
12875	Ginga e Kickoff!!	Unknown	銀河へキックオフ!!
12883	Tsuritama	tsuritama	つり球
12887	Uchuu Shounen Soran	Unknown	宇宙少年ソラン
12897	Uchuu Patrol Hopper	Space Patrol Hopper	宇宙パトロールホッパ
12929	Saint Seiya Omega	Unknown	聖闘士星矢Ω
12951	AWOL	Unknown	エイウォール
12963	Jewelpet Kira☆Deco!	Unknown	ジュエルペットきら☆デコッ!
12967	Arcana Famiglia	La storia della Arcana Famiglia	アルカナ・ファミリア －La storia della Arcana Famiglia－
12979	Naruto SD: Rock Lee no Seishun Full-Power Ninden	NARUTO Spin-Off:Rock Lee & His Ninja Pals	ナルトSD ロック・リーの青春フルパワー忍伝
13029	Arashi no Yoru ni: Himitsu no Tomodachi	Unknown	あらしのよるに ひみつのともだち
13115	Hakuouki Reimeiroku	Hakuoki ~Demon of the Fleeting Blossom~ Dawn of the Shinsengumi	薄桜鬼 黎明録
13125	Shinsekai yori	From the New World	新世界より
13139	Gakkatsu!	Unknown	ガッ活!
13141	Shiba Inuko-san	Unknown	しばいぬ子さん
13143	Baku Tech! Bakugan	Unknown	爆TECH！爆丸
13145	Cardfight!! Vanguard: Asia Circuit-hen	Cardfight!! Vanguard Asia Circuit	カードファイト!! ヴァンガード アジアサーキット編
13159	Kuromajo-san ga Tooru!!	Here Comes the Black Witch!!	黒魔女さんが通る!!
13161	Hagure Yuusha no Aesthetica	Aesthetica of a Rogue Hero	はぐれ勇者の鬼畜美学〈エステティカ〉
13163	Furusato Saisei: Nippon no Mukashibanashi	Folktales from Japan	ふるさと再生 日本の昔ばなし
13165	Paboo & Mojies	Paboo & Mojies	パブー＆モジーズ
13167	Zoobles!	Unknown	ズーブルズ！
13177	Little Charo	Little Charo	リトル・チャロ
13179	Little Charo 2	Little Charo 2:Adventure in the Middle World	リトル・チャロ2
13185	Juusen Battle Monsuno	Monsuno:World Master	獣旋バトル モンスーノ
13201	Monster Farm: Legend e no Michi	Monster Rancher (2000)	モンスターファーム～伝説[レジェンド]への道～
13203	Lupin the Third: Mine Fujiko to Iu Onna	Lupin the Third, The Woman Called Fujiko Mine	LUPIN the Third ～峰不二子という女～
13207	Himitsukessha Taka no Tsume Gaiden: Mukashi no Yoshida-kun	Unknown	秘密結社鷹の爪外伝 むかしの吉田くん
13231	Metal Fight Beyblade Zero G	Beyblade:Shogun Steel	メタルファイト ベイブレード ZEROG
13261	Inazuma Eleven Go: Chrono Stone	Unknown	イナズマイレブンGO クロノ・ストーン
13307	Shounen Ninja Kaze no Fujimaru	Unknown	少年忍者風のフジ丸
13331	Jormungand: Perfect Order	Jormungand Season 2:Perfect Order	ヨルムンガンド PERFECT ORDER
13333	Tari Tari	Tari Tari	TARI TARI
13349	Chouyaku Hyakuninisshu: Uta Koi.	Utakoi	超訳百人一首 うた恋い。
13367	Kono Naka ni Hitori, Imouto ga Iru!	NAKAIMO - My Little Sister Is Among Them!	この中に1人、妹がいる！
13377	Recorder to Randoseru Re♪	Recorder and Randsell Re	リコーダーとランドセル レ♪
13409	Moyashimon Returns	Unknown	もやしもん リターンズ
13431	Himitsukessha Taka no Tsume NEO	Unknown	秘密結社鷹の爪 NEO
13455	Zumomo to Nupepe	Unknown	ズモモとヌペペ
13457	Tomodachi 8-nin	Unknown	ともだち8にん
13459	Ribbon-chan	Unknown	リボンちゃん
13463	Panda no Taputapu	Unknown	パンダのたぷたぷ
13465	Little Charo: Touhoku-hen	Magical Journey:Little Charo in Tohoku	リトル・チャロ～東北編～
13503	Cofun Gal no Coffy (TV)	Tumulus Gal Coffy	古墳ギャルのコフィー
13505	Cofun Gal no Coffy Campus Life	Tumulus Gal Coffy Campus Life	古墳ギャルのコフィー　キャンパスライフ
13535	Binbougami ga!	Good Luck Girl!	貧乏神が!
13551	Shuukan Storyland	Unknown	週刊ストーリーランド
13585	Natsuyuki Rendezvous	Natsuyuki Rendezvous	夏雪ランデブー
13599	Robotics;Notes	Robotics;Notes	ロボティクス・ノーツ
13601	Psycho-Pass	Psycho-Pass	サイコパス
13655	Little Busters!	Little Busters!	リトルバスターズ!
13659	Ore no Imouto ga Konnani Kawaii Wake ga Nai.	Oreimo 2	俺の妹がこんなに可愛いわけがない。
13663	To LOVE-Ru Darkness	To LOVE Ru Darkness	To LOVEる -とらぶる- ダークネス
13679	Tottoko Hamtarou Hai!	Hamtaro Hai!	とっとこハム太郎は〜い!
13759	Sakura-sou no Pet na Kanojo	The Pet Girl of Sakurasou	さくら荘のペットな彼女
13769	Kamen no Ninja Akakage	Unknown	仮面の忍者赤影
14045	Mangirl!	Unknown	まんがーる!
14075	Zetsuen no Tempest	Blast of Tempest	絶園のテンペスト
14093	Pokemon Best Wishes! Season 2	Pokémon:Black & White:Rival Destinies	ポケットモンスター ベストウイッシュ シーズン2
14131	Girls & Panzer	Girls & Panzer	ガールズ&パンツァー
14199	Oniichan dakedo Ai sae Areba Kankeinai yo ne!	OniAi	お兄ちゃんだけど愛さえあれば関係ないよねっ
14211	Instant History	Unknown	インスタントヒストリー
14213	Otogi Manga Calendar	Unknown	おとぎマンガカレンダー
14227	Tonari no Kaibutsu-kun	My Little Monster	となりの怪物くん
14237	Busou Shinki	Busou Shinki:Armored War Goddess	武装神姫
14277	Chitose Get You!!	Unknown	ちとせげっちゅ!!
14283	Vividred Operation	Vividred Operation	ビビッドレッド・オペレーション
14289	Sukitte Ii na yo.	Say "I Love You".	好きっていいなよ。
14333	Tanken Driland	Unknown	探検ドリランド
14345	Btooom!	BTOOOM!	BTOOOM!
14355	Yama no Susume	Encouragement of Climb	ヤマノススメ
14397	Chihayafuru 2	Unknown	ちはやふる 2
14467	K	K	K
14511	Minami-ke Tadaima	Unknown	みなみけ ただいま
14513	Magi: The Labyrinth of Magic	Magi:The Labyrinth of Magic	マギ The labyrinth of magic
14515	Sasami-san@Ganbaranai	Unknown	ささみさん@がんばらない
14527	Medaka Box Abnormal	Medaka Box Abnormal	めだかボックス アブノーマル
14563	Maji de Otaku na English! Ribbon-chan: Eigo de Tatakau Mahou Shoujo	Unknown	マジでオタクなイングリッシュ! りぼんちゃん ~英語で戦う魔法少女~
14623	Chikyuu SOS Sore Ike Kororin	Do it Kororin Earth SOS	地球SOSそれいけコロリン
14645	Hiiro no Kakera Dai Ni Shou	Hiiro no Kakera:The Tamayori Princess Saga Season 2	緋色の欠片 第二章
14653	Hayate no Gotoku! Can't Take My Eyes Off You	Hayate the Combat Butler:Can't Take My Eyes Off You	ハヤテのごとく! CAN'T TAKE MY EYES OFF YOU
14693	Yurumates 3D Plus	Unknown	ゆるめいつ 3でぃPLUS
14713	Kamisama Hajimemashita	Kamisama Kiss	神様はじめました
14719	JoJo no Kimyou na Bouken (TV)	JoJo's Bizarre Adventure	ジョジョの奇妙な冒険
14741	Chuunibyou demo Koi ga Shitai!	Love, Chunibyo & Other Delusions!	中二病でも恋がしたい!
14749	Ore no Kanojo to Osananajimi ga Shuraba Sugiru	Oreshura	俺の彼女と幼なじみが修羅場すぎる
14765	Ixion Saga DT	Unknown	イクシオン サーガ DT
14811	GJ-bu	GJ Club	GJ部
14813	Yahari Ore no Seishun Love Comedy wa Machigatteiru.	My Teen Romantic Comedy SNAFU	やはり俺の青春ラブコメはまちがっている。
14827	D.C.III: Da Capo III	Unknown	D.C.III ～ダ・カーポIII～
14829	Fate/kaleid liner Prisma☆Illya	Fate/Kaleid Liner Prisma Illya	Fate/kaleid liner プリズマ☆イリヤ
14833	Maoyuu Maou Yuusha	Maoyu ~ Archenemy & Hero	まおゆう魔王勇者
14913	Battle Spirits: Sword Eyes	Unknown	バトルスピリッツ ソードアイズ
14921	RDG: Red Data Girl	Red Data Girl	RDG レッドデータガール
14941	AKB0048: Next Stage	AKB0048:Next Stage	AKB0048 next stage
14967	Boku wa Tomodachi ga Sukunai Next	Haganai:I don't have many friends NEXT	僕は友達が少ない NEXT
14989	Chousoku Henkei Gyrozetter	Unknown	超速変形ジャイロゼッター
15043	Haitai Nanafa	Unknown	はいたい七葉
15045	Litchi DE Hikari Club	Lychee Light Club	ライチ DE 光クラブ
15051	Love Live! School Idol Project	Love Live! School Idol Project	ラブライブ! School idol project
15069	Robin-kun to 100 nin no Otomodachi Season 2	Robin with his 100 Friends Season 2	ロビンくんと100人のお友達シーズン2
15085	Amnesia	Amnesia	AMNESIA
15109	Cuticle Tantei Inaba	Cuticle Detective Inaba	キューティクル探偵因幡
15119	Senran Kagura	Senran Kagura:Ninja Flash	閃乱カグラ
15125	Teekyuu	Teekyu	てーきゅう
15225	Hentai Ouji to Warawanai Neko.	The "Hentai" Prince and the Stony Cat.	変態王子と笑わない猫。
15313	Wooser no Sono Higurashi	Wooser's Hand-to-Mouth Life	うーさーのその日暮らし
15315	Mondaiji-tachi ga Isekai kara Kuru Sou Desu yo?	Problem children are coming from another world, aren't they?	問題児たちが異世界から来るそうですよ?
15377	Hyakka Ryouran: Samurai Bride	Samurai Bride	百花繚乱 サムライブライド
15379	Kotoura-san	The Troubled Life of Miss Kotoura	琴浦さん
15417	Gintama': Enchousen	Gintama:Enchousen	銀魂' 延長戦
15451	High School DxD New	High School DxD New	ハイスクールD×D NEW
15479	Hey Yo Yorang	Unknown	꼬마여우 요랑
15489	Yu☆Gi☆Oh! Zexal Second	Unknown	遊☆戯☆王ZEXALⅡ（セカンド）
15545	Oshiri Kajiri Mushi (TV)	Bottom Biting Bug	おしりかじり虫
15547	Cross Fight B-Daman eS	B-Daman Fireblast	クロスファイト ビーダマン eS
15565	Maken-Ki! Two	Maken-Ki! Two	マケン姫っ！通
15579	Shinkai Densetsu Meremanoid	Unknown	深海伝説MEREMANOID
15583	Date A Live	Date A Live	デート・ア・ライブ
15605	Brothers Conflict	Brothers Conflict	BROTHERS CONFLICT
15611	Cardfight!! Vanguard: Link Joker-hen	Cardfight!! Vanguard Link Joker	カードファイト!! ヴァンガード リンクジョーカー編
15613	Hakkenden: Touhou Hakken Ibun	Hakkenden -Eight Dogs of the East-	八犬伝 -東方八犬異聞-
15651	Phi Brain: Kami no Puzzle - Shukuteki! Rätsel-hen	Phi Brain:Puzzle of God 3	ファイ・ブレイン 〜神のパズル 宿敵！レイツェル編
15689	Nekomonogatari: Kuro	Nekomonogatari Black	猫物語（黒）
15699	Haiyore! Nyaruko-san W	Nyaruko:Crawling With Love! Second Season	這いよれ！ニャル子さん W
15731	Tamayura: More Aggressive	Unknown	たまゆら ～もあぐれっしぶ～
15749	Chiisana Ojisan	Unknown	ちいさなおじさん
15751	Senyuu.	Unknown	戦勇。
15787	Backstage Idol Story	Unknown	バックステージ・アイドル・ストーリー
15793	Senki Zesshou Symphogear G	Symphogear G	戦姫絶唱シンフォギアG
15795	Beast Saga	Unknown	ビーストサーガ
15809	Hataraku Maou-sama!	The Devil is a Part-Timer!	はたらく魔王さま!
15863	Ginga Kikoutai Majestic Prince	Majestic Prince	銀河機攻隊 マジェスティックプリンス
15865	Tamagotchi! Yume Kira Dream	Unknown	たまごっち! ゆめキラドリーム
15873	Pyun Pyun Maru	Unknown	ピュンピュン丸
15875	Shin Kyojin no Hoshi	Unknown	新巨人の星
15883	Fantasista Doll	Fantasista Doll	ファンタジスタドール
15897	Picchipichi Shizuku-chan	Unknown	ぴっちぴち♪しずくちゃん
15905	Qin Shi Ming Yue: Wanli Changcheng	Qin's Moon:The Great Wall	秦时明月 肆 万里长城
15911	Yuyushiki	Yuyushiki	ゆゆ式
15913	Happy☆Lucky Bikkuriman	Unknown	祝! (ハピ☆ラキ)ビックリマン
15915	Magical Hat	Unknown	まじかるハット
15957	Dokachin	Unknown	ドカチン
16005	Zettai Karen Children: The Unlimited - Hyoubu Kyousuke	Unlimited Psychic Squad	絶対可憐チルドレン THE UNLIMITED 兵部京介
16009	Kamisama no Inai Nichiyoubi	Sunday Without God	神さまのいない日曜日
16011	Tokyo Ravens	Tokyo Ravens	東京レイヴンズ
16027	Greek Roman Sinhwa: Olympus Guardian	Unknown	그리스 로마 신화-올림포스 가디언
16035	Karneval (TV)	Karneval	カーニヴァル
16049	Toaru Kagaku no Railgun S	A Certain Scientific Railgun S	とある科学の超電磁砲S
16051	Ro-Kyu-Bu! SS	Unknown	ロウきゅーぶ! SS
16067	Nagi no Asu kara	A Lull in the Sea	凪のあすから
16123	Saki Zenkoku-hen	Saki:The Nationals	咲-Saki-全国編
16131	Machine Robo: Butchigiri Battle Hackers	Unknown	マシンロボ ぶっちぎりバトルハッカーズ
16157	Choujigen Game Neptune The Animation	Hyperdimension Neptunia	超次元ゲイム ネプテューヌ THE ANIMATION
16159	Mirai Kara Kita Shounen Super Jetter	Unknown	未来から来た少年 スーパージェッター
16169	Choboraunyopomi Gekijou Ai Mai Mii	Ai-Mai-Mi	ちょぼらうにょぽみ劇場 あいまいみー
16201	Aku no Hana	Flowers of Evil	惡の華
16211	Bakumatsu Gijinden Roman	Bakumatsu Gijinden Roman	幕末義人伝 浪漫
16241	Yondemasu yo, Azazel-san. Z	You're Being Summoned, Azazel Z	よんでますよ、アザゼルさん。Z
16303	Chikkun Takkun	Unknown	チックン タックン
16317	Ishida to Asakura	Ishida & Asakura	石田とあさくら
16347	Usavich V	Usavich V	ウサビッチ V
16353	Love Lab	Love Lab	恋愛ラボ
16355	Dansai Bunri no Crime Edge	The Severing Crime Edge	断裁分離のクライムエッジ
16385	Dog Days''	Unknown	ドッグデイズ''
16393	Norakuro-kun	Unknown	のらくろクン
16397	Photokano	Photo Kano	フォトカノ
16405	Boku no Imouto wa "Osaka Okan"	Unknown	僕の妹は「大阪おかん」
16417	Tamako Market	Tamako Market	たまこまーけっと
16419	Dokidoki! Precure	Glitter Force Doki Doki	ドキドキ! プリキュア
16454	Surf Side High-School	Unknown	サーフサイドハイスクール
16486	Shin Kyojin no Hoshi II	Unknown	新巨人の星II
16498	Shingeki no Kyojin	Attack on Titan	進撃の巨人
16512	Devil Survivor 2 The Animation	Devil Survivor 2 The Animation	デビルサバイバー２ THE ANIMATION
16518	Arata Kangatari	Arata:The Legend	アラタカンガタリ～革神語～
16524	Suisei no Gargantia	Gargantia on the Verdurous Planet	翠星のガルガンティア
16526	Ranpou	Unknown	らんぽう
16530	Ojamanga Yamada-kun	Unknown	おじゃまんが山田くん
16592	Danganronpa: Kibou no Gakuen to Zetsubou no Koukousei The Animation	Danganronpa:The Animation	ダンガンロンパ 希望の学園と絶望の高校生 THE ANIMATION
16650	Pro Golfer Saru (TV)	Unknown	プロゴルファー猿
16668	Kakumeiki Valvrave	Valvrave the Liberator	革命機ヴァルヴレイヴ
16696	2020 Nyeon Ujuui Wonder Kiddy	2020 Wonder Kiddy	2020년 우주의 원더키디
16706	Kami nomi zo Shiru Sekai: Megami-hen	The World God Only Knows:Goddesses	神のみぞ知るセカイ 女神篇
16726	gdgd Fairies 2	Unknown	gdgd妖精s 2期
16732	Kiniro Mosaic	KINMOZA!	きんいろモザイク
16742	Watashi ga Motenai no wa Dou Kangaetemo Omaera ga Warui!	WataMote:No Matter How I Look At It, It's You Guys' Fault I'm Unpopular!	私がモテないのはどう考えてもお前らが悪い!
16890	Makai Ouji: Devils and Realist	Devils and Realist	魔界王子 devils and realist
16894	Kuroko no Basket 2nd Season	Kuroko's Basketball 2	黒子のバスケ
16906	Line Offline: Salaryman	Unknown	ＬＩＮＥ ＯＦＦＬＩＮＥ サラリーマン
16908	Ganbare! Oden-kun	The Adventure of Oden-kun	がんばれ！おでんくん
16910	Namiuchigiwa no Muromi-san	Muromi-san	波打際のむろみさん
16918	Gin no Saji	Silver Spoon	銀の匙
16982	Hayate no Gotoku! Cuties	Hayate the Combat Butler! Cuties	ハヤテのごとく！ Cuties
17074	Monogatari Series: Second Season	Monogatari Series:Second Season	〈物語〉シリーズ セカンドシーズン
17080	Soukyuu no Fafner: Dead Aggressor - Exodus	Unknown	蒼穹のファフナー Dead Aggressor EXODUS
17082	Aiura	Aiura	あいうら
17086	Agigongryong Doolie (1988)	Little Dino Dooly (1988)	아기공룡 둘리
17088	Agigongryong Doolie	Little Dino Dooly	아기공룡 둘리
17090	Agigongryong Doolie (2009)	Little Dino Dooly (2009)	아기공룡 둘리
17092	Dallyeola Hani	Unknown	달려라 하니
17102	Lolling Seutajeu	Rolling Stars	롤링 스타즈
17106	Wala! Pyeon-uijeom The Animation	Welcome to Wara Store!	와라! 편의점 the animation
17115	Pokemon Best Wishes! Season 2: Episode N	Pokémon:Black & White:Adventures in Unova	ポケットモンスター ベストウイッシュ シーズン2 エピソードN
17127	Chokkyuu Hyoudai Robot Anime: Straight Title	Straight Title Robot Anime	直球表題 ロボットアニメ-STRAIGHT TITLE-
17141	Kara The Animation	Unknown	KARA THE ANIMATION
17147	Gakkatsu! 2nd Season	Unknown	ガッ活！ 第2シーズン
17211	Shouwa Ahozoushi Akanuke Ichiban!	Unknown	昭和アホ草紙あかぬけ一番！
17247	Machine-Doll wa Kizutsukanai	Unbreakable Machine-Doll	機巧少女〈マシンドール〉は傷つかない
17249	Pretty Rhythm: Rainbow Live	Unknown	プリティーリズム・レインボーライブ
17265	Log Horizon	Log Horizon	ログ・ホライズン
17267	Futari wa Milky Holmes	Unknown	ふたりはミルキィホームズ
17291	Jinzou Konchuu Kabutoborg VxV	Unknown	人造昆虫カブトボーグ V×V
17315	Shin Pro Golfer Saru	Unknown	新プロゴルファー猿
17353	Tenpou Suikoden Neo	Unknown	天保水滸伝NEO
17389	Kingdom 2nd Season	Kingdom:Season 2	キングダム 第2シリーズ
17423	Pink Lady Monogatari: Eikou no Tenshi-tachi	Unknown	ピンク・レディー物語 栄光の天使たち
17457	Chingou Muchabee	Unknown	珍豪ムチャ兵衛
17467	Otoko Ippiki Gaki Daishou	Unknown	男一匹ガキ大将
17487	Tantei Shounen Kageman	Unknown	探偵少年カゲマン
17497	Jewelpet Happiness	Unknown	ジュエルペット ハッピネス
17505	Mushibugyou	Mushibugyo	ムシブギョー 蟲奉行
17513	Diabolik Lovers	Diabolik Lovers	DIABOLIK LOVERS
17521	Ookami Shounen Ken	Unknown	狼少年ケン
17549	Non Non Biyori	Non Non Biyori	のんのんびより
17599	Konpora Kid	Unknown	コンポラキッド
17601	Non-tan to Issho	Unknown	ノンタンといっしょ
17613	Poka Poka Mori no Rascal	Unknown	ぽかぽか森のラスカル
17619	Souya Monogatari	Unknown	宗谷物語
17623	Futago no Monchhichi	Unknown	ふたごのモンチッチ
17624	Omakase Scrappers	Unknown	おまかせ スクラッパーズ
17651	Genei wo Kakeru Taiyou	Day Break Illusion	幻影ヲ駆ケル太陽
17667	Harisu no Kaze	Unknown	ハリスの旋風
17669	Kunimatsu-sama no Otoridai	Unknown	国松さまのお通りだい
17671	Animal 1	Unknown	アニマル１
17681	Zettai Bouei Leviathan	Leviathan:The Last Defense	絶対防衛レヴィアタン
17687	Bemubemu Hunter Kotengu Tenmaru	Unknown	べムべムハンター・こてんぐテン丸
17703	Danchi Tomoo	Unknown	団地ともお
17705	DD Hokuto no Ken (2013)	DD Fist of the North Star	DD北斗の拳
17707	Glass no Kamen Desu ga	Unknown	ガラスの仮面ですが
17727	Haitai Nanafa 2nd Season	Unknown	はいたい七葉 2
17729	Grisaia no Kajitsu	The Fruit of Grisaia	グリザイアの果実
17731	Ketsuekigata-kun!	Unknown	血液型くん！
17733	Dibetagurashi: Ahiru no Seikatsu	Unknown	ぢべたぐらし あひるの生活
17741	Kimi no Iru Machi	A Town Where You Live	君のいる町
17777	Saikin, Imouto no Yousu ga Chotto Okashiinda ga.	Recently, my sister is unusual.	最近、妹のようすがちょっとおかしいんだが。
17821	Stella Jogakuin Koutou-ka C³-bu	Stella Women's Academy, High School Division Class C³	ステラ女学院高等科C³部（しーきゅーぶ）
17827	Daitoshokan no Hitsujikai	A Good Librarian Like a Good Shepherd	大図書館の羊飼い
17831	Inu to Hasami wa Tsukaiyou	Dog & Scissors	犬とハサミは使いよう
17849	Sparrow's Hotel	Sparrow's Hotel	スパロウズホテル
17873	Pokemon Best Wishes! Season 2: Decolora Adventure	Pokémon:Black & White:Adventures in Unova and Beyond	ポケットモンスター ベストウイッシュ シーズン２ デコロラアドベンチャー
17893	Cheonbangjichuk Hani	Unknown	천방지축 하니
17895	Golden Time	Golden Time	ゴールデンタイム
17909	Uchouten Kazoku	The Eccentric Family	有頂天家族
17917	Danball Senki Wars	Unknown	ダンボール戦機ウォーズ
17919	Houkago no Pleiades (TV)	Wish Upon the Pleiades	放課後のプレアデス
17969	Tanken Driland: 1000-nen no Mahou	Unknown	探検ドリランド-1000年の真宝（まほう）-
18001	Freezing Vibration	Freezing Vibration	フリージング ヴァイブレーション
18005	Forza! Hidemaru	Unknown	フォルツァ！ひでまる
18007	Dalam-iwa Goseumdochi	Brave Soldier	다람이와 고슴도치
18041	Rozen Maiden (2013)	Rozen Maiden:Zurückspulen	ローゼンメイデン (2013)
18055	Hakkenden: Touhou Hakken Ibun 2nd Season	Hakkenden -Eight Dogs of the East- Season 2	八犬伝 -東方八犬異聞- 2
18095	Nourin	No-Rin	のうりん
18097	Inazuma Eleven Go: Galaxy	Unknown	イナズマイレブンＧＯ ギャラクシー
18099	Recorder to Randoseru Mi☆	Recorder and Randsell Mi	リコーダーとランドセル ミ☆
18115	Magi: The Kingdom of Magic	Magi:The Kingdom of Magic	マギ The kingdom of magic
18119	Servant x Service	Servant x Service	サーバント×サービス
18121	Teekyuu 2	Teekyu 2	てーきゅう ２期
18133	Ikeike! Momon-chan	Unknown	いけいけ！ももんちゃん
18137	Train Heroes	Unknown	トレインヒーロー
18139	Tonari no Seki-kun	Tonari no Seki-kun:The Master of Killing Time	となりの関くん
18153	Kyoukai no Kanata	Beyond the Boundary	境界の彼方
18155	Line Town	Line Town	ラインタウン
18179	Yowamushi Pedal	Yowamushi Pedal	弱虫ペダル
18191	Boku wa Ou-sama (TV)	Unknown	ぼくは王さま (2013)
18195	Little Busters!: Refrain	Little Busters! ~Refrain~	リトルバスターズ！～Refrain～
18205	World Fool News (TV)	World Fool News	ワールド フールニュース
18227	Bakujuu Gasshin Ziguru Hazeru	Unknown	爆獣合神ジグルハゼル
18229	Gatchaman Crowds	Gatchaman Crowds	ガッチャマン クラウズ
18241	Himitsukessha Taka no Tsume MAX	Unknown	秘密結社鷹の爪 MAX
18245	White Album 2	White Album 2	ホワイトアルバム2
18247	IS: Infinite Stratos 2	Infinite Stratos 2	IS〈インフィニット・ストラトス〉2
18277	Strike the Blood	Strike the Blood	ストライク・ザ・ブラッド
18295	Kakumeiki Valvrave 2nd Season	Valvrave the Liberator 2nd Season	革命機ヴァルヴレイヴ　2ndシーズン
18365	Mazinger ZIP!	Unknown	マジンガーZIP!
18391	Mini Van	Unknown	みにヴぁん
18411	Gingitsune	Gingitsune:Messenger Fox of the Gods	ぎんぎつね
18447	Spheres	Unknown	스피어즈
18465	Genshiken Nidaime	Genshiken Second Season	げんしけん 二代目
18469	Odoriko Clinoppe	Unknown	踊り子クリノッペ
18495	Kitakubu Katsudou Kiroku	Chronicles of the Going Home Club	帰宅部活動記録
18497	Yozakura Quartet: Hana no Uta	Unknown	夜桜四重奏 ～ハナノウタ～
18507	Free!	Free! - Iwatobi Swim Club	Free!
18523	Senyuu. 2	Unknown	戦勇。2
18573	Noobow	Unknown	ぬーぼー
18635	Akane-chan	Little Miss Akane	あかねちゃん
18671	Chuunibyou demo Koi ga Shitai! Ren	Love, Chunibyo & Other Delusions!:Heart Throb	中二病でも恋がしたい！戀
18677	Yuusha ni Narenakatta Ore wa Shibushibu Shuushoku wo Ketsui Shimashita.	Yusibu:I couldnt become a hero, so I reluctantly decided to get a job.	勇者になれなかった俺はしぶしぶ就職を決意しました。
18679	Kill la Kill	KILL la KILL	キルラキル
18689	Diamond no Ace	Ace of Diamond	ダイヤのA[エース]
18767	BlazBlue: Alter Memory	BlazBlue:Alter Memory	ブレイブルー オルターメモリー
18771	Gifuu Doudou!!: Kanetsugu to Keiji	Unknown	義風堂々!! 兼続と慶次
18819	Alice Tantei Kyoku	Unknown	アリス 探偵局
18845	Ninja Hattori-kun (2012)	Unknown	忍者ハットリくん （2012年版）
18893	Aoki Hagane no Arpeggio: Ars Nova	Arpeggio of Blue Steel -Ars Nova-	蒼き鋼のアルペジオ ‐アルス・ノヴァ‐
18897	Nisekoi	Nisekoi:False Love	ニセコイ
18937	Hakken Taiken Daisuki! Shimajirou	Unknown	はっけん たいけん だいすき! しまじろう
18939	Shimajirou Hesoka	Unknown	しまじろう ヘソカ
18941	Shimajirou no Wow!	Unknown	しまじろうのわお!
18983	Yuuto-kun ga Iku	Unknown	ゆうとくんがいく
19023	Wake Up, Girls!	Wake Up, Girls!	Wake Up, Girls！
19067	Future Card Buddyfight	Future Card Buddyfight	フューチャーカード バディファイト
19087	Kaiketsu Tamagon	Unknown	かいけつタマゴン
19111	Love Live! School Idol Project 2nd Season	Love Live! School Idol Project 2	ラブライブ! School idol project 2期
19117	Toaru Hikuushi e no Koiuta	The Pilot's Love Song	とある飛空士への恋歌
19121	Doctor Chichibuyama	Unknown	ドクター秩父山
19151	Walkure Romanze	Unknown	ワルキューレロマンツェ
19157	Youkai Watch	Yo-kai Watch	妖怪ウォッチ
19163	Date A Live II	Date A Live II	デート・ア・ライブⅡ
19207	Maji de Otaku na English! Ribbon-chan: Eigo de Tatakau Mahou Shoujo - The TV	Unknown	マジでオタクなイングリッシュ! りぼんちゃん ~英語で戦う魔法少女~ the TV
19221	Ore no Nounai Sentakushi ga, Gakuen Love Comedy wo Zenryoku de Jama Shiteiru	My Mental Choices Are Completely Interfering With My School Romantic Comedy	俺の脳内選択肢が、学園ラブコメを全力で邪魔している
19257	Meganebu!	Meganebu!	メガネブ!
19291	Pokemon XY	Pokémon The Series:XY	ポケットモンスターXY
19305	Nyuru Nyuru!! Kakusen-kun	Unknown	にゅるにゅる!!KAKUSENくん
19311	Turuturutu Narongi	Unknown	뚜루뚜루뚜 나롱이
19315	Pupa	Pupa	Pupa (ピューパ)
19319	Gundam Build Fighters	Gundam Build Fighters	ガンダムビルドファイターズ
19325	Kwaegeol Longman Narongi	Unknown	쾌걸롱맨 나롱이
19363	Gin no Saji 2nd Season	Silver Spoon 2nd Season	銀の匙2ndシーズン
19365	Samurai Flamenco	Samurai Flamenco	サムライフラメンコ
19367	Galilei Donna	Galilei Donna:Storia di tre sorelle a caccia di un mistero	ガリレイドンナ
19369	Outbreak Company	Outbreak Company	アウトブレイク・カンパニー
19383	Yami Shibai	Yamishibai:Japanese Ghost Stories	闇芝居
19429	Akuma no Riddle	Riddle Story of Devil	悪魔のリドル
19445	Tetsujin 28-gou Gao!	Unknown	鉄人28号ガオ!
19457	Green Saver	Green Saver	그린세이버
19467	Revbahaf Wang-gug Jaegeon-soelgi	Unknown	ルブバハフ王国再建設記
19501	Giga Tribe	Unknown	기가 트라이브
19505	Kaizoku Ouji	Unknown	海賊王子
19547	Beompeoking Jaepeo	Unknown	범퍼킹 재퍼
19585	Kobo-chan	Unknown	コボちゃん
19647	Hajime no Ippo: Rising	Hajime No Ippo:The Fighting!	はじめの一歩 Rising
19681	Hustle Punch	Hustle Punch	ハッスルパンチ
19685	Kanojo ga Flag wo Oraretara	If Her Flag Breaks	彼女がフラグをおられたら
19703	Kyousou Giga (TV)	Kyousougiga	京騒戯画
19755	Oshiri Kajiri Mushi (TV) 2nd Season	Bottom Biting Bug 2	おしりかじり虫　第２シリーズ
19769	Mahou Sensou	Magical Warfare	魔法戦争
19775	Sidonia no Kishi	Knights of Sidonia	シドニアの騎士
19815	No Game No Life	No Game, No Life	ノーゲーム・ノーライフ
19825	Saikyou Ginga Ultimate Zero: Battle Spirits	Unknown	最強銀河 究極[アルティメット]ゼロ~バトルスピリッツ~
19831	Ore wa Chokkaku	Unknown	おれは直角
19839	Wei Qi Shao Nian 2	Go Player 2; Go Youngsters 2; Go Boy 2	围棋少年2
19841	Super Seisyun Brothers	Unknown	Super Seisyun Brothers -超青春姉弟s-
19843	Tamagotchi! Miracle Friends	Unknown	たまごっち！～みらくるフレンズ～
19855	Nobunagun	Nobunagun	ノブナガン
19871	Gaist Crusher	Unknown	ガイストクラッシャー
19873	Marude Dameo	Unknown	丸出だめ夫
19875	Robotan	Unknown	ロボタン
19877	Battle Spirits: Sword Eyes Gekitouden	Unknown	バトルスピリッツ ソードアイズ激闘伝
19901	Donkikko	Unknown	ドンキッコ
19919	Tesagure! Bukatsumono	Unknown	てさぐれ！部活もの
19947	Ikkyuu-san (1978)	Unknown	一球さん
19959	Barbapapa (1977)	Unknown	バーバパパ (1977)
19961	Heisei Tensai Bakabon	Unknown	平成天才バカボン
19965	Ikinari Dagon	Unknown	いきなりダゴン
19981	Shisukon Ouji	Unknown	シスコン王子
19985	Uchuujin Pipi	Unknown	宇宙人ピピ
19987	Kaitou Pride	Dr. Zen	怪盗プライド
19989	Tatakae! Osper	Unknown	戦え! オスパー
19991	Tobidase! Bacchiri	Unknown	とびだせ! バッチリ
19993	Kaminari Boy Pikkari★bee	Unknown	かみなり坊やピッカリ★ビー
19995	King Kong: 001/7 Tom Thumb	King Kong - 001/7 Tom Thumb	キングコング・001/7親指トム
19997	Fight Da!! Pyuta	Unknown	ファイトだ!! ピュー太
19999	Sobakasu Pucchi	Unknown	そばかすプッチー
20001	Mouretsu Atarou	Unknown	もーれつア太郎
20003	Roppou Yabure-kun	Unknown	六法やぶれクン
20005	Pinch to Punch	Unknown	ピンチとパンチ
20009	Doubutsu Mura Monogatari	Unknown	動物村ものがたり
20023	Otanoshimi Anime Gekijou	Unknown	おたのしみアニメ劇場
20025	Itazura Tenshi Chippo-chan	Unknown	いたずら天使チッポちゃん
20027	Nihon Meisaku Douwa Series: Akai Tori no Kokoro	Unknown	日本名作童話シリーズ 赤い鳥のこころ
20031	D-Frag!	D-Frag!	ディーふらぐ！
20033	Miss Monochrome The Animation	Unknown	ミス・モノクローム -The Animation-
20047	Sakura Trick	Sakura Trick	桜Trick
20053	Wizard Barristers: Benmashi Cecil	Wizard Barristers	ウィザード・バリスターズ～弁魔士セシル
20057	Space☆Dandy	Space Dandy	スペース☆ダンディ
20075	Obocchama-kun	Unknown	おぼっちゃまくん
20077	Dotanba no Manners	Unknown	ドタンバのマナー
20079	Ijiwaru Baasan	Unknown	いじわるばあさん
20081	Ijiwaru Baasan (1996)	Unknown	いじわるばあさん
20083	Doteraman	Unknown	ドテラマン
20085	Only You: Viva! Cabaret Club	Unknown	Only You ビバ! キャバクラ
20087	Treasure Gaust	Unknown	トレジャーガウスト
20115	Gekisou! Rubenkaiser	Unknown	激走! ルーベンカイザー
20117	Kotowaza House	Unknown	ことわざハウス
20123	Kappamaki	Kappamaki and the Sushi Kids	かっぱまき
20125	Tobidase! Machine Hiryuu	Unknown	とびだせ! マシーン飛竜
20127	Kariage-kun	Unknown	かりあげクン
20147	Robokko Beeton	Unknown	ろぼっ子ビートン
20173	Mori no Senshi Bonolon	Unknown	森の戦士ボノロン
20183	Manga Ijin Monogatari	Unknown	まんが偉人物語
20199	Ganbare Gonbe	Unknown	がんばれゴンベ
20201	Easy Cooking Animation: Seishun no Shokutaku	Unknown	EASY COOKING ANIMATION セイシュンの食卓
20223	Shounen Tokugawa Ieyasu	Unknown	少年徳川家康
20231	Manga Kodomo Bunko	Unknown	まんがこども文庫
20233	Tonari no Tamageta-kun	Unknown	となりのたまげ太くん
20237	Anime Document: München e no Michi	Unknown	アニメドキュメント ミュンヘンへの道
20239	Hana no Kakarichou	Unknown	花の係長
20243	Gatapishi	Unknown	ガタピシ
20267	Wooser no Sono Higurashi: Kakusei-hen	Wooser's Hand-to-Mouth Life:Awakening Arc	うーさーのその日暮らし　覚醒編
20329	Koroshiya-san: The Hired Gun	Unknown	殺し屋さん The hired gun
20431	Hoozuki no Reitetsu	Hozuki's Coolheadedness	鬼灯の冷徹
20457	Inari, Konkon, Koi Iroha.	Inari Kon Kon	いなり、こんこん、恋いろは。
20473	Teekyuu 3	Teekyu 3	てーきゅう ３期
20507	Noragami	Noragami:Stray God	ノラガミ
20509	Fate/kaleid liner Prisma☆Illya 2wei!	Fate/Kaleid Liner Prisma Illya 2Wei!	Fate/kaleid liner プリズマ☆イリヤ ツヴァイ!
20533	Z/X: Ignition	Unknown	Z/X IGNITION
20541	Mikakunin de Shinkoukei	Engaged to the Unidentified	未確認で進行形
20555	SoniAni: Super Sonico The Animation	Soni-Ani:Super Sonico The Animation	そにアニ -SUPER SONICO THE ANIMATION-
20583	Haikyuu!!	Haikyu!!	ハイキュー!!
20603	Kyoufu no Kyou-chan	Unknown	きょうふのキョーちゃん
20689	Hamatora The Animation	Hamatora The Animation	ハマトラ THE ANIMATION
20709	Sabage-bu!	Sabagebu! -Survival Game Club!-	さばげぶっ!
20755	Ganbare! Lulu Lolo	TINY★TWIN★BEARS	がんばれ！ルルロロ
20785	Mahouka Koukou no Rettousei	The Irregular at Magic High School	魔法科高校の劣等生
20787	Black Bullet	Black Bullet	ブラック・ブレット　BLACK BULLET　［黒の銃弾］
20847	Seitokai Yakuindomo*	Unknown	生徒会役員共＊
20853	Hitsugi no Chaika	Chaika -The Coffin Princess-	棺姫のチャイカ
20899	JoJo no Kimyou na Bouken Part 3: Stardust Crusaders	JoJo's Bizarre Adventure:Stardust Crusaders	ジョジョの奇妙な冒険 スターダストクルセイダース
20931	Oneechan ga Kita	Unknown	お姉ちゃんが来た
20945	Iron Kid	Eon Kid	아이언 키드
20971	Kiniro no Corda: Blue♪Sky	La corda d'oro:Blue♪Sky	金色のコルダ Blue♪Sky
20973	Sekai Seifuku: Bouryaku no Zvezda	World Conquest Zvezda Plot	世界征服～謀略のズヴィズダー～
21013	Marvel Disk Wars: The Avengers	Unknown	ディスク・ウォーズ：アベンジャーズ
21019	Noonbory	Noonbory & the Super 7	눈보리
21033	Seikoku no Dragonar	Dragonar Academy	星刻の竜騎士
21039	Gatchaman Crowds Insight	Gatchaman Crowds Insight	GATCHAMAN CROWDS insight（インサイト）
21053	Ikemen Kyuugo-tai Nurse Angels	Unknown	イケメン救護隊 Nurse Angels
21067	Strange+	Unknown	ストレンジ・プラス
21085	Witch Craft Works	Unknown	ウィッチクラフトワークス
21105	Love Stage!!	Love Stage!!	LOVE STAGE!!
21167	Escha & Logy no Atelier: Tasogare no Sora no Renkinjutsushi	Unknown	エスカ&ロジーのアトリエ ～黄昏の空の錬金術士～
21177	Nobunaga the Fool	Nobunaga the Fool	ノブナガ・ザ・フール
21185	Baby Steps	Unknown	ベイビーステップ
21267	Go! Go! 575	Unknown	ゴ～！ゴ～！ご～しちご～
21273	Gochuumon wa Usagi Desu ka?	Is the Order a Rabbit?	ご注文はうさぎですか？
21325	Pupipo!	Unknown	プピポー！
21327	Isshuukan Friends.	One Week Friends	一週間フレンズ。
21353	Tokyo ESP	Tokyo ESP	東京ESP
21405	Bokura wa Minna Kawai-sou	The Kawai Complex Guide to Manors and Hostel Behavior	僕らはみんな河合荘
21407	Happiness Charge Precure!	Unknown	ハピネスチャージプリキュア！
21421	Mahou Shoujo Taisen	Magica Wars	魔法少女大戦
21427	Minna Atsumare! Falcom Gakuen	Unknown	みんな集まれ！ファルコム学園
21431	Gokukoku no Brynhildr	Brynhildr in the Darkness	極黒のブリュンヒルデ
21433	Chou Zenmairobo: Patrasche	Unknown	超ゼンマイロボ パトラッシュ
21435	Yama no Susume: Second Season	Encouragement of Climb Season 2	ヤマノススメ セカンドシーズン
21437	Buddy Complex	Buddy Complex	バディ・コンプレックス
21439	Uta no☆Prince-sama♪ Maji Love Revolutions	Uta no Prince Sama Revolutions	うたの☆プリンスさまっ♪マジLOVEレボリューションズ
21447	Meitantei Rascal	Unknown	めいたんてい ラスカル
21483	Sanchoume no Yuuhi	Unknown	三丁目の夕日
21485	Dokkan! Robotendon	Unknown	ドッカン! ロボ天どん
21487	Shin Dokonjou Gaeru	Unknown	新・ど根性ガエル
21491	Ninjaman Ippei	Unknown	忍者マン 一平
21507	Soul Eater NOT!	Unknown	ソウルイーターノット！
21511	Kantai Collection: KanColle	KanColle:Kantai Collection	艦隊これくしょん -艦これ-
21523	Baku Tech! Bakugan Gachi	Unknown	爆TECH!爆丸ガチ
21539	Oraa Guzura Dado	Unknown	おらぁグズラだど
21549	Hitotsuboshi-ke no Ultra Baasan	Unknown	一ツ星家のウルトラ婆さん
21553	Asobo Toy-chan	Unknown	あそぼトイちゃん
21561	Ryuugajou Nanana no Maizoukin (TV)	Nanana's Buried Treasure	龍ヶ嬢七々々の埋蔵金
21563	Kamigami no Asobi	Kamigami no Asobi	神々の悪戯
21573	Senki Zesshou Symphogear GX	Symphogear GX	戦姫絶唱シンフォギアGX
21603	Mekakucity Actors	MEKAKUCITY ACTORS	メカクシティアクターズ
21639	Yu☆Gi☆Oh! Arc-V	Yu-Gi-Oh! Arc-V	遊☆戯☆王　アーク・ファイブ ARC-V
21671	Keroro	Unknown	ケロロ
21677	Captain Earth	Captain Earth	キャプテン・アース
21681	Hanayamata	Hanayamata	ハナヤマタ
21729	Cardfight!! Vanguard: Legion Mate-hen	Cardfight!! Vanguard Legion Mate	カードファイト!! ヴァンガード レギオンメイト編
21743	Donten ni Warau	Laughing Under the Clouds	曇天に笑う
21809	Kenzen Robo Daimidaler	Daimidaler:Prince vs. Penguin Empire	健全ロボ ダイミダラー
21821	Fuuun Ishin Dai☆Shogun	Dai-Shogun:Great Revolution	風雲維新ダイ☆ショーグン
21835	Majin Bone	Unknown	マジンボーン
21843	Shingeki no Bahamut: Genesis	Rage of Bahamut:Genesis	神撃のバハムート GENESIS
21845	Ushinawareta Mirai wo Motomete	In Search of the Lost Future	失われた未来を求めて
21851	Tesagure! Bukatsumono Encore	Unknown	てさぐれ！部活もの あんこーる
21855	Hanamonogatari	Hanamonogatari	花物語
21863	Mangaka-san to Assistant-san to The Animation	The Comic Artist and His Assistants	マンガ家さんとアシスタントさんと THE ANIMATION
21877	High Score Girl	Unknown	ハイスコアガール
21881	Sword Art Online II	Sword Art Online II	ソードアート・オンライン II
21939	Mushishi Zoku Shou	MUSHI-SHI -Next Passage-	蟲師 続章
21981	Pic-lele	Unknown	ピクレレ
21995	Ao Haru Ride	Blue Spring Ride	アオハライド
21997	Duel Masters Victory V	Unknown	デュエル・マスターズ ビクトリーV
21999	Duel Masters Victory V3	Duel Masters Victory V3	デュエル・マスターズ ビクトリーV3
22013	Koukaku Kidoutai Nyuumon Arise	Unknown	攻殻機動隊入門あらいず
22043	Fairy Tail (2014)	Fairy Tail Series 2	FAIRY TAIL（フェアリーテイル）
22065	T-Rex	The Adventures of T-Rex	T-レックス
22099	Hero Bank	Herobank	ヒーローバンク
22101	Soredemo Sekai wa Utsukushii	The World is Still Beautiful	それでも世界は美しい
22123	Inugami-san to Nekoyama-san	Inugami-san to Nekoyama-san	犬神さんと猫山さん
22135	Ping Pong the Animation	Ping Pong the Animation	ピンポン THE ANIMATION
22145	Kuroshitsuji: Book of Circus	Black Butler:Book of Circus	黒執事 Book of Circus
22147	Amagi Brilliant Park	Amagi Brilliant Park	甘城ブリリアントパーク
22189	Futsuu no Joshikousei ga [Locodol] Yattemita.	Locodol	普通の女子校生が【ろこどる】やってみた。
22199	Akame ga Kill!	Akame ga Kill!	アカメが斬る！
22215	Pretty Rhythm: All Star Selection	Unknown	プリティーリズム・オールスターセレクション
22219	Warera Salaryman Tou	Unknown	われらサラリーマン党
22221	Monoshiri Daigaku: Ashita no Calendar	Unknown	ものしり大学　明日のカレンダー
22225	Momo Kyun Sword	Momokyun Sword	モモキュンソード
22247	Azumi Mamma★Mia	Unknown	あずみ マンマ★ミーア
22265	Free!: Eternal Summer	Free! - Eternal Summer	Free!-Eternal Summer-
22273	Selector Infected WIXOSS	selector infected WIXOSS	selector infected WIXOSS
22297	Fate/stay night: Unlimited Blade Works	Fate/stay night [Unlimited Blade Works]	Fate/stay night [Unlimited Blade Works]
22313	Shinken Densetsu: Tight Road	Unknown	真拳伝説 タイトロード
22319	Tokyo Ghoul	Tokyo Ghoul	東京喰種-トーキョーグール-
22345	Funny Pets 2nd Season	Unknown	Funny Pets 2ndシーズン
22359	Sanzoku no Musume Ronja	Ronja Rövardotter	山賊の娘ローニャ
22381	Nandaka Velonica	Unknown	ナンダカベロニカ
22433	Break Blade	Broken Blade	ブレイク ブレイド
22439	Hello Kitty: Ringo no Mori no Mystery	Unknown	ハローキティ りんごの森のミステリー
22441	Hello Kitty: Ringo no Mori to Parallel Town	Unknown	ハローキティ りんごの森とパラレルタウン
22465	KutsuDaru.	Unknown	くつだる。
22503	Washimo	Unknown	わしも
22507	Initial D Final Stage	Unknown	頭文字 Final Stage
22509	Manga Nihonshi (NHK Han)	Unknown	まんが日本史[NHK版]
22535	Kiseijuu: Sei no Kakuritsu	Parasyte -the maxim-	寄生獣 セイの格率
22537	Yami Shibai 2	Yamishibai:Japanese Ghost Stories 2	闇芝居 2期
22541	Oniku Daisuki! Zeushi-kun	Unknown	おにくだいすき! ゼウシくん
22547	Blade & Soul	Blade & Soul	ブレイドアンドソウル
22585	Nukko.	Unknown	ぬっこ。
22651	Kero Kero Keroppi: Hasunoue Town Kiki Ippatsu!	Unknown	けろけろけろっぴ はすのうえタウン危機一髪!
22663	Seiken Tsukai no World Break	World Break:Aria of Curse for a Holy Swordsman	聖剣使いの禁呪詠唱〈ワールドブレイク〉
22669	Gohan Kaijuu Pap	Unknown	ごはんかいじゅうパップ
22687	Terra Formars	Terraformars	TERRA FORMARS [テラフォーマーズ]
22693	Lady Jewelpet	Unknown	レディ ジュエルペット
22709	Zettai Zetsumei Dangerous Jiisan (2005)	Unknown	絶体絶命でんぢゃらすじーさん
22729	Aldnoah.Zero	Aldnoah.Zero	アルドノア・ゼロ
22733	Dragon Collection	Unknown	ドラゴンコレクション
22735	Oreca Battle	Unknown	オレカバトル
22755	Chikasugi Idol Akae-chan	Unknown	地下すぎアイドル あかえちゃん
22777	Dragon Ball Kai (2014)	Dragon Ball Z Kai:The Final Chapters	ドラゴンボール改
22789	Barakamon	Barakamon	ばらかもん
22817	Kindaichi Shounen no Jikenbo Returns	The File of Young Kindaichi Returns	金田一少年の事件簿R【リターンズ】
22821	Himitsukessha Taka no Tsume EX	Unknown	秘密結社鷹の爪 EX
22831	Abarenbou Rikishi!! Matsutarou	Rowdy Sumo Wrestler Matsutaro!!	暴れん坊力士！！松太郎
22835	Himegoto	Unknown	ひめゴト
22849	Nyamen	Unknown	にゃ〜めん
22865	Rokujouma no Shinryakusha!? (TV)	Invaders of the Rokujyoma!?	六畳間の侵略者！？
22877	Seireitsukai no Blade Dance	Blade Dance of the Elementalers	精霊使いの剣舞〈ブレイドダンス〉
22893	Mon Cheri CoCo	Unknown	モンシェリCOCO
22955	Francesca	Hungry Zombie Francesca	フランチェスカ
22997	Shin Skyers 5	Unknown	新スカイヤーズ5
22999	Nippon Tanjou	Unknown	日本誕生
23001	Manga Jinbutsushi	Unknown	マンガ人物史
23011	Otoko Doahou! Koushien	Unknown	男どアホウ! 甲子園
23013	Norakuro	Unknown	のらくろ
23015	Hazedon	Chief Joker	ハゼドン
23037	Bakumatsu Rock	Samurai Jam -Bakumatsu Rock-	幕末Rock
23067	Tenkai Knights	Tenkai Knights	テンカイナイト
23079	Glasslip	Glasslip	グラスリップ
23107	GO-GO Tamagotchi!	Unknown	GO-GO たまごっち！
23121	Jinsei	JINSEI -Life Consulting-	人生相談テレビアニメーション「人生」
23133	M3: Sono Kuroki Hagane	Unknown	M3～ソノ黒キ鋼～
23135	PriPara	Unknown	プリパラ
23149	47 Todoufuken R	Unknown	47都道府犬R
23151	Shounen Hollywood: Holly Stage for 49	Unknown	少年ハリウッド-HOLLY STAGE FOR 49-
23199	Durarara!!x2 Shou	Durarara!! x2 Shou	デュラララ!!×２ 承
23201	Sengoku Basara: Judge End	Sengoku BASARA:End of Judgement	戦国BASARA Judge End
23209	Sora no Method	Celestial Method	天体のメソッド
23213	Kantoku Fuyuki Todoki	Insufficient Direction	監督不行届
23229	Meshimase Lodoss-tou Senki: Sorette Oishii no?	Unknown	召しませロードス島戦記～それっておいしいの？～
23233	Shinmai Maou no Testament	The Testament of Sister New Devil	新妹魔王の契約者〈テスタメント〉
23251	Gugure! Kokkuri-san	GUGURE! KOKKURI-SAN	繰繰れ！コックリさん
23259	Gundam: G no Reconguista	Gundam Reconguista in G	ガンダム Gのレコンギスタ
23269	Hello!! Kiniro Mosaic	Hello!! KINMOZA!	ハロー!!きんいろモザイク
23273	Shigatsu wa Kimi no Uso	Your Lie in April	四月は君の嘘
23277	Saenai Heroine no Sodatekata	Saekano:How to Raise a Boring Girlfriend	冴えない彼女〈ヒロイン〉の育てかた
23281	Psycho-Pass 2	Psycho-Pass 2	PSYCHO-PASS サイコパス 2
23283	Zankyou no Terror	Terror in Resonance	残響のテロル
23289	Gekkan Shoujo Nozaki-kun	Monthly Girls' Nozaki-kun	月刊少女野崎くん
23309	Rail Wars!	Rail Wars!	RAIL WARS! [レールウォーズ]
23311	Garo: Honoo no Kokuin	GARO:THE ANIMATION	牙狼〈GARO〉-炎の刻印-
23313	Zettai Zetsumei Dangerous Jiisan	Unknown	絶体絶命でんぢゃらすじーさん
23321	Log Horizon 2nd Season	Log Horizon 2	ログ・ホライズン 第2シリーズ
23325	Shirogane no Ishi: Argevollen	Argevollen	白銀の意思 アルジェヴォルン
23327	Space☆Dandy 2nd Season	Space Dandy 2nd Season	スペース☆ダンディ 第2シリーズ
23333	DRAMAtical Murder	DRAMAtical Murder	ドラマティカル マーダー
23347	Gan to Gon	Unknown	ガンとゴン
23349	Kirin Monoshiri Yakata	Unknown	キリンものしり館
23351	Youkaiden Nekome Kozou	Cat Eyed Boy	妖怪伝 猫目小僧
23375	Minarai Diva	Unknown	みならいディーバ
23393	Shin Don Chuck Monogatari	Unknown	新ドン・チャック物語
23409	Duel Masters VS	Unknown	デュエル・マスターズ VS
23421	Re:␣Hamatora	Re:Hamatora:Season 2	Re:␣ ハマトラ
23433	Shin Strange+	Unknown	真 ストレンジ・プラス
23511	Choubakuretsu Ijigen Menko Battle: Gigant Shooter Tsukasa	Unknown	超爆裂異次元メンコバトル ギガントシューター つかさ
23539	Gudetama	Unknown	ぐでたま
23551	Choboraunyopomi Gekijou Dai Ni Maku Ai Mai Mii: Mousou Catastrophe	Ai-Mai-Mi Mousou Catastrophe	ちょぼらうにょぽみ劇場第二幕 あいまいみー ~妄想カタストロフ~
23555	Neko no Dayan	Unknown	猫のダヤン
23587	The iDOLM@STER Cinderella Girls	THE IDOLM@STER CINDERELLA GIRLS	アイドルマスター シンデレラガールズ
23607	Gaki Deka	Unknown	がきデカ
23623	Non Non Biyori Repeat	Non Non Biyori Repeat	のんのんびより りぴーと
23673	Ookami Shoujo to Kuro Ouji	Wolf Girl & Black Prince	オオカミ少女と黒王子
23721	Carino Coni	Unknown	カリーノ・コニ
23737	Neko Pitcher	Unknown	猫ピッチャー
23755	Nanatsu no Taizai	The Seven Deadly Sins	七つの大罪
23787	Hi☆sCoool! SeHa Girls	Hi☆sCoool! SeHa Girls	Hi☆sCoool! セハガール
23799	Dango San Kyoudai Attoiuma Gekijou	Unknown	だんご3兄弟あっという間劇場
23829	Komatsu Sakyo Anime Gekijou	Unknown	小松左京アニメ劇場
23847	Yahari Ore no Seishun Love Comedy wa Machigatteiru. Zoku	My Teen Romantic Comedy SNAFU TOO!	やはり俺の青春ラブコメはまちがっている。続
23897	Lovely Movie: Itoshi no Muco	Lovely Movie:Lovely Muuuuuuuco!	ラブリームービー いとしのムーコ
23901	Lovely Movie: Itoshi no Muco Season 2	Lovely Movie:Lovely Muuuuuuuco! Season 2	ラブリームービー いとしのムーコ シーズン２
23915	The Adventures of Hello Kitty & Friends	Unknown	Hello Kitty 愛漫遊
23945	Majimoji Rurumo	Magimoji Rurumo	まじもじるるも
23973	Fuku-chan	Unknown	フクちゃん
24011	Lance N' Masques	Lance N' Masques	ランス・アンド・マスクス
24031	Denki-gai no Honya-san	Denki-gai	デンキ街の本屋さん
24037	Selector Spread WIXOSS	selector spread WIXOSS	selector spread WIXOSS
24041	Jarujio Animal	Unknown	ジャルジオ・アニマール
24075	Persona 4 the Golden Animation	Persona 4 the Golden ANIMATION	ペルソナ4 ザ・ゴールデンアニメーション
24121	Patta Potta Monta	Going Wild	パッタ ポッタ モン太
24133	Taimadou Gakuen 35 Shiken Shoutai	AntiMagic Academy 35th Test Platoon	対魔導学園35試験小隊
24135	Nobunaga Concerto	Unknown	信長協奏曲〈コンツェルト〉
24211	Orenchi no Furo Jijou	Unknown	オレん家のフロ事情
24231	Hitsugi no Chaika: Avenging Battle	Chaika -The Coffin Princess- Avenging Battle	棺姫のチャイカ AVENGING BATTLE
24277	Yowamushi Pedal: Grande Road	Unknown	弱虫ペダル GRANDE ROAD
24403	Nyanpuku Nyaruma	Unknown	にゃんぷくにゃるま
24405	World Trigger	Unknown	ワールドトリガー
24415	Kuroko no Basket 3rd Season	Kuroko's Basketball 3	黒子のバスケ
24417	Maido! Urayasu Tekkin Kazoku	Unknown	毎度！浦安鉄筋家族
24439	Kekkai Sensen	Blood Blockade Battlefront	血界戦線
24455	Madan no Ou to Vanadis	Lord Marksman and Vanadis	魔弾の王と戦姫 (ヴァナディース)
24465	Heli-Tako Puu-chan	Unknown	ヘリタコぷーちゃん
24625	Gundam Build Fighters Try	Gundam Build Fighters Try	ガンダムビルドファイターズトライ
24629	Koufuku Graffiti	Gourmet Girl Graffiti	幸腹グラフィティ
24663	Dororonpa!	Unknown	どろろんぱっ！
24699	Ai Tenchi Muyou!	Unknown	愛・天地無用!
24701	Mushishi Zoku Shou 2nd Season	Unknown	蟲師 続章
24703	High School DxD BorN	High School DxD BorN	ハイスクールD×D BorN
24705	Ore, Twintail ni Narimasu.	Gonna be the Twin-Tail!!	俺、ツインテールになります。
24765	Gakkougurashi!	School-Live!	がっこうぐらし！
24775	Koishite!! Namashi-chan	Unknown	恋して‼ ナマ子ちゃん
24793	Bloody Bunny	Unknown	BLOODY BUNNY
24797	Kubire 3 Shimai	Unknown	くびれ3姉妹
24833	Ansatsu Kyoushitsu	Assassination Classroom	暗殺教室
24835	Mobile Suit Gundam-san	Unknown	機動戦士ガンダムさん
24845	Nyanfuru	Unknown	にゃん符
24855	Girlfriend (Kari)	Girl Friend Beta	ガールフレンド(仮)
24873	Juuou Mujin no Fafnir	Unknown	銃皇無尽のファフニール
24875	Barnacle Lou	Unknown	따개비 루
24893	Sidonia no Kishi: Daikyuu Wakusei Seneki	Knights of Sidonia:Battle for Planet Nine	シドニアの騎士 第九惑星戦役
24909	Kaitou Joker	JOKER	怪盗ジョーカー
24969	Sumiko (TV)	Unknown	スミ子 (2014)
25013	Akatsuki no Yona	Yona of the Dawn	暁のヨナ
25059	Nikoniko, Pun	Unknown	にこにこ、ぷん
25063	Anime Roukyoku Kikou Shimizu no Jirochouden	Unknown	アニメ浪曲紀行 清水次郎長伝
25099	Ore ga Ojousama Gakkou ni "Shomin Sample" Toshite Gets♥Sareta Ken	Shomin Sample	俺がお嬢様学校に『庶民サンプル』としてゲッツされた件
25139	Oh! My Konbu	Unknown	OH!MYコンブ
25157	Trinity Seven	Trinity Seven	トリニティセブン
25159	Inou-Battle wa Nichijou-kei no Naka de	When Supernatural Battles Became Commonplace	異能バトルは日常系のなかで
25183	Gangsta.	Gangsta.	GANGSTA. ギャングスタ
25283	Kuusen Madoushi Kouhosei no Kyoukan	Sky Wizards Academy	空戦魔導士候補生の教官
25397	Absolute Duo	Absolute Duo	アブソリュート・デュオ
25429	Isuca	Isuca	ISUCA [イスカ]
25503	Fuusen Inu Tinny	Unknown	ふうせんいぬティニー
25517	Magic Kaito 1412	Unknown	まじっく快斗1412
25519	Yuuki Yuuna wa Yuusha de Aru	Yuki Yuna is a Hero	結城友奈は勇者である
25589	Yeongsimi	Unknown	영심이
25607	Sekai no Fushigi Tanken Series	Unknown	世界の不思議・探検シリーズ
25609	Genki Genki Non-tan	Unknown	げんき げんき ノンタン
25611	Genki Genki Non-tan (2004)	Unknown	げんき げんき ノンタン
25615	Genki Genki Non-tan (2006)	Unknown	げんき げんき ノンタン
25649	Junjou Romantica 3	Junjo Romantica 3	純情ロマンチカ 3
25681	Kamisama Hajimemashita◎	Kamisama Kiss Season 2	神様はじめました◎
25717	AIUEO Anime Sekai no Douwa: Aesop Monogatari Anime Series	Unknown	あいうえお・アニメ世界の童話 イソップ物語アニメシリーズ
25731	Cross Ange: Tenshi to Ryuu no Rondo	Cross Ange:Rondo of Angel and Dragon	クロスアンジュ 天使と竜の輪舞〈ロンド〉
25777	Shingeki no Kyojin Season 2	Attack on Titan Season 2	進撃の巨人 Season2
25809	Oretachi Ijiwaru Kei	Unknown	おれたちイジワルケイ
25835	Shirobako	Shirobako	SHIROBAKO
25859	Re-Kan!	RE-KAN!	レーカン！
25867	Rolling☆Girls	The Rolling Girls	ローリング☆ガールズ
25879	Working!!!	Wagnaria!!3	ワーキング!!!
25939	Mahou Shoujo Lyrical Nanoha ViVid	Unknown	魔法少女リリカルなのはViVid
25965	Backkom 2	Bernard	빼꼼 2
25967	Backkom Sports	Bernard	빼꼼 Sports
25999	Minna Atsumare! Falcom Gakuen SC	Unknown	みんな集まれ！ファルコム学園ＳＣ
26055	JoJo no Kimyou na Bouken Part 3: Stardust Crusaders 2nd Season	JoJo's Bizarre Adventure:Stardust Crusaders - Battle in Egypt	ジョジョの奇妙な冒険 スターダストクルセイダース
26085	Military!	Unknown	みりたり!
26087	Mama Ohanashi Kikasete	Unknown	ママお話きかせて
26089	Gutchonpa Omoshiro Hanashi	Unknown	グッチョンパおもしろ話
26163	Ganbare! Lulu Lolo 2nd Season	TINY★TWIN★BEARS 2nd Season	がんばれ！ルルロロ　第２シリーズ
26165	Yuri Kuma Arashi	Yurikuma Arashi	ユリ熊嵐
26243	Owari no Seraph	Seraph of the End:Vampire Reign	終わりのセラフ
26349	Danna ga Nani wo Itteiru ka Wakaranai Ken	I Can't Understand What My Husband Is Saying	旦那が何を言っているかわからない件
26351	Nagato Yuki-chan no Shoushitsu	The Disappearance of Nagato Yuki-chan	長門有希ちゃんの消失
26395	Teekyuu 4	Teekyu 4	てーきゅう ４期
26441	Junketsu no Maria	Maria the Virgin Witch	純潔のマリア
26443	Triage X	Triage X	トリアージX
26453	Tribe Cool Crew	Unknown	トライブクルクル
27369	Eigo de Asobo: Tanken Goblin Tou	Unknown	英語であそぼ たんけんゴブリン島
27393	Kyuumei Senshi Nanosaver	Unknown	救命戦士ナノセイバー
27441	Show By Rock!!	Unknown	SHOW BY ROCK!!（ショウ・バイ・ロック!!）
27451	Porong Porong Pororo 2	Pororo the Little Penguin 2	뽀롱뽀롱 뽀로로 2
27453	Pororo-wa Noraehaeyo	Sing-A-Long with Pororo	뽀로로와 노래해요
27455	Porong Porong Pororo 3	Pororo the Little Penguin 3	뽀롱뽀롱 뽀로로 3
27457	Porong Porong Pororo 4	Pororo the Little Penguin 4	뽀롱뽀롱 뽀로로 4
27459	Porong Porong Pororo 5	Pororo the Little Penguin 5	뽀롱뽀롱 뽀로로 5
27461	Pororo's English Show	Pororo's English Show	뽀로로 잉글리시쇼
27467	Yoligongju Loopy	Loopy, the Cooking Princess	요리공주 루피
27519	Konna Watashitachi ga Nariyuki de Heroine ni Natta Kekka www (TV)	Unknown	こんな私たちがなりゆきでヒロインになった結果www
27521	Gra-P & Rodeo	Unknown	ぐらＰ＆ろで夫
27525	Fate/kaleid liner Prisma☆Illya 2wei Herz!	Fate/Kaleid Liner Prisma Illya 2Wei Herz!	Fate/kaleid liner プリズマ☆イリヤ ツヴァイ ヘルツ！
27551	Deko Boko Friends	Unknown	でこぼこフレンズ
27589	47 Todoufuken	Unknown	47都道府犬
27621	Glass no Kamen Desu ga to Z	Unknown	ガラスの仮面ですが と Z
27629	Tantei Kageki Milky Holmes TD	Unknown	探偵歌劇ミルキィホームズTD
27631	God Eater	God Eater	GOD EATER
27655	Aldnoah.Zero 2nd Season	Aldnoah.Zero	アルドノア・ゼロ2ndシーズン
27663	Baby Steps 2nd Season	Unknown	ベイビーステップ 第2シリーズ
27681	Sasurai-kun	Unknown	さすらいくん
27687	Oshiri Kajiri Mushi (TV) 3rd Season	Bottom Biting Bug 3	おしりかじり虫　第３シリーズ
27693	Heart Cocktail	Unknown	ハートカクテル
27721	Kasumin	Mistin	カスミン (第1シリーズ)
27723	Kasumin 2nd Season	Unknown	カスミン (第2シリーズ)
27727	Binan Koukou Chikyuu Boueibu LOVE!	Cute High Earth Defense Club LOVE!	美男高校地球防衛部LOVE!
27737	Battle Spirits: Burning Soul	Unknown	バトルスピリッツ烈火魂〈バーニングソウル〉
27741	Shounen Hollywood: Holly Stage for 50	Unknown	少年ハリウッド-HOLLY STAGE FOR 50-
27757	Anisava	Unknown	ANISAVA
27775	Plastic Memories	Plastic Memories	プラスティック・メモリーズ
27785	Doamaiger D	Doamayger-D	ドアマイガーD
27787	Nisekoi:	Nisekoi:False Love	ニセコイ:
27811	Zhong Hua Xiao Zi	Shaolin Wuzang	中华小子
27815	Cardfight!! Vanguard G	Cardfight!! Vanguard G	カードファイト!! ヴァンガードG
27829	Heavy Object	Heavy Object	ヘヴィーオブジェクト
27831	Durarara!!x2 Ten	Durarara!! x2 Ten	デュラララ!!×２ 転
27833	Durarara!!x2 Ketsu	Durarara!! x2 Ketsu	デュラララ!!×2 結
27899	Tokyo Ghoul √A	Tokyo Ghoul √A	東京喰種√A
27927	Urawa no Usagi-chan	Unknown	浦和の調ちゃん
27943	Nano Invaders	Unknown	ナノ・インベーダーズ
27947	Lupin III (2015)	Lupin the Third	ルパン三世
27965	Maboroshi Mabo-chan	Unknown	まぼろしまぼちゃん
27989	Hibike! Euphonium	Sound! Euphonium	響け！ユーフォニアム
27991	K: Return of Kings	K:Return of Kings	K RETURN OF KINGS
28013	Macross Δ	Macross Delta	マクロスΔ（デルタ）
28019	Slippy Dandy	Unknown	SLIPPY DANDY
28025	Tsukimonogatari	Tsukimonogatari	憑物語
28071	Itsumo Kokoro ni Taiyou wo!	Unknown	いつも心に太陽を!
28087	Ehon Yose	Unknown	えほん寄席
28089	Oyo Neko Bunyan	Unknown	オヨネコ ぶーにゃん
28121	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka	Is It Wrong to Try to Pick Up Girls in a Dungeon?	ダンジョンに出会いを求めるのは間違っているだろうか
28145	Johnny Cypher	Johnny Cypher in Dimension Zero	ジョニーサイファー
28155	Yoru no Yatterman	Yatterman Night	夜ノヤッターマン
28171	Shokugeki no Souma	Food Wars! Shokugeki no Soma	食戟のソーマ
28201	Yeonghongibyeong Lazenca	Unknown	영혼기병 라젠카
28207	Ketsuekigata-kun! 2	Unknown	血液型くん！2
28221	Etotama	Etotama	えとたま（干支魂）
28223	Death Parade	Death Parade	デス・パレード
28247	Pankis! 2-jigen	Unknown	ぱんきす! 2次元
28249	Arslan Senki (TV)	The Heroic Legend of Arslan	アルスラーン戦記
28283	Sengoku Musou	Unknown	戦国無双
28297	Ore Monogatari!!	My Love Story!!	俺物語!!
28387	Joukamachi no Dandelion	Castle Town Dandelion	城下町のダンデライオン
28391	Ao no Kanata no Four Rhythm	Aokana:Four Rhythm Across the Blue	蒼の彼方のフォーリズム
28401	Q Transformers: Kaette Kita Convoy no Nazo	Unknown	キュートランスフォーマー 帰ってきたコンボイの謎
28423	Kyoukai no Rinne (TV)	RIN-NE	境界のRINNE
28497	Rokka no Yuusha	Rokka:Braves of the Six Flowers	六花の勇者
28537	Garo: Guren no Tsuki	Garo:Crimson Moon	GARO 紅蓮ノ月
28595	Pac-World	Unknown	パックワールド
28617	Punch Line	Punch Line	パンチライン
28619	Ranpo Kitan: Game of Laplace	Rampo Kitan:Game of Laplace	乱歩奇譚 Game of Laplace
28621	Subete ga F ni Naru	The Perfect Insider	すべてがFになる THE PERFECT INSIDER
28623	Koutetsujou no Kabaneri	Kabaneri of the Iron Fortress	甲鉄城のカバネリ
28669	Go! Princess Precure	Unknown	Go! プリンセスプリキュア
28677	Yamada-kun to 7-nin no Majo (TV)	Yamada-kun and the Seven Witches	山田くんと7人の魔女
28701	Fate/stay night: Unlimited Blade Works 2nd Season	Fate/stay night [Unlimited Blade Works] Season 2	Fate/stay night [Unlimited Blade Works] 2nd シーズン
28735	Shouwa Genroku Rakugo Shinjuu	Showa Genroku Rakugo Shinju	昭和元禄落語心中
28791	Gunslinger Stratos The Animation	Gunslinger Stratos:The Animation	ガンスリンガー ストラトス -THE ANIMATION-
28817	Mikagura Gakuen Kumikyoku (TV)	Mikagura School Suite	ミカグラ学園組曲
28819	Okusama ga Seitokaichou!	My Wife is the Student Council President!	おくさまが生徒会長！
28825	Himouto! Umaru-chan	Himouto! Umaru-chan	干物妹！うまるちゃん
28833	Chain Chronicle: Haecceitas no Hikari	Chain Chronicle:The Light of Haecceitas	チェインクロニクル～ヘクセイタスの閃〈ひかり〉～
28835	Tesagure! Bukatsumono Spin-off Purupurun Sharumu to Asobou	Unknown	てさぐれ！部活もの すぴんおふ プルプルんシャルムと遊ぼう
28861	Takamiya Nasuno Desu!: Teekyuu Spin-off	Unknown	高宮なすのです！〜てーきゅうスピンオフ〜
28869	Kaitou Joker 2nd Season	JOKER 2nd Season	怪盗ジョーカー シーズン
28883	Hidan no Aria AA	Aria the Scarlet Ammo AA	緋弾のアリアAA（ダブルエー）
28887	Setsuzoku Muyou	Unknown	接続無用
28891	Haikyuu!! Second Season	Haikyu!! 2nd Season	ハイキュー!! セカンドシーズン
28907	Gate: Jieitai Kanochi nite, Kaku Tatakaeri	GATE	GATE（ゲート）自衛隊　彼の地にて、斯く戦えり
28921	Disney Tsum Tsum	Disney Tsum Tsum	ディズニー ツムツム
28927	Owari no Seraph: Nagoya Kessen-hen	Seraph of the End:Battle in Nagoya	終わりのセラフ　名古屋決戦編
28929	Vampire Holmes	Unknown	VAMPIRE HOLMES
28977	Gintama°	Gintama Season 4	銀魂°
28979	To LOVE-Ru Darkness 2nd	To LOVE Ru Darkness 2	To LOVEる -とらぶる- ダークネス2nd
28981	Ame-iro Cocoa	Rainy Cocoa	雨色ココア
28999	Charlotte	Charlotte	Charlotte（シャーロット）
29003	Lena Lena	Unknown	レイナレイナ
29017	Wooser no Sono Higurashi: Mugen-hen	Wooser's Hand-to-Mouth Life:Phantasmagoric Arc	うーさーのその日暮らし 夢幻編
29067	Danna ga Nani wo Itteiru ka Wakaranai Ken 2 Sure-me	I Can't Understand What My Husband Is Saying:2nd Thread	旦那が何を言っているかわからない件2スレ目
29095	Grisaia no Rakuen	The Eden of Grisaia	グリザイアの楽園
29099	Washimo 2nd Season	Unknown	わしも 第2シリーズ
29163	Sore ga Seiyuu!	Seiyu's Life!	それが声優！
29209	Tomodachi de Iyou ne	Unknown	ともだちでいようね
29325	Koukaku Kidoutai Arise: Alternative Architecture	Ghost in the Shell:Arise - Alternative Architecture	攻殻機動隊 ARISE ALTERNATIVE ARCHITECTURE
29361	Kareshi wa Hammerhead Shark	Unknown	かれしはハンマーヘッドシャーク
29367	Jam the Housnail	Jam the Housnail	ジャム・ザ・ハウスネイル
29369	Tick & Tack	Tick & Tack	チックンタック
29371	Naccio to Pomm	Naccio and Pomm	ナッチョとポム
29373	Bip to Bap	The Adventures of Bip & Bap	ビップとバップ
29375	Robot Pulta	Unknown	ロボット・パルタ
29385	Chii-chan to Hige Ojisan	Unknown	ちぃちゃんとヒゲおじさん
29387	Momonga-mon	Momonga-mon	ももんがぁモン
29389	Shiro Hon	The White Book	白い本
29399	Ousama Monogatari	Unknown	王さまものがたり
29401	Shiritori Oukoku	Unknown	しりとり王国
29421	Liv & Bell	Liv & Bell	リヴ＆ベル
29425	Teach	Teach	ティーチ
29427	Mori no Ratio	Ratio of Forest	森のレシオ
29429	Straw Byururu	Unknown	ストローびゅるる
29431	Eddie the Fast Break	Eddie the Fast Break	エディ・ザ・ファーストブレイク
29433	Ken to Kaijuu	Ken & Monster	ケンとかいじゅう
29435	Ongaku Sekai Ryokou	Unknown	おんがく世界りょこう
29467	Bubaga	Bubaga	ぶーばーがー
29469	Daisuki! Nendomama	Unknown	大好き！ねんどママ
29471	Saikin Ponta	Unknown	サイキンポンタ
29473	Toko-chan Chokkin	Unknown	とこちゃんちょっきん
29485	Talpy	Talpy	タルピー
29487	Paniponi	Unknown	パニポニ
29489	Karasu no Puuta	Unknown	カラスのプータ
29507	Hamster Sam	Unknown	ハムスターサム
29527	Kagee Mukashibanashi	Unknown	影絵むかし話
29529	Kagee Aesop Monogatari	Unknown	影絵イソップ物語
29589	Denpa Kyoushi (TV)	Ultimate Otaku Teacher	電波教師
29687	Duel Masters VSR	Unknown	デュエル・マスターズ VSR
29715	Nar Doma	Unknown	ナルどマ
29722	Eikoku Ikka, Nihon wo Taberu	Sushi and Beyond	英国一家、日本を食べる
29738	Konchuu Monogatari Tentoumu Chu! to Mitsubachi Hatsu Chu!	Unknown	昆虫物語 てんとうむChu!とみつばちハッChu!
29740	Notteke Explet's	Unknown	のってけエクスプレッツ
29745	Korokoro Animal	Unknown	コロコロアニマル
29746	Kaden Manzai John TV Show!	Unknown	家電漫才 ジョンテレビSHOW！
29747	Warai no Show Gakkou	Unknown	笑いのSHOW学校
29748	Kabushiki Kaisha Zoo	Unknown	株式会社ZOO
29758	Taboo Tattoo	Taboo Tattoo	タブー・タトゥー
29759	Korokoro Animal 2	Unknown	コロコロアニマル2
29785	Jitsu wa Watashi wa	Actually, I am...	実は私は
29786	Shimoneta to Iu Gainen ga Sonzai Shinai Taikutsu na Sekai	SHIMONETA:A Boring World Where the Concept of Dirty Jokes Doesn't Exist	下ネタという概念が存在しない退屈な世界
29787	Gochuumon wa Usagi Desu ka??	Is the Order a Rabbit??	ご注文はうさぎですか??
29803	Overlord	Overlord	オーバーロード
29836	Akuei to Gacchinpo	Unknown	アークエとガッチンポー
29843	Akuei to Gacchinpo: Tenkomori	Unknown	アークエとガッチンポー てんこもり
29844	Nekoronde TV.	Unknown	ねころんでテレビ。
29846	Omakase! Miracle Cat-dan	Unknown	おまかせ! みらくるキャット団
29854	Ushio to Tora (TV)	Ushio and Tora	うしおととら
29865	BAR Kiraware Yasai	Unknown	BAR 嫌われ野菜
29941	Million Doll	Million Doll	ミリオンドール
29974	Diabolik Lovers More,Blood	Diabolik Lovers II:More,Blood	DIABOLIK LOVERS MORE,BLOOD
29976	Dance with Devils	Dance with Devils	ダンス・ウィズ・デビルス
30015	ReLIFE	ReLIFE	ReLIFE
30016	Nanbaka	Nanbaka	ナンバカ
30025	Otenki Boys	Unknown	おてんきボーイズ
30026	Ekubo Ouji	Unknown	えくぼおうじ
30027	Meisaku World	Unknown	めいさくわーるど/むかしばなし(アニメ)
30028	Sekai Meisaku Douwa Series	Unknown	世界名作童話シリーズ
30030	Jewelpet Magical Change	Unknown	ジュエルペット マジカルチェンジ
30034	Dolittle-sensei Monogatari	The Voyages of Doctor Dolittle	ドリトル先生物語
30039	Future Card Buddyfight Hundred	Future Card Buddyfight Hundred	フューチャーカード バディファイト100
30048	Kkurukkuru-wa Chingu-deul	Curucuru and Friends	꾸루꾸루와 친구들
30057	Mabeobsa-ui Adeul Cory	Unknown	마법사의 아들 코리
30060	Chi Jian Chuanqi	Crimson Sword Quest	赤剑传奇
30091	Chaos Dragon: Sekiryuu Seneki	Chaos Dragon	ケイオスドラゴン 赤竜戦役
30116	Yancharu Moncha	Unknown	やんちゃるモンちゃ
30117	Monpy	Monpy	もんぴー
30118	Futari wa Nakayoshi: Goo to Sue	Unknown	ふたりはなかよし グーとスー
30119	Yowamushi Monsters	Unknown	よわむしモンスターズ
30120	Spoon-hime no Swing Kitchen	Unknown	スプーンひめのスイングキッチン
30121	Fushigina Ano Ko wa Sutekina Kono Ko	Unknown	ふしぎなあのこはすてきなこのこ
30123	Akagami no Shirayuki-hime	Snow White with the Red Hair	赤髪の白雪姫
30127	Danchigai	Danchigai	だんちがい
30129	Konna Ko Iru kana	Unknown	こんなこいるかな
30131	Uwabaki Cook	Unknown	うわばきクック
30138	Rusuden Hour: Sodan Brothers	Unknown	留守電アワー SODANブラザーズ
30140	Xing Mao Lixian Ji Zhi Shu Fa Pian	Unknown	星猫历险记之书法篇
30144	Nyuru Nyuru!! Kakusen-kun 2nd Season	Unknown	にゅるにゅる!!KAKUSENくん2期
30151	Kamiusagi Rope: Warau Asa ni wa Fukuraitaru tte Maji ssuka!?	Unknown	紙兎ロペ 〜笑う朝には福来たるってマジっすか!?
30156	Ba La La Xiao Mo Xian Zhi: Meng Huan Xuan Lu	Balala the Fairies:Finding Melody	巴啦啦小魔仙之梦幻旋律
30173	Fruity Samurai	Unknown	フルーティー侍
30187	Sakurako-san no Ashimoto ni wa Shitai ga Umatteiru	Beautiful Bones -Sakurako's Investigation-	櫻子さんの足下には死体が埋まっている
30205	Aoharu x Kikanjuu	Aoharu x Machinegun	青春×機関銃
30223	Shishou Series	Unknown	師匠シリーズ
30230	Diamond no Ace: Second Season	Ace of Diamond:Second Season	ダイヤのA[エース]～Second Season～
30232	Tamagotchi! Tamatomo Daishuu GO	Unknown	たまごっち! たまともだいしゅーGO
30240	Prison School	Prison School	監獄学園〈プリズンスクール〉
30251	Venus Project: Climax	Venus Project:Climax	VENUS PROJECT（ヴィーナス プロジェクト）－CLIMAX－
30276	One Punch Man	One Punch Man	ワンパンマン
30279	Yuru Yuri San☆Hai!	Unknown	ゆるゆり さん☆ハイ！
30291	Mini Hama: Minimum Hamatora	Unknown	ミニはま -MINIMUM HAMATORA-
30296	Rakudai Kishi no Cavalry	Chivalry of a Failed Knight	落第騎士の英雄譚《キャバルリィ》
30307	Monster Musume no Iru Nichijou	Monster Musume:Everyday Life with Monster Girls	モンスター娘のいる日常
30342	Funassyi no Funafunafuna Biyori	Unknown	ふなっしーのふなふなふな日和
30344	The iDOLM@STER Cinderella Girls 2nd Season	THE IDOLM@STER CINDERELLA GIRLS 2nd SEASON	アイドルマスター シンデレラガールズ 2ndシーズン
30355	Wakaba*Girl	Wakaba Girl	わかば＊ガール
30363	Shinmai Maou no Testament Burst	The Testament of Sister New Devil:Burst	新妹魔王の契約者 BURST
30375	Starmyu	Starmyu	高校星歌劇［スタミュ］
30382	Aquarion Logos	Unknown	アクエリオンロゴス
30383	Classroom☆Crisis	Classroom☆Crisis	クラスルーム☆クライシス
30384	Miss Monochrome The Animation 2	Unknown	ミス・モノクローム -The Animation- 2
30385	Valkyrie Drive: Mermaid	Valkyrie Drive:Mermaid	ヴァルキリードライヴ　マーメイド
30386	Pikaia!	Unknown	ピカイア！
30409	Nepos Napos	Nepos Napos	ネポス・ナポス
30410	Gon 2nd Season	Unknown	GON -ゴン-(第2期)
30411	Happy Jozy	Unknown	ハッピージョージ
30417	Panpaka Pants O-New!	Unknown	パンパカパンツ おNEW！
30437	Wakako-zake	Wakakozake	ワカコ酒
30470	Himitsukessha Taka no Tsume DO	Unknown	秘密結社鷹の爪 DO
30484	Steins;Gate 0	Steins;Gate 0	シュタインズ・ゲート ゼロ
30485	ChäoS;Child	ChäoS;Child	CHAOS;CHILD
30503	Noragami Aragoto	Noragami Aragoto	ノラガミ ARAGOTO
30519	Ba La La Xiao Mo Xian Zhi: Caihong Xin Shi	Unknown	巴啦啦小魔仙之彩虹心石
30524	Kagewani	Kagewani	影鰐-KAGEWANI-
30544	Gakusen Toshi Asterisk	The Asterisk War	学戦都市アスタリスク
30549	Soukyuu no Fafner: Dead Aggressor - Exodus 2nd Season	Unknown	蒼穹のファフナー Dead Aggressor EXODUS
30567	Teekyuu 5	Teekyu 5	てーきゅう 5期
30602	Great Hunt	Unknown	Great Hunt (グレートハント)
30605	Uwabaki Cook no Tekitou Uranai!	Unknown	うわばきクックのテキトー占い!
30649	Shin Atashin'chi	Unknown	新あたしンち
30651	Itoshi no Muco	Lovely Muuuuuuuco!	いとしのムーコ
30652	Long Riders!	Long Riders!	ろんぐらいだぁす！
30654	Ansatsu Kyoushitsu 2nd Season	Assassination Classroom Second Season	暗殺教室　第２期
30694	Dragon Ball Super	Dragon Ball Super	ドラゴンボール超（スーパー）
30705	Makura no Danshi	makuranodanshi	枕男子（まくらのだんし）
30721	Hacka Doll The Animation	Hackadoll The Animation	ハッカドール THE・あにめーしょん
30727	Saenai Heroine no Sodatekata ♭	Saekano:How to Raise a Boring Girlfriend .flat	冴えない彼女〈ヒロイン〉の育てかた♭
30736	Shingeki no Bahamut: Virgin Soul	Rage of Bahamut:Virgin Soul	神撃のバハムート VIRGIN SOUL
30740	Young Black Jack	Young Black Jack	ヤング ブラック・ジャック
30746	Fushigi na Somera-chan	Unknown	不思議なソメラちゃん
30749	Saijaku Muhai no Bahamut	Undefeated Bahamut Chronicle	最弱無敗の神装機竜《バハムート》
30751	Usavich Zero	Unknown	ウサビッチZERO
30777	Kaijuu Sakaba Kanpai!	Unknown	怪獣酒場カンパーイ!
30782	Bikini Warriors	Bikini Warriors	ビキニ・ウォリアーズ
30795	Bakuon!!	Bakuon!!	ばくおん!!
30806	Schwarzesmarken	Schwarzes Marken	シュヴァルツェスマーケン
30826	Suzakinishi The Animation	Unknown	洲崎西 THE ANIMATION
30831	Kono Subarashii Sekai ni Shukufuku wo!	KonoSuba:God's Blessing on This Wonderful World!	この素晴らしい世界に祝福を！
30851	Q Transformers: Saranaru Ninki Mono e no Michi	Unknown	キュートランスフォーマー さらなる人気者への道
30875	Washimo 3rd Season	Unknown	わしも 第3期
30892	Boo Boo Boy	Unknown	ブーブーボーイ
30893	Deban Desu Yo! Onigirizu	Unknown	出番ですよ!オニギリズ
30895	HaruChika: Haruta to Chika wa Seishun suru	Haruchika:Haruta & Chika	ハルチカ ～ハルタとチカは青春する～
30901	Utawarerumono: Itsuwari no Kamen	Utawarerumono:The False Faces	うたわれるもの 偽りの仮面
30906	Malta no Bouken	Unknown	マルタの冒険
30911	Tales of Zestiria the Cross	Tales of Zestiria the X	テイルズ オブ ゼスティリア ザ クロス
30947	Kurayami Santa	Unknown	暗闇三太
30948	Kowabon	Unknown	こわぼん
30989	Bary-san no Imabari-ben Kouza	Unknown	バリィさんのいまばり弁講座
31018	DD Hokuto no Ken 2 Ichigo Aji+	DD Fist of the North Star 2:Strawberry Flavor Plus	DD北斗の拳2 イチゴ味+
31019	Norasco (TV)	Unknown	野良スコ
31043	Boku dake ga Inai Machi	ERASED	僕だけがいない街
31044	Kamisama Minarai: Himitsu no Cocotama	Unknown	かみさまみならい ヒミツのここたま
31049	Beyblade Burst	Unknown	ベイブレードバースト
31054	Letchu, Getchu, Saru Getchu	Unknown	レッチュ ゲッチュ サルゲッチュ
31068	Hime Chen! Otogi Chikku Idol Lilpri (2011)	Spellbound! Magical Princess Lilpri	ひめチェン! おとぎちっくアイドル リルぷりっ
31071	Kinyoru, Abe Reiji: Heikinteki na Salaryman no Ijou na Nichijou	Unknown	金夜、安部礼司～平均的なサラリーマンの異常な日常～
31078	PikkaPika Summer	Unknown	ぴっかぴかサマー
31080	Anne Happy♪	Anne-Happy	あんハピ♪
31091	Komori-san wa Kotowarenai!	Komori-san Can't Decline!	小森さんは断れない！
31098	Ushio to Tora (TV) 2nd Season	Ushio & Tora	うしおととら
31109	Hatsukoi Monster	First Love Monster	初恋モンスター
31139	Ame-iro Cocoa: Rainy Color e Youkoso!	Rainy Cocoa, Welcome to Rainy Color	雨色ココア Rainy colorへようこそ！
31143	Onsen Yousei Hakone-chan	Hakone-chan	温泉幼精ハコネちゃん
31147	Concrete Revolutio: Choujin Gensou	Concrete Revolutio	コンクリート・レボルティオ～超人幻想～
31150	Xi Yang Yang Yu Hui Tai Lang	Pleasant Goat and Big Big Wolf	喜羊羊与灰太狼
31157	ClassicaLoid	ClassicaLoid	クラシカロイド
31163	Dimension W	Dimension W	Dimension W
31173	Akagami no Shirayuki-hime 2nd Season	Snow White with the Red Hair 2	赤髪の白雪姫
31174	Osomatsu-san	Mr. Osomatsu	おそ松さん
31177	Yakyuubu Aruaru	Unknown	野球部あるある
31178	Uta no☆Prince-sama♪ Maji Love Legend Star	Uta no Prince Sama Legend Star	うたの☆プリンスさまっ♪マジLOVE レジェンドスター
31181	Owarimonogatari	Owarimonogatari	終物語
31196	Cardfight!! Vanguard G: GIRS Crisis-hen	Cardfight!! Vanguard G GIRS Crisis	カードファイト!! ヴァンガードG　ギアースクライシス編
31211	Choegang Top Plate	Unknown	최강 탑플레이트
31221	Tantei Team KZ Jiken Note	Unknown	探偵チームＫＺ（カッズ）事件ノート
31223	Phantasy Star Online 2 The Animation	Unknown	ファンタシースターオンライン２ ジ アニメーション
31227	Kindaichi Shounen no Jikenbo Returns 2nd Season	Unknown	金田一少年の事件簿R【リターンズ】
31229	Servamp	SERVAMP	SERVAMP（サーヴァンプ）
31237	Ganbare-bu Next!	Unknown	ガンバレー部NEXT！
31239	Kotori Samba	Kotori Samba	コトリサンバ
31240	Re:Zero kara Hajimeru Isekai Seikatsu	Re:ZERO -Starting Life in Another World-	Re：ゼロから始める異世界生活
31246	Choegang Habche: Mix Master	Mix Master:Final Force	최강 합체 믹스마스터
31251	Mobile Suit Gundam: Iron-Blooded Orphans	Mobile Suit Gundam:Iron-Blooded Orphans	機動戦士ガンダム 鉄血のオルフェンズ
31318	Comet Lucifer	Comet Lucifer	コメット・ルシファー
31338	Hundred	Hundred	ハンドレッド
31339	Drifters	Drifters	DRIFTERS
31361	Neko Enikki	Unknown	猫絵日記
31370	Tonkatsu DJ Agetarou	Unknown	とんかつDJアゲ太郎
31374	Shingeki! Kyojin Chuugakkou	Attack on Titan:Junior High	進撃！巨人中学校
31376	Flying Witch	Flying Witch	ふらいんぐうぃっち
31404	Netoge no Yome wa Onnanoko ja Nai to Omotta?	And you thought there is never a girl online?	ネトゲの嫁は女の子じゃないと思った？
31405	Joker Game	Joker Game	ジョーカー・ゲーム
31410	Mini Van 2nd Season	Unknown	みにヴぁん
31414	Nijiiro Days	Rainbow Days	虹色デイズ
31417	Binan Koukou Chikyuu Boueibu LOVE! LOVE!	Cute High Earth Defense Club LOVE! LOVE!	美男高校地球防衛部LOVE！LOVE！
31422	Minami Kamakura Koukou Joshi Jitenshabu	Minami Kamakura High School Girls Cycling Club	南鎌倉高校女子自転車部
31427	Zinba	Zinba	神魄
31430	Terra Formars: Revenge	Unknown	テラフォーマーズ リベンジ
31433	Ginga Eiyuu Densetsu: Die Neue These - Kaikou	Legend of the Galactic Heroes:Die Neue These	銀河英雄伝説 Die Neue These 邂逅
31439	Wagamama High Spec	Wagamama High Spec	ワガママハイスペック
31440	Teekyuu 6	Teekyu 6	てーきゅう 6期
31442	Musaigen no Phantom World	Myriad Colors Phantom World	無彩限のファントム・ワールド
31445	Minna Atsumare! Falcom Gakuen 3rd Season	Unknown	みんな集まれ! ファルコム学園　３期
31452	Norn9: Norn+Nonet	Norn9	NORN9 ノルン+ノネット
31456	Code:Realize - Sousei no Himegimi	Code:Realize ~Guardian of Rebirth~	Code:Realize ～創世の姫君～
31464	Pichiko Dakyuubu	Unknown	ピチ高野球部
31478	Bungou Stray Dogs	Bungo Stray Dogs	文豪ストレイドッグス
31498	Pan de Peace!	Pan de Peace!	パンでPeace！
31500	High School Fleet	High School Fleet	ハイスクール・フリート
31517	Ohayou Ninja-tai Gatchaman	Unknown	おはよう忍者隊ガッチャマン
31519	Anitore! EX	Anime de Training! Ex	あにトレ！ＥＸ
31534	Larva	Unknown	라바
31537	Manaria Friends	Mysteria Friends	マナリアフレンズ
31539	Kyoufu! Zombie Neko	Unknown	きょーふ！ゾンビ猫
31540	Sekkou Boys	Sekko Boys	石膏ボーイズ
31547	Ryouma 30 Seconds	Unknown	龍馬 30 Seconds
31549	Peeping Life TV: Season 1??	Unknown	Peeping Life（ピーピングライフ）TV シーズン1 ??
31555	Doushitemo Eto ni Hairitai	Unknown	どうしても干支にはいりたい
31559	Prince of Stride: Alternative	Prince of Stride:Alternative	プリンス・オブ・ストライド　オルタナティブ
31560	Miss Monochrome The Animation 3	Unknown	ミス・モノクローム -The Animation- 3
31562	Neko no Dayan: Nihon e Iku	Unknown	猫のダヤン　日本へ行く
31564	Sansha Sanyou	Three Leaves, Three Colors	三者三葉
31566	Ketsuekigata-kun! 3	Unknown	血液型くん！3
31573	Brave Beats	Brave Beats	ブレイブビーツ
31578	JK Meshi!	JK-MESHI!	ＪＫめし！
31580	Ajin	Ajin:Demi-Human	亜人
31588	All Out!!	All Out!!	オールアウト!!
31592	Pokemon XY&Z	Pokémon the Series:XYZ	ポケットモンスターXY&Z
31610	Kyoukai no Rinne (TV) 2nd Season	RIN-NE	境界のRINNE　第２シリーズ
31621	Ooyasan wa Shishunki!	Ooya-san wa Shishunki!	大家さんは思春期！
31629	Granblue Fantasy The Animation	Unknown	GRANBLUE FANTASY The Animation
31630	Gyakuten Saiban: Sono "Shinjitsu", Igi Ari!	Ace Attorney	逆転裁判 ～その「真実」、異議あり！～
31631	Monster Hunter Stories: Ride On	Monster Hunter Stories:Ride On	モンスターハンターストーリーズ RIDE ON
31633	Sushi Police	Unknown	SUSHI POLICE（スシポリス）
31636	Dagashi Kashi	Dagashi Kashi	だがしかし
31637	Gate: Jieitai Kanochi nite, Kaku Tatakaeri 2nd Season	GATE	GATE（ゲート）自衛隊　彼の地にて、斯く戦えり　第2クール
31640	Fuusen Inu Tinny 2nd Season	Unknown	ふうせんいぬティニー 第2シリーズ
31646	3-gatsu no Lion	March comes in like a lion	3月のライオン
31670	Kaitou Joker 3rd Season	JOKER 3rd Season	怪盗ジョーカー シーズン
31673	Larva 2nd Season	Unknown	라바
31674	Larva 3rd Season	Unknown	라바
31680	Super Lovers	Super Lovers	SUPER LOVERS（スーパーラヴァーズ）
31691	San Mao Liu Lang Ji	Wanderings of Sanmao	三毛流浪记
31692	Gogulyeoui Jeolm-eun Musadeul	Unknown	고구려의 젊은 무사들
31696	Witch Village Story	Unknown	ウィッチ ヴィレッジ ストーリー
31698	Zhan Long Si Qu	Go For Speed	战龙四驱
31699	Good Morning!!! Doronjo	Unknown	グッド・モーニング!!!ドロンジョ
31700	Xiao Taiji	Taichi Kid	小太極
31701	Wu Lan Qi Qi Ge	Twins on the Pasture	烏蘭其其格
31706	Fate/kaleid liner Prisma☆Illya 3rei!!	Unknown	Fate/kaleid liner プリズマ☆イリヤ 3rei!!
31710	Divine Gate	Divine Gate	ディバインゲート
31716	Rewrite	Rewrite	リライト
31722	Nanatsu no Taizai: Seisen no Shirushi	The Seven Deadly Sins:Signs of Holy War	七つの大罪 聖戦の予兆
31733	Bishoujo Senshi Sailor Moon Crystal Season III	Pretty Guardian Sailor Moon Crystal Season III	美少女戦士セーラームーンCrystal　第３期＜デス・バスターズ編＞
31737	Gakusen Toshi Asterisk 2nd Season	The Asterisk War Season 2	学戦都市アスタリスク
31741	Magi: Sinbad no Bouken (TV)	Magi:Adventure of Sinbad	マギ シンドバッドの冒険
31746	Dochamon Junior	Unknown	どちゃもん じゅにあ
31747	Oshiri Kajiri Mushi (TV) 4th Season	Bottom Biting Bug 4	おしりかじり虫　第４シリーズ
31753	Ganbare! Lulu Lolo 3rd Season	TINY★TWIN★BEARS 3rd Season	がんばれ！ルルロロ　第３シリーズ
31764	Nejimaki Seirei Senki: Tenkyou no Alderamin	Alderamin on the Sky	ねじ巻き精霊戦記 天鏡のアルデラミン
31771	Amanchu!	Unknown	あまんちゅ！
31777	Neko nanka Yondemo Konai.	Unknown	猫なんかよんでもこない。
31783	Yowamushi Pedal: New Generation	Unknown	弱虫ペダル NEW GENERATION
31790	Active Raid: Kidou Kyoushuushitsu Dai Hachi Gakari	Active Raid	アクティヴレイド　－機動強襲室第八係－
31793	Mahou Shoujo Nante Mou Ii Desukara.	Mahou Shoujo Nante Mouiidesukara	魔法少女なんてもういいですから。
31798	Kiznaiver	Kiznaiver	キズナイーバー
31804	Kuma Miko	Kumamiko:Girl Meets Bear	くまみこ
31815	Kono Danshi, Mahou ga Oshigoto Desu.	This Boy is a Professional Wizard	この男子、魔法がお仕事です。
31821	Arslan Senki (TV): Fuujin Ranbu	The Heroic Legend of Arslan:Dust Storm Dance	アルスラーン戦記  風塵乱舞
31845	Masou Gakuen HxH	Hybrid x Heart Magias Academy Ataraxia	魔装学園H×H
31848	Ojisan to Marshmallow	Ojisan and Marshmallow	おじさんとマシュマロ
31859	Hai to Gensou no Grimgar	Grimgar:Ashes and Illusions	灰と幻想のグリムガル
31884	Mahoutsukai Precure!	Maho Girls Precure!	魔法つかいプリキュア！
31890	Nurse Witch Komugi-chan R	Unknown	ナースウィッチ小麦ちゃんR
31892	The Legend of Huainanzi	Unknown	淮南子传奇
31893	The Legend of Huainanzi 2nd Season	Unknown	淮南子传奇
31898	Robocar Poli	Unknown	로보카 폴리
31904	Big Order (TV)	Unknown	ビッグオーダー
31914	Shoujo-tachi wa Kouya wo Mezasu	Girls Beyond the Wasteland	少女たちは荒野を目指す
31924	Monchhichiisu	Unknown	もんちっちーず
31931	Full Metal Panic! Invisible Victory	Full Metal Panic! Invisible Victory	フルメタル・パニック！Invisible Victory
31933	JoJo no Kimyou na Bouken Part 4: Diamond wa Kudakenai	JoJo's Bizarre Adventure:Diamond is Unbreakable	ジョジョの奇妙な冒険 ダイヤモンドは砕けない
31952	Kono Bijutsubu ni wa Mondai ga Aru!	This Art Club Has a Problem!	この美術部には問題がある！
31953	New Game!	New Game!	NEW GAME!
31964	Boku no Hero Academia	My Hero Academia	僕のヒーローアカデミア
31965	Ba La La Xiao Mo Xian Zhi: Qiji Wubu	Unknown	巴啦啦小魔仙之奇迹舞步
31988	Hibike! Euphonium 2	Sound! Euphonium 2	響け！ユーフォニアム2
31994	Yami Shibai 3	Yamishibai:Japanese Ghost Stories 3	闇芝居 3期
32011	Hakuouki: Otogisoushi	Unknown	薄桜鬼～御伽草子～
32013	Oshiete! Galko-chan	Please tell me! Galko-chan	おしえて! ギャル子ちゃん
32023	Bubuki Buranki	BBK/BRNK	ブブキ・ブランキ
32032	Seikaisuru Kado	KADO:The Right Answer	正解するカド
32038	Show By Rock!! #	Show By Rock!! 2	SHOW BY ROCK!! ＃
32039	Show By Rock!! Short!!	Show By Rock!! Short!!	SHOW BY ROCK!! しょ～と!!
32083	Luck & Logic	Luck & Logic	ラクエンロジック
32084	Watashitachi, Luck Logic-bu!	Unknown	私たち、らくろじ部！
32093	Tanaka-kun wa Itsumo Kedaruge	Tanaka-kun is Always Listless	田中くんはいつもけだるげ
32094	Reikenzan: Hoshikuzu-tachi no Utage	Unknown	霊剣山 星屑たちの宴
32105	Sousei no Onmyouji	Twin Star Exorcists	双星の陰陽師
32136	Narara Superboard	The Flying Superboard	날아라 슈퍼보드
32171	Ange Vierge	Unknown	アンジュ・ヴィエルジュ
32175	Shounen Maid	Shonen Maid	少年メイド
32182	Mob Psycho 100	Mob Psycho 100	モブサイコ100
32189	Danganronpa 3: The End of Kibougamine Gakuen - Mirai-hen	Danganronpa 3:The End of Hope's Peak High School - Future Arc	ダンガンロンパ3 -The End of 希望ヶ峰学園- 未来編
32212	Ensemble Stars!	Unknown	あんさんぶるスターズ！
32214	Koukaku no Pandora	Pandora in the Crimson Shell	紅殻のパンドラ
32221	Robocar Poli 2	Unknown	로보카 폴리
32228	Teekyuu 7	Teekyu 7	てーきゅう 7期
32230	Xi You Ji	Journey to the West:Legends of the Monkey King	西游记
32237	Burutabu-chan	Unknown	ぶるたぶちゃん
32245	Kuromukuro	Kuromukuro	クロムクロ
32262	Renai Boukun	Love Tyrant	恋愛暴君
32271	Dies Irae	Dies irae	Dies irae
32274	Ketsuekigata-kun! 4	Unknown	血液型くん！4
32282	Shokugeki no Souma: Ni no Sara	Food Wars! The Second Plate	食戟のソーマ 弍ノ皿
32301	Active Raid: Kidou Kyoushuushitsu Dai Hachi Gakari 2nd	Active Raid Second	アクティヴレイド　－機動強襲室第八係－ 2nd
32309	Tabi Machi Late Show	Unknown	旅街レイトショー
32313	Concrete Revolutio: Choujin Gensou - The Last Song	Unknown	コンクリート・レボルティオ～超人幻想～THE LAST SONG
32353	Bonobono (TV 2016)	Bono Bono	ぼのぼの
32360	Qualidea Code	Unknown	クオリディア・コード
32370	D.Gray-man Hallow	D.Gray-man HALLOW	ディー・グレイマン ハロー
32379	Berserk	Berserk	ベルセルク
32400	KochinPa!	Unknown	コチンPa！
32402	Mim Mam Mint	Unknown	ミムマムミント
32407	Clockwork Planet	Clockwork Planet	クロックワーク・プラネット
32417	Chibinacs	Unknown	チビナックス
32418	Chibinacs 2.0	Unknown	チビナックス2.0
32419	Chibinacs 3	Unknown	チビナックス3
32438	Mayoiga	The Lost Village	迷家-マヨイガ-
32447	Nora to Oujo to Noraneko Heart	Nora, Princess, and Stray Cat	ノラと皇女と野良猫ハート
32448	Kirin Ashita no Calendar	Unknown	キリンあしたのカレンダー
32454	Usakame	Usakame	うさかめ
32455	Gekidol	Gekidol	ゲキドル
32483	Cheer Danshi!!	Cheer Boys!!	チア男子!!
32491	Kanojo to Kanojo no Neko: Everything Flows	Unknown	彼女と彼女の猫 -Everything Flows-
32494	Days (TV)	Days	DAYS
32526	Love Live! Sunshine!!	Love Live! Sunshine!!	ラブライブ！サンシャイン!!
32542	Sakamoto Desu ga?	Haven't You Heard? I'm Sakamoto	坂本ですが？
32555	Stella no Mahou	Magic of Stella	ステラのまほう
32568	Kamiwaza Wanda	Unknown	カミワザ・ワンダ
32571	Shounen Ashibe: Go! Go! Goma-chan	Unknown	少年アシベ GO！GO！ゴマちゃん
32572	Neko Neko Nihonshi	Meow Meow Japanese History	ねこねこ日本史
32580	Uniminipet	Unknown	유니미니펫
32582	Duel Masters VSRF	Duel Masters Versus Revolution Final	デュエル・マスターズVSRF
32585	Telemonster	Telemonster	텔레몬스터
32590	Taeng-gu & Ulasyong	Unknown	탱구와 울라숑
32595	Seisen Cerberus: Ryuukoku no Fatalités	Cerberus	聖戦ケルベロス　竜刻のファタリテ
32596	The Snack World (TV)	Unknown	スナックワールド (TV)
32601	12-sai.: Chicchana Mune no Tokimeki	Unknown	12歳。～ちっちゃなムネのトキメキ～
32603	Okusama ga Seitokaichou!+!	My Wife is the Student Council President!+	おくさまが生徒会長!＋!
32606	Onigiri	Onigiri	鬼斬
32607	Gi(a)rlish Number	Girlish Number	ガーリッシュ ナンバー
32608	Endride	Endride	エンドライド
32615	Youjo Senki	The Saga of Tanya the Evil	幼女戦記
32630	Coral no Tanken	Coral Investigates	コラルの探検
32648	Handa-kun	Handa-kun	はんだくん
32660	Petit Petit Muse	Unknown	쁘띠쁘띠 뮤즈
32663	Tama & Friends: Uchi no Tama Shirimasen ka?	Unknown	タマ&フレンズ うちのタマ知りませんか?
32664	Bananya	Bananya	ばなにゃ
32670	Battle Spirits: Double Drive	Unknown	バトルスピリッツ ダブルドライブ
32673	Udon no Kuni no Kiniro Kemari	Poco's Udon World	うどんの国の金色毛鞠
32681	Uchuu Patrol Luluco	Space Patrol Luluco	宇宙パトロールルル子
32682	Kagewani: Shou	Kagewani -II-	影鰐-KAGEWANI-承
32686	Keijo!!!!!!!!	Keijo!!!!!!!!	競女!!!!!!!!
32691	Flowering Heart	Flowering Heart	플라워링하트
32696	Fukigen na Mononokean	The Morose Mononokean	不機嫌なモノノケ庵
32697	Ozmafia!!	Unknown	オズマフィア
32717	Aikatsu Stars!	Unknown	アイカツスターズ！
32729	Orange	Orange	orange（オレンジ）
32772	Puzzle & Dragons Cross	Puzzle & Dragons X	パズドラクロス
32785	Future Card Buddyfight Triple D	Future Card Buddyfight Triple D	フューチャーカード バディファイトDDD
32792	Mobile Suit Gundam Unicorn RE:0096	Mobile Suit Gundam Unicorn RE:0096	機動戦士ガンダムUC（ユニコーン）RE:0096
32802	Cardfight!! Vanguard G: Stride Gate-hen	Cardfight!! Vanguard G Stride Gate	カードファイト!! ヴァンガードG ストライドゲート編
32805	Nyanbo!	Nyanbo!	にゃんぼー!
32807	Xiong Chumo	Boonie Bears	熊出沒
32818	Xiong Chumo Zhi: Huanqiu Da Maoxian	Boonie Bears or Bust	熊出没之环球大冒险
32819	Xiong Chumo Zhi: Conglin Zongdongyuan	Boonie Bears:Forest Frenzy	熊出没之丛林总动员
32820	Xiong Chumo Zhi: Chunri Dui Dui Peng	Boonie Bears:Spring into Action	熊出没之春日对对碰
32821	Xiong Chumo Zhi: Dongri Le Fantian	Boonie Bears:Snow Daze	熊出没之冬日乐翻天
32828	Amaama to Inazuma	Sweetness & Lightning	甘々と稲妻
32829	Nobunaga no Shinobi	Ninja Girl & Samurai Master	信長の忍び
32830	Chou Shounen Tanteidan Neo	Unknown	超・少年探偵団NEO
32836	Senki Zesshou Symphogear AXZ	Unknown	戦姫絶唱シンフォギアAXZ〈アクシズ〉
32842	Panpaka Pants	Panpaka Pantsu	パンパカパンツ
32843	Senki Zesshou Symphogear XV	Unknown	戦姫絶唱シンフォギアXV
32866	Brave Witches	Brave Witches	第502統合戦闘航空団 ブレイブウィッチーズ
32867	Bungou Stray Dogs 2nd Season	Bungo Stray Dogs 2	文豪ストレイドッグス
32876	Nameko: Sekai no Tomodachi	Unknown	なめこ～せかいのともだち～
32878	ēlDLIVE	elDLIVE	エルドライブ 【ēlDLIVE】
32881	Tiger Mask W	Tiger Mask W	タイガーマスクW
32887	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka Gaiden: Sword Oratoria	Sword Oratoria:Is it Wrong to Try to Pick Up Girls in a Dungeon? On the Side	ダンジョンに出会いを求めるのは間違っているだろうか外伝 ソード・オラトリア
32899	Watashi ga Motete Dousunda	Kiss Him, Not Me!	私がモテてどうすんだ
32901	Eromanga-sensei	Eromanga Sensei	エロマンガ先生
32906	Bishoujo Yuugi Unit Crane Game Girls	Crane Game Girls	美少女遊戯ユニットクレーンゲール Crane Game Girls
32924	Urara Meirochou	Urara Meirocho	うらら迷路帖
32935	Haikyuu!!: Karasuno Koukou vs. Shiratorizawa Gakuen Koukou	Haikyu!! 3rd Season	ハイキュー!! 烏野高校 VS 白鳥沢学園高校
32936	Gin no Guardian	The Silver Guardian	銀の墓守り〈ガーディアン〉
32937	Kono Subarashii Sekai ni Shukufuku wo! 2	KonoSuba:God's Blessing on This Wonderful World! 2	この素晴らしい世界に祝福を！ 2
32944	CoCO & NiCO	Unknown	CoCO & NiCO
32947	Battery	Unknown	バッテリー
32948	Fune wo Amu	The Great Passage	舟を編む
32949	Kuzu no Honkai	Scum's Wish	クズの本懐
32951	Rokudenashi Majutsu Koushi to Akashic Records	Akashic Records of Bastard Magic Instructor	ロクでなし魔術講師と禁忌教典
32956	Aware! Meisaku-kun	Aware! Meisaku-kun	あはれ! 名作くん
32961	Regalia: The Three Sacred Stars	Regalia:The Three Sacred Stars	レガリア The Three Sacred Stars
32962	Occultic;Nine	Occultic;Nine	Occultic;Nine －オカルティック・ナイン－
32977	Aggressive Retsuko	Aggretsuko	アグレッシブ烈子
32979	Flip Flappers	Flip Flappers	フリップフラッパーズ
32981	Hand Shakers	Hand Shakers	ハンドシェイカー
32983	Natsume Yuujinchou Go	Natsume's Book of Friends Season 5	夏目友人帳 伍
32995	Yuri!!! on Ice	Yuri!!! On ICE	ユーリ!!! on ICE
32998	91 Days	91 Days	91Days
32999	Neko mo, Onda-ke	Unknown	猫も、オンダケ
33002	Panpaka Pants W-O-New!	Unknown	パンパカパンツ WおNEW！
33003	Mahou Shoujo Ikusei Keikaku	Magical Girl Raising Project	魔法少女育成計画
33012	Island	Island	ISLAND
33018	Katsugeki/Touken Ranbu	Katsugeki Touken Ranbu	活撃／刀剣乱舞
33019	Reikenzan: Eichi e no Shikaku	Unknown	霊剣山 叡智への資格
33021	Ragnastrike Angels	Unknown	ラグナストライクエンジェルズ
33023	Touken Ranbu: Hanamaru	Touken Ranbu - Hanamaru	刀剣乱舞-花丸-
33026	Time Bokan 24	Time Bokan 24	タイムボカン24
33027	Infini-T Force	Unknown	Infini-T Force
33028	Danganronpa 3: The End of Kibougamine Gakuen - Zetsubou-hen	Danganronpa 3:The End of Hope's Peak High School - Despair Arc	ダンガンロンパ3 -The End of 希望ヶ峰学園- 絶望編
33031	Shakunetsu no Takkyuu Musume	Scorching Ping Pong Girls	灼熱の卓球娘
33037	Tsukiuta. The Animation	TSUKIUTA. The Animation	ツキウタ。 THE ANIMATION
33041	Bubuki Buranki: Hoshi no Kyojin	BBK/BRNK:The Gentle Giants of the Galaxy	ブブキ・ブランキ 星の巨人
33044	Asa Da yo! Kaishain	Unknown	朝だよ！貝社員
33046	B-Project: Kodou*Ambitious	Unknown	B-PROJECT～鼓動＊アンビシャス～
33047	Fate/Extra: Last Encore	Fate/Extra:Last Encore	Fate/EXTRA Last Encore
33051	Mobile Suit Gundam: Iron-Blooded Orphans 2nd Season	Mobile Suit Gundam:Iron-Blooded Orphans 2nd Season	機動戦士ガンダム 鉄血のオルフェンズ 第2期
33083	Wa Wa Wa Wappi-chan	Unknown	和・和・和 ワッピちゃん
33084	Wa Wa Wa Wappi-chan 2nd Season	Unknown	和・和・和 ワッピちゃん 第2シリーズ
33085	Unko-san: Tsuiteru Hito ni Shika Mienai Yousei Junjou Ha	Unknown	うんこさん ツイてる人にしか見えない妖精 純情派
33089	Kemono Friends	Unknown	けものフレンズ
33094	WWW.Working!!	WWW.WAGNARIA!!	WWW.WORKING!!
33095	Shouwa Genroku Rakugo Shinjuu: Sukeroku Futatabi-hen	Descending Stories:Showa Genroku Rakugo Shinju	昭和元禄落語心中～助六再び篇～
33099	Washimo 4th Season	Unknown	わしも-wasimo-(第4シリーズ)
33113	Scared Rider Xechs	Unknown	スカーレッドライダーゼクス
33123	Koto Nakare Hero Gingerman	Unknown	ことなかれヒーローじんじゃーまん
33184	Battle Girl High School	Battle Girl High School	バトルガール ハイスクール
33188	Sore Ike! Sabuibo Mask	Unknown	それいけ! サブイボマスク
33197	Lostorage Incited WIXOSS	Lostorage incited WIXOSS	Lostorage incited WIXOSS
33203	Fukumenkei Noise	Anonymous Noise	覆面系ノイズ
33206	Kobayashi-san Chi no Maid Dragon	Miss Kobayashi's Dragon Maid	小林さんちのメイドラゴン
33222	Fudanshi Koukou Seikatsu	The Highschool Life of a Fudanshi	腐男子高校生活
33240	Koneko no Chi: Ponponra Daibouken	Chi's Sweet Adventure	こねこのチー ポンポンらー大冒険
33241	Honobono Log	Unknown	ほのぼのログ
33244	Kiitarou Shounen no Youkai Enikki	Kiitaro's yokai picture diary	奇異太郎少年の妖怪絵日記
33245	Ame-iro Cocoa in Hawaii	Rainy Cocoa in Hawaii	雨色ココア in Hawaii
33253	Ajin 2nd Season	Unknown	亜人 第2クール
33255	Saiki Kusuo no Ψ-nan	The Disastrous Life of Saiki K.	斉木楠雄のΨ難
33262	Chobitto Zukan	Unknown	ちょびっとづかん
33267	Jinxiu Shenzhou Zhi Qi You Ji	Splendid China - Hunting Treasures	锦绣神州之奇游迹
33274	Onara Gorou	Onara Goro	おなら吾郎
33290	Gra-P & Rodeo II	Unknown	ぐらP&ろで夫II
33299	Magic-Kyun! Renaissance	Magic-Kyun! Renaissance	マジきゅんっ！ルネッサンス
33300	Manga Kotowaja Jiten	Unknown	まんがことわざ事典
33310	Peach Command Shin Momotarou Densetsu	Unknown	PEACH COMMAND 新桃太郎伝説
33314	Digimon Universe: Appli Monsters	Digimon Universe App Monsters	デジモンユニバース アプリモンスターズ
33337	ACCA: 13-ku Kansatsu-ka	ACCA:13-Territory Inspection Dept.	ACCA 13区監察課
33341	Time Travel Shoujo: Mari Waka to 8-nin no Kagakusha-tachi	Time Travel Girl	タイムトラベル少女～マリ・ワカと8人の科学者たち～
33352	Violet Evergarden	Violet Evergarden	ヴァイオレット・エヴァーガーデン
33354	Cardcaptor Sakura: Clear Card-hen	Cardcaptor Sakura:Clear Card	カードキャプターさくら クリアカード編
33362	Starmyu 2nd Season	Unknown	高校星歌劇［スタミュ］
33371	Atom: The Beginning	Unknown	アトム ザ・ビギニング
33377	Trickster: Edogawa Ranpo "Shounen Tanteidan" yori	Trickster	TRICKSTER -江戸川乱歩「少年探偵団」より-
33383	Mask Masters	Unknown	마스크 마스터즈
33392	Gakuen Handsome	Gakuen Handsome	学園ハンサム
33394	Mahou Shoujo? Naria☆Girls	Mahou Shoujo? Naria Girls	魔法少女? なりあ☆がーるず
33398	Neko Konogoro	Unknown	ネコこのゴロ
33414	Otona no Ikkyuu-san	Unknown	オトナの一休さん
33417	Super Lovers 2	Super Lovers 2	SUPER LOVERS（スーパーラヴァーズ）  2
33419	12-sai.: Chicchana Mune no Tokimeki 2nd Season	Unknown	12歳。～ちっちゃなムネのトキメキ～
33421	Hitori no Shita: The Outcast	Hitori no Shita - The Outcast	一人之下 THE OUTCAST
33430	Oscar's Oasis	Oscar's Oasis	오스카의 오아시스
33431	Vicky and Johnny	Angus & Cheryl	비키와 조니
33433	Shuumatsu no Izetta	Izetta:The Last Witch	終末のイゼッタ
33434	Heybot!	HEYBOT!	ヘボット!
33447	Piace: Watashi no Italian	Piacevole:My Italian Cooking	ピアシェ～私のイタリアン～
33462	Bernard-jou Iwaku.	Miss Bernard said.	バーナード嬢曰く。
33473	Tokyo Futago Athletic	Tokyo Twins Athletic Tournament	東京ふたごアスレチック
33475	Busou Shoujo Machiavellianism	Armed Girl's Machiavellism	武装少女マキャヴェリズム
33478	UQ Holder!: Mahou Sensei Negima! 2	UQ Holder!	UQ HOLDER! ～魔法先生ネギま！2～
33479	Muzumuzu Eighteen	Unknown	ムズムズエイティーン
33486	Boku no Hero Academia 2nd Season	My Hero Academia 2	僕のヒーローアカデミア
33487	Masamune-kun no Revenge	Masamune-kun's Revenge	政宗くんのリベンジ
33489	Little Witch Academia (TV)	Little Witch Academia	リトルウィッチアカデミア
33490	Kaitou Joker 4th Season	JOKER 4th Season	怪盗ジョーカー シーズン
33502	Shuumatsu Nani Shitemasu ka? Isogashii Desu ka? Sukutte Moratte Ii Desu ka?	WorldEnd:What do you do at the end of the world? Are you busy? Will you save us?	終末なにしてますか？忙しいですか？救ってもらっていいですか？
33506	Ao no Exorcist: Kyoto Fujouou-hen	Blue Exorcist:Kyoto Saga	青の祓魔師 京都不浄王篇
33531	Juushinki Pandora	Last Hope	重神機パンドーラ
33532	Twin Angel Break	Twin Angels Break	ツインエンジェルBREAK
33538	Shima Kousaku no Asia Risshi-den	Shima Kosaku's Asian Entrepreneurs	島耕作のアジア立志伝
33540	Shima Kousaku no Asia Shinseki-den	Unknown	島耕作のアジア新世紀伝
33541	Bishoujo Yuugi Unit Crane Game Girls Galaxy	Crane Game Girls Galaxy	美少女遊戯ユニット クレーンゲールギャラクシー
33572	Idol Memories	Unknown	アイドルメモリーズ
33573	BanG Dream!	Unknown	BanG Dream!（バンドリ！）
33583	Nana Moon	Unknown	梦月精灵
33589	ViVid Strike!	Unknown	ViVid Strike!
33599	Na Sa Er Ding	Unknown	那萨尔丁
33630	Xing You Ji	Rainbow Sea	星游记 (第一季)
33654	Hitorijime My Hero	Hitorijime My Hero	ひとりじめマイヒーロー
33668	Soushin Shoujo Matoi	Matoi the Sacred Slayer	装神少女まとい
33670	Xingji Biaoche Wang	Galaxy Racers	Unknown
33671	Feng Shu Zhan Jing	The Configurators	Unknown
33690	Nazotokine	Nazotokine	ナゾトキネ
33726	Saiyuuki Reload Blast	Saiyuki Reload Blast	最遊記RELOAD BLAST
33727	Neko no Dayan: Fushigi Gekijou	Unknown	猫のダヤン ふしぎ劇場
33731	Gabriel DropOut	Gabriel DropOut	ガヴリールドロップアウト
33733	Inazuma Eleven: Ares no Tenbin	Inazuma Eleven:Balance of Ares	イナズマイレブン アレスの天秤
33737	Megaton-kyuu Musashi	Unknown	メガトン級ムサシ
33739	Tian Xin Ge Ge	Ori-Princess	甜心格格
33743	Fuuka	Fuuka	風夏
33746	Anitore! XX: Hitotsu Yane no Shita de	Anime de Training! Xx	あにトレ! XX~ひとつ屋根の下で~
33753	Tian Xin Ge Ge 2nd Season	Ori-Princess 2nd Season	甜心格格 第2季
33771	Cheating Craft	Cheating Craft	チーティングクラフト
33775	Soul Buster	Soul Buster	侍霊演武[ソウルバスター]
33788	Marginal#4: Kiss kara Tsukuru Big Bang	MARGINAL #4 the Animation	MARGINAL#4 KISSから創造るBig Bang
33792	Feng Shu Zhan Jing 2	Unknown	锋速战警2
33795	Mahou Shoujo Nante Mou Ii Desukara. Second Season	Mahou Shoujo Nante Mouiidesukara Second Season	魔法少女なんてもういいですから。 セカンドシーズン
33797	ID-0	ID-0	ID-0
33803	Sengoku Choujuu Giga: Kou	SENGOKUCHOJYUGIGA	戦国鳥獣戯画~甲~
33811	Teekyuu 8	Teekyu 8	てーきゅう 8期
33814	Ao Oni The Animation	Aooni The Blue Monster	あおおに ～じ・あにめぇしょん～
33834	Sin: Nanatsu no Taizai	Seven Mortal Sins	sin 七つの大罪
33835	PJ Berri no Mogumogu Munyamunya	Unknown	PJベリーのもぐもぐむにゃむにゃ
33836	Seiren	Seiren	セイレン
33840	Kabuki-bu!	Kabukibu!	カブキブ！
33842	Fushigi no Yappo Shima: Pukipuki to Poi	Pukipuki and Poi	ふしぎのヤッポ島 プキプキとポイ
33850	Nil Admirari no Tenbin	Libra of Nil Admirari	ニル・アドミラリの天秤
33889	Saredo Tsumibito wa Ryuu to Odoru	Dances with the Dragons	されど罪人は竜と踊る
33899	IDOLiSH7	IDOLiSH7	アイドリッシュセブン
33933	Yasamura Yasashi no Yasashii Sekai	Unknown	やさ村やさしのやさしい世界
33946	Mikan Seijin Arawaru	Unknown	ミカンせいじん現わる
33948	Hinako Note	Hinako Note	ひなこのーと
33966	Yume Oukoku to Nemureru 100-nin no Ouji-sama	100 Sleeping Princes and the Kingdom of Dreams	夢王国と眠れる100人の王子様
33975	3-Nen D-Gumi Glass no Kamen	The Glass Mask Year 3 Class D	３ねんＤぐみガラスの仮面
33983	Onihei	Onihei	鬼平
33985	Bloodivores	Bloodivores	BLOODIVORES
33988	Demi-chan wa Kataritai	Interviews With Monster Girls	亜人ちゃんは語りたい
34009	To Be Hero	TO BE HERO	TO BE HERO
34012	Isekai Shokudou	Restaurant to Another World	異世界食堂
34013	Hagane Orchestra	Hagane Orchestra	はがねオーケストラ
34019	Tsugumomo	Tsugumomo	つぐもも
34028	Idol Jihen	Idol Incidents	アイドル事変
34034	Pokemon Sun & Moon	Pokémon the Series:Sun & Moon	ポケットモンスター サン＆ムーン
34051	Akiba's Trip The Animation	Akiba's Trip The Animation	AKIBA'S TRIP THE ANIMATION
34052	100% Pascal-sensei (TV)	100% Teacher Pascal	100%パスカル先生 (TV)
34055	Berserk 2nd Season	Berserk:Season II	ベルセルク
34076	Uchouten Kazoku 2	The Eccentric Family 2	有頂天家族2
34077	Cardfight!! Vanguard G: Next	Cardfight!! Vanguard G NEXT	CARDFIGHT!! ヴァンガードG NEXT
34078	Ukkari Pénélope (2013)	Unknown	うっかりペネロペ
34086	Tales of Zestiria the Cross 2nd Season	Unknown	テイルズ オブ ゼスティリア ザ クロス 第2期
34088	Chiruran: Nibun no Ichi	Chiruran 1/2	ちるらん にぶんの壱
34096	Gintama.	Gintama Season 5	銀魂。
34102	Sakurada Reset	Sagrada Reset	サクラダリセット
34104	Knight's & Magic	Knight's & Magic	ナイツ&マジック
34106	Kyoukai no Rinne (TV) 3rd Season	RIN-NE	境界のRINNE 第3シリーズ
34126	Rewrite 2nd Season	Rewrite:Moon and Terra	Rewrite 2ndシーズン
34129	Xia Lan	Unknown	侠岚
34134	One Punch Man 2nd Season	Unknown	ワンパンマン
34148	Nyanko Days	Nyanko Days	にゃんこデイズ
34156	PePePePengiin	Unknown	ペペペペン議員
34176	Zero kara Hajimeru Mahou no Sho	Unknown	ゼロから始める魔法の書
34177	Tenshi no 3P!	Angel's 3Piece!	天使の3P！〈スリーピース〉
34182	Nikoniko♪Connie-chan	Unknown	ニコニコ♪コニーちゃん
34207	Dochamon Junior 2	Unknown	どちゃもん じゅにあ 2
34209	Meiji Tokyo Renka	Unknown	明治東亰恋伽
34223	Forest Fairy Five	Forest Fairy Five	FOREST FAIRY FIVE
34233	Kimoshiba	Unknown	きもしば
34234	Ohayou! Kokekkou-san	Unknown	おはよう! コケッコーさん
34235	Pittanko! Nekozakana	Unknown	ぴったんこ! ねこざかな
34249	Aqua Kids	Aqua Kids	아쿠아 키즈
34257	Cinderella Girls Gekijou	THE IDOLM@STER CINDERELLA GIRLS Theater	シンデレラガールズ劇場
34262	Oushitsu Kyoushi Heine	The Royal Tutor	王室教師ハイネ
34264	Ninja Bear the Animation★	Unknown	忍者ベアーthe Animation★
34279	Grancrest Senki	Record of Grancrest War	グランクレスト戦記
34280	Gamers!	Gamers!	ゲーマーズ！
34281	High School DxD Hero	High School DxD Hero	ハイスクールDxD HERO
34284	Yuuki Yuuna wa Yuusha de Aru: Washio Sumi no Shou	Yuki Yuna is a Hero:The Washio Sumi Chapter	結城友奈は勇者である -鷲尾須美の章-
34289	Schoolgirl Strikers: Animation Channel	Unknown	スクールガールストライカーズ Animation Channel
34290	Kirakira☆Precure A La Mode	Unknown	キラキラ☆プリキュアアラモード
34292	Kamigami no Ki	Kamigami no Ki	神々の記
34295	Choboraunyopomi Gekijou Dai San Maku Ai Mai Mii: Surgical Friends	Ai-Mai-Mi Surgical Friends	ちょぼらうにょぽみ劇場第三幕『あいまいみー～Surgical Friends～』
34309	Nananin no Ayakashi: Chimi Chimi Mouryou!! Gendai Monogatari	Unknown	ななにんのあやかし-ちみちみ魍魎!! 現代物語-
34332	Hulaing Babies	Unknown	フライングベイビーズ
34337	Ikemen Sengoku: Toki wo Kakeru ga Koi wa Hajimaranai	Ikemen Sengoku:Bromances Across Time	イケメン戦国◆時をかけるが恋ははじまらない
34338	Lost Song	Unknown	LOST SONG
34348	Rescue Academia	Unknown	レスキューアカデミア
34350	Alice to Zouroku	Alice & Zoroku	アリスと蔵六
34358	Ocha-ken: Hotto Monogatari	Unknown	お茶犬〜「ほっ」とものがたり〜
34363	Ocha-ken: Ryokutto Monogatari	Unknown	お茶犬 ~緑[リョク]っとものがたり~
34368	Vatican Kiseki Chousakan	Vatican Miracle Examiner	バチカン奇跡調査官
34382	Citrus	Citrus	シトラス
34383	Netsuzou TRap	Netsuzou Trap -NTR-	捏造トラップ―NTR―
34392	One Room	One Room	One Room (ワンルーム)
34393	Room Mate	Room Mate	Room Mate
34402	Love Kome: We Love Rice	Love Rice	ラブ米 -WE LOVE RICE-
34403	Hajimete no Gal	My First Girlfriend is a Gal	はじめてのギャル
34410	Ba La La Xiao Mo Xian Zhi: Feiyue Cai Ling Bao	Balala the Faries:Over the Rainbow	巴啦啦小魔仙之飞越彩灵堡
34411	Taishou Mebiusline: Chicchai-san	Unknown	大正メビウスライン ちっちゃいさん
34427	Frame Arms Girl	Unknown	フレームアームズ・ガール
34445	Yuuki Yuuna wa Yuusha de Aru: Yuusha no Shou	Yuki Yuna is a Hero:The Hero Chapter	結城友奈は勇者である -勇者の章-
34449	The Reflection	The Reflection	ザ・リフレクション
34451	Kekkai Sensen & Beyond	Blood Blockade Battlefront & Beyond	血界戦線 & BEYOND
34456	Sentai Hero Sukiyaki Force: Gunma no Heiwa wo Negau Season	Unknown	戦隊ヒーロー スキヤキフォース -ぐんまの平和を願うシーズン-
34467	Yami Shibai 4	Yamishibai:Japanese Ghost Stories 4	闇芝居 4期
34474	Tsukipro The Animation	Unknown	TSUKIPRO THE ANIMATION
34488	Gan Gan Ganko-chan	Unknown	がん がん がんこちゃん
34490	Sushi Azarashi	Unknown	すしあざらし
34494	Sakura Quest	Sakura Quest	サクラクエスト
34497	Death March kara Hajimaru Isekai Kyousoukyoku	Death March to the Parallel World Rhapsody	デスマーチからはじまる異世界狂想曲
34501	Kenka Banchou Otome: Girl Beats Boys	Kenka Bancho Otome -Girl Beats Boys-	喧嘩番長 乙女 -GIRL BEATS BOYS-
34502	Inazma Delivery	Inazma Delivery	イナズマデリバリー
34503	KochinPa! Dainiki	Unknown	コチンPa! 第二期
34510	Hei Mao Jing Zhang	Black Cat Detective	黑貓警長
34511	Hei Mao Jing Zhang (1992)	Black Cat Detective	黑貓警長
34522	Wake Up, Girls! Shin Shou	Wake Up, Girls! New Chapter	Wake Up, Girls！新章
34525	Centaur no Nayami	A Centaur's Life	セントールの悩み
34542	Inuyashiki	Inuyashiki:Last Hero	いぬやしき
34543	Dive!!	DIVE!!	DIVE!!
34547	Shoukoku no Altair	Altair:A Record of Battles	将国のアルタイル
34550	Warau Salesman New	The Laughing Salesman	笑ゥせぇるすまんNEW
34561	Re:Creators	Re:CREATORS	Re:CREATORS 〈レクリエイターズ〉
34565	Jikan no Shihaisha	Chronos Ruler	時間の支配者
34566	Boruto: Naruto Next Generations	Boruto:Naruto Next Generations	BORUTO -NARUTO NEXT GENERATIONS-
34572	Black Clover	Black Clover	ブラッククローバー
34577	Nanatsu no Taizai: Imashime no Fukkatsu	The Seven Deadly Sins:Revival of the Commandments	七つの大罪 戒めの復活
34580	Nana Maru San Batsu	Fastest Finger First	ナナマル サンバツ
34591	Natsume Yuujinchou Roku	Natsume's Book of Friends Season 6	夏目友人帳 陸
34599	Made in Abyss	Made in Abyss	メイドインアビス
34607	Lostorage Conflated WIXOSS	Unknown	Lostorage conflated WIXOSS
34612	Saiki Kusuo no Ψ-nan 2	The Disastrous Life of Saiki K. 2	斉木楠雄のΨ難 2
34618	Blend S	BLEND-S	ブレンド・S
34620	Kono Yo no Hate de Koi wo Utau Shoujo YU-NO	YU-NO:A girl who chants love at the bound of this world.	この世の果てで恋を唄う少女YU-NO
34636	Ballroom e Youkoso	Welcome to the Ballroom	ボールルームへようこそ
34643	Kokekkou-san	Kokomom	コケッコーさん
34662	Fate/Apocrypha	Unknown	Fate/Apocrypha
34664	Capsule Boy	Capsule Hero	캡슐보이
34665	Kemy Lang Buka Chaka	Kemy & Buka, Chaka	깨미랑 부카채카
34666	Kemy	Kemy	깨미
34667	Kemy Tamheomdae	Kemy Expedition	깨미탐험대
34669	Ba La La Xiao Mo Xian Zhi: Feiyue Cai Ling Bao 2nd Season	Balala the Faries:Over the Rainbow	巴啦啦小魔仙之飞越彩灵堡 第2季
34676	Xiong Chumo Zhi: Xiari Lianlian Kan	Boonies Bears:Sunsational Summer	熊出没之夏日连连看
34677	Xiong Chumo Zhi: Qiu Ri Tuantuanzhuan	Boonie Bears:Autumn Awesomeness	熊出没之秋日团团转
34701	Girls★Battle Aloe Megumi	Unknown	GIRLS★BATTLE アロ恵
34712	Kujira no Kora wa Sajou ni Utau	Children of the Whales	クジラの子らは砂上に歌う
34725	Kaito x Ansa	Kaito x Ansa	カイトアンサ
34738	Sengoku Choujuu Giga: Otsu	SENGOKUCHOJYUGIGA	戦国鳥獣戯画~乙~
34741	Tomica Hyper Rescue Drive Head: Kidou Kyuukyuu Keisatsu (TV)	Unknown	トミカハイパーレスキュー ドライブヘッド 機動救急警察
34745	Mahoujin Guruguru (2017)	Magical Circle	魔法陣グルグル
34754	Rilu Rilu Fairilu: Yousei no Door	Unknown	リルリルフェアリル～妖精のドア～
34771	Dynamic Chord	Dynamic Chord	DYNAMIC CHORD
34787	Idol Time PriPara	Unknown	アイドルタイムプリパラ
34794	Yukai na Animal Bus	Funny Animal Bus	ゆかいなアニマルバス
34798	Yuru Camp△	Laid-Back Camp	ゆるキャン△
34799	PriPri Chii-chan!!	PriPri Chi-chan!!	プリプリちぃちゃん!!
34800	Action Heroine Cheer Fruits	Action Heroine Cheer Fruits	アクションヒロイン チアフルーツ
34822	Tsuki ga Kirei	Tsukigakirei	月がきれい
34823	Souryo to Majiwaru Shikiyoku no Yoru ni...	Unknown	僧侶と交わる色欲の夜に…
34825	Keppeki Danshi! Aoyama-kun	Clean Freak! Aoyama-kun	潔癖男子！青山くん
34831	Hanitarou Desu.	Unknown	ハニ太郎です.
34832	Macross (Shin Series)	Unknown	マクロス (新シリーズ)
34834	Hina Logi: From Luck & Logic	Hina Logic – from Luck & Logic	ひなろじ～from Luck & Logic～
34836	Future Card Buddyfight Battsu	Future Card Buddyfight X	フューチャーカード バディファイトX
34839	Sanrio Danshi	Sanrio Boys	サンリオ男子
34841	Haruniwa Ie no 3 Nin-me	Unknown	春庭家の3人目
34852	Pikaia!!	Unknown	ピカイア!!
34863	Zoku Touken Ranbu: Hanamaru	Unknown	続 刀剣乱舞-花丸-
34866	Yu☆Gi☆Oh! VRAINS	Yu-Gi-Oh! VRAINS	遊戯王VRAINS
34881	Aho Girl	AHO-GIRL	アホガール
34888	Makeruna!! Aku no Gundan!	Unknown	まけるな!! あくのぐんだん！
34891	Buppu na Mainichi	Unknown	ぶっぷな毎日
34901	Beyblade Burst God	Beyblade Burst Evolution	ベイブレードバースト 神〈ゴッド〉
34902	Tsurezure Children	Tsuredure Children	徒然チルドレン
34903	RoboMasters the Animated Series	Unknown	ROBOMASTERS THE ANIMATED SERIES
34905	Duel Masters (2017)	Unknown	デュエル・マスターズ (2017)
34914	New Game!!	New Game!!	NEW GAME!!
34915	The iDOLM@STER SideM	THE IDOLM@STER SideM	アイドルマスター SideM
34927	Rilu Rilu Fairilu: Mahou no Kagami	Unknown	リルリルフェアリル ~魔法の鏡~
34928	Akindo Sei no Little Peso	Unknown	アキンド星のリトル・ペソ
34933	Kakegurui	Kakegurui:Compulsive Gambler	賭ケグルイ
34934	Koi to Uso	Love and Lies	恋と嘘
34964	Killing Bites	Killing Bites	キリングバイツ
34966	Jigoku Shoujo: Yoi no Togi	Hell Girl:Fourth Twilight	地獄少女 宵伽
34973	Love Live! Sunshine!! 2nd Season	Love Live! Sunshine!! Season 2	ラブライブ！サンシャイン!! 第2期
34975	Marvel Future Avengers	Unknown	マーベル フューチャー・アベンジャーズ
34978	Nobunaga no Shinobi: Ise Kanegasaki-hen	Ninja Girl & Samurai Master 2nd	信長の忍び~伊勢・金ヶ崎篇~
34979	Shounen Ashibe: Go! Go! Goma-chan 2	Unknown	少年アシベ GO！GO！ゴマちゃん
34984	Koi wa Ameagari no You ni	After the Rain	恋は雨上がりのように
34990	Unicorn no Kyupi	Unknown	ユニコーンのキュピ
35015	Ani ni Tsukeru Kusuri wa Nai!	Unknown	兄に付ける薬はない!
35025	"Eikou Naki Tensai-tachi" Kara no Monogatari	Unknown	“栄光なき天才たち”からの物語
35062	Mahoutsukai no Yome	The Ancient Magus' Bride	魔法使いの嫁
35067	Osomatsu-san 2nd Season	Mr. Osomatsu 2	おそ松さん 第2期
35069	Sekai no Yami Zukan	The World YAMIZUKAN	世界の闇図鑑
35073	Overlord II	Overlord II	オーバーロードⅡ
35075	Hoozuki no Reitetsu 2nd Season	Hozuki's Coolheadedness 2	鬼灯の冷徹 第弐期
35076	Juuni Taisen	Juni Taisen:Zodiac War	十二大戦
35078	Mitsuboshi Colors	Mitsuboshi Colors	三ツ星カラーズ
35079	Kino no Tabi: The Beautiful World - The Animated Series	Kino's Journey -the Beautiful World- the Animated Series	キノの旅 -the Beautiful World- the Animated Series
35106	Ninja Tamamaru	Unknown	忍者玉丸
35107	Shin Ninja Tamamaru	Unknown	新忍者玉丸
35108	Ninja Tamamaru: Toukaidou Gojuusan-ji	Unknown	忍者玉丸 東海道五十三次
35112	Panpaka Pants O New-san	Unknown	パンパカパンツ おNEWさん
35114	Clione no Akari	Unknown	クリオネの灯り
35138	Taikong Lixianji	Astro Plan	太空历险记
35156	High & Low: G-Sword	Unknown	HiGH&LOW g-sword
35180	3-gatsu no Lion 2nd Season	March Comes In Like A Lion 2nd Season	3月のライオン 第2シリーズ
35183	Gurazeni	Gurazeni:Money Pitch	グラゼニ
35203	Isekai wa Smartphone to Tomo ni.	In Another World With My Smartphone	異世界はスマートフォンとともに。
35220	Youkai Apartment no Yuuga na Nichijou	Elegant Yokai Apartment Life	妖怪アパートの幽雅な日常
35222	Gakuen Babysitters	School Babysitters	学園ベビーシッターズ
35226	Akita Kenritsu Iburi Gakkou Chuutou-bu	Unknown	秋田県立いぶり学校中等部
35240	Princess Principal	Princess Principal	プリンセス・プリンシパル
35241	Konohana Kitan	Konohana Kitan	このはな綺譚
35247	Owarimonogatari 2nd Season	Owarimonogatari Second Season	終物語
35248	18if	18if	18if
35249	Uma Musume: Pretty Derby (TV)	Umamusume:Pretty Derby	ウマ娘 プリティーダービー
35250	Urahara	Urahara	URAHARA
35251	Sengoku Night Blood	Unknown	戦刻ナイトブラッド
35252	Hatena☆Illusion	Hatena Illusion	はてな☆イリュージョン
35254	Time Bokan: Gyakushuu no San Akunin	Time Bokan:The Villains Strike Back	タイムボカン 逆襲の三悪人
35295	Washimo 5th Season	Unknown	わしも-wasimo-(第5シリーズ)
35298	Ramen Daisuki Koizumi-san	Ms. Koizumi Loves Ramen Noodles	ラーメン大好き小泉さん
35302	Neko Neko Nihonshi 2nd Season	Meow Meow Japanese History	ねこねこ日本史
35303	Furusato Meguri: Nippon no Mukashibanashi	Unknown	ふるさとめぐり 日本の昔ばなし
35313	Kemono Friends 2	Unknown	けものフレンズ2
35317	Mini Rope	Unknown	miniロペ
35319	Freaky Highschool	Freaky Highschool	ふりぃきぃ～はいすく～る
35330	Poputepipikku	Pop Team Epic	ポプテピピック
35332	World Fool News (TV) Part II	World Fool News Part II	ワールドフールニュース PartⅡ
35334	ClassicaLoid 2nd Season	ClassicaLoid 2	クラシカロイド 第2シリーズ
35335	Musashino!	Unknown	むさしの！
35362	Mori no Yousei: Kinoko no Musume	Unknown	森の妖精 キノコの娘
35364	Kkoma Sinseon Tao	Little Wizard Tao	꼬마 신선 타오
35365	Kkoma Sinseon Tao 2	Little Wizard Tao 2	금주의 꼬마신선 타오2
35370	Teekyuu 9	Teekyu 9	てーきゅう 9期
35372	Otoppe	Unknown	オトッペ
35376	Himouto! Umaru-chan R	Unknown	干物妹！うまるちゃんR
35383	Yousei Land Mukashibanashi	Forest Fairy Five ~Fairy Tale~	妖精ランドむかし話
35385	Yukai na Animal Bus 2nd Season	Unknown	ゆかいなアニマルバス 2ndシーズン
35413	Imouto sae Ireba Ii.	A Sister's All You Need	妹さえいればいい。
35427	Animegataris	Anime-Gataris	アニメガタリズ
35434	Konbini Kareshi	Convenience Store Boy Friends	コンビニカレシ
35444	Neko to Mata	Unknown	ね子とま太
35476	Little Charo 4: Eigo de Aruku New York	Little Charo 4:New York Again	リトル・チャロ4 英語で歩くニューヨーク
35478	Neko no Robu	Unknown	猫のロブ
35484	Osake wa Fuufu ni Natte kara	Love is Like a Cocktail	お酒は夫婦になってから
35503	Shoujo☆Kageki Revue Starlight	Revue Starlight	少女☆歌劇 レヴュースタァライト
35507	Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e (TV)	Classroom of the Elite	ようこそ実力至上主義の教室へ
35508	Shampoo Ouji	Unknown	シャンプー王子
35516	Dappys	Dappys	ダッピィズ
35517	Caribadix	Caribadix	Caribadix
35540	Slow Start	Slow Start	スロウスタート
35541	Turning Mecard	Turning Mecard	터닝메카드
35542	Turning Mecard W	Turning Mecard W	터닝메카드 W
35543	Turning Mecard W Season 2	Turning Mecard W Season 2	터닝메카드 W 시즌2
35557	Houseki no Kuni (TV)	Land of the Lustrous	宝石の国
35589	Toji no Miko	Katana Maidens:Toji no Miko	刀使ノ巫女
35605	Astar-eul Hyanghae Chaguchagu	Unknown	아스타를 향해 차구차구
35629	Skirt no Naka wa Kedamono Deshita.	Unknown	スカートの中はケダモノでした。
35639	Just Because!	Just Because!	Just Because!
35641	Vary Peri	Unknown	幻变精灵之蛋糕甜心
35642	Lei Su Deng Shandian Chong Xian	Race-Tin:Flash & Dash	雷速登闪电冲线
35643	Huoli Shaonian Wang zhi Chuanqi Zaixian	Blazing Teens 5:Legendary Warriors	火力少年王之传奇再现
35656	Oshiri Tantei	Unknown	おしりたんてい
36259	Pingu in the City	Pingu in the City	ピングー in ザ・シティ
35672	Yama no Susume: Third Season	Encouragement of Climb Season 3	ヤマノススメ サードシーズン
35694	Kirin the Noop	Kirin the Noop	キリン・ザ・ヌープ
35695	Keito no Yousei: Knit to Wool	Unknown	けいとのようせいニットとウール
35696	Konigiri-kun	Unknown	こにぎりくん
35697	Beads no Mori no Rabi	Unknown	ビーズの森のらびぃ
35698	Oidon to	Unknown	おいどんと
35699	Mono-darake!	Monodarake!	モノだらけ！
35710	Baby Gamba	Baby Gamba	ベビーガンバ
35712	Boku no Kanojo ga Majimesugiru Sho-bitch na Ken	My Girlfriend is Shobitch	僕の彼女がマジメ過ぎるしょびっちな件
35714	Yami Shibai 5	Yamishibai:Japanese Ghost Stories 5	闇芝居 5期
35730	Musekinin Galaxy☆Tylor	The Irresponsible Galaxy☆Tylor	無責任ギャラクシー☆タイラー
35739	Pikotarou no Lullaby Lullaby (TV)	Pikotaro's Lullaby La La By (TV)	ピコ太郎のララバイラーラバイ
35756	Comic Girls	Unknown	こみっくがーるず
35757	Gin no Guardian II	The Silver Guardian 2	銀の墓守りII
35760	Shingeki no Kyojin Season 3	Attack on Titan Season 3	進撃の巨人 Season3
35788	Shokugeki no Souma: San no Sara	Food Wars! The Third Plate	食戟のソーマ 餐ノ皿
35789	Yowamushi Pedal: Glory Line	Unknown	弱虫ペダル GLORY LINE
35790	Tate no Yuusha no Nariagari	The Rising of the Shield Hero	盾の勇者の成り上がり
35799	Miniforce	Miniforce	최강전사 미니특공대
35817	Curry no Kuni no Coburoux	Unknown	カレーの国のコバ～ル
35818	Love Kome: We Love Rice 2nd Season	Love Rice 2	ラブ米 -WE LOVE RICE-
35821	Chio-chan no Tsuugakuro	Chio's School Road	ちおちゃんの通学路
35828	Miira no Kaikata	How to Keep a Mummy	ミイラの飼い方
35834	Angolmois: Genkou Kassenki	Angolmois:Record of Mongol Invasion	アンゴルモア 元寇合戦記
35835	RErideD: Tokigoe no Derrida	RErideD:Derrida, who leaps through time	RErideD－刻越えのデリダ－
35838	Shoujo Shuumatsu Ryokou	Girls' Last Tour	少女終末旅行
35839	Sora yori mo Tooi Basho	A Place Further Than The Universe	宇宙よりも遠い場所
35843	Gintama.: Porori-hen	Gintama.:Slip Arc	銀魂。ポロリ編
35847	SSSS.Gridman	Unknown	SSSS.GRIDMAN
35849	Darling in the FranXX	DARLING in the FRANXX	ダーリン・イン・ザ・フランキス
35857	Lupin III: Part 5	Unknown	ルパン三世 PART5
35860	Karakai Jouzu no Takagi-san	Teasing Master Takagi-san	からかい上手の高木さん
35883	Cinderella Girls Gekijou 2nd Season	Unknown	シンデレラガールズ劇場 第2期
35889	Hakata Tonkotsu Ramens	Hakata Tonkotsu Ramens	博多豚骨ラーメンズ
35905	Ryuuou no Oshigoto!	The Ryuo's Work is Never Done!	りゅうおうのおしごと！
35914	Catchy-kun no Nice Catch!	Unknown	キャッチーくんのナイスキャッチ!
35920	Hello Jadoo	Hello Jadoo	Unknown
35923	Ame-iro Cocoa Series: Ame-con!!	Ame-Con!!	雨色ココアシリーズ あめこん!!
35928	Devils Line	Devils' Line	デビルズライン
35957	Yura Yura Suizokukan	Unknown	ユラユラすいぞくかん
35962	Papan Ga Panda!	Papan Ga Panda!	パパンがパンダ！
35963	PJ Berri no Mogumogu Munyamunya Season 2	Unknown	PJベリーのもぐもぐむにゃむにゃ シーズン２
35964	Basilisk: Ouka Ninpouchou	Basilisk:The Ouka Ninja Scrolls	バジリスク ～桜花忍法帖～
35968	Wotaku ni Koi wa Muzukashii	Wotakoi:Love is Hard for Otaku	ヲタクに恋は難しい
35972	Fairy Tail: Final Series	Fairy Tail Final Series	FAIRY TAIL ファイナルシリーズ
35983	Harukana Receive	Harukana Receive	はるかなレシーブ
35988	Dame x Prince Anime Caravan	Damepri Anime Caravan	ダメプリ ANIME CARAVAN
35994	Satsuriku no Tenshi	Angels of Death	殺戮の天使
35997	Märchen Mädchen	Maerchen Maedchen	メルヘン・メドヘン
35999	Dia Horizon (Kabu)	Unknown	ディアホライゾン（被）
36000	Sora to Umi no Aida	Between the Sky and Sea	ソラとウミのアイダ
36001	Alice or Alice	Unknown	ありすorありす
36002	Otona no Ikkyuu-san 2nd Season	Unknown	オトナの一休さん 第2シリーズ
36003	Kimoshiba 2	Unknown	きもしば２
36009	Two Car	TWOCAR	つうかあ
36015	Shaolin Chuanqi	Unknown	少林寺传奇
36022	Cardfight!! Vanguard G: Z	Cardfight!! Vanguard G Z	CARDFIGHT!! ヴァンガードG Z
36023	Persona 5 the Animation	Persona 5 The Animation	TVアニメ「ペルソナ５」
36027	Ousama Game The Animation	King's Game	王様ゲーム The Animation
36028	Golden Kamuy	Golden Kamuy	ゴールデンカムイ
36029	Hakyuu Houshin Engi	Hakyu Hoshin Engi	覇穹 封神演義
36036	Running Man	Unknown	런닝맨
36037	Senran Kagura Shinovi Master: Tokyo Youma-hen	Senran Kagura:Shinovi Master	閃乱カグラ SHINOVI MASTER -東京妖魔篇-
36049	Dagashi Kashi 2	Dagashi Kashi 2	だがしかし2
36073	Aiseki Mogol Girl	Unknown	aiseki MOGOL GIRL
36094	Hakumei to Mikochi	Hakumei and Mikochi	ハクメイとミコチ
36108	Takunomi.	Takunomi	たくのみ。
36124	Itou Junji: Collection	The Junji Ito Collection	伊藤潤二「コレクション」
36135	Oretacha Youkai Ningen	Unknown	俺たちゃ妖怪人間
36144	Garo: Vanishing Line	GARO -VANISHING LINE-	牙狼〈GARO〉-VANISHING LINE-
36166	Fireball Humorous	Unknown	ファイアボール ユーモラス
36167	Yuhuwa Chingudeul	YooHoo & Friends	유후와 친구들
36196	Kaijuu Girls: Ultra Kaijuu Gijinka Keikaku 2nd Season	Unknown	怪獣娘～ウルトラ怪獣擬人化計画～ 第2期
36198	Omiai Aite wa Oshiego, Tsuyoki na, Mondaiji.	Unknown	お見合い相手は教え子、強気な、問題児。
36220	Itsudatte Bokura no Koi wa 10 cm Datta.	Our love has always been 10 centimeters apart.	いつだって僕らの恋は10センチだった。
36231	Hinomaru!	Hinomaru!	ヒノマル!
36245	Evil or Live	Evil or Live	EVIL OR LIVE
36252	Library Cross Infinite	Unknown	LibraryCross∞
36265	Sylvanian Families: Mini Story	Unknown	シルバニアファミリー ミニストーリー
36266	Mahou Shoujo Site	Magical Girl Site	魔法少女サイト
36267	Uchuu Senkan Tiramisù	Space Battleship Tiramisu	宇宙戦艦ティラミス
36288	Glamorous Heroes	Glamorous Heroes	グラマラスヒーローズ
36296	Hinamatsuri	Hinamatsuri	ヒナまつり
36309	Butlers: Chitose Momotose Monogatari	Unknown	Butlers~千年百年物語~
36316	Shichisei no Subaru	Seven Senses of the Re'Union	七星のスバル
36317	Gaikotsu Shotenin Honda-san	Skull-face Bookseller Honda-san	ガイコツ書店員本田さん
36407	Kenja no Mago	Wise Man's Grandchild	賢者の孫
36409	Yodel no Onna	Unknown	ヨーデルの女
36418	Koneko no Chi: Ponponra Dairyokou	Unknown	こねこのチー ポンポンらー大旅行
36423	Zhandou Wang Zhi Jufeng Zhan Hun	Infinity Nado	战斗王之飓风战魂
36425	Zhandou Wang Zhi Jufeng Zhan Hun 2	Infinity Nado 2	战斗王之飓风战魂2
36427	Zhandou Wang Zhi Jufeng Zhan Hun 3	Infinity Nado 3	战斗王之飓风战魂3
36429	Zhen Gyi Hong Shi	World Peacekeepers	正义红师
36431	One Room Second Season	Unknown	One Room セカンドシーズン
36432	Toaru Majutsu no Index III	A Certain Magical Index III	とある魔術の禁書目録Ⅲ
36440	Ku Pao Ying Xiong	Unknown	酷跑英雄
36456	Boku no Hero Academia 3rd Season	My Hero Academia 3	僕のヒーローアカデミア
36458	Soukou Musume Senki	LBX Girls	装甲娘戦機
36470	Tada-kun wa Koi wo Shinai	Tada Never Falls in Love	多田くんは恋をしない
36474	Sword Art Online: Alicization	Sword Art Online:Alicization	ソードアート・オンライン アリシゼーション
36475	Sword Art Online Alternative: Gun Gale Online	Unknown	ソードアート・オンライン オルタナティブ ガンゲイル・オンライン
36483	B-Project: Zecchou*Emotion	Unknown	B-PROJECT～絶頂＊エモーション～
36486	Lalala Lala-chan ★Uchuu ni Muchuu★	Unknown	ラララ ララちゃん ★ウチュ～にムチュ～★
36506	Fuwafuwa Hour: Pui Pui & Muu Muu	Unknown	ふわふわアワー PuiPui&MuuMuu
36510	Ulysses: Jehanne Darc to Renkin no Kishi	Ulysses:Jeanne d'Arc and the Alchemist Knight	ユリシーズ ジャンヌ・ダルクと錬金の騎士
36511	Tokyo Ghoul:re	Tokyo Ghoul:re	東京喰種トーキョーグール：re
36513	Rokuhoudou Yotsuiro Biyori	Yotsuiro Biyori	鹿楓堂よついろ日和
36516	Beatless	Beatless	BEATLESS
36522	Ling Qi 2	Spiritpact:Bond of the Underworld	灵契 2
36525	Dorei-ku The Animation	Unknown	奴隷区 The Animation
36530	Porong Porong Pororo 6	Pororo the Little Penguin 6	뽀롱뽀롱 뽀로로 6
36531	Shinkansen Henkei Robo Shinkalion The Animation	Unknown	新幹線変形ロボ シンカリオン THE ANIMATION
36536	Starmyu 3rd Season	Unknown	高校星歌劇[スタミュ] 3rdシーズン
36548	Kokkoku	Kokkoku	刻刻
36551	Lalala Lala-chan: Patapata Daisensou	Unknown	ラララ ララちゃん~パタパタだいせんそう~
36552	Pikachin-Kit	Unknown	ピカちんキット
36563	Megalo Box	MEGALOBOX	メガロボクス
36565	Major 2nd (TV)	Unknown	メジャーセカンド
36587	Granblue Fantasy The Animation Season 2	GRANBLUE FANTASY The Animation Season2	グランブルーファンタジー The Animation Season2
36593	Hug tto! Precure	Unknown	HuGっと！プリキュア
36611	Bary-san no Shokoku Manyuuki	Unknown	バリィさんの諸国漫遊記
36618	Flowering Heart 2	Flowering Heart 2	플라워링 하트 2
36632	Ore ga Suki nano wa Imouto dakedo Imouto ja Nai	My Sister, My Writer	俺が好きなのは妹だけど妹じゃない
36633	Date A Live III	Date A Live III	デート・ア・ライブⅢ
36649	Banana Fish	Unknown	BANANA FISH
36652	Piano no Mori (TV)	Forest of Piano	ピアノの森
36653	Tsurune: Kazemai Koukou Kyuudoubu	Unknown	ツルネ ―風舞高校弓道部―
36654	Tsukumogami Kashimasu	We Rent Tsukumogami	つくもがみ貸します
36657	Stone Age	Stone Age	스톤에이지
36666	An Ling Yu Shi Di Qi	Stitch & Ai	安玲与史迪奇
36704	Free!: Dive to the Future	Unknown	Free!-Dive to the Future-
36726	Yuragi-sou no Yuuna-san	Unknown	ゆらぎ荘の幽奈さん
36728	Mameneko	Unknown	まめねこ
36735	Capsule Samurai	The Capsule Samurai	カプセル侍
36736	Shikato	Unknown	しかと
36740	Dragon Egg	Dragon Egg	드래곤에그
36754	Kakuriyo no Yadomeshi	Kakuriyo:Bed and Breakfast for Spirits	かくりよの宿飯
36784	Hataraku Onii-san!	Working Buddies!	働くお兄さん!
36793	3D Kanojo: Real Girl	Real Girl	３Ｄ彼女　リアルガール
36797	gdMen	gdgd men's Party	gdメン
36800	Amanchu! Advance	Unknown	あまんちゅ！～あどばんす～
36817	Sunohara-sou no Kanrinin-san	Miss caretaker of Sunohara-sou	すのはら荘の管理人さん
36828	Caligula (TV)	Caligula	カリギュラ
36838	Gintama.: Shirogane no Tamashii-hen	Gintama.:Silver Soul Arc	銀魂. 銀ノ魂篇
36840	25-sai no Joshikousei	Unknown	25歳の女子高生
36847	Nanatsu no Bitoku	The Seven Heavenly Virtues	七つの美徳
36864	Akkun to Kanojo	My Sweet Tyrant	あっくんとカノジョ
36873	Back Street Girls: Gokudolls	Back Street Girls:Gokudolls	Back Street Girls -ゴクドルズ
36881	Dennou Senshi Dokan-kun	Unknown	電脳戦士 土管くん
36882	Arifureta Shokugyou de Sekai Saikyou	Arifureta:From Commonplace to World's Strongest	ありふれた職業で世界最強
36884	Hisone to Maso-tan	Dragon Pilot:Hisone and Masotan	ひそねとまそたん
36894	Inazma Delivery: Dougyousha Attack-hen	Unknown	イナズマデリバリー 同業者アタック編
36902	Mahou Shoujo Ore	Magical Girl Ore	魔法少女 俺
36906	Jashin-chan Dropkick	Dropkick On My Devil!	邪神ちゃんドロップキック
36925	Pretty All Friends	Unknown	プリティーオールフレンズ
36934	Captain Tsubasa (2018)	Unknown	キャプテン翼
36943	Tachibanakan Triangle	Love To-LIE-Angle	立花館To Lieあんぐる
36945	Himote House	HIMOTE HOUSE:A share house of super psychic girls	ひもてはうす
36949	Shokugeki no Souma: San no Sara - Tootsuki Ressha-hen	Food Wars! The Third Plate:Totsuki Train Arc	食戟のソーマ 餐ノ皿 遠月列車篇
36976	Cutie Honey Universe	Unknown	Cutie Honey Universe
36978	Annyeong Totobi	Unknown	안녕 토토비
36981	Neko no Dayan (2017)	Unknown	猫のダヤン (2017)
36982	Micchiri Neko	Mitchiri Neko	みっちりねこ
36993	Chao Zhi Neng Zu Qiu	GGO Football	超智能足球
37002	Uchi no Oochopus	Unknown	うちのウッチョパス
37007	Hinomaruzumou	Hinomaru Sumo	火ノ丸相撲
37008	Tsukipro The Animation 2nd Season	Unknown	TSUKIPRO THE ANIMATION 2
37023	Layton Mystery Tanteisha: Katri no Nazotoki File	Unknown	レイトン ミステリー探偵社~カトリーのナゾトキファイル~
37029	Hoozuki no Reitetsu 2nd Season: Sono Ni	Hozuki's Coolheadedness 2	鬼灯の冷徹 第弐期その弐
37036	Binan Koukou Chikyuu Boueibu Happy Kiss!	Unknown	美男高校地球防衛部HAPPY KISS!
37054	Sentai Hero Sukiyaki Force: Gunma no Heiwa wo Negau Season e, Mata?	Unknown	戦隊ヒーロー スキヤキフォース -ぐんまの平和を願うシーズン え, また?-
37086	Kakegurui××	Unknown	賭ケグルイ××
37096	Puzzle & Dragon	Puzzle & Dragon	パズドラ
37101	Xiong Chumo Zhi: Xiongxiong Leyuan	Boonie Cubs	熊出没之熊熊乐园
37102	Xiong Chumo Zhi: Tanxian Riji	Boonie Bears:The Adventurers	熊出没之探险日记
37105	Grand Blue	Grand Blue Dreaming	ぐらんぶる
37106	Kitsune no Koe	Voice of Fox	狐狸之声
37117	Bakutsuri Bar Hunter	Unknown	爆釣バーハンター
37126	Nobunaga no Shinobi: Anegawa Ishiyama-hen	Ninja Girl & Samurai Master:Anegawa and Ishiyama Arc	信長の忍び~姉川・石山篇~
37140	Gegege no Kitarou (2018)	GeGeGe no Kitaro	ゲゲゲの鬼太郎 (2018)
37141	Hataraku Saibou (TV)	Cells at Work!	はたらく細胞
37151	Marvel Future Avengers 2nd Season	Unknown	マーベル フューチャー・アベンジャーズ 第2期
37154	Grimms Notes The Animation	Unknown	グリムノーツ
37171	Asobi Asobase	Asobi Asobase:Workshop of Fun	あそびあそばせ
37178	Kiratto Pri☆chan	Unknown	キラッとプリ☆チャン
37188	Fumikiri Jikan	Crossing Time	踏切時間
37202	Radiant	Radiant	ラディアン
37204	Aikatsu Friends!	Unknown	アイカツフレンズ！
37206	Anima Yell!	Unknown	アニマエール！
37210	Isekai Maou to Shoukan Shoujo no Dorei Majutsu	How Not to Summon a Demon Lord	異世界魔王と召喚少女の奴隷魔術
37219	Xiongmao He Xiao Yan Shu	Panda and Little Mole	熊猫和小鼹鼠
37221	Release the Spyce	Unknown	RELEASE THE SPYCE
37225	Xiao Hua Xian	Unknown	小花仙
37232	Merc Storia: Mukiryoku no Shounen to Bin no Naka no Shoujo	Merc StoriA:The Apathetic Boy and the Girl in a Bottle	メルクストーリア -無気力少年と瓶の中の少女-
37244	Gan Gan Ganko-chan 2nd Season	Unknown	がん がん がんこちゃん 第2期
37245	Gundam Build Divers	Gundam Build Divers	ガンダムビルドダイバーズ
37254	Last Period: Owarinaki Rasen no Monogatari	Last Period:The Journey to the End of the Despair	ラストピリオド -終わりなき螺旋の物語-
37258	Omae wa Mada Gunma wo Shiranai	You Don't Know Gunma Yet	お前はまだグンマを知らない
37259	Hanebado!	Hanebado!	はねバド！
37263	Quiz Tokiko-san	Unknown	クイズとき子さん
37268	Z/X: Code Reunion	Unknown	Z/X Code Reunion
37281	Joshiochi!: 2-kai kara Onnanoko ga... Futtekita!?	Unknown	じょしおちっ！～2階から女の子が…降ってきた！？～
37283	Beyblade Burst Chouzetsu	Beyblade Burst Turbo	ベイブレードバースト 超ゼツ
37300	Xiao Liyu Lixian Ji	The Adventures of Little Carp	小鲤鱼历险记
37302	Kemurikusa (TV)	Unknown	ケムリクサ
37320	Amai Choubatsu: Watashi wa Kanshu Senyou Pet	Unknown	甘い懲罰~私は看守専用ペット
37324	Youkai Watch: Shadow Side	Unknown	妖怪ウォッチ シャドウサイド
37325	Kuroneko Monroe	Unknown	黒猫モンロヲ
37328	Oshiete Mahou no Pendulum: Rilu Rilu Fairilu	Unknown	おしえて魔法のペンデュラム～リルリルフェアリル～
37338	Chuukan Kanriroku Tonegawa	Mr. Tonegawa:Middle Management Blues	中間管理録トネガワ
37345	Plunderer	Plunderer	プランダラ
37347	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka II	Is It Wrong to Try to Pick Up Girls in a Dungeon? II	ダンジョンに出会いを求めるのは間違っているだろうかII
37349	Goblin Slayer	Goblin Slayer	ゴブリンスレイヤー
37359	Kekkero Ke	Unknown	ケッケロケー
37368	Shounen Ashibe: Go! Go! Goma-chan 3	Unknown	少年アシベ GO! GO! ゴマちゃん 3
37369	Neko Neko Nihonshi 3rd Season	Meow Meow Japanese History	ねこねこ日本史 第3期
37374	Pastel Memories	Unknown	ぱすてるメモリーズ
37379	Chihayafuru 3	Unknown	ちはやふる 3
37393	Watashi, Nouryoku wa Heikinchi de tte Itta yo ne!	Didn't I Say to Make My Abilities Average in the Next Life?!	私、能力は平均値でって言ったよね!
37395	Zoids Wild	Unknown	ゾイドワイルド
37403	Ahiru no Sora	Unknown	あひるの空
37422	Cinderella Girls Gekijou 3rd Season	Unknown	シンデレラガールズ劇場 第3期
37426	Sarazanmai	Sarazanmai	さらざんまい
37428	Chara to Otamajakushi Shima	Unknown	キャラとおたまじゃくし島
37430	Tensei shitara Slime Datta Ken	That Time I Got Reincarnated as a Slime	転生したらスライムだった件
37433	Wakaokami wa Shougakusei!	Okko's Inn	若おかみは小学生！
37435	Carole & Tuesday	Unknown	キャロル&チューズデイ
37446	Hyakuren no Haou to Seiyaku no Valkyria	The Master of Ragnarok & Blesser of Einherjar	百錬の覇王と聖約の戦乙女〈ヴァルキュリア〉
37447	Karakuri Circus (TV)	Le Cirque de Karakuri	からくりサーカス
37448	Ladyspo	Unknown	レディスポ
37450	Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai	Rascal Does Not Dream of Bunny Girl Senpai	青春ブタ野郎はバニーガール先輩の夢を見ない
37451	Boogiepop wa Warawanai (2019)	Boogiepop and Others	ブギーポップは笑わない
37458	Kyoto Teramachi Sanjou no Holmes	Holmes of Kyoto	京都寺町三条のホームズ
37467	Usagi no Matthew	Matthew the Rabbit	うさぎのマシュー
37472	Lalala Lala-chan: Lala to Mainichi	Unknown	ラララ ララちゃん ～ララっとまいにち～
37475	Kishuku Gakkou no Juliet	Boarding School Juliet	寄宿学校のジュリエット
37476	Cardfight!! Vanguard (2018)	Unknown	カードファイト!! ヴァンガード (2018)
37481	Ongaku Shoujo (TV)	Music Girls	音楽少女
37484	Duel Masters!	Unknown	デュエル・マスターズ!
37487	Muhyo to Rouji no Mahouritsu Soudan Jimusho	Muhyo & Roji's Bureau of Supernatural Investigation	ムヒョとロージーの魔法律相談事務所
37490	Gyakuten Saiban: Sono "Shinjitsu", Igi Ari! Season 2	Ace Attorney Season 2	逆転裁判 ～その「真実」、異議あり！～ Season 2
37491	Gintama.: Shirogane no Tamashii-hen - Kouhan-sen	Gintama.:Silver Soul Arc - Second Half War	銀魂. 銀ノ魂篇 後半戦
37496	Double Decker! Doug & Kirill	Double Decker! Doug & Kirill	DOUBLE DECKER! ダグ＆キリル
37497	Irozuku Sekai no Ashita kara	Iroduku:The World in Colors	色づく世界の明日から
37509	W'z	Unknown	ウィズ
37510	Mob Psycho 100 II	Mob Psycho 100 II	モブサイコ100 II
37517	Happy Sugar Life	Unknown	ハッピーシュガーライフ
37520	Dororo	Dororo	どろろ
37521	Vinland Saga	Unknown	ヴィンランド・サガ
37522	Pet	Pet	ペット
37525	Babylon	Unknown	バビロン
37555	Hangyakusei Million Arthur	Operation Han-Gyaku-Sei Million Arthur	叛逆性ミリオンアーサー
37559	Oretacha Youkai Ningen G	Unknown	俺たちゃ妖怪人間G
37560	Mannaka no Rikkun@Kin Tele	Unknown	まんなかのりっくん＠きんてれ
37561	Akanesasu Shoujo	The Girl in Twilight	あかねさす少女
37569	Sirius	Sirius the Jaeger	天狼〈シリウス〉 Sirius the Jaeger
37571	Senjuushi	The Thousand Noble Musketeers	千銃士
37576	Majutsushi Orphen Hagure Tabi	Sorcerous Stabber Orphen	魔術士オーフェンはぐれ旅
37578	Planet With	Unknown	プラネット・ウィズ
37579	Tonari no Kyuuketsuki-san	Ms. vampire who lives in my neighborhood.	となりの吸血鬼さん
37584	Bakumatsu	Unknown	BAKUMATSU
37587	Lapis Re:LiGHTs	Unknown	ラピスリライツ
37597	Dakaretai Otoko 1-i ni Odosarete Imasu.	DAKAICHI -I'm being harassed by the sexiest man of the year-	抱かれたい男1位に脅されています。
37598	Phantom in the Twilight	Unknown	ファントム イン ザ トワイライト
37599	Magatsu Wahrheit: Zuerst	MAGATSU WAHRHEIT	禍つヴァールハイト -ZUERST-
37601	Lord of Vermilion: Guren no Ou	Lord of Vermilion:The Crimson King	ロード オブ ヴァーミリオン　紅蓮の王
37611	Future Card Buddyfight Battsu: All-Star Fight	Unknown	フューチャーカード バディファイト バッツ オールスターファイト
37614	Hitoribocchi no Marumaru Seikatsu	Unknown	ひとりぼっちの○○生活
37616	Ten Count	Unknown	テンカウント
37630	Washimo 6th Season	Unknown	わしも-wasimo-(第6シリーズ)
37646	Hataraku Onii-san! no 2!	Working Buddies! No 2!	働くお兄さん！の2！
37651	Fate/Extra: Last Encore - Illustrias Tendousetsu	Unknown	Fate/EXTRA Last Encore イルステリアス天動説
37653	Caribadix 2nd Season	Caribadix 2nd Season	ディッキー&カリーナ 2ndシーズン
37657	Gakuen Basara	Gakuen Basara:Samurai High School	学園BASARA
37662	Shinya! Tensai Bakabon	Unknown	深夜！天才バカボン
37675	Overlord III	Overlord III	オーバーロードⅢ
37686	Pugpug	Unknown	パグパグ
37698	Ukkari Pénélope (2017)	Unknown	うっかりペネロペ
37714	Shin Manga Naruhodo Monogatari	Unknown	新まんがなるほど物語
37716	Beelzebub-jou no Okinimesu mama.	As Miss Beelzebub Likes.	ベルゼブブ嬢のお気に召すまま。
37722	Uchi no Maid ga Uzasugiru!	UzaMaid!	うちのメイドがウザすぎる！
37739	Future Card Shin Buddyfight	Future Card Buddyfight Ace	フューチャーカード 神バディファイト
37744	Isekai Cheat Magician	Unknown	異世界チート魔術師〈マジシャン〉
37747	Ame-iro Cocoa: Side G	Unknown	雨色ココア side G
37749	Turning Mecard R	Turning Mecard R	터닝메카드 R
37750	Turning Mecard W: Vandyne-ui Bimil	Turning Mecard W:Vandyne's Secret	터닝메카드 W 반다인의 비밀
37752	Gonglyong Mecard	Dino Mecard	공룡메카드
37769	Aguu: Tensai Ningyou	Aguu:Genius Dolls	悪偶 ‐天才人形‐
37778	Pastel Life	Unknown	ぱすてるらいふ
37779	Yakusoku no Neverland	The Promised Neverland	約束のネバーランド
37780	Okojo to Yamane	Unknown	オコジョとヤマネ
37786	Yagate Kimi ni Naru	Bloom Into You	やがて君になる
37787	Space Bug	The Journey Home	スペースバグ
37798	Chaechaepong Kimchi Pong	Unknown	채채퐁 김치퐁
37799	Tokyo Ghoul:re 2nd Season	Unknown	京喰種トーキョーグール：re 第2期
37806	Gunjou no Magmell	Unknown	群青のマグメル
37823	Conception	Unknown	CONCEPTION（コンセプション）
37869	BanG Dream! 2nd Season	Unknown	BanG Dream!（バンドリ！）第2期
37870	BanG Dream! 3rd Season	Unknown	BanG Dream!（バンドリ！）第3期
37873	BanG Dream! Garupa☆Pico	Unknown	BanG Dream! ガルパ☆ピコ
37890	Oshi ga Budoukan Ittekuretara Shinu	If My Favorite Pop Idol Made It to the Budokan, I Would Die	推しが武道館いってくれたら死ぬ
37893	Yami Shibai 6	Yamishibai:Japanese Ghost Stories 6	闇芝居 6期
37920	Ueno-san wa Bukiyou	How clumsy you are, Miss Ueno.	上野さんは不器用
37924	Ani ni Tsukeru Kusuri wa Nai! 2	Unknown	兄に付ける薬はない! 2
38610	Tejina-senpai	Magical Sempai	手品先輩
37926	Nakanohito Genome [Jikkyouchuu]	The Ones Within	ナカノヒトゲノム【実況中】
37927	Nu Sheng Su She Ri Chang	Unknown	女生宿舍日常
37940	Yatogame-chan Kansatsu Nikki	Unknown	八十亀ちゃんかんさつにっき
37941	Naengjang-go Nala Cocomong	Cocomong	냉장고 나라 코코몽
37942	Hello Cocomong	Hello Cocomong	헬로 코코몽
37943	Cocomong 2	Cocomong 2	코코몽2
37944	Hello Cocomong 2	Hello Cocomong 2	헬로 코코몽2
37945	Cocomong 3	Cocomong 3	코코몽3
37951	Ice Kuritarou	Ice Kuritaro	アイスくりたろう
37952	Shoumetsu Toshi	AFTERLOST	消滅都市
37956	3D Kanojo: Real Girl 2nd Season	Unknown	3D彼女 リアルガール第2シーズン
37958	Fukigen na Mononokean Tsuzuki	The Morose Mononokean II	不機嫌なモノノケ庵 續
37962	IDOLiSH7: Second Beat!	Unknown	アイドリッシュセブン Second BEAT!
37964	Mayonaka no Occult Koumuin	Midnight occult civil servants	真夜中のオカルト公務員
37965	Kaze ga Tsuyoku Fuiteiru	Run with the Wind	風が強く吹いている
37968	Kirakira Happy★Hirake! Cocotama	Unknown	キラキラハッピー★ひらけ! ここたま
37972	Hoshiai no Sora	Stars Align	星合の空
37975	Piano no Mori (TV) 2nd Season	Unknown	ピアノの森 第2シリーズ
37976	Zombieland Saga	Zombie Land Saga	ゾンビランドサガ
37978	Kamisama Minarai: Himitsu no Cocotama - Minarai Cocotama-dou	Unknown	かみさまみならい ヒミツのここたま 特别篇
37979	Mahou Shoujo Tokushusen Asuka	Magical Girl Spec-Ops Asuka	魔法少女特殊戦あすか
37982	Domestic na Kanojo	Domestic Girlfriend	ドメスティックな彼女
37984	Kumo Desu ga, Nani ka?	So I'm a Spider, So What?	蜘蛛ですが、なにか？
37988	Uchuu Senkan Tiramisù II	Space Battleship Tiramisu Zwei	宇宙戦艦ティラミスⅡ（ツヴァイ）
37989	Golden Kamuy 2nd Season	Golden Kamuy:Season 2	ゴールデンカムイ
37990	Gurazeni Season 2	Unknown	グラゼニ シーズン2
37991	JoJo no Kimyou na Bouken Part 5: Ougon no Kaze	JoJo's Bizarre Adventure:Golden Wind	ジョジョの奇妙な冒険 黄金の風
37992	Jingai-san no Yome	Unknown	人外さんの嫁
37993	Watashi ni Tenshi ga Maiorita!	Wataten! An Angel Flew Down to Me	私に天使が舞い降りた！
37998	Girly Air Force	Unknown	ガーリー・エアフォース
37999	Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen	Kaguya-sama:Love is War	かぐや様は告らせたい～天才たちの恋愛頭脳戦～
38000	Kimetsu no Yaiba	Demon Slayer:Kimetsu no Yaiba	鬼滅の刃
38003	Bungou Stray Dogs 3rd Season	Unknown	文豪ストレイドッグス 第3期
38004	Strike Witches: 501 Butai Hasshin Shimasu!	Strike Witches:501st JOINT FIGHTER WING Take Off!	ストライクウィッチーズ 501部隊発進しますっ！
38005	Strike Witches: Road to Berlin	Unknown	第501統合戦闘航空団 ストライクウィッチーズ ROAD to BERLIN
38006	Renmei Kuugun Koukuu Mahou Ongakutai Luminous Witches	Luminous Witches	連盟空軍航空魔法音楽隊 ルミナスウィッチーズ
38008	Hawaiian Conu	Unknown	ハワイアン コヌ
38009	Re:Stage! Dream Days♪	Unknown	Re:ステージ! ドリームデイズ♪
38010	Kaeru Ouji to Imomushi Henry	Frog Prince & Henry The Caterpillar	カエル王子といもむしヘンリー
38016	Zannen na Ikimono Jiten	Unknown	ざんねんないきもの事典
38020	Beatless Final Stage	Unknown	BEATLESS Final Stage
38062	Endro~!	ENDRO!	えんどろ～！
38069	Yi Kong Zhi Dian	Brinken:Skate Revolution	翼空之巅
38070	Kkoma Bus Tayo	Tayo the Little Bus Season 1	꼬마버스 타요 1
38071	Kkoma Bus Tayo 2	Tayo the Little Bus Season 2	꼬마버스 타요 2
38072	Kkoma Bus Tayo 3	Tayo the Little Bus Season 3	꼬마버스 타요 3
38074	Kkoma Bus Tayo 4	Tayo the Little Bus Season 4	꼬마버스 타요 4
38075	Titipo Titipo	Titipo	띠띠뽀 띠띠뽀
38080	Kono Oto Tomare!	Kono Oto Tomare!:Sounds of Life	この音とまれ！
38083	Ken En Ken: Aoki Kagayaki	Xuan Yuan Sword Luminary	軒轅剣・蒼き曜
38084	Fate/Grand Order: Zettai Majuu Sensen Babylonia	Fate/Grand Order:Absolute Demonic Front - Babylonia	Fate/Grand Order -絶対魔獣戦線バビロニア-
38089	Okoshiyasu, Chitose-chan	Unknown	おこしやす、ちとせちゃん
38091	Hachigatsu no Cinderella Nine (TV)	Cinderella Nine	八月のシンデレラナイン (TV)
38092	Chiro-wa Chingu-deul	Chiro	치로와 친구들
38093	Zet Ranger	Z Rangers	제트레인저
38094	Kkaemo-ui Moheom	Adventure of Kkaemo	깨모의 모험
38098	Mix	Unknown	MIX（ミックス）
38099	Pakkororin	Pakkororin	パッコロリン
38101	5-toubun no Hanayome	The Quintessential Quintuplets	五等分の花嫁
38117	Zhu Zhu Xia: Da Nao Huang Gong	Unknown	猪猪侠 大闹皇宫
38118	Zhu Zhu Xia: Mo Huan Zhu Luo Ji	GG Bond Season 1:Magic Jurassic	猪猪侠 魔幻猪猡纪
38119	Zhu Zhu Xia: Wu Xia 2008	GG Bond Season 2:Martial Arts on the Olympics	猪猪侠 武侠2008
38120	Zhu Zhu Xia: Yong Chuang Weilai Cheng	GG Bond Season 3:Adventure in the Future	猪猪侠 勇闯未来城
38121	Bai Bian Zhu Zhu Xia	GG Bond Season 4:The Transform Angel	百变猪猪侠
38122	Zhu Zhu Xia: Jimu Shijie de Tonghua	GG Bond Season 5:Fairy Tales of the Brick Kingdom	猪猪侠 积木世界的童话
38123	Zhu Zhu Xia: Xingfu Jiuyuan Dui	GG Bond Season 6:Rescue Crew Comes	猪猪侠 幸福救援队
38124	Zhu Zhu Xia: Bian Shen Xiao Ying Xiong	GG Bond Season 7:Monster Hero	猪猪侠 变身小英雄
38125	Zhu Zhu Xia: Bian Shen Zhandu	GG Bond Season 8:Kung Fu Team	猪猪侠 变身战队
38126	Zhu Zhu Xia: Bai Bian Lian Meng	GG Bond Season 9:Shapeshifting Union	猪猪侠 百变联盟
38127	Zhu Zhu Xia: Wu Ling Shou Wei Zhe	GG Bond Season 10:The Legend of Warriors	猪猪侠 五灵守卫者
38128	Zhu Zhu Xia: Guang Ming Shou Wei Zhe	GG Bond Season 11	猪猪侠 光明守卫者
38129	Zhu Zhu Xia: Meng Xiang Shou Wei Zhe	GG Bond Season 12:Dream Guardians	猪猪侠 梦想守卫者
38131	Zhu Zhu Xia: Chao Xing Meng Chong	GG Bond Season 13:Agent G	猪猪侠 超星萌宠
38136	Zhu Zhu Xia: Zhong Ji Jue Zhan - Qian Ye Pian	GG Bond:Ultimate Battle Prequel	豬豬俠 終極決戰前夜篇
38138	Zhu Zhu Xia: Jing Qiu Xiao Yingxiong	GG Bond Season 14:Dodgeball Legend	猪猪侠 竞球小英雄
38145	Doukyonin wa Hiza, Tokidoki, Atama no Ue.	My Roommate is a Cat	同居人はひざ、時々、頭のうえ。
38147	Hoshi no Shima no Nyanko	Unknown	ほしの島のにゃんこ
38150	Namu Amida Butsu!: Rendai Utena	NAMUAMIDABUTSU! -UTENA-	なむあみだ仏っ! -蓮台 UTENA-
38157	Circlet Princess	Unknown	CIRCLET PRINCESS（サークレット・プリンセス）
38161	Kabukichou Sherlock	Case File nº221:Kabukicho	歌舞伎町シャーロック
38162	Rinshi!! Ekoda-chan	Rinshi!! Ekodachan	臨死!!江古田ちゃん
38166	Malta no Bouken Season 3	Unknown	マルタの冒険　シーズン3
38167	Malta no Bouken Season 2	Unknown	マルタの冒険　シーズン２
38186	Bokutachi wa Benkyou ga Dekinai	We Never Learn:BOKUBEN	ぼくたちは勉強ができない
38192	Sacks&Guns!!	Unknown	サクガン!!
38199	Bermuda Triangle: Colorful Pastrale	Unknown	バミューダトライアングル ～カラフル・パストラーレ～
38203	The iDOLM@STER SideM: Wake Atte Mini!	THE IDOLM@STER SideM Wakeatte Mini!	アイドルマスター SideM 理由あってMini!
38212	Shuudengo, Capsule Hotel de, Joushi ni Binetsu Tsutawaru Yoru.	Unknown	終電後、カプセルホテルで、上司に微熱伝わる夜。
38226	Choukadou Girl ⅙	Amazing Stranger	超可動ガール1/6
38235	Inazuma Eleven: Orion no Kokuin	Unknown	イナズマイレブン オリオンの刻印
38251	Sono Toki, Kanojo wa.	Unknown	その時、カノジョは。
38254	Hashiri Tsuzukete Yokattatte.	I'm glad I could keep running.	走り続けてよかったって。
38256	Magia Record: Mahou Shoujo Madoka☆Magica Gaiden (TV)	Magia Record:Puella Magi Madoka Magica Side Story	マギアレコード 魔法少女まどか☆マギカ外伝 (TV)
38262	Pingu in the City (2018)	Pingu in the City	ピングー in ザ・シティ
38268	Hangyakusei Million Arthur 2nd Season	Operation Han-Gyaku-Sei Million Arthur 2nd Season	叛逆性ミリオンアーサー 第2シーズン
38276	Houkago Saikoro Club	After School Dice Club	放課後さいころ倶楽部
38284	Devidol!	Unknown	でびどる！
38295	Joshikausei	Joshi Kausei	女子かう生
38297	Maou-sama, Retry!	Demon Lord, Retry!	魔王様、リトライ！
38301	Kouya no Kotobuki Hikoutai	The Magnificent Kotobuki	荒野のコトブキ飛行隊
38302	Boku no Tonari ni Ankoku Hakaishin ga Imasu.	Unknown	ぼくのとなりに暗黒破壊神がいます。
38328	Azur Lane	Unknown	アズールレーン
38331	Stand My Heroes: Piece of Truth	Stand My Heroes:Piece of Truth	スタンドマイヒーローズ PIECE OF TRUTH
38337	Gochuumon wa Usagi Desu ka? Bloom	Is the Order a Rabbit? Bloom	ご注文はうさぎですか? BLOOM
38363	Ohayou Hakushon Daimaou	Unknown	おはようハクション大魔王
38365	Aigan Kaijuu	Unknown	愛玩怪獣
38378	Lei Su Deng Shandian Chong Xian 2	Flash & Dash 2	雷速登闪电冲线2
38379	Lei Su Deng Shandian Chong Xian 3	Flash & Dash S	雷速登闪电冲线3
38390	Chuubyou Gekihatsu Boy	Outburst Dreamer Boys	厨病激発ボーイ
38397	Nande Koko ni Sensei ga!?	Unknown	なんでここに先生が!?
38408	Boku no Hero Academia 4th Season	My Hero Academia 4	僕のヒーローアカデミア
38427	Daifuku-kun@Kin Tele	Unknown	大福くん＠きんてれ
38440	Shikizakura	Unknown	シキザクラ
38449	Choujigen Kakumei Anime: Dimension High School	Unknown	超次元革命アニメ Dimensionハイスクール
38451	Reizouko no Tsukenosuke!	Unknown	れいぞうこのつけのすけ！
38472	Isekai Quartet	Unknown	異世界かるてっと
38474	Yuru Camp△ Season 2	Laid-Back Camp	ゆるキャン△ SEASON2
38476	Heya Camp△	Room Camp	へやキャン△
38480	Toaru Kagaku no Accelerator	A Certain Scientific Accelerator	とある科学の一方通行〈アクセラレータ〉
38481	Toaru Kagaku no Railgun T	A Certain Scientific Railgun T	とある科学の超電磁砲[レールガン]T
38483	Ore wo Suki nano wa Omae dake ka yo	ORESUKI Are you the only one who loves me?	俺を好きなのはお前だけかよ
38524	Shingeki no Kyojin Season 3 Part 2	Attack on Titan Season 3 Part 2	進撃の巨人 Season3 Part.2
38525	Chuldong! Super Wings	Super Wings	출동! 슈퍼윙스
38526	Chuldong! Super Wings 2	Super Wings 2	출동! 슈퍼윙스2
38529	Rifle Is Beautiful	Chidori RSC	ライフル・イズ・ビューティフル
38534	Huoli Shaonian Wang 3	Blazing Teens 3	火力少年王3
38535	Huoli Shaonian Wang 3: Xuji	Blazing Teens 4	火力少年王3续集
38537	Huoli Shaonian Wang zhi You Quan Yingxiong	Unknown	火力少年王之悠拳英雄
38538	Huoli Shaonian Wang zhi Chuanqi Zaixian: Xuji	Unknown	火力少年王之传奇再现续集
38544	Egao no Daika	The Price of Smiles	エガオノダイカ
38549	TV Yarou Nanaana	Wacky TV Na Na Na	テレビ野郎 ナナーナ
38555	Otome Game no Hametsu Flag shika Nai Akuyaku Reijou ni Tensei shiteshimatta...	My Next Life as a Villainess:All Routes Lead to Doom!	乙女ゲームの破滅フラグしかない悪役令嬢に転生してしまった…
38560	Sylvanian Families: Mini Story 2nd Season	Unknown	シルバニアファミリー ミニストーリー 第2期
38568	Susume! Dokan-kun	Unknown	進め!土管くん
38569	Tatakae! Dokan-kun: Gekitou-kun	Unknown	たたかえ!土管くん 激闘編
38570	Tatakae! Dokan-kun: Robolympic-hen	Unknown	たたかえ!土管くん ロボリンピック編
38571	Tobidase! Dokan-kun	Tobidase! Dokan-kun	とびだせ！土管くん
38572	Assassins Pride	Unknown	アサシンズプライド
38573	Tsuujou Kougeki ga Zentai Kougeki de Ni-kai Kougeki no Okaasan wa Suki Desu ka?	Do You Love Your Mom and Her Two-Hit Multi-Target Attacks?	通常攻撃が全体攻撃で二回攻撃のお母さんは好きですか？
38578	Star☆Twinkle Precure	Unknown	スター☆トゥインクルプリキュア
38585	Mahoutsukai ni Narenakatta Onnanoko no Hanashi.	Unknown	魔法使いになれなかった女の子の話.
38611	Power Battle Watch Car	Power Battle Watch Car	파워배틀 와치카
38612	Power Battle Watch Car Season 2	Power Battle Watch Car	파워배틀 와치카 시즌 2
38619	Joshikousei no Mudazukai	Wasteful Days of High School Girl	女子高生の無駄づかい
38631	Kkoma Bus Tayo 5	Tayo the Little Bus Season 5	꼬마버스 타요 5
38656	Darwin's Game	Darwin's Game	ダーウィンズゲーム
38659	Shinchou Yuusha: Kono Yuusha ga Ore Tueee Kuse ni Shinchou Sugiru	Cautious Hero:The Hero Is Overpowered but Overly Cautious	慎重勇者 ～この勇者が俺TUEEEくせに慎重すぎる～
38668	Dorohedoro	Unknown	ドロヘドロ
38669	Tsukiuta. The Animation 2	Unknown	ツキウタ. THE ANIMATION 2
38670	Actors: Songs Connection	Unknown	ACTORS -Songs Connection-
38671	Enen no Shouboutai	Fire Force	炎炎ノ消防隊
38673	Mini Toji	Unknown	みにとじ
38680	Fruits Basket 1st Season	Unknown	フルーツバスケット 1st season
38691	Dr. Stone	Dr. Stone	ドクターストーン
38707	RobiHachi	RobiHachi	ロビハチ
38731	Diamond no Ace: Act II	Ace of Diamond Act II	ダイヤのA[エース] actII
38749	Blade Runner: Black Lotus	Unknown	BLADE RUNNER – BLACK LOTUS
38753	Araburu Kisetsu no Otome-domo yo.	O Maidens in Your Savage Season	荒ぶる季節の乙女どもよ。
38759	Sewayaki Kitsune no Senko-san	The Helpful Fox Senko-san	世話やきキツネの仙狐さん
38767	Cinderella Girls Gekijou: Climax Season	Unknown	シンデレラガールズ劇場 CLIMAX SEASON
38776	Manul no Yuube	Unknown	マヌ～ルのゆうべ
38778	Midara na Ao-chan wa Benkyou ga Dekinai	Ao-chan Can't Study!	淫らな青ちゃんは勉強ができない
38787	Senryuu Shoujo	Senryu Girl	川柳少女
38790	Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu.	BOFURI:I Don't Want to Get Hurt, so I'll Max Out My Defense.	痛いのは嫌なので防御力に極振りしたいと思います。
38797	Papa datte, Shitai	Unknown	パパだって, したい
38804	Kiratto Pri☆chan Season 2	Unknown	キラッとプリ☆チャン シーズン2
38814	Nobunaga-sensei no Osanazuma	Nobunaga teacher's young bride	ノブナガ先生の幼な妻
38830	Hachi-nan tte, Sore wa Nai deshou!	The 8th son? Are you kidding me?	八男って、それはないでしょう！
38835	Umayon	Unknown	うまよん
38843	Shironeko Project: Zero Chronicle	Shironeko Project ZERO CHRONICLE	白猫プロジェクトZERO CHRONICLE
38851	Virtual-san wa Miteiru	Virtual-san Looking	バーチャルさんはみている
38853	Ex-Arm	Unknown	EX-ARMエクスアーム
38857	Neko no Nyagh: Nya Misérables	Unknown	猫のニャッホ ～ニャ・ミゼラブル～
38860	Bakumatsu: Crisis	Unknown	BAKUMATSU ~恋愛幕末カレシ 外伝~ クライシス
38881	Jimoto ga Japan	I'm from Japan	ジモトがジャパン
38883	Haikyuu!!: To the Top	Unknown	ハイキュー!! TO THE TOP
38889	Kono Oto Tomare! 2nd Season	Kono Oto Tomare!:Sounds of Life Season 2	この音とまれ！
38909	Infinite Dendrogram	Infinite Dendrogram	<Infinite Dendrogram>-インフィニット・デンドログラム-
38920	Kochouki: Wakaki Nobunaga	Kochoki	胡蝶綺 ～若き信長～
38923	Sinbi Apateu: Ghost Ball Bimil	The Haunted House:The Secret of the Ghost Ball	신비아파트:고스트볼의 비밀
38924	Nekopara	NekoparA	ネコぱら
38940	Cop Craft	Unknown	COP CRAFT [コップクラフト]
38959	Lord El-Melloi II Sei no Jikenbo: Rail Zeppelin Grace Note	Unknown	ロード・エルメロイⅡ世の事件簿 -魔眼蒐集列車 Grace note-
38993	Karakai Jouzu no Takagi-san 2	Unknown	からかい上手の高木さん2
39003	Kyou mo Tsuno ga Aru	Unknown	今日もツノがある
39007	Kawauso Labo	Unknown	カワウソラボ
39012	Capsule Boy 2: Ujuleul Jikyeola	Unknown	캡슐보이2 우주를 지켜라
39017	Kyokou Suiri	In/Spectre	虚構推理
39026	Dumbbell Nan Kilo Moteru?	How heavy are the dumbbells you lift?	ダンベル何キロ持てる？
39029	Mr. Shadow	Unknown	ミスター・シャドウ
39030	Hataage! Kemono Michi	Kemono Michi:Rise Up	旗揚! けものみち
39031	B Rappers Street	Unknown	Bラッパーズ ストリート
39039	Duel Masters!!	Unknown	デュエル・マスターズ! !
39040	Kedama no Gonjirou	Unknown	けだまのゴンじろー
39063	Fairy Gone	Unknown	Fairy gone フェアリーゴーン
39071	Machikado Mazoku	The Demon Girl Next Door	まちカドまぞく
39078	Aikatsu Friends!: Kagayaki no Jewel	Unknown	アイカツフレンズ！~かがやきのジュエル~
39110	Yousei Chii-tan☆	Unknown	妖精ちぃたん☆
39119	Manga Furusato Mukashibanashi	Unknown	まんがふるさと昔話
39121	Hong Mao Lan Tu: Chuang Taikong	Unknown	虹猫蓝兔闯太空
39122	Hong Mao Lan Tu: Kaixin Yike	Unknown	虹猫蓝兔开心一刻
39123	Hong Mao Lan Tu: Konglong Shijie	Unknown	虹猫蓝兔恐龙世界
39124	Hong Mao Lan Tu: Le Fantian	Unknown	虹猫蓝兔乐翻天
39125	Hong Mao Lan Tu: Maoyan Kan Yuzhou	Unknown	虹猫蓝兔猫眼看宇宙
39126	Hong Mao Lan Tu: Ni Wen Wo Da	Unknown	虹猫蓝兔你问我答
39127	Hong Mao Lan Tu: Shuimo Donghua	Unknown	虹猫蓝兔水墨动画
39128	Hong Mao Lan Tu: Xiao Youmo	Unknown	虹猫蓝兔小幽默
39129	Hong Mao Lan Tu: Qi Xia Chuan	Unknown	虹猫蓝兔七侠传
39130	Hong Mao Lan Tu: A Muxing	Unknown	虹猫蓝兔阿木星
39131	Hong Mao Lan Tu: Zhang Jian Zou Tianya	Unknown	虹猫蓝兔仗剑走天涯
39133	Hong Mao Lan Tu: Guangming Jian	Unknown	虹猫蓝兔光明剑
39135	Hong Mao Lan Tu: Yongzhe Guilai	Unknown	虹猫蓝兔之勇者归来
39136	Hong Mao Lan Tu: Haidi Lixian Ji	Unknown	虹猫蓝兔海底历险记
39137	Hong Mao Lan Tu: Meng Guo Li Xian Ji	Unknown	虹猫蓝兔梦之国历险记
39138	Hong Mao Lan Tu: Ao You Guo Lixian Ji	Unknown	虹猫蓝兔奥悠国历险记
39139	Hong Mao Lan Tu: Kuaile Shizi	Unknown	虹猫蓝兔快乐识字
39140	Hong Mao Lan Tu: Qi Xia Waizhuan	Unknown	虹猫蓝兔七侠 外传
39183	Super Shiro	Unknown	SUPER SHIRO (スーパーシロ)
39184	A3! Season Spring & Summer	A3! Season Spring & Summer	A3! SEASON SPRING & SUMMER
39194	Shin Chuuka Ichiban!	Unknown	真・中華一番!
39195	Beastars	Unknown	BEASTARS
39196	Mairimashita! Iruma-kun	Welcome to Demon School! Iruma-kun	魔入りました！入間くん
39198	Kanata no Astra	Astra Lost in Space	彼方のアストラ
39199	Katsute Kami Datta Kemono-tachi e	To the Abandoned Sacred Beasts	かつて神だった獣たちへ
39221	Bem	Unknown	BEM
39244	Cardfight!! Vanguard: Zoku Koukousei-hen	Unknown	CARDFIGHT!! Vanguard 続・高校生編
39247	Kobayashi-san Chi no Maid Dragon S	Unknown	小林さんちのメイドラゴンS
39277	Youkai Watch!	Unknown	妖怪ウォッチ!
39282	Beyblade Burst Gachi	Unknown	ベイブレードバーストGT (ガチ)
39292	Princess Connect! Re:Dive	Unknown	プリンセスコネクト！Re:Dive
39324	Uchi no Ko no Tame naraba, Ore wa Moshikashitara Maou mo Taoseru kamo Shirenai.	If it's for My Daughter, I'd Even Defeat a Demon Lord	うちの娘の為ならば、俺はもしかしたら魔王も倒せるかもしれない。
39326	Kawaikereba Hentai demo Suki ni Natte Kuremasu ka?	Hensuki:Are you willing to fall in love with a pervert, as long as she's a cutie?	可愛ければ変態でも好きになってくれますか？
39337	Araiya-san!: Ore to Aitsu ga Onnayu de!?	Unknown	洗い屋さん! ~俺とアイツが女湯で!?~
39355	Radiant 2nd Season	RADIANT Season 2	ラディアン 第2シリーズ
39356	Neko Neko Nihonshi 4th Season	Meow Meow Japanese History	ねこねこ日本史 第4期
39388	Koisuru Asteroid	Asteroid in Love	恋する小惑星〈アストロイド〉
39417	Granbelm	Unknown	グランベルム
39450	Zen-chan Two-chan	Unknown	ゼンちゃんツーちゃん
39456	Sounan Desu ka?	Are You Lost?	ソウナンですか?
39457	Shounen Ashibe: Go! Go! Goma-chan 4	Unknown	少年アシベ GO! GO! ゴマちゃん 4
39463	Gleipnir	Gleipnir	グレイプニル
39468	Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan wo Erandeiraremasen	Ascendance of a Bookworm	本好きの下剋上 ～司書になるためには手段を選んでいられません～
39469	Tsugu Tsugumomo	Unknown	続・つぐもも
39473	Möbius Dust	Unknown	メビウス・ダスト
39474	Oni (TV)	Unknown	鬼
39491	Psycho-Pass 3	Unknown	PSYCHO-PASS サイコパス 3
39506	Phantasy Star Online 2: Episode Oracle	Phantasy Star Online 2:Episode Oracle	ファンタシースターオンライン2 エピソード・オラクル
39523	Choujin Koukousei-tachi wa Isekai demo Yoyuu de Ikinuku you desu!	CHOYOYU!:High School Prodigies Have It Easy Even in Another World!	超人高校生たちは異世界でも余裕で生き抜くようです！
39527	Try Knights	Unknown	トライナイツ
39528	Washimo 7th Season	Unknown	わしも-wasimo-(第7シリーズ)
39533	Given	Unknown	ギヴン
39534	Jibaku Shounen Hanako-kun	Toilet-bound Hanako-kun	地縛少年花子くん
39535	Mushoku Tensei: Isekai Ittara Honki Dasu	Mushoku Tensei:Jobless Reincarnation	無職転生 ～異世界行ったら本気だす～
39539	No Guns Life	No Guns Life	ノー・ガンズ・ライフ
39547	Yahari Ore no Seishun Love Comedy wa Machigatteiru. Kan	My Teen Romantic Comedy SNAFU Climax!	やはり俺の青春ラブコメはまちがっている。完
39551	Tensei shitara Slime Datta Ken 2nd Season	That Time I Got Reincarnated as a Slime Season 2	転生したらスライムだった件
39567	Keishichou Tokumubu Tokushu Kyouakuhan Taisakushitsu Dainanaka: Tokunana	Special 7:Special Crime Investigation Unit	警視庁 特務部 特殊凶悪犯対策室 第七課 -トクナナ-
39570	High Score Girl II	Unknown	ハイスコアガール II
39572	Wangu Xian Qiong III: Eren Gu Pian	Unknown	万古仙穹 Ⅲ 恶人谷篇
39575	Somali to Mori no Kamisama	Somali and the Forest Spirit	ソマリと森の神様
39581	TV Yarou Nanaana: Wakuwaku Doukutsu Land	Unknown	テレビ野郎 ナナーナ　わくわく洞窟ランド
39582	Kitsutsuki Tanteidokoro	Woodpecker Detective's Office	啄木鳥探偵處
39583	number24	number24	number24 ナンバー・トゥーフォー
39586	Hataraku Saibou!!	Cells at Work!!	はたらく細胞!!
39587	Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season	Re:ZERO -Starting Life in Another World- Season 2	Re：ゼロから始める異世界生活
39590	Africa no Salaryman (TV)	Africa Salaryman	アフリカのサラリーマン (TV)
39592	Mobile Suit Gundam: The Origin - Advent of the Red Comet	Mobile Suit Gundam:The Origin - Advent of the Red Comet	機動戦士ガンダム THE ORIGIN 前夜 赤い彗星
39597	Sword Art Online: Alicization - War of Underworld	Sword Art Online Alicization War of Underworld	ソードアート・オンライン アリシゼーション War of Underworld
39609	Ochikobore Fruit Tart	Dropout Idol Fruit Tart	おちこぼれフルーツタルト
39617	Yakusoku no Neverland 2nd Season	The Promised Neverland Season 2	約束のネバーランド
39620	Hakata Mentai! Pirikarako-chan	Unknown	博多明太！ぴりからこちゃん
39622	Bakugan: Battle Planet	Bakugan:Battle Planet	爆丸バトルプラネット
39628	Kaijuu Step Wandabada	Unknown	かいじゅうステップ ワンダバダ
39634	Boy General	Boy General	소년장수
39635	Daifuku-kun@Kin Tele 2nd Season	Unknown	大福くん＠きんてれ 第2期
39664	Gifu no Tatekayoko	Unknown	岐阜のたてかよこ
39668	Watanuki-san Chi no	Unknown	四月一日さん家の
39679	Ju Bing Chang Cheng Zhuan	The Great Warrior Wall	巨兵长城传
39681	D4DJ: First Mix	D4DJ First Mix	D4DJ First Mix
39685	Mabeob Chunjamun	Magic Han War	마법천자문
39686	Mabeob Chunjamun Season 2	Magic Han War Season 2	마법천자문 시즌2
39691	Robot Trains	Unknown	Unknown
39699	King of Prism: Shiny Seven Stars	Unknown	KING OF PRISM -Shiny Seven Stars-
39701	Nanatsu no Taizai: Kamigami no Gekirin	The Seven Deadly Sins:Wrath of the Gods	七つの大罪 神々の逆鱗
39710	Yesterday wo Utatte	Sing "Yesterday" for Me	イエスタデイをうたって
39725	I★Chu: Halfway Through the Idol	Unknown	アイ★チュウ HALFWAY THROUGH THE IDOL
39730	Houkago Teibou Nisshi	Diary of Our Days at the Breakwater	放課後ていぼう日誌
39783	5-toubun no Hanayome ∬	The Quintessential Quintuplets 2	五等分の花嫁∬
39790	Adachi to Shimamura	Adachi and Shimamura	安達としまむら
39792	Eizouken ni wa Te wo Dasu na!	Keep Your Hands Off Eizouken!	映像研には手を出すな!
39798	Zhu Zhu Xia: Konglong Riji	GG Bond Season 15:Dinosaur Diary	猪猪侠 恐龙日记
39799	Val x Love	Unknown	戦×恋（ヴァルラヴ）
39808	Non Non Biyori Nonstop	Non Non Biyori Nonstop	のんのんびより のんすとっぷ
39811	Fairy Gone 2nd Season	Fairy gone Season 1 Part 2	Fairy gone フェアリーゴーン 第2期
39820	Chuldong! Super Wings 3	Super Wings 3	출동! 슈퍼윙스3
39836	Yami Shibai 7	Yamishibai:Japanese Ghost Stories 7	闇芝居 7期
39893	Muteking the Dancing Hero	Unknown	Unknown
39905	Collar x Malice	Unknown	カラー×マリス
39918	Shining Star	Shining Star	샤이닝스타
39936	Nezha Chuan Qi	The Legend of Nezha	哪吒传奇
39940	Shokugeki no Souma: Shin no Sara	Food Wars! The Fourth Plate	食戟のソーマ 神ノ皿
39942	Uchi Tama?! Uchi no Tama Shirimasen ka?	Uchitama?! Have you seen my Tama?	うちタマ?!~うちのタマ知りませんか?~
39948	Muhyo to Rouji no Mahouritsu Soudan Jimusho 2nd Season	Muhyo & Roji's Bureau of Supernatural Investigation 2nd Season	ムヒョとロージーの魔法律相談事務所 2期
39959	Ani ni Tsukeru Kusuri wa Nai! 3	Unknown	兄に付ける薬はない！3
39960	Yatogame-chan Kansatsu Nikki Nisatsume	Yatogame-chan Kansatsu Nikki 2	八十亀ちゃんかんさつにっき 2さつめ
39963	Yubisaki kara no Honki no Netsujou: Osananajimi wa Shouboushi	Unknown	指先から本気の熱情-幼なじみは消防士-
39966	Tamayomi	TAMAYOMI:The Baseball Girls	球詠
39978	Waresho! Warera! Shodobutsu Aigo Iinkai	Unknown	われしょ!～我ら!小動物愛護委員会～
39979	Business Fish	Unknown	ビジネスフィッシュ
39988	Isekai Quartet 2	Isekai Quartet 2	異世界かるてっと2
39990	Vlad Love	Unknown	ぶらどらぶ
40004	Bokutachi wa Benkyou ga Dekinai!	We Never Learn!:Bokuben	ぼくたちは勉強ができない！
40010	Ishuzoku Reviewers	Interspecies Reviewers	異種族レビュアーズ
40028	Shingeki no Kyojin: The Final Season	Attack on Titan Final Season	進撃の巨人 The Final Season
40040	Odoru Mowai-kun	Unknown	おどるモワイくん
40045	Motto! Majime ni Fumajime Kaiketsu Zorori	Unknown	もっと! まじめにふまじめ かいけつゾロリ
40046	Id:Invaded	ID:INVADED	ID:INVADED イド:インヴェイデッド
40056	Deca-Dence	Unknown	デカダンス
40059	Golden Kamuy 3rd Season	Golden Kamuy Season 3	ゴールデンカムイ
40074	Gibiate	Unknown	ジビエート
40075	Koi to Producer: EVOL×LOVE	Mr Love:Queen's Choice	恋とプロデューサー~EVOL×LOVE~
40085	Maesetsu!	Maesetsu! Opening Act	まえせつ!
40087	Penguin no Mondai POW	Unknown	ペンギンの問題POW
40089	Pittanko!! Nekozakana	Unknown	ぴったんこ!! ねこざかな
40090	Sinbi Apateu: Ghost Ball X-ui Tansaeng	Unknown	신비아파트:고스트볼X의 탄생
40091	Xiao Hua Xian 2nd Season	Unknown	小花仙 第二季
40092	Xiao Hua Xian 3rd Season: Shou Hu Tian Shi	Unknown	小花仙 第3季 守护天使
40128	Arte	Arte	アルテ
40129	Rebirth	Unknown	りばあす
40136	Oda Cinnamon Nobunaga	Oda Cinnamon Nobunaga	織田シナモン信長
40137	ARP Backstage Pass	Unknown	ARP Backstage Pass
40145	Yu☆Gi☆Oh!: Sevens	Unknown	遊☆戯☆王SEVENS
40148	22/7	22/7	22/7
40165	Listeners	Listeners	LISTENERS リスナーズ
40166	Zoids Wild Zero	Unknown	ゾイドワイルド ZERO
40167	Cardfight!! Vanguard: Shinemon-hen	Cardfight!! Vanguard:Shinemon Arc	カードファイト!! ヴァンガード 新右衛門編
40174	Zombieland Saga: Revenge	Unknown	ゾンビランドサガ リベンジ
40196	Kandagawa Jet Girls	Unknown	神田川JET GIRLS
40197	Urashimasakatasen no Nichijou	Unknown	浦島坂田船の日常
40221	Kami no Tou	Tower of God	神之塔 -Tower of God-
40228	Bananya: Fushigi na Nakama-tachi	Bananya and the Curious Bunch	ばなにゃ ふしぎななかまたち
40230	Housekishou Richard-shi no Nazo Kantei	The Case Files of Jeweler Richard	宝石商リチャード氏の謎鑑定
40249	Balala Xiaomoxian: Mofa Hai Ying Bao	Unknown	巴啦啦小魔仙之:魔法海萤堡
40254	XL Joushi.	Unknown	XL上司。
40266	Aikatsu on Parade!	Unknown	アイカツオンパレード!
40272	A3! Season Autumn & Winter	A3! Season Autumn & Winter	A3! SEASON AUTUMN & WINTER
40273	Fuwa no go renkan	Fuwa	福娃の五連環
40299	Gokiburi-chan	Unknown	ゴキブリちゃん
40320	Tenka Hyakken: Meiji-kan e Youkoso!	Unknown	天華百剣 ~めいじ館へようこそ!~
40327	Mewkledreamy	Unknown	ミュークルドリーミー
40333	Uzumaki	Uzumaki:Spiral into Horror	うずまき
40351	Pokemon (2019)	Pokemon Journeys:The Series	ポケットモンスター
40356	Tate no Yuusha no Nariagari Season 2	The Rising of the Shield Hero Season 2	盾の勇者の成り上がり Season2
40357	Tate no Yuusha no Nariagari Season 3	The Rising of the Shield Hero	盾の勇者の成り上がり
40358	Gal to Kyouryuu	Gal & Dino	ギャルと恐竜
40359	Ikebukuro West Gate Park	Ikebukuro West Gate Park	池袋ウエストゲートパーク
40367	Go! Go! Atom	Unknown	GO!GO!アトム
40368	Egg Car	Unknown	EGG CAR エッグカー
40392	Runway de Waratte	Smile Down the Runway	ランウェイで笑って
40397	Maoujou de Oyasumi	Sleepy Princess in the Demon Castle	魔王城でおやすみ
40403	Shin Sakura Taisen the Animation	Sakura Wars the Animation	新サクラ大戦 the Animation
40406	Nanami-chan 4th Series	Unknown	ななみちゃん 第4シリーズ
40407	Nanami-chan 5th Series	Unknown	ななみちゃん 第5シリーズ
40408	Nanami-chan 6th Series	Unknown	ななみちゃん 第6シリーズ
40417	Fruits Basket 2nd Season	Unknown	フルーツバスケット 2nd season
40423	Taeko no Nichijou	Unknown	耐え子の日常
40436	Peter Grill to Kenja no Jikan	Peter Grill and the Philosopher's Time	ピーター・グリルと賢者の時間
40454	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka III	Is It Wrong to Try to Pick Up Girls in a Dungeon? III	ダンジョンに出会いを求めるのは間違っているだろうかIII
40473	Chou Futsuu Toshi Kashiwa Densetsu R	Unknown	超普通都市カシワ伝説R
40483	Murenase! Seton Gakuen	Seton Academy:Join the Pack!	群れなせ！シートン学園
40487	Eily wa Ou-sama!	Unknown	エイリは王さま!
40496	Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e	The Misfit of Demon King Academy	魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～
40497	Mahouka Koukou no Rettousei: Raihousha-hen	The Irregular at Magic High School:Visitor Arc	魔法科高校の劣等生 来訪者編
40504	Major 2nd (TV) 2nd Season	Unknown	メジャーセカンド
40506	Shadowverse (TV)	Unknown	シャドウバース
40507	Arifureta Shokugyou de Sekai Saikyou 2nd Season	Unknown	ありふれた職業で世界最強 第2期
40513	Nami yo Kiitekure	Wave, Listen to Me!	波よ聞いてくれ
40526	Dragon, Ie wo Kau.	Unknown	ドラゴン、家を買う。
40529	No Guns Life 2nd Season	No Guns Life	ノー・ガンズ・ライフ
40530	Jaku-Chara Tomozaki-kun	Bottom-Tier Character Tomozaki	弱キャラ友崎くん
40532	Appare-Ranman!	APPARE-RANMAN!	天晴爛漫！
40540	Sword Art Online: Alicization - War of Underworld 2nd Season	Sword Art Online Alicization War of Underworld Part 2	ソードアート・オンライン アリシゼーション War of Underworld
40550	Assault Lily: Bouquet	Unknown	アサルトリリィ Bouquet
40571	Majo no Tabitabi	Wandering Witch:The Journey of Elaina	魔女の旅々
40586	Slime Taoshite 300-nen, Shiranai Uchi ni Level Max ni Nattemashita	Unknown	スライム倒して300年、知らないうちにレベルMAXになってました
40590	Utawarerumono: Futari no Hakuoro	Unknown	うたわれるもの 二人の白皇
40591	Kaguya-sama wa Kokurasetai?: Tensai-tachi no Renai Zunousen	Kaguya-sama:Love is War Season 2	かぐや様は告らせたい？～天才たちの恋愛頭脳戦～
40594	Tatoeba Last Dungeon Mae no Mura no Shounen ga Joban no Machi de Kurasu Youna Monogatari	Suppose a Kid from the Last Dungeon Boonies moved to a starter town?	たとえばラストダンジョン前の村の少年が序盤の街で暮らすような物語
40595	Kimi to Boku no Saigo no Senjou, Aruiwa Sekai ga Hajimaru Seisen	Our Last Crusade or the Rise of a New World	キミと僕の最後の戦場、あるいは世界が始まる聖戦
40608	Muv-Luv Alternative	Unknown	マブラヴ オルタネイティヴ
40610	Healin' Good♡Precure	Healin' Good Pretty Cure	ヒーリングっど♥プリキュア
40620	Uramichi Oniisan	Unknown	うらみちお兄さん
40623	Dokyuu Hentai HxEros	SUPER HXEROS	ド級編隊エグゼロス
40652	Onmyou Hyakki Monogatari	Unknown	陰陽百鬼物語
40670	Usagi no Mofy (TV)	Unknown	うさぎのモフィ
40671	Usagi no Mofy (TV 2014)	Unknown	うさぎのモフィ
40672	Usagi no Mofy (TV 2016)	Unknown	うさぎのモフィ
40677	Argonavis from BanG Dream!	Unknown	アルゴナビス from BanG Dream!
40679	2.43: Seiin Koukou Danshi Volley-bu	2.43:Seiin High School Boys Volleyball Team	2.43 清陰高校男子バレー部
40682	Kingdom 3rd Season	Unknown	キングダム 第3シリーズ
40685	Super Cub	Unknown	スーパーカブ
40708	Monster Musume no Oishasan	Monster Girl Doctor	モンスター娘のお医者さん
40714	Youkai Watch Jam: Youkai Gakuen Y - N to no Souguu	Unknown	妖怪ウォッチJam 妖怪学園Y Nとの遭遇
40716	Kakushigoto (TV)	Kakushigoto	かくしごと
40729	Nomad: Megalo Box 2	Unknown	NOMAD メガロボクス2
40738	Natsunagu!	Unknown	なつなぐ!
40746	Overflow	Unknown	おーばーふろぉ
40748	Jujutsu Kaisen (TV)	Unknown	呪術廻戦
40750	Kaifuku Jutsushi no Yarinaoshi	Redo of Healer	回復術士のやり直し
40752	Bishounen Tanteidan	Unknown	美少年探偵団
40758	Hulaing Babies Petit	Unknown	フライングベイビーズ☆プチ
40763	Show By Rock!! Mashumairesh!!	SHOW BY ROCK!! Mashumairesh!!	SHOW BY ROCK!!ましゅまいれっしゅ!!
40776	Haikyuu!!: To the Top 2nd Season	Unknown	ハイキュー!! TO THE TOP
40783	Shachou, Battle no Jikan Desu!	Shachibato! President, It's Time for Battle!	社長, バトルの時間です!
40786	Skate-Leading☆Stars	Skate-Leading Stars	スケートリーディング☆スターズ
40803	Hypnosis Mic: Division Rap Battle - Rhyme Anima	Unknown	ヒプノシスマイク -Division Rap Battle- Rhyme Anima
40815	Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan wo Erandeiraremasen 2nd Season	Ascendance of a Bookworm Part 2	本好きの下剋上 ～司書になるためには手段を選んでいられません～ 第2期
40832	Mukashi Keibanashi	Unknown	むかしケイバなし
40833	Inu to Neko Docchi mo Katteru to Mainichi Tanoshii	With a Dog AND a Cat, Every Day is Fun	犬と猫どっちも飼ってると毎日たのしい
40834	Ousama Ranking	Unknown	王様ランキング
40839	Kanojo, Okarishimasu	Rent-a-Girlfriend	彼女、お借りします
40842	Idoly Pride	Idoly Pride	IDOLY PRIDE
40850	Breakers	Breakers	ブレーカーズ
40852	Dr. Stone: Stone Wars	Unknown	ドクターストーン STONE WARS
40854	BanG Dream! Garupa☆Pico: Oomori	Unknown	BanG Dream! ガルパ☆ピコ ~大盛り~
40870	SSSS.Dynazenon	Unknown	SSSS.DYNAZENON
40879	Love Live! Nijigasaki Gakuen School Idol Doukoukai	Unknown	ラブライブ! 虹ヶ咲学園スクールアイドル同好会
40880	Kiratto Pri☆chan Season 3	Unknown	キラッとプリ☆チャン シーズン3
40893	Komatta Jiisan	Unknown	困ったじいさん
40902	Shokugeki no Souma: Gou no Sara	Food Wars! The Fifth Plate	食戟のソーマ 豪ノ皿
40904	Bokutachi no Remake	Remake our Life!	ぼくたちのリメイク
40906	Dragon Quest: Dai no Daibouken (2020)	Unknown	ドラゴンクエスト ダイの大冒険
40907	World Trigger 2nd Season	Unknown	ワールドトリガー
40908	Kemono Jihen	Kemono Jihen	怪物事変
40911	Yuukoku no Moriarty	Moriarty the Patriot	憂国のモリアーティ
40930	Azur Lane: Bisoku Zenshin!	Unknown	アズールレーン びそくぜんしんっ!
40934	Bungou to Alchemist: Shinpan no Haguruma	Bungo and Alchemist -Gears of Judgement-	文豪とアルケミスト 〜審判ノ歯車〜
40935	Beastars 2nd Season	Unknown	BEASTARS 2期
40938	Hige wo Soru. Soshite Joshikousei wo Hirou.	Unknown	ひげを剃る。そして女子高生を拾う。
40939	Marumaru Manul	Unknown	まるまるマヌル
40953	Lalalacoco	Unknown	LALALACOCO
40956	Enen no Shouboutai: Ni no Shou	Fire Force Season 2	炎炎ノ消防隊 弐ノ章
40957	Shin Chuuka Ichiban! 2nd Season	Unknown	真・中華一番!
40958	Rail Romanesque	Unknown	レヱル・ロマネスク
40960	Cheat Kusushi no Slow Life: Isekai ni Tsukurou Drugstore	Unknown	チート薬師のスローライフ～異世界に作ろうドラッグストア～
40961	Hortensia Saga (TV)	Hortensia SAGA	オルタンシア・サーガ
40964	Back Arrow	Back Arrow	バック・アロウ
40974	Kuma Kuma Kuma Bear	Unknown	くま クマ 熊 ベアー
40983	Hakushon Daimaou 2020	Unknown	ハクション大魔王2020
40995	Hentatsu (TV)	Unknown	へんたつ
41006	Higurashi no Naku Koro ni Gou	Higurashi:When They Cry – Gou	ひぐらしのなく頃に業
41025	Fumetsu no Anata e	To Your Eternity	不滅のあなたへ
41062	Tomica Kizuna Gattai: Earth Granner	Unknown	トミカ絆合体 アースグランナー
41074	Digimon Adventure:	Unknown	デジモンアドベンチャー:
41101	Poccolies	Poccolies	ぽっこりーず
41103	Koi to Yobu ni wa Kimochi Warui	Unknown	恋と呼ぶには気持ち悪い
41109	Log Horizon: Entaku Houkai	Log Horizon:Destruction of the Round Table	ログ・ホライズン 円卓崩壊
41114	Olga no Russia Gokouza	Unknown	オリガのロシア語講座
41115	Arms Rally	Arms Rally	アームズラリー
41116	Kakugen! Kakuza Tousan	Unknown	格言! かくざ 父さん
41117	Gozonji! Kakuza Tousan	Unknown	ご存知!かくざ父さん
41118	Kakuza Tousan	Unknown	かくざ父さん
41120	Fugou Keiji: Balance:Unlimited	The Millionaire Detective – Balance:UNLIMITED	富豪刑事 Balance:UNLIMITED
41156	Kirakira Shougakusei Celeb-chan	Unknown	キラキラ小学生 セレブちゃん
41159	Leonardo Hakase to Kirin-mura no Nakama-tachi (TV)	Unknown	レオナルド博士とキリン村のなかまたち
41160	Leonardo Hakase to Kirin-mura no Nakama desho	Unknown	レオナルド博士とキリン村のなかまでしょ
41169	Love Live! Superstar!!	Unknown	ラブライブ！スーパースター!!
41226	Uzaki-chan wa Asobitai!	Uzaki-chan Wants to Hang Out!	宇崎ちゃんは遊びたい！
41265	Mars Red	Unknown	MARS RED
41266	Bessatsu Olympia Kyklos	Extra Olympia Kyklos	別冊オリンピア・キュクロス
41276	Onigiri ni Naritai Cogimyun	Unknown	おにぎりになりたい こぎみゅん
41277	Rainbow Ruby	Unknown	Unknown
41283	Cardfight!! Vanguard Gaiden: If	Unknown	カードファイト!! ヴァンガード外伝 イフ-if-
41312	Kami-tachi ni Hirowareta Otoko	By the Grace of the Gods	神達に拾われた男
41332	Ore no Yubi de Midarero.: Heitengo Futarikiri no Salon de...	Unknown	俺の指で乱れろ。～閉店後二人きりのサロンで…～
41345	Noblesse	Unknown	NOBLESSE -ノブレス-
41349	Ooya-san to Boku	Unknown	大家さんと僕
41353	The God of High School	The God of High School	THE GOD OF HIGH SCHOOL ゴッド・オブ・ハイスクール
41364	One Room Third Season	Unknown	One Room サードシーズン
41372	Senyoku no Sigrdrifa	Warlords of Sigrdrifa	戦翼のシグルドリーヴァ
41380	100-man no Inochi no Ue ni Ore wa Tatteiru	I'm standing on 1,000,000 lives.	100万の命の上に俺は立っている
41381	Garugaku.: Sei Girls Square Gakuin	Unknown	ガル学. ~聖ガールズスクエア学院~
41383	Obake Zukan	Unknown	おばけずかん
41384	Norimono Man: Mobile Land no Car-kun	Unknown	のりものまん モービルランドのカークン
41389	Tonikaku Kawaii	TONIKAWA:Over the Moon For You	トニカクカワイイ
41392	Urasekai Picnic	Otherside Picnic	裏世界ピクニック
41401	TV Yarou Nanaana: Kaibutsu Kraken wo Oe!	Unknown	テレビ野郎 ナナーナ 怪物クラーケンを追え!
41402	Mairimashita! Iruma-kun 2nd Season	Unknown	魔入りました！入間くん
41404	Neko Neko Nihonshi 5th Season	Unknown	ねこねこ日本史 第5期
41405	Bakugan: Armored Alliance	Unknown	爆丸アーマードアライアンス
41416	Konglong Baobei Zhi Longshen Yongshi	Unknown	恐龙宝贝之龙神勇士
41426	Watanuki-san Chi to	Unknown	四月一日さん家と
41433	Akudama Drive	Akudama Drive	アクダマドライブ
41440	Anoyo no Subete wa, Obake-gumi!	Unknown	あの世のすべては, おばけぐみっ!
41456	Sentouin, Hakenshimasu!	Combatants Will Be Dispatched!	戦闘員、派遣します！
41457	86	Unknown	86―エイティシックス―
41458	Origami Ninja Koyankinte	Unknown	おりがみにんじゃ コーヤン＠きんてれ
41461	Date A Live IV	Date A Live IV	デート・ア・ライブⅣ
41466	Kyojinzoku no Hanayome	Kyojinzoku no Hanayome	巨人族の花嫁
41470	Micchiri Wanko! Animation	Unknown	みっちりわんこ！あにめ～しょん
41487	Tensei shitara Slime Datta Ken 2nd Season Part 2	Unknown	転生したらスライムだった件
41488	Tensura Nikki: Tensei shitara Slime Datta Ken	Unknown	転スラ日記 転生したらスライムだった件
41491	Nanatsu no Taizai: Fundo no Shinpan	The Seven Deadly Sins:Dragon's Judgement	七つの大罪 憤怒の審判
41494	Feng Shen Bang Chuanqi	Unknown	封神榜传奇
41514	Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu. II	Unknown	痛いのは嫌なので防御力に極振りしたいと思います. II
41520	Show by Rock!! Stars!!	Unknown	SHOW BY ROCK!! STARS!!
41521	WIXOSS Diva(A)Live	Unknown	WIXOSS DIVA(A)LIVE（ウィクロス ディーヴァアライブ）
41522	Washimo 8th Season	Unknown	わしも-wasimo-(第8シリーズ)
41529	Duel Masters King	Unknown	DUEL MASTERS キング
41530	Magia Record: Mahou Shoujo Madoka☆Magica Gaiden (TV) 2nd Season	Unknown	マギアレコード 魔法少女まどか☆マギカ外伝 2nd Season
41556	Maiko-san Chi no Makanai-san	Kiyo in Kyoto:From the Maiko House	舞妓さんちのまかないさん
41558	Asatir: Mirai no Mukashi Banashi	Future Folktales	アサティール 未来の昔ばなし
41567	Isekai Quartet 3	Unknown	異世界かるてっと3
41573	Majutsushi Orphen Hagure Tabi: Kimluck-hen	Sorcerous Stabber Orphen:Battle of Kimluck	魔術士オーフェンはぐれ旅 キムラック編
41574	Guraburu!	Grand Blues!	ぐらぶるっ！
41587	Boku no Hero Academia 5th Season	Unknown	僕のヒーローアカデミア
41595	Tiger & Bunny 2	Unknown	TIGER & BUNNY 2
41619	Munou na Nana	Unknown	無能なナナ
41623	Isekai Maou to Shoukan Shoujo no Dorei Majutsu Ω	How Not to Summon a Demon Lord Ω	異世界魔王と召喚少女の奴隷魔術Ω
41635	Zhu Zhu Xia: Jing Su Xiao Yingxiong	GG Bond Season 16:Racing	猪猪侠 竞速小英雄
41638	Bite-Choicar	Bite-Choicar	바이트 초이카
41667	Monkateu	MONKART	몽카트
41686	Zo Zo Zo Zombie-kun (TV)	Zo Zo Zombie	ゾゾゾ ゾンビーくん
41694	Hataraku Saibou Black (TV)	Cells at Work! CODE BLACK!	はたらく細胞BLACK
41710	Genjitsu Shugi Yuusha no Oukoku Saikenki	Re:Construction the Elfrieden Kingdom Tales of Realistic Brave	現実主義勇者の王国再建記
41762	Tenchi Souzou Design-bu	Heaven's Design Team	天地創造デザイン部
41776	Oshiri Tantei 2nd Season	Unknown	おしりたんてい
41777	Oshiri Tantei 3rd Season	Unknown	おしりたんてい
41778	Oshiri Tantei 4th Season	Unknown	おしりたんてい
41783	Iwa Kakeru!: Sport Climbing Girls	Unknown	いわかける！ -Sport Climbing Girls-
41807	Get Up! Get Live! #Geragera	Unknown	GETUP! GETLIVE! #げらげら
41812	Megami-ryou no Ryoubo-kun.	Unknown	女神寮の寮母くん。
41813	Kaijuu Step Wandabada 2nd Season	Unknown	かいじゅうステップ ワンダバダ
41833	Kyuuketsuki Sugu Shinu	Unknown	吸血鬼すぐ死ぬ
41834	King's Raid: Ishi wo Tsugumono-tachi	Unknown	キングスレイド 意志を継ぐものたち
41899	Ore dake Haireru Kakushi Dungeon	The Hidden Dungeon Only I Can Enter	俺だけ入れる隠しダンジョン
41911	Hanyou no Yashahime: Sengoku Otogizoushi	Yashahime:Princess Half-Demon	半妖の夜叉姫
41930	Kamisama ni Natta Hi	The Day I Became a God	神様になった日
41946	Shuumatsu no Harem	World's End Harem	終末のハーレム
41951	Mukashi Keibanashi 2nd Season	Unknown	むかしケイバなし(第2期)
42033	Jingju Mao	Jing-Ju Cats	京剧猫
42068	Utau Soccer Panda Mifanda	Unknown	歌うサッカーパンダ ミファンダ
42071	Yuuki Yuuna wa Yuusha de Aru Churutto!	Unknown	結城友奈は勇者である ちゅるっと！
42072	Kenja no Deshi wo Nanoru Kenja	She professed herself the pupil of the wise man.	賢者の弟子を名乗る賢者
42090	Taeko no Nichijou 2nd Season	Unknown	耐え子の日常
42144	Jingju Mao Zhi Xinnian de Maoxian	Jing-Ju Cats 2	京剧猫之信念的冒险
42145	Hulaing Babies Aratame: Staying Babies	Unknown	フライングベイビーズ改め ステイングベイビーズ
42146	Jingju Mao Zhi Cheng Feng Polang	Jing-Ju Cats 3	京剧猫之乘风破浪
42179	Lalalacoco II	Unknown	LALALACOCO II
42192	Edens Zero	Edens Zero	EDENS ZERO
42203	Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season Part 2	Unknown	Re：ゼロから始める異世界生活
42205	Shaman King (2021)	Unknown	SHAMAN KING
42249	Tokyo Revengers	Unknown	東京リベンジャーズ
42250	Bungou Stray Dogs Wan!	Unknown	文豪ストレイドッグス わん！
42260	Ninja Collection	Unknown	忍者コレクション
42263	Konglong Baobei Zhi Longshen Yongshi 2	Unknown	恐龙宝贝之龙神勇士2
42264	Konglong Baobei Zhi Longshen Yongshi 3	Unknown	恐龙宝贝之龙神勇士3
42282	Otome Game no Hametsu Flag shika Nai Akuyaku Reijou ni Tensei shiteshimatta... X	Unknown	乙女ゲームの破滅フラグしかない悪役令嬢に転生してしまった…X
42295	Fushigi Dagashiya: Zenitendou	Unknown	ふしぎ駄菓子屋 銭天堂
42307	Subarashiki Kono Sekai The Animation	The World Ends with You The Animation	すばらしきこのせかい The Animation
42321	Battle Athletess Daiundoukai ReSTART!	Unknown	バトルアスリーテス 大運動会ReSTART!
42340	Meikyuu Black Company	Unknown	迷宮ブラックカンパニー
42351	Senpai ga Uzai Kouhai no Hanashi	Unknown	先輩がうざい後輩の話
42361	Ijiranaide, Nagatoro-san	Ijiranaide, Nagatoro San	イジらないで、長瀞さん
42385	The iDOLM@STER Million Live!	Unknown	THE iDOLM@STER MILLION LIVE!
42391	Osomatsu-san 3rd Season	Unknown	おそ松さん 第3期
42395	Shakunetsu Kabaddi	Burning Kabaddi	灼熱カバディ
42414	Eternity: Shinya no Nurekoi Channel ♡	Eternity:Sweet Love Story	エタニティ　～深夜の濡恋ちゃんねる♡～
42429	Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan wo Erandeiraremasen 3rd Season	Unknown	本好きの下剋上 ～司書になるためには手段を選んでいられません～
42468	Zhandou Wang Zhi Jufeng Zhan Hun 5	Unknown	战斗王之飓风战魂5
42482	Seizei Ganbare! Mahou Shoujo Kurumi 3rd Season	Unknown	せいぜいがんばれ！魔法少女くるみ
42506	World Witches Hasshin Shimasu!	Unknown	ワールドウィッチーズ発進しますっ！
42514	Anime Kapibara-san	Anime KAPIBARASAN	アニメ カピバラさん
42516	Cardfight!! Vanguard: overDress	Unknown	カードファイト!! ヴァンガード overDress
42517	Ookami-san wa Taberaretai	Unknown	オオカミさんは食べられたい
42568	Yakunara Mug Cup mo	Let's Make a Mug Too	やくならマグカップも
42571	Dogeza de Tanondemita	Dogeza de tanondemita	土下座で頼んでみた
42587	Yuuki Yuuna wa Yuusha de Aru: Dai Mankai no Shou	Unknown	結城友奈は勇者である 大満開の章
42590	Mashiro no Oto	Unknown	ましろのおと
42625	Heion Sedai no Idaten-tachi	Unknown	平穏世代の韋駄天達
42627	Peach Boy Riverside	Unknown	ピーチボーイリバーサイド
42653	Aikatsu Planet!	Unknown	アイカツプラネット！
42654	Robocar Poli 3	Robocar Poli 3	로보카 폴리
42657	Himitsukessha Taka no Tsume: Golden Spell	Unknown	秘密結社 鷹の爪 ～ゴールデン・スペル～
42660	Robocar Poli 4	Robocar Poli 4	로보카 폴리
42668	Taisou Zamurai	Taiso Samurai	体操ザムライ
42670	Princess Connect! Re:Dive Season 2	Unknown	プリンセスコネクト! Re:Dive Season 2
42714	Otona nya Koi no Shikata ga Wakaranee!	Unknown	大人にゃ恋の仕方がわからねぇ！
42717	Kaeru no Pickles: Kimochi no Iro	Unknown	かえるのピクルス -きもちのいろ-
42740	Ji Jia Shou Shen Zhi Baolie Feiche	Screechers Wild!	机甲兽神之爆裂飞车
42745	Machikado Mazoku 2nd Season	Unknown	まちカドまぞく
42765	Ji Jia Shou Shen	Unknown	机甲兽神
42766	Ji Jia Shou Shen 2nd Season	Unknown	机甲兽神 第2季
42774	Sayonara Watashi no Cramer	Good-bye, Cramer	さよなら私のクラマー
42822	Kai Byoui Ramune	Dr. Ramune -Mysterious Disease Specialist-	怪病医ラムネ
42825	Project Scard: Praeter no Kizu	Scar on the Praeter	PROJECT SCARD プレイタの傷
42826	Seijo no Maryoku wa Bannou Desu	The Saint's Magic Power is Omnipotent	聖女の魔力は万能です
42852	Little Village People	Little Village People	リトルビレッジピープル
42870	Uchuu Nanchara Kotetsu-kun	Space Academy	宇宙なんちゃらこてつくん
42883	Sore dake ga Neck	That is the Bottleneck	それだけがネック
42892	Baraou no Souretsu	Unknown	薔薇王の葬列
42897	Horimiya	Horimiya	ホリミヤ
42923	SK∞	SK8 the Infinity	SK∞ エスケーエイト
42938	Fruits Basket: The Final	Unknown	フルーツバスケット The Final
42941	Uma Musume: Pretty Derby (TV) Season 2	Unknown	ウマ娘 プリティーダービー Season 2
42959	Yatogame-chan Kansatsu Nikki Sansatsume	Unknown	八十亀ちゃんかんさつにっき 3さつめ
42962	Uzaki-chan wa Asobitai! 2nd Season	Unknown	宇崎ちゃんは遊びたい！
42963	Kanojo, Okarishimasu 2nd Season	Unknown	彼女、お借りします
42979	Zhandou Wang Zhi Jufeng Zhan Hun 5: Heti Fanwai Pian	Unknown	战斗王之飓风战魂5合体番外篇
42981	Idolls!	Unknown	アイドールズ!
42998	Awajishima no Shichifukujin	Seven Lucky Gods	あわじしまの七福神
43007	Osananajimi ga Zettai ni Makenai Love Comedy	Unknown	幼なじみが絶対に負けないラブコメ
43229	Godzilla: S.P	Godzilla Singular Point	ゴジラ S.P ＜シンギュラポイント＞
43299	Wonder Egg Priority	Unknown	ワンダーエッグ・プライオリティ
43325	Yuukoku no Moriarty 2nd Season	Unknown	憂国のモリアーティ
43350	Gebäude Bäude	Unknown	ゲボイデ＝ボイデ
43416	Kaoru no Taisetsu na Mono	Unknown	カオルの大切なモノ
43439	Shadows House	Unknown	シャドーハウス
43470	Rikei ga Koi ni Ochita no de Shoumei shitemita. 2nd Season	Unknown	理系が恋に落ちたので証明してみた。
43523	Tsuki ga Michibiku Isekai Douchuu	Tsukimichi -Moonlit Fantasy-	Unknown
43608	Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen 3rd Season	Unknown	かぐや様は告らせたい ～天才たちの恋愛頭脳戦～
43629	Tokyo Babylon 2021	Unknown	東京BABYLON 2021
43684	Semi wa Magic Cube	Unknown	세미와 매직큐브
43691	Kageki Shoujo!!	Kageki Shojo!!	かげきしょうじょ!!
43729	Semi wa Magic Cube 2nd Season	Unknown	세미와 매직큐브 시즌2
43735	Cue!	Unknown	CUE!
43756	Bakuten!!	Unknown	バクテン!!
43763	Cestvs: The Roman Fighter	Unknown	セスタス-The Roman Fighter-
43767	Night Head 2041	Unknown	NIGHT HEAD 2041
43771	Vazzrock The Animation	Unknown	VAZZROCK THE ANIMATION
43778	Motto! Majime ni Fumajime Kaiketsu Zorori 2nd Season	Unknown	もっと! まじめにふまじめ かいけつゾロリ 第2シリーズ
43814	Deatte 5-byou de Battle	Battle in 5 seconds after meeting.	出会って5秒でバトル
43969	Kanojo mo Kanojo	Unknown	カノジョも彼女
44026	Zannen na Ikimono Jiten (2019)	Unknown	ざんねんないきもの事典 (2019)
44037	Shin no Nakama ja Nai to Yuusha no Party wo Oidasareta node, Henkyou de Slow Life suru Koto ni Shima	Unknown	真の仲間じゃないと勇者のパーティーを追い出されたので、辺境でスローライフすることにしました
44040	Abciee Shuugyou Nikki	ABCiee Working Diary	エビシー修業日記
44041	SD Gundam World Heroes	SD GUNDAM WORLD HEROES	SDガンダムワールド ヒーローズ
44044	Jimihen!!: Jimiko wo Kaechau Jun Isei Kouyuu!!	Unknown	じみへんっ!!～地味子を変えちゃう純異性交遊～
44056	Tokyo Gambo	Unknown	東京ガンボ
44081	B-Project 3rd Season	Unknown	B-PROJECT
44191	Tropical-Rouge! Precure	TROPICAL-ROUGE! PRETTY CURE	トロピカル～ジュ！プリキュア
44203	Seirei Gensouki	Spirit Chronicles	精霊幻想記
44204	Kyokou Suiri 2nd Season	Unknown	虚構推理
44208	Yami Shibai 8	Unknown	闇芝居 8期
44235	Pui Pui Molcar	Unknown	PUI PUI モルカー
44274	Puraore! Pride of Orange	Unknown	プラオレ！～PRIDE OF ORANGE～
44275	Selection Project	Unknown	SELECTION PROJECT
44276	Kyuukyoku Shinka shita Full Dive RPG ga Genjitsu yori mo Kusoge Dattara	Unknown	究極進化したフルダイブRPGが現実よりもクソゲーだったら
44387	Sankaku Mado no Sotogawa wa Yoru	Unknown	さんかく窓の外側は夜
44511	Chainsaw Man	Chainsaw Man	チェンソーマン
44516	Koroshi Ai	Unknown	殺し愛
44524	Isekai Meikyuu de Harem wo	Unknown	異世界迷宮でハーレムを
44583	Rail Romanesque 2nd Season	Unknown	レヱル・ロマネスク
44848	Iii Icecrin	Unknown	iiiあいすくりん
44881	100-man no Inochi no Ue ni Ore wa Tatteiru 2nd Season	I'm standing on 1,000,000 lives.	100万の命の上に俺は立っている
44940	World Trigger 3rd Season	Unknown	ワールドトリガー
44942	Shuumatsu no Walküre	Record of Ragnarok	終末のワルキューレ
44961	Platinum End	Unknown	プラチナエンド
45055	Taishou Otome Otogibanashi	Unknown	大正処女御伽話
45207	Okashi na Sabaku no Suna to Manu	Unknown	おかしなさばくのスナとマヌ
45425	Slow Loop	Unknown	ローループ
45486	Kuma Kuma Kuma Bear 2nd Season	Unknown	くま クマ 熊 ベアー 2ndシーズン
45560	Orient	Orient	オリエント
45572	Mahouka Koukou no Yuutousei	The Honor Student at Magic High School	魔法科高校の優等生
45577	IDOLiSH7 3rd Season	Unknown	アイドリッシュセブン
45596	Kindan Joshi	Unknown	禁男女子
45613	Kawaii dake ja Nai Shikimori-san	Unknown	可愛いだけじゃない式守さん
45618	Dinosaur Biyori	Unknown	ダイナ荘びより
45653	Soredemo Ayumu wa Yosetekuru	Unknown	それでも歩は寄せてくる
45665	Fairy Ranmaru: Anata no Kokoro Otasuke Shimasu	Unknown	Fairy蘭丸~あなたの心お助けします~
45782	D4DJ Petit Mix	D4DJ Petit Mix	ぷっちみく♪
45783	Saiyuuki Reload: Zeroin	Unknown	最遊記RELOAD -ZEROIN-
46093	Shiroi Suna no Aquatope	Unknown	白い砂のアクアトープ
46095	Vivy: Fluorite Eye's Song	Unknown	Vivy -Fluorite Eye's Song- (ヴィヴィ -フローライトアイズソング-)
46102	Odd Taxi	Unknown	オッドタクシー
46118	Wave!!: Surfing Yappe!! (TV)	WAVE!! -Let's go surfing!!-	WAVE!!〜サーフィンやっぺ!!〜
46352	Blue Period	Unknown	ブルーピリオド
46381	Shinkansen Henkei Robo Shinkalion Z the Animation	Unknown	新幹線変形ロボ シンカリオンZ THE ANIMATION
46422	Niehime to Kemono no Ou	Unknown	贄姫と獣の王
46471	Tantei wa Mou, Shindeiru.	Unknown	探偵はもう、死んでいる。
46569	Jigokuraku	Unknown	地獄楽
46604	Girls' Frontline	Unknown	ドールズフロントライン
46652	Duel Masters King!	Unknown	DUEL MASTERS キング!
46654	IDOLiSH7 3rd Season Part 2	Unknown	アイドリッシュセブン
46701	Yubisaki kara no Honki no Netsujou 2: Osananajimi wa Shouboushi	Unknown	指先から本気の熱情 2-恋人は消防士-
46985	Shinka no Mi: Shiranai Uchi ni Kachigumi Jinsei	Unknown	進化の実～知らないうちに勝ち組人生～
47158	Tomodachi no Imouto ga Ore ni dake Uzai	Unknown	友達の妹が俺にだけウザい
47159	Tensai Ouji no Akaji Kokka Saisei Jutsu	The Genius Prince's Guide to Raising a Nation Out of Debt	天才王子の赤字国家再生術
47160	Goblin Slayer 2nd Season	Unknown	ゴブリンスレイヤー
47161	Shikkakumon no Saikyou Kenja	Unknown	失格紋の最強賢者
47162	Shokei Shoujo no Virgin Road	Unknown	処刑少女の生きる道〈バージンロード〉
47163	Tensei Kenja no Isekai Life: Dai-2 no Shokugyou wo Ete, Sekai Saikyou ni Narimashita	Unknown	転生賢者の異世界ライフ ～第二の職業を得て、世界最強になりました～
47164	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka IV	Unknown	ダンジョンに出会いを求めるのは間違っているだろうかⅣ
47250	Jouran: The Princess of Snow and Blood	Joran The Princess of Snow and Blood	擾乱 THE PRINCESS OF SNOW AND BLOOD
47257	Shinigami Bocchan to Kuro Maid	The Duke of Death and His Maid	死神坊ちゃんと黒メイド
47391	Seven Knights Revolution: Eiyuu no Keishousha	Unknown	セブンナイツ レボリューション -英雄の継承者-
47591	Kuro Gal ni Natta kara Shinyuu to shitemita.	Unknown	黒ギャルになったから親友としてみた。
47623	Chickip Dancers	Unknown	チキップダンサーズ
47639	Blue Reflection Ray	Unknown	BLUE REFLECTION RAY/澪
47778	Kimetsu no Yaiba: Yuukaku-hen	Unknown	鬼滅の刃 遊郭編
47790	Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru	Unknown	世界最高の暗殺者、異世界貴族に転生する
47917	Bocchi the Rock!	Unknown	ぼっち・ざ・ろっく！
48252	Ore, Tsushima	Unknown	俺、つしま
48316	Kage no Jitsuryokusha ni Naritakute!	Unknown	陰の実力者になりたくて！
48363	RPG Fudousan	Unknown	RPG不動産
48365	Youkai Watch ♪	Unknown	妖怪ウォッチ
48391	Mazica Party	Unknown	マジカパーティ
48406	Re-Main	Unknown	RE-MAIN（リメイン）
48413	Hataraku Maou-sama! 2nd Season	Unknown	はたらく魔王さま！
48414	Sabikui Bisco	Unknown	錆喰いビスコ
48417	Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e	Unknown	魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～
48418	Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e	Unknown	魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～
48441	Eiyuu Densetsu: Sen no Kiseki	Unknown	英雄伝説 閃の軌跡
48442	Shikaru Neko	Unknown	しかるねこ
48466	Kyoukai Senki	Unknown	境界戦機
48470	D_Cide Traumerei	Unknown	D_CIDE TRAUMEREI（ディーサイドトロイメライ）
48471	Tsuki to Laika to Nosferatu	Unknown	月とライカと吸血姫
48483	Mieruko-chan	Unknown	見える子ちゃん
48488	Higurashi no Naku Koro ni Sotsu	Higurashi:When They Cry – SOTSU	ひぐらしのなく頃に卒
48491	Yama no Susume: Next Summit	Unknown	ヤマノススメ Next Summit
48492	Scarlet Nexus	Unknown	SCARLET NEXUS
\.


--
-- PostgreSQL database dump complete
--

