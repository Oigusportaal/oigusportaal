PGDMP         "        	    	    q        	   lawportal    9.3.0    9.3.0 -    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    49153 	   lawportal    DATABASE     �   CREATE DATABASE lawportal WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE lawportal;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11750    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    181            �            1259    49196 !   BureauRepresentative_BureauId_seq    SEQUENCE     �   CREATE SEQUENCE "BureauRepresentative_BureauId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 :   DROP SEQUENCE public."BureauRepresentative_BureauId_seq";
       public       postgres    false    5            �            1259    49184    bureau    TABLE     �  CREATE TABLE bureau (
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
    DROP TABLE public.bureau;
       public         postgres    false    5            �            1259    49182    Bureau_BureauId_seq    SEQUENCE     w   CREATE SEQUENCE "Bureau_BureauId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Bureau_BureauId_seq";
       public       postgres    false    171    5            �           0    0    Bureau_BureauId_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "Bureau_BureauId_seq" OWNED BY bureau.bureauid;
            public       postgres    false    170            �            1259    49285    SuccessStory_FieldId_seq    SEQUENCE     �   CREATE SEQUENCE "SuccessStory_FieldId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE public."SuccessStory_FieldId_seq";
       public       postgres    false    5            �            1259    49222    successstory    TABLE     �   CREATE TABLE successstory (
    ssid integer NOT NULL,
    participants character varying(30),
    date date,
    reference character varying(30),
    conclusion character varying(300),
    bureauid integer,
    fieldid integer
);
     DROP TABLE public.successstory;
       public         postgres    false    5            �            1259    49220    SuccessStory_SSId_seq    SEQUENCE     y   CREATE SEQUENCE "SuccessStory_SSId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."SuccessStory_SSId_seq";
       public       postgres    false    174    5            �           0    0    SuccessStory_SSId_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "SuccessStory_SSId_seq" OWNED BY successstory.ssid;
            public       postgres    false    173            �            1259    65556    attorney    TABLE     �   CREATE TABLE attorney (
    name character varying(30),
    bureauid integer,
    email character varying(30),
    attorneyid integer NOT NULL
);
    DROP TABLE public.attorney;
       public         postgres    false    5            �            1259    65566    attorney_attorneyid_seq    SEQUENCE     y   CREATE SEQUENCE attorney_attorneyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.attorney_attorneyid_seq;
       public       postgres    false    177    5            �           0    0    attorney_attorneyid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE attorney_attorneyid_seq OWNED BY attorney.attorneyid;
            public       postgres    false    178            �            1259    49279    field    TABLE     p   CREATE TABLE field (
    fieldid integer NOT NULL,
    fieldname character varying(30),
    bureauid integer
);
    DROP TABLE public.field;
       public         postgres    false    5            �            1259    90128    field_fieldid_seq    SEQUENCE     s   CREATE SEQUENCE field_fieldid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.field_fieldid_seq;
       public       postgres    false    5    175            �           0    0    field_fieldid_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE field_fieldid_seq OWNED BY field.fieldid;
            public       postgres    false    180            �            1259    65575    region_regionid_seq    SEQUENCE     }   CREATE SEQUENCE region_regionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public.region_regionid_seq;
       public       postgres    false    5            <           2604    65568 
   attorneyid    DEFAULT     l   ALTER TABLE ONLY attorney ALTER COLUMN attorneyid SET DEFAULT nextval('attorney_attorneyid_seq'::regclass);
 B   ALTER TABLE public.attorney ALTER COLUMN attorneyid DROP DEFAULT;
       public       postgres    false    178    177            8           2604    49187    bureauid    DEFAULT     f   ALTER TABLE ONLY bureau ALTER COLUMN bureauid SET DEFAULT nextval('"Bureau_BureauId_seq"'::regclass);
 >   ALTER TABLE public.bureau ALTER COLUMN bureauid DROP DEFAULT;
       public       postgres    false    171    170    171            ;           2604    90130    fieldid    DEFAULT     `   ALTER TABLE ONLY field ALTER COLUMN fieldid SET DEFAULT nextval('field_fieldid_seq'::regclass);
 <   ALTER TABLE public.field ALTER COLUMN fieldid DROP DEFAULT;
       public       postgres    false    180    175            :           2604    49225    ssid    DEFAULT     j   ALTER TABLE ONLY successstory ALTER COLUMN ssid SET DEFAULT nextval('"SuccessStory_SSId_seq"'::regclass);
 @   ALTER TABLE public.successstory ALTER COLUMN ssid DROP DEFAULT;
       public       postgres    false    174    173    174            �           0    0 !   BureauRepresentative_BureauId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"BureauRepresentative_BureauId_seq"', 1, false);
            public       postgres    false    172            �           0    0    Bureau_BureauId_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"Bureau_BureauId_seq"', 1, true);
            public       postgres    false    170            �           0    0    SuccessStory_FieldId_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"SuccessStory_FieldId_seq"', 1, true);
            public       postgres    false    176            �           0    0    SuccessStory_SSId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"SuccessStory_SSId_seq"', 1, false);
            public       postgres    false    173            �          0    65556    attorney 
   TABLE DATA               >   COPY attorney (name, bureauid, email, attorneyid) FROM stdin;
    public       postgres    false    177   h/       �           0    0    attorney_attorneyid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('attorney_attorneyid_seq', 4, true);
            public       postgres    false    178            �          0    49184    bureau 
   TABLE DATA               �   COPY bureau (bureauid, registrycode, name, email, password, averageprice, street, postalcode, phone, regionname, cityname, countyname) FROM stdin;
    public       postgres    false    171   �/       �          0    49279    field 
   TABLE DATA               6   COPY field (fieldid, fieldname, bureauid) FROM stdin;
    public       postgres    false    175   1       �           0    0    field_fieldid_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('field_fieldid_seq', 4, true);
            public       postgres    false    180            �           0    0    region_regionid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('region_regionid_seq', 1, false);
            public       postgres    false    179            �          0    49222    successstory 
   TABLE DATA               c   COPY successstory (ssid, participants, date, reference, conclusion, bureauid, fieldid) FROM stdin;
    public       postgres    false    174   \1       >           2606    49190    Bureau_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY bureau
    ADD CONSTRAINT "Bureau_pkey" PRIMARY KEY (bureauid);
 >   ALTER TABLE ONLY public.bureau DROP CONSTRAINT "Bureau_pkey";
       public         postgres    false    171    171            @           2606    49227    SuccessStory_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY successstory
    ADD CONSTRAINT "SuccessStory_pkey" PRIMARY KEY (ssid);
 J   ALTER TABLE ONLY public.successstory DROP CONSTRAINT "SuccessStory_pkey";
       public         postgres    false    174    174            D           2606    65570    attorney_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY attorney
    ADD CONSTRAINT attorney_pkey PRIMARY KEY (attorneyid);
 @   ALTER TABLE ONLY public.attorney DROP CONSTRAINT attorney_pkey;
       public         postgres    false    177    177            B           2606    90136 
   field_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY field
    ADD CONSTRAINT field_pkey PRIMARY KEY (fieldid);
 :   ALTER TABLE ONLY public.field DROP CONSTRAINT field_pkey;
       public         postgres    false    175    175            F           2606    98304    bureau    FK CONSTRAINT     e   ALTER TABLE ONLY field
    ADD CONSTRAINT bureau FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);
 6   ALTER TABLE ONLY public.field DROP CONSTRAINT bureau;
       public       postgres    false    171    1854    175            G           2606    65559    bureauid    FK CONSTRAINT     j   ALTER TABLE ONLY attorney
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);
 ;   ALTER TABLE ONLY public.attorney DROP CONSTRAINT bureauid;
       public       postgres    false    171    177    1854            E           2606    65580    bureauid    FK CONSTRAINT     n   ALTER TABLE ONLY successstory
    ADD CONSTRAINT bureauid FOREIGN KEY (bureauid) REFERENCES bureau(bureauid);
 ?   ALTER TABLE ONLY public.successstory DROP CONSTRAINT bureauid;
       public       postgres    false    174    171    1854            �   n   x�%�9�0k�y�B���4� �B�8͎�^m�k�A�x�%89�b���Fw:�&"�-T`�u�t*4E5<!B��ΐF���jt�������w�s��/��/      �     x�}��n�0�y���*��|ܺ��6i�i�]R
ZZ�#�$��"�Q$��w��몄����]��^�]s ɰe���������^����|�i�����(U�]~U���)�UY�*� ��w�,��H�[��%i���n�nV]_��0e��[0kӼ��
�>'8��~�`#[n��¥�=�۩�%�^Vj��V� h.��w�߮����\��1f�8hD�����Ƭ�F�+3��_�%�!��������~XV|ϫ�I������\��,�)��      �   7   x�3��OJJ-��4�2�t.��M�4�2�J,H
r�d��%�r�r��qqq 5K�      �   �   x�m��N�0E��W�8��X]X!-��X�ј��2JbG��g�	B�)�ѽW����͏:@)U)d�
������E7Ó5d�c���/�ck�8<��'��xtv�A��J8�_(�6��n�˛�������}@w��sp��W�L�m<'X&���{���x$�k+^����J�F����RD��m~��Y�՞�yf�%�Jl���6;�@xR�߁�q�-�nLf�&���,˾.m     