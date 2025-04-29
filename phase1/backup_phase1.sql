--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article (
    title character varying(255) NOT NULL,
    author character varying(100) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    id integer NOT NULL,
    points integer NOT NULL,
    comment_counts integer NOT NULL
);


ALTER TABLE public.article OWNER TO postgres;

--
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_id_seq OWNER TO postgres;

--
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;


--
-- Name: article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
a6e00d281b7c
\.


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article (title, author, created_at, id, points, comment_counts) FROM stdin;
How encryption for Cinema Movies works	perryflynn	2025-04-29 10:52:16.953547	43745281	230	14
Done in by Time	lermontov	2025-04-29 10:52:16.953547	43797505	28	5
Gnirehtet provides reverse tethering for Android	tosh	2025-04-29 10:52:16.953547	43802628	15	0
Fifteen new giant radio galaxies discovered with ASKAP	wglb	2025-04-29 10:52:16.953547	43799557	44	1
A Principled Approach to Querying Data – A Type-Safe Search DSL	kioku	2025-04-29 10:52:16.953547	43784200	93	8
A critical bibliography about the pirate site LibGen	fanf2	2025-04-29 10:52:16.953547	43819019	12	3
Thank you for holding my duck (2021)	jxmorris12	2025-04-29 10:52:16.953547	43803659	88	15
Three things everyone should know about Vision Transformers	reqo	2025-04-29 10:52:16.953547	43784205	71	2
Why did Windows 7 log on slower for months if you had a solid color background?	zdw	2025-04-29 10:52:16.953547	43827214	278	22
Teaching LLMs how to solid model	wgpatrick	2025-04-29 10:52:16.953547	43774990	316	32
Boxie – an always offline audio player for my 3 year old	badlogic	2025-04-29 10:52:16.953547	43814934	256	36
Former Disney employee who hacked Disney World menus sentenced to 3 years	aa_is_op	2025-04-29 10:52:16.953547	43811864	54	7
Giving Software Away for Free	raybb	2025-04-29 10:52:16.953547	43824153	88	22
Large language models, small labor market effects [pdf]	luu	2025-04-29 10:52:16.953547	43791385	144	9
Virginia passes law to enforce maximum vehicle speeds for repeat speeders	jmpfrog	2025-04-29 10:52:16.953547	43812856	279	63
Pope Francis has died	phillipharris	2025-04-29 10:52:16.953547	43749405	914	86
BSSG: A simple static site generator written in Bash	billybuckwheat	2025-04-29 10:52:16.953547	43814942	16	1
I chose CSV uploads over complex UI for my MVP, and I'm proud	mmarian	2025-04-29 10:52:16.953547	43824158	13	0
Silent Bugs Matter: A Study of Compiler-Introduced Security Bugs	todsacerdoti	2025-04-29 10:52:16.953547	43814945	8	1
Show HN: My from-scratch OS kernel that runs DOOM	UnmappedStack	2025-04-29 10:52:16.953547	43778081	317	28
Found a simple tool for database modeling: dbdiagram.io	vseplet	2025-04-29 10:52:16.953547	43808803	237	32
Backblaze responds to claims of "sham accounting", "customer backups at risk"	alphabettsy	2025-04-29 10:52:16.953547	43827236	62	7
The complex origin story of domestic cats	gmays	2025-04-29 10:52:16.953547	43764771	139	10
Missteps Equipment Problems and a Common but Risky Practice Led to a Fatal Crash	keepamovin	2025-04-29 10:52:16.953547	43817000	16	2
Uncovering the mechanics of The Games: Winter Challenge	abra0	2025-04-29 10:52:16.953547	43820076	256	32
LLM-powered tools amplify developer capabilities rather than replacing them	matthewsinclair	2025-04-29 10:52:16.953547	43752492	345	45
The Truth about Atlantis (2019)	gostsamo	2025-04-29 10:52:16.953547	43764783	87	15
Show HN: Remote-Controlled IKEA Deathstar Lamp	sephalon	2025-04-29 10:52:16.953547	43809841	287	13
Backblaze: Mounting Losses, Lawsuits, Sham Accounting, Insider Selling	PaywallBuster	2025-04-29 10:52:16.953547	43802675	265	18
Once Shunned by Japanese Consumers, Korean Rice Now Flies Off the Shelves	bookofjoe	2025-04-29 10:52:16.953547	43827255	7	1
Shortest-possible walking tour to 81,998 bars in South Korea	geeknews	2025-04-29 10:52:16.953547	43778105	431	31
Generating Mazes with Inductive Graphs (2017)	todsacerdoti	2025-04-29 10:52:16.953547	43824193	20	3
Consumers make their voices heard as Microsoft's venture flatlines in popularity	taubek	2025-04-29 10:52:16.953547	43813955	24	9
Unauthorized Experiment on CMV Involving AI-Generated Comments	pavel_lishin	2025-04-29 10:52:16.953547	43811908	74	10
Clinical trial: novel nutritional formula treats gut microbial overgrowth	wglb	2025-04-29 10:52:16.953547	43778120	66	10
Classic Computer Replicas	dbelson	2025-04-29 10:52:16.953547	43765832	82	10
Car Subscription Features Raise Your Risk of Government Surveillance	benkan	2025-04-29 10:52:16.953547	43829323	6	1
Stuffed-Na(a)N: stuff your NaNs	dgroshev	2025-04-29 10:52:16.953547	43803724	153	15
The Gruen Transfer is consuming the internet	Incerto	2025-04-29 10:52:16.953547	43769936	359	27
Show HN: Colanode, open-source and local-first Slack and Notion alternative	hakanshehu	2025-04-29 10:52:16.953547	43780176	144	15
European Critical Dependencies	taubek	2025-04-29 10:52:16.953547	43821138	23	6
Don't force your kids to do math	happycats	2025-04-29 10:52:16.953547	43738195	248	56
What If We Could Rebuild Kafka from Scratch?	mpweiher	2025-04-29 10:52:16.953547	43790420	248	37
Pushing the Limits of LLM Quantization via the Linearity Theorem	felineflock	2025-04-29 10:52:16.953547	43744343	95	3
OpenAlternative – open-source Alternatives to Popular Software	piotrkulpinski	2025-04-29 10:52:16.953547	43787353	47	2
European Power Prices Drop Far Below Zero as Solar Output Surges	JumpCrisscross	2025-04-29 10:52:16.953547	43819098	8	5
Show HN: Morphik – Open-source RAG that understands PDF images, runs locally	Adityav369	2025-04-29 10:52:16.953547	43763814	199	14
The Friendship Recession: The lost art of connecting	47thpresident	2025-04-29 10:52:16.953547	43802727	519	54
In Memoriam: SF and Fine Artist David Schleinkofer	omnibrain	2025-04-29 10:52:16.953547	43816038	13	1
Gemma 3 QAT Models: Bringing AI to Consumer GPUs	emrah	2025-04-29 10:52:16.953547	43743337	601	41
RSS doesn't necessarily means firehose	surprisetalk	2025-04-29 10:52:16.953547	43822183	10	3
Spain is about to face the challenge of a "black start"	rbanffy	2025-04-29 10:52:16.953547	43829356	87	12
Avoiding skill atrophy in the age of AI	NotInOurNames	2025-04-29 10:52:16.953547	43791474	369	60
Slinky-Coil Dipole (2021)	rolph	2025-04-29 10:52:16.953547	43806838	46	8
Writing "/etc/hosts" breaks the Substack editor	scalewithlee	2025-04-29 10:52:16.953547	43793526	633	63
Show HN: RSS Lookup – Find RSS Feeds for Any URL (Free, Open Source)	mratmeyer	2025-04-29 10:52:16.953547	43797622	16	3
AI Coding assistants provide little value because a programmer's job is to think	d0liver	2025-04-29 10:52:16.953547	43815033	99	54
Luculent: Manually hinted monospace font, crisp at tiny sizes (2015)	homebrewer	2025-04-29 10:52:16.953547	43814011	21	1
Chongqing, the Largest City – In Pictures	tosh	2025-04-29 10:52:16.953547	43809915	225	23
Show HN: Open Codex – OpenAI Codex CLI with open-source LLMs	codingmoh	2025-04-29 10:52:16.953547	43754620	106	16
Pakistan's solar revolution leaves its middle class behind	alephnerd	2025-04-29 10:52:16.953547	43828353	9	3
CloudEvents: A specification for describing event data in a common way	motorest	2025-04-29 10:52:16.953547	43812994	6	0
Sail-Trim Simulator	stass	2025-04-29 10:52:16.953547	43775283	140	16
Libogc (Wii homebrew library) discovered to contain code stolen from RTEMS	dropbear3	2025-04-29 10:52:16.953547	43812995	186	23
How a Pipe Organ Works (2020)	dskhatri	2025-04-29 10:52:16.953547	43815044	82	9
Mike Wood, Whose LeapFrog Toys Taught a Generation, Dies at 72	nxobject	2025-04-29 10:52:16.953547	43745410	72	4
The effect of deactivating Facebook and Instagram on users' emotional state	imakwana	2025-04-29 10:52:16.953547	43748486	505	58
Show HN: Infat – Declaritive application assocation manager for macOS	philocalyst	2025-04-29 10:52:16.953547	43785350	94	16
High-Level Synthesis Synthesis	stefanpie	2025-04-29 10:52:16.953547	43814026	5	0
Reading RSS content is a skilled activity	d0liver	2025-04-29 10:52:16.953547	43799697	141	29
How the April 28, 2025 power outage in Portugal/Spain impacted Internet traffic	jgrahamc	2025-04-29 10:52:16.953547	43829397	18	1
Canon EOS m10/m100 as a webcam	ggeorgovassilis	2025-04-29 10:52:16.953547	43818136	7	1
Ask HN: Share your AI prompt that stumps every model	owendarko	2025-04-29 10:52:16.953547	43782299	436	175
Python’s new t-strings	tambourine_man	2025-04-29 10:52:16.953547	43748512	617	44
How MOS 6502 Illegal Opcodes Work (2008)	soegaard	2025-04-29 10:52:16.953547	43743399	65	7
The NNCPNET Email Network	pabs3	2025-04-29 10:52:16.953547	43802792	34	3
Relational Graph Transformers	gk1	2025-04-29 10:52:16.953547	43824297	24	1
Incus – Powerful system container and virtual machine manager	kartikarti	2025-04-29 10:52:16.953547	43814057	5	0
Cut: Chattanooga Civic User Testing	willswire	2025-04-29 10:52:16.953547	43815083	39	4
Exiled Uyghur leaders targeted with Windows spyware	coloneltcb	2025-04-29 10:52:16.953547	43823275	39	1
How NASA Is Using Graph Technology and LLMs to Build a People Knowledge Graph	lexmo67	2025-04-29 10:52:16.953547	43813036	106	20
The Vietnam War ended 50 years ago, but the battle with Agent Orange continues	c420	2025-04-29 10:52:16.953547	43817137	62	9
A new form of verification on Bluesky	ink_13	2025-04-29 10:52:16.953547	43753651	383	45
Ping, You've Got Whale: AI detection system alerts ships of whales in their path	Geekette	2025-04-29 10:52:16.953547	43764915	179	17
Ultra-precision formation flying demonstration for space-based interferometry	PaulHoule	2025-04-29 10:52:16.953547	43756723	70	7
Watching o3 model sweat over a Paul Morphy mate-in-2	alexop	2025-04-29 10:52:16.953547	43813046	103	21
One Million Chessboards	chunkles	2025-04-29 10:52:16.953547	43825336	246	16
Naur's "Programming as Theory Building" and LLMs replacing human programmers	bertman	2025-04-29 10:52:16.953547	43818169	91	19
Show HN: Daily Jailbreak – Prompt Engineer's Wordle	ericlmtn	2025-04-29 10:52:16.953547	43814080	120	27
The programmer's climb	gandalfgeek	2025-04-29 10:52:16.953547	43813057	7	0
Show HN: Durable Python Workflows	itayd	2025-04-29 10:52:16.953547	43766979	64	4
Show HN: I built a hardware processor that runs Python	hwpythonner	2025-04-29 10:52:16.953547	43820228	913	69
An Illustrated Guide to Automatic Sparse Differentiation	mariuz	2025-04-29 10:52:16.953547	43828423	4	0
Show HN: Bhvr, a Bun and Hono and Vite and React Starter	stevedsimkins	2025-04-29 10:52:16.953547	43811016	123	26
The BeOS file system, an OS geek retrospective	rbanffy	2025-04-29 10:52:16.953547	43826375	7	1
Show HN: I486SX_soft_FPU – Software FPU Emulator for NetBSD 10 on 486SX	mezantrop	2025-04-29 10:52:16.953547	43815116	113	13
Show HN: Logiquiz – Daily Self-Referential Puzzles	slig	2025-04-29 10:52:16.953547	43772110	38	6
Tarpit ideas: What they are and how to avoid them (2023) [video]	dgs_sgd	2025-04-29 10:52:16.953547	43774169	140	20
Fossil fuels fall below 50% of US electricity for the first month on record	xnx	2025-04-29 10:52:16.953547	43750617	341	21
Did 5G kill the IMSI catcher?	skramace	2025-04-29 10:52:16.953547	43813083	264	9
Unauthorized experiment on r/changemyview involving AI-generated comments	xenophonf	2025-04-29 10:52:16.953547	43806940	236	29
Show HN: BugStalker - a modern Rust debugger	godzie	2025-04-29 10:52:16.953547	43793627	114	10
The License/Contract Dichotomy in Open Licenses: A Comparative Analysis	1970-01-01	2025-04-29 10:52:16.953547	43815136	10	1
World Emulation via Neural Network	treesciencebot	2025-04-29 10:52:16.953547	43798757	250	21
Agent Mesh for Enterprise Agents	pj3677	2025-04-29 10:52:16.953547	43787493	25	5
xPrize in Carbon Removal Goes to Enhanced Rock Weathering	pseudolus	2025-04-29 10:52:16.953547	43793638	37	2
Is It Worth Killing Mozilla to Shave Off Less Than 1% from Google's Market Share	amadeuspagel	2025-04-29 10:52:16.953547	43821289	6	3
Try Switching to Kagi	Ch00k	2025-04-29 10:52:16.953547	43829490	77	29
What's Going on Inside Io, Jupiter's Volcanic Moon?	rbanffy	2025-04-29 10:52:16.953547	43811063	5	0
Tokyo Metropolitan Area Outer Underground Discharge Channel	kaycebasques	2025-04-29 10:52:16.953547	43816183	16	5
Fundamental flaws of SIMD ISAs (2021)	fanf2	2025-04-29 10:52:16.953547	43783416	153	17
Your phone isn't secretly listening to you, but the truth is more disturbing	zeech	2025-04-29 10:52:16.953547	43799802	358	43
Show HN: Rowboat – Open-source IDE for multi-agent systems	segmenta	2025-04-29 10:52:16.953547	43763967	159	15
Ray-Ban Stories Smart Glasses Teardown (2023)	walterbell	2025-04-29 10:52:16.953547	43809028	12	0
Setting up a timekeeping server with a Power Macintosh	geerlingguy	2025-04-29 10:52:16.953547	43828484	3	0
Instant SQL for results as you type in DuckDB UI	ryguyrg	2025-04-29 10:52:16.953547	43782406	374	28
OpenAI releases image generation in the API	themanmaran	2025-04-29 10:52:16.953547	43786506	485	40
"Poetry City": Iowa City, Iowa	samclemens	2025-04-29 10:52:16.953547	43790603	54	7
Careless People	Aldipower	2025-04-29 10:52:16.953547	43780363	1052	43
Things I learned about software and startups by playing video games	mprast	2025-04-29 10:52:16.953547	43796746	28	3
Your.org FTP Server	1vuio0pswjnm7	2025-04-29 10:52:16.953547	43814155	9	3
I wrote a book called “Crap Towns”. It seemed funny at the time	url	2025-04-29 10:52:16.953547	43799820	390	61
Tales of the Yucca Man (2018)	centrosphere	2025-04-29 10:52:16.953547	43797774	14	3
PyGraph: Robust Compiler Support for CUDA Graphs in PyTorch	mfiguiere	2025-04-29 10:52:16.953547	43786514	84	6
Meaning Machine – Visualize how LLMs break down and simulate meaning	jdspiral	2025-04-29 10:52:16.953547	43767058	114	15
Sapphire: Rust based package manager for macOS	adamnemecek	2025-04-29 10:52:16.953547	43765011	442	41
Mark Zuckerberg says social media is over	FinnLobsien	2025-04-29 10:52:16.953547	43780377	530	147
Notation as a Tool of Thought (1979)	susam	2025-04-29 10:52:16.953547	43789593	317	16
We got tired of duct-taping .env, tunnels, and Git configs — so we built a CLI.	artpani	2025-04-29 10:52:16.953547	43804957	7	1
Solar Orbiter's widest high-res view of the Sun	belter	2025-04-29 10:52:16.953547	43808046	50	3
I designed my LED matrix PCB with code	imrishabh18	2025-04-29 10:52:16.953547	43798832	104	15
Finland is painting deer antlers with reflective paint (2014)	andrewfromx	2025-04-29 10:52:16.953547	43747634	101	33
An end to all this prostate trouble?	bondarchuk	2025-04-29 10:52:16.953547	43801906	780	39
CosAE: Learnable Fourier Series for Image Restoration	E-Reverance	2025-04-29 10:52:16.953547	43807029	68	8
Power Is Largely Restored in Spain After Widespread Outage	JumpCrisscross	2025-04-29 10:52:16.953547	43829559	7	0
Read the Obits	EA-3167	2025-04-29 10:52:16.953547	43813175	277	26
Dissecting a British wartime night vision tank periscope [video]	michalpleban	2025-04-29 10:52:16.953547	43766073	44	2
Join the W3C Exploration Interest Group: where standards start	pentagrama	2025-04-29 10:52:16.953547	43761976	59	4
Researchers Ran an Unauthorized Persuasion Experiment on Reddit Users	A4ET8a8uTh0_v2	2025-04-29 10:52:16.953547	43827515	5	0
Observability 2.0 and the Database for It	todsacerdoti	2025-04-29 10:52:16.953547	43789625	128	18
China's Clinical Trial Boom	surprisetalk	2025-04-29 10:52:16.953547	43822396	29	1
After 100 Days, Most Americans Hate What Elon Musk Is Doing to the Government	rbanffy	2025-04-29 10:52:16.953547	43830591	8	1
Show HN: I built an AI that turns GitHub codebases into easy tutorials	zh2408	2025-04-29 10:52:16.953547	43739456	914	63
Open-source interactive C tutorial in the browser	Buttons840	2025-04-29 10:52:16.953547	43809092	251	22
Anti CV	anewhnaccount2	2025-04-29 10:52:16.953547	43823428	6	2
The VTech Socratic Method	zdw	2025-04-29 10:52:16.953547	43779398	83	8
Cheating the Reaper in Go	ingve	2025-04-29 10:52:16.953547	43756871	185	9
NASA's Lucy Spacecraft Completes Asteroid Donaldjohanson Flyby	taubek	2025-04-29 10:52:16.953547	43813195	26	2
Abusing DuckDB-WASM by making SQL draw 3D graphics (Sort Of)	tanelpoder	2025-04-29 10:52:16.953547	43761998	199	18
Why "Learn to code" Failed [PolyMatter] [video]	NoahZuniga	2025-04-29 10:52:16.953547	43815247	16	6
Things Zig comptime won't do	JadedBlueEyes	2025-04-29 10:52:16.953547	43744591	465	17
Launch HN: Infra.new (YC W23) – DevOps copilot with guardrails built in	TankeJosh	2025-04-29 10:52:16.953547	43763026	55	14
Generative AI is not replacing jobs or hurting wages at all, say economists	pseudolus	2025-04-29 10:52:16.953547	43830613	14	6
Microsoft Word 5.5 And 6.0 In-depth DOS Review With Pics (2018)	Tomte	2025-04-29 10:52:16.953547	43811160	31	2
Congress passes Take It Down act despite major flaws	abtinf	2025-04-29 10:52:16.953547	43828568	158	15
Show HN: I made my own TRMNL e-ink device	stavros	2025-04-29 10:52:16.953547	43781465	85	4
Mary MacLane, the Wild Woman from Butte	samclemens	2025-04-29 10:52:16.953547	43790683	46	6
Prolog Adventure Game	shakna	2025-04-29 10:52:16.953547	43757916	166	12
Why do electrons not fall into the nucleus?	thunderbong	2025-04-29 10:52:16.953547	43818330	46	10
How long does it take to create a new habit? (2015)	rzk	2025-04-29 10:52:16.953547	43765084	198	30
Islanders say they cannot escape mysterious humming	mnem	2025-04-29 10:52:16.953547	43824477	6	2
Turing-Drawings	laurenth	2025-04-29 10:52:16.953547	43744609	142	25
The hospital where staff treat fear of death as well as physical pain	NaOH	2025-04-29 10:52:16.953547	43817318	131	14
The Books of Earthsea by Ursula K. Le Guin	Tomte	2025-04-29 10:52:16.953547	43823462	113	17
ICE Deports 3 U.S. Citizen Children Held Incommunicado Prior to the Deportation	mandmandam	2025-04-29 10:52:16.953547	43801959	732	32
Canadians give Liberals 4th mandate as Carney leads party to minority win	pseudolus	2025-04-29 10:52:16.953547	43830632	10	0
I should have loved biology too	nehal96	2025-04-29 10:52:16.953547	43764076	269	40
PgDog is a transaction pooler logical replication manager can shard PostgreSQL	Bender	2025-04-29 10:52:16.953547	43785580	27	0
Show HN: XWiki 17.3.0 has just been released	lorinab	2025-04-29 10:52:16.953547	43829614	5	1
STASI's Zersetzung and Modern Psychological Warfare	walterbell	2025-04-29 10:52:16.953547	43815279	17	6
Inside ArXiv	fprog	2025-04-29 10:52:16.953547	43738478	167	10
The Ghosts of Gaelic	apollinaire	2025-04-29 10:52:16.953547	43769201	61	7
I knew powerful men would burn the world – didn't think they'd be such losers	cruzcampo	2025-04-29 10:52:16.953547	43830643	5	1
The Future of MCPs	tylerg	2025-04-29 10:52:16.953547	43774327	184	18
Compiler Reminders	jfmengels1	2025-04-29 10:52:16.953547	43810169	38	3
Get your Minitel back, the COMPUTEL videotex BBS is back	rbanffy	2025-04-29 10:52:16.953547	43744635	64	5
Vision Transformers Need Registers	felineflock	2025-04-29 10:52:16.953547	43823485	85	4
The hidden cost of AI coding	Sharpie4679	2025-04-29 10:52:16.953547	43775358	338	54
Lucene University	softwaredoug	2025-04-29 10:52:16.953547	43776385	66	1
Are polynomial features the root of all evil? (2024)	Areibman	2025-04-29 10:52:16.953547	43764101	188	18
Show HN: An interactive demo of QR codes' error correction	Xiione	2025-04-29 10:52:16.953547	43792774	19	1
'Bright Circle' and 'Margaret Fuller': The Rise of the Transcendental Woman	samclemens	2025-04-29 10:52:16.953547	43775366	19	1
New material gives copper superalloy-like strength	gnabgib	2025-04-29 10:52:16.953547	43816327	173	16
Show HN: Zotero-MCP – Connect Your Research Library with Your AI Assistant	Steven_Y	2025-04-29 10:52:16.953547	43824520	5	0
Missile fuel from China caused Iran port explosion	andrewfromx	2025-04-29 10:52:16.953547	43828627	8	1
It's Not the Incentives (2018)	godelski	2025-04-29 10:52:16.953547	43824534	47	19
How a 20 year old bug in GTA San Andreas surfaced in Windows 11 24H2	yett	2025-04-29 10:52:16.953547	43772311	1362	36
Welcome to our website for the 1963 BBC MCR21 OB Van	brudgers	2025-04-29 10:52:16.953547	43758999	88	2
The One-Person Framework in Practice	frans	2025-04-29 10:52:16.953547	43826584	228	19
What the heck is AEAD again?	wofo	2025-04-29 10:52:16.953547	43826586	45	8
Amazon Japan ordered to pay 35M. yen for allowing listing of fakes	resonious	2025-04-29 10:52:16.953547	43800988	170	9
You Can Be a Great Designer and Be Completely Unknown	delaugust	2025-04-29 10:52:16.953547	43787676	253	35
Reports of the death of California High-Speed Rail have been greatly exaggerated	surprisetalk	2025-04-29 10:52:16.953547	43824544	189	38
Inference-Aware Fine-Tuning for Best-of-N Sampling in Large Language Models	mfiguiere	2025-04-29 10:52:16.953547	43817377	68	4
Show HN: GS-Calc – A modern spreadsheet with Python integration	jpiech	2025-04-29 10:52:16.953547	43796898	111	9
Running Clojure in WASM with GraalVM	roman01la	2025-04-29 10:52:16.953547	43810211	162	7
WorldGen: Open-Source 3D Scene Generator for Game/VR/XR	ziyangxie	2025-04-29 10:52:16.953547	43824548	11	0
Catastrophic fires and soil degradation: possible link with Neolithic revolution	Hooke	2025-04-29 10:52:16.953547	43801000	12	1
Drug Overdose Deaths in the United States, 2003–2023	djoldman	2025-04-29 10:52:16.953547	43822511	20	4
Atuin Desktop: Runbooks That Run	freetonik	2025-04-29 10:52:16.953547	43766200	570	33
National Archives Releases Unidentified Anomalous Phenomena (UAP) Records	gnabgib	2025-04-29 10:52:16.953547	43816376	63	10
Create Missing RSS Feeds with LLMs	tarasglek	2025-04-29 10:52:16.953547	43813309	4	0
Raspberry Pi Lidar Scanner	Venn1	2025-04-29 10:52:16.953547	43738561	685	18
Berkeley Humanoid Lite – Open-source robot	ratsbane	2025-04-29 10:52:16.953547	43800002	278	14
An Ode to the Thigh (2024)	mefengl	2025-04-29 10:52:16.953547	43827655	19	4
Lossless LLM compression for efficient GPU inference via dynamic-length float	CharlesW	2025-04-29 10:52:16.953547	43796935	410	22
Show HN: Heart Rate Zones Plus – The first iOS app I developed	tobias5	2025-04-29 10:52:16.953547	43824583	77	24
Blog hosted on a Nintendo Wii	edent	2025-04-29 10:52:16.953547	43754953	620	30
Beer on Board in the Age of Sail (2017)	thunderbong	2025-04-29 10:52:16.953547	43769289	58	4
Mike Lindell's lawyers used AI to write brief–judge finds nearly 30 mistakes	abacussh	2025-04-29 10:52:16.953547	43802063	182	15
Show HN: I created snapDOM to capture DOM nodes as images with exceptional speed	tinchox6	2025-04-29 10:52:16.953547	43813330	116	16
Can a single AI model advance any field of science?	LAsteNERD	2025-04-29 10:52:16.953547	43765207	73	16
How a single line of code could brick your iPhone	sashk	2025-04-29 10:52:16.953547	43814360	485	18
Banking passwords stolen from Australians are being traded online by criminals	testrun	2025-04-29 10:52:16.953547	43828697	6	1
Activeloop (YC S18) is hiring a VP of Engineering in Mountain View (on-site)	davidbuniat	2025-04-29 10:52:16.953547	43823580	1	0
How much math is knowable? [video]	diaphanous	2025-04-29 10:52:16.953547	43776477	113	4
Show HN: Zev – Remember (or discover) terminal commands	dtnewman	2025-04-29 10:52:16.953547	43784668	86	17
DOGE worker’s code supports NLRB whistleblower	todsacerdoti	2025-04-29 10:52:16.953547	43776476	1011	43
Apple and Meta fined millions for breaching EU law	Aldipower	2025-04-29 10:52:16.953547	43770337	446	34
Attacking My Landlord's Boiler	ericvolp12	2025-04-29 10:52:16.953547	43759073	388	38
Show HN: I made a web-based, free alternative to Screen Studio	johnwheeler	2025-04-29 10:52:16.953547	43816419	439	48
Reverse geocoding is hard	pavel_lishin	2025-04-29 10:52:16.953547	43812323	270	30
Show HN: Node.js video tutorials where you can edit and run the code	somebee	2025-04-29 10:52:16.953547	43771365	258	44
Knowledge-based society, my ass	molteanu	2025-04-29 10:52:16.953547	43828713	244	25
Evertop: E-ink IBM XT clone with 100+ hours of battery life	harryvederci	2025-04-29 10:52:16.953547	43757037	563	42
Princeton Engineering Anomalies Research	siavosh	2025-04-29 10:52:16.953547	43815406	11	0
Show HN: Autarkie – Instant grammar fuzzing using Rust macros	r9295	2025-04-29 10:52:16.953547	43822575	39	3
Show HN: Discorss – RSS Feeds for Discord	wyxuan	2025-04-29 10:52:16.953547	43827698	6	1
Show HN: We made a blazing-fast, open-source GitHub front end	Arian81	2025-04-29 10:52:16.953547	43784691	39	3
Exploiting Undefined Behavior in C/C++ Programs: The Performance Impact [pdf]	luu	2025-04-29 10:52:16.953547	43766263	96	7
Programming in D: Tutorial and Reference	teleforce	2025-04-29 10:52:16.953547	43798009	144	14
Google contract prevented Motorola from setting Perplexity as default assistant	welpandthen	2025-04-29 10:52:16.953547	43776512	255	17
Migrating away from Rust	rc00	2025-04-29 10:52:16.953547	43824640	580	71
The side hustle from hell	jakey_bakey	2025-04-29 10:52:16.953547	43823620	324	39
Some __nonstring__ Turbulence	jwilk	2025-04-29 10:52:16.953547	43790855	134	8
Show HN: Gemini Document Processor – Generate Th Summaries from PDF/ePub with AI	kidpeterpan	2025-04-29 10:52:16.953547	43803143	11	1
GenZ grads say college degrees a waste of time/money as AI gets into workplaces	samdung	2025-04-29 10:52:16.953547	43828744	21	7
We Found Insurance Fraud in Our Crash Data	Ostatnigrosh	2025-04-29 10:52:16.953547	43821578	73	17
Astronomers confirm the existence of a lone black hole	wglb	2025-04-29 10:52:16.953547	43755017	239	13
Show HN: My self-written hobby OS is finally running on my vintage IBM ThinkPad	joexbayer	2025-04-29 10:52:16.953547	43803148	551	39
What's Going on Inside Io, Jupiter's Volcanic Moon?	rbanffy	2025-04-29 10:52:16.953547	43824651	4	0
TikZJax: Embedding LaTeX Drawings in HTML	steventhedev	2025-04-29 10:52:16.953547	43746831	137	8
Pkg.pl: An experimental package manager for Scryer Prolog	triska	2025-04-29 10:52:16.953547	43815440	12	0
One quantum transition makes light at 21 cm	Brajeshwar	2025-04-29 10:52:16.953547	43784721	257	15
Reversing the fossilization of computer science conferences	tosh	2025-04-29 10:52:16.953547	43818518	81	17
David Tong Lectures on Theoretical Physics	alonfnt	2025-04-29 10:52:16.953547	43763223	114	7
Bot farms invade social media to hijack popular sentiment	sampo	2025-04-29 10:52:16.953547	43814422	27	6
Supabase raises $200M Series D at $2B valuation	baristaGeek	2025-04-29 10:52:16.953547	43763225	342	48
Ask HN: Can vibe coding competitions be challenging and fair?	amichail	2025-04-29 10:52:16.953547	43813403	14	5
FontDiffuser: Text to Font	SubiculumCode	2025-04-29 10:52:16.953547	43776539	27	1
Reanimation of the original Logic Theorist, the first AI, in IPL-V [video]	abrax3141	2025-04-29 10:52:16.953547	43822619	30	3
We're building a dystopia just to make people click on ads [video]	ColinWright	2025-04-29 10:52:16.953547	43812379	285	35
Internet in a Box	homebrewer	2025-04-29 10:52:16.953547	43814433	859	68
Show HN: Magnitude – open-source, AI-native test framework for web apps	anerli	2025-04-29 10:52:16.953547	43796003	177	14
The Joy of Linux Theming in the Age of Bootable Containers	dopple	2025-04-29 10:52:16.953547	43743784	192	15
The Icelandic Voting System (2024)	alexharri	2025-04-29 10:52:16.953547	43738675	142	10
DRM-Free OnlyFans Downloads See Widevine Project Nuked from GitHub	hn_acker	2025-04-29 10:52:16.953547	43825716	92	10
University of Waterloo withholds coding contest results over suspected AI use	amichail	2025-04-29 10:52:16.953547	43805238	93	7
A Philosopher Released a Book About Digital Manipulation. The Author Ended Up AI	MaysonL	2025-04-29 10:52:16.953547	43828795	5	0
UIT – performant, modular, low-memory file processing at scale, in the Cloud	janwilmake	2025-04-29 10:52:16.953547	43793986	30	3
Show HN: Web-eval-agent – Let the coding agent debug itself	neversettles	2025-04-29 10:52:16.953547	43822659	69	6
The new 4o personality is unusable for therapy	nedsma	2025-04-29 10:52:16.953547	43810370	42	7
What Went into Training DeepSeek-R1? – Epoch AI	mefengl	2025-04-29 10:52:16.953547	43814469	12	1
Shardines: SQLite3 Database-per-Tenant with ActiveRecord	julik	2025-04-29 10:52:16.953547	43811400	248	19
BART's Anime Mascots	archagon	2025-04-29 10:52:16.953547	43806281	148	21
Find the Odd Disk	layer8	2025-04-29 10:52:16.953547	43745868	192	64
MinC Is Not Cygwin	thingfish	2025-04-29 10:52:16.953547	43770445	284	31
Geocoding APIs compared: Pricing, free tiers and terms of use	luismedel	2025-04-29 10:52:16.953547	43770446	142	38
DMCA Notices Can Silence Critics but Complaints by the Public Put All at Risk	hn_acker	2025-04-29 10:52:16.953547	43813455	59	1
Reverse engineering the obfuscated TikTok VM	xfeeefeee	2025-04-29 10:52:16.953547	43747921	411	19
IBM Unveils $150B Investment to Accelerate Technology Opportunity	donutloop	2025-04-29 10:52:16.953547	43828817	4	2
Computer Architects Can't Find the Average	dgsq	2025-04-29 10:52:16.953547	43815510	86	14
Tiny Emulators	rcarmo	2025-04-29 10:52:16.953547	43815511	154	9
Automated Antenna Design with Evolutionary Algorithms [pdf] (2006)	austinallegro	2025-04-29 10:52:16.953547	43772503	73	9
Mobygratis – Free Moby music to empower your creative projects	thm	2025-04-29 10:52:16.953547	43800151	245	18
Tilt: dev environment as code	saikatsg	2025-04-29 10:52:16.953547	43806296	133	18
Cloth	memalign	2025-04-29 10:52:16.953547	43801179	510	17
Show HN: I build a Fantasy NHL app in 3 days with Claude AI	recvonline	2025-04-29 10:52:16.953547	43805275	15	3
Mathematicians just solved a 125-year-old problem, uniting 3 theories in physics	mikhael	2025-04-29 10:52:16.953547	43800153	110	6
Surprises in Logic (2016)	jxmorris12	2025-04-29 10:52:16.953547	43763291	91	7
Business co-founders in tech startups are less valuable than they think	frenchmajesty	2025-04-29 10:52:16.953547	43814497	323	54
The Missing CSS Stylesheet	thefox	2025-04-29 10:52:16.953547	43818593	11	2
Ask HN: What are you working on? (April 2025)	david927	2025-04-29 10:52:16.953547	43815523	318	552
Starbucks opens its first 3D-printed store. Is it cheaper than the real thing?	ksec	2025-04-29 10:52:16.953547	43813476	16	0
Native visionOS platform support	whalee	2025-04-29 10:52:16.953547	43768421	374	23
Sustain your creative drive in the face of technological change	adityaathalye	2025-04-29 10:52:16.953547	43759204	148	4
Show HN: A Common Lisp implementation in development, supports ASDF	andreamonaco	2025-04-29 10:52:16.953547	43811432	90	10
Watching o3 guess a photo's location is surreal, dystopian and entertaining	simonw	2025-04-29 10:52:16.953547	43803243	959	77
The coming knowledge-work supply-chain crisis	Stwerner	2025-04-29 10:52:16.953547	43812459	250	25
Qwen3 0.6B now on HuggingFace (quantized)	cuuupid	2025-04-29 10:52:16.953547	43824749	16	1
I Use Zip Bombs to Protect My Server	foxfired	2025-04-29 10:52:16.953547	43826798	42	5
Intel Removed All CPU information pages before 2nd generation processors	tart-lemonade	2025-04-29 10:52:16.953547	43817585	74	3
Why Does My eBPF Program Work on One Kernel but Fail on Another?	musha68k	2025-04-29 10:52:16.953547	43769461	107	6
PhD Timeline	hexmiles	2025-04-29 10:52:16.953547	43818614	335	18
Show HN: I used OpenAI's new image API for a personalized coloring book service	darajava	2025-04-29 10:52:16.953547	43791992	314	47
Launch HN: Cua (YC X25) – Open-Source Docker Container for Computer-Use Agents	frabonacci	2025-04-29 10:52:16.953547	43773563	171	27
Drinking champagne could reduce risk of sudden cardiac arrest, study suggests	nickcotter	2025-04-29 10:52:16.953547	43828860	18	8
Co-designing a sparse music codec with ChatGPT o3	avaku	2025-04-29 10:52:16.953547	43808381	47	4
Subnanosecond Flash Memory	thund	2025-04-29 10:52:16.953547	43740803	57	5
The suburban office park that launched Silicon Valley	rmason	2025-04-29 10:52:16.953547	43815558	122	13
The many ways tarrifs will hit electronics	elashri	2025-04-29 10:52:16.953547	43760262	123	10
Pixel is a unit of length and area	anitil	2025-04-29 10:52:16.953547	43769478	145	37
Show HN: Dia, an open-weights TTS model for generating realistic dialogue	toebee	2025-04-29 10:52:16.953547	43754124	648	65
Echo – Open Hardware Music Player	todsacerdoti	2025-04-29 10:52:16.953547	43777677	98	8
Ask HN: Is there a list of projects that will *not* adopt AI?	90s_dev	2025-04-29 10:52:16.953547	43828879	10	5
Differential Coverage for Debugging	todsacerdoti	2025-04-29 10:52:16.953547	43795090	70	4
The first giant 15 MW turbine is up at Germany's largest offshore wind farm	gnabgib	2025-04-29 10:52:16.953547	43828884	10	2
Show HN: Logchef – Schema-agnostic log viewer for ClickHouse	mr-karan	2025-04-29 10:52:16.953547	43812500	39	2
Gas: Get Action Status A GitHub Actions checker script	twosdai	2025-04-29 10:52:16.953547	43800220	11	2
Colossal Cave Adventure (1976)	shakna	2025-04-29 10:52:16.953547	43800222	66	17
Ask HN: Memory-safe low level languages?	hyperbrainer	2025-04-29 10:52:16.953547	43811487	47	33
How to Write a Fast Matrix Multiplication from Scratch with Tensor Cores (2024)	skidrow	2025-04-29 10:52:16.953547	43736739	147	11
Pipelining might be my favorite programming language feature	Mond_	2025-04-29 10:52:16.953547	43751076	371	72
Beating the Crowd	alpark3	2025-04-29 10:52:16.953547	43815590	46	7
Ask HN: Is there hope for Microsoft 365 support?	joaopbnogueira	2025-04-29 10:52:16.953547	43829927	30	7
AI helps unravel a cause of Alzheimer’s and identify a therapeutic candidate	pedalpete	2025-04-29 10:52:16.953547	43815591	317	23
Reimagining Democracy	cratermoon	2025-04-29 10:52:16.953547	43808427	36	6
Researchers experimented on Reddit users with AI-generated comments	devrandoom	2025-04-29 10:52:16.953547	43829932	9	2
Bare metal printf – C standard library without OS	todsacerdoti	2025-04-29 10:52:16.953547	43807404	226	15
HTTP Feeds: a minimal specification for polling events over HTTP	sea-gold	2025-04-29 10:52:16.953547	43805358	71	8
Path is a utility for working with paths	spyrja	2025-04-29 10:52:16.953547	43808428	60	5
All the job candidates are fake	asyncscrum	2025-04-29 10:52:16.953547	43811504	7	1
Creating your own federated microblog	dahlia	2025-04-29 10:52:16.953547	43780785	186	8
Oracle engineers caused five days software outage at U.S. hospitals	jnord	2025-04-29 10:52:16.953547	43828915	85	9
Daily driving a Linux phone, but why?	ingve	2025-04-29 10:52:16.953547	43779766	147	31
The Seven-Year Rule	thecosas	2025-04-29 10:52:16.953547	43805369	92	21
Mistaking Mary Magdalene	benbreen	2025-04-29 10:52:16.953547	43748025	42	6
Presentation Slides with Markdown	sadeshmukh	2025-04-29 10:52:16.953547	43816634	254	44
Icônes	tambourine_man	2025-04-29 10:52:16.953547	43808443	296	21
USB 2.0 is 25 years old today – the interface standard that changed the world	thunderbong	2025-04-29 10:52:16.953547	43813566	39	3
Tumor-derived erythropoietin acts as immunosuppressive switch in cancer immunity	bookofjoe	2025-04-29 10:52:16.953547	43794110	145	5
Verus: Verified Rust for low-level systems code	mmcloughlin	2025-04-29 10:52:16.953547	43745987	158	7
CubeCL: GPU Kernels in Rust for CUDA, ROCm, and WGPU	ashvardanian	2025-04-29 10:52:16.953547	43777731	210	10
Sigbovik Conference Proceedings 2025 [pdf]	aleffert	2025-04-29 10:52:16.953547	43808454	172	11
Visual Transistor-level Simulation of the 6502 CPU	tanelpoder	2025-04-29 10:52:16.953547	43816651	20	3
CSS Zen Garden	onat1	2025-04-29 10:52:16.953547	43809484	306	28
Unpacking Packed Executables	ingve	2025-04-29 10:52:16.953547	43814604	20	0
My $6k Advance as a Self-Published Technical Author	mtlynch	2025-04-29 10:52:16.953547	43803343	43	3
On loyalty to your employer (2018)	Peroni	2025-04-29 10:52:16.953547	43780815	423	81
Show HN: Faasta – A self-hosted Serverless platform for WASM-wasi-HTTP in Rust	alexboehm	2025-04-29 10:52:16.953547	43789010	94	8
π0.5: A VLA with open-world generalization	lachyg	2025-04-29 10:52:16.953547	43764439	176	11
Librarians are dangerous	mooreds	2025-04-29 10:52:16.953547	43736791	697	66
Curry: A functional logic programming language	hyperbrainer	2025-04-29 10:52:16.953547	43797212	170	8
The group chats that changed America	necubi	2025-04-29 10:52:16.953547	43816916	138	17
Here's how to get ChatGPT to stop being an overly flattering yes man	miles	2025-04-29 10:52:16.953547	43815653	102	18
Show HN: Rad Type - Can we make gamepad typing fast?	tyleo	2025-04-29 10:52:16.953547	43827945	34	18
Show HN: I open-sourced my AI toy company that runs on ESP32 and OpenAI realtime	akadeb	2025-04-29 10:52:16.953547	43762409	176	22
Is outbound going to die?	whoami_nr	2025-04-29 10:52:16.953547	43823851	112	22
Qwen3: Think deeper, act faster	synthwave	2025-04-29 10:52:16.953547	43825900	664	53
A Computational Proof of the Highest-Scoring Boggle Board	danvk	2025-04-29 10:52:16.953547	43774702	78	7
Launch HN: Magic Patterns (YC W23) – AI Design and Prototyping for Product Teams	alexdanilowicz	2025-04-29 10:52:16.953547	43752176	184	36
Collatz's Ant	Fibra	2025-04-29 10:52:16.953547	43770615	101	6
RefinedRust: High-Assurance Verification of Rust Programs [video]	matt_d	2025-04-29 10:52:16.953547	43825913	6	0
JPMC: An open letter to third-party suppliers	kossae	2025-04-29 10:52:16.953547	43815673	32	1
To 'Reclaim Future-Making', Amazon Workers Published Collection of SciFi Stories	m463	2025-04-29 10:52:16.953547	43816697	88	6
How I blog with Obsidian, Hugo, GitHub, and Cloudflare	ingav	2025-04-29 10:52:16.953547	43771645	334	60
Why Momentum Works (2017)	vector_spaces	2025-04-29 10:52:16.953547	43817726	85	5
Ask HN: How do you get into systems programming	otherayden	2025-04-29 10:52:16.953547	43817728	12	3
I wrote to the address in the GPLv2 license notice (2022)	ekiauhce	2025-04-29 10:52:16.953547	43781888	789	39
U.S. autism data project sparks uproar over ethics, privacy and intent	perihelions	2025-04-29 10:52:16.953547	43810561	244	18
Tabular Programming: A New Paradigm for Expressive Computing	dgellow	2025-04-29 10:52:16.953547	43751168	119	15
Wikipedia’s nonprofit status questioned by D.C. U.S. attorney	coloneltcb	2025-04-29 10:52:16.953547	43799302	912	74
Graphics livecoding in Common Lisp	adityaathalye	2025-04-29 10:52:16.953547	43774726	212	11
Show HN: Formalizing Principia Mathematica using Lean	ndrwnaguib	2025-04-29 10:52:16.953547	43797256	187	10
ZFS: Apple's new filesystem that wasn't (2016)	jitl	2025-04-29 10:52:16.953547	43810566	199	17
Duolingo will replace contract workers with AI	donohoe	2025-04-29 10:52:16.953547	43827978	63	8
ACM's flagship magazine seeks submissions by/for practitioners	underscoreF	2025-04-29 10:52:16.953547	43799306	55	3
Assignment 5: Cars and Key Fobs (2021)	Pikamander2	2025-04-29 10:52:16.953547	43780876	233	23
Key Takeaways from CATL's Naxtra Sodium-Ion Battery Launch	f1shy	2025-04-29 10:52:16.953547	43791115	20	1
Minecraft: ‘We've spent five years rebuilding London’	n1b0m	2025-04-29 10:52:16.953547	43819786	3	0
Widespread power outage in Spain and Portugal	lleims	2025-04-29 10:52:16.953547	43819791	1416	121
Why translating Chinese food names into English is 'an impossible task'	asplake	2025-04-29 10:52:16.953547	43829004	5	1
Show HN: AgenticSeek – Self-hosted Manus alternative	Fosowl	2025-04-29 10:52:16.953547	43805457	30	3
A single line of code cost $8000	lordfuckleroy	2025-04-29 10:52:16.953547	43829006	71	32
Handheld detector for all types of ionizing radiation improves radiation safety	PaulHoule	2025-04-29 10:52:16.953547	43745038	58	6
CNCF tells main NATS contributor Synadia that it's free to fork off	udev4096	2025-04-29 10:52:16.953547	43829008	12	4
Visiting Us	tobr	2025-04-29 10:52:16.953547	43756309	139	35
Signal Carnival	adunk	2025-04-29 10:52:16.953547	43745040	140	9
Scientists Develop Artificial Leaf, Uses Sunlight to Produce Valuable Chemicals	gnabgib	2025-04-29 10:52:16.953547	43788053	290	17
A M.2 HDMI capture card	Venn1	2025-04-29 10:52:16.953547	43755286	175	13
First Successful Lightning Triggering and Guiding Using a Drone	gnabgib	2025-04-29 10:52:16.953547	43775766	199	21
Show HN: Index – New Open Source browser agent	skull8888888	2025-04-29 10:52:16.953547	43773720	97	14
Finding Paths of Least Action with Gradient Descent	E-Reverance	2025-04-29 10:52:16.953547	43801371	26	2
Bill Gates's Personal Easter Eggs in 8 Bit BASIC (2008)	michalpleban	2025-04-29 10:52:16.953547	43806491	129	11
Suicide Reverberates Among Young Doctors	ViktorRay	2025-04-29 10:52:16.953547	43814683	40	6
101 BASIC Computer Games	sohkamyung	2025-04-29 10:52:16.953547	43757341	195	31
Why Pale Blue Dot generates feelings of cosmic insignificance	rbanffy	2025-04-29 10:52:16.953547	43822880	44	19
FTC takes action against Uber for deceptive billing and cancellation practices	pinewurst	2025-04-29 10:52:16.953547	43754274	426	38
Distinct adipose progenitor cells emerging with age drive active adipogenesis	bookofjoe	2025-04-29 10:52:16.953547	43808546	3	0
Requirements change until they don't	azhenley	2025-04-29 10:52:16.953547	43825958	55	2
TmuxAI: AI-Powered, Non-Intrusive Terminal Assistant	iaresee	2025-04-29 10:52:16.953547	43812646	192	27
Fun with IP Address Parsing	marbu	2025-04-29 10:52:16.953547	43798311	32	7
LibreLingo – FOSS Alternative to Duolingo	hyperific	2025-04-29 10:52:16.953547	43829035	268	14
Unlocking Ractors: Object_id	ksec	2025-04-29 10:52:16.953547	43812658	75	1
More Everything Forever	c0rtex	2025-04-29 10:52:16.953547	43773746	157	34
I just want to code (2023)	SCUSKU	2025-04-29 10:52:16.953547	43814708	281	39
WIRED’s Kevin Kelly: "The best futurists are great historians"	lycheee	2025-04-29 10:52:16.953547	43828021	6	0
Show HN: I built Lovable for text bots and mini apps	piotmni	2025-04-29 10:52:16.953547	43780918	44	7
Implement Flash Attention Back End in SGLang – Basics and KV Cache	latchkey	2025-04-29 10:52:16.953547	43829046	13	0
OpenAI Adds Shopping to ChatGPT in a Challenge to Google	minimaxir	2025-04-29 10:52:16.953547	43824952	63	10
Libro: a command-line tool to track your books	marcuskaz	2025-04-29 10:52:16.953547	43737916	113	13
My experience participating to a startup weekend competition in Italy	danielpetrica	2025-04-29 10:52:16.953547	43746109	55	9
My takeaways from DjangoCon EU 2025	SCUSKU	2025-04-29 10:52:16.953547	43814716	93	7
A Tour Inside the IBM Z17	rbanffy	2025-04-29 10:52:16.953547	43783997	89	8
A New Kali Linux Archive Signing Key	gnabgib	2025-04-29 10:52:16.953547	43827008	7	1
We Need More Optimistic Science Fiction	craig552uk	2025-04-29 10:52:16.953547	43814724	19	4
AI assisted search-based research works now	simonw	2025-04-29 10:52:16.953547	43752262	280	31
CONL: "Markdown" for your config files	Timothee	2025-04-29 10:52:16.953547	43804489	25	7
Fujitsu and RIKEN develop world-leading 256-qubit sup quantum computer	donutloop	2025-04-29 10:52:16.953547	43759436	77	5
OpenVSX, which VSCode forks rely on for extensions, down for 24 hours	aaronvg	2025-04-29 10:52:16.953547	43785039	249	21
Microsoft says it will buy 8M tons of carbon offsets (2024)	wslh	2025-04-29 10:52:16.953547	43815760	10	0
MCP on AWS Lambda with MCPEngine	simba-k	2025-04-29 10:52:16.953547	43773777	117	9
A way to teach music online that doesn't suck	olinelson	2025-04-29 10:52:16.953547	43816787	6	1
Show HN: Lemon Slice Live – Have a video call with a transformer model	lcolucci	2025-04-29 10:52:16.953547	43785044	194	27
Novel color via stimulation of individual photoreceptors at population scale	radeeyate	2025-04-29 10:52:16.953547	43741013	183	18
A Visual Journey Through Async Rust	PaulHoule	2025-04-29 10:52:16.953547	43789142	151	8
Dear "Security Researchers"	donnachangstein	2025-04-29 10:52:16.953547	43829080	96	15
Review – Fluent C – Principles, Practices, and Patterns (2023)	teleforce	2025-04-29 10:52:16.953547	43824985	8	2
Calibrations Have a Context-Collapse Problem	zdosb	2025-04-29 10:52:16.953547	43812699	40	5
Microsoft subtracts C/C++ extension from VS Code forks	Dotnaught	2025-04-29 10:52:16.953547	43788125	241	41
Moving Beyond Containers – Introducing Boxer by Daniel Phillips WASM I/O 2025 [video]	tambourine_man	2025-04-29 10:52:16.953547	43809630	51	3
Australian who ordered radioactive materials walks away from court	mrkeen	2025-04-29 10:52:16.953547	43801439	332	38
NASA Orbiter Spots Curiosity Rover Making Tracks to Next Science Stop	gnabgib	2025-04-29 10:52:16.953547	43817827	18	0
Reproducibility project fails to validate dozens of biomedical studies	rntn	2025-04-29 10:52:16.953547	43795300	267	24
Packed Data Support in Haskell	matt_d	2025-04-29 10:52:16.953547	43826021	58	3
How to program a text adventure in C	nivethan	2025-04-29 10:52:16.953547	43809638	259	17
Parallel ./configure	brooke2k	2025-04-29 10:52:16.953547	43799396	217	27
Anatomy of a SQL Engine	ingve	2025-04-29 10:52:16.953547	43807593	163	6
Show HN: NanoAgent, zero-dependency 1k-LOC AI-agent runtime	hbbio	2025-04-29 10:52:16.953547	43822953	7	0
A $20k American-made electric pickup with no paint, no stereo, no screen	kwindla	2025-04-29 10:52:16.953547	43794284	1424	201
Hyperwood – Open-Source Furniture	panic	2025-04-29 10:52:16.953547	43763565	175	8
All four major web browsers are about to lose 80% of their funding	dfabulich	2025-04-29 10:52:16.953547	43827054	7	3
AMD Publishes Open-Source Driver for GPU Virtualization, Radeon "In the Roadmap"	davidlt	2025-04-29 10:52:16.953547	43779953	194	10
Lessons learned operating petabyte-scale ClickHouse clusters: Part II	javisantana	2025-04-29 10:52:16.953547	43747186	61	1
Windows isn't an OS, it's a bad habit that wants to become an addiction	rntn	2025-04-29 10:52:16.953547	43819891	21	4
Apparently Bluesky has one centralized service, the "relay"	doener	2025-04-29 10:52:16.953547	43801461	106	11
A unique sound alleviates motion sickness	miles	2025-04-29 10:52:16.953547	43740021	212	23
AI Horseless Carriages	petekoomen	2025-04-29 10:52:16.953547	43773813	853	107
Chinese researchers make EUV breakthrough	givemeethekeys	2025-04-29 10:52:16.953547	43829110	6	2
GCC 15.1	jrepinc	2025-04-29 10:52:16.953547	43792248	277	6
Asymmetric Content Moderation in Search Markets: The Case of Adult Websites	amadeuspagel	2025-04-29 10:52:16.953547	43784056	86	10
Pretty State Machine Patterns in Rust (2016)	PaulHoule	2025-04-29 10:52:16.953547	43741051	135	15
Show HN: I Added Translation to My RSS Reader Project	anonymousd3vil	2025-04-29 10:52:16.953547	43787133	29	4
LLMs can see and hear without any training	T-A	2025-04-29 10:52:16.953547	43803518	210	21
Greek Particles (1990)	veqq	2025-04-29 10:52:16.953547	43828096	36	9
The Policy Puppetry Attack: Novel bypass for major LLMs	jacobr1	2025-04-29 10:52:16.953547	43793280	310	35
Forensic Fandom	jger15	2025-04-29 10:52:16.953547	43826051	10	3
DECtalk Archive	classichasclass	2025-04-29 10:52:16.953547	43828099	6	1
Eurorack Knob Idea	po	2025-04-29 10:52:16.953547	43793288	321	29
Homebrew 4.5.0	chmaynard	2025-04-29 10:52:16.953547	43830153	9	1
Amazon launches first Kuiper internet satellites in bid to take on Starlink	pseudolus	2025-04-29 10:52:16.953547	43827083	51	8
From HyperCard to Vibe Coding	iryanbell	2025-04-29 10:52:16.953547	43815821	13	1
Legal art forgery, for the sake of movies (2014)	theneedful	2025-04-29 10:52:16.953547	43826065	64	6
Show HN: Talanoa – The email client I always dreamed of (People-first, Kanban)	bettercalljohn	2025-04-29 10:52:16.953547	43814802	17	4
Ask HN: CS degrees, do they matter again?	platevoltage	2025-04-29 10:52:16.953547	43816853	80	43
Reworking 30 lines of Linux code could cut power use by up to 30 percent	gslin	2025-04-29 10:52:16.953547	43749271	317	24
Show HN: Lil digi – play a platformer game as yourself	sunnyba	2025-04-29 10:52:16.953547	43811736	28	10
Still standing	ydnaclementine	2025-04-29 10:52:16.953547	43800472	98	16
The Rise and Fall of Toys 'R' Us (2018)	indigodaddy	2025-04-29 10:52:16.953547	43746202	79	18
AI for Network Engineers: Understanding Flow, Flowlet, and Packet-Based LB	ankitg12	2025-04-29 10:52:16.953547	43759513	66	4
Algebraic Semantics for Machine Knitting	PaulHoule	2025-04-29 10:52:16.953547	43763614	245	8
CONL: "Markdown" for your config files	kretaceous	2025-04-29 10:52:16.953547	43808671	70	18
Manuscript of Ismail al-Jazarī's Ingenious Mechanical Devices (ca. 17th century)	YoctoYARN	2025-04-29 10:52:16.953547	43828131	45	1
The 12-bit rainbow palette	rguiscard	2025-04-29 10:52:16.953547	43827108	251	20
Mesmerizing Interlocking Geometric Patterns Produced with Japanese Woodworking	pseudolus	2025-04-29 10:52:16.953547	43810724	132	10
The Passing of Ucbvax (1994)	ecliptik	2025-04-29 10:52:16.953547	43806630	66	5
I Tried to Buy an Actual Barrel of Crude Oil (2015)	niklasbuschmann	2025-04-29 10:52:16.953547	43761572	219	18
Jagged AGI: o3, Gemini 2.5, and everything after	ctoth	2025-04-29 10:52:16.953547	43744173	264	33
Building Small Go Containers?	randomizedcoder	2025-04-29 10:52:16.953547	43825070	15	3
The Homebrew Channel repository is archived (Apr 28, 2025)	wolpoli	2025-04-29 10:52:16.953547	43829167	51	5
Show HN: Flowcode – Turing-complete visual programming platform	gabigrin	2025-04-29 10:52:16.953547	43830193	21	5
You wouldn't steal a font	todsacerdoti	2025-04-29 10:52:16.953547	43775926	1390	43
CSS Hell	gaws	2025-04-29 10:52:16.953547	43766715	241	33
Runaway sausage dog snagged after 529 days on Australian island	austinallegro	2025-04-29 10:52:16.953547	43829184	7	1
Lenovo May Be Avoiding 'Windows Tax' via Cheaper Laptops with Preinstalled Linux	m463	2025-04-29 10:52:16.953547	43813826	54	12
Paper2Code: Automating Code Generation from Scientific Papers	Jerry2	2025-04-29 10:52:16.953547	43796419	133	8
Hunting for dark nights and wishing on stars	occurrence	2025-04-29 10:52:16.953547	43826116	18	2
How ZGC allocates memory for the Java heap	lichtenberger	2025-04-29 10:52:16.953547	43770821	85	3
Parcom: CL Parser Combinators	todsacerdoti	2025-04-29 10:52:16.953547	43764677	44	0
YAGRI: You are gonna read it	escot	2025-04-29 10:52:16.953547	43776967	326	38
How to quickly charge your smartphone: fast charging technologies in detail	uycyp	2025-04-29 10:52:16.953547	43766728	158	18
Show HN: A pure WebGL image editor with filters, crop and perspective correction	axelMI	2025-04-29 10:52:16.953547	43823044	201	24
Henry Blodget Invents, Sexually Harasses, Blogs About Nonexistent AI Subordinate	wk_end	2025-04-29 10:52:16.953547	43825094	10	0
Restoring a Sinclair C5	sohkamyung	2025-04-29 10:52:16.953547	43815891	53	9
Restoring Old Software for Child Learning Safety	rietta	2025-04-29 10:52:16.953547	43747283	85	17
Spring 83: a draft protocol intended to suggest new ways of relating online	SinePost	2025-04-29 10:52:16.953547	43774938	89	10
More than 21M employee screenshots leaked from WorkComposer	ronalbarbaren	2025-04-29 10:52:16.953547	43818970	11	1
A Love Letter to People Who Believe in People	NaOH	2025-04-29 10:52:16.953547	43788255	391	23
The raccoons who made computer magazine ads great	coloneltcb	2025-04-29 10:52:16.953547	43761633	184	16
Dad and the Egg Controller (2018)	wrong-mexican	2025-04-29 10:52:16.953547	43806691	105	6
X-rays from an overdriven magnetron [video]	michalpleban	2025-04-29 10:52:16.953547	43823076	6	0
ClickHouse gets lazier and faster: Introducing lazy materialization	tbragin	2025-04-29 10:52:16.953547	43763688	363	23
The Valley of My Dreams: Why Silicon Valley Left Boston's Route 128 in the Dust (2009)	teleforce	2025-04-29 10:52:16.953547	43815920	16	7
Does RL Incentivize Reasoning in LLMs Beyond the Base Model?	leodriesch	2025-04-29 10:52:16.953547	43760625	84	11
Robot Dexterity Still Seems Hard	mhb	2025-04-29 10:52:16.953547	43805683	70	8
Show HN: Dosidicus – A digital pet with a simple neural network	vicioussquid	2025-04-29 10:52:16.953547	43765748	73	8
Tiny-LLM – a course of serving LLM on Apple Silicon for systems engineers	sarkory	2025-04-29 10:52:16.953547	43820022	262	6
Do Large Language Models know who did what to whom?	badmonster	2025-04-29 10:52:16.953547	43813879	38	3
Show HN: Sim Studio – Open-Source Agent Workflow GUI	waleedlatif1	2025-04-29 10:52:16.953547	43823096	153	20
Show HN: Empty Enter Expander – Type less in the terminal with this tool	waszabi	2025-04-29 10:52:16.953547	43800574	48	11
\.


--
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_id_seq', 4, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

