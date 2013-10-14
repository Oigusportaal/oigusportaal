--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.0
-- Dumped by pg_dump version 9.3.0
-- Started on 2013-10-15 02:23:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 181 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 181
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 172 (class 1259 OID 49196)
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
-- TOC entry 171 (class 1259 OID 49184)
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
    countyname character varying(30)
);


ALTER TABLE public.bureau OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 49182)
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
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 170
-- Name: Bureau_BureauId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Bureau_BureauId_seq" OWNED BY bureau.bureauid;


--
-- TOC entry 176 (class 1259 OID 49285)
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
-- TOC entry 174 (class 1259 OID 49222)
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
-- TOC entry 173 (class 1259 OID 49220)
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
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 173
-- Name: SuccessStory_SSId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "SuccessStory_SSId_seq" OWNED BY successstory.ssid;


--
-- TOC entry 177 (class 1259 OID 65556)
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
-- TOC entry 178 (class 1259 OID 65566)
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
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 178
-- Name: attorney_attorneyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE attorney_attorneyid_seq OWNED BY attorney.attorneyid;


--
-- TOC entry 175 (class 1259 OID 49279)
-- Name: field; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE field (
    fieldid integer NOT NULL,
    fieldname character varying(30),
    bureauid integer
);


ALTER TABLE public.field OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 90128)
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
-- TOC entry 1993 (class 0 OID 0)
-- Dependencies: 180
-- Name: field_fieldid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE field_fieldid_seq OWNED BY field.fieldid;


--
-- TOC entry 179 (class 1259 OID 65575)
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
-- TOC entry 1852 (class 2604 OID 65568)
-- Name: attorneyid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attorney ALTER COLUMN attorneyid SET DEFAULT nextval('attorney_attorneyid_seq'::regclass);


--
-- TOC entry 1848 (class 2604 OID 49187)
-- Name: bureauid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bureau ALTER COLUMN bureauid SET DEFAULT nextval('"Bureau_BureauId_seq"'::regclass);


--
-- TOC entry 1851 (class 2604 OID 90130)
-- Name: fieldid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY field ALTER COLUMN fieldid SET DEFAULT nextval('field_fieldid_seq'::regclass);


--
-- TOC entry 1850 (class 2604 OID 49225)
-- Name: ssid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY successstory ALTER COLUMN ssid SET DEFAULT nextval('"SuccessStory_SSId_seq"'::regclass);


--
-- TOC entry 1994 (class 0 OID 0)
-- Dependencies: 172
-- Name: BureauRepresentative_BureauId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BureauRepresentative_BureauId_seq"', 1, false);


--
-- TOC entry 1995 (class 0 OID 0)
-- Dependencies: 170
-- Name: Bureau_BureauId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Bureau_BureauId_seq"', 1, true);


--
-- TOC entry 1996 (class 0 OID 0)
-- Dependencies: 176
-- Name: SuccessStory_FieldId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"SuccessStory_FieldId_seq"', 1, true);


--
-- TOC entry 1997 (class 0 OID 0)
-- Dependencies: 173
-- Name: SuccessStory_SSId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"SuccessStory_SSId_seq"', 1, false);


--
-- TOC entry 1978 (class 0 OID 65556)
-- Dependencies: 177
-- Data for Name: attorney; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY attorney (name, bureauid, email, attorneyid) FROM stdin;
Ingvar Snetkov	1	ingvar@ingvar.com	1
Atilio Reenja	2	atilio@atilio.com	2
Servet Kurt	3	servet@servet.com	3
Helen Linn	2	helen@helen.com	4
\.


--
-- TOC entry 1998 (class 0 OID 0)
-- Dependencies: 178
-- Name: attorney_attorneyid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attorney_attorneyid_seq', 4, true);


--
-- TOC entry 1972 (class 0 OID 49184)
-- Dependencies: 171
-- Data for Name: bureau; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bureau (bureauid, registrycode, name, email, password, averageprice, street, postalcode, phone, regionname, cityname, countyname) FROM stdin;
1	289987	Firma A	firmaa@firmaa.com	12345678	40	riia	59001	3213	Põhja-Eesti	Tartu	Tartumaa
2	321317	Firma B	firmab@firmab.com	87654321	50	rutli	44521	41241	Põhja-Eesti	Tartu	Tartumaa
3	412312	Firma C	firmac@firmac.com	12345678	40	kuni	6370	5114	Põhja-Eesti	Tartu	Tartumaa
4	321314	Firma D	firmad@firmad.com	32131223	40	turu	4123	435	Põhja-Eesti	Tartu	Tartumaa
5	231233	Firma E	firmae@firmae.com	31231244	40	kana	32134	34235	Lõuna-Eesti	Viljandi	Viljandimaa
6	412341	Firma F	firmaf@firmaf.com	99999999	40	kala	32131	5432t624	Lõuna-Eesti	Viljandi	Viljandimaa
7	532523	Firma M	firmam@firmam.com	33331111	50	karu	3213	5522441	Lõuna-Eesti	Viljandi	Viljandimaa
\.


--
-- TOC entry 1976 (class 0 OID 49279)
-- Dependencies: 175
-- Data for Name: field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY field (fieldid, fieldname, bureauid) FROM stdin;
2	Robbery	6
3	Crime	7
1	Divorce	5
5	Divorce	1
6	Divorce	2
7	Divorce	3
4	Divorce	6
\.


--
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 180
-- Name: field_fieldid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('field_fieldid_seq', 4, true);


--
-- TOC entry 2000 (class 0 OID 0)
-- Dependencies: 179
-- Name: region_regionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('region_regionid_seq', 1, false);


--
-- TOC entry 1975 (class 0 OID 49222)
-- Dependencies: 174
-- Data for Name: successstory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY successstory (ssid, participants, date, reference, conclusion, bureauid, fieldid) FROM stdin;
1	Helen-Urmas	2012-02-03	http://link/hu	Ended with divorce. And Urmas Has to pay alimony.	1	1
2	Servet-Atilio	2010-02-04	http://link/sa	6 years of prison	2	1
3	Ieve-Kadri	2000-04-03	http://link/ik	3 years of prison	2	1
5	Berkan-Ozan	2003-05-09	http://link/bo	Senteced to prison	6	2
4	Anari-Suido	2001-03-07	http://link/as	Case Cleared without punishment 	5	2
\.


--
-- TOC entry 1854 (class 2606 OID 49190)
-- Name: Bureau_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bureau
    ADD CONSTRAINT "Bureau_pkey" PRIMARY KEY (bureauid);


--
-- TOC entry 1856 (class 2606 OID 49227)
-- Name: SuccessStory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY successstory
    ADD CONSTRAINT "SuccessStory_pkey" PRIMARY KEY (ssid);


--
-- TOC entry 1860 (class 2606 OID 65570)
-- Name: attorney_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attorney
    ADD CONSTRAINT attorney_pkey PRIMARY KEY (attorneyid);


--
-- TOC entry 1858 (class 2606 OID 90136)
-- Name: field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY field
    ADD CONSTRAINT field_pkey PRIMARY KEY (fieldid);


--
-- TOC entry 1862 (class 2606 OID 98304)
-- Name: bureau; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY field
    ADD CONSTRAINT bureau FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);


--
-- TOC entry 1863 (class 2606 OID 65559)
-- Name: bureauid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attorney
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);


--
-- TOC entry 1861 (class 2606 OID 65580)
-- Name: bureauid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY successstory
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);


--
-- TOC entry 1988 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-10-15 02:23:10

--
-- PostgreSQL database dump complete
--

