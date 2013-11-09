--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.4
-- Dumped by pg_dump version 9.2.4
-- Started on 2013-11-07 12:53:45 EET

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
Servet Kurt	3	servet@servet.com	3
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
8	31231	Firma L	firmal@firmal.com	8888	40	karu	33331	2222	Lõuna-Eesti	Tartu	Tartumaa	C:/Users/Servet/git/portal/WebContent/bureauLogos/FirmaAlogo.gif	2	1
9	1	admin	admin@admin.com	9999	\N	\N	\N	\N	\N	\N	\N	\N	1	1
6	412341	Firma F	firmaf@firmaf.com	6666	40	kala	32131	5432t624	Lääne-Eesti	Viljandi	Viljandimaa	C:/Users/Servet/git/portal/WebContent/bureauLogos/FirmaAlogo.gif	2	0
3	412312	Firma C	firmac@firmac.com	3333	40	kuni	6370	5114	Lõuna-Eesti	Tartu	Tartumaa	C:/Users/Servet/git/portal/WebContent/bureauLogos/FirmaAlogo.gif	2	1
4	321314	Firma D	firmad@firmad.com	4444	40	turu	4123	435	Lõuna-Eesti	Tartu	Tartumaa	C:/Users/Servet/git/portal/WebContent/bureauLogos/FirmaAlogo.gif	2	1
\.


--
-- TOC entry 2232 (class 0 OID 16586)
-- Dependencies: 176
-- Data for Name: field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY field (fieldid, fieldname, bureauid) FROM stdin;
2	Robbery	6
7	Divorce	3
4	Divorce	6
9	Privitization	6
13	EnvironmentalLaw	3
15	NonMovableProperty	3
16	CompetitionLaw	4
18	TrafficLaw	6
22	MediaAndTelecommunicationLaw	3
23	PropertyReform	4
25	FamilyLaw	6
29	TransportTradeAndSeaLaw	3
30	LaborLaw	4
32	MergersAndAcquisitions	6
20	TaxLaw	8
3	DebtCollectionServices	3
5	IntellectualProperty	4
6	ITLaw	4
10	InsuranceLaw	6
12	MedicineLaw	3
14	SocialWelfareLaw	4
21	HeritageLaw	4
1	Divorce	3
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


-- Completed on 2013-11-07 12:53:45 EET

--
-- PostgreSQL database dump complete
--

ALTER SEQUENCE "Bureau_BureauId_seq" RESTART WITH 10;