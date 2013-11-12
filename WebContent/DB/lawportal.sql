--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.4
-- Dumped by pg_dump version 9.2.4
-- Started on 2013-11-12 10:56:59 EET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 179 (class 3079 OID 11995)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2242 (class 0 OID 0)
-- Dependencies: 179
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 168 (class 1259 OID 16564)
-- Name: BureauRepresentative_BureauId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "BureauRepresentative_BureauId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public."BureauRepresentative_BureauId_seq" OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 169 (class 1259 OID 16566)
-- Name: bureau; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bureau (
    bureauid integer NOT NULL,
    registrycode integer DEFAULT 1 NOT NULL,
    name character varying(30),
    email character varying(20),
    password character varying(8),
    averageprice integer,
    street character varying(30),
    postalcode integer,
    phone character varying(30),
    regionname character varying(30),
    cityname character varying(30),
    countyname character varying(30),
    image character varying(120),
    category integer DEFAULT 2,
    active integer DEFAULT 1 NOT NULL,
    hash character varying(10)
);


ALTER TABLE public.bureau OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 16572)
-- Name: Bureau_BureauId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Bureau_BureauId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Bureau_BureauId_seq" OWNER TO postgres;

--
-- TOC entry 2243 (class 0 OID 0)
-- Dependencies: 170
-- Name: Bureau_BureauId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Bureau_BureauId_seq" OWNED BY bureau.bureauid;


--
-- TOC entry 171 (class 1259 OID 16574)
-- Name: SuccessStory_FieldId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "SuccessStory_FieldId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public."SuccessStory_FieldId_seq" OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 16576)
-- Name: successstory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE successstory (
    ssid integer NOT NULL,
    participants character varying(30),
    date date,
    reference character varying(30),
    conclusion character varying(300),
    bureauid integer,
    fieldid integer
);


ALTER TABLE public.successstory OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16579)
-- Name: SuccessStory_SSId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "SuccessStory_SSId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SuccessStory_SSId_seq" OWNER TO postgres;

--
-- TOC entry 2244 (class 0 OID 0)
-- Dependencies: 173
-- Name: SuccessStory_SSId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "SuccessStory_SSId_seq" OWNED BY successstory.ssid;


--
-- TOC entry 174 (class 1259 OID 16581)
-- Name: attorney; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attorney (
    name character varying(30),
    bureauid integer,
    email character varying(30),
    attorneyid integer NOT NULL
);


ALTER TABLE public.attorney OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16584)
-- Name: attorney_attorneyid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE attorney_attorneyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attorney_attorneyid_seq OWNER TO postgres;

--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 175
-- Name: attorney_attorneyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE attorney_attorneyid_seq OWNED BY attorney.attorneyid;


--
-- TOC entry 176 (class 1259 OID 16586)
-- Name: field; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE field (
    fieldid integer NOT NULL,
    fieldname character varying(30),
    bureauid integer
);


ALTER TABLE public.field OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16589)
-- Name: field_fieldid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE field_fieldid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.field_fieldid_seq OWNER TO postgres;

--
-- TOC entry 2246 (class 0 OID 0)
-- Dependencies: 177
-- Name: field_fieldid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE field_fieldid_seq OWNED BY field.fieldid;


--
-- TOC entry 178 (class 1259 OID 16591)
-- Name: region_regionid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE region_regionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.region_regionid_seq OWNER TO postgres;

--
-- TOC entry 2211 (class 2604 OID 16593)
-- Name: attorneyid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attorney ALTER COLUMN attorneyid SET DEFAULT nextval('attorney_attorneyid_seq'::regclass);


--
-- TOC entry 2209 (class 2604 OID 16594)
-- Name: bureauid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bureau ALTER COLUMN bureauid SET DEFAULT nextval('"Bureau_BureauId_seq"'::regclass);


--
-- TOC entry 2212 (class 2604 OID 16595)
-- Name: fieldid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY field ALTER COLUMN fieldid SET DEFAULT nextval('field_fieldid_seq'::regclass);


--
-- TOC entry 2210 (class 2604 OID 16596)
-- Name: ssid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY successstory ALTER COLUMN ssid SET DEFAULT nextval('"SuccessStory_SSId_seq"'::regclass);


--
-- TOC entry 2247 (class 0 OID 0)
-- Dependencies: 168
-- Name: BureauRepresentative_BureauId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BureauRepresentative_BureauId_seq"', 1, false);


--
-- TOC entry 2248 (class 0 OID 0)
-- Dependencies: 170
-- Name: Bureau_BureauId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Bureau_BureauId_seq"', 3, true);


--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 171
-- Name: SuccessStory_FieldId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"SuccessStory_FieldId_seq"', 1, true);


--
-- TOC entry 2250 (class 0 OID 0)
-- Dependencies: 173
-- Name: SuccessStory_SSId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"SuccessStory_SSId_seq"', 1, false);


--
-- TOC entry 2230 (class 0 OID 16581)
-- Dependencies: 174
-- Data for Name: attorney; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY attorney (name, bureauid, email, attorneyid) FROM stdin;
Sigmar	\N	sigmar@sigmar.com	1
Kadri	\N	kadri@kadri.com	2
Atilio	\N	atilio@atilio.com	3
Helen	\N	helen@helen.com	4
Suido	\N	suido@suido.com	5
Urmas	\N	urmas@urmas.com	6
Nick	\N	nick@nick.com	7
Servet	\N	servet@servet.com	8
Vallo	\N	vallo@vallo.com	9
Berkan	\N	berkan@berkan.com	10
Agnes	\N	agnes@agnes.com	11
Eneli	\N	eneli@eneli.com	12
\.


--
-- TOC entry 2251 (class 0 OID 0)
-- Dependencies: 175
-- Name: attorney_attorneyid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attorney_attorneyid_seq', 4, true);


--
-- TOC entry 2225 (class 0 OID 16566)
-- Dependencies: 169
-- Data for Name: bureau; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bureau (bureauid, registrycode, name, email, password, averageprice, street, postalcode, phone, regionname, cityname, countyname, image, category, active) FROM stdin;
9	1	admin	admin@admin.com	9999	\N	\N	\N	\N	\N	\N	\N	\N	1	1
5	21356	Firma E	firmae@firmae.com	5555	50	vabandame	23145	13299	Lõuna-Eesti	Jõhvä	Ida-Virumaa	\N	2	1
7	111142	Firma G	firmag@firmag.com	7777	10	raatuse	32145	12310	Lõuna-Eesti	Jõgeva	Jõgevamaa	\N	2	1
6	412341	Firma F	firmaf@firmaf.com	6666	40	kala	32131	5432t624	Lääne-Eesti	Viljandi	Viljandimaa	C:/Users/Servet/git/portal/WebContent/bureauLogos/FirmaAlogo.gif	2	1
11	231177	Firma M	firmam@firmam.com	1111	30	hakkan	23125	112356	Lääne-Eesti	Haapsalu	Läänemaa	\N	2	1
10	312456	Firma H	firmah@firmah.com	1010	20	piik	132188	112245	Lõuna-Eesti	Rakvere	Lääne-Virumaa	\N	2	1
12	32145	Firma N	firman@firman.com	1212	22	turu	23145	123145	Ida-Eesti	Põlva	Põlvamaa	\N	2	1
13	29001	Firma R	firmar@firmar.com	1313	33	kala	24588	778899	Ida-Eesti	Tartu	Tartumaa	\N	2	1
4	321314	Firma D	firmad@firmad.com	4444	40	turu	4123	435	Lääne-Eesti	Kärdla	Hiiumaa	C:/Users/Servet/git/portal/WebContent/bureauLogos/FirmaAlogo.gif	2	1
14	249901	Firma K 	firmak@firmak.com	1414	44	karu	241931	99810	Ida-Eesti	Valga	Valgamaa	\N	2	1
8	31231	Firma L	firmal@firmal.com	8888	40	karu	33331	2222	Lääne-Eesti	Saaremaa	Kuresaare	C:/Users/Servet/git/portal/WebContent/bureauLogos/FirmaAlogo.gif	2	1
15	231245	Firma S 	firmas@firmas.com	1515	55	rütli	241245	91892	Ida-Eesti	Viljandi	Viljandimaa	\N	2	1
16	145991	Firma V	firmav@firmav.com	1616	66	raatuse	139900	13450	Ida-Eesti	Võru	Võrumaa	\N	2	1
1	213413	Firma A	firmaa@firmaa.com	1111	80	rütli	33124	32131	Põhja-Eesti	Tallinn	Harjumaa	\N	2	1
2	55555	Firma B	firmab@firmab.com	2222	70	riia	12345	54321	Põhja-Eesti	Paide	Järvamaa	\N	2	1
3	134561	Firma C	firmac@firmac.com	3333	60	uus	31567	98201	Põhja-Eesti	Rapla	Raplamaa	\N	2	1
\.


--
-- TOC entry 2232 (class 0 OID 16586)
-- Dependencies: 176
-- Data for Name: field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY field (fieldid, fieldname, bureauid) FROM stdin;
4	Divorce	1
18	TrafficLaw	6
23	PropertyReform	4
25	FamilyLaw	6
30	LaborLaw	4
32	MergersAndAcquisitions	6
20	TaxLaw	8
21	HeritageLaw	4
1	CivilLaw	1
3	DebtCollectionServices	2
7	EnvironmentalLaw	3
8	InsuranceLaw	4
11	NonMovableProperty	5
12	CompetitionLaw	6
13	CriminalLaw	7
15	Divorce	8
19	EconomicLaw	10
22	TaxLaw	11
24	MedicineLaw	12
26	MediaAndTelecommunicationLaw	13
27	PropertyReform	14
28	BankingAndFinancialFunds	15
29	FamilyLaw	16
17	TrafficLaw	1
31	HeritageLaw	1
33	RestructingLaw	2
34	SocialWelfareLaw	3
35	TransportTradeAndSeaLaw	4
36	LaborLaw	5
37	AliensLaw	6
38	MergersAndAcquisitions	7
2	Robbery	14
5	IntellectualProperty	12
6	ITLaw	11
9	Privitization	10
10	InsuranceLaw	8
14	SocialWelfareLaw	7
16	CompetitionLaw	5
\.


--
-- TOC entry 2252 (class 0 OID 0)
-- Dependencies: 177
-- Name: field_fieldid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('field_fieldid_seq', 4, true);


--
-- TOC entry 2253 (class 0 OID 0)
-- Dependencies: 178
-- Name: region_regionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('region_regionid_seq', 1, false);


--
-- TOC entry 2228 (class 0 OID 16576)
-- Dependencies: 172
-- Data for Name: successstory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY successstory (ssid, participants, date, reference, conclusion, bureauid, fieldid) FROM stdin;
5	Berkan-Ozan	2003-05-09	http://link/bo	Senteced to prison	6	2
\.


--
-- TOC entry 2214 (class 2606 OID 16598)
-- Name: Bureau_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bureau
    ADD CONSTRAINT "Bureau_pkey" PRIMARY KEY (bureauid);


--
-- TOC entry 2216 (class 2606 OID 16600)
-- Name: SuccessStory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY successstory
    ADD CONSTRAINT "SuccessStory_pkey" PRIMARY KEY (ssid);


--
-- TOC entry 2218 (class 2606 OID 16602)
-- Name: attorney_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attorney
    ADD CONSTRAINT attorney_pkey PRIMARY KEY (attorneyid);


--
-- TOC entry 2220 (class 2606 OID 16604)
-- Name: field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY field
    ADD CONSTRAINT field_pkey PRIMARY KEY (fieldid);


--
-- TOC entry 2223 (class 2606 OID 16605)
-- Name: bureau; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY field
    ADD CONSTRAINT bureau FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);


--
-- TOC entry 2222 (class 2606 OID 16610)
-- Name: bureauid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attorney
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);


--
-- TOC entry 2221 (class 2606 OID 16615)
-- Name: bureauid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY successstory
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);


--
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-11-12 10:56:59 EET

--
-- PostgreSQL database dump complete
--

ALTER SEQUENCE "Bureau_BureauId_seq" RESTART WITH 17;

