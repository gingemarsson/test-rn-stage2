PGDMP     +                    {         	   backstage    14.7 (Homebrew)    14.7 (Homebrew) �    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    16384 	   backstage    DATABASE     T   CREATE DATABASE backstage WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE backstage;
                gabriel    false            �            1259    16453    booking    TABLE     m  CREATE TABLE public.booking (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    owneruserid bigint,
    bookingtype bigint,
    status bigint,
    salarystatus bigint,
    invoicehogiaid bigint,
    invoiceaddress text,
    invoicetag text,
    invoicenumber text,
    note text,
    returnalnote text,
    priceplan bigint,
    accountkind bigint,
    location text,
    contactpersonname text,
    contactpersonphone text,
    contactpersonemail text,
    calendarbookingid text,
    customername text,
    paymentstatus bigint,
    language text
);
    DROP TABLE public.booking;
       public         heap    gabriel    false            �            1259    16452    booking_id_seq    SEQUENCE     w   CREATE SEQUENCE public.booking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.booking_id_seq;
       public          gabriel    false    230            O           0    0    booking_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.booking_id_seq OWNED BY public.booking.id;
          public          gabriel    false    229            �            1259    16522    bookingchangelogentry    TABLE     
  CREATE TABLE public.bookingchangelogentry (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    bookingid bigint,
    "timestamp" timestamp with time zone,
    description text,
    userid bigint
);
 )   DROP TABLE public.bookingchangelogentry;
       public         heap    gabriel    false            �            1259    16521    bookingchangelogentry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bookingchangelogentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.bookingchangelogentry_id_seq;
       public          gabriel    false    249            P           0    0    bookingchangelogentry_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.bookingchangelogentry_id_seq OWNED BY public.bookingchangelogentry.id;
          public          gabriel    false    248            �            1259    16490    bookinginvoicegroup    TABLE     o   CREATE TABLE public.bookinginvoicegroup (
    bookingid bigint NOT NULL,
    invoicegroupid bigint NOT NULL
);
 '   DROP TABLE public.bookinginvoicegroup;
       public         heap    gabriel    false            �            1259    16480    bookingsalarygroup    TABLE     m   CREATE TABLE public.bookingsalarygroup (
    bookingid bigint NOT NULL,
    salarygroupid bigint NOT NULL
);
 &   DROP TABLE public.bookingsalarygroup;
       public         heap    gabriel    false            �            1259    16398    coowner    TABLE     [   CREATE TABLE public.coowner (
    bookingid bigint NOT NULL,
    userid bigint NOT NULL
);
    DROP TABLE public.coowner;
       public         heap    gabriel    false                       1259    16562    customer    TABLE     	  CREATE TABLE public.customer (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    priceplan bigint,
    accountkind bigint,
    invoicehogiaid bigint,
    invoiceaddress text,
    language text
);
    DROP TABLE public.customer;
       public         heap    gabriel    false                       1259    16561    customer_id_seq    SEQUENCE     x   CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          gabriel    false    259            Q           0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          gabriel    false    258            �            1259    16536 	   equipment    TABLE     �  CREATE TABLE public.equipment (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    equipmentpackageid bigint,
    inventorycount bigint,
    nameen text,
    description text,
    descriptionen text,
    note text,
    imageid bigint,
    publiclyhidden boolean,
    equipmentpubliccategoryid bigint,
    equipmentlocationid bigint,
    isarchived boolean DEFAULT false,
    searchkeywords text DEFAULT ''::text
);
    DROP TABLE public.equipment;
       public         heap    gabriel    false            �            1259    16535    equipment_id_seq    SEQUENCE     y   CREATE SEQUENCE public.equipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.equipment_id_seq;
       public          gabriel    false    253            R           0    0    equipment_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.equipment_id_seq OWNED BY public.equipment.id;
          public          gabriel    false    252            �            1259    16406    equipmentbrokenperiod    TABLE       CREATE TABLE public.equipmentbrokenperiod (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    equipmentid bigint,
    startdatetime timestamp with time zone,
    enddatetime timestamp with time zone
);
 )   DROP TABLE public.equipmentbrokenperiod;
       public         heap    gabriel    false            �            1259    16529    equipmentchangelogentry    TABLE       CREATE TABLE public.equipmentchangelogentry (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    equipmentid bigint,
    "timestamp" timestamp with time zone,
    description text,
    userid bigint
);
 +   DROP TABLE public.equipmentchangelogentry;
       public         heap    gabriel    false            �            1259    16528    equipmentchangelogentry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipmentchangelogentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.equipmentchangelogentry_id_seq;
       public          gabriel    false    251            S           0    0    equipmentchangelogentry_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.equipmentchangelogentry_id_seq OWNED BY public.equipmentchangelogentry.id;
          public          gabriel    false    250            �            1259    16501    equipmentlist    TABLE     �  CREATE TABLE public.equipmentlist (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    bookingid bigint,
    equipmentoutdatetime timestamp with time zone,
    equipmentindatetime timestamp with time zone,
    usagestartdatetime timestamp with time zone,
    usageenddatetime timestamp with time zone,
    sortindex bigint DEFAULT '0'::bigint,
    rentalstatus bigint,
    numberofdays bigint
);
 !   DROP TABLE public.equipmentlist;
       public         heap    gabriel    false            �            1259    16500    equipmentlist_id_seq    SEQUENCE     }   CREATE SEQUENCE public.equipmentlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.equipmentlist_id_seq;
       public          gabriel    false    243            T           0    0    equipmentlist_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.equipmentlist_id_seq OWNED BY public.equipmentlist.id;
          public          gabriel    false    242                       1259    16553    equipmentlistentry    TABLE       CREATE TABLE public.equipmentlistentry (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    equipmentlistid bigint,
    equipmentid bigint,
    numberofunits bigint,
    numberofhours bigint,
    description text,
    priceperunit bigint,
    priceperhour bigint,
    equipmentpriceid bigint,
    sortindex bigint DEFAULT '0'::bigint,
    discount bigint,
    equipmentlistheadingid bigint,
    ishidden boolean DEFAULT false,
    account text
);
 &   DROP TABLE public.equipmentlistentry;
       public         heap    gabriel    false                        1259    16552    equipmentlistentry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipmentlistentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.equipmentlistentry_id_seq;
       public          gabriel    false    257            U           0    0    equipmentlistentry_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.equipmentlistentry_id_seq OWNED BY public.equipmentlistentry.id;
          public          gabriel    false    256            �            1259    16545    equipmentlistheading    TABLE     �   CREATE TABLE public.equipmentlistheading (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    equipmentlistid bigint,
    description text,
    sortindex bigint DEFAULT '0'::bigint
);
 (   DROP TABLE public.equipmentlistheading;
       public         heap    gabriel    false            �            1259    16544    equipmentlistheading_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipmentlistheading_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.equipmentlistheading_id_seq;
       public          gabriel    false    255            V           0    0    equipmentlistheading_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.equipmentlistheading_id_seq OWNED BY public.equipmentlistheading.id;
          public          gabriel    false    254            �            1259    16441    equipmentlocation    TABLE     �   CREATE TABLE public.equipmentlocation (
    id bigint NOT NULL,
    name text,
    description text,
    sortindex bigint,
    created timestamp with time zone,
    updated timestamp with time zone
);
 %   DROP TABLE public.equipmentlocation;
       public         heap    gabriel    false            �            1259    16440    equipmentlocation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipmentlocation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.equipmentlocation_id_seq;
       public          gabriel    false    227            W           0    0    equipmentlocation_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.equipmentlocation_id_seq OWNED BY public.equipmentlocation.id;
          public          gabriel    false    226            �            1259    16412    equipmentpackage    TABLE     A  CREATE TABLE public.equipmentpackage (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    note text,
    imageid bigint,
    estimatedhours bigint,
    nameen text,
    description text,
    descriptionen text,
    addasheading boolean DEFAULT false
);
 $   DROP TABLE public.equipmentpackage;
       public         heap    gabriel    false            �            1259    16411    equipmentpackage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipmentpackage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.equipmentpackage_id_seq;
       public          gabriel    false    219            X           0    0    equipmentpackage_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.equipmentpackage_id_seq OWNED BY public.equipmentpackage.id;
          public          gabriel    false    218            �            1259    16509    equipmentpackageentry    TABLE     )  CREATE TABLE public.equipmentpackageentry (
    id bigint NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    equipmentid bigint,
    equipmentpackageid bigint,
    numberofunits bigint,
    isfree boolean DEFAULT false,
    ishidden boolean DEFAULT false
);
 )   DROP TABLE public.equipmentpackageentry;
       public         heap    gabriel    false            �            1259    16508    equipmentpackageentry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipmentpackageentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.equipmentpackageentry_id_seq;
       public          gabriel    false    245            Y           0    0    equipmentpackageentry_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.equipmentpackageentry_id_seq OWNED BY public.equipmentpackageentry.id;
          public          gabriel    false    244            �            1259    16494    equipmentprice    TABLE       CREATE TABLE public.equipmentprice (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    equipmentid bigint,
    priceperunit bigint,
    priceperhour bigint,
    priceperunitths bigint,
    priceperhourths bigint
);
 "   DROP TABLE public.equipmentprice;
       public         heap    gabriel    false            �            1259    16493    equipmentprice_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.equipmentprice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.equipmentprice_id_seq;
       public          gabriel    false    241            Z           0    0    equipmentprice_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.equipmentprice_id_seq OWNED BY public.equipmentprice.id;
          public          gabriel    false    240            �            1259    16434    equipmentpubliccategory    TABLE     �   CREATE TABLE public.equipmentpubliccategory (
    id bigint NOT NULL,
    name text,
    description text,
    sortindex bigint,
    created timestamp with time zone,
    updated timestamp with time zone
);
 +   DROP TABLE public.equipmentpubliccategory;
       public         heap    gabriel    false            �            1259    16433    equipmentpubliccategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipmentpubliccategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.equipmentpubliccategory_id_seq;
       public          gabriel    false    225            [           0    0    equipmentpubliccategory_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.equipmentpubliccategory_id_seq OWNED BY public.equipmentpubliccategory.id;
          public          gabriel    false    224            �            1259    16420    equipmenttag    TABLE     �   CREATE TABLE public.equipmenttag (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    color text
);
     DROP TABLE public.equipmenttag;
       public         heap    gabriel    false            �            1259    16419    equipmenttag_id_seq    SEQUENCE     |   CREATE SEQUENCE public.equipmenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.equipmenttag_id_seq;
       public          gabriel    false    221            \           0    0    equipmenttag_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.equipmenttag_id_seq OWNED BY public.equipmenttag.id;
          public          gabriel    false    220            �            1259    16515    equipmenttagequipment    TABLE     s   CREATE TABLE public.equipmenttagequipment (
    equipmentid bigint NOT NULL,
    equipmenttagid bigint NOT NULL
);
 )   DROP TABLE public.equipmenttagequipment;
       public         heap    gabriel    false            �            1259    16518    equipmenttagequipmentpackage    TABLE     �   CREATE TABLE public.equipmenttagequipmentpackage (
    equipmentpackageid bigint NOT NULL,
    equipmenttagid bigint NOT NULL
);
 0   DROP TABLE public.equipmenttagequipmentpackage;
       public         heap    gabriel    false            �            1259    16401    image    TABLE     �   CREATE TABLE public.image (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    imageurl text
);
    DROP TABLE public.image;
       public         heap    gabriel    false            �            1259    16484    invoicegroup    TABLE     �   CREATE TABLE public.invoicegroup (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    userid bigint
);
     DROP TABLE public.invoicegroup;
       public         heap    gabriel    false            �            1259    16483    invoicegroup_id_seq    SEQUENCE     |   CREATE SEQUENCE public.invoicegroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.invoicegroup_id_seq;
       public          gabriel    false    238            ]           0    0    invoicegroup_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.invoicegroup_id_seq OWNED BY public.invoicegroup.id;
          public          gabriel    false    237            �            1259    16387    knex_migrations    TABLE     �   CREATE TABLE public.knex_migrations (
    id bigint NOT NULL,
    name text,
    batch bigint,
    migration_time timestamp with time zone
);
 #   DROP TABLE public.knex_migrations;
       public         heap    gabriel    false            �            1259    16386    knex_migrations_id_seq    SEQUENCE        CREATE SEQUENCE public.knex_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.knex_migrations_id_seq;
       public          gabriel    false    212            ^           0    0    knex_migrations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;
          public          gabriel    false    211            �            1259    16394    knex_migrations_lock    TABLE     ^   CREATE TABLE public.knex_migrations_lock (
    index bigint NOT NULL,
    is_locked bigint
);
 (   DROP TABLE public.knex_migrations_lock;
       public         heap    gabriel    false            �            1259    16393    knex_migrations_lock_index_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_lock_index_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.knex_migrations_lock_index_seq;
       public          gabriel    false    214            _           0    0    knex_migrations_lock_index_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;
          public          gabriel    false    213            �            1259    16475    salarygroup    TABLE     �   CREATE TABLE public.salarygroup (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    userid bigint
);
    DROP TABLE public.salarygroup;
       public         heap    gabriel    false                       1259    16569    setting    TABLE     �   CREATE TABLE public.setting (
    id bigint NOT NULL,
    note text,
    value text,
    created timestamp with time zone,
    updated timestamp with time zone,
    key text
);
    DROP TABLE public.setting;
       public         heap    gabriel    false                       1259    16568    setting_id_seq    SEQUENCE     w   CREATE SEQUENCE public.setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.setting_id_seq;
       public          gabriel    false    261            `           0    0    setting_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.setting_id_seq OWNED BY public.setting.id;
          public          gabriel    false    260            �            1259    16468    timeestimate    TABLE       CREATE TABLE public.timeestimate (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    bookingid bigint,
    numberofhours bigint,
    priceperhour bigint,
    sortindex bigint DEFAULT '0'::bigint
);
     DROP TABLE public.timeestimate;
       public         heap    gabriel    false            �            1259    16467    timeestimate_id_seq    SEQUENCE     |   CREATE SEQUENCE public.timeestimate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.timeestimate_id_seq;
       public          gabriel    false    234            a           0    0    timeestimate_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.timeestimate_id_seq OWNED BY public.timeestimate.id;
          public          gabriel    false    233            �            1259    16460 
   timereport    TABLE     �  CREATE TABLE public.timereport (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    bookingid bigint,
    userid bigint,
    actualworkinghours bigint,
    billableworkinghours bigint,
    startdatetime timestamp with time zone,
    enddatetime timestamp with time zone,
    priceperhour bigint,
    accountkind bigint,
    sortindex bigint DEFAULT '0'::bigint
);
    DROP TABLE public.timereport;
       public         heap    gabriel    false            �            1259    16459    timereport_id_seq    SEQUENCE     z   CREATE SEQUENCE public.timereport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.timereport_id_seq;
       public          gabriel    false    232            b           0    0    timereport_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.timereport_id_seq OWNED BY public.timereport.id;
          public          gabriel    false    231            �            1259    16427    user    TABLE     �  CREATE TABLE public."user" (
    id bigint NOT NULL,
    name text,
    created timestamp with time zone,
    updated timestamp with time zone,
    memberstatus bigint,
    nametag text,
    phonenumber text,
    slackid text,
    personalidentitynumber text,
    bankname text,
    clearingnumber text,
    bankaccount text,
    homeaddress text,
    zipcode text,
    emailaddress text
);
    DROP TABLE public."user";
       public         heap    gabriel    false            �            1259    16426    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          gabriel    false    223            c           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          gabriel    false    222            �            1259    16447    userauth    TABLE     z   CREATE TABLE public.userauth (
    userid bigint NOT NULL,
    username text,
    hashedpassword text,
    role bigint
);
    DROP TABLE public.userauth;
       public         heap    gabriel    false                       2604    16456 
   booking id    DEFAULT     h   ALTER TABLE ONLY public.booking ALTER COLUMN id SET DEFAULT nextval('public.booking_id_seq'::regclass);
 9   ALTER TABLE public.booking ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    230    229    230                       2604    16525    bookingchangelogentry id    DEFAULT     �   ALTER TABLE ONLY public.bookingchangelogentry ALTER COLUMN id SET DEFAULT nextval('public.bookingchangelogentry_id_seq'::regclass);
 G   ALTER TABLE public.bookingchangelogentry ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    248    249    249            $           2604    16565    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    258    259    259                       2604    16539    equipment id    DEFAULT     l   ALTER TABLE ONLY public.equipment ALTER COLUMN id SET DEFAULT nextval('public.equipment_id_seq'::regclass);
 ;   ALTER TABLE public.equipment ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    253    252    253                       2604    16532    equipmentchangelogentry id    DEFAULT     �   ALTER TABLE ONLY public.equipmentchangelogentry ALTER COLUMN id SET DEFAULT nextval('public.equipmentchangelogentry_id_seq'::regclass);
 I   ALTER TABLE public.equipmentchangelogentry ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    251    250    251                       2604    16504    equipmentlist id    DEFAULT     t   ALTER TABLE ONLY public.equipmentlist ALTER COLUMN id SET DEFAULT nextval('public.equipmentlist_id_seq'::regclass);
 ?   ALTER TABLE public.equipmentlist ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    243    242    243            !           2604    16556    equipmentlistentry id    DEFAULT     ~   ALTER TABLE ONLY public.equipmentlistentry ALTER COLUMN id SET DEFAULT nextval('public.equipmentlistentry_id_seq'::regclass);
 D   ALTER TABLE public.equipmentlistentry ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    256    257    257                       2604    16548    equipmentlistheading id    DEFAULT     �   ALTER TABLE ONLY public.equipmentlistheading ALTER COLUMN id SET DEFAULT nextval('public.equipmentlistheading_id_seq'::regclass);
 F   ALTER TABLE public.equipmentlistheading ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    255    254    255                       2604    16444    equipmentlocation id    DEFAULT     |   ALTER TABLE ONLY public.equipmentlocation ALTER COLUMN id SET DEFAULT nextval('public.equipmentlocation_id_seq'::regclass);
 C   ALTER TABLE public.equipmentlocation ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    226    227    227                       2604    16415    equipmentpackage id    DEFAULT     z   ALTER TABLE ONLY public.equipmentpackage ALTER COLUMN id SET DEFAULT nextval('public.equipmentpackage_id_seq'::regclass);
 B   ALTER TABLE public.equipmentpackage ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    219    218    219                       2604    16512    equipmentpackageentry id    DEFAULT     �   ALTER TABLE ONLY public.equipmentpackageentry ALTER COLUMN id SET DEFAULT nextval('public.equipmentpackageentry_id_seq'::regclass);
 G   ALTER TABLE public.equipmentpackageentry ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    245    244    245                       2604    16497    equipmentprice id    DEFAULT     v   ALTER TABLE ONLY public.equipmentprice ALTER COLUMN id SET DEFAULT nextval('public.equipmentprice_id_seq'::regclass);
 @   ALTER TABLE public.equipmentprice ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    241    240    241                       2604    16437    equipmentpubliccategory id    DEFAULT     �   ALTER TABLE ONLY public.equipmentpubliccategory ALTER COLUMN id SET DEFAULT nextval('public.equipmentpubliccategory_id_seq'::regclass);
 I   ALTER TABLE public.equipmentpubliccategory ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    225    224    225            
           2604    16423    equipmenttag id    DEFAULT     r   ALTER TABLE ONLY public.equipmenttag ALTER COLUMN id SET DEFAULT nextval('public.equipmenttag_id_seq'::regclass);
 >   ALTER TABLE public.equipmenttag ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    220    221    221                       2604    16487    invoicegroup id    DEFAULT     r   ALTER TABLE ONLY public.invoicegroup ALTER COLUMN id SET DEFAULT nextval('public.invoicegroup_id_seq'::regclass);
 >   ALTER TABLE public.invoicegroup ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    237    238    238                       2604    16390    knex_migrations id    DEFAULT     x   ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);
 A   ALTER TABLE public.knex_migrations ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    211    212    212                       2604    16397    knex_migrations_lock index    DEFAULT     �   ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);
 I   ALTER TABLE public.knex_migrations_lock ALTER COLUMN index DROP DEFAULT;
       public          gabriel    false    214    213    214            %           2604    16572 
   setting id    DEFAULT     h   ALTER TABLE ONLY public.setting ALTER COLUMN id SET DEFAULT nextval('public.setting_id_seq'::regclass);
 9   ALTER TABLE public.setting ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    260    261    261                       2604    16471    timeestimate id    DEFAULT     r   ALTER TABLE ONLY public.timeestimate ALTER COLUMN id SET DEFAULT nextval('public.timeestimate_id_seq'::regclass);
 >   ALTER TABLE public.timeestimate ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    234    233    234                       2604    16463    timereport id    DEFAULT     n   ALTER TABLE ONLY public.timereport ALTER COLUMN id SET DEFAULT nextval('public.timereport_id_seq'::regclass);
 <   ALTER TABLE public.timereport ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    232    231    232                       2604    16430    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          gabriel    false    222    223    223            )          0    16453    booking 
   TABLE DATA           S  COPY public.booking (id, name, created, updated, owneruserid, bookingtype, status, salarystatus, invoicehogiaid, invoiceaddress, invoicetag, invoicenumber, note, returnalnote, priceplan, accountkind, location, contactpersonname, contactpersonphone, contactpersonemail, calendarbookingid, customername, paymentstatus, language) FROM stdin;
    public          gabriel    false    230   �%      <          0    16522    bookingchangelogentry 
   TABLE DATA           x   COPY public.bookingchangelogentry (id, name, created, updated, bookingid, "timestamp", description, userid) FROM stdin;
    public          gabriel    false    249   �)      2          0    16490    bookinginvoicegroup 
   TABLE DATA           H   COPY public.bookinginvoicegroup (bookingid, invoicegroupid) FROM stdin;
    public          gabriel    false    239   n3      /          0    16480    bookingsalarygroup 
   TABLE DATA           F   COPY public.bookingsalarygroup (bookingid, salarygroupid) FROM stdin;
    public          gabriel    false    236   �3                0    16398    coowner 
   TABLE DATA           4   COPY public.coowner (bookingid, userid) FROM stdin;
    public          gabriel    false    215   �3      F          0    16562    customer 
   TABLE DATA           �   COPY public.customer (id, name, created, updated, priceplan, accountkind, invoicehogiaid, invoiceaddress, language) FROM stdin;
    public          gabriel    false    259   �3      @          0    16536 	   equipment 
   TABLE DATA           �   COPY public.equipment (id, name, created, updated, equipmentpackageid, inventorycount, nameen, description, descriptionen, note, imageid, publiclyhidden, equipmentpubliccategoryid, equipmentlocationid, isarchived, searchkeywords) FROM stdin;
    public          gabriel    false    253   8                0    16406    equipmentbrokenperiod 
   TABLE DATA           t   COPY public.equipmentbrokenperiod (id, name, created, updated, equipmentid, startdatetime, enddatetime) FROM stdin;
    public          gabriel    false    217   �[      >          0    16529    equipmentchangelogentry 
   TABLE DATA           |   COPY public.equipmentchangelogentry (id, name, created, updated, equipmentid, "timestamp", description, userid) FROM stdin;
    public          gabriel    false    251   �[      6          0    16501    equipmentlist 
   TABLE DATA           �   COPY public.equipmentlist (id, name, created, updated, bookingid, equipmentoutdatetime, equipmentindatetime, usagestartdatetime, usageenddatetime, sortindex, rentalstatus, numberofdays) FROM stdin;
    public          gabriel    false    243   }p      D          0    16553    equipmentlistentry 
   TABLE DATA           �   COPY public.equipmentlistentry (id, name, created, updated, equipmentlistid, equipmentid, numberofunits, numberofhours, description, priceperunit, priceperhour, equipmentpriceid, sortindex, discount, equipmentlistheadingid, ishidden, account) FROM stdin;
    public          gabriel    false    257   u      B          0    16545    equipmentlistheading 
   TABLE DATA           s   COPY public.equipmentlistheading (id, name, created, updated, equipmentlistid, description, sortindex) FROM stdin;
    public          gabriel    false    255   ѓ      &          0    16441    equipmentlocation 
   TABLE DATA           _   COPY public.equipmentlocation (id, name, description, sortindex, created, updated) FROM stdin;
    public          gabriel    false    227   ��                0    16412    equipmentpackage 
   TABLE DATA           �   COPY public.equipmentpackage (id, name, created, updated, note, imageid, estimatedhours, nameen, description, descriptionen, addasheading) FROM stdin;
    public          gabriel    false    219   �      8          0    16509    equipmentpackageentry 
   TABLE DATA           �   COPY public.equipmentpackageentry (id, created, updated, equipmentid, equipmentpackageid, numberofunits, isfree, ishidden) FROM stdin;
    public          gabriel    false    245   ��      4          0    16494    equipmentprice 
   TABLE DATA           �   COPY public.equipmentprice (id, name, created, updated, equipmentid, priceperunit, priceperhour, priceperunitths, priceperhourths) FROM stdin;
    public          gabriel    false    241   ��      $          0    16434    equipmentpubliccategory 
   TABLE DATA           e   COPY public.equipmentpubliccategory (id, name, description, sortindex, created, updated) FROM stdin;
    public          gabriel    false    225   ��                 0    16420    equipmenttag 
   TABLE DATA           I   COPY public.equipmenttag (id, name, created, updated, color) FROM stdin;
    public          gabriel    false    221   ��      9          0    16515    equipmenttagequipment 
   TABLE DATA           L   COPY public.equipmenttagequipment (equipmentid, equipmenttagid) FROM stdin;
    public          gabriel    false    246   d�      :          0    16518    equipmenttagequipmentpackage 
   TABLE DATA           Z   COPY public.equipmenttagequipmentpackage (equipmentpackageid, equipmenttagid) FROM stdin;
    public          gabriel    false    247   P�                0    16401    image 
   TABLE DATA           E   COPY public.image (id, name, created, updated, imageurl) FROM stdin;
    public          gabriel    false    216   ��      1          0    16484    invoicegroup 
   TABLE DATA           J   COPY public.invoicegroup (id, name, created, updated, userid) FROM stdin;
    public          gabriel    false    238   ��                0    16387    knex_migrations 
   TABLE DATA           J   COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
    public          gabriel    false    212   �                0    16394    knex_migrations_lock 
   TABLE DATA           @   COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
    public          gabriel    false    214   /�      .          0    16475    salarygroup 
   TABLE DATA           I   COPY public.salarygroup (id, name, created, updated, userid) FROM stdin;
    public          gabriel    false    235   P�      H          0    16569    setting 
   TABLE DATA           I   COPY public.setting (id, note, value, created, updated, key) FROM stdin;
    public          gabriel    false    261   m�      -          0    16468    timeestimate 
   TABLE DATA           u   COPY public.timeestimate (id, name, created, updated, bookingid, numberofhours, priceperhour, sortindex) FROM stdin;
    public          gabriel    false    234   A7      +          0    16460 
   timereport 
   TABLE DATA           �   COPY public.timereport (id, name, created, updated, bookingid, userid, actualworkinghours, billableworkinghours, startdatetime, enddatetime, priceperhour, accountkind, sortindex) FROM stdin;
    public          gabriel    false    232   h9      "          0    16427    user 
   TABLE DATA           �   COPY public."user" (id, name, created, updated, memberstatus, nametag, phonenumber, slackid, personalidentitynumber, bankname, clearingnumber, bankaccount, homeaddress, zipcode, emailaddress) FROM stdin;
    public          gabriel    false    223   �9      '          0    16447    userauth 
   TABLE DATA           J   COPY public.userauth (userid, username, hashedpassword, role) FROM stdin;
    public          gabriel    false    228   �<      d           0    0    booking_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.booking_id_seq', 25, true);
          public          gabriel    false    229            e           0    0    bookingchangelogentry_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.bookingchangelogentry_id_seq', 109, true);
          public          gabriel    false    248            f           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 40, true);
          public          gabriel    false    258            g           0    0    equipment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.equipment_id_seq', 183, true);
          public          gabriel    false    252            h           0    0    equipmentchangelogentry_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.equipmentchangelogentry_id_seq', 425, true);
          public          gabriel    false    250            i           0    0    equipmentlist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.equipmentlist_id_seq', 52, true);
          public          gabriel    false    242            j           0    0    equipmentlistentry_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.equipmentlistentry_id_seq', 1844, true);
          public          gabriel    false    256            k           0    0    equipmentlistheading_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.equipmentlistheading_id_seq', 67, true);
          public          gabriel    false    254            l           0    0    equipmentlocation_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.equipmentlocation_id_seq', 16, true);
          public          gabriel    false    226            m           0    0    equipmentpackage_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.equipmentpackage_id_seq', 7, true);
          public          gabriel    false    218            n           0    0    equipmentpackageentry_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.equipmentpackageentry_id_seq', 47, true);
          public          gabriel    false    244            o           0    0    equipmentprice_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.equipmentprice_id_seq', 182, true);
          public          gabriel    false    240            p           0    0    equipmentpubliccategory_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.equipmentpubliccategory_id_seq', 9, true);
          public          gabriel    false    224            q           0    0    equipmenttag_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.equipmenttag_id_seq', 44, true);
          public          gabriel    false    220            r           0    0    invoicegroup_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.invoicegroup_id_seq', 2, true);
          public          gabriel    false    237            s           0    0    knex_migrations_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.knex_migrations_id_seq', 1, true);
          public          gabriel    false    211            t           0    0    knex_migrations_lock_index_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);
          public          gabriel    false    213            u           0    0    setting_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.setting_id_seq', 20, true);
          public          gabriel    false    260            v           0    0    timeestimate_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.timeestimate_id_seq', 31, true);
          public          gabriel    false    233            w           0    0    timereport_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.timereport_id_seq', 1, true);
          public          gabriel    false    231            x           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 16, true);
          public          gabriel    false    222            '           2606    16622 .   knex_migrations idx_16387_knex_migrations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT idx_16387_knex_migrations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.knex_migrations DROP CONSTRAINT idx_16387_knex_migrations_pkey;
       public            gabriel    false    212            )           2606    16621 8   knex_migrations_lock idx_16394_knex_migrations_lock_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT idx_16394_knex_migrations_lock_pkey PRIMARY KEY (index);
 b   ALTER TABLE ONLY public.knex_migrations_lock DROP CONSTRAINT idx_16394_knex_migrations_lock_pkey;
       public            gabriel    false    214            +           2606    16620    coowner idx_16398_coowner_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.coowner
    ADD CONSTRAINT idx_16398_coowner_pkey PRIMARY KEY (bookingid, userid);
 H   ALTER TABLE ONLY public.coowner DROP CONSTRAINT idx_16398_coowner_pkey;
       public            gabriel    false    215    215            .           2606    16619    image idx_16401_image_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.image
    ADD CONSTRAINT idx_16401_image_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.image DROP CONSTRAINT idx_16401_image_pkey;
       public            gabriel    false    216            0           2606    16624 :   equipmentbrokenperiod idx_16406_equipmentbrokenperiod_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.equipmentbrokenperiod
    ADD CONSTRAINT idx_16406_equipmentbrokenperiod_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.equipmentbrokenperiod DROP CONSTRAINT idx_16406_equipmentbrokenperiod_pkey;
       public            gabriel    false    217            2           2606    16623 0   equipmentpackage idx_16412_equipmentpackage_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.equipmentpackage
    ADD CONSTRAINT idx_16412_equipmentpackage_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.equipmentpackage DROP CONSTRAINT idx_16412_equipmentpackage_pkey;
       public            gabriel    false    219            4           2606    16626 (   equipmenttag idx_16420_equipmenttag_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.equipmenttag
    ADD CONSTRAINT idx_16420_equipmenttag_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.equipmenttag DROP CONSTRAINT idx_16420_equipmenttag_pkey;
       public            gabriel    false    221            6           2606    16625    user idx_16427_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT idx_16427_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."user" DROP CONSTRAINT idx_16427_user_pkey;
       public            gabriel    false    223            8           2606    16628 >   equipmentpubliccategory idx_16434_equipmentpubliccategory_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.equipmentpubliccategory
    ADD CONSTRAINT idx_16434_equipmentpubliccategory_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.equipmentpubliccategory DROP CONSTRAINT idx_16434_equipmentpubliccategory_pkey;
       public            gabriel    false    225            :           2606    16627 2   equipmentlocation idx_16441_equipmentlocation_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.equipmentlocation
    ADD CONSTRAINT idx_16441_equipmentlocation_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.equipmentlocation DROP CONSTRAINT idx_16441_equipmentlocation_pkey;
       public            gabriel    false    227            <           2606    16630     userauth idx_16447_userauth_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.userauth
    ADD CONSTRAINT idx_16447_userauth_pkey PRIMARY KEY (userid);
 J   ALTER TABLE ONLY public.userauth DROP CONSTRAINT idx_16447_userauth_pkey;
       public            gabriel    false    228            ?           2606    16629    booking idx_16453_booking_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT idx_16453_booking_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.booking DROP CONSTRAINT idx_16453_booking_pkey;
       public            gabriel    false    230            A           2606    16632 $   timereport idx_16460_timereport_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.timereport
    ADD CONSTRAINT idx_16460_timereport_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.timereport DROP CONSTRAINT idx_16460_timereport_pkey;
       public            gabriel    false    232            C           2606    16631 (   timeestimate idx_16468_timeestimate_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.timeestimate
    ADD CONSTRAINT idx_16468_timeestimate_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.timeestimate DROP CONSTRAINT idx_16468_timeestimate_pkey;
       public            gabriel    false    234            E           2606    16634 &   salarygroup idx_16475_salarygroup_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.salarygroup
    ADD CONSTRAINT idx_16475_salarygroup_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.salarygroup DROP CONSTRAINT idx_16475_salarygroup_pkey;
       public            gabriel    false    235            G           2606    16633 4   bookingsalarygroup idx_16480_bookingsalarygroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.bookingsalarygroup
    ADD CONSTRAINT idx_16480_bookingsalarygroup_pkey PRIMARY KEY (bookingid, salarygroupid);
 ^   ALTER TABLE ONLY public.bookingsalarygroup DROP CONSTRAINT idx_16480_bookingsalarygroup_pkey;
       public            gabriel    false    236    236            J           2606    16636 (   invoicegroup idx_16484_invoicegroup_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.invoicegroup
    ADD CONSTRAINT idx_16484_invoicegroup_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.invoicegroup DROP CONSTRAINT idx_16484_invoicegroup_pkey;
       public            gabriel    false    238            L           2606    16635 6   bookinginvoicegroup idx_16490_bookinginvoicegroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.bookinginvoicegroup
    ADD CONSTRAINT idx_16490_bookinginvoicegroup_pkey PRIMARY KEY (bookingid, invoicegroupid);
 `   ALTER TABLE ONLY public.bookinginvoicegroup DROP CONSTRAINT idx_16490_bookinginvoicegroup_pkey;
       public            gabriel    false    239    239            O           2606    16638 ,   equipmentprice idx_16494_equipmentprice_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.equipmentprice
    ADD CONSTRAINT idx_16494_equipmentprice_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.equipmentprice DROP CONSTRAINT idx_16494_equipmentprice_pkey;
       public            gabriel    false    241            Q           2606    16637 *   equipmentlist idx_16501_equipmentlist_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.equipmentlist
    ADD CONSTRAINT idx_16501_equipmentlist_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.equipmentlist DROP CONSTRAINT idx_16501_equipmentlist_pkey;
       public            gabriel    false    243            S           2606    16639 :   equipmentpackageentry idx_16509_equipmentpackageentry_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.equipmentpackageentry
    ADD CONSTRAINT idx_16509_equipmentpackageentry_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.equipmentpackageentry DROP CONSTRAINT idx_16509_equipmentpackageentry_pkey;
       public            gabriel    false    245            U           2606    16640 :   equipmenttagequipment idx_16515_equipmenttagequipment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.equipmenttagequipment
    ADD CONSTRAINT idx_16515_equipmenttagequipment_pkey PRIMARY KEY (equipmentid, equipmenttagid);
 d   ALTER TABLE ONLY public.equipmenttagequipment DROP CONSTRAINT idx_16515_equipmenttagequipment_pkey;
       public            gabriel    false    246    246            X           2606    16642 H   equipmenttagequipmentpackage idx_16518_equipmenttagequipmentpackage_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.equipmenttagequipmentpackage
    ADD CONSTRAINT idx_16518_equipmenttagequipmentpackage_pkey PRIMARY KEY (equipmentpackageid, equipmenttagid);
 r   ALTER TABLE ONLY public.equipmenttagequipmentpackage DROP CONSTRAINT idx_16518_equipmenttagequipmentpackage_pkey;
       public            gabriel    false    247    247            [           2606    16641 :   bookingchangelogentry idx_16522_bookingchangelogentry_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.bookingchangelogentry
    ADD CONSTRAINT idx_16522_bookingchangelogentry_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.bookingchangelogentry DROP CONSTRAINT idx_16522_bookingchangelogentry_pkey;
       public            gabriel    false    249            ]           2606    16644 >   equipmentchangelogentry idx_16529_equipmentchangelogentry_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.equipmentchangelogentry
    ADD CONSTRAINT idx_16529_equipmentchangelogentry_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.equipmentchangelogentry DROP CONSTRAINT idx_16529_equipmentchangelogentry_pkey;
       public            gabriel    false    251            _           2606    16643 "   equipment idx_16536_equipment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT idx_16536_equipment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.equipment DROP CONSTRAINT idx_16536_equipment_pkey;
       public            gabriel    false    253            a           2606    16645 8   equipmentlistheading idx_16545_equipmentlistheading_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.equipmentlistheading
    ADD CONSTRAINT idx_16545_equipmentlistheading_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.equipmentlistheading DROP CONSTRAINT idx_16545_equipmentlistheading_pkey;
       public            gabriel    false    255            c           2606    16646 4   equipmentlistentry idx_16553_equipmentlistentry_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.equipmentlistentry
    ADD CONSTRAINT idx_16553_equipmentlistentry_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.equipmentlistentry DROP CONSTRAINT idx_16553_equipmentlistentry_pkey;
       public            gabriel    false    257            e           2606    16647     customer idx_16562_customer_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT idx_16562_customer_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.customer DROP CONSTRAINT idx_16562_customer_pkey;
       public            gabriel    false    259            h           2606    16648    setting idx_16569_setting_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.setting
    ADD CONSTRAINT idx_16569_setting_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.setting DROP CONSTRAINT idx_16569_setting_pkey;
       public            gabriel    false    261            ,           1259    16578 $   idx_16398_sqlite_autoindex_coowner_1    INDEX     l   CREATE UNIQUE INDEX idx_16398_sqlite_autoindex_coowner_1 ON public.coowner USING btree (bookingid, userid);
 8   DROP INDEX public.idx_16398_sqlite_autoindex_coowner_1;
       public            gabriel    false    215    215            =           1259    16589 "   idx_16447_userauth_username_unique    INDEX     b   CREATE UNIQUE INDEX idx_16447_userauth_username_unique ON public.userauth USING btree (username);
 6   DROP INDEX public.idx_16447_userauth_username_unique;
       public            gabriel    false    228            H           1259    16593 /   idx_16480_sqlite_autoindex_bookingsalarygroup_1    INDEX     �   CREATE UNIQUE INDEX idx_16480_sqlite_autoindex_bookingsalarygroup_1 ON public.bookingsalarygroup USING btree (bookingid, salarygroupid);
 C   DROP INDEX public.idx_16480_sqlite_autoindex_bookingsalarygroup_1;
       public            gabriel    false    236    236            M           1259    16597 0   idx_16490_sqlite_autoindex_bookinginvoicegroup_1    INDEX     �   CREATE UNIQUE INDEX idx_16490_sqlite_autoindex_bookinginvoicegroup_1 ON public.bookinginvoicegroup USING btree (bookingid, invoicegroupid);
 D   DROP INDEX public.idx_16490_sqlite_autoindex_bookinginvoicegroup_1;
       public            gabriel    false    239    239            V           1259    16603 2   idx_16515_sqlite_autoindex_equipmenttagequipment_1    INDEX     �   CREATE UNIQUE INDEX idx_16515_sqlite_autoindex_equipmenttagequipment_1 ON public.equipmenttagequipment USING btree (equipmentid, equipmenttagid);
 F   DROP INDEX public.idx_16515_sqlite_autoindex_equipmenttagequipment_1;
       public            gabriel    false    246    246            Y           1259    16605 9   idx_16518_sqlite_autoindex_equipmenttagequipmentpackage_1    INDEX     �   CREATE UNIQUE INDEX idx_16518_sqlite_autoindex_equipmenttagequipmentpackage_1 ON public.equipmenttagequipmentpackage USING btree (equipmentpackageid, equipmenttagid);
 M   DROP INDEX public.idx_16518_sqlite_autoindex_equipmenttagequipmentpackage_1;
       public            gabriel    false    247    247            f           1259    16613    idx_16569_setting_key_unique    INDEX     V   CREATE UNIQUE INDEX idx_16569_setting_key_unique ON public.setting USING btree (key);
 0   DROP INDEX public.idx_16569_setting_key_unique;
       public            gabriel    false    261            n           2606    16674     booking booking_owneruserid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_owneruserid_fkey FOREIGN KEY (owneruserid) REFERENCES public."user"(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_owneruserid_fkey;
       public          gabriel    false    230    3638    223            �           2606    16769 :   bookingchangelogentry bookingchangelogentry_bookingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookingchangelogentry
    ADD CONSTRAINT bookingchangelogentry_bookingid_fkey FOREIGN KEY (bookingid) REFERENCES public.booking(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.bookingchangelogentry DROP CONSTRAINT bookingchangelogentry_bookingid_fkey;
       public          gabriel    false    249    3647    230            �           2606    16764 7   bookingchangelogentry bookingchangelogentry_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookingchangelogentry
    ADD CONSTRAINT bookingchangelogentry_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id) ON DELETE SET NULL;
 a   ALTER TABLE ONLY public.bookingchangelogentry DROP CONSTRAINT bookingchangelogentry_userid_fkey;
       public          gabriel    false    249    223    3638            w           2606    16719 6   bookinginvoicegroup bookinginvoicegroup_bookingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookinginvoicegroup
    ADD CONSTRAINT bookinginvoicegroup_bookingid_fkey FOREIGN KEY (bookingid) REFERENCES public.booking(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.bookinginvoicegroup DROP CONSTRAINT bookinginvoicegroup_bookingid_fkey;
       public          gabriel    false    230    3647    239            v           2606    16714 ;   bookinginvoicegroup bookinginvoicegroup_invoicegroupid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookinginvoicegroup
    ADD CONSTRAINT bookinginvoicegroup_invoicegroupid_fkey FOREIGN KEY (invoicegroupid) REFERENCES public.invoicegroup(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.bookinginvoicegroup DROP CONSTRAINT bookinginvoicegroup_invoicegroupid_fkey;
       public          gabriel    false    238    3658    239            t           2606    16704 4   bookingsalarygroup bookingsalarygroup_bookingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookingsalarygroup
    ADD CONSTRAINT bookingsalarygroup_bookingid_fkey FOREIGN KEY (bookingid) REFERENCES public.booking(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.bookingsalarygroup DROP CONSTRAINT bookingsalarygroup_bookingid_fkey;
       public          gabriel    false    236    230    3647            s           2606    16699 8   bookingsalarygroup bookingsalarygroup_salarygroupid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookingsalarygroup
    ADD CONSTRAINT bookingsalarygroup_salarygroupid_fkey FOREIGN KEY (salarygroupid) REFERENCES public.salarygroup(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.bookingsalarygroup DROP CONSTRAINT bookingsalarygroup_salarygroupid_fkey;
       public          gabriel    false    235    3653    236            j           2606    16654    coowner coowner_bookingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coowner
    ADD CONSTRAINT coowner_bookingid_fkey FOREIGN KEY (bookingid) REFERENCES public.booking(id);
 H   ALTER TABLE ONLY public.coowner DROP CONSTRAINT coowner_bookingid_fkey;
       public          gabriel    false    230    215    3647            i           2606    16649    coowner coowner_userid_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.coowner
    ADD CONSTRAINT coowner_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id);
 E   ALTER TABLE ONLY public.coowner DROP CONSTRAINT coowner_userid_fkey;
       public          gabriel    false    223    3638    215            �           2606    16784 ,   equipment equipment_equipmentlocationid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_equipmentlocationid_fkey FOREIGN KEY (equipmentlocationid) REFERENCES public.equipmentlocation(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_equipmentlocationid_fkey;
       public          gabriel    false    253    3642    227            �           2606    16789 2   equipment equipment_equipmentpubliccategoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_equipmentpubliccategoryid_fkey FOREIGN KEY (equipmentpubliccategoryid) REFERENCES public.equipmentpubliccategory(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_equipmentpubliccategoryid_fkey;
       public          gabriel    false    3640    225    253            �           2606    16794     equipment equipment_imageid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_imageid_fkey FOREIGN KEY (imageid) REFERENCES public.image(id);
 J   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_imageid_fkey;
       public          gabriel    false    216    3630    253            k           2606    16659 <   equipmentbrokenperiod equipmentbrokenperiod_equipmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentbrokenperiod
    ADD CONSTRAINT equipmentbrokenperiod_equipmentid_fkey FOREIGN KEY (equipmentid) REFERENCES public.equipment(id);
 f   ALTER TABLE ONLY public.equipmentbrokenperiod DROP CONSTRAINT equipmentbrokenperiod_equipmentid_fkey;
       public          gabriel    false    217    3679    253            �           2606    16779 @   equipmentchangelogentry equipmentchangelogentry_equipmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentchangelogentry
    ADD CONSTRAINT equipmentchangelogentry_equipmentid_fkey FOREIGN KEY (equipmentid) REFERENCES public.equipment(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.equipmentchangelogentry DROP CONSTRAINT equipmentchangelogentry_equipmentid_fkey;
       public          gabriel    false    251    3679    253            �           2606    16774 ;   equipmentchangelogentry equipmentchangelogentry_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentchangelogentry
    ADD CONSTRAINT equipmentchangelogentry_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id) ON DELETE SET NULL;
 e   ALTER TABLE ONLY public.equipmentchangelogentry DROP CONSTRAINT equipmentchangelogentry_userid_fkey;
       public          gabriel    false    251    3638    223            y           2606    16729 *   equipmentlist equipmentlist_bookingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentlist
    ADD CONSTRAINT equipmentlist_bookingid_fkey FOREIGN KEY (bookingid) REFERENCES public.booking(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.equipmentlist DROP CONSTRAINT equipmentlist_bookingid_fkey;
       public          gabriel    false    243    3647    230            �           2606    16814 6   equipmentlistentry equipmentlistentry_equipmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentlistentry
    ADD CONSTRAINT equipmentlistentry_equipmentid_fkey FOREIGN KEY (equipmentid) REFERENCES public.equipment(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY public.equipmentlistentry DROP CONSTRAINT equipmentlistentry_equipmentid_fkey;
       public          gabriel    false    3679    253    257            �           2606    16804 A   equipmentlistentry equipmentlistentry_equipmentlistheadingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentlistentry
    ADD CONSTRAINT equipmentlistentry_equipmentlistheadingid_fkey FOREIGN KEY (equipmentlistheadingid) REFERENCES public.equipmentlistheading(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.equipmentlistentry DROP CONSTRAINT equipmentlistentry_equipmentlistheadingid_fkey;
       public          gabriel    false    255    257    3681            �           2606    16809 ;   equipmentlistentry equipmentlistentry_equipmentpriceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentlistentry
    ADD CONSTRAINT equipmentlistentry_equipmentpriceid_fkey FOREIGN KEY (equipmentpriceid) REFERENCES public.equipmentprice(id) ON DELETE SET NULL;
 e   ALTER TABLE ONLY public.equipmentlistentry DROP CONSTRAINT equipmentlistentry_equipmentpriceid_fkey;
       public          gabriel    false    3663    257    241            �           2606    16799 >   equipmentlistheading equipmentlistheading_equipmentlistid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentlistheading
    ADD CONSTRAINT equipmentlistheading_equipmentlistid_fkey FOREIGN KEY (equipmentlistid) REFERENCES public.equipmentlist(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.equipmentlistheading DROP CONSTRAINT equipmentlistheading_equipmentlistid_fkey;
       public          gabriel    false    243    255    3665            l           2606    16664 .   equipmentpackage equipmentpackage_imageid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentpackage
    ADD CONSTRAINT equipmentpackage_imageid_fkey FOREIGN KEY (imageid) REFERENCES public.image(id);
 X   ALTER TABLE ONLY public.equipmentpackage DROP CONSTRAINT equipmentpackage_imageid_fkey;
       public          gabriel    false    3630    216    219            z           2606    16734 <   equipmentpackageentry equipmentpackageentry_equipmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentpackageentry
    ADD CONSTRAINT equipmentpackageentry_equipmentid_fkey FOREIGN KEY (equipmentid) REFERENCES public.equipment(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.equipmentpackageentry DROP CONSTRAINT equipmentpackageentry_equipmentid_fkey;
       public          gabriel    false    3679    245    253            {           2606    16739 C   equipmentpackageentry equipmentpackageentry_equipmentpackageid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentpackageentry
    ADD CONSTRAINT equipmentpackageentry_equipmentpackageid_fkey FOREIGN KEY (equipmentpackageid) REFERENCES public.equipmentpackage(id) ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.equipmentpackageentry DROP CONSTRAINT equipmentpackageentry_equipmentpackageid_fkey;
       public          gabriel    false    245    3634    219            x           2606    16724 .   equipmentprice equipmentprice_equipmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmentprice
    ADD CONSTRAINT equipmentprice_equipmentid_fkey FOREIGN KEY (equipmentid) REFERENCES public.equipment(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.equipmentprice DROP CONSTRAINT equipmentprice_equipmentid_fkey;
       public          gabriel    false    253    3679    241            }           2606    16749 <   equipmenttagequipment equipmenttagequipment_equipmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmenttagequipment
    ADD CONSTRAINT equipmenttagequipment_equipmentid_fkey FOREIGN KEY (equipmentid) REFERENCES public.equipment(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.equipmenttagequipment DROP CONSTRAINT equipmenttagequipment_equipmentid_fkey;
       public          gabriel    false    253    246    3679            |           2606    16744 ?   equipmenttagequipment equipmenttagequipment_equipmenttagid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmenttagequipment
    ADD CONSTRAINT equipmenttagequipment_equipmenttagid_fkey FOREIGN KEY (equipmenttagid) REFERENCES public.equipmenttag(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.equipmenttagequipment DROP CONSTRAINT equipmenttagequipment_equipmenttagid_fkey;
       public          gabriel    false    3636    221    246                       2606    16759 Q   equipmenttagequipmentpackage equipmenttagequipmentpackage_equipmentpackageid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmenttagequipmentpackage
    ADD CONSTRAINT equipmenttagequipmentpackage_equipmentpackageid_fkey FOREIGN KEY (equipmentpackageid) REFERENCES public.equipmentpackage(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.equipmenttagequipmentpackage DROP CONSTRAINT equipmenttagequipmentpackage_equipmentpackageid_fkey;
       public          gabriel    false    3634    219    247            ~           2606    16754 M   equipmenttagequipmentpackage equipmenttagequipmentpackage_equipmenttagid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipmenttagequipmentpackage
    ADD CONSTRAINT equipmenttagequipmentpackage_equipmenttagid_fkey FOREIGN KEY (equipmenttagid) REFERENCES public.equipmenttag(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.equipmenttagequipmentpackage DROP CONSTRAINT equipmenttagequipmentpackage_equipmenttagid_fkey;
       public          gabriel    false    247    3636    221            u           2606    16709 %   invoicegroup invoicegroup_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoicegroup
    ADD CONSTRAINT invoicegroup_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.invoicegroup DROP CONSTRAINT invoicegroup_userid_fkey;
       public          gabriel    false    223    3638    238            r           2606    16694 #   salarygroup salarygroup_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.salarygroup
    ADD CONSTRAINT salarygroup_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.salarygroup DROP CONSTRAINT salarygroup_userid_fkey;
       public          gabriel    false    235    223    3638            q           2606    16689 (   timeestimate timeestimate_bookingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.timeestimate
    ADD CONSTRAINT timeestimate_bookingid_fkey FOREIGN KEY (bookingid) REFERENCES public.booking(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.timeestimate DROP CONSTRAINT timeestimate_bookingid_fkey;
       public          gabriel    false    230    3647    234            p           2606    16684 $   timereport timereport_bookingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.timereport
    ADD CONSTRAINT timereport_bookingid_fkey FOREIGN KEY (bookingid) REFERENCES public.booking(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.timereport DROP CONSTRAINT timereport_bookingid_fkey;
       public          gabriel    false    232    230    3647            o           2606    16679 !   timereport timereport_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.timereport
    ADD CONSTRAINT timereport_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.timereport DROP CONSTRAINT timereport_userid_fkey;
       public          gabriel    false    232    3638    223            m           2606    16669    userauth userauth_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.userauth
    ADD CONSTRAINT userauth_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.userauth DROP CONSTRAINT userauth_userid_fkey;
       public          gabriel    false    223    3638    228            )     x�}UKr�6]ç�~F, �+ObM�f�.�H��7�Q4)� ���Y��|��bi�#Jv�E4
x����h%��>�1�،������SN�8�D��?#�0�)�)I��qr_��ܵPVje�������.�%Z}["�յ���[�Hԍ�<s��Z5�䢘 pL����E^���B�Dg��@�*��u�ӌf�rU�m�ź�!D��9�e1�`3�`�����$�@�E0���"�(�@�#��������w�n?�7A�Y����)�@�Me�5Z�aڀ&B����ƻ�1�kYY�L|L��Ʃ{,���.v���4�ep��Zo�x���ݴ�n_e]>��c��u�>�G'�K��MQ[V���S{�~4���bm�l�T��K/F���������z_@<�D�1��Dpy4�}fd��(;��O�w�B�E;�������@z�UJ �ŖQ�)�-i�͛�:$�G�1����Ncw��H�,%���sJ$)(���N�Q�_��������B�/�T�?(�!�^�f]m�z
[�7�Gؠͻg�o�5���3���Q�@Šބ�.��~�صC�����ƌN��Ny@�PȐ�~�q��H=�cW\�ՖO�Ʋ�9s5<��C���kcE%�g\� Q\�T�*7����{[� s�Έ{�����cn�Qq|m[Տ��0� ΅2ES���UH=�8nE�K��qo�A��.`����H��F�4p���)��N��<�������˲�O�b��Dd�t	�I��߇(9���Γf}t+�&/7P��/?�qN�Ʈ1]+����-��<J!ݠ���K�{>a�}_��v�Y�y��,q�!˒vݖa�%E�ś�]'�#Y����prt#\,.08 ��i���	%o����e�|{�k��}�I������=����ܡ� s�쪸�������_KY�x^5�ٕC����Z�F�����9L���3�0�Gt�?��)���� �MfP�p纬:;@f@4�2�v�ăwuu�/�<3t      <   b	  x���K�����)
�5�Ȉ|�nl#3Z���e���L�h6��/��9"��|���U �@~���?"?-?�7�m��������p�=u����j�}�=<m����%�{���^�^K�����L��~~ﰉگW���}F;t���������q���@���z�Ep�t@���q�:�����X��&��ؘ�6D�Ws׋�O��C�3���~~~Z���4�7�_w�z�%�|�Dbr�J'�M'^��aL��	�C���\qv�9G�U�p���	��t��t�bz�{��Z������r���ϻ/˧�_����z���J�{:p="�^'Օ�4��RBI�s~ �M�`J� 瀣����k�|0)RA�q��mN��H�\�Ҕaq�J�I�A�h�q�i�H�$�~X��{俖�[Hw�*�����o��q�o���b� V`S���=�����=�h۰�)����[Z����/]KP|Án��c�0�K.c�}/�ᕆ���7��ZWd��(��@��H-4���i��(N�RST^����U����#`gp!�4L�ϖà�WQ T��D�x��\�@Y���"���.S/Ԍ^@')c��FL��)���!H���^���@@8O?7)O��,X��q���Za�jb1�+��v��9Z��������R��`�����a/w��)ḊsϮV�lA��/���ݏ��r<�eҘ*7%�P�^ϛ���m�+�J�\�[�v��%dh�}�Z��M�#U�˻JT��X�*�)=�j�,,���G�ƋsI��C� ���"�E̮N�	IO�#j�х�9u�n��<0�=Řz��.7�8;ۄ�w�7��l���a��*��n	F�DQ��h�	i��n�z��tnP%l=6Q�����	�dz���h�z�J�[��h-�����������a����(.���)��L[|�o�P
K��&��:lzzsj����9�;ȷ;�8���MH=ߝ*q���X�rS�k��Y2����G�,��ޭv�����������\m����c�J?M�.�ULP���mM9Z7\,�}탛����u��������'�R'�T��@�k".�@�i��I%��׃��
uM֎&(�@I6�׃���^Z�[�CIV,h5U�AWd�N��O�G��mI6|�$�S���+\���/�)i�R2��^@��`�Oi��l�'E^Lt�������2�[U�`�����
�f��>X�p��)�d��NU$�*��l�u?�h{�MLbJ1oo]]��|s%|U.-�l��m}��t��c�J�.Ƀ隁SrX�eyx����i���8{��D=#+HiJ���9�M�o�=-M)z.���k��˽%I˯!�$l��G�0��$�v#K��2��Nj�
��h���O�C�֯�K���Q�58�)匯G̔�?4���&Ԡ4�c�F��4��j��u0ѹ���}��3ՃC�WE%��0e��y�)7քV�D� =<'fh�K�@���&�"��tC����'�£���7 ����*
P��#?�Џ�BUE7Qj�3�f5C"���d�L>��<��B�s�[����������S�Ĺ>S��z�
2��������ŏ��������7�3�{q�5��=�?�0������qcW���L�D��w~���1�B��{��ɳ�w��7���k�I�-��)������,�JhY���<~��篻}֠8n��n}<��CRb��xN��y�aʾ�hw�^I�Ø�5u��jKk����|��$SS�m���^݋aC�X�0eĩ������x�)�d���ZW���Ň��7-?|X~\��}xޮW���e�Ded�7���p^��?W8s1b+"�4L��Ød{c�}�B4��s��3�?�Y�P(ē�<��Ϝ߶��>ƺ;6\�S2ѡ�W�>�r�oat��	��@:��tN�	<L�n*�s�L�Fw2>w�s&J7E9~;wZ��h���kN�3I��*�掮�@;�	��%D��K��Q���T]y������@O�r*����V��w ���R��֏���e6�A��i��ǟG��������7=HL��h��<.WN����d�j�0��倠�� 5��הB�z��xx�Ӗ����Dz� r�lkv�� ]�΂s�"�b2|���fp������uw�}�O���ɘ��b��%�Gu�sf��2}��,B<I�̅����5�i� 5�,H��×=Mf���u�zKȉ ~M��
B9_�P�2�QyM���[1�&��}.�@���4��u��A��n�cIJ��w����	�AW��s=vƯw�O:�\ڝ���&ҩl�ԋ�2������ �r2��g) d�o@�٦ϝ8c�z.�-S2�_Żw��7}@_      2      x�32�4����� PP      /      x������ � �         !   x�32�4�24FF �BX�C#�=... \z�      F   "  x�}��n�8���Sh�� ����A2��ĳ놩YU#�2$٘�O��~�I�DIt� ���9�
os��QL�&WD��&<Jh������GR�����]�u�g���CY�߬0���qJ|�'����6��(NX�wd��3z��Iu�J�F�i5XB�@!�N�(5|���{�qz/���1әI����Z|���u�U�R-�p����(������>�����ې�I��RK'�u�n��.Ji��)A��ʖ:4	D�����Z�,>0�b�c���Rc�a6xO���*�?�
�scG��<�,���lU]fJk���esMFQ8L�Rc*�d0ŗ�~�N6����tz���Z1Y�3�x;m�Rc�S֛�C��cq�7oi�����d��8�-NwZ��P�W��9�%#�^ϖzS��gSP�@�� ,!Q�J [�z�y��{�E�Z����U.�K �7B]�cKg�9zz�=�*��^s�0u��(u��;M�<���6S��a����ݾ�R��û����p���8�@�(v�[:��oD����}��ϐ@���"x�8r��RΝ���	J�E�~��}��7r{yZp�gPP�ib��L"cT�8���[z�/�A��oKmD�YG��Q:U�����K�3�,d[j�1�̃�6P�Yە�2���q�X�7[�ݷz�[����Q���������$$��u�-��D��*��pE��P����=��B�ś���x[Jc*�C;��w�局�f~(l� ��K"FI��$eV{_������:�����ֶt~k%�9	��KY��{Q~=��V���a�cD9q�G�]�D}F��Yu�z����ص��R�r��f���a$n�����\�`K�ݓ��`�[�cV��a[M�(��!�_6�6�-���k��l٢��P�:kKSg���z'M�/U�m��n~>nD�ж4E�-�v�f(��8;�pB�p1X(��J͆F-�+-�.-M�^ri��k)�HSo��7$�<����ry�79�H��4���O���#h�M!���&���oh�Z�W��      @      x��]�r�8�}���r��"��vV�r��֨Զwc_�"UE/$�,͇���c��c�	����{f6b�eIE��'���Ƈ�ۚl�'WOY��Q:�!���Pf����*�lӢ.��GH��U�K�5��[�xE2�3���cH��3<��iy��-���Pʔ||��u��Q��� �1fv8a1�$�G���8����
^k~�mi�a�T^��V����R�.ʳ�8��K���s-kO��b�zڶ���{�}�*�&리��M]�����ȑϬ�k5/�|I��BGw��q�$�bE�b�dd��0	e��X9��	�^����Ӈm�&���~o�Y��g	o�:�7����c$�
�H�����|�-��!-��vJ��Q����a��X���_7M�G�������r���oo��^��ڮB//��R7Q�&5��,�*d�#V6��z��
G|��0�� �`�0[����5N̑��5�+ޮIUf�vC(h�-r�BM�qLˡ��|IA�E�$'NF�G��$&�' }Ud����X�Q��fE��E�mV	j��.�N���z��:�&�����ھ��[�.�G�~	l��m��M��M�^��x�op�����ұ0L'�����ꄡ����]#���8h��C��ұ0��T�"r0�|9��6�R�F �3�i��,Ō�d��l[����e�b�G�tA>�qR��uZ7��	�,�m�����c����uR��tQ��[P�e�-N��8ߧf�,=���Y~(�i���{������L�<��g�,:ca��b'68����[EV�hz��Ւ�E��� ��T(�@� ��}$+��ER��bZ���*����Ւx��spL�L�A�/��"��Ei�Zc��vp��F0� s���J7e,�C�'l�q_��Od�p_��BM�wu,é��)Jz�����V���|sRU	�mvwzC���T_��i�N�S5n"�`�,�b�T`���O>��䗮2�9�ؤ`�"���$�E�m���O��PA�2'ߒ��5osJ�\��r���5>� d��"ƨ�O@o�S}�yK꤀.^C�vb�t3��rP`x ��\��l��)\#�CN�kQ=Cc��'57-f;}���]���o�x����y�+��z���L�Egj]�fC�	�6��8
;�y�$Y�'P9���z���RY}�h;�#��'t-A�ș;�i�ɢ�p>��(ƨ��kܕ��� V�ת͕�'C��A��W7��M�v�Ơ�����bv���c���* ���p.X�.�t���=��"ͱ��9_԰ߍ�<AW�����ݲ��D⻨�q���uS@`��O�I�=@����t�C�.�}	㴂I%-�z:D�=�]�w�x_b6ԫ��5�Յ��C��
U�qr잛�Oc�����%��n�+J��a�x�a��fko��D��G�Z��₡��A�D�1|BZ��;�ߍx:�1Ϣ8ޥE	k��\��P��z�%M��-Ly2=7�p���'0U.��d�B��s-%8@��=0R���&�'��I�9��EIn?\�>��<3D`R2NQ�F��f����Ø�MR�Q�;{�9s[4	��a��#�,W��iq�����H<Kq�+O�%���#��**�	���Ǣ�v8�����\ܗ�W1����n�AX�f�ưƦX�yRX�[9��8�ʢMSn^9���34u��Vrv,��l�N��s�h������K�8��~�����C陮#��&�0��n"v���qH�8xS����AX4 ��l0❄�-%>���*D�&KҤ���J�;h�2x��Xϝ1hu��o&����o>�����i.�w�1��	N�N��h5$N`h'��������c���� �!`*~��Z5�q�+Y;��j����N�|{��,�:�R+���ɟ�'��W _"r���!#�@���N,(�]h�M4�� �\�xxؚ����X/
������������S���Z��s02�}���zVͺ�?r;:�erD�`�%-�}5�dn��l�4%��	�j��<����};�L��'�ݲ{�k��k�q�R���5DH`�&elo�����oȗ�o�W��o��ӏ����+�D(��
`��2oV�U]_R�T-�n��M���Cg�E� x��(�Ҙ���e����4�iO������Q#e�?��,�����d����1I�u4;p�w0�Ġhw��9�W	��.���_���Ls�i�u�k\�/���G�G+p$�Yޗc�p�MG?��*h����އ�I����\�#ܳ�q������uU>�+��y^z��6/�N�|+��Bh�Op��i��T�Q��o�\�iڕz���������w��=<U�J<x1��N��(�|(���R�J)=��(��<�~�F۴�@ӈ�9�HV���R%燨Z�%l��eI��d�۩���t�E���4���i_U��H�)������3n��mz1��|�*��t@�m��0�I���i�nhy�$�I2w��"�HP]-��P-���Q�0'C���l�@Q8����?>�:}�I�l�(�3�����������2��ϒ&rmrtW=�g�Ԫ�)0-G�\PJ���0��>�U�����8-09�OT�pO��G�S�~����"��22�� �	�����o��Is]��(��F��R�2���p`��&u4�"0�����$wG�⩈�^�[��Q���B�2��ە�(��(�	JU�H<M8�6�� �Fgڽ��0�+�x����pJ{���U�zP�"��jw@�1��QQ�_���REH O�ܵ:{c��'D)�b\�P��ɞ��D�l�i�GL�&�x�KI5��M�]Ǟ�nOj��(VI�T�Z�2����u�fB�o��M�|�I�uT�i�ƪ&ګ�E|ıf4��X.����ꅡ���﷯Y�����x�D�m݀��ԭ�Q���C}0P��g��@j��3p�N��V�i+!�c���0/�����S�bx]E���{>eo�a�'|�y�9�ܸ��;0�7�l�H��p����/d~�2�Dn�:�j.�Im��2F3��4mYoS���yY7��ɴ-}Kז*�'4-KcP�HJ�ь8�ڷe7~d���Y��A<ն)�X`ƀx(wᮭ!���^-ڝO=`x������T5��@���nBY�S�D4����X�,VQ�������&J�)~65o4p��<K75�FT�Lc������;���,�fj[dYEqR�d�ـ�'�a�y�,�$!�LAK~�������x�2la���R�P���Ol̊ka2́�]CT6��W�q+���C2�t����"���z�[�R@�i�X�h�(=�sx�X�lm����x(aJ�����1o����Gr��WhY��;%:W��]�����@�k�{�E�	~��/��Jڪc!�_|_	��YP�T)�E%\<��>L���\\��\��wӷ[YQy�RPߘ/`R����#	usr�e�D���u�P��3���>�J�qs�H��u���u�@��׎�%�vU@Y����6.ֵ2:(��K�O�Dq�i�H���!䉅��Z'��X�t6�ړ*H
��	#A<^n�6Ȁ�fm��NC ��U�Q�P�MS��eX]u4�E�`^��_�<!k�5ɨ���9^"��O0?].%�����aQ�װ����p퍬��5�.��/Kv{��4���&�l*�8p���G�e_E��mų����;:���e����S�r�Ȩ>s���+�[�,�L���_��R�Y��Xx.u�7Y����i���^�}\���j0�f�~�ۛ�f� ��.�f	�������I�o�8���ZA|�;S&�n_1��4cA�Y��J�Kr��_��S`'�7l���N�xߠ+$[���=���>�"w����h�T��I�G�b(�����*4�!�����1��ywQ��Yfd[�}R�Ǘ��W_��Y���o/f7��y�Z�����F'�(޾;3���S    ��z�gR���1�1�
�)�3�j�p�>z�8�R��&� ���� �`U�yT�����&� �I@�S���{hi��k��X<߸H �x�4�S�* �0����>!��a(D��%z�C�����R�g�\Ll�����)�Ӌ��(��&�C��Ş�W�����G��}㼭��҈TI^6���0%ʚ�=���g�o���WA �6�	���4��+�&|�^tX77���1�*_@1��u�4��P���r� qE�*As�M�1������f��QӢC2���a���c�����Cq&�j�|���)C�+�'�Xq\� ��j8��ӏ`�-��[5i=W6����	��l�� ��y;U.�$�?^����|S6��q�ʆ���
y+��ؾ��۶�!���N��h��>��P`(��v�����&Y�U� �5i�P�������8t�fn�Ñ�+�)V4��+'K��{<990���Cѡ����"��J_����X�n��8ႇ9L
S����
��V��\
���~MD���P�fp���\��P}p�>�%,��[����	Olה�A&�8�d��aPy�iXa8�$`�Mp=#翞)A��۸x�|Zqυ���9#�v�N+
M�=���c�F�	�΄�x2��'���]�ݓ��`&5��vȖ��1ޘ`��Z(�+���|aSvx� S�e�̒#ϵ>�+3-[�"�E~���-�n�')�����ۤA_��7~*�w�̌����8�s���Im��E�����Hfm�OZj�Bs�is���m\���`vkG��!RmS�Y��"o��i��@t����5�ꧽ�~:1{-(E�d�����Y!�"oX��o���z=���1 �8Bg�	�̞�� �?9ܸ�c�~�C�m�hA�����w�,���}N���$�c�v�Po z[�ټ*�De��e/�\�*��tO��,@U~N�e�H���C����I\�`��"͂�G�]G�E�
���.�c`P�[w���01��o����T�n���~�	׸���S��'��cq�K�-LH�v���5���2_H������Ӻ���-s<��_/��<�D>X���#�Z�6S�h�(&�7�b ����������K�8�5��b۴�=n���˂�[<����{[�����	�$!ՍekS���jZ����k��Rڒ�7���#���^vg2UEL:���ʤ�|�A <���Ҙ��m��A��i�L�=� <v��G��75x�9^���aIM��B9���	�hy����t����pw��/���Oq���uG�d�{���7�{�N{&oS�?膋��"����2��o�E.N@��\>�H�IF�{b�$�.�z�5Q����fO�6Q���e�_�/�
���\z�����x��[�u��F����ހ��m�,R���v�,j����D�Jv�f���Wn����YY��#�8��y2M�;l<8�E�*�j���R2�ڴ[+�T�U�eP����
�EʲߌjA�4��i�ns�AD��� �1�P�J�u��M�I��[@��hN����D$yL�M��Һ:9G���Ƶ��é�f�l�*H����<�і��).���=D�U7�B'v;"��;s4����h�faq1�����-�;L�\���V�iA���b�-|�7����wh�k��p����Ū�~a�f��$��xe�?%ky�����zP��s%�ӲM�Z7�%�G͓vD��A�=�޶E�B�Sf�{�HD�:_s��-f�Ps��r����\"�tUn`�k�d�H�q7�X����3�K�2�O�M����1?��7���1G�&Y=�EQ����aB��+�Y��.��5�ũ�5_������{��j�X`u4�*&�-�:
47������%�f%��2f\Ek!���7�8�������aÜ7�*˵D��6��x�l�'lY��o�������`:��I�Ƣ>��5�}�4�����=���o䈟�PC���6Y3�RGz����D�w�/��,��5#��5�)��2?I�@���ݾ�������!�"0�UT��v��j-�JLv�9�"G���E��Ӏj��z
��r�+�p1�����*#Kj=��jNeQr�i��&l|J�'��[P�a?�2+4n�0�g�����Y�<�ѝw�����3c���B�}�7$��9;���s.��x4\����W��y�^a�)f��K!
�O�������%xY��2��ul�4�X��(.�AYtQ�c�CČ9���=��EI&|(L�����ho{Tn-;�GG�0����xh���J漙q����0p������.�p�Вn��hH��j�mO15���,|AQ8�)1#g��n�F�#]Ӳ5K(x-�3��n��`A�`�NX_����*�f�\u�˵P�X�yYb��[��Z��J���߯d��Vx�Y���� �D�֟�=�y,)p���Q� '�=���H���)sW��;��;\�<rm���[�Fn����>�2��2��҅����d���J���琌G��i�T	^��S0��w��>��4�?�A�D�Gŵ� �դb��J�b�Mb��?�ұ8�Oi�Zr�Ks�4�ʆq�"��J���U��T�1��2�fY~=&o�:!c�����K����6Q5KyZ�:�l���5Ӥk�CF�8NG�uZ5�+_@�Xw�|�Ƒ8�P;~'A����_��U��������>Zq�١n��gO����3�T��vQוu��!Y���aZ��N\�փG��b�R��1#d�� ���x��w�6�����
���A;~�c���K�
ƃ�p#�4��6���F�'���m��<O�c$1F��=e������@��PZ����?6dD��4WwCm�'��X�q�Գq��4~�]MFsp��5#��.�>���M�K�G�T5�t���0��p�(�����,��͇aֱgx'�C8���1���ξ�9��Ұ5o��8(^wﯤ�7a�D^���;)ǳ�?0`�^�L���sz9s >fY�5f�Z\v %��:��X�xD�`���!ú��?n���̯=��p����XI��c`
<�j�k��~Nr򟷎C�R��E��RE�o�g�+��>�I�٥bP�.%�f��'ж,����׎Ԁ<KrU��L�o'ej�"���S.�o�/��j�@��4٩��:��[E�|����\�/o�H޿�7���+^v@���2=�om� ��H[�:���r�����l�<<$ke`뙁.���iCm���c�i_�s�4�J$H��u��l�sf�[�q�����j/�ܮ�b�6p6��������^�X<C�:���IU�.��w2�$I�]�ɾ��)���j��3��"w�P~����b���q�֋r��"�2P��N[��D�ܗ�"�xUJKlj�\Ofhk�����h�����j��Q���eL>����c�ܔ��2)��җƻQc8�;=��v$�)�����9���&9�h�c|�$��4l�c4��9"����?����#3Z�>j0I��X��D��9��a��ҍv#��Ne�$ȋ�3%��Q(���t���pgx{}�=dz�����w1~@�E�V�=��fd��@�5���84��|�m8
 _gb�8�8��\~�M�uF�� ����O�����N���>Ư�vC������`p��Z1D��d�7���>�	F��Ȭ}�64D�]Qh+�"Ff�Teka(��9�\�v������0�-��`؊�����p-\���$'
�V�p(��?��d
�5��B��k��ٮ}�=�s8�WH,U0wX�/UD���؊N򳷖J!ta��/㰕�4��p�0�д���B�@�=<8��{0BU'�o���P�E�����;������i{&�����^�j�{��!b��M�s{e��p����j��6x6__��8�]Ѹ�k$�eP3G��ɉ� `  \��͓K�������ڄ"^Q�2�|��6���[�w��H�fZ����5]���|�*�,�O�)�������ͯ��딭}�����)[(r�q�<���	m���,�i�!t��ź9k��z���� ��m�(���w��g�6�f���$�N�8����HA��s�";4�o�"�}�C$��72s�aW���νPZ@�i�R#w����m�/�0!�w�ֻhYW�J�E�9ʛ����G�D�U����T"�=�$o�Y��@|p0���K����|�q��.aM�=!6V�pzc�����
W���#r��c	
/ǥ>�׊��q����l"A��f�Q�wp���<���rO��D:�!��-��/���SL |!� 7�UO��l�<���X�{C�pu�wiKZ���u�S�)�U?����ȝw�~$�l|o.�ug�o�w�P34C�h�>[' ��u�*���W_�w�z���v����E�c�C[�Q��H
�3���Jl�>�)�Jl�Dt�F^;��/δ�,����m�����3{���Fm���o��ߌ[J�H������H���"{Y#�0�@aV/V�uI��=0`x�iѽ����:����Q�9P��z<��n��
����`X�s�&Y(��OFx
��$��e\'0��B�eT��UFp����&E�Q�K��eT�(�?j!���Cu:�!\���p�{ק6������m�!�ބ��d��(<�i�Gu�QM~0eb���%&�)�/�;�C�;[=�"���Ql�-^Eu�yܑm�����R{�o��<֎���&��&
\�����u��:.yx�H�W�e�z��[31g            x������ � �      >      x���M�$9r��էȽ��?�;�	#m��f65�B�4�5��n�I��b"#���'�m�r����g�177�����߾�����_>����/o���������~?>�����єS^��j�Q�����2���������}�����o����_޾�}�I��i/5�r�K�AR��?��3��\��IuD���RL�0~���f����]�J%�����?k.ŕ�>�*�K�	�*�0�Ss-�z���2�		��L$����tĴ�C?�_�#���j�'|11-��O��:2��F�>�A��|��GdG���/ؓ;bZ��_
�_�T���8}�kD��ÿF)�!���}���5%��9Ւ�%ûuG$[�����`�OD��ÿF)��'"	�*��?��s"�%5�%c��HJ�
��w�#�%5�%����HNv*. �;�Zr��'"9٩ "k��j� b�#���� 3wD���2t�;"Y٩ ;h6wD���H����TP,3wD��P|�;r$+{���D0Ӓ@����@�de�0�P�<x
bZRx�<��k���:`61-��((i�HV�
5��Ǭ#�%5�噁��^a ��y�HwĴ�P�$��w�HV*�3����� B�w�#G�rP@ĿLGLKn �29���� ��@LKn )�ȑ�T�-��i� ������Ae ��_�#�%7���c O�rT@�ihĴ�P����@�d�0��� bZR��}��@�d�0�x��l �%5�x ��Ow�ÿƃ�XĨ�t��ß�W�ȓ���X+<jI����$#'�� ��	S������$'�Џx�wĴ�C?���@����	��Ĵ�C?h�y���j�g�����|�g��ȓ|�T�߷~ۨ�|�|)���b�ށ�Ĵ�ÿF�r'�����0�@LK:�k4�(�\��?��=/1-��Q�\�N��Y1�Ӂ&�w����Nu詿b৺��K1-�ЯQ��@�d��p��P|В��1
$����LGLK>�#*b(�l\T�?88;bZ���"��;
$���>1-��eG���2�b�S�Ӓ@	�-;�$�S� �8O���ŤPà�����

��i:�BR�A����hi|���1w¥�ÿFA#f�訂b���0-��I��An6P�TA� ���r:�bR�a"���"��SY@��uG\Ln_NG�V�i��r�����m &x�:��&OS ���Vgq1��/��H��4%��Ȩ x .&��r�$�Q��y�2���ŤVPj��@�&hM!`���'�bR+(u��MҚR���ŤVPj2�7��D����������
���B}�D���FDBq1��� ���MԚ���:q1����@�&jMI`�������
"�(�:}�DT�>�[A� ��h�֔ֈh+b .&���6 J4Qk
kD4���ɭ��_��D��4�F��
:�bB+���8�d����- ��M�ńFP�ԥ2R�(�4�(l������	����`�L�i�V���q?���	���q`�k�LӴ�@�E'�q1��0�:e��%�5��c�#.&7� J&�4M+�[D��D\Ln�R`�LӴ�L�F��嚉���
"(��(���TV�^���ɭ ,��4I+
k��'�br#��6e����5b{lq1�0#���4�(��N2��0�Af����5�z'\Jj5J�@�&iE�`��q1��0��z�B���d�Ft`?�A�lm�B���l�F�`�k".&5��sOTh�Vֈ?lq1�p�3Q�IZQ<X#FP�4�[AD܁
MҊ��1���@\Ln	�*�~�d����ɭ ����4�(!l�Jd .&��*.'j�SBQG�B�Љ5�X���D�B�H(ܠ��ϝ,ZR3�uv��r"�p��<w�hI��嶁Z��P�A	J1'ZԤv`���@�ʃH(�����-jRC��7���ՒL	Eua	jL&Z�����@�t�H����ɢ%7���&j�1DBeTfM���-!����Z-�PYBB{�-jrKH�평Z��PYB/LM���-!�
݉Zyѐ��r��67Ȣ%7���2�Š���:���D���zybC{�YE�a�h@��D���jPa2�� ��𰆴�}��5�!�8�z�]&i E�a��bZԤvP�x=�
�*J[H�hQ��;<xp"C�ZE�a����hQ�B e��*�[H4�hQ�[B���*
[� o_G���ڧ���VQ��B�S��5�)$�TwdX�@Eb��{<-jrS@�"'2�!��P���5�)�f���&PQ�h�q�,4Т&���3�a���5$��Q��A�:	�m �Z*�[H�@hQ�ځ?,xr"C�ZE!b���ZԤvкO"�>����ED뭁5��ã9�@�6��R�n���� xA�8�*�[���5�%DЦ|"C�ZE9b��yZ�䖀ZbNdhA�)I�𝘉5�%$t�=��M��(��j��5�)dt,<�q�m���K�-jrS@��Ndh3A�)L�!�Ju�EMj
�8=�g�P�jJqCΉ5�)�ày�@�6����?��IM�5܄��#CZMyb뾉��NMj
�ph/a C�ZM�b�/�L��IM�����VS�غp���@���xoa"C�ZM�b���Z��ѩ�@�6��B�mg���M
��4ok�k@4�hQ�<���f�VS����@���26ю�g8PBA[W-jrC�u��x�j��q�
��5�!�8�9�D������xt�6Т&5�4����VS��^�hQ��B����2���-֐�x�EMj
�#��F�VS�X#����5�%�ãY�@��#�����I;Ѣ&�� �Нڐ�j�#�/hQ�BD��mKh5U�5$z�e�EMn	�)dhkB��[l�N�ew���!c����VS�XC��;�p�&�X[<�	�SH*K(�c�EMn	m0dh�B��\Lǉ
�ZԤ�P〮;7���ۚ��t�n�@���,/�CZM�b:�s��5�%$X�s'��,���ń�zZ�ҧ����o_����5�ϟ������.��^O����Ge6��&��� ���x�0�SؠE�H4o0�X;>h��T]o���.�{L�g�F���?�b�v���w[���V��W�q6��g�Ӥh�t��t(m[o�q�34����`{�N���`ҝAu�������⭃U?����r��v�^�D��ܕFTW��aw���ҝ�\�n�D���-�*WZv���{\'��Q��]��_�p���X�m�Ys���Wx�-Z4E�op�X�n��������h�],E��uf�I�����
���������=�i�l	��������"(Z������룍!&�����ۛ^�c�A�w��7�"O�w��+E��ޛ������b�/��>�zi�D��-���D��ȓ��k���ޛ�����9og����Y�li��ݱ�BBE������~X���/=ysC9N�3��-�h��jV�m[��F��ES�H��6��Т���gnp�93q7}`��n�Ί�J�u�T'B�.�Q�5�Ȓ���C����;�+��m_��bԟ?������꿯/��������o������4������$�e��(��|�U�*e��y���#D�K]�TUʖW;:� D;I8'��[PS��՘�ʆ@�6�����ɭ��H���E�5m��;Ѣ-�&���L�Η� E��zvNnM4�oYln*QnC�o3Mݚ6�y�MѢ-�]�Q�t�5]��bh�i��{K4n�����\���pI�ڍD����wh2������n����E�Y��iɀ��]��W����1�Ϳ��v�KѢ�?���?���_������}���I�k��}Ԣ�Ў�Η�'okHm�3��� �  ���bm6u�����CNYТi.�Nӌ�L�+�cA���v�^����vk곑���.r3�˹K�vo�P!Cx��^[�[��C~\Т.륶�f��ù��A�������a�/���rA�3D{�����)���j��2�^r"z��pCh��g����^����]Tx�-p]���0�ZТy}Ch#�0L�h_߬���#-=<��*^?K["�(G��ף�,�F�S�֥��dh�|�gi4pikv��H���gi���R�h_���bj:m�z��A�U��xՠ>����č&E���K���S��F�"C�N��U��n�鰧y�dh���X�o��.�>��%v����]�o[N/��9=��
Bl���k�[�:&l&M�b�[\�jI���*ۺ�<J�C��7�\��}D-��An���z���E��^�ȏ��ՙu^�@��h�����hѾdG���=������p�������n��ɢ�5#�ai�ѾhF�|9?v�����@�'u�;��}��?����/��_��?|}��	1�Rטu�Z�6<7����.d]�m;8����w�]��B6�32o���rW/n
���= �ײj.�֣�\��l�0q�8�u��d����`���P�lK}�]��'���vaJ�]$Ct�].��G\�[���d������؝/��{w���)��]�D5�7�>���óA�~�ȕ�s��Ҭ�E���5K9�Ng|*��X31W.Y����m�k!�>�ݎ���,|A��5]$�S�������L6;M����
�WMw���|�!�M ���m�ۦ�b[�[^�����)MӖ��������f"4�=2�xm{-��j�7�Ƒ�%��)�%�I�:B����L��m���~��j�w��t�d�������k�H�u�PacSeA��ո�q2����;�$[���3�B�5��J�[����J��W���*g�������mxY�3��m�n�)g���������%]�|�JN�̫�s�[�K�X�#b����y'ي��^r 60AQ��E����UR���Be3l,��7B�fe���V\��Vr"��AE���<���x��P�L�uǴѤ�M/���y�Y�!��kNĦ�3?�YW��[͉�\�BE3\�4͉�4��j��fn�=u]Y'We��="֧܃Z�'5k�𶮷̣&C�����?�?ue-      6   �  x���]r�6ǟ�S�=#����Ӥ�Iھ�E+�*K�Rg|���źKH0	�nm��	 �?��`������ح���
%�`�P�m�n���7�-��Ep��@W_>�ߑK5�F��FbZV�����_-�V�77����kO����c�F��jD�kP@�R8�3(0a������*����q>e�:�a�}_]�?�9N �QR�r �HOAޙ *��������f�=�W���v����xjs&l
4����5�H_�(6�����ɑ�t�Y���vL�� ����f��v��e�in"<C�pBf���7!%��2�!�ա�Ar�[�eE�Bb��1�ñ��e����� �s(�P*���8�FȘ%T_	����BZv�4	��Bٜ�~�P�
p�'��h'Y�%k(Mљ$��Q�K�H������\|��a������M�]
�TLT��Y;�Ǒ�K�ㅹdz�D��N���p�D_���Yr�$�@�*��[��VX|�uY��0i71��מB���xK!=�y"�)�Բ�H�w׫��s�o�Q#���3(�/�~h�d]_��`�����)�������>p�w�} �4&)�+��v����u[�oH�ln_��}ka���\��~�����>հ���#eaP3̛d�T���خ�￟��J�Q[��9�`O�x�mǊG�$�rK��\�ǡ�v����kn[<�r]	/m�`����n����ض��:?E�IW����qk0Q����w|M���{��PL�U��z�o��#��.�E��9�y��X����]P�" ���_Fź�	�����e��(}����D�aE��N�(��@F��ϫ��(
��(6�Ll�g ����?��"i�?}]��v�X#m��<$�!�����2ƤZZg<!Q��y��s E��9I�TB�����������4:4HՀ#�P]�Q _�dU��S���fT�}�j�P_g���#�\���w�U�>�@]�[:�.4Ѩ�.�i,$az�O0�(�qƎ�dƝ���s(3��N�B	�gi�w{j �Hd�-mxر:�������n��p1��;���þ����ӹ�����=��Z�
IH0X}Z��
�^�Σ��e�x�K���u�$t_�b�����3      D      x��]�r�H�}fEE?l�1&u�M��e�ݖ�jKm{'�"!
&0 P-��ؿб���ͬ@T��L�nl�L�$䩪�̓�*z��]r��MH���,�Y���ؐ�!��:��=���w��Xt�#j��a@��c�*�K��ap�HޤS�l�"�����\fQ�����������~������"��Ѵ �˜D��c@.�"��X� �� $R�t�כ����ӟ�"�YH>~���E	��ݗA�G��n��(�͗�,�t�y��t|G���ȋp:8>΍�\C��A~�Ȩw @o V o�Wo�h[��6#���o��b����g�� �FEx=8������=Wt^dq�B�pBEO�ILF��ϧ'������_�| ��(�/O>r�]��	�-��.(�5�������	�gQ���	hnF���6�;�`�@jq�٨s2���_���\M�3�H�d�qB�iA>�c��'Y�{�b���|�z�oUXpR�P(��mE)3�X��y��"��6��{o+f�2�ZQ�߲��6��&�}���
�Y&
��d���$Z�h	{iE�%��>]��0����<�QS�-ߧo�4��r� E4��q@D<"�ǸԨu�0Q�Sco�k{��Ѧj�G  tحw��떆r�t9�h�,�Gr��W6oo�Y���vMm.g���ի	��_IC(��5Ûp��d%��S��m�|pUd�MHN�4�Ƅ[�u�Y������:�4[I��	|�5�*�(�����1�@�2�C�ݍ���
����)�-�ژ�� +���e~G�.�"G����� �Z5���0@�ij��<φ�-~�4�6�)�>r,�"�����󤞔:J��`�`�복��!^m��X���3�Ѵ	B�c�;�b�B����3�6}�l{�{��3�c����?`���ې"���wt��ASi�J�:��6vdS�	S&Yb���햠��o�>}y����y��N>;�*Ҭ?� �I�j�]墵ib�v��}U������,��YPDi�KÜ z��S؂�K���֌�8��H�mn��\�� Kǀ�S���c�K�p���[�U�wTZS�=у0�בtm_��� �61�c? ��Q�ZrX%�3����%v
\Bts	X���qK���`���s��S�K��� �)��NǤ�/�	��R�G̮�u=��⤶ΩT7�R��ug���y/�ˣL1�7H��t�?}+
�Ղ{*��h^k "hR�QIWz�a0Q? {}q�_xC�͖�c0��;�c�Y��F�dVh� 08�ٺ�1���yl��vw�I��ʂ�ҕkJQk[_�V�
�� �K���:�� ��W�n7�k7�u�{�Pmk1�.�Y���Z^�-ae;�2<#�.��N�"�99�Ξ�O�Oց1Z>a�1w�9Y�[!i��r'	��i�� ��fLP�Û� ��=}�L�R��q:�>�U�T��ރ�N�@^�7i:C��T����.L9(��E�f7i6!��]��3�3p6�"�Eۊ��E��AA�Zz� KJV�e1}� lWW��շ
|�e��A�Tܵ�_=Q�W]� �\Yn0���)Gu	�=�lޔ������L���+q^�d�G�%�K�,��fHn����>7�/0��RS�\�}�����h3���ں �x��qJ�^��7�� O&
M5w�n;��!�����j��~� /��6K�"%�徺���$��8 kO���: ww��C��ξL��1zF���LU��uQ`�L���	�G�O�`-H�Ƌp~�	Y�j$�_P+e$����`��Or��(�$���=u��R��j��qQ�!"�,2��NI_���b�������G�}Egڗ�2�Ku4��!Gt"% O��+v���3�un��*�vپ 5�]7Y��7���V��z]@XU]@������-�#�+U���[�曯 -�\���G-���7n�̵/f���@��2B�m���F�]�|�>'�'�o���9��z��μT��W �6.��.�I�[q��M�� $�L��D���8�5����,g`�|�kN�c?0j��T�?�}�f;���yȏe�W��@�&���8B���$�DüRw���Q������G��y{	ބ�L^�(�,��7V�ب�T�Y���,�"���{q�X܀���a�P|9�ȃ�;��ӷl�������R�(W���ܝ��Jahǜ��F�M�m�|Վ �fP�#�.��V��O�nu\�o�zn	� �A��@��E	��A�5h.G�J[P���,:L8毤�E:�Bd�h��Z��Kf���>
A�FXC�����`����k��յ8�>I��0���TW�ک�d؄�]玨�1[q�.��zzuL�h)�FMU�l��X�X��t"qj ��!t�s�`�mk*�&�a[�o���^�S�bH��T �2�ڕ|�QR�����S UD�Ц���V�	vO�8�p��'�D
���Ƥ=3���O��q��rv�[��n�B�h�#g�)�_��x����MO�g��
��jA�m��o��چ00���j^V���z%��ج�j�SW�2�ܤ�����A�d�6wpΛUr4"7A�5���2,Ҵ�{I��|I�'q��Q��&�i�'��oB��|�ȁ��>~���Z���]�c��MM���V�������d�� ��x��z1���o�.�UYjEf����W���χ������A���Q���Px!��r�DI]i��v(	�uО��������rܐ(p�� �u0�#n�A-k��Y�X��l�9t�º���ic��O�._�W�m��&��R���զ'+?�p�πg��c��?grK�X
�w 32���9�������}/� �-�p����]	�(�bWC�-C3�g��:�����3��v:e[�e*;�b��0�%\�����Fî�krr������*c�� ����8��A����7j wާ ���;��|L&�Cd[�v���0��0�� *�k����9Pp��o	�M�+�ˆd��d,�,���,�����k��_8l��j���< ��j�֦I�?�m�1&�-�B�zX{��q�Eџ��c�[Ñ�Y@˛0yI���qȷAL�-����oq��8Ld� <��	�E�ڬl�tiN�I��Wr�)M=B�'Q�d��(���	���4!A��Y�r>�"�V�|��g_.aA��P!��+�'��c	��
��@�Aߒ�h��d�Q* h �z�gr6�(d�^��2�o@ �*���c.Ԙ���7=Wœ����7\[`׏S�)*�C�Se�~�����dA2�b��f~�ưZ���5�Ɩ]�}k�y��W{�y������hv$8��o���[���f�s�7a�f����-2�n�U������8��
�3�*'�6�@�H�P}_U�$Ltk2�b�AU0��e7Y�b���LJ�J�#��2.��u�eտ,m\n��]j3A�2AD���=��=�`������֖� �H^����2��2WK�R_���a�4��k���bN��Vu��FB�G����M����7Oz��V���%ލmZ+(��� �I������H��VDL�}�	-}��L(����.�<��}M���Y�֭�m-G��e�G���d���<N�����D�I0?�xa��Z��� �(��q8��A�/g�6�ĶhfK�R.��Ek�M����sl�]鍭b�70���y��M��:U�K�g�u��ʞ!l�������{�9����	�uu���t~�gQ�'����iZ6�ᛰ� �GM@��U���~-,�e���U.���z�����a�XmfpP���a�T�侳��ouڄ����4��������/�k�=|�/1��N���X��X=B�+���[�D�;���v]_=���<2�.��[7ѝ��'WM���!|�Y��X>�Q���i �  2	�\�&"�^ ? -��$,���EP�s���q�Z�]+6hrY7$VBZ�8��Ӭ��U���d��Xj���/u�����/��:
{�:���Odk�! T�0,~U�,㰔K�O����;��RƝ.���g�%&,��$��K�g��V�f.�R���@O�)^�# ]�Y�_��lBP �{F��X΋H��_�?��B CZSE��B9�5��٩*S����'c���1	�(���E\���T�q���]�*�L5�g��/ ���gA�<�_��_���MB����_.�f�K;ְ-����o|������bq&;D�`�+{����Ы.�F���6!�V��z�fA6��h�4����I���Ȗq\�����	�[93,v��@�:����E�k�+Մ+�Pb��Qñ��ξ��`�?,�O�:�J���.�k�'c�n^�k6�8�S��<)=n���k:P�*U�\��$s\Pśl9úz�,�S��	���hM�do8H����E�o1�=nY"G��a�4$��ǀKP����/��/����i0��=��?�B}q�a�/\}q:���%�d��a����~�A%?}�8tp�x���Ev������F<�+�cw��S�JSr�EN/�WU���6��&V�� �9���`������F@K���Y����)�P(?�����pZ	IpO^͂*��刦9n���o�i��l��`��M4�����*�߭ۻ�E��k���G`��no�
���4v��� ��e�i�տ�| (���c��щ���~���]<[PhdD~o�J�C��F��u�Ɓđ����9{�]�G��/__~�9~aT�
�W�#�y�W8��¹����%a�޵I��0��T6�撸�����,�ߡ���(T�N�qͶ���ỳ�����4-
��eJ�C��*�m\�/ϐ�o1�{Ȫ2����%˩[#4��*Z4D��	D�yW���g���&1H�͂���c����sC>[K��-��k0k�r�hK�x�����l��@ W<�\g�D��ki�v�SV�s�c�31���]����c���2��Z�Q�}F�i)G�hh�h�:�b�/LH�?w�!3��H �?Bl#{x��v�ĮWe�$G.�Uv�-���0��XK���CGhR�n�� ��յY&x��A
�Əm"��ky��?z�)���hj�mRB�_�(�{[��w��<g�T��l4�l&Gص�B0�f�Uǯa�����=�F���t��b�h��[�x���1�G�e1����M�t��_��� �E�~X�g�7�ˆSq6T>�H8�jF��&�x$T���d����Q:�2������.M+	�mD6�r6[�2���ų	�/V��N�{l,���]cx�~v��Fsr�Cd]��8���}��*A\����}�0!)WТk�ϳw?ы����,&�v`�nؖ�٩\�JO��fI���q\ïCЪ����[�Y�4!�97�قi�֪��k�B��]^�xZ]�b1���d1�{��f��4`u�G�se�Wޢ˽Z��"����̚���LѸ��忒��]���K���a�͸�A��e��ͯo+K��tp�.�w�O_\\�:����u�L�ѳ(���gGD�$��e	��e+��ë�W�uc�l��f�����D:��' �Q.��.*�1O�|���{���J���� �BI��D��h�(Z�b�,y��4^�v#��\��R��%��|���Np�FՇ0p�r���)��}�n������*[�x�,mb�da���#Ƕ>��Fϊ)��R����I¼�����Ŏ�t��Ɵ������*�p	~(!�/��K���:*Ȓ����2�#�,����{Ʈ?5u�zx7*0���|d��b����>
���I�o\�H��0���(^��_l�T��0��}6���d�g��77Y�Ȣ�����֦���K��E4�
�	�*��\�3���4�.M����Kru�8�ٻ��W�/:F�tO�S�t�L��*�qn~4��Z�
m� ��v�?�r%>��m�6�U�`|bX�͘���%�������̏����{]�j�T}4�-A���I�Ȝ�o�9�FHW�&N�b��6�c�]�g#�x-���؍����6Ϳ�x\��9.�E��ܩ�ܔgd�������6�q-����aM�Y:)����(Ii��g���;_պ>�����#;(9���U���
�B �(�/_�YA���V�YPd�vj�0�����h����a��O� �: �(�g9�<Y��{�h:%�a��Z���Yu}��1�@N3���/7��#�����N�..R1�LܩEσX��;�;��=�� �E6\!�g���s��1�ç�2�*#Y��T�����kY�-�fUt#@�2&[��=�8W�u*ď�1��.�&m�R)W{���;r!�Y�it�qm�ՙ7��!L�i�m�*�:����z��k�U/�ct� ,{�����w�<�.�gRg��X�@��G5Ј���W���P*����5FZ�S�A2� 
���o�������w���Σ��n{�����Iw᭱�Fwk�iۚnWݭ糁�t���O^��s�T�JD�!/�j����as�e�=�n��L��`�֛
�����7p�-/���c��7Z	g'$��X�6vV���^��~�1�O�j9`��)��(���0��I)��<B�sf���� ���5˶��\�� ���,��_Qd+60��O2�Y*1����r~�`�����D̪,T��q����M�)�g�бدEx/���.�^��Fa�[��y�Q��T^u+�7A�>� ��G���<u,�[���[˹�V�I��������(��'R��;�`xe����&�-�l,ȴ>�N���啽����`��ݾ��M��3w�����;�z�}���l.��������m���v��0Ns��,*���mP<^���z3$˿�"'K`V���C�ި�yFv�V�����������ܶ\��2v��ޠ����ϕ;`�䶻�>Ҽ��Uc�����2g�6$�]��{�������bw�Tԫ����ME0UE9U��R��R��_��K�VK)�����X{�1���j�l���=�*.�����$��]�\M���B讆���m��� �18�����0l��������^���p9��1\�6^Ϳ7@�W��͢L����ƄCt���+���Y���1�H����4�0n�ߐ�3�S��w��ӧn����h\�Ć��Jo��(i�;z�%e�Akk�s<y�z�`5�0K����u��`��J�1۞!�\<�y3o��#K��.��Kk׳��j��{N�fF�3����}���1������� ]ў��C���] �*'Z%׎m��gT|hW}����|$�K��>Zkl^�����;��B<z�ٺ�]l�kM��pom�au�diR`}��"綊Y=Rź���zQ���Fǅ0䘏l��y��3�a���qw��Y���!<��rGBo#iyd�ݮg�qM�{��b[t�,�LG�ָ��ۨey�KK��Z� �; 0nj�^�>-���G�U1�nj�tS*bo�e��r���m���U3r�[/k�c}/kqpbc=k\{�֢���~���be|�      B   �  x��TKn�0\S�x��T>~����;0�,��#�$[�сr�\ �S�:r�fQ���͛����&��1�Xhh�2B&B�o߇}Jv5��_��q�'D�4� �Amt����	!cHd[Vmkw�jq���hnt��t�j�S<"��"���~^IԧD��HA'����Ańh[��Ϗ����ilk]���� �y���:���G?>t.�i�H�ee�����>:�EM����KH� ��D`�F1��bM�Ђ���_hyIA�%��B����ig�~�o{���2A��B���O�7)��g�����]�\ȗ�Ғē7� �Qʨ"��� 3�:Ni���4���W�xndj4�);st���]Xۦۂ'/�|[�}������W����`��"�<JS��v5h���i�퐠�������wE��c1�      &   r  x�m��J�0���S�.��$mzT���"�x�K�U�v[�.��|_�/f����9�����P�й>SY�=����:Q��D�r��J���d,�\B�&C���t!�����d5��������}[�1A�(
)�+DQ��i����/]����]L�<�JJR���K�E������?�1��і��+iC+8���vp��l�ӊ�a����.��;N'"���DY�RC�h���}����󠐏�ƲL���4���D��%(P<�Kq��;��\v���yl��4�� �t��r�m�;?�;�rIr����"W_��M��֗���q{N�Fa�5��
t�6�z?~��<l^+YNkl����[������9         �  x����R�0�u�Y�8���Rhv,܁�ȸch,zq� �@��/��
R��;�=����C/n�M�۹)�+����B��QŹb����ω�������ݙ21>����z8���vx��L��um�֙�=?q�ו��%T\W��RIJ"�6u�&oF/�u�x�~%��}�f��0��/�5�~��δ��ٹM��m��9l�5X���Oa��m����f�tP���l��HL(DR١��Zq˝:Ͽ��������I7Ͽt�ϐhd�\����������y'F0ǬŌL�����D�kKׁ���:0�) q�'f0w��-z(���xJ�ߦ����W?�˻	E���Q�y�k��x[9S7]S��kw      8   �   x���;�0��9E����	�Y:��_5-B�m}�m'
�,�፱�T�8ݑ�J�	2��Xw�TŪaLRZ�)iq�cX�A�!a�z�n�o��6��K�?ƶ�6#�iPN�|���γ y��A�D���:�[ݖ|#�9<��ƴ]�M�r%��ٕ�!-A��^6�BC��^6t56)S#j����8�h �v3b���4u">��ȝ���x����      4     x��[M���\w�������7�&��;o^�$0�Ƌa��Qr_,EI�O���7�MA���T$%q����˗����������ν�Q}P}��$o,�?Y�#��fo5�W(w
:%9/Q��R�/��uJ�D9 �`�A|��s�R$�Q���O� Ҭ�FJ�𹋜E�L�%�QZ)�N��Yߚm_ {�w�RI�s��)�Ջ�s@�^�������4�`l�3��IK�T�ya�.��Ծ?�bݝꥀ�-��9�)�Tc̪�)� �����X���_~���~��qX�����k�2]�}�I����~��Y�:uEU;�6�o��\z8���革�.vh�ww���IN\��n�w���^5S0Y^��o�ڶ�W�`�(���r�m��Hz���R':��d���s�^��<Bh�4��=�F�Z)"造ah�t��N�0��&�Y������)�t7!�����)��Ĺ2�F���U7E�I����+�j���iB�Ч��2H�j���&J: H��9�~P�!>Mn���"l#�O��}ﳢA�S2V�O���Ө��A�S�g�`2�@�H=��Mɸ ��	A�dK��ֵ��vJ��-B�{s�C�'�Rj�B�^����)�nJ&�|&�&�AōT�S2Q`@������A��Q�L&WҨ�)��N"���|K�Q�S2eY' �A�4=-8�%0�b/�����)�N�2��O[��W�L��|۩m���Z*˖�P�yd��z*�x$$�	A�Ծ�難�*'�	A��*�T�Q�TF�跥�G��T��ڞ������R-�Q�9j��%�䚣r�TuT�Ԅ�!��
}Q5TF���(!��a����p��SR�������#D�ΙQ�_�YR��M�����ki�T?eS���	A��v~/M�'�T�Lڡ4�|_�{R�T��B4�P�(�HS��j�b��ބ b��-�%�L�x:!H�P�V*&X!<M.�����V��'�6'%�I�$y��~�4�j�b�tș�k��뒬�� /��> �LSuQ15UބR])UU�	�rBٮ�����,��	eZ�<�B~�BP���7y}�����lѓ�1?}x� �ʩZ�����9!(�Fj�{VMTM��N�$���۳��6�&��v�ۜN}/����I0҄��iQ�TMI��"�R�s\Q�TQl�9��LLO�S[���q�hFrn9��*���)5#a	v��B�,5a��g-/�e}ь��¡n"��}x_q�E����˓Zb�|㎽�ࢹ��1�J1����y���pA�oᬚ�00���8w�V%�^�C��V�je��..����0��۽#�o�
�ҫ�"�Y��~�WU����h"��/W=DƑ��'�ɵ���!B��kD�<==N8��5g��ܽ�F"�c�A�q�ԌTU#�����7�G�T[X��W�PU�p���t};յ��q���죘L��0Pp�T�D�����E�P��>}4Cβڝ�j$2���<���]
v�1�OX��3�M���ۧ�;��%gl>�.�z������#�iB,�9ɪvr�%q�b��v>Y�OX�$�iB���ɪ~rF�����.F(%�:ʙ��7!�����B�(D���#%b%��M�*�j-gr'< �*�8h��Ex� �?5�"�]�T�Q�X�W�k�=�+L�����\U{q��P�L����������.�e������|*� V�G��V�ƾ����z�[�A雖֜EjC��{�������Ǳ��b�Ԗ��$.؀X�����.oR�̄X��,AjGF�Y��l���,Q��X�6����-n��5!VqIjG_w��*�3U���[��_��9B�A궅R}R�N�X��D�?_uU0T�;!V�_����6E`��:.�e\�!�3C�w�����G�v+Ajg�����:�vZ�U�T8WM��/�Ӫ�
K��g�*z�b�X��Vjw���40!r	 jw��S���=e�����U�r��X�u_��<T:�N�u���P��-B���\v�� ��T��N���XUgᄒŹ��\Y�	}w�J�7+Nޚ�tY����C��#�p8�v¤W�f�k�I�1
��8���Q�{Q����qkD�Wc�ThO��\虜K`�XO���iU{q���e�ZRl�y��,�wBb1�$�vL`$�~�Xʭr��{�����/?=�ytX��|�-��������~{?���=xEқ%?M����j�ƺ"8mB��˽��ꥰ8!^��U�YB�Yċ�B���ظ����ET��4�v�%$���).˽_@�A�o��>�}�}�e9�#m�&����桾�r���qo���'���i�^
��9������n
nÐ�1&�?6B��Q�)0V�y� ^��V�X6��d�H�4�ڨ�qn����x��T�V<�O��o�n��b�L�ւ�V����.מ�F.ú�Cݰع�?��v����L(�n�Q|���x#�o��5L(����^��J:�V̡�ݶa������v֣��ЀѦ�/G��|c=�k��PL����ˇ!�^Ӟ[,&k~Fo���� tn��C�䏮�?�x�7֣��ЊC9��/��z��"g�ꏺ^/��eB�n�9�r&��M�[�W��ַl:�[��9��̘a�]u���v��P�N��~��4�t�c�����G ̴���P��'}=~?��վ�rئ��X�G�g��,���+�4+�G_�#+�T��
��u@������Z
���!��:=}leUc}z2���1ͻ�C��M�/1�{O�bꧥ�	}��������С      $   �   x�m�;n�0�zy
���ˏJ��4R�1,A�� )�/��b�)��af/�~��}��8?y���j��>�H�˃oI�<v�,a�IuT$2��`��}��q*�T��Z�]�(���k�t!'U��b 	�	T �@v�[��}��n��n$V��]%�g
���g�d��I��R�N�CnT���Ԥa|[V��N����ٜ�1��%i.          �  x����n�@���SXʱ2���[Z7R���b��\ց��(y���~���z�I}�~|bvf�p�qv��k��w#(��\ʹ�g2_�l!E,S�IHDz.<�fR,�X�$V&Ctf��(��ǧ��(���"��Τ�2)#�����)!�����&G�R�8�p�w�e=v=i��&����UQvt,Ѭ�� ��G�T�i#'
E
��η�����P��ǲ���z.[:��/�O/c઩�>�D'�# t$�����c�I�rRX�n���X�g٩���)%��&�W]�\��l]��t�2�r��P��Fo�-�`����%`��$CV��>/a鸛cOW���n��ux����z���b�Rph��xr��ܞχ�a,�˭d-'��丝����P��O-��ݖ��N��O%�Tu��쨫,cɔ�NPaa�ں]5Գ݇.n�Mm9ރ�l��}9s&�}Z���Q��R��%�<5cU�M��Yˬ�	�F�y�����dRk��B��k��S{��2f|'�}׎������������5����Jpz��u�d��<BE_�����J�&1��w�v�V�NrfB(����"�T�c��认���ӈ	�W��L����+X=�t���v�w�7�-�\'�˲&�>��m���(��F�=f      9   �  x�=��u�@CϚb�D��K��#���6��FG<�E<�E��9-:���;�;��P��~���mq���"/2�'�(�a��iݟHc��r<1ZN�r.�-=	��(p��Y�ݺg��u�g�J{(=�����֞�<�J{.(����m�����xA7^`�џ�6���,�l��,@n�~��q���"/�WR���A�OY��<f�N1y�$�9�d� �d��$���ɂ\m1S��X���dq:f���;���`8���`�4,A/���AG��MS�P���}��n�n7�t�)������MG�v$�z��m�K@p�Kг	����8L>|{�ލ��I0L|���ܖy,/�"�+)@����̏\�����K����w~��_�_O����&�M��R)�n��쓗j����鍊�ƛ��S4mfo$�Ͷ�e��)���Ha�v.�E�,��z�^n���@+Q;�k�i!ڝ�k�4EQ��Xz����
\&g�N�29���ə���L�|�(!gթW�_�?����6y�N"�j#��"�j ���"��]���)�)EY.��r�h���/1A[Ѯ�i1�/Z��V�)�����C4�V�o�]�k��4���C<�_rXo�Ȯާ����Dd7��r��*���r���Fxs�6�0v}���{�e��>����O���μ?g�oa�,Nݯ�	BNz<�Ԅ�����Z��:�      :   /   x�3�41�2� b#. ��0�\f`�s���)W� �L;            x������ � �      1   V   x�3�tK�.)-J,�KI-�IL/N/*-(P(�N,HLQ�=�4/%1]�R�P����������X��P��"`eh�g�m`�[+F��� ˎ?            x������ � �            x�3�4������ V      .      x������ � �      H      x�ĺg��X�&�;r�c�F���Ujm4I��j4�����m�
��Pȍ="�RE�ԏ��ܜ�~�9���	���5��hN��_�o��u����}�?�8��@��D}C��P�'��N� �o)J�a���{���֮´Uc��+�����ߊ���_�_>U���}�-۳>�;���&�'�a�o$��K����|����_C��#�~J���)��)��w�3�?-���~�����-�r�.���m�o���[5�6G�9����o�B��D�fZ��}���{Z�W�TC���������Y����ߌ���e���m����(��������?l��xI�;�����7��˩/U:��]��-C�M����jY�o]�~�:k֟W��7~����oCR~�q��6��Ѻ�U�����������/߾�~}��>��j�~���-~m�ӏ庎�O 8�Y������d���+����DD`xF�D�FY�_y��τ��2��_h���mk�d��/G�o�Q+����K�����8?�ޖ�k��N��,ߋa(�_�[�9�ҥ̲uS��-ZV(�iǊ;z�P��L�D#Ww��z���j�?���`��p�O����7vh��cY�eͺ��n<�����\����d�&���wv]~���p�Fu]�;��Ol�z|�`^�� w����N��6����m���w��0@�o|?�	&o|¾��n���q�8��_�_��f����x��4����W~�΃�M:�B�m��ҪX������������S�'��#�0��~B��0�;���^���3*��t~�?8U���mUD�~���ܔ�
~������yM�%��q�A�OS���?�K}[��+N4��s���z������V?��/w��ky�_=������`����?��Nt���m��� ��~�ArUܔ�o!Ɵ!1j���~����'~k_���޷�۔��n4�[������˹9��ܬ_�����{(?��/��Q��i�??�_){��E���_��5ý����7���C��7��p3�o���σ���A������ѽ��	��ߑ��ǣ=��(n�_9�\������Es��ٟ+�f����uD�|��53X~���FPP?��$��q�����?a�w��u�f�f��zEk�'	c�Q7^�᷒�Q䯒��A�f|��[9���;�������~�}��3�oٺ�,�֯|�6���������r+��[��)n����k^���裮��o{�D˽��ܕ��_��F���O��K�}u�W�h_��.���F}61Y��]��G���\����WZ?'����[}=��,i���Pg�:��j�:����ݴ�}G��O��	����0�3-�B���gp�-�aNٯ���r~?�ۭ��Bݺ5k��d��q��엓�����������z�5C��t�%U����ƭ���m������������{��>������߄3�Ƭ��ۏ7������?����v�O0��Ῠ�o���U���&�����"�-��<�׃�����^��ۢp�;B�f����7��if����?��o��_�&���F�F�?_�5�|-����M���6���h���N���h�~�����/��_�_�Y�u@�T�����Rp�����#�pLpgmT:��C��`�_�!t��m�2z���i��S}�%�Q���)_�%p����F�^��SEQBs ]�*^+�)�ͰWA�ZJ��V�:��F4�F{�A�E��kY]�_��;�,a�=��H}���ٻ|�4
�Ie�
�����{h��$Y�{�4ڂ��<�X��A��y]���d,��#K��.5���8��?�:��t�)CHh��_�i}2��?kp����.	�v���4�BC�^�p��|���TNp��\Y��b���<�:�I�iy� �͈���� ��/�d�3$��CeP�bt��L7P�A0ĕtњrt`[�q��������_Z�%�0Fװ<�08�A��a���kp�Ҙ��H�p�1~�^I�e�%�����/�ɣ��yri��<�INũ�C��&vp�4\G�����ܕ�s�P$ �,=2�U6f�)W�j��mz_�y�ॲ"���{������*�O"u���^����n���D!ȅt�*�D� ��]#*ɠ�I��6s�z��:[��T�"��1��$#��D!��[��7i���Z쥨وP��0��(�Jed�1�g͠q�`s5`��7�Й+��������K���:{zf=�̕�b��{asT7�V:&�]���/����>3r�Kk8�-�Yn]t�cY(1TF��W�9�W(��Vp����U���o�rU��
&x�~�X��2��0�86\F����-\>��:<�+fxi]��zDA�����$ ������.cR���H*��ĂR�,�h@��?X��zm7gޅ���P^ �B]��+u�yƈǄ�lo�����t�C��𴧐"A2�9�l���!F�=2��UG�Z�Ї��V~#K48=h�UrK��1�=zܙ's�DL l�>Q�N��	���a@�H`v�o�Z�>����`�Q
,Hx��A$B����i0�Jv{I'(�Z>���U�_U�JJS�����#�6䞁`�vSkk$�\t7���m���#,^��*���<�ނg���}H�5`���ܰ�s2�)	��X]1ȼ�<�	�:ٕ�6�a��2/�v���/|;_lEx�=�K(��e�g[�Apn�y�|�� �|v�s��RT.�7���JË�� ��v�>RVm]��4��)���)$��0s:�7Vb��xьlk��~IL�=�k���;\�������=i7�ǥQ��䅗e{�R�I���8�w}<�ѵ4��k@[eQ+�桺��e�&��$>]a"R�rx&��1bBt�z�������:(!�\V�&���T��Ы%~Uݒvr�5jVQbG|� C�[pp/a�P��c���m?�'�Q�Yd�����.�+��<���'π��Lw�߇P�J�M/`dJGx(ڏŃ�n\vޮ��	�I�pImlT6{�5/�xJwm���t�
��!o�%߀��|G��M5��ٓ{~�p��@y��3����f��9vO�@��ȕ��1GS]L]�n2%v4h��S��tv+̎�|Ä� f4ZD{��m�˅���?LäW�0 ->[G�V�K�����W0�{`�t@�����|g��f���ĝ �|�&���nB�=�n�U�j^8Lu(���"k�2t�^)2x%B=������%�N�
l8��ߏ��˒ȓfd2ed�D�O{w��%D�r@��0�
f�p4���h�������&>ጳ8��&N�A����� H{�D�Dm[S}���z�x�=X��5{���J���t托l����C�"�sz���}V�w�Y��jKG8y�l*`f�PC5�,�G �K�A�(����%���L���?�3y(�:5����M��gS���W;�UXd��oè�ơY<�L!�丘��Υ����ڼ���
�s�-�*���
2O#ϷF1��'X�H ���.J���^$B=#-Ϡ���g�Sb�x�S�XS�,�ǅ��4����YܤWv��l���s���b4S^��F�&�� )#)>l��ao�]���G���E�E+<5����̶��(46(��8�1T��J���_����-�<1a,�-�p0A�Ɖ���#V�Atҍ��v/�՞V陬���V!�/j�.�P��鈃��l]F��Z�����81��I5�mÛ:˥_m�z�?�*(���oE�3Ɇ���
�L����z��k"��P�q�vNR$�-x�0<P�.#��2t�K��G��=pԃ�U#fh����^�j��z�1�H饜��x��f��S`�B����'�o>�_0��S����Sn]�$E�i��y4�SߛZ�V�E)C���Z�G�0�a$F.���ԛ=`bB��������dx�g]V�DFVUSO��"i0�{�-���.�Kl    ��H��@\5�QQ<X�|�=��Nz�T_~��ݛg<��Z�ҵ��N{i�!ʿ�F�CPU�
� ��2�~�¿�v#��?P�3O��������W�&��ﹳ�c�Oa0��ھ6&�d�a .B��&o�m���ٌ��m*�(җ��.��üE��x6����B30h��Ҏ���}�'Q���6̶��\N�v�r�&�G���KKңڝ�Y�9��h�����"�7?2Cfk��A�0[8o�1\&��SJ<��$��#�U$�%1��d�� �0-���| Q��ã��V����>���幢�Ͷm���(���3G��n��3�/�3�%v�H9R�!E��Q��|�`w�\!T�+�0�����B^�����;�Ң��x��yh ŬI��]`p���N�Q�go���D���i1����X����ܡ�OW��da��"��̺-��ZC�_����j�V�7'��d�}��eͱ�3R��Ք-��(������I&u�˻g�����R���҅y�YN���վX�Z@q��=��(c�	�M��`\�M}V�Naa�z���*�����
1�t���xo��b �GB\�JbG���0I ׫mk�U��'V�0�d�{��C�3�<�a���c���m���cK������K��^Ke�:V�S���t
Q�����$P`��Z2g,A\����;#ٮ�T������d�K�F<��&�JY �P��h��z�&;"��*'�[u2����MIK�6)v�|�1�S�-ͭ�ڈ%�O?�W>\�4�S
vY�$�}� P��Yᅩ�˒�c�oE�}G7����8��_+���ZL͸_U1�ĳ�C|�-�/F� �(���T�=�LM��.;�^K@Z΁t��zA3ɭ;6�� �2�x���(7����(������\����e��ZTw�H}�^��I/�<���|��q<ތ�3�Y�,��2-$O;�r�^д���.жȨ��-��5�oĭ�
��o��\�vZ_m����������]S睚ʹ�t�Lݱr��!d!wQYXuZخ�Z�<K���"��[nP��tW����ܒ��9B�p[_r���R�Acs��$�&�Ę��Ma�O�5��uy�ڂu.K����@�ev�a,�(i����s�"���^�4�[�5��fT���y��%��O����V�^i��������w�euw\�5*�H@o�>nYxe�G��Q��e��Չ��
&
��j�^N�R���2�L�L�y�Ŏ詮ι�_SV9V�"�sȍ�2�ݪ���@�N�(
E �5�Ѽ,x�0��mB��j�V$������g��ϣ��Və�e���bS�M��RcC�f��"��G�Ɓ�b�I��j�KRe�Ĭ��O��c.P߼��^�u�vi���p]:��,%�\�WwL�t{��6>�G_�"t^.������M8��ǒ+y�o����0u�pzM��n.�j���i��RI*��7n�3�^����� dwPT��4�^�"2�,u2�=G��O==Y�)��8���B��B[�91��hdS�\�O2. �SbŘ��Yg�R૾r�7��kc�l���aʷ0��S>f`��M�7o�Ԭ��s�����^7������.��
�%;m���֐��?<d��#�W��=��`p���Z���Brl�e��]t4�T�˛�� �F2mSC��)	����`u��t'�3�0�dQ^O�q��m#���,D��چDz�*�ٽ���wr�d#]����wz=��O��h?�⒣n4gx{�����W+�.�BmkV��f�����g��l�V�"����J�:�
"��%��{��@���������"*iZ��Ix[�cD�o	|��'cZ�[�5����F�R:��Kc�IM��=��xv���g'mQ��II��^�/�R�m�������C�t�gZ�6�G�\���Dn]Om��GBJ~b�M�EO
�.L�Eh��4Z�4��v�� o{h]n;��ұ��m��8ظ^kg��I�#퇉D�cƑ���VUiq����$P:�z(9�6 ��^�?�[�#��"<[��j�6pU�*���]z�ַ=�����9n��Bj�-�.�qv������g���H�t�vдfE*���ɣ�K�������x�؆�<0I����� �ơC�F��Ƥ%�t�b��CuTzR�!R6��-�r{��7i#�'l&dS�#���{ˆ�SZl�.;U�&��w�ۆ���2K���d�wٓ�Lr��ܳ���tg�&b��|�w�\!ĚǛ��,�x'���������u��ڨ�:A,���z����	_�.!�~L�45�>��*'�{1��P�^.������9��lj���1��gB7`��Vz#��jªUB�p�H#�����y�,M��P� UR�����X���( ��%ӳ�4X�2�Z���;���N��N׸�WKd;�ɶ��RC�n�*�֭8��!Rl,E�ȭ��$M��ɻ*^y��p��>yuw���Þa��&��o�5> gVBVCLƔ^^<�6<7S�S�9-���p)�k��hF���Ϋ�QW���E�B��zM����2�f���)G�Ά��#h�r�TIe&q�[�ʣV���xuy�6�`����3�����Ýzт��si�^��ô2B�	`�E���5(W
Fq���e�kkd������2�z��E�-<\�~.wl+D�*�[��>�<���T��c5nbg���­�w��Dx��z@�:�%&�l1'qMl�O�3�Mߏ1N�;�<L(��}��5W�^�uO��_�|Lߥ��v�=�#I�Mj�Rl�>8|���ݥX�����������h}��7�c� "ˈ-kZCJ�~~��h� ���7{���aW_���9��c�/�sppBxS��C�/
pW��:��pU�hT�(��_��pڻ%%�������l�[�ç^ϩ����<��%8�u��w�G�� 	�x�n����{)�L��t+�u�!Ͻj��[�Ь�Vǻ�
�W&��^���b	v>�>�gV`�.�&�8�YL�P�P��)�ʳ?k�	2�_���6	���U�i����n	�`���-�`�*���[[^d�chexPl�R.Z�Hףgm�C��zIf�|P�V���x��:�?��I�+���
b�#{bä́����3�m�8�]~���6ۼq��U����$��}�`��J�\�]�Un)W�p� �����.T�h�)��o
z��h	i���`�>��\%�#��O�:3%f7�/ƛAVeQ����R��X�����#��}�e�=�A7O�� �����G-Ztf��U��+��|>��s��'�H��3����6Sp�;��[�**1uQ�3���7�V����R��>	�Lo��B�����(�Ƙqŝ�	D^eS#�=��H��J^_g��aZ�n�k�$��v�7��D�BΩ���.�)c��?���8�M�� H�Y�碥�6���	��ݾ&�S& �~��48��Hd��Y ��zѡJD��y��3���>*Qo�x��Q�zO�Io��c��ٽt���|*N�H��������B�8W��A	+�dD�Ւ�Ur�q�cw�Nc�c^Rm� g] �S��a@3�X͸��OB/�FfM�Y����g��Ge-� 9ћ*��|��v=F�s�����"x5o����>��Ip}:}��v
H��x��3,)��/d;j��p��8T�����P?q,�G=�Q�|��8$��CS��P�o:n���I?~#�H������J���{"D������q���V�&;pG�"&��_]�dQ/��H���l�@3`>��H@/P돰��h�d<g����řϻ�8H阝c��PۭR�x5�k{3��C)�I�;ռs� ��)�����~��h�Xѓl䐗=�o�j>LY�:�KS������[`��o���>��ϐ�\�J��)QE΀%|��\W���.G���?N0���Z�VvyO��H�XKi�%o13+��i��@	e�&m�I�D�әӜ*2s��r    `��O���^�Q���@��jF1FVi1�&�Ðq�7���ӷ݇�x3����'ؔ�Ƶ&"j����G�d�04]�hL�?�F�F�b?�"�G�yp߃����DeA��,J��k2�Xp���AW/u��B�h�tL��O�p�����mq�*�Gd�ţ���F?Ag�'�D	Ծ7Xy��5�re�$�˱�:T��
�K3;��R$�F>�~P��ϰ�&s��n���jL#-k�c"����E���@s�]���^����x�`�ɵ�#�'�c�����"�(@�vȑvK��(|����-��РF�L��^�k�SW����a45�I�nR�K�/�E4EӃ6���?�w���g��~����>T�Z=��ja�D�����0D3�t���`��6�33�>�6�"?ѪO#v;��ʉ7��'���<�'��`xE0�b�hj|���m��$��O�&}C�q&G���>U�����h>N`��o{����^�f��`�8����:�s����Qi�֧7��h�'9�Ԅɪo��U�n����.��>H��3��#]�Ip��#[�e\��	Kՠ�[��7�mN ���܉�y�喇�S�X��@2�+J�xr �N:��݇���C�%\�����zLP���-ފ���˼���-N5�i����I-(S�u[�h�q� �zܙ�$��[���7�4?�}jڸx;���:��;�nG(YR٘)�q*�F
�w!��S�<%��|�L���Y���X�~������9;�����PbO^�mLf�>|��~��扁���><[E�Q ����c�lU�K#T��z��gxו��\��	t��r�0 Yt�8���?�k9g�
����?��1I��'�aD�LZc�H�RS�E%�nd�_���}vw��-[dv�c�92��d|���HM�'��� ~�_��v��i��سPB�y�[�O�/G���b��G����~�a�gS���p<���?�E~]=@�(tL��B�eX�j=�=���KH���,sy���� �Qk��n��L+���J�P�w��D�]�A��-�dȠ�m���j�%�8��%�Q�i�ۍKrr� �z׸ �@�.�j�J릑�U|�@��� ��=G��ä���{�uH0�
e���QK�sǅ�b�n�F#w���\.�	,m�!jy����-h9�jw�{bj9��}-~zCN�}#fX���|CV��w�f�� ׵�môǪ(�R��z�uX�㓍��\s8�Ӭ"���M��S��}��<c��'�#��[�������Oh/FuO��}�G� j�Z�\��`K���;D��o�E�}+��=K��������t�0�\�{}�~J"�U44��Q~^W:�[fݞ��8Yy����� G�,�o�3φ;�E��=3ҭ�f��̷	W�O�o�<�DUǣՅ]d��Yt�\�uz��y���L<�����1��m���ja=h�n�C
�	s���K
�\��+��)f�e�qfRɯ������J�M�!��>C �b	��>(��^���<"8���&?�(�+���S�����
Ħ�w;>�8�i������;����Uk8�C�YbV����)��Hf�t��e�2���1X�h���oDr����;���[�D��oj>�s���5v+�3��L�-��۬>o] �ۄ&��ĉ7(�T\O4�N�G#�|ǧ	�0�0��b�:$���΅���:��O�'��jFZ���F~�u��F*V��.�P�S����Vk��OЁpt�pt�z����(p�`r���6�� �Kݹ�%_�4pd3F9���^�H��MF[�_(An��Y���D��V�+a(桳:�R��`i!]�d�W2��@�OOQ2�B�3ü���<Xׇ�}��b��f�#��5WR�G���#�L����D/�mj��f'��r֫p�"�3���羽A~�`�}��%0T���S�ᾯ|�M�{�E �����H�<���T���:{p���� ������{\CpF�r��|iF�?v���X�����;���Z ֕�M<�ǐ��"G� �x���3�̍�m��q�����p��c��X�е�ܷL>֔}Yw��G�Y"��٬�ï��t��A���L�N�*�D۞�>(��b�H7�ɤK���W<��DrE�en.2�3�.Ϥ#�ބb#��+@���^�s��B�\�p��E�2��	W0ޖ�Sod������_$�cfת�zI��P��r��/���9lq�?H�����b����,S7;�Rw��O9q�t���E߾x��n�����X# ق#�"F���.�+2����Q�nb�c�-HBԹ�Y�W���A7�?�1��E��ᇁd��	?�#`df�a�U[�$p��7�� *"����c�s�}�^�IՔ�#f�B6��T"��!�|6�)Qq��۹��Jn��)Ԍw9l��D�T3���F��~XV=%�����p8g���^c�����a�.A��qZ�+?��8�z��|T�B������03+����\�͆&]���Bф-5�L������������[nW�P_��e��͘�h{W�JxՒ�n�=��<b���اC����rn:[�Z���1�蹖��y½m��N�h�c����S��6|F�	+�xt����̳9��@oO4/�CJO�Է����F�6���/eop���c2�`.���
'�� �+%&��MM�dS+ 2:v�4�ܭ�Q�;��0T	�isl!��ä���B1��o��0B0B�ߟhb��}sn9Ƹ��'	?��N+L�x!p�1�	����״�=� ��7[)K��4�1wi/�]�}���r^��"W׈e�k��%8�uV�����k�}�я����L%�ݸ�w�+O�22&�����c_c�)n~��nCZ��͹�3�?�'��ɘ(nCjT2�&�u��"��q���:�ޓ�=����W:�U���sڳ��Uù�)z�%�.��$���Q&�l.t2�t�!�ڛ�/��\C��������t���u2�� !���-li�ݍ��A��.��c���GLm��{3YѢ�s��,�t��M��P&ޥ�j�4�>q	�����bF)�"���k���0A�]��^x��~�`�oc"pL>�W��V"Ƈ(�� X$ �Q�[�i������2V���3�1!<���b2�m<��笞���M���,�q_�ҫ��u_�4�3���ύf
���!Ee���uƥ9���@�c��<F���	��O���<m�S�yyn]���P��ͽ?�`��F*+b�B5ޑ��2Yd����}�#���:ex�;�"����b5�ן.
V���*LNoPr��[%�M�𣏕S��g�%i�]�.J��<����=z_�1�}m��2%�ֵ:Q�#ĩ#���7��z=#09�o�O�9[ӡ��=ɧ���f�v#XX{���h�V��Ïq{�-�)�%�K�s'�D���#�*O &��6%�	 �C'��X���8�"�es�5���JVt�T�Q����˗��g���CJr-|܀�:�~�ף�G�'�ˣ�%���;_(��7'�2p#�W�z-���-���T´
n���e2˳#�$gG �MM��P�ލC��l�=̏Sݘ�o1�v�7��ݜ�;LN�18�܃K:6�;cP���yEF�����@O�p;(I�6�ƛ|���|�zl�ċ�����Nq�Q5Qq!�{�*��V���yA&Y ��\]�u{���ݾ��>�8B�����L�D�c�f=(������.ְ�F��Z����FȊ���1e*��i'y����708rG�O�~� k&�mw��o��ۏ���~�X��DQ�� �4I���>T�q�/ڵ?�&�1>ݳ�M�v�L!zt�N�k,o�M
ճ핽������L+>�H���8a��LQ)W�9y����a?Iw�K:���|���+${����钤�Bfܾ��E��y$��`h���u�=��/�6߷����X�urx�7q�5T3_G    ����ѐ ����RU�h�1���X��u��l�����e�Q{����@ӗ4|HO@���!f� ����I��.L�Rj�P�F�ܜ��#�xJ�� g��̢>	�(Y�>���� I��ٿ�vT���1*3��|�/�rd:��9�O6NR��u���%�٠���H,\�>.������YPDS/�' r�+9:g'�1�[�E¦%�_�޵�K�H���i8x�����f�v�X���ʿq&�a�� ��q��>�	�)�`�b=g����6����쐛)��j(�7�q�x��q��������Ö��բ�������BG�ٲ:�B2���N�D������Q���OA9
���U�|z��<�Q�r
@T�!\8��I� ?8��h�Ԕ
�F�E����&f�uk3��H���ю�>S7qv��
t�n��,�ID��[{����<���D` Mi�||��>�jI>�vg�(N�@��y������휩r!�T�r�I��Z��O^�w�=Q{�+�y��
�'�v����<�lw�g\�6�J�ٻL�jO:O%�c�Cj^���YdNu��gԠEJq~�[��x6�m�\�3��(`#5�0	�3EJ0:�á~<j�4�a�PnUL<�󬍵S4E��.�Jc�'@�)��k�%�:x�p�d�ϫ��~	�O�3a��b�Z<�~��������B��6;K���o�����2�Ct
��mG��Q�)���edľ����Y�Dϼ*;�'��9��.�� ��L��w�~R�}�1�T�K�Z��+W��+����ꖟNt�Ӈa;*m���ۯ������a6s�9��S^�u��!{U�vs��l�}z@�y.n���F�����S��Ƙ�hFe��K�:d
S{z�O${�G�;��uf�΋r�׬���..�W#��K�ʻ� Cf�]�V�m���YϾ���Rg�[d�0[�d�{�iW8�d n�n����A�/����������orIH���@�����W:�T~�[ˇh��S�퍃�G�.ϻ�����]�û}�q�`�o�`sH�xk�_��j��h��1���P�K<�h����$RY�3��$y�ʛ����q�K'��bE�`��c�$�3��S��ۼC)~��Ɉ|�5� [>���P���@u�@��s�X�XrF%�^��-��)���s}���&ZN"C����޶����c�V���c�*4'��:B����{��7��;�@#iVU�TmH�w�g%	9��![�Ҩ*�h2����� �	="q5�g�g��oreA����M� 1G t�'+Ҽ!��ͅ_�V�ˀ��NǕ�B�q"�o�	d��	�����
��(7�������P�&�e�B�4�5�V;]�(�S�D�G7�W��n(#���\�/�0#6��l���֧��'���j�$~����:�<�w��.��y��D걫����`ΕaIJrvyV��;k_F�,��`h봾�<����_��w��pUvB�̂U"������c�q��W8����~%L�r��xވ��@Z%��R�B���P~�;f0���<�0F��X��1r� �
��%!�)i
ˇe�:؋,���5"�'�yÁ���	�@!?��z�A�����^\������ %
��뀥ry�˛��������P��B7v�4���M�੪���>S,��C���*Y���=����i/	��苃01�lȐ�m3-�	u���M����m�?�1��%?�ߧ����W2�ex����
��2��.�Ƅ��-�%iL_�:��e�w(Lj��qR:��Ժ97<����S?�v�Ғ�W�/�?��Zm�Ε�\� �{����y?<9����:Af��?�R?:L��(K88P�g�-����"���!��:Kv7ss�0�2�Zm�!�L����فh�����\��� ��t|���GY���K(b���|�D��6�t�H@J��_@�q�(<��'���A���7�$��S����SN��0r;�5FgP���X���O@r��}�=έH�>�-����4��en��������_�b��Y��T4�P�_�E (��]�P��:<�4N�7�(��>&n�Qע񎷡�0��a���r��(�H��+7|���h���{#/I_|7�E	
D; ��v֛�O櫫>+2�ZEV�G�9=���2��\��-����,�#M��WzR{���)}U~(b��������#R�li��Ji��1Aցy�	�7n�֌�����錹Z���C����=i �d��I fw����A��p�e�	^�E��4��W������=�,��?����֎#p�H��)��ēӬ}�	gRr��q��0���0�-z��=��^�p��.�J���#�沐P�a_��F�By�W}�B���j���#���̶�*�s��gu=:w_e���L�U3��I�΍(�#�Eq'���6�I�F�lB���`���^$�KE��F}�Br����������R$)O���q�1˛�<.����N?x�����o8�铅��;�q���r%���$��> 6��[雱��&|��2W�n2{z�H�b,����^3WR!J�E���	&p��9`_��/np����QZ�ݑ��y� Ɛl������H�)�[����e+�1UR�Z����yO������� �
>3՝rC�O����i�{tƭٴ(<96��r�Z�[�����W���6�"�(Q��Ǐ��Ӈݔ�Ed�	��ˢ���V�Z/Q�g:��ͤ�ia��<���ƴډb�����7��7�����-�sg�Oo`*`}�?ae��;��9)�� -�]"��6#m�:T�[ڦ�!�ﯲ�rS0X�.������co)���S�}�~�pF'KΠr��
PaՆf���?s��T ��e1b�������n��t(RD��8D%)v}V��'���Pȉ��:��yO�{�^H��!�M,�2kK�H�!�A�-�k�M�2�!qz~/?į���R$���@AF�kՌ��6��7t#���9���ٙ{��=Q��6�'�,w��qÕh��)�7ۃ6�!e��o��X������5����~��QI^�����Jh*(�4b�D�áBE?��	��^�Jmۀ^0Yyq�M��m�0��x��.���������q7�b"�~��
�l�*���Fn(-�g�Fd�ī�Nj��&�o_����l�eX`�Gq�'䢢O2�Ӆ��C2�ɱ�#�\9��VΊ�^!�ɍ[�i�/h ��)��Suأ%\c:.���?��Y��HB|0���'�r_�L���m��}u�D��lu��0��C|�p��MJ5��B~{T:��]���
�u��v \�E�ǆ3@ն=9~��ժ�͙X4/��>� �����,�wT�R$φ�<�=Y@6�I�i�(��~�9_X{��U"*�*6��
�Yeg �{��|�i�1����cj��)�C�l���~g��xC+��O6WԕZț����e�K�v9�E\9M�C��1)�����}���;~v:�,�f٧���
1x 6�
��n[�YNH2�ʺ~�]�5j���o��h�&��˕��`�s��d��(�q:��ґ\r�6�a�&ގ+5`lP�}Ii9@BH(f�͵0�53��{z!�ݕ�I�)4@t��F�+	֗���mp��(Z��w��47��\�u<E���}{0��ߍC�X#���,˔We4��E���f�����D�����o�2)���4�r������AϦѴ��������h��ȼ����g"V(�E$� |�ٮ@D$_m����^$�3�N�
O��4�M�`��s<!b�93:.(W�}=1�B۷���,
cQ�=�s\�@�w��H��;g0a��,�;"��nR],6R"�EN�v8�`�鄻�I2y�*Cz��̃�ZC}�р�R4\�ZXI��=־��A�_�>��}��T:�̓��|�@��:s���S[Gk���vy�ռ��f�m3C�$�πD6�0��IFd�    �G��܃��h��c�o͇�α�;ތ�|J8�S���X�oa� ��Y��[W�}2�@����'����+�$+ప�GR��$jZ%��I�W�qxb���|�tW�g���0���W���A������� R����g�4f��e����Gj�aMi�m����7�^3C�%d��M�!������J1cW��,��xO��Z<����&}�ؽuT;R�aVm��L���j����=.�X���5tVP��'�0�P���w�4i�x�Z�r�k���ۋD�D�O�k7{�|�5 ְN+cXC��¾���A��!o(���d���5�!�2D��M�DB�)��_8oY��W_X��(��FD@x\�E��X�9ɣ�M[���?1�9)����R���@���(�bLH��܇uO�>5I[.��i��KW�#�8@R���������^�\M��0~3=KiZ�!����pk��������{#�݀&+N���0�hׇʕF;m�\�l_\��E:3�_��F��L��g%��}9�M.��������8��5�JKC[�Ec��x.�������h 7�<�HB�HM��n?:eN( Pu^��؁�GٍQ�Yp�/	��b*H��!��M������9}����M�?��~�o!�_�9܄���a���T�HiJx��@�J	�ww�.�x�퓹��J/>�i�	�ޝ��t���~��7b`×�?L<�[ed�y�S����
��"G�w�������d�ŋ�V�mt� ��yp�~��a��m���h����c4�Ѹ����%r�Y����O�
x��##���O8[�d���@'�enn߰����|i`50�8χ�h3���[�bJ��\����w))�;��##��j>h&��??���Q�����W�����ݜ�K�-M  �@� ��|ln]do����_U�k�'�ο�wq���D��A�Za�o��m��*S5��]�:uA��AڙD��q@�:��[�=�r��)�-�E�`iR^F_FEYJ��v�?���Y�{���<�����J��1>��?�Hy�p��p�A��}~�84R�L��#��$�<�B�͠� ��x�����+}�2$,r����v���H�����0/��7}�CdTJͩ�c�W�<Y�E	p�O�A	��DGS�����)�:�Ė��}K���qE�O���/���!����j{1�Z��Ѳ��|%N��d�8e�������������)��L�b�
C���98|]�PF����.�m�B����φ�_�5_�Y^�����i���|R~��"~����b�-2���A���˕�������k��Ӟa���x�u����MFeґNq񴮔���3��W�3B4�!7,FI�=�ԐJa�W�<Z�X�q7�����M\h~������������3�&����4�U�V!�����O�'������E2K^i�f��l��cE��(��?{T���ʐF�ߤ��ן4��\H�|�Ʃ�}�~�GC3�Y?}�P�iT��
ҽb5|��$\�S��"�K��j�u0�k�#�z4^��`���7�=�x��p=���vn>����|�$�vQ��n2+ ���m��_��ݏֆK3#̔(����l�V���]���ȷ2+�{����x�'Lxu���lJb�'��\�߬^W���x����!�^�>�>m����k�0�E��OMJo��#,�EA�˂��Xݘ�b�u++4]��\HMG�h�;�S���"��FX=u��h����,<���8)	��hj��]S���/8�������¸b5�%�C;�l��Ȗ���c�S�@�YQ�G�|�v��L�� �ؒǱA�wzeC�TK*�$ɹ�d��K��0��%r^1޼�#C[���yG�_�����/k�\�a�BJߋ7~˴R�x�	7�k��MDD�FB����
���w2�>���/G�RAA�:~.-��曟���ֲk:WG.�W>}�:�9�u��%�=5��S�t��p��&%��4�Klf�����$��t��2⸾^��$=��M@�-n��� ^��(�nt_Kӻ+�l��}hjf��*p<܏P5z]��R3-�Z	۱�e�%��:�!�K����ae�j�dYT/��6�g̴'V���I�mst����;&C'�LT��Ќru�?R��{
�� q�"��-8���ʷ���GR~��_���f�4o�u���餁N�5����ˌ���)?Qs�|�8F.��c�������B��kz��n
ٳSUt�����V~tW���G
��_H�V�k~
�r��m#9`�����8�6�A~/UR#8��J��K�K�Ho9�PR�M��R��~��������� ��v�d`�}�)����I���[iiRs�A?�i������v�x(T�[�����K庇`��gM
����86��.(���Kl�s�����Sj�;k:ȇ�����%쯘=C\�-u:�ϩ�#�r(B�\?�����0dc�A|m=�\ʤ���#��!]{o%�Q���\9_��SK0X׶�ǜ��Y!ĕ��,.��K:��g���3����b�2�e<�rA �<G~(M��V89����*�����<*�C��G�H�;����Gh�ǒ����t:������$m��S,HA)J�A�f?�|L��a��Ia�Ӷ�F�T���7�/EO�(CF�R�'[�¾�#�>ԡW>�Z4=� Z�{�j��D��l|{$BE�����i��%j>��)=�_��~9�}I)q��Hsv���a�@m���u�5���"��:S�>١���޸F���
��U��7�{^x��z5������a�~ҵ��o����Yp�0�/�ߘ5��eRp�.����%ӈ��P��;]
d���2��[�}-2��+��I��؝M�����h7�J�gz(k�-�r��2l���������Z6���NkT��>ہd�������{�p��]�A���i�ٯ*��B�m��M�uτ����FQ�\2���iq�U�aN��zv
�����M����ы�VK#k���/C�r}C�z����,��Oۢ>|�s�|a^c_ˢ	v]�e:&|�VB���$����v5`��f��6α��ͳ�/V�5"�%a�o���;�5���:B�gj7n���[E0\x<��ى�,�a �gZX���Nz����]�P0�n�N�r�w�/��ۢ�рn��� #�s���I�Ǘ���1�V������A��~y�����89�D��7sA �������!x�g�L9%��6k�4���ɺ���4�=����EG���CC�g�"ls���F���p����k$�������*��SZN4��}�q�zXH���2�w���>AE�Q~�q5e�Cµ����f�M�{�`y���&�dC�p�l)�����||�쯝{��Õ)ͷ�B�R8�������eb����tW�y4���Ճf��:���kc�>��g;<lb�\�E��a�G
$�X��S��43�����i�ۈ��_���mg'�/�z�mM�jޘtnY�u֢h��o�Ht������'[fݡ��G��tܵق�n�S��Ҟ��6l��m�5��ܥ2���m�$�$��k�q��D�TIY��5B`G&��\2��jY��/ጾ�+!S%�����%����"5=R�$U�y�%o-?��������d��if�-&?�� Κnd,�[��k�Ty$���U)�����Ff蒤{�A��#���T����v�l^�u'��&~M�P)ߜ! ����������HE��=�M@f��*\Пi�cɹ?�Lzx ��BV@>b�O���W/��>���ڳ���a}V"�]l�ɺUFG���Î����+��6,�>ɹ|�?�jX��)Z��v��o�0����-l1%$M܃Cc����ғݪ7�����KΖW4�{`�j��
�|�O�M�J��}�O�ͬ�tU<u� ���h���1�$a��df8�fь_V��a2    ��	�K�.Y�E��яj�ڊ8LҒ߭���Qcr��u���Z����+��YK�?/�}Jۆ��5����`�Hw���SƐV���2�Bo�	�W��k��n��N�p\F\��g�Vh�7��L�J�g�b@W�T��\��r^���[ ���K��V�x������d�v�׈Dچ��y~`�;�S��nI�8�{I]|>1������S�F����/g��+�.�}v^��@�.kv}L�'�u���>Kb%���-�-ʰd���!���B_d���
�}b
SC�����X,��K�gt�W��������̻������T%�T�5�~}��A ~vboq.��OS�����@�;��Gm��Z�{���E�J+�>3���0<�,qR4%C-�J�N?GN��-yY�~-pw����BD�݂���5}-�t�X�	.�R�����NI&@W_4�����l�G�/�����[^� :�,�M��pį�n1��-�;�ٹ���!H�g����W�ES�$%��G���p+�Vɽ+~0U;�����YB�8N&fI_�S޼ �ba.q����
U��$��7�%�{v��+�9e�=�����¶�D�|�KF	"0�X^5��V 5�5І�,,V��soC	W�Z�;�(�����W{_��62�¾��t�\�$��DC�DjhlO������r0m&���s�RJҙ(F�g�H*Ҳ	�3a�^�����f�g,���mj@=�EH����o�b�쮴�|-�9m�S[��^}Z�xȂ�tZ�^�8T~V�e�>|NK���C;�~�ESv�]CY��hI,:�����`�0|�Sz6�k��:�bh&'Nӹn�Pj�֓Pi=�������l�֖�?\�V��W�佂��)�����>D��t�v�׏g�J|�3gL�����<aI�5���Ts�)��9i_���ь�&�k�c�d`j�rpJ�)�2�t������i3{Gj����Kv9��5r�̷�ꎵu��t�8��B0�C���Q/`Eo�d9��r �|�x���*%���9��@�J�@�	���N��#Y,�C�6X��pc���nF'G:�~61cgY5�E0�8�l3n�8�j�K2�3���Z���Q�����@[�ʮ�q��̪��1ĩ�h�Ы��c�f�k�W먕S٧ .]��b���ۍ�F7��U�T�"��K��ب�|��u迎��f��ek�����*��y�� )(QcI��N���Drϕ�K���,0{�C;�9�xik|3al�	.� o���}�Z��F�'�t��`���תy���lkFV�3���ڭ�x�d<:�I��g­Hɘ���qDA���v(^Z��o��;�[��y�r�L>G"o�_��u�9���G�����5)�+�r�,��;+���������y���"���'�j�����_�\bh�V�돗;�u�<�p�K��ص�g�x�r�3��?m����h/���'_�n5o�Mn=y0Gk���\�k�������yR�-�俤C�_D4�D�TI����V�1�Oky�J�O��5�dt�䩵�E�6�Z���Ğ�"���`%�_�ʘA��}���������G8��"lSB�Y�f��&W���O��:#���Pjh�J�!?���Nt}z�i�K����M�ա=�-� 7��IķH��LN�m�aن���Y��2*��+HJݢ_5�:~��[Z�,���U6B��5�
l��_�(�DH!�k~Ժ�~�~	���ۡ��"�h�v]�@�Tp��S�CF������-��H���6�Wе����q04҄�l�LC�3��@VJ�Y��
�`8��_���%-a�o�/�<��J+�+���0�8�X�+ I��B^�]�� ��oW BC��q1���YZ"xoǾt�ÙvO	��zܻ<��N����v����+?��6v}v��K^Kx?�㓅��ZUe�ѸbG;y�����@ݚdO�@�{ǁ4ǁC���O<ľV2I�f��m/���l�ϕ�U�(����3�$��2�����ũ�~ٸ  �[:C�N����YoU�F�g$�"��Tk��k�E�{������>��p�Dj��2[n ��Gl(�S��h�u�*޼Z&������<x����{�&%�5�$����{b_!�$�bN��uE
i��z#߶�qF�9�Q�E/�j�	g`���� �%槈���߅�2�$��߳��G�O�������(y�2�~����5�<�٫;��6�����U?���5��ֶ�[��mR.�pH4Vb�\��*��"�,Y?�`��i�4������Ը4fw�b:�ds37-�l����ȫyZo���mbpD�'J��Pv匪2PV�~Zza�ผ��*t�N��՟D�_j�#$!�<���Z�#���)���]^V��Y[��$��(#$_p����/.�.��P^ac��q���i�$���q��։���5^�b�����3�V~G"m�wb]�/�`�dQJ�R�j��kNZ��w.9��.K_d�S�Ȓ���g���
.߅�`�Ţ&�Q���{�Lo��˭v�����S��=���5zw��fs�%CrM#��+�v~S[�������Ź�Z�x|5H�l��|C��|ȩ��A�%��'@�Q$+s�ҳ�:��Bk��iT��ɶ����D?�V%�'Զ��5�����$	�y��ɢ^��Q+F��܁��������S�_�|���k����=&�d�IX7��������}?`�Fͺ�`�q�	Y�}���4�k�ogg7�F��?y*�6���~[�UtKM�d����(鍖^0��ѯ6�R�}�5��s~�mmE8n��ިr�CD�'I�3*J�*�^�k!�yV�,d����Ά/�.=�O�g�����b$��6�����-_��yb���`�gNi�H4�I\�~�J�,�����L�T\��G
C+�� ��6%�S����..�Vt�I�)�����Uަ�r��3��-H���ʹ��>��f}�On������A��I'�-a�8���&=�������Gw�QB����nb����#�<�^����+����L$-�0��=�,0H���phı�g������ZuY:���n!�ҟ�-�
8]	8���;�x$r�M�vܪ��������w �k������{
@���閌ҡ(���،���?���d?ȿ�迾�k�����/�o�_(���:��Γ�*��6��������;�gs���MY���޿��?��������-�Ҥ�����K'�����bA&	~s�Q�H)[E��:�����&��!���4�,�-�\ ���cO�,i��@!�Aui���1`�9�%�	h�()�ǖ�>m���T��}�N�zV�֞�},�	��c�� �[S������g���!��`�788 �{���p���"��������o�d9�����P��`�2�%�-7���!f��v��@'�S���5����E���j#W�!��[s�fo���A=�~�Զ���*��|ZtF�hJݧy�z�7np���O@c;߿��+�؈�	] �����s��������QE��?�& ��,�ͳ����z���`:T����:��x�E?� ����v8ENɂ�b	�f%���^��vJ�4@~I `.����j�&�f���m����	�����5q�v�c�g�ڋ�{��`��3:���~f���1�@�td��<���nuL�^]��Ø���xAS m�Q�/��Ɓ�Z���K۸���,W�\�ǔ����o������h�A��;��#����;X��N݈\���U���|U+2S�,�д+4�~�qQ�-Գ2�u��n�[G� I�M����rwmC�NՀ�\��^�X��&��uw=�K/�:f�$�cm��c�:�p���YQ�Ho:,�$,��D�I�C������V��Gv}���vBM��n������`ܜ$ �r䞷h幪y���X��2:=�֨�gUR_K{�r���~d�e�    }h�N�Ezn��r�[_`��|h�Oz�8u�����_Aׯ�����D]O�Q'9kt��(l�����/Cp:�b�������T�~���:�QD-�E�z2�!�׍�e�����S�],z������W��Ω23c�E1΃��-q9�:%L=�6t�}~($FR	X������k�o���������[���i�2����o�	���c#a6VP=�a�۳[(]��� ׎�0ǄK7X;��.Yu�w��]l�s�ο����9Q�{�����gQ�C�5e�������`���c4ْ�:G���A�5Mz�M%����۲{CjE�*Ų�΀R� @]�����u�Y�#a2M:�ju���e|���]�SN'�]�}����t��i!�lg��,�"Ͻ��eC��]<��
E��_x[���U���x�4��<չ��	����y7I�ђ�r[ӧ��$�y�����w�4�L_g��EX �^�X<�?$_�[~��=�nh!fưӮ�n�\����4�T�g���F@��u�by�҈�gύ]����L`���*�ԛ�/�s~4I:�����k=�n�������� F&�oޭS*;h�[��oq-Y�5��Rt�~ݍ�w`�{\ik�<C=�⧽-F��#%�~�I��[����{�Bk�N�9o��~��<���CN�	�+sD ���Qt�B$FC��{�fn�`}�<	�M7�&�@h�\ك�JCqYG�7�`d��r�u��N�4��ø�`�Jk��������C���J&("�T|��ޥp�_�g,��GXn�=���f�%H��pkU�����S6���d��3~����=F7�@�u���~zd�Qb�S�1��X�ȍ���'~��^M�q
"v�8�i)�Z�/�Gջ
qu�����Ui�����\o9r�(�����0_�נ�I��P���HQfa;�Bo6�g��&��S
���|v� ������#�0�d�Wu��?����Gm�C�@�Ӿ�3R9��8^T�_&P׎�'1*~�X�#��K�e�1�F�� b�е2]����[n;�Cǋ�ς�\�R��	���u
����Ö�6M�l
= �v�Coؤ�Ƽ�x��}�?���i�����I���uT��C7������#��r�Xώ���13��(��c+���ݕ��Y�XWW9H�$�����pF�\��e��>*�]4s��ה/?�������]{�R9z�_Dm ���2R���,���_%;*f(�
eg܍�]�	�XU�v�4�IMd���ǲ\`����c���+v�ё�P̝6���J~��@%��Vs�ă�6�S�v��Z)��>�1��/��WF���0f�1�u���FM�lF٬� �z ��au���Ul+�9M��kr�A�.NeG6Fm6��(f���gTfW��С&/ߛ�^��T0mY#���-c)��n^½b���WJ��%���n��f��ҥJ�&dh��oW�[�UWx�K���pkQ��Y�`a�h�	?��i�Q;�m[D��˛-�}�	��a��p��d2[��Ս�ϴc�V-A�)�������!�;�e\�h���[�|�'��5#����T�G�U�B�C�^mЖ	*���=���1ͧ�wq��
����j���a�y^|��򩣦@�"�nO�u�6��<��8���1Ȋ��G���RG�Nb��N�t6���u�l�ոe�c�C����7d��Ǵ�˹������۵���\hm|t�S���$�/=F���I�]���@�cux�g�$}��X��Î�l9H�d,P\���E�z���a��_)���7��݄\*~����XrPI��_��^hvx�=1������nf3;EUH�4���1Dr�'��Q2[­	��A�V����e̹*�/��	��M[�!�y}�1�i>��Ů"O����Y�~��J�8�5��b� �E>����9.��̍���<���s��k�~����Z�̌��/
��wC�G9��6�"5 MY$���"mP��K�^Yl��d����o�����b��7���gŠ��5V'{�)����}��b/�R�i����I��a0�P*��_7�k�櫝]l���!W�q���C0g���1ցo�s!mI`vx�šT�%����=̽s칙^N/��w����ߚ�|�#�Uz�z3|��� rT�	�e
e*(��9`�k�U7�ͯ�=P]aw����3�J~�s�!���օ���3˻��h�b0N��u���7KW���^+]'" � LGpTA���2+l��h?��C�~����B|���� Bw�(N�G�.�d�	��.�,�S���:�Ҿ���e 4;e!9$�}����F��2���Oɢ9͑\�~�_c�'��Wr9UxM٤���O+(�t��̎�X�9�a˶�Pc;]�p�G
��� Ņ<�+%����BC֝�F�q���9.K�a!S�@|��}��wJ�X�#�a��RQ
�h@�����]z{�o�L#�Z-���Y:������^ ��UPK���/8��%�*V�η?�-���ت,B���&��/3}�f+�&p���?�S��z��g.�3K��"Fd����n�,�9魚9Qi���i�o>h��_o1ob��S��3Pno�`y�S���[�]��]qBːV|@��"���BS���}H
o�JQI��&)�g*˷Ľ(䏗���n�,��_@���
�1��+[�|귚���8���Ef��t�U��N\(���Qc�߾�?(��%����8��bm��֑����_vr����O�0�W�yı��Ȃ����e4D�ƀQӦ��i��}�/�\����r'�!Ƴ�C�'I��{<��	��6�29���2��Z�ܴ5�*q�+�Gc\��;Ml+&�wE�x�M�;�I~0M̀I>�ݵ��b�yƑl�p���I��y! ,hP�������!�b�=�Ʃ�[�L��Rf�U&�C1t����#7�w�5���H)����r�����Ϲ���7���a�)���A �,_F�j1k^�v��X��#z>�+Q#E�!$�U�ټ�g�Cͣi��&�ȃ��k�?�^6�k��Q�pB@!I��I��>�A�,&C�/uBM��ϏTˎ���HW�f��W�ǭʄ�v�R�Dգ�ⶆ��*�Ό[s.��[�t��T�||���yڵ�����X�`����cu zgV��Z�?�1�i7���k�������w���P�81č����Mr,0B�\��.:�o5G��	�6�+A��A�5�ʹ��|󪧆Έ���ދ�S/Bj�u��9�D�ׇ����{���r�}���u%�V�$�Bw���1�y�;�fY2je��}<��P
�O��z�=y�Z�W���꧂"۸D����B�4���;O���Ʌ�����7l/Y5)���ȱ*�O�һ�[��]�-����[	�����2�,A�7^�h��5ه�O=�'�	o5o��:�kP~k��#~�m���7�7�{S�ypoް�1W����n5/�RG�b�(2�EE�?>VVl�a->|h�à2�u��"yJu�Nr��q�ٚ�2%e��阰���"�����,u��|⎉�QYBm���.cd�J�^�PE�Z��$���I�&i�Q�GV�2d�r�p��	�i��؞�h�B�F ��}��!;֟~�$ڜ
��@+�f��go�������������pq��Ux���d)r���q�K��U�5l&����mA�W}�����J8N��%@�!��UU/�[� T_޸�H�>K�l�V�-7���?�Q�s���W�
f�x�B*&��y�1�_lP�Nrf��?��r�HP����GJl����� ���JW���A����E�m�*�W�R�O���Ѣv��,���}���ZxN��
�Q�M��1�he����ɧ���h+k�R5u�Q�:�G��R�m�0� ��4IPo��_.:�͓E*�+�X�=l�l��~z�	���F��'�I�y�������G��Oo    �3$R�Tҋ_s ��.0�W�����!��@ �U�|#;M)\8"�|���Yia���bOZ����Js5�+�H�k��k����1=MJ=��ivh_�0jkfΉ3u"��b�J���<�")�G���>���WX����!m �4+Kߠ���Y8�w�Zo�*+g�g�$��f_��4Z���D*��R��VS{��Tm��5-�\
�5Z�{��`�[[x�r��U��5n
z��qY��/��%�zYB��cR�ԙ��"�5c:K�X�
TF)�}r�0Nݞ���ᔊg��K{��� � �+/0��/Xh���Y_�>������'����&Կ8'��Y�`�8�G�u���}UU�l��m=X���Ʃ����!�Z.i�
����Y��R� ����o)�ó����ZE���H�v{�t"` +�&�3~����&�v�f2��DV SI�G�)Sh�~Z�'�2T�ׇ!����ʄE��~W��jR�곹���f��}Շ��9ㅡ��׭��H�ț�_,��F4aU���_�N��l	���n�ة]YuC[P|�7�C�;��&�jOA�e��)�C��]���}c{{���X@�&�����[�2��m�ɛ%kx*���� `�$�G�+��<�p��LL���;�1�#L�S�L�1�UUL�N����xV���J&̡YDp�P�"��V����k;)������q�L���8	�_c���Q�P2��6��d�ش��fd ���!x,8�%8��(ˁ�25|�5	�����g/�ԱM�`n��M��u�q����̡j�)y�oip+L*t�(���ֻ��>�r{��-���9uaT�_��/�A��5�����׳9�rm�@%�ؒ�Ax~u���%Ta��N�w�/�.9z�썃�c*���w��aɵ�*�O�6i9-`5�`ߞ�6N���C�,#'�Β�.����PR&�����7Y�����r"�Ng�7�x��9�7�#9�1����y��w�]�{��{�O@���
U�r��>Jg?��¾�rbAE���EF�O,5��z;6�*6�ã��Nծ�U�E�R�y$2��>����ד�Aouo]ON���ރ��I�����Uj���	�m\��Q��	|}V�]�ѱ��S{�x<�eq��uo��j��f�h��H���jz��.\�몎�v�JV��Sj�(�w0�=F-���O�:"�b���=��7���'�$6�J^���|�3�;ʇ ڝR�H"�9�
F�XXӅK�.zZq�j}���T_P�Z@h�$
��?��e4���N���ț��TݹX��=�&�����$�鄻��������5b�D �L�� ���tO��wD��5w�����ɗ ���� ���C�ן���W��
U��_'����)���dޖ���k���":���-�&�6k��-A��!����\�FjUe�ZMX�^�����+|�[�0�+��ΕD�}��E��EY����L�2���p:{/)��YEգ������i3�R�ju��PO�r��/f��eI|ւN��	��C�eb����#M~?v���R�m?Gf��A�p�0Q\	iU���Ԧ�����g)�:��p)�ꆫ�>�9�$kE�Z����ֹT��E2.�C��s�=�u�.��(�D�`�} V)�~Qe�,���z�	�U�[��T� �?���*.c_s�5�^"�ښ4��H'���{Jz�q�ܒ�De�U��=ٍ_��s_�k��@�S���)�%�hAm�剹:R���n��8�?�����'v�%�$iD_��Ԫ��ۖ�j���ZH�9E�o	���xHxH�L�8ŔvA|i���RIP��=��]��K� �Pз�֪��;�e?�dK���j�v~u%��Qh��<���e��~ș���>X�h-j�J$�͎��Fé�?�����<���6	�������ز�m�.�9x��8�^�f�=-4IRTy�؜O�[٫H�2����B=�˖�kV��߇�U��Y��mZ��;�/��X�!��I.5�ۥ^@-���r=d70e&I�m���:����*5��	4@F1�&F\�������<`�f���a�%��&Î7}�9Il�ց�-1�F�v�Ko��H~ľ�e�4�.;�ؼ��ණ]��MH�SG�q�L���<\��ed��`PSι�	������5)�����~��-`]L�!*:	����+�B;���`-�k:y�#y���.I�"�V�t2	ܸ�b�b����K#���de���=|FMO	�9v�vm�gp ��/�p����Q=$�Ⱥ�����p��?�d|�W��\x�~a�H�H2�̈$�qS����F���@�Ώ� �k��.��_�}!Ç $��ja�kf������^i-n�	�.�'�}��#�Py��/�e{��ZY�,�"��o8��U*@GZ6�*9��'+W"S�͟�v֡��®d!��E4���bXmIofA�}���/3+糘�2�<TR�}��=�"�Β2�NU6���$�N�P|�}ߗ�Q�v�O�9Y!o�F9 Uu��`���;��Z��&u8Oe:�9���p��L�G���f�4�e&;Y~�U-Z��]���~? H/�KD��\�����A�V��ȶ(�-�_,�y���jX}4Y6����+��p�Zt���,�ldW�������Q�6Z���Y�ф���HҴ��O��f�O�~�8�SD��9����_p�f�ޮ����cN-�g.Q��u���M�FK_�/�=������(��r5��Ib��M�/��ka�9fg����u�)��z�ِ�tJ
Ƈg��[1Txb���C��C'!]�j[�a
�[��'�>Z?��| ��jD�`�$�3���a�=õ8��TM�b1�)�hË�6����̩*̈n:E
K����=V�N�ȓ�����vh��AtU��5j;k9+C�yZ��M��$*���� ͊�x�p��ܼ�eͲ��ꯙmW=/G2׸ʑ���L�RG��Mf�NNV��TI*��4��M�w.լE˪HC����(����\�l�!|n���ʨ�ЧW����޷ܡ�h|��t򗩻��gHS�5����O+c=��xMQ�7OgS��8��):�n�XK]�(Z�}ƫ������4o��Q��U�	eɗ*�ݡ�9�w�Ԁ������e�9��m�2F���w
*�b�T�W�5���2��f.�u-��x"�³)FW
��%R�*W��!c5<����P��)͂�X��Yͫʧ�),{Z��5����N��,ʼ�Ϩp)=�3O]-������D������})��X�_�����Ç�?�u��!7�V��(�5��=
k��g�Р�)jJ�Y<ڐ^�(�dZf���/y[��ͥ�B��dR�abꚴ�%{�
p�a���_� f��H��{_���N��4b���{����c���)NDb+c�����uC#�^��J?�Q4!$@��o]A?ɭ4��rG&�M�榒���d;u)%Xq�	(�̇���l������:�CUkj���kLZ�XM��U�Lf���:�`k�)��S�:0�
t�7[�96�*J�̲6��r���)1v�)���-�:I�6įhYCq�(/��<3��f��;����`*agl>0t�B��܋l�	���N�qi2�S%�kE��uѝ�[ś���_����Z�m:5bs�����}��N.C^����p�S���,bku"4��83��)0 oXu^.�&�� ޅ$t�n�J>c"��b|*�l_�x{\���0��!�"x��p���HA2 ei����6��� $�f۩�^PYG�w~|��ײ�q�
�Yp��p��$[��B�23P�TaR�5C��3�����������~��*,��5|��� �p��+5�L���c�����jz��*$��(&6��B#���":#t��%���ꑎ�~a(h�b�C��@���V��qzڌM'MIYv����pA�N,Veq�?�t��Y=��!��>�kim���ɓo�Lг[���k��7-H{��"��^
�h�Ho�:�y�}�� �
  v~���/RI��)�mM5�Tr�JR�
������r3��Yw��t���)e���>8�`2���U�1�w�jeo����)��M�1�g�R��������*~��˜خ��FA�b3�Z����� �R��$��cuZW�E�&�t%eI��}hXl�6,5k���+���k�4Ј�O��u��+�	u��J#��ȣ���~��6=����`�Q�n��{$���~�����Πt�E��.��������%���e��؅&y*bx�2��SH��Hc=�;�7|�t��eGh3�Ϳ߁���c��:�C�8)�sJ�/���ϻc$2� G�J�/�$�pU����X�pv\�-%�&�R�<q��M)/!���H|�!���Q�e.���Zk�x�n���3�^���7���y��m�&wt�	ē����O�槥ϼ��n������{sv�&/x 5�vlF����t��Y�y�� ��_\�Ӆ�I ������"WOM��uQI\�,���k�k�v��=�w'����1XO����_m@�Hd��]�l��Ѹ��mݠA��薣9�@GJ��L=�:7B)͵�B�s'o,=m���������<_�1�Fwu#�e&ś���|�YG�2����b�o�"�"n .B���? ����**�qy���?iN�ɗ�	��T��'o��f�=�4�k��k!��GAJCװr��]��d�mW� �t�6��3%����m���������"T��!���Jϡ����jQu�˔�:���jN�(������о��ҹ%�C8��J/�=6�]�^pz
3L�%�3�d:%ez�i_+tڭܟji+ӋE����1BdT;�>���	ƙ�~6ô�|%��16�~ǴZ�� ��ߎ�1�҉�y~�F�x����NV1���%*��ă��/�xul梅�\�lg<�զ��c1�y����{CGl��dw�e^9b���>'S��Q�P�8�wJ��np2?�}�ϤI��i`�o�?��_�sr�4�S0�몊������g��W�H\�5~�0�;�1��4d 9��=طU�v-p��'E����!+���7ȊH.g�	�Pj?�[�4R/g$����~���ʱJ3��h��oy`J�D"ξ���-5e��&P�g�Q�J���{����B�:ܘ��*MR�4:�/��Ѓ�v ��j��o�g�����+M���{�X�m�QhT�?����P�:B�v]<��0wV�{��x[�H/_��oϧ^bR׹�wG��\�$�~��.6�"�Q�t���U��O���\e��Ki�r��ѕk��q�k7�!﴿�ȋ�@��g��%1�^di)�,/j�w��N����(4�+����Ϊy�"���A�!�܉� �A�;��-	���S���oT�)��T�;Db�����Diŉ]jH����Vš�.�̣*�������\��t��#򂧃��ןy�w��`|���k�mv��bĲ`�.Q).Lh����c��>�y
{���Y-�\
`���]���30�?}>��d�����Ѿ�q>�ol6����*eQ�<�ޭ�j�Aх钭Wj�a7�B�L�߃�N��L���iìI�_h�EQ��x�C�E��c嚯(���t�μ����em���N�TQ�d�$�D��|��N�L<c0�qm'S+8��E^�۲)v��27�'�8����"2�q2�p~H���_�l(�ŕs	�Atݏ�C�V��5,��š���;�vZ-N�6ɑ87��,ХH�6ɔ%~��&'N�S�4E���<AQkas�J�2��l|�0���Ƞ�6����5���7���߳r��G0C�1��8U!(�_�jk�]�9oO�S�����K��$u��*- O�<N|�/�n׉�֩"i�ĥ|Ol��FX���!�u������W��䵈΀�]�D/C�!o8ʌ(?	[���f!����XB�a�H����,+0i�x�%�y�W�����ryW��߷mD9��E8�����˂�-5���'�YJ>4�%�S��I~�{c���Y6������cb�%e6]&�|S$v3�.)�u�wvd���~��"�~|�; FX��+���"��>27�/+v7=�P��k�Ȧ�lݦ?���m�>�:CX+������1��Q��=�#)Eo�3�>����b���6�4�?96���֐,r���c5�����#8��M��6�w��AM��'�@�s���:DBk��2d=gN��������V�bk��J��-`�E]���Nr��/ d{b�W0��n�Xm;��^���п1�#����u�A�v�վ��In�����l�����6�Hd���k�삽L�t��=IJ8C۱sGTÚ��s� ���KR�yؕq��L��#�Sݲ��E�'kDL��Vh*���$tְ�l^7��K��9O�?GG)V����d>���*Rݶ��c�U�#M�D	�O�X�]�޶��"�\~�tC��w�j�MC޺��Aw�6�St%��w�V�uI��$�>	�4}�N���B���,�u_�l9�����N��^�#L�>�n}��I�R=$���w��˞���@��Õ���<W��_7�N��PLf����?����\�n�4���s��!��%����3��/�7�C���٘�� �������������׿��?ƥ8a      -     x�}�M��@���)��[�����;6��("$�#q"�0��Q���q�dY��������������7	��|ߢ��~�����! �;�]�6�5���mI��r	m��4�����p�Uj逋�&%�8��E�=NR�(�*��S�ƙF��(��H����HV[4�P�a����-u[���s2��+�Z����R�H��i��P"g�Δ{%u4FH�A��Aꐥ4C�7����<��s��w�:MH�QH���YJ�	�X.�饑3���a�4�
5&�&0թb�DE#6�J��t����
���6�\(\͔x�;��<�=����c��` �`��*�.�ߧaw:ޮ����3V��n��rlO�e5}h��u��!zѧ�Dn!�������dj����M����g	ub485�sL�?�F4#�'~5w)��hH설kB���6x[��`8��Euq
�a	���ӱ�4�R��<Haݭ���<h�?z��?\��}�_����A��M$:�[�;��h��[�of����y4p      +      x������ � �      "   E  x�}��r�6�k�)0�z����$P��ݱ�T�7�MXD$J������6iS���IQT�DC�3����4;�%\�9�97��VƖ�Mt��sɩ �$>LKyÁp�~Zݯ	O(眂�Ti2�\^ԥ�e��C�X�g�ܹ�:��/���ꦩ�|���`,O,�L �rwƑm/��/��<�4I���N}ė���2��%o�QX(
��Ȃb f�|'$}$<�"J�� "M\ObE -�G�lSg�\�����7�+qeulA0Pr��9���VGV 3z��[�r��X�q�ٳ��V;&+W��7�4���J��5R��׮��Gz�7z��ܨ(1WZI~X�Ԭ��I;�5`|9񞐇j�J�������q�xL!�2�\3!��>̹�BX��,�II����c��A�5�*(�um��C��2ۍD��ob�a<�/��Pd��"f��}���FGp���f,xTY�!թ-���yN��*�j���|����e��Gg�����J`
������}_�¨qZŊ��p��q?u	�Ե�m;Ҥ� d��:�i]��ʑ�w9bѸc�B�t��.�>��qW�:�������SEe�f�GS����p�z�ǧ�9�.�Q�gJ�tǟ���n�>���+��&Ur�0�%q�4��r��6�pЂ�:�� 
�D��saT���Ż���[\h�H)������>WE���ح��i}�^���PƓ��'�Wg=��~�xp�m�3W`�Z����E���ЇɎ�r��H�k�>��)������Z�۴�;l�)�7�����[d��q�8y7�N.-v(ǚN����f��?N@�      '   �  x�E�ɲ�8��5>�]3�K&��$�Vo"�¬���]e�}����*��/!�~x�ñ?�v�k���U �q�'g���2�=�9���;t�\XH�<Ů$
Ԡɦ���[xh��X�8��wu��"=o�8yh^&�l�]��1�TCh|��V21�͗�p����L����g��>L6S��UTN���������f�7�P5諿͗�,/��T"(j�5����[gO�B�qi)p�>��ɟ�T�N�?ǏH���΍�J#��C,�6��&z�S�Za>�$�7+EoF�z0�9���$�P��j�FSiտp)�~}���\��2v�فQX�۔�8�!�H����J�O�^�Q��98R��J���J�#̶�}k�3�|^���(���:�t����$�җއ!L����n<�:�t�&j���u�=}�J���X�-��������R��Y,0|��}�m�l~��'z s�W���X�@��m���H����C��iIz#�ܣuˠ_�<p�J�.��N��D
<�e�}֒��S=@5A�-�!�NZM��^Mq��a`n^�����������1(s�����#���,m�M��Ղ��/|,��,~��d:�Ɉ���9��|�y�t�c������4��Y�5��L�_^��G��vgF*�k��w�?�j��7�!�     