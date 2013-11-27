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


CREATE TABLE bureau (
    bureauid integer NOT NULL,
    registrycode integer DEFAULT 1 NOT NULL,
    name character varying(100),
    email character varying(254),
    password character varying(100),
    averageprice integer,
    street character varying(50),
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




CREATE TABLE successstory (
    ssid integer NOT NULL,
    participants character varying(30),
    date date,
    reference character varying(30),
    conclusion character varying(300),
    bureauid integer,
    fieldid integer,
    filepath character varying(200)
);


ALTER TABLE public.successstory OWNER TO postgres;



CREATE SEQUENCE "SuccessStory_SSId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SuccessStory_SSId_seq" OWNER TO postgres;



ALTER SEQUENCE "SuccessStory_SSId_seq" OWNED BY successstory.ssid;




CREATE TABLE attorney (
    name character varying(100),
    bureauid integer NOT NULL,
    email character varying(300),
    attorneyid integer NOT NULL,
	imgpath character varying(100)
);


ALTER TABLE public.attorney OWNER TO postgres;



CREATE SEQUENCE attorney_attorneyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attorney_attorneyid_seq OWNER TO postgres;



ALTER SEQUENCE attorney_attorneyid_seq OWNED BY attorney.attorneyid;





CREATE TABLE fieldbureaujunction (
	bureauid integer NOT NULL,
	fieldid integer NOT NULL
);

ALTER TABLE public.fieldbureaujunction OWNER TO postgres;

CREATE TABLE field (
    fieldid integer NOT NULL,
    fieldname character varying(100)
);


ALTER TABLE public.field OWNER TO postgres;



CREATE SEQUENCE field_fieldid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.field_fieldid_seq OWNER TO postgres;



ALTER SEQUENCE field_fieldid_seq OWNED BY field.fieldid;



ALTER TABLE ONLY attorney ALTER COLUMN attorneyid SET DEFAULT nextval('attorney_attorneyid_seq'::regclass);




ALTER TABLE ONLY bureau ALTER COLUMN bureauid SET DEFAULT nextval('"Bureau_BureauId_seq"'::regclass);




ALTER TABLE ONLY field ALTER COLUMN fieldid SET DEFAULT nextval('field_fieldid_seq'::regclass);



ALTER TABLE ONLY successstory ALTER COLUMN ssid SET DEFAULT nextval('"SuccessStory_SSId_seq"'::regclass);



SELECT pg_catalog.setval('"Bureau_BureauId_seq"', 3, true);









SELECT pg_catalog.setval('"SuccessStory_SSId_seq"', 1, false);



SELECT pg_catalog.setval('attorney_attorneyid_seq', 4, true);



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




SELECT pg_catalog.setval('field_fieldid_seq', 4, true);


ALTER TABLE ONLY bureau
    ADD CONSTRAINT "Bureau_pkey" PRIMARY KEY (bureauid);



ALTER TABLE ONLY successstory
    ADD CONSTRAINT "SuccessStory_pkey" PRIMARY KEY (ssid);



ALTER TABLE ONLY attorney
    ADD CONSTRAINT attorney_pkey PRIMARY KEY (attorneyid);




ALTER TABLE ONLY field
    ADD CONSTRAINT field_pkey PRIMARY KEY (fieldid);




ALTER TABLE ONLY attorney
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);




ALTER TABLE ONLY successstory
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);




REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;



ALTER SEQUENCE "Bureau_BureauId_seq" RESTART WITH 17;

COPY field (fieldname) FROM stdin;
Ehitus- ja planeerimisõigus
Erastamine
Inkassoteenused
Intellektuaalne omand
IT-õigus
Keskkonnaõigus
Kindlustusõigus
Kinnisvaraõigus
Konkurentsiõigus
Kriminaal- ja väärteoõigus
Lahutus
Liiklusõigus
Majandusõigus
Maksuõigus
Meditsiin ja ravimid
Meedia- ja telekommunikatsiooniõigus
Omandireform
Pangandus- ja finantsõigus, kapitaliturud
Perekonnaõigus
Pärimisõigus
Restruktueerimine, saneerimine ja maksujõuetus (pankrot)
Sotsiaalhoolekandeõigus
Transpordi-, kaubandus- ja mereõigus
Tööõigus
Välismaalasteõigus
Ühinemised ja ülevõtmised
\.

