PGDMP  6    ,                }            ngassociates    16.0    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    595460    ngassociates    DATABASE     �   CREATE DATABASE ngassociates WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE ngassociates;
                ngassociates    false            �            1259    595461 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    ngassociates    false            �            1259    595464    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          ngassociates    false    215            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          ngassociates    false    216            �            1259    595465    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    ngassociates    false            �            1259    595468    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          ngassociates    false    217            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          ngassociates    false    218            �            1259    595469    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    ngassociates    false            �            1259    595472    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          ngassociates    false    219            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          ngassociates    false    220            �            1259    595473    backendApp_user    TABLE       CREATE TABLE public."backendApp_user" (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    email character varying(255) NOT NULL,
    name character varying(20) NOT NULL,
    phone character varying(12),
    roletype character varying(100),
    tc boolean NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL
);
 %   DROP TABLE public."backendApp_user";
       public         heap    ngassociates    false            �            1259    595478    backendApp_user_groups    TABLE     �   CREATE TABLE public."backendApp_user_groups" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 ,   DROP TABLE public."backendApp_user_groups";
       public         heap    ngassociates    false            �            1259    595481    backendApp_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."backendApp_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."backendApp_user_groups_id_seq";
       public          ngassociates    false    222            �           0    0    backendApp_user_groups_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."backendApp_user_groups_id_seq" OWNED BY public."backendApp_user_groups".id;
          public          ngassociates    false    223            �            1259    595482    backendApp_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."backendApp_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."backendApp_user_id_seq";
       public          ngassociates    false    221            �           0    0    backendApp_user_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."backendApp_user_id_seq" OWNED BY public."backendApp_user".id;
          public          ngassociates    false    224            �            1259    595483     backendApp_user_user_permissions    TABLE     �   CREATE TABLE public."backendApp_user_user_permissions" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 6   DROP TABLE public."backendApp_user_user_permissions";
       public         heap    ngassociates    false            �            1259    595486 '   backendApp_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."backendApp_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."backendApp_user_user_permissions_id_seq";
       public          ngassociates    false    225            �           0    0 '   backendApp_user_user_permissions_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."backendApp_user_user_permissions_id_seq" OWNED BY public."backendApp_user_user_permissions".id;
          public          ngassociates    false    226            �            1259    595487    dataformApp_companydouments    TABLE     �   CREATE TABLE public."dataformApp_companydouments" (
    documentid integer NOT NULL,
    userid integer,
    addhar character varying(100),
    pan character varying(100),
    gst character varying(100),
    other character varying(100)
);
 1   DROP TABLE public."dataformApp_companydouments";
       public         heap    ngassociates    false            �            1259    595490 *   dataformApp_companydouments_documentid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_companydouments_documentid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."dataformApp_companydouments_documentid_seq";
       public          ngassociates    false    227            �           0    0 *   dataformApp_companydouments_documentid_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."dataformApp_companydouments_documentid_seq" OWNED BY public."dataformApp_companydouments".documentid;
          public          ngassociates    false    228            �            1259    595491    dataformApp_companyprofiles    TABLE     �  CREATE TABLE public."dataformApp_companyprofiles" (
    companyid integer NOT NULL,
    userid integer,
    company_name character varying(500),
    pan_number character varying(15),
    gst_number character varying(25),
    aadhar_number character varying(15),
    company_phone character varying(15),
    company_street character varying(200),
    company_city character varying(200),
    company_state character varying(200),
    company_pin character varying(200)
);
 1   DROP TABLE public."dataformApp_companyprofiles";
       public         heap    ngassociates    false            �            1259    595496 )   dataformApp_companyprofiles_companyid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_companyprofiles_companyid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."dataformApp_companyprofiles_companyid_seq";
       public          ngassociates    false    229            �           0    0 )   dataformApp_companyprofiles_companyid_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."dataformApp_companyprofiles_companyid_seq" OWNED BY public."dataformApp_companyprofiles".companyid;
          public          ngassociates    false    230            �            1259    595497    dataformApp_contactus    TABLE     �   CREATE TABLE public."dataformApp_contactus" (
    cid integer NOT NULL,
    userid integer,
    name character varying(200),
    email character varying(200),
    message text
);
 +   DROP TABLE public."dataformApp_contactus";
       public         heap    ngassociates    false            �            1259    595502    dataformApp_contactus_cid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_contactus_cid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."dataformApp_contactus_cid_seq";
       public          ngassociates    false    231            �           0    0    dataformApp_contactus_cid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."dataformApp_contactus_cid_seq" OWNED BY public."dataformApp_contactus".cid;
          public          ngassociates    false    232            �            1259    595503    dataformApp_countorders    TABLE     �  CREATE TABLE public."dataformApp_countorders" (
    id bigint NOT NULL,
    total_new_application character varying(100),
    total_old_application character varying(100),
    total_cancel_application character varying(100),
    total_application_amount character varying(100),
    total_revenue character varying(100),
    pendingvalue character varying(100),
    adminuser character varying(100),
    roletype character varying(100)
);
 -   DROP TABLE public."dataformApp_countorders";
       public         heap    ngassociates    false            �            1259    595508    dataformApp_countorders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_countorders_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."dataformApp_countorders_id_seq";
       public          ngassociates    false    233            �           0    0    dataformApp_countorders_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."dataformApp_countorders_id_seq" OWNED BY public."dataformApp_countorders".id;
          public          ngassociates    false    234            �            1259    595509    dataformApp_feedbacks    TABLE     �   CREATE TABLE public."dataformApp_feedbacks" (
    userid integer,
    feedbackid integer NOT NULL,
    name character varying(200),
    email character varying(200),
    feedback text
);
 +   DROP TABLE public."dataformApp_feedbacks";
       public         heap    ngassociates    false            �            1259    595514 $   dataformApp_feedbacks_feedbackid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_feedbacks_feedbackid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."dataformApp_feedbacks_feedbackid_seq";
       public          ngassociates    false    235            �           0    0 $   dataformApp_feedbacks_feedbackid_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."dataformApp_feedbacks_feedbackid_seq" OWNED BY public."dataformApp_feedbacks".feedbackid;
          public          ngassociates    false    236            �            1259    595515    dataformApp_invoices    TABLE     �   CREATE TABLE public."dataformApp_invoices" (
    invoiceid integer NOT NULL,
    userid integer,
    invoiceditems text,
    invoicedamount numeric(18,0),
    invoicedamountwithtax numeric(18,0),
    taxpercentage numeric(10,0)
);
 *   DROP TABLE public."dataformApp_invoices";
       public         heap    ngassociates    false            �            1259    595520 "   dataformApp_invoices_invoiceid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_invoices_invoiceid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."dataformApp_invoices_invoiceid_seq";
       public          ngassociates    false    237            �           0    0 "   dataformApp_invoices_invoiceid_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."dataformApp_invoices_invoiceid_seq" OWNED BY public."dataformApp_invoices".invoiceid;
          public          ngassociates    false    238            �            1259    595521    dataformApp_monthdata    TABLE     �   CREATE TABLE public."dataformApp_monthdata" (
    monthid integer NOT NULL,
    total_order character varying(100),
    complete_order character varying(100),
    pending_order character varying(100),
    cancel_order character varying(100)
);
 +   DROP TABLE public."dataformApp_monthdata";
       public         heap    ngassociates    false            �            1259    595524 !   dataformApp_monthdata_monthid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_monthdata_monthid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."dataformApp_monthdata_monthid_seq";
       public          ngassociates    false    239            �           0    0 !   dataformApp_monthdata_monthid_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."dataformApp_monthdata_monthid_seq" OWNED BY public."dataformApp_monthdata".monthid;
          public          ngassociates    false    240            �            1259    595525    dataformApp_myemailid    TABLE     j   CREATE TABLE public."dataformApp_myemailid" (
    id integer NOT NULL,
    email character varying(50)
);
 +   DROP TABLE public."dataformApp_myemailid";
       public         heap    ngassociates    false            �            1259    595528    dataformApp_myemailid_id_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_myemailid_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."dataformApp_myemailid_id_seq";
       public          ngassociates    false    241            �           0    0    dataformApp_myemailid_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."dataformApp_myemailid_id_seq" OWNED BY public."dataformApp_myemailid".id;
          public          ngassociates    false    242            �            1259    595529    dataformApp_mytoken    TABLE     �   CREATE TABLE public."dataformApp_mytoken" (
    tokenid integer NOT NULL,
    userid integer,
    token character varying(500) NOT NULL,
    username character varying(500) NOT NULL
);
 )   DROP TABLE public."dataformApp_mytoken";
       public         heap    ngassociates    false            �            1259    595534    dataformApp_mytoken_tokenid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_mytoken_tokenid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."dataformApp_mytoken_tokenid_seq";
       public          ngassociates    false    243            �           0    0    dataformApp_mytoken_tokenid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."dataformApp_mytoken_tokenid_seq" OWNED BY public."dataformApp_mytoken".tokenid;
          public          ngassociates    false    244            �            1259    595535    dataformApp_myuserid    TABLE     \   CREATE TABLE public."dataformApp_myuserid" (
    id integer NOT NULL,
    userid integer
);
 *   DROP TABLE public."dataformApp_myuserid";
       public         heap    ngassociates    false            �            1259    595538    dataformApp_myuserid_id_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_myuserid_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."dataformApp_myuserid_id_seq";
       public          ngassociates    false    245            �           0    0    dataformApp_myuserid_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."dataformApp_myuserid_id_seq" OWNED BY public."dataformApp_myuserid".id;
          public          ngassociates    false    246            �            1259    595539    dataformApp_olddocs    TABLE       CREATE TABLE public."dataformApp_olddocs" (
    docid integer NOT NULL,
    email character varying(1000),
    docname character varying(500),
    docs character varying(100) NOT NULL,
    document character varying(100) NOT NULL,
    companyname character varying(100)
);
 )   DROP TABLE public."dataformApp_olddocs";
       public         heap    ngassociates    false            �            1259    595544    dataformApp_olddocs_docid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_olddocs_docid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."dataformApp_olddocs_docid_seq";
       public          ngassociates    false    247            �           0    0    dataformApp_olddocs_docid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."dataformApp_olddocs_docid_seq" OWNED BY public."dataformApp_olddocs".docid;
          public          ngassociates    false    248            �            1259    595545    dataformApp_olduserdata    TABLE     	  CREATE TABLE public."dataformApp_olduserdata" (
    oldid integer NOT NULL,
    username character varying(50),
    phone character varying(50),
    email character varying(1000),
    companyname character varying(100),
    applicationname character varying(50)
);
 -   DROP TABLE public."dataformApp_olduserdata";
       public         heap    ngassociates    false            �            1259    595550 !   dataformApp_olduserdata_oldid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_olduserdata_oldid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."dataformApp_olduserdata_oldid_seq";
       public          ngassociates    false    249            �           0    0 !   dataformApp_olduserdata_oldid_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."dataformApp_olduserdata_oldid_seq" OWNED BY public."dataformApp_olduserdata".oldid;
          public          ngassociates    false    250            �            1259    595551    dataformApp_orderoverview    TABLE     P  CREATE TABLE public."dataformApp_orderoverview" (
    orderoverviewid integer NOT NULL,
    userid integer,
    open_order character varying(1000),
    queries_in_uploading_document character varying(1000),
    pending_documents character varying(1000),
    plan_expire character varying(1000),
    documents character varying(1000)
);
 /   DROP TABLE public."dataformApp_orderoverview";
       public         heap    ngassociates    false            �            1259    595556 -   dataformApp_orderoverview_orderoverviewid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_orderoverview_orderoverviewid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."dataformApp_orderoverview_orderoverviewid_seq";
       public          ngassociates    false    251            �           0    0 -   dataformApp_orderoverview_orderoverviewid_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."dataformApp_orderoverview_orderoverviewid_seq" OWNED BY public."dataformApp_orderoverview".orderoverviewid;
          public          ngassociates    false    252            �            1259    595557 %   dataformApp_orderrequirementdocuments    TABLE     �  CREATE TABLE public."dataformApp_orderrequirementdocuments" (
    id bigint NOT NULL,
    userid integer,
    name character varying(500),
    email character varying(100),
    backenduser character varying(100),
    accountuser character varying(100),
    adminuser character varying(100),
    paymentstatus character varying(100),
    amount integer,
    status1 character varying(100),
    roletype character varying(100),
    servicename character varying(100) NOT NULL,
    directorsphotograph character varying(100),
    photoofproduct character varying(100),
    rentagrement character varying(100),
    otherdoc character varying(100),
    electricitybill character varying(100),
    photoofpremises character varying(100),
    date date NOT NULL,
    partnershipdeed character varying(100),
    incorporationdoc character varying(100),
    invoicedocument character varying(100),
    certificate character varying(100),
    documentstatus character varying(100),
    reason character varying(1000)
);
 ;   DROP TABLE public."dataformApp_orderrequirementdocuments";
       public         heap    ngassociates    false            �            1259    595562 ,   dataformApp_orderrequirementdocuments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_orderrequirementdocuments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."dataformApp_orderrequirementdocuments_id_seq";
       public          ngassociates    false    253            �           0    0 ,   dataformApp_orderrequirementdocuments_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."dataformApp_orderrequirementdocuments_id_seq" OWNED BY public."dataformApp_orderrequirementdocuments".id;
          public          ngassociates    false    254            �            1259    595563    dataformApp_orderrequirements    TABLE     X  CREATE TABLE public."dataformApp_orderrequirements" (
    orderrequirementsid integer NOT NULL,
    userid integer,
    servicename character varying(100) NOT NULL,
    bussinessoperationalstatus character varying(500),
    ageofbussiness character varying(500),
    numberofemployees character varying(500),
    bussinessarea_category text
);
 3   DROP TABLE public."dataformApp_orderrequirements";
       public         heap    ngassociates    false                        1259    595568 5   dataformApp_orderrequirements_orderrequirementsid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_orderrequirements_orderrequirementsid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public."dataformApp_orderrequirements_orderrequirementsid_seq";
       public          ngassociates    false    255            �           0    0 5   dataformApp_orderrequirements_orderrequirementsid_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."dataformApp_orderrequirements_orderrequirementsid_seq" OWNED BY public."dataformApp_orderrequirements".orderrequirementsid;
          public          ngassociates    false    256                       1259    595569    dataformApp_userprofiles    TABLE     �  CREATE TABLE public."dataformApp_userprofiles" (
    userprofilesid integer NOT NULL,
    userid integer,
    first_name character varying(20),
    last_name character varying(20),
    email character varying(50) NOT NULL,
    phone character varying(20),
    gender character varying(10),
    street character varying(300),
    city character varying(20),
    state character varying(20),
    pin character varying(20),
    pic character varying(100)
);
 .   DROP TABLE public."dataformApp_userprofiles";
       public         heap    ngassociates    false                       1259    595574 +   dataformApp_userprofiles_userprofilesid_seq    SEQUENCE     �   CREATE SEQUENCE public."dataformApp_userprofiles_userprofilesid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."dataformApp_userprofiles_userprofilesid_seq";
       public          ngassociates    false    257            �           0    0 +   dataformApp_userprofiles_userprofilesid_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."dataformApp_userprofiles_userprofilesid_seq" OWNED BY public."dataformApp_userprofiles".userprofilesid;
          public          ngassociates    false    258                       1259    595575    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    ngassociates    false                       1259    595581    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          ngassociates    false    259            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          ngassociates    false    260                       1259    595582    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    ngassociates    false                       1259    595585    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          ngassociates    false    261            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          ngassociates    false    262                       1259    595586    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    ngassociates    false                       1259    595591    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          ngassociates    false    263            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          ngassociates    false    264            	           1259    595592    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    ngassociates    false            
           1259    595597    paymentApp_payment    TABLE     J  CREATE TABLE public."paymentApp_payment" (
    paymentid integer NOT NULL,
    userid integer,
    servicename character varying(100) NOT NULL,
    order_amount character varying(25) NOT NULL,
    "isPaid" boolean NOT NULL,
    order_date timestamp with time zone NOT NULL,
    order_payment_id character varying(100) NOT NULL
);
 (   DROP TABLE public."paymentApp_payment";
       public         heap    ngassociates    false                       1259    595600     paymentApp_payment_paymentid_seq    SEQUENCE     �   CREATE SEQUENCE public."paymentApp_payment_paymentid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."paymentApp_payment_paymentid_seq";
       public          ngassociates    false    266            �           0    0     paymentApp_payment_paymentid_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."paymentApp_payment_paymentid_seq" OWNED BY public."paymentApp_payment".paymentid;
          public          ngassociates    false    267            �           2604    595601    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    216    215            �           2604    595602    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    218    217            �           2604    595603    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    220    219            �           2604    595604    backendApp_user id    DEFAULT     |   ALTER TABLE ONLY public."backendApp_user" ALTER COLUMN id SET DEFAULT nextval('public."backendApp_user_id_seq"'::regclass);
 C   ALTER TABLE public."backendApp_user" ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    224    221            �           2604    595605    backendApp_user_groups id    DEFAULT     �   ALTER TABLE ONLY public."backendApp_user_groups" ALTER COLUMN id SET DEFAULT nextval('public."backendApp_user_groups_id_seq"'::regclass);
 J   ALTER TABLE public."backendApp_user_groups" ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    223    222            �           2604    595606 #   backendApp_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public."backendApp_user_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."backendApp_user_user_permissions_id_seq"'::regclass);
 T   ALTER TABLE public."backendApp_user_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    226    225            �           2604    595607 &   dataformApp_companydouments documentid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_companydouments" ALTER COLUMN documentid SET DEFAULT nextval('public."dataformApp_companydouments_documentid_seq"'::regclass);
 W   ALTER TABLE public."dataformApp_companydouments" ALTER COLUMN documentid DROP DEFAULT;
       public          ngassociates    false    228    227            �           2604    595608 %   dataformApp_companyprofiles companyid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_companyprofiles" ALTER COLUMN companyid SET DEFAULT nextval('public."dataformApp_companyprofiles_companyid_seq"'::regclass);
 V   ALTER TABLE public."dataformApp_companyprofiles" ALTER COLUMN companyid DROP DEFAULT;
       public          ngassociates    false    230    229            �           2604    595609    dataformApp_contactus cid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_contactus" ALTER COLUMN cid SET DEFAULT nextval('public."dataformApp_contactus_cid_seq"'::regclass);
 J   ALTER TABLE public."dataformApp_contactus" ALTER COLUMN cid DROP DEFAULT;
       public          ngassociates    false    232    231            �           2604    595610    dataformApp_countorders id    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_countorders" ALTER COLUMN id SET DEFAULT nextval('public."dataformApp_countorders_id_seq"'::regclass);
 K   ALTER TABLE public."dataformApp_countorders" ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    234    233            �           2604    595611     dataformApp_feedbacks feedbackid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_feedbacks" ALTER COLUMN feedbackid SET DEFAULT nextval('public."dataformApp_feedbacks_feedbackid_seq"'::regclass);
 Q   ALTER TABLE public."dataformApp_feedbacks" ALTER COLUMN feedbackid DROP DEFAULT;
       public          ngassociates    false    236    235            �           2604    595612    dataformApp_invoices invoiceid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_invoices" ALTER COLUMN invoiceid SET DEFAULT nextval('public."dataformApp_invoices_invoiceid_seq"'::regclass);
 O   ALTER TABLE public."dataformApp_invoices" ALTER COLUMN invoiceid DROP DEFAULT;
       public          ngassociates    false    238    237            �           2604    595613    dataformApp_monthdata monthid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_monthdata" ALTER COLUMN monthid SET DEFAULT nextval('public."dataformApp_monthdata_monthid_seq"'::regclass);
 N   ALTER TABLE public."dataformApp_monthdata" ALTER COLUMN monthid DROP DEFAULT;
       public          ngassociates    false    240    239            �           2604    595614    dataformApp_myemailid id    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_myemailid" ALTER COLUMN id SET DEFAULT nextval('public."dataformApp_myemailid_id_seq"'::regclass);
 I   ALTER TABLE public."dataformApp_myemailid" ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    242    241            �           2604    595615    dataformApp_mytoken tokenid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_mytoken" ALTER COLUMN tokenid SET DEFAULT nextval('public."dataformApp_mytoken_tokenid_seq"'::regclass);
 L   ALTER TABLE public."dataformApp_mytoken" ALTER COLUMN tokenid DROP DEFAULT;
       public          ngassociates    false    244    243            �           2604    595616    dataformApp_myuserid id    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_myuserid" ALTER COLUMN id SET DEFAULT nextval('public."dataformApp_myuserid_id_seq"'::regclass);
 H   ALTER TABLE public."dataformApp_myuserid" ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    246    245            �           2604    595617    dataformApp_olddocs docid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_olddocs" ALTER COLUMN docid SET DEFAULT nextval('public."dataformApp_olddocs_docid_seq"'::regclass);
 J   ALTER TABLE public."dataformApp_olddocs" ALTER COLUMN docid DROP DEFAULT;
       public          ngassociates    false    248    247            �           2604    595618    dataformApp_olduserdata oldid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_olduserdata" ALTER COLUMN oldid SET DEFAULT nextval('public."dataformApp_olduserdata_oldid_seq"'::regclass);
 N   ALTER TABLE public."dataformApp_olduserdata" ALTER COLUMN oldid DROP DEFAULT;
       public          ngassociates    false    250    249            �           2604    595619 )   dataformApp_orderoverview orderoverviewid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_orderoverview" ALTER COLUMN orderoverviewid SET DEFAULT nextval('public."dataformApp_orderoverview_orderoverviewid_seq"'::regclass);
 Z   ALTER TABLE public."dataformApp_orderoverview" ALTER COLUMN orderoverviewid DROP DEFAULT;
       public          ngassociates    false    252    251            �           2604    595620 (   dataformApp_orderrequirementdocuments id    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_orderrequirementdocuments" ALTER COLUMN id SET DEFAULT nextval('public."dataformApp_orderrequirementdocuments_id_seq"'::regclass);
 Y   ALTER TABLE public."dataformApp_orderrequirementdocuments" ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    254    253            �           2604    595621 1   dataformApp_orderrequirements orderrequirementsid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_orderrequirements" ALTER COLUMN orderrequirementsid SET DEFAULT nextval('public."dataformApp_orderrequirements_orderrequirementsid_seq"'::regclass);
 b   ALTER TABLE public."dataformApp_orderrequirements" ALTER COLUMN orderrequirementsid DROP DEFAULT;
       public          ngassociates    false    256    255            �           2604    595622 '   dataformApp_userprofiles userprofilesid    DEFAULT     �   ALTER TABLE ONLY public."dataformApp_userprofiles" ALTER COLUMN userprofilesid SET DEFAULT nextval('public."dataformApp_userprofiles_userprofilesid_seq"'::regclass);
 X   ALTER TABLE public."dataformApp_userprofiles" ALTER COLUMN userprofilesid DROP DEFAULT;
       public          ngassociates    false    258    257            �           2604    595623    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    260    259            �           2604    595624    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    262    261            �           2604    595625    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          ngassociates    false    264    263            �           2604    595626    paymentApp_payment paymentid    DEFAULT     �   ALTER TABLE ONLY public."paymentApp_payment" ALTER COLUMN paymentid SET DEFAULT nextval('public."paymentApp_payment_paymentid_seq"'::regclass);
 M   ALTER TABLE public."paymentApp_payment" ALTER COLUMN paymentid DROP DEFAULT;
       public          ngassociates    false    267    266            �          0    595461 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          ngassociates    false    215   6      �          0    595465    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          ngassociates    false    217   "6      �          0    595469    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          ngassociates    false    219   ?6      �          0    595473    backendApp_user 
   TABLE DATA           �   COPY public."backendApp_user" (id, password, last_login, email, name, phone, roletype, tc, is_active, is_admin, created_at, updated_at, is_superuser) FROM stdin;
    public          ngassociates    false    221   �9      �          0    595478    backendApp_user_groups 
   TABLE DATA           I   COPY public."backendApp_user_groups" (id, user_id, group_id) FROM stdin;
    public          ngassociates    false    222   �>      �          0    595483     backendApp_user_user_permissions 
   TABLE DATA           X   COPY public."backendApp_user_user_permissions" (id, user_id, permission_id) FROM stdin;
    public          ngassociates    false    225   ?      �          0    595487    dataformApp_companydouments 
   TABLE DATA           d   COPY public."dataformApp_companydouments" (documentid, userid, addhar, pan, gst, other) FROM stdin;
    public          ngassociates    false    227   +?      �          0    595491    dataformApp_companyprofiles 
   TABLE DATA           �   COPY public."dataformApp_companyprofiles" (companyid, userid, company_name, pan_number, gst_number, aadhar_number, company_phone, company_street, company_city, company_state, company_pin) FROM stdin;
    public          ngassociates    false    229   H?      �          0    595497    dataformApp_contactus 
   TABLE DATA           T   COPY public."dataformApp_contactus" (cid, userid, name, email, message) FROM stdin;
    public          ngassociates    false    231   e?      �          0    595503    dataformApp_countorders 
   TABLE DATA           �   COPY public."dataformApp_countorders" (id, total_new_application, total_old_application, total_cancel_application, total_application_amount, total_revenue, pendingvalue, adminuser, roletype) FROM stdin;
    public          ngassociates    false    233   �?      �          0    595509    dataformApp_feedbacks 
   TABLE DATA           \   COPY public."dataformApp_feedbacks" (userid, feedbackid, name, email, feedback) FROM stdin;
    public          ngassociates    false    235   �?      �          0    595515    dataformApp_invoices 
   TABLE DATA           �   COPY public."dataformApp_invoices" (invoiceid, userid, invoiceditems, invoicedamount, invoicedamountwithtax, taxpercentage) FROM stdin;
    public          ngassociates    false    237   �?      �          0    595521    dataformApp_monthdata 
   TABLE DATA           t   COPY public."dataformApp_monthdata" (monthid, total_order, complete_order, pending_order, cancel_order) FROM stdin;
    public          ngassociates    false    239   �?      �          0    595525    dataformApp_myemailid 
   TABLE DATA           <   COPY public."dataformApp_myemailid" (id, email) FROM stdin;
    public          ngassociates    false    241   )@      �          0    595529    dataformApp_mytoken 
   TABLE DATA           Q   COPY public."dataformApp_mytoken" (tokenid, userid, token, username) FROM stdin;
    public          ngassociates    false    243   F@      �          0    595535    dataformApp_myuserid 
   TABLE DATA           <   COPY public."dataformApp_myuserid" (id, userid) FROM stdin;
    public          ngassociates    false    245   [E      �          0    595539    dataformApp_olddocs 
   TABLE DATA           c   COPY public."dataformApp_olddocs" (docid, email, docname, docs, document, companyname) FROM stdin;
    public          ngassociates    false    247   F      �          0    595545    dataformApp_olduserdata 
   TABLE DATA           p   COPY public."dataformApp_olduserdata" (oldid, username, phone, email, companyname, applicationname) FROM stdin;
    public          ngassociates    false    249   bO      �          0    595551    dataformApp_orderoverview 
   TABLE DATA           �   COPY public."dataformApp_orderoverview" (orderoverviewid, userid, open_order, queries_in_uploading_document, pending_documents, plan_expire, documents) FROM stdin;
    public          ngassociates    false    251   �w      �          0    595557 %   dataformApp_orderrequirementdocuments 
   TABLE DATA           t  COPY public."dataformApp_orderrequirementdocuments" (id, userid, name, email, backenduser, accountuser, adminuser, paymentstatus, amount, status1, roletype, servicename, directorsphotograph, photoofproduct, rentagrement, otherdoc, electricitybill, photoofpremises, date, partnershipdeed, incorporationdoc, invoicedocument, certificate, documentstatus, reason) FROM stdin;
    public          ngassociates    false    253   �w      �          0    595563    dataformApp_orderrequirements 
   TABLE DATA           �   COPY public."dataformApp_orderrequirements" (orderrequirementsid, userid, servicename, bussinessoperationalstatus, ageofbussiness, numberofemployees, bussinessarea_category) FROM stdin;
    public          ngassociates    false    255   x      �          0    595569    dataformApp_userprofiles 
   TABLE DATA           �   COPY public."dataformApp_userprofiles" (userprofilesid, userid, first_name, last_name, email, phone, gender, street, city, state, pin, pic) FROM stdin;
    public          ngassociates    false    257   4x      �          0    595575    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          ngassociates    false    259   �x      �          0    595582    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          ngassociates    false    261   ��      �          0    595586    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          ngassociates    false    263   ��      �          0    595592    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          ngassociates    false    265   j�      �          0    595597    paymentApp_payment 
   TABLE DATA           �   COPY public."paymentApp_payment" (paymentid, userid, servicename, order_amount, "isPaid", order_date, order_payment_id) FROM stdin;
    public          ngassociates    false    266   5�      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          ngassociates    false    216            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          ngassociates    false    218            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          ngassociates    false    220            �           0    0    backendApp_user_groups_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."backendApp_user_groups_id_seq"', 1, false);
          public          ngassociates    false    223            �           0    0    backendApp_user_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."backendApp_user_id_seq"', 20, true);
          public          ngassociates    false    224            �           0    0 '   backendApp_user_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."backendApp_user_user_permissions_id_seq"', 1, false);
          public          ngassociates    false    226            �           0    0 *   dataformApp_companydouments_documentid_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."dataformApp_companydouments_documentid_seq"', 2, true);
          public          ngassociates    false    228            �           0    0 )   dataformApp_companyprofiles_companyid_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."dataformApp_companyprofiles_companyid_seq"', 2, true);
          public          ngassociates    false    230            �           0    0    dataformApp_contactus_cid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."dataformApp_contactus_cid_seq"', 1, false);
          public          ngassociates    false    232                        0    0    dataformApp_countorders_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."dataformApp_countorders_id_seq"', 1, true);
          public          ngassociates    false    234                       0    0 $   dataformApp_feedbacks_feedbackid_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."dataformApp_feedbacks_feedbackid_seq"', 1, false);
          public          ngassociates    false    236                       0    0 "   dataformApp_invoices_invoiceid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."dataformApp_invoices_invoiceid_seq"', 1, false);
          public          ngassociates    false    238                       0    0 !   dataformApp_monthdata_monthid_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."dataformApp_monthdata_monthid_seq"', 11, true);
          public          ngassociates    false    240                       0    0    dataformApp_myemailid_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."dataformApp_myemailid_id_seq"', 2981, true);
          public          ngassociates    false    242                       0    0    dataformApp_mytoken_tokenid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."dataformApp_mytoken_tokenid_seq"', 17, true);
          public          ngassociates    false    244                       0    0    dataformApp_myuserid_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."dataformApp_myuserid_id_seq"', 192, true);
          public          ngassociates    false    246                       0    0    dataformApp_olddocs_docid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."dataformApp_olddocs_docid_seq"', 3253, true);
          public          ngassociates    false    248                       0    0 !   dataformApp_olduserdata_oldid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."dataformApp_olduserdata_oldid_seq"', 286, true);
          public          ngassociates    false    250            	           0    0 -   dataformApp_orderoverview_orderoverviewid_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."dataformApp_orderoverview_orderoverviewid_seq"', 1, true);
          public          ngassociates    false    252            
           0    0 ,   dataformApp_orderrequirementdocuments_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."dataformApp_orderrequirementdocuments_id_seq"', 3, true);
          public          ngassociates    false    254                       0    0 5   dataformApp_orderrequirements_orderrequirementsid_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public."dataformApp_orderrequirements_orderrequirementsid_seq"', 3, true);
          public          ngassociates    false    256                       0    0 +   dataformApp_userprofiles_userprofilesid_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."dataformApp_userprofiles_userprofilesid_seq"', 4, true);
          public          ngassociates    false    258                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 98, true);
          public          ngassociates    false    260                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          ngassociates    false    262                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);
          public          ngassociates    false    264                       0    0     paymentApp_payment_paymentid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."paymentApp_payment_paymentid_seq"', 3, true);
          public          ngassociates    false    267            �           2606    595628    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            ngassociates    false    215            �           2606    595630 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            ngassociates    false    217    217            �           2606    595632 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            ngassociates    false    217            �           2606    595634    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            ngassociates    false    215            �           2606    595636 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            ngassociates    false    219    219            �           2606    595638 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            ngassociates    false    219            �           2606    595640 )   backendApp_user backendApp_user_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."backendApp_user"
    ADD CONSTRAINT "backendApp_user_email_key" UNIQUE (email);
 W   ALTER TABLE ONLY public."backendApp_user" DROP CONSTRAINT "backendApp_user_email_key";
       public            ngassociates    false    221            �           2606    595642 2   backendApp_user_groups backendApp_user_groups_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."backendApp_user_groups"
    ADD CONSTRAINT "backendApp_user_groups_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."backendApp_user_groups" DROP CONSTRAINT "backendApp_user_groups_pkey";
       public            ngassociates    false    222            �           2606    595644 L   backendApp_user_groups backendApp_user_groups_user_id_group_id_36ff0ff8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."backendApp_user_groups"
    ADD CONSTRAINT "backendApp_user_groups_user_id_group_id_36ff0ff8_uniq" UNIQUE (user_id, group_id);
 z   ALTER TABLE ONLY public."backendApp_user_groups" DROP CONSTRAINT "backendApp_user_groups_user_id_group_id_36ff0ff8_uniq";
       public            ngassociates    false    222    222            �           2606    595646 )   backendApp_user backendApp_user_phone_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."backendApp_user"
    ADD CONSTRAINT "backendApp_user_phone_key" UNIQUE (phone);
 W   ALTER TABLE ONLY public."backendApp_user" DROP CONSTRAINT "backendApp_user_phone_key";
       public            ngassociates    false    221            �           2606    595648 $   backendApp_user backendApp_user_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."backendApp_user"
    ADD CONSTRAINT "backendApp_user_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."backendApp_user" DROP CONSTRAINT "backendApp_user_pkey";
       public            ngassociates    false    221            �           2606    595650 ]   backendApp_user_user_permissions backendApp_user_user_per_user_id_permission_id_3ca82f44_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."backendApp_user_user_permissions"
    ADD CONSTRAINT "backendApp_user_user_per_user_id_permission_id_3ca82f44_uniq" UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public."backendApp_user_user_permissions" DROP CONSTRAINT "backendApp_user_user_per_user_id_permission_id_3ca82f44_uniq";
       public            ngassociates    false    225    225            �           2606    595652 F   backendApp_user_user_permissions backendApp_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."backendApp_user_user_permissions"
    ADD CONSTRAINT "backendApp_user_user_permissions_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."backendApp_user_user_permissions" DROP CONSTRAINT "backendApp_user_user_permissions_pkey";
       public            ngassociates    false    225            �           2606    595654 <   dataformApp_companydouments dataformApp_companydouments_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."dataformApp_companydouments"
    ADD CONSTRAINT "dataformApp_companydouments_pkey" PRIMARY KEY (documentid);
 j   ALTER TABLE ONLY public."dataformApp_companydouments" DROP CONSTRAINT "dataformApp_companydouments_pkey";
       public            ngassociates    false    227            �           2606    595656 <   dataformApp_companyprofiles dataformApp_companyprofiles_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."dataformApp_companyprofiles"
    ADD CONSTRAINT "dataformApp_companyprofiles_pkey" PRIMARY KEY (companyid);
 j   ALTER TABLE ONLY public."dataformApp_companyprofiles" DROP CONSTRAINT "dataformApp_companyprofiles_pkey";
       public            ngassociates    false    229            �           2606    595658 0   dataformApp_contactus dataformApp_contactus_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."dataformApp_contactus"
    ADD CONSTRAINT "dataformApp_contactus_pkey" PRIMARY KEY (cid);
 ^   ALTER TABLE ONLY public."dataformApp_contactus" DROP CONSTRAINT "dataformApp_contactus_pkey";
       public            ngassociates    false    231            �           2606    595660 4   dataformApp_countorders dataformApp_countorders_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."dataformApp_countorders"
    ADD CONSTRAINT "dataformApp_countorders_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."dataformApp_countorders" DROP CONSTRAINT "dataformApp_countorders_pkey";
       public            ngassociates    false    233            �           2606    595662 0   dataformApp_feedbacks dataformApp_feedbacks_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."dataformApp_feedbacks"
    ADD CONSTRAINT "dataformApp_feedbacks_pkey" PRIMARY KEY (feedbackid);
 ^   ALTER TABLE ONLY public."dataformApp_feedbacks" DROP CONSTRAINT "dataformApp_feedbacks_pkey";
       public            ngassociates    false    235            �           2606    595664 .   dataformApp_invoices dataformApp_invoices_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."dataformApp_invoices"
    ADD CONSTRAINT "dataformApp_invoices_pkey" PRIMARY KEY (invoiceid);
 \   ALTER TABLE ONLY public."dataformApp_invoices" DROP CONSTRAINT "dataformApp_invoices_pkey";
       public            ngassociates    false    237            �           2606    595666 0   dataformApp_monthdata dataformApp_monthdata_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."dataformApp_monthdata"
    ADD CONSTRAINT "dataformApp_monthdata_pkey" PRIMARY KEY (monthid);
 ^   ALTER TABLE ONLY public."dataformApp_monthdata" DROP CONSTRAINT "dataformApp_monthdata_pkey";
       public            ngassociates    false    239            �           2606    595668 0   dataformApp_myemailid dataformApp_myemailid_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."dataformApp_myemailid"
    ADD CONSTRAINT "dataformApp_myemailid_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."dataformApp_myemailid" DROP CONSTRAINT "dataformApp_myemailid_pkey";
       public            ngassociates    false    241            �           2606    595670 ,   dataformApp_mytoken dataformApp_mytoken_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."dataformApp_mytoken"
    ADD CONSTRAINT "dataformApp_mytoken_pkey" PRIMARY KEY (tokenid);
 Z   ALTER TABLE ONLY public."dataformApp_mytoken" DROP CONSTRAINT "dataformApp_mytoken_pkey";
       public            ngassociates    false    243            �           2606    595672 .   dataformApp_myuserid dataformApp_myuserid_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."dataformApp_myuserid"
    ADD CONSTRAINT "dataformApp_myuserid_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."dataformApp_myuserid" DROP CONSTRAINT "dataformApp_myuserid_pkey";
       public            ngassociates    false    245            �           2606    595674 ,   dataformApp_olddocs dataformApp_olddocs_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."dataformApp_olddocs"
    ADD CONSTRAINT "dataformApp_olddocs_pkey" PRIMARY KEY (docid);
 Z   ALTER TABLE ONLY public."dataformApp_olddocs" DROP CONSTRAINT "dataformApp_olddocs_pkey";
       public            ngassociates    false    247            �           2606    595676 4   dataformApp_olduserdata dataformApp_olduserdata_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."dataformApp_olduserdata"
    ADD CONSTRAINT "dataformApp_olduserdata_pkey" PRIMARY KEY (oldid);
 b   ALTER TABLE ONLY public."dataformApp_olduserdata" DROP CONSTRAINT "dataformApp_olduserdata_pkey";
       public            ngassociates    false    249            �           2606    595678 8   dataformApp_orderoverview dataformApp_orderoverview_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."dataformApp_orderoverview"
    ADD CONSTRAINT "dataformApp_orderoverview_pkey" PRIMARY KEY (orderoverviewid);
 f   ALTER TABLE ONLY public."dataformApp_orderoverview" DROP CONSTRAINT "dataformApp_orderoverview_pkey";
       public            ngassociates    false    251            �           2606    595680 P   dataformApp_orderrequirementdocuments dataformApp_orderrequirementdocuments_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."dataformApp_orderrequirementdocuments"
    ADD CONSTRAINT "dataformApp_orderrequirementdocuments_pkey" PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public."dataformApp_orderrequirementdocuments" DROP CONSTRAINT "dataformApp_orderrequirementdocuments_pkey";
       public            ngassociates    false    253            �           2606    595682 @   dataformApp_orderrequirements dataformApp_orderrequirements_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."dataformApp_orderrequirements"
    ADD CONSTRAINT "dataformApp_orderrequirements_pkey" PRIMARY KEY (orderrequirementsid);
 n   ALTER TABLE ONLY public."dataformApp_orderrequirements" DROP CONSTRAINT "dataformApp_orderrequirements_pkey";
       public            ngassociates    false    255            �           2606    595684 6   dataformApp_userprofiles dataformApp_userprofiles_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."dataformApp_userprofiles"
    ADD CONSTRAINT "dataformApp_userprofiles_pkey" PRIMARY KEY (userprofilesid);
 d   ALTER TABLE ONLY public."dataformApp_userprofiles" DROP CONSTRAINT "dataformApp_userprofiles_pkey";
       public            ngassociates    false    257            �           2606    595686 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            ngassociates    false    259            �           2606    595688 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            ngassociates    false    261    261                       2606    595690 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            ngassociates    false    261                       2606    595692 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            ngassociates    false    263                       2606    595694 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            ngassociates    false    265            	           2606    595696 *   paymentApp_payment paymentApp_payment_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."paymentApp_payment"
    ADD CONSTRAINT "paymentApp_payment_pkey" PRIMARY KEY (paymentid);
 X   ALTER TABLE ONLY public."paymentApp_payment" DROP CONSTRAINT "paymentApp_payment_pkey";
       public            ngassociates    false    266            �           1259    595697    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            ngassociates    false    215            �           1259    595698 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            ngassociates    false    217            �           1259    595699 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            ngassociates    false    217            �           1259    595700 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            ngassociates    false    219            �           1259    595701 #   backendApp_user_email_12b0b980_like    INDEX     x   CREATE INDEX "backendApp_user_email_12b0b980_like" ON public."backendApp_user" USING btree (email varchar_pattern_ops);
 9   DROP INDEX public."backendApp_user_email_12b0b980_like";
       public            ngassociates    false    221            �           1259    595702 (   backendApp_user_groups_group_id_b8c7bd4e    INDEX     s   CREATE INDEX "backendApp_user_groups_group_id_b8c7bd4e" ON public."backendApp_user_groups" USING btree (group_id);
 >   DROP INDEX public."backendApp_user_groups_group_id_b8c7bd4e";
       public            ngassociates    false    222            �           1259    595703 '   backendApp_user_groups_user_id_acb92a6e    INDEX     q   CREATE INDEX "backendApp_user_groups_user_id_acb92a6e" ON public."backendApp_user_groups" USING btree (user_id);
 =   DROP INDEX public."backendApp_user_groups_user_id_acb92a6e";
       public            ngassociates    false    222            �           1259    595704 #   backendApp_user_phone_a0699927_like    INDEX     x   CREATE INDEX "backendApp_user_phone_a0699927_like" ON public."backendApp_user" USING btree (phone varchar_pattern_ops);
 9   DROP INDEX public."backendApp_user_phone_a0699927_like";
       public            ngassociates    false    221            �           1259    595705 7   backendApp_user_user_permissions_permission_id_ab22d8df    INDEX     �   CREATE INDEX "backendApp_user_user_permissions_permission_id_ab22d8df" ON public."backendApp_user_user_permissions" USING btree (permission_id);
 M   DROP INDEX public."backendApp_user_user_permissions_permission_id_ab22d8df";
       public            ngassociates    false    225            �           1259    595706 1   backendApp_user_user_permissions_user_id_b9c5e34d    INDEX     �   CREATE INDEX "backendApp_user_user_permissions_user_id_b9c5e34d" ON public."backendApp_user_user_permissions" USING btree (user_id);
 G   DROP INDEX public."backendApp_user_user_permissions_user_id_b9c5e34d";
       public            ngassociates    false    225            �           1259    595707 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            ngassociates    false    259            �           1259    595708 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            ngassociates    false    259                       1259    595709 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            ngassociates    false    265                       1259    595710 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            ngassociates    false    265            
           2606    595711 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          ngassociates    false    4805    217    219                       2606    595716 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          ngassociates    false    217    215    4794                       2606    595721 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          ngassociates    false    261    4865    219                       2606    595726 P   backendApp_user_groups backendApp_user_groups_group_id_b8c7bd4e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."backendApp_user_groups"
    ADD CONSTRAINT "backendApp_user_groups_group_id_b8c7bd4e_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."backendApp_user_groups" DROP CONSTRAINT "backendApp_user_groups_group_id_b8c7bd4e_fk_auth_group_id";
       public          ngassociates    false    4794    215    222                       2606    595731 T   backendApp_user_groups backendApp_user_groups_user_id_acb92a6e_fk_backendApp_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."backendApp_user_groups"
    ADD CONSTRAINT "backendApp_user_groups_user_id_acb92a6e_fk_backendApp_user_id" FOREIGN KEY (user_id) REFERENCES public."backendApp_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."backendApp_user_groups" DROP CONSTRAINT "backendApp_user_groups_user_id_acb92a6e_fk_backendApp_user_id";
       public          ngassociates    false    222    4813    221                       2606    595736 Y   backendApp_user_user_permissions backendApp_user_user_permission_id_ab22d8df_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public."backendApp_user_user_permissions"
    ADD CONSTRAINT "backendApp_user_user_permission_id_ab22d8df_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."backendApp_user_user_permissions" DROP CONSTRAINT "backendApp_user_user_permission_id_ab22d8df_fk_auth_perm";
       public          ngassociates    false    219    4805    225                       2606    595741 S   backendApp_user_user_permissions backendApp_user_user_user_id_b9c5e34d_fk_backendAp    FK CONSTRAINT     �   ALTER TABLE ONLY public."backendApp_user_user_permissions"
    ADD CONSTRAINT "backendApp_user_user_user_id_b9c5e34d_fk_backendAp" FOREIGN KEY (user_id) REFERENCES public."backendApp_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."backendApp_user_user_permissions" DROP CONSTRAINT "backendApp_user_user_user_id_b9c5e34d_fk_backendAp";
       public          ngassociates    false    4813    221    225                       2606    595746 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          ngassociates    false    259    261    4865                       2606    595751 H   django_admin_log django_admin_log_user_id_c564eba6_fk_backendApp_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_backendApp_user_id" FOREIGN KEY (user_id) REFERENCES public."backendApp_user"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_backendApp_user_id";
       public          ngassociates    false    259    221    4813            �      x������ � �      �      x������ � �      �   �  x�}��r�0F����t,~\�5:ӡFI������߾BZi����q���$l��~��ð;��;;]��2�]�v��R9~�ӻTb���`O�*�0�`������6�P��.v9��:Γ*���	��m�O�$lˊ���u��}�oUzA��6{���ɋ�N!B
V�����e28����nw�_���m#�T���d%��2�`ь���m��jCok/LWڴ(�y&�CG�H/bŞ��V	1���E����.D�.�@���B ��������5����O�a��]�V��"�Q]�B�5i-��F�g^��4+kqY�"Z٬��gtY��dW���.�Of5rF\f���䌸�x�ጸD��?^�:�.e�����B��}HWb![�f�Jd�qXަ�vY�ۇ�g�e+M�\�來��/���M��r�ެ���O�C(�J�P���ȣ`�X�� �'p��q��ǣ{YL8�⵮D0#E&E�$A&!~�y=�8qg�:|��W&Fi@�"f$A`E�K��B��%�������!ʄ�J�Z�顀�����2�j ]~��Y,��m\���vFS��nf��A8����f��Y؁��:�n�zw��s��.����⻮���p��w]�/f�j�׳��Og��xW���t��&}>�3� v���	��D^\�EΧ/�a׸_�O;)h�ԍ�1��E��n�\�+"�;Sa��L	V��8(ӑV��M%�Kb����I-�tc��"�����-PE8_�R7"� �_$��.�!��D~�D�@��Oν0�4�m!�`j[bK�7`S�[a瀤�%��2��W��G(]�Vd���ȉd 9�P!͑��j[f|e4�C��gv�!�&�D�M�/�-��8��~h���=vu      �     x���]��H�����u����d�FT@TP�L�A�A���/���cOg��o%��{�{
�O�&q}�Wڈ��$���@���=�5��{��re&���t8�TբW�v��zbK��Mz�y�^��,���=}מ4��y)aDi�m�-C8���ۋ�<Us�O �
�+-����b� 1Eѯ����?C���0L���E�NS�
2���� Q12���q6t6qy����Д�H���㲳C�ċ�������v��4�S�.�̉��+�$~6_�l'�R�5/���Z uI�K1�I
����Bm���PR�� �G0�{�ճ�b�\��c���w���}	F��s�(�CfX�Ґ��ͤ#��y(ߌy���.ȼ90���[����O�� ����V�/ !sA l"����� �I�j���Wd�p���[�9P�އ����b�_N]��ed2Y4^���w�9��ET�^���;H��+�k��K�f��=�- ��풍y����>f�O��XΘ�$�Y��(W�v�����M��=,N�r޳K� Iq\o��̗���y�\��[W����5�Ov����Bd��."	L����<T�1�q���q��C�S�`���T/f'�fgJ"Xl�$�7,s-vlk��u2[�V�\ݺ+�S'��i���;�4�/�_�VS\d�
��GQ�=�c�A���T���̜�2�LNsө2�횷��G*�C4ԝ~���D�8��zx.{Y��L�!�_�"0����6,�1�����$�d�fV�=/C83������g����͗�~6\��ƞ���{�[G���b;NvH��a�ݵ[�Y�.��$�1�*�1�$�lbZ,��z��Y���4d���C[qp�	{K#9_R��2�O�Z:t��6�������0*�Z�w�]�D3~E��'T
,���3���DVƖ4�J�{2>6�\�����$�
Y�ߡ{c!7'�:�
z�F���g�$����`�}�sB���� � �L"�	��ck&-��%� K`�0���>I�`���ԨmFm��(�+�}�W�T}����r���RjϞ7.���}�Lø���f^!{��vM`�an�N�����V�!�l�{�%^��yX�@��F��mr��:�a��#�K����w���}r�0)�Zd��O����h�[�u; �kR�/���H�\6�7��X��~�x�т�V�mb5(�,��k�7[j�Q��e����þ"��[3` A����3��N<??����      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�4�4BN= �D\1z\\\ 5�      �      x������ � �      �      x������ � �      �   /   x�3�4�@.#8��2��L�,s8��24@0�L38�Ί���� ��      �      x������ � �      �     x���ے��ǯ�)��" (��A� 4��U�G @�L�
y�f�ZK�s龠
�������
��c�ǵ]���H@P,߽|����(�³����v�v�%O+��M	gk"Pq+�:��g-�Y��@'<V�5t>w4��@��(�Bu�n?��8�('9vA\��0�qMGčU��gIc����qX�j_Y{G&�*kH�������h\vxߕxEnNV���R�'Z4��M)d{=?����2+�Wc���A`��c��|�u~��a�7*<Nk����Òrj�HnQ�ԸG�Mn��ol���6�|}���۪![f��j��h������x���?�+��j�#b�p��#� ��ס�%�g%���E |ƂF����ۓ{���|j�2���JѲ�t���g�����������&{/�jw)�X�?�^�8�G��RrI��{�~��wI�GUADș��X������ӨT�ѳ�%���ӓ���;�v�������7ļ5�o�]��{������@��rSKڬ#����n>tT�1n��Tit�K��n��
y%�{��f5au��3k�mo3�ʻ�q��7,�L���a0p�D�
!k�@��h t�/7�*uX�?�:�d��dv�0��6p���R) �����~w��t�"kI�L̬�[�q8�u�[�U���j���ErN��稩}�楟��
��cC�o.Ç���"��4@�!gm/.��CX$�K���b<�IT��s̱���[C�Go����b��)۬�y��U}i���>ۭ3+�w��~,l0Rd��&UT��0��e�y6,�%���E��_�M��F�iN�-�F�0�ְ6����j��֋v�8��}|���Lsf�k�kl;�����ù�����!-�NN+l�>�:�����1�DP�X�]-�Mڜ;����H�3Y�D��ӴZ�C=ċ��9��ᦻ��>��'�[�6ڷ�d_GS�L4EZ����ۢ�lt/��#���-�C�m�����p$������2Hrʫ���,��x�=�e�v���3��x&Ɏ_�uõ�,k�e�|��aV��9��Wqɏ��T�W#ij,M��q_�"�S{&�"��gu���5�	�)��4,է<�,6��uu8��f��SO�X��7���?�ܝԗx+�Ixj�m�}�J�Ϳ��Z2�/�8�gT� ,~Oi?Ɯ�2�@���g�Ù <��).�&�썣�R�sG��%Xi�Zs�]��5O��sd�F��*��$��%��p0�J#�      �   �   x���m!E��t0�м�8�8ljs�B*����Ze��'���}���]�_���M'e�w,�����=��f��fw[��l�ƶau���6�d�M6��M��l�y��-��b˝K�t�-w.�f{Y��f[��f�m�q��v�հ�;�<�j��=��=�����6�Ey      �      x��io�H�.�Y�+�i���/��.ДDK,kkR�ˍ$h��T�%�W����$%Jʍr������)�I>�[l�~c3�of��Y�|Zϧ���i��������[�5����b�=m��i5ݽ�����Q܊e�-j���}�����o����麶c���Oύn8h'q��Ńvj�$�Ǒ֋��8j��7���eO�l�"'��4[?!C	��1߳��}���A�o�K������?�_r8Cn�ڮN�R�%��G�D��"���˥�G�5�������6��"�c�|%ë=�V�,�&��%���(m�j�u�l�m���j:]�[���TW��H�4[N�6���r-�`�?!�F}\	M-Ҧ�z;�O�{�	��P��Dؓg��r3�j�?��R�V@�	�1}=�r�	�V�fRV"2�wH���ƶ��k�X���,,���q3��R����|�O��`����kV?���+�Pe:]��~ڏ�V��㛸�0G�9�#�&O��J��f�ζ�ղ��ыa���a���v<вB4j"�������X���_��)����݉�H(�C;�^�X�l��e����}�y�]!ruC���f8���1�܏c����O "<�܅2� %a�[1|#�z��?L�WB�V�t�k�g$�j:'��9��[�oP	��Zx�8�Ζ����Pm1����lЎ�0�7L
~�7��Xn��U���N:֒�vs�����\\1	�pPZ��p�����X�pЊz�������H�[�����LZ�L���?ɸ#���0ȑ���0�p��q����a'�RV��Q��Ҟ�U�^�b�n�c�3�C-��0a��f�4C�U�p��xx�[a�f�<��w�����|͞nߗ��� �����:������d!߬�o(��lD�YwQ�	kɺ����a<~Кq�G瘅�)j��D�|1�J��(����^����F=,(a����*/�Ǉ_~6��P!�jt?��-�N�Lpϕ��rei0����"�:�1t<�(��%2<W���f.AXݫ��g����t�k���+d�7Q֢�[�LhN� 1+Z��"�RT�WB
l�^<�n�I_@�ͼכ��� ��j3Y�O��ŨЈ@^�P<�xo�W�n`\Iq%�s��7��D�8G	���́hF�,�7{zZ����G��o�SQ�<D�dqHXP:i��$�-�F�X@X�{�L���|�A�,Ϸh��.vO�������	d�i�፺���tg⧅�!ϋ�y.g$ܧ�3i��q��I��\���I���}b�I۾_|���9ڈ�*|���M���@-�?�%{�����_�#�6�Y����Q>�f������u=`U˼2--'Z�O��;��3zzF�e:��Y���� >g��X�eX�.ꆧ[��80�K����䂝r�D,�B 	��Į�0�=�3u����Q���߳�SL�o�������޳�ke�|��Ѡ¢=lM��`!��m�|��v���Q�|@�@�eE��Qغ=w8S�bF׍�Z;��㰧���k���a����Ac0l���a�z��Q�f�6��U�P����8A�1Uz$��oe;�s��������v<&�֎�a�c�i�]�-m��AM`@'F�{�H	`Mö�^|%X7L[��ev?˶�����g;պҽ+�G�Yזm9h�GF����m�o�A�����g��DZ
����7
�1j�}K�i���o�v�4�vUĀv��P��W�2<G�EZ/4@h��m���Z�B`�<�X��Y��of��*&q�-����<�EW�a��t�t���(�@��iZ�K�Zw�kC7YC�u4�t��C�y:��/�\S �-#^�V�~*X	��������oa/�(c�K� ���a�{���b�	��A+1�nZ��i���p�t�� ܢ�t�Y�?��a��?n���
z��&�k��1��+�V�-_���S��4?�wI���I���.�)�\�4G��OQ�ӌ��O��z����I*R�'D���O{���ZC��]��C	�B�xǏZ��''��*�
��Aڍ�`�ݎc�9�{㫘�}}2�6��]�Z�2�aC�A�c/E�8@@1>A@���?������Z����ti<��;�n��-���#�T�!	L�P��@���,�ۇ�x�=����5��`/K´�& V��+���0Aa����:�=(�>1����A]���m�_�G\\���d�>��U�8N�*�t� 3_��u� 2pUG)w$]�*%�,�#$����W�"�+\:4�L"�_�tu���=�hx��N�ƙSwH�;!��H�_�r�)\��s�1�G��� sO��#��B­���@���԰�����!�b �
'S�ʸڷG�����߳E]QB�D����v�Į�dx�
�"�fEj�l*2���K���q��	�c�-3�6��y��x�Mj��>��p 
'��SJ��m����g2���OO;�|s���Q|�=I�I�w�^�8ɥ����оZ�_������)rp"�o�4�ᗭh�27�8��܀��������f�ͫ���E3�h߷�/��s*��y�DJ�o&��I?L4�*��J3Y\ъ�CK�V8hM�@T |�������TO�}�jl�4�E�S<G2~�4�2$��(��F���
�rτWPݺ�b(���U��e2��=�D��¦?�[�I����X�B
-
F:,y8�	���:�wΘ����E`��P��d�����̣�+[7@�|�m�>n�_'i������$ڳs�VP�j ����"�V��-��I�M���"�{�f�
�i��h0u��I���8�o�~��[�~��M:0R�(썻d#�'�69�e�aH��b�=������<B��q�����!Kg�w�\!#@�vK��ɟ�dZ"��� ���)0�pܭv8�}�ɱ�/��`���ז^|����2�u+f۴!�k�o2�70��w*q���ƕ����~@mt	'��Y)�G�'ۈrd֧I+j�_���cp��_*�����S��K��>b�w�1�`|�(��
[�q[̾2�έ����E	w#x6i&��%vNf�Q0Qɍ��,8϶�%�I��p2�DDBM�5JG}d��X����l���AIxL!�w�u��Q���?X�Ǽ^�0�#z�.��엜��<��s��rϑ%A��'�^�� X��m�E!7�ޞ�x�����,[�����-~��Kb{ＳtdN8�����+����\�����b��}�n<~a�Ҁ�1�6[�+��<�wx��J%J֘龁&� �@�[!J���|�oj
�+`n`m��$iY[ĐŐ����ъa��d2 aQ��N�o��mۺPփ "�X5�	&�D�Ӹ>�ō�������bS����A/`��ӑ��%!�	)�VBeT��,��'��f~�1�i�bI2����*ݫ��VV�i�5�9)�^o�Q�,V$nC�	+�8�E�l��} �c:�p�¯XC�{a�w��/��<��G/�҂�PL,�}Sw��蚦e:�[��H�����a;.�EvO�;�a3�i�QSK��o�b�(�� !��Q�N��6�4�-�F���U����y�����6�m�N���f�A	�7 �D6�T�ؖ�Y�Q���O�3Jظ:QIL��{M��υ��=5N��)Aj�T����A�+��%��JP����+�ɩ�F��0��3%���E�p����{(i1�r�^m��͗�!64�������#1�%#[e��Ww�%�[�߆�`L����×o�����Ζ^x��W��ew�Y_���-R6��M�H"?��;-��,	�W$)Y�L��:[H+/R�PM�P�����D�hԐ��D�v�WBۄڲ5Qn1�Ba![W.�m�a]*4��=Qq�!LP�*,#5܌��vV�r�T��0|���Q�� �f ��@�[矩s��ç�}�W�o'��(	G�HiG�'��}��|�"���    ��ɕaj�,�������7�vg��[4�n�	�6La������ֹ�4��9��`~S[�*�^�l���3�~~�shR�����C�W++)�<��?f���n]��U������|�,�n<�^�d<!��TܔyQ'��0�J$́]�D9����6	��p\29M���Ҭ�|L�A3�u�z����iy�J��,��{\S���Q���4zZ 5�j��b/��Y�Ec�P����_���e�-؉vl�1�#Ғci�v�(&�e�e8��85�iB�_�����򚊋[�q�Pa�k㾖�@Wd�?E#u=�,��F�}qn�v�VX-=XD�A��V��4��c�>sǷW^�xw��3��K��$���҈��r�L���D �S���������S����i�/�$L�p,}hW���ԫ�NR��9Z�0���J{|���=��D�ǃ03���'8	VY�N����h��j-���or6�*�"������.tлPJ��"����H��6�mS���t��������B)�ό����z��6�kݺQ������S�TbN`Sb�ǉ����p������Z�5q�%m\��R7a���:9�R�)Ο�vWS������Vx+������X�#��@$� JpC��gs��5 ��]���l����"��'eG���G�����%�'gƧX�+aO<���G�Eu˃E8�\;��;Ō�M]�i�f��%ˠ	%.�o�	,�[�X����Y �p�1�ێ�n���\vE��+�2t|��t,W�P,���0�o����MA�'�٩f̖�V��B�w1'��6݂m3ܳM�q��_^5�>�Y;t?��w�p��}�Z4L�g}p;�Q����Z�?7�h������+|�,��G������{Q��C?D����aq���W1�ݷ��Tɂ8q�j��n\6b�g���F�;Wj&j��7!�C��6�=��>0Tέ�_��R_:�h��.7��c�"n�A�G�y����e���=U���:G�._ϟ?iMW��i�1�e̳�S~,������ً��r�e�e\e��U�	,��"�B0�~]ܷVg��~?�.��a���/b�\�ғ�=�U3g�y�U�a5��i{`5%�4��؈�7Q�~����SX�0�o>��|`ho�(��8�Ӱr:#�b�V���妪���m.ພD�=��`��K^�zg�r���~}�p�+ï÷�bI�M�\�{ʊ�誰��?{��xt�~����6u��̠Q�?��KuF}�X��!�¸��Z�؎�]���b��ZQ��6'1=��2P<��^��nW9h%rsP���Ä�N���_F$EDM^jF��"������{p?���UL$�V����	T�S�~����]mM�(ex�0K&�y����nȍ��O�|%u7%�1���0�O��4ݭ?�wS�����g��?{�[�g��|+W�,��X�k��َ���/d��/��œ!�)����^��RC4LBF$��}�r��ť',�A)��Ӕ鵤]!�.g��:�|Y>m�7�:�4�kJ�6�����1L�1�?���|3[h���`���m#޵���xt��.J�?����U��Z�s%���Oz,������!܆�.�����5�D����ϵ��Q�CU�x%"z���Ӊ��e_����jXpM�rqd�be�c�3�&��"D��+I����i�̥*�劙��T��g�e�Z/�5�/\�B���D��:�$�妳��l�E�l����IU�w�� �/}5�b���hCU�Kuy°t���1��&�Ͱ+���:bũ�)\Q.�ÿ*/�!�a��E��Rf&�	�L'�1�-���}��X���Ȑ1�A����^�a�8T�0-�b�E�K�����ԥ�!}�P�􏥏q����7a�@��i	����a�����)G雺�{�7�4ҊSn�9?O�T;��~�)7 ��/���Ł�袜4B��x4F�皮��OHڀ�>l���3�(�__2��pV�V��]�w)�C��7o�֔��#��%��=rll�$�i3�+���b��z�����Wx�wX�*��;РoI�S3��H�~?>񧡽Ʀ��W�o�|'���AT9�\���2�Ҩu'�l�����$>Z�}At*[�������̨*B~V��.�gE�=�U��|�L���}��|�p��8���0����S�L��G����#�dԻ~m�dS�i�3��}�:�����QQ�w!qJ��S+ƴp�S~ʌ�QT�j0����a�4n,�;�ek)��|���h��I��pݖ)��OU�V���i��]���׋��[�����>�/g����(��>�?�v�>+}n�N=9I3�=���n��c]۾i��t��u�+i����8�xBm�ְ?��ڨ=). ���##�X�LR�9ieOW4���8���8=�U������8��&EF<��<��@�K`�"Yf˫}v��Q��k����F~�w�=~����}�؎�a#�@�Q������}�hj)Km
I��U�����S)%��s)�U	G�9��_��C�j�'�彤��FS@1ţL��	�'�0��X���n�C,:���5+�q���
���9��`�0n��M��|�T��&f�J�Un�R,�^����5���4����q��V�w��%��>�ί[��Q��>9��)�XDs�!h%h�a��u_��� ?��*�v�F��E@�ndO��|}�mfo�j�=��]Pø�y�!��g��z�V)6qӰڼ�p��R]�~_>�,�Xisȋ���a������F�?LW
����;j�gXi��K�М\v:�K��w��\>��<=䒁� �BN��������e��\���	E��W�*P5�q"��!|�����<[\�˛d�S�����!]|EV^�s��Pm�ݥ�mW��2�0˲Ja�k3(�֒Ê�.���I��� ,���%8>PPr���+Kg����g�䯖���U�2E�!uCy�f�i�! p��t�-�_W��6�u�X���3rM�v}'�ǁ8d���V2l��q,_N�ra�q,�pp�e��'=�1�;�T".�f\݇��AZ"�
jtL^J�®ٺ�
��4�T�����T�S'��A�"8J~�3�V'�l�s���p�a�{VӅ�+��5����*�~��F����g��´bO���t���ֹZfK����*iUuIfȀT=�=1zg���|s��[�q$^��&��/�����x�O��"tjAv���s�;�[�V��(��J�J\�ەt������)_Oql-�R5�<��C3�K�plތ�}����S���}S,��2�[����T��i�ZN��@�ѵ݂:���L]:\]����<;Js�
lH�O��	N����k�8(�˓eI�֢Ò�Aj0���R5��\!��mӛ��e%U�l)I����5)Q�ya�"�*�
ˢA
\��Sf4�2-�#W�.s��h��z�IH��9*'}��º��.W���nǴ\�7u���PM/T�<�Yr��o$LiMrB[�$��IB�i���;��r�G$5�����
�8���C�FR|��Ȧ�o$%��"��)�.!EA������|�l�֏��9϶כl:�/�f��3����z�/�Ea�M�f8����?p�E��F��Xi�yȣ�v8��,Z��h����WD��u)[�x�98!�����͏2��G�#�rv'W)yd��}/L��� �$J���T��Wݳ��g��#���U���}%�y�����	�8����t�A�Cf���'�mv�"�	HcT?��`� 2�bE�g���m����h��&.���9X�6�R�W�,��"W�'`�;���-Μx q�Ns ��D���v�� 6�X���g���m�s�����V��_�#$��.���ע���<���'��O�V^���߯��>���]O���S�W�0U��`�T0���    ��ǬT�*�4+�Jr�[�k����#ϕ�E�j
�JNQ:|ŵ0f	�9B_�P�e��r2������X�Z%)s�A��3�����T�����H*t	& Ҽ��_u.���,�^yJ�����t�\�c��Z��L(��Q�&�I��|Nt0���@_�{
�*���+Z�:�o�.h���
0�j�!� L�5C�*ͥ����n���/0���/�f�*�qaܩ&�8�����Q@_�9�N_L��95�8E8���
�IISM:ه��m��j&��Z~�㙕���R��C�*ŻJ����"[R}s���OJ1G�@��r�-�q��4L��&��&bl�����]uQ\L�`��Os15���O}2�I�]�W����x_'�+i��~���b6/����L��,�MZ!RgI���ĉA�����Z��1W{�K��(`��%\ځ�8��mă�}<��&�:���R�Yq������-�*.�pz-�K�H�=�����(�1�@X3[d�)���<ߢ�b��|���T�J*��/M�%���C7���h+ԏ;E2�j�hEm�p�ɨ�=��ļ?��+K�l��i�w�Ƭ`��WY����qϺ�p ٜX��y�11]a�v0��E��x�d�bk8}]�~.���.EN̢�Z�\:���<��._�m�O�;�ٱ��o ��@����/�@q-6�5=G�Y�V�KC��z�3.�H�0�@د� �>��~,w�I3m%q���2�W�;4G��)��R�;��#ҹ��VH�Z7��EM���t��C#�=+��"(��K����H)c�N4��΃"%�1��f�M�-��*��f�h̞%!"��B��Ȕ�\6&�ߩUW���"���+��$/"� d�����&�B��i2jDn3��M*i˙���H�0¸��'N����)a�k
�� p��M������� 	',	j��S��m3	+,i�3V���v���Ja3O����W�a���"�"ԉtg�i`ݍ�F{�]n�IE�R(`��<o�HA���I/�Lf�D�5N��n���(<DL�3�2��Veo�>�Q��1�A��<Tb��#�O�Cצ�ԋ�T�8��y��(���ɂ#PH���'�:��U�v�p[�}��xd`u���3I:!i4��%b�82�j4�h5q|$�X�$m��`�U�R_Ta^�N~T����M1��w�T����
x+�l�L2���=r9���7�f&s/;".N�ZO:-n�t�s+&Cľ�BV��4GU�zt\��]��E�s��ׄB,��A���Qk�Z���+`� ��^-�qz�����=8�~�ݰ��Q��M�� � �t4Q;{n]�?�$���>����ZoȾ���1��He�Aj�;�̈́s���q]�SHa�@a�t�	�A7�"�+<j/WF���"�?���c+��+��F�~�S��'*N��@sd��b:ŕ� \@��H���G$��aZ��zz%��>Պ���pxÌ� �*A���P��n#��t2�+E�mBdҤ�� ���^]O7ӣc��N�}hqs*�%��#��f��M܊'}�_�Q��<��������8%���)8��_�Ӆݗ\���B��n
�����oq��a���_�g]��`%�lP+{�m�^m�nD�l�����؎hC�#��I�Nf-4W�%��i��(gq���"���ȻM^k%����eD�Dl|��&�(_H}V�;��� TD�*9�D!���W)�EiCj1�/SbH)Q�x_�ĔR���
b������x���/�k���|��@�t/@�z���)��\�ʺ��\.H�WO�ܗ��� .���h ���(��W?]���؂�~4�TvZ�"
p�-\���\v=�c����U�F�����8v��k��.F����w�J��YUks.����~�� �~���qq��n�Zo�&?G!~���sq���{��C�@m̂Fw=��_g��u^\���Q��ã}�Ag�E�a����.�줅�0?K	>k(�Hq?�������ݧw9��d���)�#���������K&"�l�~ڗݫGԙNIIR%�����6�G�H��G�h��5i)K�
v��C��3��o(�*���c���fv��<�iͰ�%]#�iu����v4��j�|~��aל�R���t~>��N��#�$���|�����b
%�F����Q��v�:��WD�� 3� �v���z;~�/7�}f��
���|y�yFu�&���մ3�3�a��G��yZ���$�r�U��k�o�7ƙ�����Rڑ�T߲Bw�m�A�XX¹�3qf� ��4Z`�R�c�BR�����)�-M�+'��Γ���j�g%y�0%�S�{���|��-��=��mג�U�ю�Qx{ۉ�A8��R��8�Tm��h�
�%y6A��z������rG_��p�稍h[&�/@�4��V�;��{��1x	�pg����ap�"����c��e���l��dg�fM=����㮄5V+�"D�$=�L�vY�J��3J"*y2�����5LQ���؜XB����]��<
Ԭ)Ӕg�*	b'���E�U�yi�m�
��ZaYO�%�Z!Z�[Zh��,�MN+3��_��$�ݰ��9!
�S����g�b�-��PZ�#�mlv������|���W����$�a��3�����@�}�S�E������MyN�0�@I��f�>��|��d�oɛ��1�(ubP�q���M3hlV��q��_���Ƿ��+���5-��Gjy�K
�x�����I��<�W L	[�n~�__�t����Kk_c`hZQIi��v�ٶ�\�;�΀ssc�-�N�?$	�ĳ��9�J�w埗X�Ra�|.�i���g�`4W����v��88q4X���W��?�`�㰚����~�ľ$n����I���e"L6�$���{��ZE�;nhڸH�Yi�N��!����ՎA���I��cҁ[W�:�́-4b2��1 ��7F��:%��c[�O���[�e��c�#7(����}�E
����MD���wP�D�Q�����lݙ�����Y��t<���kR�3XU$�΢���l�jk�l�~�)W�N���T��E郏�᫩��^W{�N\7R�щbW�W����Q�r��S���U�5���ٔ���.c�<�^���d��z:z��V��k�so�e>�f9�����}�y�}$�����S�&��#D"���1�\-<m�k�Z�^>Ҩ)J�8Zgo�'��^p�;�'���'��K�}l�b�n�Ay ����6+��ii�I<��!Y��{M۪A�����b\��v�K>�6�uj\��s��ĎѸ�H��|����7��8EØ~Na/�<�b�u�XOֈ���.(UOҦpQ�5'5L�Te���ǽ��5Bх����P�ߤJ��<���b֠UM�/���#���������8�_y��5�V��tS�:�I�(5]$��A
��F�z��ia3��l3{�u4M]ׯM�pEN��ۦ�\���sz��+Պ/i�$�U��tuw�m�l�]S�v2��R\���Kq׺w��yڠB��q���x��FE�o-�T�8LW8���t�`o�C5de��o��$���>��;���&I���{\}��yM���G�yO��6������g
�w� ����駥�e���~m1�ZJ\ͨwU5����^��`q��~��Rd���}����@l�7�R���?�F�$%��(����]����9��X{/�+�����`H��a�a�Q�w����3×\�N�b�{�sy �UX0Ƀ֜�1>=���x�HCT6T@�L{wLU/`�	�fl�Z;���MEa�)��y����[2��E@%�@|�������P�ͽ[�jHn��W��\��^�ǜ�g��Q��8]��{6E�"����CK�x0ޅ������*��D�UϞTJ䙾���o�l��͗/գ0`Q3�qk���n��Z��D�gm�g�gY�	{6Ӥ'���#wCr���D    �������]��Z��80��ҽ�����{���j�s�솝p�#8����Ha�hq4����;���±V#�e�]�^�3�1U8cae�5m�vc�@�I$I�Q� N[x:���(��]9LB��A6�d��6�"ߩ��'���p<�Rh.��&�� Jo����n�Ͷ��N�p�QY<�*e))���'��)+�=ĝ�@q�M_^&�2�Ȯ�V'��2���*�gjb��\���O4Yb婙-_i���y��$Pv �3��hh��X�!��`��0�%N�m������(��2Lތ��9!Ӄ�;|�<Li˘�&����{�����iXLS�*�����ॱ%j�u�ET�QVf,���*�±o�j�)��,�{KZdK�oIԹ�]z���� ��^�"6ݑ}!g��Ӵ�"���Q�U�h������6�-���A � <CeKd���Mc�eqi�y�U9�3��GGE)j���9�SEe�@�h���>d:�Z��ɯo
u$���������\į��e����ӳK�/��%+��p�.��,#���ȭ���0K����:���[�u�8�M����|HH1x�q���1G���s|"L���>�?�[zw�v�$�vcM<Q����,{�̲��e�=l9r�$���l�r0������ߏ#�"�.ui��s��{���Y�v7����|;�Z�lM�U-]M��6��p�+�X?��1z��n�s�8�Q��s%z(������W����|��Z��ϋ�t9T�CZ��X�ʪd*Ԟ�z���-,�B^&`]y.�R�q�=����'�eOU���'�P�+[�b��W0#����u%�te��]���/�,����Gd;.q(������@ȼO>��F��<��؏s5�4J��f6�� $p��5���VtZ�X&�L��OO��s�Ț��/A��g�����B��i1���j��!N��g=��ͅ�j��-��r���J�(ہ�"_	���iY���Ճ�q�^=�q2J_�u���D��R���gځa��a8�^Ԯ��]�� -�}!	�����㙖g醃�wʙ�[W'A^D�R")�Њ�8�	����o�T&�T'@:
� �E`� ,�10����7� (T	��	����$�f	�����혠�ؾa麥N��N�t.#�� e�HmR6װ�خ� oT��M��z��a�bo��@�_fm���|�wt`��a0�Ş@�lP�`� .,n�f�5�`t>���������u����m��� ��cO	.�\zJ&4�R�$y�+���f\d$n\)0J��5�� �a,�~C�JF.��f�
�}l�=!"�(O��,����k���3p�9����}�4�u�|y��sg\��Cm��&}�*kmC{x�\kѠ8QB�j]�tޱ��T�Q<@�	�X�rȳ�l�@Mh���@dW���n�[��,1��f�g�捞���xnc (�Y�͖s#p�S,��8���o�� J��`-���|]��]�m�D6����i�m�7o �F�-��o�����?:��Bm2
�Uϴ�+������}F�i��3��6ӿ�o���-��g�gB����ʰ��,E������O*$y�$�o��D����?>�Ap�B�Foy�%��q�-�DY��yB-���Ac��>1��k��/���l0N.�����uN������v�<(����R�$���b�Iwt0�P�2��҇���|��v��������IAR�7���I�0��_c��eY��i0=B���P_�Y��4�_?����z���ͽ|�L��3_���C<ش;����>d"�|�5H�!ĩ�)A�����PFb�Ȧ������0t�r�~�g	�8]|�u
����;��̎����E)$OjZ?���#�G<��v�S��,r�.�	���
��'�Q%���n��@�̮{��*�=��a�;ɔF���h�#5Ҵ8@������EN������g��L��?�(��L>}��%�p�	w�Kę�_���3���U���O��%�$��"����d�~��|�Fg�5M�5C�v�a��b=�x���۝.�l�I��_4^��@��$�:�C6@E2��a��(��eR��A��3�ꙣ �c�����u��U��w�-
��z�U�_��:,_�<�oK@O��p�wz�z�o�B>:)ljy���bl��ӠL�������{���^;hŸ��!sH��)5�������3E���}�og
�t��56��{��m6+��6߈8O��`%+1ڔ��䯕��kq6��7�9��9���<r�p�0���a�=��z���/��"�s�ʌ�^���dM���/_�Q`��W�r�����'�6�"�3`�a�3}�F�٫7Js�~��"ڕNȭ�6�$�k��:�F0,�DR��a���,.��=�`Ed�+�@���6�k؎�V"�hk����鉷�~V�2[�f<y��CEqt�R�AC�8�L��i��J`�h4o�>L��$_�m����"Y���k-��2k-������?@��bQ���<�!��˰%�[=��L�7���U�w���gZ�%��L�~�����nn�Q[�I�t�\�{Oku�8�4�9�hf.G���:��x˟���j�9>�iv���X�NW�%�����+�̗/3��9-�~ĭ�W����{��1�{C����DIڍG������}>X֨�"��וNM��Lx|d!'������Q�{/�ǟ�G��s� ��Kv"��b�	7�iH��j����þ�2DF�G���R%�R
tѢ)�*k�6B'�?oi�|�U36�p=�tô��9*��ȧ:�AR�p6{�R��A�v�_��.y���?��h�
l��j�G�	-��p�"������e���4{�/��j�Ú��>v�ϗ���}[��̏�V?�Ú�b*a�b�"��$���pt�	=�x���1w	�93�훖��� ��c�gF�2�1]3�MW+7�d�@�p��7/��v�瞭7˔�{`5���ӡi/6�޸<�͗e]HOzԑF����\��,[8q�Ѽ�eZ�Q(m��s��P���"!���a��� ô�����"3-�J�/"CY��Ca' �{���EF P�{!>'�k�����US�m]m ��������X�\��"��m�\`��O��Q1��FsȌ�8).��-q�u%xڶ�ZpT{.Z����D]j���0y�}.�0�}�V�}6Í�?���I���h@N���p��̎�j�{$5\G��cZ�F�����s(�9vT)8s���g7�4�19��#NT��C���9�L��}hq+��3���۶,eޱ��<�o�������I�.v2��;��/�������=os`�l�B�.��E�fN��q�"K�x��������O����:_��s�.q�ëtq����tX�ʤ##Xw�����d���� ŷ�p����%�6N�,�
��Ԉ��<O�*���}�%>�A�>�y6�JM1��=<�>��F��ͧ��=)�9y�[���ұFk�?f�s�#�sP����Ӣ��gd띫r���n�l���� �yŊ��V ��y��[���N��1�e��?#ťk�5�3C��!��9���]:V�q=��ofDS3t���,8*^3���xG��IP0}@�4�L��kK�0a��c��%��!9t����c���{G��� n#�֯��|�����N�J��s51	��d3�w�c��?f)̀�P=*�)��0D5!o�A�����:~��?�GgÏ�(&-�� �}g��ymk�^}��r��(L��?��laI�g'��l�h�|�?>W��|���z�;�g������8�o�q,�~����0kѡ�q1%�
%�~� ��'q�V=:�Zt�k�S�(P�~(㺦aٺě�?G���Ù�)�T�F�{�φLK�݆�1���עC>"�S�v����8�����x-����h��Z�>'��	P	��CLB'����    T��j$��$H�ߗ`���K���� ���J�ЀD4��b��[�����>�#����V��듻D�<��j7�q��F�k	��K�v���G��V�?I.�7"����m����e� r�15將MO�v�h�ʩ��P�)Uw���]P��adƓ�րVحG�h�Ys������|Ƈ�k@��1�:�C+�*�
L��c�%��P�k@���1�ڐB��,�����S� �5��}�mɡU��`H�|rM��%�v`�WZ���������R`9; ���tP��$O�#�@9:hW�f6���v�w�s�v��?8Bh6�4��%yvo�[z�e�F�}8�齛+����� $aڍ�@�!"��j���<���I�~u[�$KD7�RJ�ݱ�Nf���F�-&�V���e��.?U�^�ɨ�^�uߕ�r��;N��<���4~���^t�b�l��ط�%�Ճ���#\��=|��d�O|�̪;�/��c\�ֵm��͂�J����	uM
Z^d�EWw�z��y>A=�Ѓ��:8U��z|��T�pH_xԓD�>;h�1Ц��/�i�G�%N9�Z`���W�78�\�'���U�}쩑cr�I��y�h�p��DDR|����$���T#�n�AZ��^ﷇ�;��gw�q#�ϩ;����|;C��jKX�֟/Z�|�/�|�`�LnN����}��ܧi���6�^����VC��JG�1��e1/&��F=N�q-��I^S�I�w��x�)N�y}+ZUk�Qx'�����!{���>�ȡ~F������:�:)_!�d���9o����8�=o�X4�Qo D�B���{-��pI���*~��� ǔF�T��27�-h��NO'ӭ�� ��p٨��H��f7��D�C�4O�N�{'�E��Sd�v���E�l@�����/�H�����B�]x]݂*3O��|�׮��)��[ ��ܣ��=}~i��Q�_��@�y��~�q����ݏ�C}I%E����������qT:��c��R����~{�?��7[�6��d����{0����Y���~����m@79�ܠ%x
�ϓ�v�'�j��^��¦��$꥕]�b�De�{R����a#�y�F��)B_�w���c�B��z1����Nv�-�$GL�0�KE���qb�}���WHGY��)��~���I/���ഔIk3������i&���m*!>\T_�ڋ���-q�ШV:H��c���#T��u>��ZE�,�h�x�׆xH!q�(L�ᐄW��|�C���5{BEY�}������g�3/�h1�m����TRl�9����s!M!���`e��?��Oiem��#��Ō�lO*�@����	p��b���8�a��Ѹ�`���4<�8mI[���yy�pe�bx2�� G3,Z1�K'm�߆�Z_��4@�����,�OT�f��V���	�1|���u\܅�_x��s��:b�u��+�|Y~�����*b���P�]��(�]`�N%����&�3�՞+�?Ϸ�h��Z=�����f���S��[�&��.R[y�9(x`@�š�8gh=zo6�l�z8���9&PJ�͡�[�u<y��G��ȩs8ԥQ�kK�d���si��eh"�\� �80W�-�y{�R�r�`���}��L�f���]�֚J�C��� �H�s��t�umZ�NP9w�f��H�����ǒT��*�%~rD��b�-ng��1ߧ�"�g����:3����Q��(&U����=m *��6�B8]�9*�#��d֘$XuI�i@G�aA�A���m!��+Z�	�~M�l�����i��{���U|B
o��1I�p5
[���%�~OMިk�|�w�ƹ��u�D��
e$�>c������b�`��W}P��}������׷��'�RI��Q����M��R����}<`{3�98� 8�����>���1� ����X�"OgP4��Q�oP<h�ѐ^����]o{�Ib/$��i��԰ç.�g7R�#*Cd�S����G4��LKaj��P������T8�%�؂�S0�`g�)�A��:#&h�i
m\�������r9_���:��B�� ��lk���P2=0n\W�:�"$u�:9�L����B��ͷE컄@�=�m�K�I'�*$�#3�i-m��i�N������C�PA�FM��i�_TY��1ayJ�Q�������*V�n���C[�`dvh&�.��o�*�c	h�#��Ƙ��cy��0=c�{�{�'�sߓU����YӿB��]��(=��s�h���o��s\�z���W�p1�\k����j�I�ovn#��P����7���8����긂�}U��2.�w�����{P tu@Nʎj-@6�� ��M\i)�C嫐T�NHU���ɇk�N`6�����4��6���|�YU#��]TR�����U��;�з�hު�����WfГ,Β8��[k��m'�z_|(|I��u{��dl�	��K�B�\1m�γ�v�����b?
�q���$p�̀�D�v�c�[���qre�HI؝���2�,��8iW�f@=۷Nc�z��ُ<�V]�ä��F9Go8��`d�����^�)|���;���E��|��F���of�����W�
ˡ�G�y��&�X�0\]�f8��(2���V��6�ͩ�_7t�A&�G�@ַ�OLO��!��d�Ly^8��@��Y���fE�_!�������y��7��t\W7��%�����M�(ه]F���ur���c��L�K�� G�w�� ��T]J�r�:��ؾe������%y��oR�Oԥ��J�]�Ӱǥwєsf���5g�=զ�Bb$��na*���e=���xLeb<Ub�Mԥ����,���osPs��$l����xV�:����v%���w������xgh�.Ӭ�{�{���/T{Vխ\�PS��̔��^��O���\�b�Y�`Ҟ��98[Y�h��ysO�r�/HFϹ<����.���OJe�W�Ρ����s����N���`��5��;; <�5�G�A߬s���|ꤐ���Ȗ0��K�~����x�L\���L<�ޡv�l�3[<e�9�~d�A5�Q��j�����!6���S
�����=sPؗ���)Ogp�+�jr-ĉ�+�@��[�L˅|U:$93\���c�ĞE������e��@�*����5�:p
����S�S%��^�eB�#0���o28Ko��6�ق�eeO��'x�yC�y���Pq'��b�uB�����Vc��o���<Dw�`�9Y�˲��L�2��ί����0#./b����`��So��RL%Ӈ��)!�@H�HN�E�ʁ ��D��qʰ&(i�8U�z!$�
'j�Ѓ�D�w��=&��ɚ��������l�����E�x�Qk��c�G|\��u�J$X.jP���&t� �ϔe�qmnκKH ��雎�ã�U�HZ���̵Mn���1��1�rȐ8g�j�e׶D��K
p>#��m~�p����Ȯm7�ݨ9�Q88��U(|6�#��qʒ���(�`�#�7/��%�0U϶�	x����<m�A�P.DR�|ys�j4+p"��s�2��k��Q�E�O�>0���@	�}��m�3`@�qx� Go�as�������;��j��k���/������ϣ˨G9%�h�������ѱ�\)`�<�p]	Rń�j�A�����/fs��<��n��o�x��ʶ�a^D�dģTN��6m˳�&�q:�Br�h��>�h��x�D��Nw�u`]�9\�n̗ϫߖ/���+K^�9��[�IJ��m3脃���d1�2�\���S\���|U�
�d�M0�}<�֣
�5���[-ތ��ou�ka�}��
<M�t�n�<�\<�f�����-��q���q���3��C���a�m���f�&e�嘧	�]D� 8h��ֻ���=����u�Ϳ,�0���G�E���    ��I2�M&�+w����?@��cA,��W����X�
�ro��&�0�	�m��WL�h�}�x�o�a\���WP��u��k��mg��nG��.4���*��x�� ���$!i��q����-	�!9��6^��H��]�n��fO�}}��2)xV���:~E�K��k��E�f2`�w���,��ξ�:V�Y�S�_E߲e�V*�Ed��g�0��:�E�]`����h�A�[ki��_,q]��[}��ߦ����|��/	���`a5�q�MԀ�lQ�]Ҋ8^mA�x����Y����et���2���#�,���^�=���R���&J�-K����_$��%��$���ѱ��X9�J���e����ռ���;�1�N��\u�x�
�TO��X*0�Y�Xd̰B���̅��ķz+�@�ρ�F����,���I6��:���9<uxl�8ͳ5�Y����pM��?*b6�{��r��	2���O� ��Z��@�rvw�M��>����v����S�G��LA�����b��޷@q{��5})� A/����M�3%$Cʡ�c�j��F��xVҔA��_���w��s���u -��9������?{5��oKH�(�x7?_Ɠ�ϊ��Ln����0F?�~��t%��������w������br�C�_4t��{�����2��8�eÂkůQky�x<�p�[д'�/z�=[�Alf��/F�",˰<b��"�Y���|�i��f��d-�Zw���@����!�)� |C{%��)�6K���Ɲ}u�n* Y|$ƤP�!��ͷ�B� O�.��j6���7L�,p��f]9�(|��9B�"�(�~��9�dO����`�7��}��9��.�؛1����	m��G����|7��.����%l ��k�D�R>��\vK�[�u�P����O���TA�z:V�װ�� Ѵ��-?0}\X��Y�?ؑ�Pb {"�p\� I�|p���qbg��i���o�r�����ÎH��vϩ�'��d�nMD٨�繶NGu��E3x:�����2����\�k׵�>!Þ}��b��^����O����a#��g�@���>�?��G������F�㛆��&C�J�o��q>��E��s_e ���E�a"���X�e��EaӉPwQ�L~������-�B�&�	��gKE�>�}d��c�����ꦅj�e�1.`�Z�m����@]t�+Q4��(	;L�lU�J�do�f��pN�O�$.S\R�)'�Q%�{!�>�y���2	�2	����:{�I(�Oѻ~��+�]@D�-_�|����6e|��R ꞌ���ʴui�z�*)̓'JJ���Y���&��o��+G�hl�l��V6�Ŏ���,D'I�ؒH��8�����⧩�8LSHθC����0�y��e	�a?��J��p�^4�/��v�l�����O�?i_��9�������^�*��R��2p[���*&�^f��OH��:+���/�^����A�* ��C���@�O���N�\���(��I1-]3�(����<�N�H�5:��m�5���=�sv~��P����������8T��S�܆tFQ�������\vP�S�6:I>��4����w�#ӫ�(X�^���j��3��#�j&�G
���'��{#�q�8Q{��>	{TD�C�~8�����v ����Pf�����5�t�Μ�n��fh߬p!�}>���(̈iV1wL����M��w��P|b>1�CEm*6g*MQ�������r��ڭs-�;���׫7쒠T�p:]��l����A�ݑƄ?��A���6����d�d%-P�Be��ݔNK6+��A���:a�&>�E�9������^�B��9l��7N�b���T����ƷZf������
��lӴ�2ߥ�(�����6�����)t�D�8釽�@z����5�{�P�U�	��c��*}�����Qz0����6s��f�:
�J�s�"��V�������q�_�����%ó,������G�����G=�a�Z�Tf�TL����҃�}�Z$w�j͔"�A;�S�x�����3g�>F������b(4��0a2���{Ğ��w�0�'�T���7�jO����7̹�\E�-2�+���+�n�4�!��8��!"�&��H3��_�0e7u�1y��<����e�fUM]��G���+פ�p��d�ﰭ���̫����R�,�G�`8Ʀ�x(^R�N~K�%ôL�Xk��<:���G��!/�C��H�zW�h���a�0�n�m̫ñ���x��n`W>�A6>ek�A|3���"�����H�߂����`t�,��P�_�)j�e�5�S����'��i�^��{8�9H7���t�{�J�[�W��I�'����C���apU��!x�D/:]@�)&�n���r���bp-"pK�\�&aL:N^��klI��Kh�Uh�%I�T|e>%x�b,�/]���J��~C���l���G��79��?@��ۨZ}��NK�A���7�q#�������j�U���1}��8_n���I���w�8�����v�)%�!U`�́�=DQ��#�{���p�x��q0>��E0�&����� S�ϣ��M���$���y�ё�Ih���ٷ�P�C���1�-z$�DP�i��3��!h� �
u*l~[Ϸ�f���C�؅��C����`��SQz�[�� �o{�oK�f�y��X >�d#��,��l�W(��@������;>�{�o�@Aq�t�,V�\[�?�73-:�1�.��`&|.����0�s��n;�}>���b>��i���]��ھ�)FQ(#���)$�UT��0�դu�I8����R�L{���eФ���g	8:p�V����xCZ��x!�Y��=[�5d��@��آ��	][��(^NO*��	L�x���j���#]�)����|b�x��� Áh�n�����K2�%1��*��N+�Z������j��,Dv�e`�����*s���8�I�=k,���g�&����.��%9�\]�3��|�Q�߶����ouO<��(썻-�k
Vo7϶3P����Ʋ�`����d<��4*�J��O�3g���� �
$^ �ǷF7a�t��48	?-�h�o��3r��a�솃�t�NY�����$1I�tf����&Qj�A!a�Smp���kŶn�8�m�z��޻�Xs��&�F�Ґ�t,C��|��>2n (�"C��S����~����,@ܺ2m��i���J�;�I�|�S��Y-����i8��_�%l�Ǘw�:2���,����\Kw,ˤ%�R�X����@F��2{��X!�s4¾�Е�4����U0��_�ݽ3�a<��Z�6�"�"d���x}��P���X<�"��Q�"��C��"m�-ҊV����J��h��$�-K�hpix'kI��bHb�XF��#�jz�vL�\]3l���)��ふ�-�u������ճ{x��5��Ϋ�/�����,[.��緗��*���������(NSa�5'i<��01F�2_0%��v
�'�/��L]�����}�ξւ��(�!�`D�3�%���)��~r���2!M1���( ��8��%��,�)ܝ"��;��{eD�	���ϋQ}���*p\�a��޽��9��i������-V/+m��6�;�ko���a�L��#���cqpl����i�g�j�l3W�q�";�B��>�5P���e["@���ʣ�mF�:����-e�uϿ^����,�N�p pY��1��{z�/kh�n�yY�MW����ԽYs�ʲ&���+��w��C-�C�'��DJ�L���EY�$R&)��5(�5�>�zw��-��_V�*+++�l�P�OR��_EUk����:j5�4�N�Wj�P����w�ȑ y]3�r�NꅄϿޟo%�gj}d��/*s��|�gP��'�앭eCկ���v)�
����*��    ~y�B�3-:C�d�|h����ܷ=o��bd�1|@�ּ�����H�@
�z��M�\F'..:���d��~������b�ϣ�d�|1��d6���f�}[��>�0X��a��yz��	W��I�jL��>=?G�S'�
��c� ���q㈸1�Q�MS񄚃����0�\�)�J�n�ǀ�À��,.�X�J��Й��Uh^T*�y���T"�JdŨ�v̐7�H�L��O�=�T�s�& 7��oJ�j��S�t���X^�6<3Mi���DJ��W�q��A�i^��(�JB&����V�+��P��@��)�,�4K��l���M��B,��@�f@Ba�#�@$���P.��[!���u���Һ҃
�BB�0tL/�-Ǌ|��-�ح-�Bp���ٔx��-��gc܋���LǶ�~hj�Ghq
���n�gF����%p��]�m��P0�o��^?^p�>2�9y=D��<��\��r�5��C&�M��l; nZ�}p��iz��<���hz1����# ���R+v���Y+hW��
�(̈�;.N�u8-8[[^�O�K���G��K�䜏L#.|�ǀ�c����#ը<�3�c�Q�A��Ee�� ���_����O�"U��d\7���O���F��Jdj����6�!,�j�9��2c	�99�	G��Sw��p��j8"�X��6#vwlL����� z��1$�|���ف��x~w����MK�3�D���ȩ�5�n1J��EB��jeХb�
\$;��+&Jn+P��$ڮt�T$+��+%�o+P�|D�j�g�#�A9|��*��of�Z��Ȃr��Gd"y��n�~�L�c�&tnu�Nq��,�Sdn6�����*��Y�i� ��%��+u��"�*��n�����?�9.oD �"�b����~�2+�,w(o������X���cSP_�$�+��	e���2<�,��G���2z��=�\J>6z̪=�v�P���20.G�����<�;lj{G����~���Mn>n�Ë~/#3M/4p��"�C�oR��0�-�N�P�`9:Ǫ:�Y\~��N�Ȍ�B���t\Gچ��ςej��sw�O.� 7�=��YG�5���21M��ܾ^W��*�4U��2�8\=e�ǵ^"��r4�$5&h�����uA]5(���	�پ���uQ=5�d9�I�HP�>��5ؾ>߮�8y��;]V|	+4}�<�X������:�:�a��e�����)���cY�;��k)_���3��nb5�#�3Ļ����m��m�f��=�o_����:��ax��o$�F�
t�e��M,E��(AqyWc2���� �ă8�IW�8ɉh@z
H8�W�B��f���Q�W�}�BY���7P��zؿER����{��*�f()��e`3䦶~рug�D�%<xn�T�b�H���q52d�-=���S{�j�L4�,�է1��T���L	�>Zt���&l4�=���T-�B���ӌ��<{�+�d�*�G`5�:=rB���}W�5��I�����*��9��U␢��a���V.$��� �*T�,gA���kb�*�U��oM`�,�g�e%�J��ݼUH5�7۳��g�}�=������z���ʥ�g��ږ�!�p�I���8>���
U%�r�Fb�7�ۘP%�
@�W�vN��i*m�T.#vAir���i�D�S��D�k!���U���ͫ���>{D�Aщ�8��2� ��x��w��T���]O�k�������U�ʶ[x@�"0����hw�H���eZ���5ws��&HRr�^PUh�
XC (�5ےh�͝
���~Fu�P9��bC�{��������`�<_э��Z��H��*�\9/8y�8�8�)�X�U�Ml��p{|=d��c�S��dW& �Ao4�*b��	1]�U<�!�gw�~*��=�����noY^�B�� .��dl�:5��ǳ�dL;%��'
)���>l25}S�HJ1��󦨖�d0�%vS<[�K^��2-���7��N���eD:��p�%\A��q]	���'���t,��2��x6�U?�C��'c��#�e�ΝbбCbu�3�C�ѡ�}z�6*mt��btZ�C>��ʑF#����q>\�B~|�ez!��'�y���[�t�$ܯ	���e��a���O�x;<���W3��[$�@�����!rɻ���K"���A�wL�����D�i�f�v7v�6w,�!{�d�.�p�MG}8�a���'��YI�sr���gK��+�X]Q�	8���-�L��e<��/jP�|%�el�L�c���l<'�+���cp1������'��9���I@�0M�`�	�1���{��?��j�<�i�����1`4��ŝ1��hO�Z����y�e<k�ɞ���nc�_��@?px	輸.T��P��S��\G�`{S��	�w������%�e�x���P�i��kG&���;
Z$��zn\܌��U,w��bxu�WL��m�i�
�#i��0x��oч$d�P�g�\PRm�1B�(��\sW�p� Ğ����\J�ȅ��e|cH� ʶ	�pc�a�,�0A�11N��_�c�Z��XXL��L�B\QS85���vx<�5��#⑊_��9����X�c��z�]"���s�L�3�C�Ձ�1�3�\�����+�|:����(��@M*`H��F��j[
j�|}��3�N'$��˯h�H3�LA�c���5�����v<~���m���Q�P��#�S�D�y��Q!K&'�Nq���e�9�OK7�_��9�-��Q];��.�iEtϩ�š\��Q9�����5>T5��j  � ���Kw��rd�U� �$�BM-ĕ�-�3N�����[#G����TH^#�Z$�I�/��"S�4�)ُ���"2Y��T�/���8�P��+Z���3*����<mVeVSJq�n�'������̕�lb�;���O?�1�'��M��S8;�����8����E�7D���>��� �J��>Fx��O*�����E�jM�p{��)Ƴx+�����v�� � |,����}�+��3��������C�)��?�i�V�x��C� s9nHП�Ra�T˰G��EYS��3���\�l*i�>y�T��!���D�%�;�BǴ-,*P �XqE��juն�T8dۯ����xF�6ٓq�{��a1ŝ-�=�ۃ�=�鉀���{������r8I�7O��x��#"�&�E2H�>���6��b)l�d�k�lV��f3��ɾ��l�JZ��3{��T�L�����$V����H._i�j$�
B�� �����#@�t�ؔzP��i�9w=�F�p���oTg�c.��q�;��h�����~�u[�}�zPݑ��_w%����=�y�U ��������?-T�2��/��[�ӷ�r�j�#��>l��~c�����\�p���9d�t{A �hH Cx~�A٦�F���P� ���dE`'4�T��`���\�옅=r�����}�vl�mf�|S���:Ӈ��>�Bfs`C!����k���įc#�bĽ���o�� �4���E�T\�
�k��a����<�����;���S�O��n[*D'z>̀�GH�	��n���R���� +�ٱe�$��bH��ձm	��4rԅ\ 5�D!���Zq�]�2MӱB��(S�XɈ����k~���K2^�s.^���zQ�yҋ��(l*mi��UqR��p�͋3��	Ԕ��M��5D�m��`�x�Χӱ"h�{.� ��P���AL�ؘ��s������x�u�K�X%�}$֩t��:����f��BA���7��
gd\�L|��9��I�d_�����氆K�G7 ��\rxm�d��v�7l���f�͠��-�-���g��-9�.[��&m�����;n�U�@�:^-)w����e��	WUܬW��do#Q7���
���[���m�㺎ۉ2    ��D�� ��q|z��.!�I'���a矠��lA8*|y�Pr�*����jd�y9t��RD�.�5����	�Å��O�Du�������W^;#߉O���듎Y��r��̰6�%�_���z��O3*�㣅����C1���ɩ�Ԣ�h��'g�S�z�:�������.wp��f��<2��	�wF��a��mF	jG�@� ��u�Y��mR����j�h��L�Dg,B��͒�*��%H�A��*��!�j�ISoWэhI�>�\��y��\kL@;"koُ�d�o�0ѳR��3aw ���E���j#�m��KJ)��t��"�d�/��p�,yt˩ᄻ��$}�E.A�ErL�nb���^��!��#���X��BM��TXҍ<.�$C��BNr�G/+An��f���`zz�x�����f  _�z�c�Z4�"�v:�yW"��_����G�F�#��@�i�T6P�[�~!�,@�'J��
D���Q���H��$^����f�sgx��و^!*+Q�	�aAL�B+�RӾ�(�OQ�V�CW/��t�|�����s�5���|j�����t�,FYJ�r�%Tid�=�˨�2	�ZS�1O`�<m�T}�膹R"`6�I�Z���z<o�>�O���!	F�un4,Vr�j.�,Лi�r���ch���0��v���b��>��P)���qlL�ŧ���@eӆ1��C	ϐ�5�g/AE��Ӧ�ݺ��R���w��ˮ)�W*%��v|��9�/W�OMI�凇ָ��j�!���*��������@(��mH�ܯө [4�l!�J}�K_0��q��&��y��3�{h
����'��5����nykI��jK�tqr�'���.ۂԐ.������]����'ǂڍ+ ����6��k*�I�0�G�0'�ԙ�(K	GƮ�ak�����\"qq֦v"7b:!^�d�h:@��Tuϳ�9���op��yW�?�G�+R��ml��w�M�"7�p�*J�x��֍�8%`�b�鎋V��pX�M��p}�K�� U�K��8�A*��za��:��op��b�Ǉ5<>�d�wЙ��_�P�KwO�h�$
�>Cń�sH>�B��P~i�u�&�� x��SN>��SS _~��"/?G5�}�;�@�0���o
Ѓ�����	��5�BH`�X4��ڐ'�%f�vV��B�)�� ��nJ�&[�<�=I�����@R�����q�%Pv� 7���D��{Z������1���>�5ړ>�N��A�H��to�v.�g/�F���g��1�e��%���!����S�*�"����8��-r��#�ڠt^ŗRz	z8��2`��}k��q��c7�'�6(X^$��:r.�{��}���M�;pX�4<�G��i�P� �h�'m���t�*����g*�f�`r��e�Z��h��݂��lAF�9u/7\�o*���ؾ
>���"�i�{-���>��,\�?޵�̮Y���Ԍ~��ܼC�D�CF�k"[0�C6ðTj$A͊��Vi�#2+�d3����ئUޱ5Cp+�*T���jj��BU�[�z�W>R����ȴ�j��o�p�Zp�����9f�-;Jn�Z�sv@��ˎ���^�N[ �x�x����vET%I����7O4Q-E*�p��P�J)QD�q������닱*-
�tX� cFi�����d4�Bmjqc���c��a:WYir�Y�i�\A)���_��bj,��u2J�4�_�9�Mg��y�:�[U�ɍ6�lPϺ�LQS�7gK��n���q~���E�C���㋅p�C�� �iE;0�}uͻ-A�/�E�6#��j�7z�I������i�ж�Wk�e� ����G��<#X����}��h�p��a�)�>�/<swm�Y�9K|�r��n�p��0�6mm�&��Iſ�ŭi��8d���'�L��/:V�`�f�7WH��b	Hk��P"��!#P�����>�:��%u,��+v�3v���m��h�f��=?�����
��	��p$�zjt�/�i�G�I��ҡ1;7P��	�8T:�s@4�%rȢ��ɣ�U���%��_�"O�&���
�2�Kѹ�>ţ3���>*/;���<����#��~F7b�XPF8N��I~�A�&^��r�#r��x\��p,(q�\��W�'�d��uՁ!^��3ΐ�/�h�U������F��PqX�Q��e�:�#��PL��8�A��L"�6�����>���1��q��'�?�i��o��\�)�_�wc����!�֢_�rJۇa����;�Ϲ���c���ܸAF�Ğ�C�j��v�Z����;ȑ�=s�39�xⶸ���[�g�r�ힶ�}HzS��*r��pw40�H����M�^��+8L�%W�8���wm+
�sY��K���uYò�!9Mi���p���X6(ڳ��C��
"����Ho�_���r�bi�Dl���9`ZHF�%^�,=Cd�fڔY>Dd:$X�Ͽ0������׫��6a�p{�c��",����DX�1�0m�=`B>�8��g}������Zyֶ�`z���k��舒���)d�� �!.g�����j��r+��d��Yޙ�a/1K
�cO�	�DC�7�ҋx���'[�9 l(#O\(�C�$��GDs�\~�튀h)u�t�u#�Q�q���Ս�$�e��m^��ȊO���Y<��qݺ_�K�B���@	�;�?f���n�l����~l�^�>�_#��v���]�g?�??�qy��"kb�2�S��wM��F([���ߡf��~��aV(1Xn%{^ȿ��X<>�%�{vAAG�6��y�Ce^!b��Z-B�Q$Ļ��� ����q}G�8�TI�����|>L&�g�[��)}�� 9n0�����%xi�t�7l�c�
S����o���3?4_'cZ���$8!�}G�΋�?h�4�i=ހ���?.�T$�O��,�����qS@�~X̗HE_���r�Ǫ��DY)����Ru�i&�|u5#�|w����a�{�}}G A��rp�q�M)�{�*��\>	-��`��_YU�H�fw}�Dr=��d~�������|����܃��n���y�6��. ��l7ɝ=y&����z�����ˎ���P\�����ʽ�7��y:�o[fT���ICm0��8�~�Wi�H�_'�iFVd׏���	D�:�i3B� ��Ę���Ġ��c`S����q��/�?�����,�7©~�F���nã
��\�x��Y�t�?J]�XTβw���������~�N�[�&�͎���/� n����	2)�]h|���Q����%;>t�BZ�]'�P+t�q@����ba^y�T���Ö�$��'m4��%q%�d��l���$�B��]���7��[��i#��	y٨��a��,�F � ��6:�����$�Z�~�L�]Ɲ�|-��e65�z��p�-����j;��A3��Sq<P��`4���UW�������M�K2`}NkޤZ~�����z�u�r_�Y他"����j���0�&�Ҥõ&�6SC�Y܎XJH�k�U[i� � �J�*tp��P��m�&��ڳ|���H�����S���P�Q�j@yU�0T'�ӆ0~&
�;K9�P&�gYG�Hô+-4 xAfwǎe�~�<�e��?`��2�ƣ�zģ�ٓE�L������S��&~�\ծ`DK��j���=\'��f�"����Q�ܪj�1���A�50Yn����F,؊L�%��?M�&��ZyFxe�@P���E�"����0{Yˈؕۄ�<�jWq�?OR�B�b�`#��h��p���ʏFsoQP��R%�PP⋋�8{+�o&{kg�ǹ�R�vwR���c:(9��]�z�SR�BQ+�����)�I�I���ެg$ո��K,1�������SRJ# �G~/��N�+ K��3�93-�qZz� �    ë��������2By��?�!n)q�A��ئ(�"p<�CW.�$-��"������R����j u�<�j�#g��'Tˉ�{-�C��)!�OT�шSDթP�\O����:_�ʰ����=u��EJXh!�D��eg�E�J��ɭ$��E/����x$��$�6օ��>YX�P�ń�C9�(?Y��H~�"���O��9��%��������7��?,��K~H@�(�#����<Y��c,q����vP8h�>D���`�q�`O��ܻT��W��-���|�3T�ߑds���-%���]#����E{Ww{ƴh��B�`�4Ht'�����GjW��5�j��AT@���J|O	�0�x�
�Y*WVL.2�J����M�*�s%��L�V1��G�e6�S?���#~��D�%Gf8�Z
^��c���Ԁ$�+.�B4Ҕ�,ST�O����rFB��'�6����n�9�Qҋ�x}Ay�����!�/�j��;� k�=�]�.ċ�_�.�����(�@\�q�	�_��~��$�3{������[����A|�	�byFt����9!I�Hhw�7H�����Ge��R�e�`	c����QD��I)�Ȑ�?��|�
��o�)q��3��͓�a�{��3hȅ_�D� O�*�P���p��h(�-n����?	₊:�q���	>-N����bG~R���$A�sL�f�\ ���z�b��x��2��PJO�Jn�ƨ�5�G�^�q
C|
3����u@�;g/��q|W+E�$*�����zg�Si���G�ëu��ds>.��(�('��BFd��c5i�ݪ������b�$#N��ru�86ӵqڃ(��g��o��#d�ۉ2�����<Q���Ko0��@+A�	�3.''�gy=����*0�!6�����i�"H����陨?����3!��x�ƽ�P���<� 
�Q�u��zi��Ju^Ո��ֈ:/�-�O@�!BD$c�Ric�==e��_�,���ƽ�q�,д#N�������O����&�A�Yl�%I�e�^X�c-/<����LT���٪���%��@�e
�ӝoF�͌��`8![�<�&�=�s������yzw"�C�Pc��g�:���q�B6̚U�kT(=��C�rR�M_o�2�v��ki��ZD���Ϗ_��+ K��vձ�̠��!�B��f`E����r>��P5����u:�q4_��*M2��)R;��PB)��6��dy�<����*j&��B�������)��I�M���i�>a#���)χ���cx\[�F�i3�H���H������{��h��t^�WR���_ߟ���KyYB�$�p�KK� (��������J�x3�N�p8ÁHǢ,�.	d �T�m`�F<�.��iRRe�]��~҆pD	�8EBBS$4"�/��0�>k9 �%L>�R�$��*y�����q����bZ6�%n��y�0Jm��!�6�ԕڀ�J����F���&��f�%I��Wr� �iP�����lБ*;vZ(���QX��!\��؈Up�`�@8$Y(^��5�$�9�s~����U�<�t���Od~d;�i��ۦ���	Y9R�P%\t�X��7�D��v�p4�7����e��������j��6��J+��Z2�w�Rt��O��0 � 
(L�h��I|A�������c(�����e�F�3Qn����scF��O��N��6	K����RF��n�
�(�?yc�* =z���a9�PA)?�ϗ�, ��)�:g����Z�q�]~�y����TD�
KGr
���Ń���:�m��p#R�M���:,Rn�\�� �(�*�~y/�oo
*x�f�8qo㻇�@Hɣ��(q	�_W�fU����~�D��l�S�=1F�/�� �._e{)r<�;���⡜��)w��Ȣ��
)F��HbU��`T41]��9l��_��
 ����б��Ljy;=�]jX#{�ܰF�����t��Mnf��I���//1���o2���r�f&��ӣeC'�E�<��n{�_+^�UL,d�5���p"�
U�x��TF{LR���z�1�*��4�D\���im:�=��Ge��������v�uQ����X�t��C�.�����D�Cz=�?���,@���/��]�!�3d{���c�yn�6!�u�	Bb��\LifI$���ہ��az�2�B�K_L�(W���>���@쯧�	�
��c��N���7��}�h�'E�(����<^�iC���	�I3Γ�4Һ�@�8�y|�$�2���Ⱀ�=�f��Cn��x��Ua��oco�ov� 1��(m;
�Ŷ>Utǎ���܀�H��p:�,r��ڇ�L&�1H��b�C�ۉ̥U��q8�Z%���דZ~Un��ҥ�y��?u��
	O.�ӫ� ��#��\���K�H� �"��H�䒦�1����X|�!�bQ#�����+�E@�γǯ_�I<�Hr�����?֧Q�v�$�����)�-󎘁����5�t�����Oj���x�����v|�iv��+zX�_h��G�e�!&<�.���N���:YP��xHm����beD�=@H��V��F��!�'�zB���� x�������b9�Ĳx�8���B]�#?p�]mr?*ܧ�=t���t��l�G�M�$),Ó���W�X���^���Yt����O�w</��(6���p�,�=���7AH<Px�Sҡ���5	�
�yB84�Brh�T�����tʘr=��?�O�����ê	�,�ȭ?����ַi5$M�6�
��nb��U����͋��d½��ށ�Y�����zn~��ϖwM <�;���_���	�<}���~�M��Va�x���d6�B�z�iB��"?�ߜv"s��Z�I3�4�Ĩ��?6%�Rو~D&e?kF�bHsKR�1�%#�%�i�Y>�dZ�딄9���mʭ,-����=���$t[�ey�W�d{th:p���yy�ϣ�В�S?jF�Ő�)�	+��S@���8�/���5b�y�9����ѯ/����l��d�����iɌ�����C§�cB���G�� �;���)m),+���GF�b4M�nܽA/�v�2B�a�*ۮ�OO�;�zX]�m��>O�OI��Z+�7L��&��:�G1,���b|�N�� Xz%!X�5����Sw8�U������6D��F�o�j$������-9�-�C���U��E��%q��?���+>u!Jǉʭxٿ��U?i�ѻ�w{0Y��d{\�_P$&x{؁l'��!��5
�|_���g�o���й���1����?��F��� �
l�}|�&I�����ym�m�F�ݮ��>ި@�@ުI�b~�l���J�MN����2��p>��_�جߔP�]��_���z�` "<�����ߤ�O.5����n5ibz��>���f�祧-�W�>12�J��Z
9m���!�9L��u||�b�J�)/��<s�5Q�/�5� �(�����������Y�-��E�S�sb?�-$��9�#�e~�)��b#+�t��g(>4���0O�(R�X���6�=?6�,�}�K�2�x,A�.��b9��/�(_Wڛ� ns4�P���R_'!�d���t���m��Lvtf�em&.^���v�����u�q<�^�+K��i���J"0�I�8��ЄfC����)ߙ�!�s��t��iV��A�6f�c�@CK|��"Qʘd�>�3]rp%�f��1�<7B�F��,UGap��|�RR���HI.�HyԨ(.~F����"1_i�AUԬ�b��r@@2`���6��uC7��В2�gK�U��;�PF&������<��'ë�/���$j'��q�
�_�`��E�jd?�HZƾq6]-��226q�X�W��
�Yq߇���TQGS<�H�(ǿ�iD?���zؙ���$�|z*K�d��MKdⓉ�o�Lg���±MJ���ŝ�|����E��<D��y�O�+��& ����P+    9+���霿T7OO���n�Q�o��L���Nɐ��>Ȗ0M{� ��I�����z��Ľc���	��V��f���@6G�nzbpq����=�K��07X&���Xo�{\��d��u��=D����@�=E�:-���!wPm�h��A��Qo��R��gR���I!.mP?�P-�2��~���番'�1<��c�S@�6�m�f�:��~�����UC�<�O������X6�$�H���r���G�ۍ?	��,r�\�Sp��:� 4�4�MF�{�l���#��k%.<�����b:n6f��GzD
��3���b<4��[�3��f��^�v^��#<� ��f�b���#؊c�_fRl@��t�M'rI�����)�%N��=\,��4��������@^A�=�hqSTI��<`�x��\��q��_�*�?X��dɡ�pQO�t�E�Lɉ�e�A)P�\d�&�#`��pM�T!�C�n�C�a��eG��Ȍ�8JفP����C��	��+�9���"(��H��8�D���Bt�hW�s�3x�r�sے��@������
�(�["�q��-������j��f�Z�#��=޼Z-����d������%^��U��ߎ��[;�(V��j�`p��q���/h��i�����SJ���lŦq�����:oI���m�cd���f{x"Jhs@�����>>��ݶp^�������k�Z�_��X+a�J���X���v�Y-y	��u`�y����&D�i����o8�]��s�GsdѼ���SY���~�������n2 �V�"1���X��O�BF܌���*�p@ܵ.&��-�g:�k{dCN���t�G	`��bέ_'���|��FX-(�0� ��d1�T� o����L=z=(��}�{8@ m��;A0��c�8�Kf��ѽ���g4�����g�S�� ��m�Q,��U����p��YuQqܬ�GlT�lW �3��*���B�Nw?7��mvנ'���/�cQ���_f�ӢL��p)	x">X8�����D�Y�N���lH�f��k%�-qy@װ����(�B7l �0 ��(�#?jȼ[��@�|�D�����v��cPC�J�*��ZXx���"����>�G'2�rH�n��O�w$�x����2@�G4�O<�/��uG�:A��S!�	l@9�[2�4Ŕm'�!�f���t�A��!ѣOLP������8�Nنɷ��a���E�l/ h����4ራ�p�\$|�I5��;���bf��Ըy��@i	��@$�'�U �O��"mU��؀�"u�2eӲK��J�̩���:�>��N�y��<㢩�2[��>O򂕆c�9r#Ƣ��j��as��r�����n�>�c�q�^d��d�$��b�� {�R$��w9]?�g&��'7�A�+�"[��o��k����DG��·�'cm�6$s�j,)�םW
p�䡑�'J�����9U�F0���{;�J���.4qm<�XD�o�u���qsy!"W�m�� ag��8C�ɣȡ��bҽt��_>�H�%e���7�/�n�]R8pFH�$p$����}'��6�t��҉�2J^Eo?o�|������<�����7�U�G̫k���{�6HE�̭����4�<�<�s�z�IbJ�k/0�%�g_$�ܼL%��٘W|8䢜ïb^������)F>-\G����??�Z��������M_�Lyf����<C��c*�W�4D�{:	�N䄡_f��P��Q&Fy��͞�8Ĝ�X=o_`\.'�P�dD6p������������i6���<��Q��G_D¯�PeO��NL�l�>�E����&����9��?��Q>D�C5Eq��ql�2���A�3+s1��'C��\'����^'4.��f���W|W��Q1��}a��y+���)X�B�`�ӊ�ȦZ���)�Y�Y�mA�&��!�aW"�ķ�����]ғ���Լ�n�����`���cL7�(eGZa��~R�����']�v�~���M�����:�\�&�6u�
r ��"�l�=zdX��Æ���S�B7�^�����O�������/a
�PT0�Xat�"/Z};o�n�|��H��r��ɶؑ� ��m*=�<;
B׉<6��6�H�E���[x`i�&[����vK�+}�Vn�z\Q�^�x\�ӷk�C�3����m��j4�ԫY裺�#����!]��	,P�B�V�%gģ��_�?CU���r���=Ȟ���a�]�r��ॏ챸|6I~�$.�m�#��LpF�� ���-����ݺ�VL�ե��Ww��y�tv�ޠj<��
<�x�CC:u1��4el��-E���.��j2�ΧF_��9N�8�L�9c1���a�(iKu����� �=��(s�͡��Qh����n������z2�OP�y��-@s�S���+�;M���µ��'���Y��#�X�\Y�DA�t	���"���2م�ڴ��Y&D��Gm�@�^�����Ӿ�4jR�5Q�4ً-�N#�r����}�O�H�j8(JǮ ֯��Gk�B*{��I| �UO�\���#�/�2=�� �d�Di��D~V�kᄚfE*<��'A�|�p�!&۵�Rƛ^?�������)�N��F^�@
Ʌ��h����EX؁��5�>��g��Yn���G3|��xE�c|+���d6��+l��}<LS�k��Pʌ�F|X�݌���6�E��׵U���VJA9}Ez��+���a1�H,`���]�6�H$b����p��1��U.�	�{��5�>l�e ��{�-����j���쟋���[�3rۥ�Wd��UDfykn���N2��np	��v��_�2uK�W@���pG�[*�,E���z�}��(�Xe{�9�L'�1��*U�F�_�h�o&�qJ�)��D������s���׼���	�Ѷm�����Xɿۀ0�a9C�nD���>?<�>�b��'���]����R2I>a�.I����0/���i�Y�>%���t	�)��B@�Ƚv�2c��Ȯ������]0�rRU<�y��e� n~�D����\'�YZ��������^��7g�k�Z��;���[��9�{
��n�bs?\s.
��v$�g�����ͦ�P��T�>{��h��n�]�^��?��q��u��i���:uǒ�"��q���6�ۗ��94ଆv��Z�4H�W����C��X�6Q�iu#~8dJiR��o�@Y�i/�
8Q�p�7 i�P$v��P�x�cy�
	tO�s�@��E<����F����\5|���vЅ�H^�F�n�*��^j�E�k'�2#��Yv��CM��1��@�0��碑�ȓPt�d�Rj���N!���Q��1d����a��ITT�>�5�~�M���;q��40(���nf��Ć%������M]�!CT���J%qŧ���9D#E٦Iɮ��1ǲ$�� i��A|��E""�]�!j$.%s~~�]�����]'[]�v>�6wc�;�.��;i���;.m�j�.��I����?�W[7�_�߂	��Y���ӵ���b�8���Q�4ZC$� ���/{��>�\�g_tY Bb��8�Y�nn�z�VHS�b�#%��"�1����t���B� jh#I�H�x��p�Ho��l{�V�D�jL�UZpq��~<Y�7�1F�A~ ���h
HS�j�s��T-3�� 8�d�F�P��kym0�K�S��3�ϡp�����n�M9(m!d)5�5�}\Q`�pBB�H�QH@����k���������(��O�������<�;��xq�W�Rre�k<\��`��e�q�j�b^Nڊ��	� ����K�������zr���J��r���E�k�8���r�6�֔�������a����~��x��pVu�
��њ�y(4h�W+���Vܣ��&���[}��~x��p��cx���:oY�W�"NA�m�┾��?yP��z�b�3    �i�]��#}�~�����B_�H�ZK���@|�U[�uL@ߡ��7HF�('�r�K �� 'q9�l�A3/I�ŤZ����NG�k��vp"���L�(`�#����ܭ83,�p���\}����F�`t�sB�+�J� ��/j݉��D��[v��I��SR�z�P��TB߭j|֛���S<D��`�쎆��N�a:�����7��?��.�:6�Ȏ2�A����<�X���=��w��9vO�x�~%��k �zx�Ox?�@�w}�z��Y���^�[%��9`_h>8"�Y��hЉ�ֻq<��B�t���ٍ�A"��ؖ��?�V��8��;���Mf-����vS�;�8 ��\z��[�ד?`�U��}B�T]���b��	��Bq\r�ħA�,MQ;��/�(��Գ�P�mȮ_\���q�sٴ8��9�����n]�j���Cf�#��_z�Ò4��3�b�QK����(�IN�v��!~��&�d��VF�}K�5/�K����q�96�%��%�7��˹�(jh[��m�i�ڠ�7�y|�d�'���9E�-P����w��\m�^�����&8���\�ҼI
��>�i�R�O�~P���.����Q��&�8$���)p���=k�
Q�Mˆ��ӀZ!��D�m@��a]t"J!=��iay߮G}��eI��rҰA��Z�8�u��u*i�Db��g�G�x,���@Q��y��Ϩ��d:��WR�����e o�+T����`�?��������H����o���"�1>7b�p�+�ų.���*�?�h���҈F��g��&������ Qov�`�7�Oy���^��
�yk}d�Ɗ�/� f��+6i,0c�Q.U;b�����e�!��kG,����7�qrۀnDSn#m|����P�K�*��BU?mĨ]UX5ɴeTL]G8�o����W�L���Q�?xE"7��~}�9������Gw����PҚP&���O�O&�D�X���8}��ѠQ��7��M��
|� ܖ(l�Lh�J�W��ϤU ��L^Ѷ�![0?�����@��A4�^M��M�Z�Z������~lD��=p�]+�gm��5Y���n�v6$�x�̍���� ���n�d���<A!��5y�F8X^ )oW׉E��mā�:R�t�*��P�XC�<��`��i~Yr��N�ŰGŒ��a�h��^r�~W �L��<g��hK�Ǹ���Ę��P}�3R�3�����a�t����J����E��$�͓�!���:2'4� W��m�=@pK�K��z�"������ ��{Ϟ;Xl��NC|�H�·��o�i:�'�E�p(U�J��=l}BA�A��(� �-G�y�k���|8�
Մ��]���:�<��n�q�-�Ǒ���K��"��J*&��3��"	����_pT���i�a�o�C�q��3GD�'WD|g+n��]?��v�"�6��@�
��2s/���6�,���ڡXU���:Ը��X�1��Z��|T��PCE>J-Q����Q|G����N���(�j���({��Uo�~?�ίL0���S%�-�ܳ
��%U�r?���qɡ���%�s�7���yK��wm��e�Z
��<�0T0h��_�z�.zF'����3 � Y�FË!�J7��e/U�EN`��aoq�`n�,c�#;\ВjH ���3aH#[a��`� P:���vP����/���,ۯ���	�w��V��`0h	q⇝�ũ�4�q"�'��8M�Ȗ+���$/��u3<e�����Ιe�y�/��Yv��aqa7�f��&�N��V�=�C/��:=z�^�^;z.�^�~;z�^XA+zj$��d��G��4��w{�i���h� ��Ǿ.xb��9B*�&���4M:��l�0�Q-l���l��v�ɞ@z$n��� '���y����܅��-�p�B!xP%>���`:�$�$�q. y|��7�w�D�QCB9�,��c�r@:�ir�����i���ԓ{9�����w��c���iW��
����H�� ��%�X�?\ s��aL��Ȃ���E���d�R�q�Ğy	q`v��k)0�ab��}a�|\&9}�������ƤwwkM����BW�M:�"�=�TBꀋ^ǎ��Ʊ����k���=�oMj��������Ɠ~�� 2~�=MĽ�rC'y,�E������eOWpQ�K8�N�/��NL2`I½6I��j�FN��V�L��j9�\�C�Q�L�}�O@��bO�<�ⴇ\K��Ig�<�@;>���l�[�rX��|:V�j��!q���=ԧ��
��1�c|�����y�߅�&0-ӊǶ{�ۧ �?�2r���$O5�G/� X6HS�`-���R�}0O�ˤbmDE����}E���3���8�;p�蠨x�v=��QQIf�
(�gGfX4WΧ�I,Dӧ=4��ݑ��˼ED����4��Y��d=?b2���K#�o�o��{��2@�ul3P��f$�J< /�Y��r�[X��d��{�O{�?�)i��7�!�b�"��.:�E�Ɓ� �r{��Bu�	����Bz�ۀ��<�>�JrZx�'鐻i��� ��Ȍ��g�|$&9�47�K+�H���ˡg��g!|aps-V�Fy�5#C�&�AJqkы���X$=FO�����9<d�x��9�!FNϢ�����I��NR,���i&&�a%.l4�+�Ő��$�gɄ;Ƃ�HEm�<��X_���h�͝SD�a���d9�u8��E�/eL�h�	:�2�DE*�x�/���xL+�����݌�IC�A|�tB�qچ�%؅�޳<����6S`�x�vă�ID`����ۛN`������]
7>ϱ]7�~��H�G;�޽B������޾n�ʀ�Qd̬;����:�A�vD��`��G�@�.� b{�w��#J���E r�K&=E�4���̾6P�7O�������4b��b�%����OyQ�����=�O���a*���?�0<n�����6,Eĸ�VB�6��M�e��aE�j��+�
��{��_���@�����یg��{'M�yo 1����D�Zmر�}�d!pF-���Ϯ��	�9o �����s
'�4��P�L��ԩ�i�����x�z�(��wn�Ou�҄ir��~��}�|��u	�t�7l���qࡲRa�$J"` >-�>��G�.i����x��օ��B��k�wy{�1�U�i[4P��l:���.�$�r� �fI��*X���pgtq,n���V���-A-˴�+'�4Xۮa[�N?���n��p�ر<t��?�ͳlԤ��s9�ϰ#8���AiG�I\#t��"$#�iSw\�K��	�����Oa�bH�aeX�l\|J����IJ�6C���8d�;�\UA�	�����0�҃�$h�Kǔ�j��T>�M�6�?;��Fh���ƹ��A��K>��k���x�"+j� 1�#z��?���t*��;2o�A�������ꥅ�N�h�F���m�χ���=�c���@>�p�
�A��|8��z�'�����6�ŗ��]>Z},S��4��wɱ�MnZ��� ��<����� OQ��1���س
��H�4@A�	^��ݬ���������|��LC6+<���(�]j�Ꜹ{y�2��5�Ÿ{}z7����g��`����E�a9���p�zz��l��]��;{�<�_�U�L��`d�;c�퍢�+����ͺ�P� bT��@� e@� �8�������X�����hx�|v����������Thxv?3�Yd����W����qU�?4<������6�_1<p������O�S�:��hx<vx��<��x�8��D6Vā�c�:�(� B�PC%�K2Vc��f&7È�C������:;�BH<��^�"
�d����}����3PA�}������+e&���x��X<Ṁ�/n�ڜC����    �~��9�0!&�#e���Z�U�A��y\M{���:��7<�Cm���]1O9��u�m�O�����LF���@"/r�b.!���J���)␭ɣ|�����8yk���|��[��h5�Q.:�xt���8�?mG$l�(��g^^a��
�tO3�΅o�\h�����B����ljA���}x��k?_��eܭo!�k���H��� �(�俴Uĩ�����ͩO̒�8�q�7�T���xQCN��U���x��^�x��dv<f���:���t�V�8����TI����b*h>�ԢScr5攄+p��Q�x��N�!a".����վF!Ds�9V;.<r���E=��:�i�u�s[������4�捰�Ҹ�#�� ��>Od��ɰ��G!)l8�]:��St�vT`#��mƝҶ�B/� ���y��k?�)�����Z�˚��s��j��Y�Es��r`�8��\Gk��7���u>о�%%��ThY|_M�n
7��L���������5As��>A�h~-��t��;��{"º��AB8�ω�\�Y~���>Y�EK	L(�Q�*��H�&��ea���'1$}��ǲun=m���\S_��M-P+!eK	L}Q"N0��}�1#�N�W$� �N-"tzhn�d���Z�ayݝ��c�Z���/���C���෕��Z�԰��.�h(��Z�����y�S1ZTG;YG
��Z��Efͣs��D�N}��hV�H0�'O�LAݮS�.>H��9U���L)�o�@s�h��/𝫷�.D���=l�\l�G��7�z��hvێc�?���:���ۉ�@^��n�n�c�eJ��Y��.��TpT���
���nͼ.�F��Ga�귎��b^�p�Zj����������b�&�I�Q)^n=&�i�����V+�x��:��B�����XG��בe:Un|(&,	7B/V�u	7����:<Ig��HR��l� O^C�~�7~�����y�7�wP��k����[�������p>�L�a�	��R�>՛3�H�t9Z�ND�7q��D8��{�x~�`�+<��=k�n�,�w�����!m��I%�-�0O�A���B�t6��=��_Q�!�)�׸"�F.�Y�\�1Z�Ab���x�&;�s�|8�V��j�~�ŅD{�x�&��Q2��f�!6��l��`l0�>����3 ���ّ���O�;p�=wB�'�!Q����Bu�Rﯤ�D/u��4��׬����/?��m�h��N
L���hv��k:�����pA��p!�m5C�II�����(K?��
j�A�TZ��* �,R��ͩ)D�Y���z�L���w��ty��W�]ZO,d��๓7PP,-$V�$j�$Q����G|{���#<9�x
���x�<y�w���<�V��vB�l���J��B����tāayň����!���;H��|?�ů(�Ui����t�ul���R�M\a[Ā�ۊ�k�y�We��V������E��J���2eWKL#�Q�2���<�Lf�f3�Q�������x^?C!��{}F6;V����c�
�<C���h��o/+X����rj$���T����
^l=^Z���
^���w��1b(WOk�Q3������@��pt��{��MS@H�;:/�k�M�D")���9��75�r���'=v�GX��urwƃ���,�K��
R�*T ��By�3
 ����F���ʖ�6������)刍6:�Q��纰\��A�6$�cޠ���zȨ"�)Z�*/=l��'��z������V��� v��e\���&��:��Xy����E�`���+�K.d�.��I�V���M&۰�IYt
�;'�g7b�)X�_oâϲ�tKlae�6PA*PMpڤԉ�T����ܖM�O,|u���kݢ�^)2��q�tu����0`���(Ĺµ��nÀ]c�1M_j��0P�n�\���w�J�6�nv"P�Vm ��DV}d~�6,�ur�W��M�b��l�dҺ:��ۺM�K���?�G(v$]�6l�K��L�<?� \>��DH,j>[vG���S-��V{6�d�m�բ�%��''x�᪴@p[+���%�K����Z��ֱB��'�k�X^�:jn$��
,����Y���X�����|���+��:���㨅����ߎ�I�D�h4�������\�>m%!nՉ箕�>�J`�>P�K��Ts�������ܪk��ߟq]�{�b�%�HA٫Q&��z�p[+��:VhU�7���[J@N��GM%��Zѡ����:.���
����0C���[J�q����4�{�s������D�8�O_����/y�a�w������+�qzۜ�t3?��NG�.���_�k�2���k�	�c]Js	�Z˗��5yxЇۭ�i#7l3!�\&�L]�䈂e�j��5V��[C�����P]wCxU�'�ک�%����q�{{Zߑ�,h��������ti󒽓(\Y)�W4Uh�a � ��JC�5_�?�׸)_!{��1Y̕����s������b���w�/�`�5W䒣䃾+�#2u��2�j�G���K��7�����߹�3�*7�����8��hLV1+Z���h�"�>*VT��d%�V"-V|��y�U,���\ǁ�~^"d���:�5j�4�|�������&�LT8���E�$[�E�$�9E)϶���ܐχ�_����/o7OO8�bb!9y���6����ފ� `�lk�v��n{|@*��G�Q�!_9�S�aPJ�` Q F@�P���O7�W��p�r��c���8Q}�J��\�+� ���xj�>�TW�B�g�֚N�D�j�����{�'9o}cr�o�F�(x������E{�Mbw�y�ϋ��[NE�[��v�ycd┡����������z���6��JTaF1I6Y&`HB���Tp��
9Ԇ뜤�����\
d]�ȿ�o�h���N�_����	����b��c�y�N?_+��ߑ ����������x��Wǿ#!�M�~��#}:�\Wǿ$v`*����-��z��m����Hxm�$��p8���a<T����'��C�����2Z�]<�K���rԓZ��;'��,pF���X��e�{۪�H��5�%�s}�vX�8�X��k�����}��[��F�L�p4� �[�$ "��@��o[u��)�L/:F�q����=�m�,��,Ef���$��l��UO�
d6H�e�:����n9,;j�aѱ�ڶ�[�J'{SVUK�mɪ�ۜU��m{mX�܍6�S�
ն�V\�oZs�q!kە-�m�9�[(�X���+���=�еd%(�� �W'���ŎDc��>����;pY��~���)�f��8�b�/%_�w��8R{=�;T���X a��$�
,������_��o��F������P'����t$�c��z(�)�C=���^�\=lR�AfK�+�A	(x��$�	�+ȡu�A�Kuy�Y�x�<�x�Y:�P
��F<���<1i��<�Mx����x
tv�9�˓���%��RY"{z��}
��r�����.c��N�ϸ!s�����N�Bz�!-������gCl���w���� �vm^o��|W����fkdF�&������t� �����\p0� 3�����(�*��`�$7Rh�V���'�Y>V$��_>V��?4V�\��/�����ceK��h�����ce�_0V���?4V���~��)���>K��k'�Ѷ��[)6�QGI�k�]EI���v֢�Lq^h��6�F�h�mX{ʊ��6g����6,DtD���,���a�<��oqfYjS��6�z�G[%!���L�"!g�ِ3��Q�9�4�C؞Ր3�B�͙�NL��Ǜ��t{^?�B�!�un뢭I�l_�G�GQ`���S�&14�����KǮH��U<�͈*t��$�^��?�*�T���s�e��p
eKo�C1�x��xZcI�#+�S�'��Г    謂�y:G��l��8%-�����w��ҋ"��m���]�ڤ�Z;��v2��UC����Y��:^�6	ؗ�
�����HT�� U���#�*��j��ؾH*�"�gIA�B-_�@*�dwT��b�d�-uH�����EĲ�n.�lM��e��\6ٚ�)�&��l�5eS �Mvs�dkʦ@,���R�֔�X6�ͥ��)%�l���W[w��e��\�p4u�P,���R�є�X69Ϳ���]Ci�������$h|����E�n ��L��7������ׇ�_�����=ۮ�`��kx�]߁9ҙ��5�Kf.��S��68�m��+����(S�(��\ԙ �`�ߒ����='!��s������˷�:�E��|��OǺfwڗ�\�+5��������wP��g%}��̩";����:�2�� I2�ꕖ�r���) �ؚ��
��(�hI���3�4��.3U�<���V3���Z�q����m��.̚X��
,��E2��b��V`�׮
?;-j�Pj
v�����ϰ�SS�+?JPp<�$��P2��^_�*�ݼ��^_S�����j���1�*XӾ:�}%���
T�Io:�MiI)��=��L&c9#_'�=ZL�73���N"��P�$ϡ�Zs��J4��@�S�� 4��������9��͖�t����������cZ_���z��D<��M��b���,��JGJ�C��%u�Χsc<�ǧ��P�@�A���$K�V{�T|kO�5ˤ����њ��O:�J���pに��)(x
����
�ܵ�Z*#�C���<��Vz�ڏK��8EMxBEGly'�PPD�ཀྵ;p1��C`+��� �NrG��8����Z�4H�l�@pj��N�snk�[Ǣ@M�jk�WÂ⤚�U�Uk-ŊH4�cc�Y��>��t'�И�c(������U��=��cֱ$n�,������.�_#^�=���c1���!���Ī�V`Us
�Ү|-�*���Z�V`95,+�K]�m��r�#g�{nk�W�"��\G��
,��%�!bAt܄�*}�׋��V`U�ݓdY�g�1�y]Z�Yj&r�w��tض�<�z��܎S2��\Vʏi>�o�c�#�Ե��:�U�լ�m&�����sF�J�銝EYh3p�����t];��&�b�5�M>>^��0RW]�@�ԫ���xqq��l]�d�g��Wm�?����WFN�ƝF�m�5x����{�Ԇ�])l4"��m8Q�"�m��W[������rن���1�[�hb�����-`]�K/_5�jk�=>>|_��[��L�vu5�Jk�~}�h�?�a���������Z���_�O�6�ʭ�u����Pmf/�������D�#GMe��|��i�p�ކ�����kj�������o�ۖe�u�g�����ub_!	KؒP��C���K���,�u��i���'�u
T�Ě�11w+3���������.�(r�.�K��,hM���¬}�KJ,.5>��nt����U�i4�\��"M������y1��Q����M����ư����m�������m����
�?2��6���q�uF5mH�L���@U��^�j˔6�xw��(���5p��n�.^ꨪgU5�n�����{?���:f6m`h�_ӄ�pD���x���}����3a.��^�ܾ�Q�d�D�Z�)a.4L���Yk4ۙ�z}�İ�q��]�u6i�E�U�01�E�	<4?�׷�uTM�z����R� �ԅ�*9s̆g,_W��f�F�<Le��Qʴ��9���`���������?)������J#���QGG*�}\⚃I��*щU�pBI�)�%�[&�J��@�������;����s"�����P�q)j�͈(41*��/�}��w�6ܔT���vv��������'9ҫ��0�+��v�ҝ�ꨪgUE`��7�^h�7zk�2��U���d�O}z�&e~�\\�rR��{!*]��
��v�m�E;�MC����{O7?�b�c�#/tP�H�f��w�2ué7�+C��b`���b��k��t��[M*^��~�o8	Oja�~%�m��z��t}�\��v5.�y��X$'*�S�d����@�Vԟ�C��.MZ*��C��Pp�Q���u5_�l�����D��X�@"PY(+�뀼,���\c�%�#����[4���M�->k��ۑ��WF�I������Q0�e6U���3^Y	7��L� ԪwM�ۭ���\�c.5�f�\g7��w����GV����"�������Z#�w��9N$yj�B����M!��;|����]�g��ǧK�#��t*L^w�Q�g�K�ZU��4�Ŧ��Z	P�o����F�鳊l�H��jC����;���ի3�VU�/� W�ś^�d.�q>���a�7��>_�w�5޸%ٖP�U���b��bf�v����:�*�Y��T�w��s���|17����{��hqG�m~L�)��h���o�b�f��=��}q�A:&�{h��u:OC��<��ã�]M;_�h�.a�2���y���9��}�кx�L�L���N_*�3/�=T��+�.�T��:J�Y��\k����oj ���t�������u9E��o��כ�Sө1N��I_/���ls6�����a�����(@������[>��@��&��y�'�ct�9�3F�&m�G���vg��ƻ:�$��I�0�/��ͼ;�<b��4+o=��1Z����a�m�-��ſ�д򾒥���:�Z|uQ{�v�Nc���+l�x͆n�,<!��jV��%q�T����m�A��~Ot�ڳ��� �X�O���q�e�N���O�����.��*j��p�dv��y�u��!���(oHT�u���KՕ���֟歴)���*8f���Jw?_o�m��6�U�]th�M���_�����cWi�R���kN�b��WT���a����C%��+3�J㙢�\#�6��WQQ���E.�\�*���vE�b9E����T~IE��S)EcuM�*̶�p�%:2n�U�j��*���YD�;�A�G���W]+��0��]R쉓{F.``��r��L/kxj.�Pޞ_���bQuT�멎ㇾGu,���z��᫫�E�Qݨ�����zm�Xʹ:��l�StM�]�.�>{uLc�;�h�&�}|�Z�L�� 9�6R���:���*���PZi���<��1�Z��)���{�L5݊�Vl�g\~E�XFu�j�~gG��������zE�إ�֘�5խ؟+�����ӝ����v�؂Ru�`!��˲Ļ�
}��n���Ǌ�s��m��ekl��=�|���X����6b�\�DM�[U��Z�D]Z�EJ�d�u}a]T���
��g�5O�[��9x��a�:J��B %*�����EM"���о0;������C���+���о�:
��y�(S�ƛH��]Ek:���H��ajF�$��7v�^W��p:P�N��$�4��p�Xy�A�
a؄PI4lp�W��q5���9Ĉ�]��-mH�ä,p8�P�g2{$U�.g�_)��4B��Q}܂'F� �?����q]�ܼ� -�;t�S�ʰ{~7�ۏ�"�"V�!�&�I
ǆ*X��OJ�K�A�� *@�����x���ݫ�3�:w�2r��0�%I�8�Y	OA�U�4.�"C�ՠ�J[	ܮ�N� �̝%1h�3>@��5�E# ��H�2�K���F.�r�Z�y ���O`�hH*�3�/�p���
C�C��y8�����QQ6۹(�� H�X"�*���U���e�q	1��{N�]�B��$^ϊcy�"����t�_��3�"�H+�p�*��a�ޞ�%����H$���I�8|�$
砠�K�_
z� eJCw�2�b1�N�|%����gB� �f*a���LlF��h��ét���� ��n�8<�'��ػݩ�����n��c�/H
8^Ϲ��J����a��^WGY���9�8�q�,�[�aj��2%V�p�fpB+�    ��5w_%t$\�	WȚ#В�7O����v�CG_*�	�LA��GS�a�`2��{�|�[	��_�D�Ҝu�-\|8������3�i�85�gLrKd<6yE�xM�sk��hQ�s�ڙN�ʐT�i�}�CKϧ����.b$��!3q8�qIl#-���OSH
1R2i�첯�ym���R�k9'�ť��E�Oe�G����ps\��5��Ĭ�?���p���\�غ8EB��B�9DK�]z<p�/�#�?�%'�p=�����Þ��PuD�;0�U��׋#�#E_�Y�����Rj`��������Nɩ��z���T`����TJ�5i�E���[�1t�"���,/��M��	�^��,9`��I�-j�3���,ZJ���𥉻��,Zxx�Yy�!I�D
4P�We�˰�U@��۵����D.���ӿB�p�MgdF�3#��@q{3z���Ŧ*>nAW��s�j[9��v���`�Ho��T8LSqc�x�^���a��%n@�BL1[Em��6�Jy��8族��&3����".�>S����өX����Yop猔o:P��ؽ�.��'� ��P�fPX[�
`r��8$��ܓ�n|2}ɡ���+�bɸ�)Gi���?�����:�yaw��-4���� ޴'�c�Og���|����;��g���l�-�.؝Z�тC�6py��c�<K1
����1Z����R���#��&u�7��?��ǒ#�L�xZF{%zz���]t&����e��$](���{���-�����L&�c��<취=p)�����>�(�E
DXB�ZH`$gBn��ޡ�\��}���[T���4
��$؉�v���y��w�*�?�	|Z�D��w�n��r���nZj�P'�7*E���!Hu�\Ў��r�9]���c�t�zw��I��:��w!���fi":�� f�`Vl�М���r�gC�hw�	�
[���>��ga�`�iB���d)�+&�158J������Җ.�ɘ�:ݫ�3t{}�=�CoR�����ēB�R���(3E4�A���w��͗��r��A���DK�^p=����6ٯ��`���^�%J��%��?$1m(G�.�O��z���w����UH� �����Q$���Y��Kh�xb�O�����A�C~�=v��)��`9�Ýr��m�b��_=F��HY����n�z%��/+8��\�P�l����b�=�@J�!��O�˿��� s�7�̀2Kj���`��e	c�����67L�+UB+���7h�m�buح��.
7�6�e��]�9�A��P/�H+��_���3x1Ņp	��M$��h�+��VU�1�i.V��p�*���������BfI�'�?\xc���Cr��&:, BD��e����̈́H�P�t�	ee��k��A3�q@me��Lͻ��������P��G �� �F�8�{��T�ɅX|�M�okB�XW܋�OI��Q6���e|,�}��3H��/���*`q�X��5��r�$�8�;b�q��BEJE���P���L�Ke��o��������" rZ=�Qi�~{�4Q�L��k�� ���e*#}�?L(�
& rdĶ�7�\���^����1���y �r<%�� ��k��#w0u���`
Z�J�sCh��p� )@LQ"�`��4$\��N��>���(���:R��o�i{ح��zu�P�KOCUx} `X f��[J`IN4��ׁ��c����N�$�'n0�>�pMx��Be�K	��o!���R�6<�|������Q!�(vC�Uլ4`�3�)=H�C_�J������g.h�xu'|s�Ą &,�������4������ 옡��8c�`���5�Ґ� #ydR���� �M� ]�~ �xF���������@���T�-Y�r����bI�U	q�c���l>���U��ὀ��]���P�ܙ�����}VE��_���z۩��M�=4�/�<���WT���}��7�7���1yX��5�����qh�³fk}3_�.~������]�`g�`0Xvܷ���١�M��]���e�*���R�#f��<-���U�I$n�k/ ����[߬*�$#��TB0�������BIv�
 ?�w��x�X�͠1��is���E&1�et	K�7��P���0���Oڰ�����0��ds����~��x�>����xDV/9+�&[xjQ������ϱ�:��efݐ��7Ə���|X�l�Kcg��������8���#�=���q���+���G^��+��igʲϡ��*�!�kU�7A��TJ:y���O�PM_��{*�x��/�~w+Zlаf��S��N.B�H�������'�Z�9�5�(��F���i岒GN���Z
J�:�J��=TvC'��7pJ�\�8���+�e��h.ջ�q���ц8� G0�����ѭD�i�V��i6�&Y:ep�y��VI�G�ΐ�*H�<�}�Ԫ��K#����Q�%���!�U�y$���*���2���i"���x�5���ܪ���"�ڒ��*V����܆Wi����B�'�n"טd��2�y��V� 7m�n�N�3~��5۠ݷ�MÖ�6������l��l`Z���}oɣ�J�����!�	~�����^�"�*�|���H>H�>��jE��{gq�t��N�XIl�����&R�W8��Aq'Zȱ�������?e�z����
Ӿ uR���(��������( �@    @ �iA�z-S ��1S�-����<�<XׯC�����j�o��T��ă��G۾V֢r}��[ig��^�O7��J9'5f��Qi��Q۽\�?��N�X���
�*A��qv�DmK���W�PGS��Ua嬫Y:����a%��M�!�f��6��_*��o�u���F�(�t솴$�I��Iu�$D��% ٴ@�0���_��b�H+���Yv��o�I`�W�������:2���7��"G�%Ʊ����j;�~��JER{�jj�����X�j&r�xxxVߠ�[(�\&�&�o@d�ɈWp���÷�Mk6ٻ�Fhz��\�o�_%��9��QI�܄��F�^��?�H����Q�qO	�_�F��}�4o�g��ox%ؠ_�����'�Q_O��kw��;�j,�_�c�Zp���1�ȗ���s�ڳ�� ��#���s�L��@Ӱ��4[F[m����Z��`�H�s�&1��/����],��%�7孪nw���F߲^͠X���~m��FA�4�$˼X�����/_V��A�=m�[�'L��i�@�h��;�I���P�*��}�.���7?��� �RPL8����=���VI�������Ѥ�!N6!"r����飈�������\x]o6]��Z����U������?Wd�޺�F��c��93�lQ+�
�,"��~~.�Ǜ�4p��(V�}�\���k�ZU�"OJY��BHz}��dx������`6��I�3�U����֞;��<�v����rlz��=��lj�P�����4���RMTEemADa�B��Y}�a�v���T���[���a��4�� Tke�c~y�����sY���Y!&�������/�<�|��k�hkǰ��t�W���e�׻O��7�u��wWtB���aM�)HVrD|^�g��:�B~��[<l�ZTCC�cI�}�`2쬦�}v�W��"x�n�w�=�C�ﹼ���3T�q����۲
-\��ϐ�ri��b�sV��YEH@j�K�⇙��~�ݩ�@����I��𥷴�ǐ�d��,��{ɺ�z�P!=��Q^\�l�_�c�_�s� 9���fW�^��9S��Ѓpxg��<�y�F����<h��(��()vg�,���n�87)�|Eiςuy�����Ă��u�LRl�F�y�79Q,�2��6�dj��E�өԫ������sީ��-gT��Y=#m�	^�mM    �l4b��tK��I�{`�66�QM�߯\	��;]??jm����_�\մ�kU]?�;�=���O�U�n�\�����RQp8�nQ�+�(�W߳�<n�k�h��tL��*+����gp���@��F6�v�ې=1
$���� 6�+C���"��<']$I����ֳ��KYٵ���Ow����]{��-ݺ���=�$�Y��r�WU�2U��A�8� gP�*�;Db�O;x,u��+�����$�c��
!�8�WW��]D�W�E !��>n������s1��'��γ���.�@U�J6-1!�����]/W�+\�b�<F����|�V��=O��ۅR,]�G�")�����;�I*J���Ae�N����y����*� @��\�)����g2+�b(w��|��q����K3����i�Sa����������X�Ԩ��~�Y�u���' ]�����
лF�߳�N	;!�#_PG��bvE-yl�h�f�hə�`vf�g]5�� 8
@� �]:MU�u+S6�Mᖳ�
�:�V+����E	����a䞞�T�F��G:�4�A�Z:��R{ 
TP5��D�v	u���4p���7~�m���T��7��������i�w�qV� BT�xc��h]�J�/��$���g�e�|�0�g>4�1�@|$[E��r���I=:��ݏ>�N<�GA8�w>(��^8��}`\܂DE�]D���q#	�R?�s�-Um_���{|~����.4����@}u�[1 ��X2LN�0�$��U�!��>���:U�tK3��s��&2�|�mV%Tۦ�>d��^�T�&շ��} �11R�۩xR�K������&i�x5���+�'�3u@�?}A>9b_y�1?�'�;����Sc� t����Me�V
���23��u���A��W��V�3���W�l�D��LL�t�ՑH��,���?�{+}O��C���*3uaH*��u��H��м���z�$�? c��C�P�ϕ�MpQaM�x�#�>D���
jC54��j-˂;Mo� E���[9`��-�V5��F�F2�,aeP3�Z�cÖ�͐V&=>&^�U�S�D���H�چÏ`D` �Tք��C.o�N9kI7#�ϣzM�>UD��"t.�'���_A�+?��M���.+i����+	�9��zΔ[���nй|�aŻ���6A]Ox�,�o�������8X� �񚊁P߽}����M]J���wC�s�~��$4�|d���b���EM0)S �v�㏾A��I(�����s{1��J8r�)�&ޑ�6�	�����,��f3t�c�����L*5�#��q��ѫ��Vә�ިE�A���	�*��cn�EGl�\r�$�r�Y�����s�������2H�v��=l(J8\w�L����@����9ק'� 0��ᅬ��}v� h����
b���&eh�`rH-�d�����}6�*���v�%�p�\�"��#����Y �����AZ"y�U	U�1'j�� �0'��`������=Ђ��>͑Tɮh� �|v.�̺p�O�2oې/��?�c^�铏��)1̖�~4��Zd�l5��?>y�<>��U�V�c��wK ���qz\.�FdpV�����W���[�*A![�GN����|
F��Q��f�$���m��$]��:��~x/5�3r
�U��
7�J�G�ߘ8�+�)֕	�ծ׋��!���ځ�E�ogϽ�|$�g�����~s�iD�}+�睋��N���w=Y<�	�UH�l)&&���iO~�5iܸ��v$��e�d�9�,)��&�$2ұe�9��4>��[��E�c��ج[5�Hdv�Y��Zl[����ĢtԖ�Vm�\ᔔTк�����_	���F�� d�Y���j�(����t��L|o�c ����sj�x���}j��	��
%c�p5�z���`�vl-�_�$#Aӏ���j��W�e�a���E�Z�F��C�l�}~~@~UЯI�T��F+��EOͻ��#�ݙ�q�C�wjj�B��B�庣h��(]�7��}�^K;�gL��z	����/K�G�`x�o�׏H�����()*��hG�}C�aA� ���T�\�5��۩�{��=+##��g2>�P����䄣P���hS ɹ�s��R �ā���t�t˶���P�h������/��´�$/�m��bP���8�ݶ�7�3��ӻ/������.�mNߦ����̼��ِ����U��w�k���\Oi���6��$�Dk �q�KM7F����
~_c���Y�Q������hGq�G���H�ً��������*�jd�,��z:�O.�?o;��2�-���+���1�=���^���c�oD�y�,�5CW$Ռ/�H#�F�}��v�� �w��x���^�x�(�nO�Oh�	m���!��w$00]5�6���I��Cxo?:���������}����1���V�i��@��T�����#r	����w�3tg���)�?�^,V��%���Y
э7�)���p�[U�(�F��Ҁ;��q.g=H">2�;~p��.��jk�c��ҵ�����W������j�g<`q|ӵɅ4>��BO�~nJ�R�p���r� �/���[����L{6��F�5�_fi-�����w˜\�K6g4�J�vg{G�S�[�A�������6���A�]��7!֤���$�.�P�%m@���͒4��*�b�<�H��Ȗ�۶y)�5<o�zM^:��F�NPXEǿJJ����&Ju������w��:��j���2z�^�Zu!����_��e+f�G7��ě�)ģ��53K��S����7���:���b��Ҁ�F����N߆m[�j��ʝ+�T�$�W�n�f��Ԗ�l�w�H;�(��؊�CNp9�$?���Pca�#��
"1���n�ն!�A�}��	���P�,[���C�$6�!�"����:"�F��H�+H�$�HC�(��0	@$`�]>��/*?
�Rc�װW��*�Ɠ��Y�k�T����~��<����u%~� ��/������n�&z�l�o�\ܦ�89��n�}�ִXLee(;�WQN=W��X���k]�M+�b�?m���� ���tZB�	Fa��_����]e�4�O�T�4����:�'l��-���1ā�,��A<˴��֒�b�|3��t'�|�<�{�=��^�����v��q~e�XW�����߮ea�!���>�����
�������Ð9�*$�3_y���k���K�,[��cl�VO7�ǇR��9v�(M��faL>�J�]v�z�����Z�k~���{�i@㨋�Iޝ���: $��ܧL/����_ �#����fd!�C�h�ڴ5��`
ce�O��8�\ ;��._l���KyȳK�s0����
�<���(E�<��{R��#��3]�K8��ͣr��.�0zX?�Q��>���������}<lӇD@� �Ri�H#�?Rp?gDz�#�4���N������N�������8�e.�;��3V������j'�,zޘ@i�HH�� �J��bC�p8D+8v�h��u����Ψ@�"61b����	�c7@�X"�8�.Oʓ�&��F����3�4<�_V���j�=��
�#O*���,�h�P�`c��i�âD�@�X8X$�$���C5����{� r |��|Q҂/���LY�s�p�n���u�8�)Ina�D*����s
�����J��$��0d>r�l��Gn����Y�6Bg|�3/�!�;�# `���^��~D�}h��\�[^<ȋ��"�D��^�!g�1|��ܟMhŗ|�����$�|y��V��9��f�[p���2���9�j���Y^��M@��M�vqQG5�֋Q�Ȉ� Z����rԁ�i�@    YQ�|�;ha��Mg�k���1p��q�؟����V�SU���%[
T����m��u@����0*z3]���Z�+݆����jG@5�[��0T'�Lz� !.Ƅ�$'�&)Le8�EJG	���iy8�!'ޱr5%U���ӽ�i�(��&$�"=� Fr�`���î\>|�Bє��"<�d��!D��fM��!�ğ��u]�l�	��[Tr�J-� ;$~���w`�%ux�!�d O&�MeC�� u��T�P�J$Y�M��7�ׇ�b2�Q�}�$~Z�	�WN����i.�=Q*A�B9:#0rІ)HF�wFb,g=��+C4��	�d�
�0Vl���gŵw�e�b"i}�3�B�3��5����9,*Q>����=�4��#%m��p��6i��J���r�Kމ����5ڪe����:��� �mAQv����`�/�t�%�%j�y5�Iݨ�"�5ȅ����E��/�jl�ZD��c	8f�	d�J ��K0��d��������eT�����2�c��!k�3r��+݁3�%x15H�K@h���>�)�����l̻m[��kK��řL��!��\tW�����΅O�=�G���j�]�S�){��p�J@��OE��I�D'݆'��Iw1��N�I��Aĳ*��D��tOQ$l[�')��"�h��$�EVM#X�f��X*����jzw�8f�V[�8� ���}����p+C��,}Z�,?j��h�c��Q�P@u�K����=$v�5
*�$D.-fS7�f�4t�:�������r~<(�h���]�U2�6������]�éj*�*։��!C`jz���*"P��-�i���˅¤�0������]ઓ�6R�*j ��m��*		��U��G��b��h��Pk!:PH��?��~oڵJ��v�E~X�_d+΃��$�̋z��N-��Fs�� E����[Uk<-_��Qy<���V>�8��&qs�<Ӹ��O[����F�x"�"`+|6/�"����x���έ7��'��v���Gr�H(q�~�a�6�v��|tC�k�.4���L�ׇ���'��������9����it�'}h�d���U���S���vU2����M�^V�OmC�@vwNF@5�v�ݲ���[(�Ho���.������ם��.��j}@��q������� ���r���
��.3�Yޯ�k�|���>9����6�h���9�ި�bBZ��47�
m�"��B�ل=�d8@�C�f�FJ��S6�Ą����?)��\G𧻓-j��"	F���<���S�b���h����Ɨ�i5���c��3npK���}\4u���WA"�v��1)�!ҟ�H���͒�Dô���0���G�.�>�>1�4����|`�l�7���-�>���6�(�������	�<�u����n��`)�<�͠���Y�*-�D��9-8�'���dr����.���f���O ��� 	���w���hWY\d_D*���nw�<�����<�/O{����c�}i����h��Cy��7+"�q���x��{��zJg����S��^�C>.�O�~�n+��m�q����g;+�@�QU�$���z-�
��Kc���tyP�4j�uA��[z���4C�n���0�(���A�����r���=<����;�*� �m�
I�`x�f]��?��^���]C8R�C�����&���H��Ϸ'���}\�B����By@��HyhdCm�˵2ZBk�3� �.͋���!�%�:�{�BPE�3K���J\s���s�O��@��}�6�B=��oW�R-���@V��2� 
��8nO�F��������PD�ט�/�T"#�/��]-�b�S�}TLŗi'�y���A��+�D��O�4KXU����*���G��a��h{��.kzP/L'��R�o$�$�jBe4Vn�[���״�*Q'��-�p��+=�R�{k0�;���*�Sz-�V�0zz���l$�2�z�n�++�����;	�h�SM7,[k�-s��I���yK��3г�¤	��Hp�(�b��"Gm�e�FK���p�mTraR"�D;U�TU]�[�ϣ�FŢ�U2�+��֌f��v�D�NB�X5�w��1�}�$��U���J�rk3"�@�$�b��e�MY��H�L)�Ugsq�-rL�g��&��D���R	eb��~D���7u,2���?��ި�X��]5�آ|o��O�y�@�2�$q�0�0I�3�1�@�'s��)���g�\g�����#R.c25$$&���1ݮ��FA�<��ǌ˝�z.�I.[i�&�>�W�;���#�6�L8��?��J��q+�kw����h�l��[6�Ҿ�[�� �����Z=�n�L���A�p�>�6a�� �ܥ�^<��i�[�;�h�����\hA�tB��V�")WO�q%��*�P	��t\�vy8*���=>AK�����AA�,`���,��dp��a�>%w���b�B(5��Qt�|������ɩ�AJ,�M�}�������C�^�`�^� ��3<b$�=��z�Qø����lܱ{�ǈ�I�8%l 5��`� �'����v�\��K�Z�qn|����7_>B�L��#\V��+��b��'��"�X�� ��)���G�j-(N8 +��uzQ�����:8bH�����ݯ>q�Y�b��K�q I܉ەX9T�x���!�t%��Ч�νe��8��$���wH��
L8J��q	�rI�b���`��x?>�>2egCh@g=��]p�H(8r,�щ\����þ ����7rn�ӡ����S���kq��X��j�H?�~���v�����������.����R�� �Hd *4 �b��=��שׁ2	%\z���Y��a��2�S~6J���d^�r"o��Rm��g+�U��m�4���6��V�p�J���prr	+����eA���AI�m����R�-���1�>"WNK�YY��p0J*婬�%�ʚ���TV�.�%�HpUU')ɛ����*�C�XC�Rٜ�8{�GVP� �J��R���2s�y��=W+*{�/=iFJ5��2���<Eu,(K�-��TGj�HE's$�����"�h*Cْב��b��Q��n� $�y�O��(��wwuc����:Snw���0$���Q[��/|m�'�z_���%���[6�JL�?p?gH������$��9�����������k`0��ș]��߷�ky�&+x��:��^v7��
��Y-�Bl~DdrH�L}�q�C��.'��ԃ�}�9
�$�5����O(�J�OC�7o��n@��d	��gC��k-q�`Z��\}���P��9�l�WOzO�L�[p��RU�q%���$��ThgU�Z�\˪ �R!�A�ն��<R�6�U��t�Rx�W��蚩"LB��.��[J��Z��̎ɫU,8��3ȁb3�ͦ��4MT� �M�zH�K��m[�HJ��0���s�qW� ��|������|�$�d�6�7B��t�AK���=wx5@�ٍ\�AH��
:T�G#������~Ņ	�n���������{������D��R��� z�����Si�F���o�����o�9����o׍�r\ΟDO�X �0�0r�m!�M�V��\#Qak$*L�DT�`+.Wh0Bʊlï��>
G�C^ID������8����R�>@>�E� C4�3���VļfHP<6���(!�RU�&�X0��j��*����ښI�<�\�L=a�$q�#b;�M��x/���C�[�*�a��63{�~ŢE*���hҮs�ԸG׭��h#�x*l��2�.$�9���S!�ڄ��$	v��NЃAlk1z��(�,!FP�XS5�쏔��ݞ�ORQ�"B(QMH�%$M�W�$P�eu|���Ó�C�]!�' � �?@�YS9l� �  � nQMvйf����O]xl�Jo6�Pm/���e��5ՠ�Q*���>��_�+%�Hq&汦&ՠ�Ov�uh�C�z�㑀��ʌ��pW�E�!i�Q��� ����A2?��O0J�i�X�VJ�uH\��Dp)�'ϧ�Ae����G�-�-��r�-�R) I����]Wi��|p9�ҒN�]�LX��X�QS��}�THA�iZF�� ��/D�4|!r&�����hZmSkW�����F�Ù��	�,�>ȣ����:�F�8~y9��$�~��������~��)P[�EwMHl)ѩ���@�o���Iq�7��br��T���v�����P	���ޘg� p�79d���8�I�ӆ��C����ţ�+u���'E'~_al�3GD�u��@4E��D<������<~8.i��s.߇_�ߛu���P2�0�H�ܯrrیܩ8~.G!%����a��\I�j#.�s� 4˘��|
�"-Bq���_�����a��?��~Vt|@G��nT�g�a6���p�Lx�:_p��$�}�x񺹾\��z����b?{��A�<ǅ�D�IU��ru��|�lH\�?�{��
_���`������.�f��������,R�V�
�uB��t�ά�V
�f�oLB##��&�ƥ��ég�'5j� l ���P���H�*��|�wws]~�#A��{)
��.'��Z
�'���W@$}�bW,��������L�m[�U)��KJ����a��n0�Xc��y/��ȻY$8��'Ӷt��/呁'1����j�z�Ҹq8F/;eq:~�S�| �RCe��+m�P�#�	�tT��jg)@RABn)�
����>�����*:x�=M��N:�uݡ���4��^��LK���#�dK�F~��a�[��:����8&������$��!�OŀXL|?�� ғ�#sKM����J�@�8Qo� ���P��HY���+���b�ʡ������'�9���Yq� ���4�E��yBl* ���_��G�Y���#\#��I�����S��M�4K��J�ǋ�������lH��l��!9"u"= �0?�&���g�~�bb.@��2>4P�"/Q7˘;Q������b �ʵ�ޔNζX)X} .��4���̩
Oh��p�9����c�|��4��f��P�*���������v�@U��1����&����.5��'�=
%Aa(��m��@h|��{Y�x�	g�� ����Y��Fbuq����U.�p6R�k8�!��Ĕ�P��og�|R�.�����Sz��_�b�M�E?�� F�e���{|Z*����Ӌ�P^/Kv4y� a �@����X�eXg�C�;��^&�+zޣ�,_{���	���x�w���U(��#�k���	�!�B�sNU&�d�sJP�_�S��X^��ǫ[|8헇�._,'�bD�q&�nOpS��Ә>��/P&�z�=b�mگe�i��3i������z2����d;��H�N�heg�AbuY T��PzRӷL4�*�&�,l�m\Pt�j�P��|�2<���D�@V��$&�ŉv��j����g�[y���"��b��gĐ������9�WD���2�Ȁ�R���65�����!7�գ]ѭ��u����!��A��$���8G؍"w	9��8�f8q�w@*��c;�V
�,�o�o�B@"�$:u��C?l����r�v<�Q�nR� a��Α�Ք��bp0�p	��"bK�������<����:��%����~�f[4/��t��Pc�j0�r[ct��i�0��qכ���d�tq���,��n(�8� ̂��V��Jy�Y��7/<B<��Wr���1t2h����m�k�_���HXBކJ�]9r�P�"՞���Z��>p;f�������;����=K(�Ĳ�*�KWNϳ��������.���x�@O#q��Q��wZ�/���r`Z�e����P��'=C�>=O���������|F���ܵz�I96$�xU
'?�!y�A��0���S.��]�֨���5�rOV�D�����Z��r>�r�d.�a��<-���_.�l5����2Z�Pc%���Y��_��$�ÛD\g8t���Lb(sdg<von�lJ���$�lUP��;��m	���7�]%t�����bi$��"$���@mH>��~��j#���{l4��������Ӷ�{�=]��?�����?P��      �      x��|�r�J��s�+2�É�2�y�'�$DB$@P��#*R",B�tR>���o�/� ʒl�n�N���D���C�*������?
�c:�㚶�01l�y�l-D�X�w+�_n7+V}��k�%I�	����qL��`�wYv�x��$��3Uc#o8&̵L�v5�2���\m�l�ˊm��Y�ڮou�d%�'~��?a�I�g��Bߏ�+{��\�c��������X�P��X�pʃ��&�8�j__���8��dko������X�nX+�V!�m;�0v�w�^���;���NLb��w6��X?՟��{���Й^����'x�U1��L܉�X��5gYjzcJ����ސ��[0LX�w>#<Ą���?��럩�yi�M9v�Mb̠Y�aҟ�-�<�w�y��ՉFl��(�x4����p ݴ#7�I:�xag��c�n�a�N?�z<��.O�^<��TkXL���α��׊[8�^@'�=���}��&��N��ӱ��ϼ��(�m�D,��|ܬ��a����A�ͼ�Ɠ��-��uޜ�b��I�'^?��m��,���E"�\u-���O��g�f�m6�-I��{�AW�p�`�B��r�[�B|;�9^o]s���go�T�����;���n�[�e�+1�J���������%�X���S�@��pvf8l������`� |�ٚ☮�A���`�wTC���aϱ���yG*��G���3o�\C�4M�5��ʝ�����_y��7j{�K'&�b���5�
Q9��mSW\�Rm������]������i���K�u��R}����l%��3��r�$X#��ێ���"��;q���r��pOM��`ⵇ>�G�?���,�g�y��cm� �!D�$
e:�b�T&ַ�l=l NBQ�f�;q�����a�^�گ(1FM����R����;⨮[�._V5�0-[i��i؉8-�ǡ����|�OhK���L��*�e���E��-6�����B�x�k�`��KX�t��>�GgN+��.ϰ��E�J/�k�gI{��}o8�w`�e��]9���c�@�q�Պ��R)}�S�K?>�}��I0�3��M���S2-�_���f!r˼��E{)L"��(��Y�QF�4�]z�gHG�}����7B���#��X܋�b_��D�'q�s���ۏ��>h�w���	F��G!��`v\�G���9��o��bw����}�w���|���k8�$�I4L_�>��KI��7sEqT�0V�V�EYnns���o��7�{�D��`d}������o�z������E�+:�Rl�b�g3|�9[*�E&/�F|@����U2X�/��ľJ`���l����JL����3�	��/�����~�o֕�с�BXH�[1L�p\݁I�T	Mє�������f��ݨ����L�X/��z��tJ{�j��/XUy�$�馕��$�
`ŗrW.�������'��+u�,��>�͙�4�Dɵ7��a`�(]�=��⯕X�_ŪiJ�A�B9a�`g�I0I�$�%'����y1�ZX�Q2��t�A.y������י�p�B 7
xP��<˶�����^���j`.x���oCI'^��a, ĆAg ����n����]��K�kz=h�����h��؍�� �>\�C�u�W #_�v��.�]�7��]~�#���I4>qoK�e =�tB��D�*N�tLם�mŮ�4e�k����z�&�Vd)�������g��N��u�; ���A�{�gf�\�@p������NXS���hr�19|K�H��7�O{���~�#�%���4��S4�L�
.��ؔ�	j��û�6�R$i�x:!Yo�i l�.�{@I>�G �15����z���/�U�d�v\�N�uC�h��AB� Z`g!�*I�3#�Q�S���K��lH+�(,����y��� =bů�2�y��%c�[.�6�s��c w�Z�?mvy��t�k,���c~5�&P���Ej�.m:3�Jk��*�ðmL�ڋbS�&S
�A��2h��>��7ѧ
:w�#����*��pEv�����G���:�a�"����H���'�Ͳ݂w �+����l��R�)����Pǲ�\��:�RR�O� ًk��?�YT�c5�f�}��`E��h@��
�^�3��i���!�� N�ʘ@�&��F�m�> ҄��#��&#��خ7_���C?IlwM+��B\)���k}�a����6_5Ln�P�|�7���ț'#���!aPq��=�9%�=�u��w�$�R�0�ߕ�S�I6�f���<�[@N�H~�L��<��{���:î������8WH�t�Q\�U����~�3�ԋ^���� ^e�t��6���g�|�0�d�u��,��8>���+{���İ����X�p�<���`�A�}�01'�u uI��Y6y�)8�@Σ�������DHutӼ�/�{�Y;	a�J�ʸ���F����G�px1��Q��kAWG�>ʗK��|�eE��"]6�WK�W�H�4�b�r��n/
Z����a~��;�c��?V��b�Ͽf�L�Qн����x켽}�
�������� ���p�4G�A���P����v�ɛZ`´�^�(��f��)&����M�'�>��t��������ԶЛr���/e�r�<�`���{��o���|�*&�������"��I�fX�B�dG5X��/i��4#iP��K?q���ru}b�?2�'y�aA�O4W��Y��JW]��n=�UHr2\���?����AᗮOA/[��u��;�fKr�[q��$w~��&���0�:�o�}���S�XY#x���d�vcwq�Y�Ut8��nУXƑ׽rd��M���3������b�y��ǻ�����vX�ě�(���g}E��:6�d
�5���ќ�{��)f}c�]���������j��7��/�5t�ʛ�i���~�K͘�Kq��z3n�݋�*tUT�Ѷ�����mB�s4���/L6�^v��)A5��&��x[���ȩ��mK݋�Buł�j@W%�d�Br���1;A7^6T���}�<�$�EF���8ZEc����k��0� ���H�����-�Gə��M��U��?^Qx���,(`yO�[<1t-�����#�]@h���a��lM%��B�����R�l�m_� ��몴�tr
�Ad]14�0�6ڃaa�}��rB�_�ciX��JjHtՁ���xM�d���Z�{gi��V,yB���i�������b���X���iz�a
t����e�d�l��xd�b�$g8'[WLX���w9��
��P�GzWѰs��ŚwEYV������8��ت�g���<i�#����<ٞE����Z�4��5�v��0��}���x��7�|G�V��n!�u���6	1���h�\�A6c��t�g�P��k�[�"0�[`�$3�^���P��Y s�m�H}h��\�9��$�e^�qj�K|�D�r���D����.[p)c���L��}T�e9���� ��W� Ֆ�X��J�-r��}r�3%��䚒=��� 	Ʊ,�2m,�I^m�K ����*���46�?�"�iV� ��ҒT �B<e���,�Y틫}ru6���A_򫜷��ز�b�-�a�5�e��}�  ���m����}M�t ��Q �Hl�d����*���L��9&�n)5x)N��R@K�d�"�k��~��3ה��A��fU�q ׄ�A���-�����0��|�r��\}ms��s����*�a�"���Dsy����������F��|��8�-s�`��eMF�d��ϔ��� m���jD����h7@�A��݉'��NT����2~��Aj�!{k��ǅxXP�G54�Pe
�z��n�6c	�L@���TEa�1�󾄪�x�غe��    �������s���k9V)����^�U��<8�,���|k�H�:�r(�C/ӫ��lӉ4 ���%dВ�溬S-�w���0>|���d��7�y����h/��ʢaP[��߷�;׶U�EFi���;��mS�l���k�+>����DS"��j�����L���p���QSc%�M�Ǝ��E)����`i;�#Dk@E|Յ�'�_���\�Nl�H^}Q~�O2��f_f��fF#'�:0��DVd���hо�H�[v�`���|L�gB��y!��R�_��=�͠���_!���l6t]w\�T�><�K8զ��`���I@���ԋ� �Ed��Be�p�bM��;����H�˹(��ߋ��Zげ)�bEnnL�I�8Ӆkљ�Q��wY��d������fmP��}_�UE&|����F%��[A�g�5*'%7QJ��%��!Ѝ-���-FU��v��?q�璑�`h����c��iα/�[�}�o��b.j,���0 �R�%��o����^��G�# v��t�f�3!��5ꮃp���&�2���-w���%��C�H�lY��ñ�f��7)b�a��q4�Q���t`B^Q�+N�(�z�����l����Vdi�o�u	81W�f����4Ϥ�6���	� IT��E��Ed��"�38;��L������ ,ĩ\�0b�N<���+��2�W1|[!���1����	�_�Mg���Ry֍�ttXڝ��6s��3Y=xJq���	A�`�*,�yΡ��ʊ�����/2Q6���������@���BQ�S\ǰl�b���Pwb�������4N>ߍ��:�vh��n�?�@��z1�l���0��:/�ƁL�~��BՈ�O�Z�k2zC��3�Q�^��I-��G�,�N)��L��`�����8א����g�n��5a)�\��"##Әvͨ؋Jrx�6cA{ޕw�9�O��m���.Q#K�)$�~GvyCO9�bc��(%�v�?�R5�/W2���X�p�a] �eٖҦ�)�4��^�9�:#�;�E{T85���1(x�e&�<���x�\��b{�y�5��Ca�¸���X����*�**�*UvKt�d7�})����L����4��.�bq�2�y@.l�3�֯˗�&�jo�60O�y�#��^�ZP
�W=F���Q"��(��YU0ĉX�r��X �����r���ٿ�E��?b�ܪ v��� ��I�L�*���b���_q"�krM�ƞ�d�A��a�]���e�́������v}+N0�$N//���P��P�l ^x�z}����ϧ�����6���7���"+1��g��!���+�t�׿��S���'T�����.�OeW�Ґ�Ja&CU�( pS��v�5��I	�7G �
�,c?	z4<s\B�k�j(B����X�L>�wU��lP��6m�ܞ�/�b��տ�9�'�3ʏ\��	�ʯ�D��h��5�A��KV7��k��?������i쉓;5X�*X�v�_�: �T�4}��XB�|O�=���]V�@���z�h�/��,�{=����T֠5*��Z�BQ����\����sF*�'�#|j����.q͒��'��S-���͑b ���4�Wc2B9��K�ί '�K~I&z;^8a�Or�K���L`���0
����N����P��z����yǏ'�%��hZ�KI�+�d�sb�����l��[,�����q7����b�#����	շ�˗C���������N썢���.Q5F�~�02MҸG��C*��eq���IE�w#�tu[�)2���v�5�ߟ�R�`*�ETT��;���t��A�6�Ů̷�<͡�����>���W����dD��?1�&������h&NN��B������g���^��7��v\Ww@�	�e~�;�$�>���4H��aXo����P�5���xl�b/ެ���#_�C�?1��<H��=&4K��BR�X �I���f���6ue�^�9��	m6NC�����Vɲ�����y��w;��ͦ����>����6'r��&reH�wp�nۆJŠ��[��O*3e����G	�ԤD����&�=hP:Gew\7����Q��%�Ә�f#��э���`p*@R�8`� �TF	ۂ�HK�H��M,����l\y3P�0�NLGc��7y�[���{q*k]{=�.�q,GgT(+Cѭqww���~��q�:	���c�����Hӥ��DVu���.��}?���Ԅ��(�-��hɐֺY׉�Q7�^J���Cy�3
k�VO��@^<����{��39Ȥ䌚����qO�2xU��]���@���W��\�_�떁��0����4�ϥƍ���.+Q��m�&¤��3j���_��Uo�՝l�`�Z�(�0�4 ��
U�`s���^�C����w��*�@E躩[�_�8�$n�ͱq�I=u������Pl�������tx�Du���i��ڔdY�ެ�͐���^Ø`����r;�B�X�ñ;����j�����]*���u�	8a���5��j����Ui�C�v������r�7:׼0$Cw��c<��F^��������A	@)�P`�+���M�P�e�3��w�z�?!����U|�A�Qm��M�e��J��)�%��u���T�z�~���ɁP��|�`�ߋ��oĲ�Ы�� `&���^NG��X��V��k���ů�d1/�6�����P�TI&��$lJ��F_����'u��2cjl�O@mM���X�{�Yat��G�P_?V�͓��܂��:6����)Ӵ��z��Ɋ���D�bmÁMZ�TV��P�m�L^yl��]�6�x(PR��l��$d�*�^e;q�����߁~SxlS<��#�|���՗�H��l֫��W��|��m2`�D�'��/b��Y��$S~��S��C���3�D�ڭ�R�89�Q�דΆ7�0C�c�:CZ���Kը�	��al��$�fO��U6U�UWu&]�=*��`�f��V1 �
֛R��>�{u6�?���n0�u�ĶlE��7Y7|�(��l].�;��X�������@U�QMh�l�$�tM�jG�D����Y���bCElsNceԐI��<��+Qb	6�SlL���*||PAi۬�IS?�)����OdR4�:����@������hZ=��]E��#1_<�u뱵����������5bS1	���!�����Ԩ��UƨbX ސe�,Ն���V��&Sv�u~�ЕD��E�P���d�ȄC����J�O��45�LF}X�ތ�����VE~'�'���6��o_Mٺbdr���R^L'O	�����@_(�=�b�ݯr�2�fi��Z��n�K�//�M�#�h{�٘�fc;���H6K��� H>� ){��o��s��$9����P� �Qi��}�y-�4	y�4�v���U緍t�N?�(w�h���ӽ!�B(�I�j%t-F��C'�7�-H�7��
ʘ��H҉�3mp(Ŷْ(V�L'��G��hd{�c���U�莡�<�l�j�M��z��2N��.��֡��5�c�+��rm��ce��bA5�wE������ͱ�{�ԒJf�d�cb���(�Wb�Oi/�� [1ے7XX�J��u��4���k��5.*��t��̓T`M�t)4}B���5���?2��@�����k���5a���DV�M�\���tغo!ҭi�,'�+g���"fDx��;�6��Փx0�'��W���4��J�i��l9��N_�T�9d�FQ����rvP]�졚0��m���d&E���yi̱'���2�����h��>�^>�EEtp��VY�/��ͮ@�M���ˣ���Eat�,J�k"^)UV[�/Br���r����tWd����ؚn����p2	���RN�������4xu��w��U�� ����('Ģ��zRsQ�K��� a  �����N�6u��.���$�HqŰ`�-��B��:������Su̷��r�P�*Fzl�-���jF��AnǛ����n^���t�+t�փ����ZUN=����k:���P�<l#��֨�[����Q^��-6��m������2� p�����%���0��#�ǬJ � E��䀃 ���Z��֏٬j@�t}���� :n�e�x\����?o����ᔊe����d�$�F,���׿5�a�{qtM�zT�0ӪЌߩ�����g��:D��������0�E[��:Lb�T���WqB�ƲD`�o�%��A'������v�N��j�N/��ft�n�s2yWA��K�\�m\��$���;����P�����\ՈMT����;��;�^����%l��~�> ��o1|� ��������_�k�=�z�7U�
��uy}�ݷ���{T�VU���܋�X�x[��RӪ�a�c'���?;��qj�5�A������a���0�@O߶V󪷺z�mi{自㹾J�թ4��f�8�`p�?u��� '�$d�z�0�X��:
݌t'��R|�([D*�x�>%�8�2%�H�M���uf�|�;J��!֗�7>@�u���n��<�F�^���!��(_�Cvi��0�E���l���Y3W7�ҿ �ZTqX~���sY�w�T�R\�����;ڞ����Rw�,��T۵�{�5&�=3�6��P=.Ĉ�7�_ ~�(F���A���tx����z��9�̀�Y��'b|�-E3���]�,�Ȩ6�Ե#�](bJ�`�!],A�`E��$�d�,Z\_�n�U|@�E'�=�4�٢(4]��Ʊ'/Kab���8�͗"��5���*�2��+�{u��������n�����R/hW@F�4t_KO��0@+����F1�GN����hn���]�3UW^㴪����ؿW��q�8T;?��y�<��2�� ��gZtޥ�T��II�T6�M�6�:��j���",Y4k4�k���,z:x֦�����ߦ���1]�hXWv ���p��
쳮����j��5�?X{��ʿ!�.މ|��O��c�U㶽v7�xA(�C���@3��M������)kmEY����4����tHm�(2.۬x)r^��4��!"&QN�L@϶�r�rgt�V!��r�)�5��|�p��I���s�ΈU=K���񺮺z��5�#C}���� w<��L�/53�m�E1#*	kFa��U���⦔a�f�������D��v'i�!��G ��(ϫ�n�.!��	p��,� Es,�ܡk�4����"�_=xv�u#*���o�쫍8���|��4B6�ٱRX�rT˄*U��,��6p�}
F�,	~�¤��6)�n@�y�R�V�\���v\y_�2ϊru�ܜ�S��/KR�f�|)�cl c��+�d��ȤF�u� 
�y�����I�:V�����Q�=�!�ln�$�lV$���p4�q ����I������5�ҿ�o*�o���}`�ѱ;�㬥�ฏ�1���� /P��.�J0���y��3�����>�>�X�BU��_o�tB�l�N����z�JC7�F:A7>c����\��V�eb6!�K�v��K�������LYH
'z0�lU��t��d��*('�3bF��@G�I���.��&_�q��1%i�B/��T���w\ı��[�j���h'}��K�f�p/0a X��Pq?)��-�N��o^HӭnD���Gv�˶:�E�֩�>`ׯ�.��$��\�S�K0<O@lۜ=w9�%�-�5�b���֠��t�\ܬ ����ŮwGt�U�M_���;쏓%�z��/���~�D��N�X�lW�8�G�'6� ���ہZ5�;��;YڹD���9�M��:3����Fw������y!��Qa\�ut���O�'�:�<B��̢fz8'��"�_d��*{��'@�nq���C�*k��D��R�kX`X]+L�����[����N��h����8=m��?�V�F�F��yZ8i]�!E��q��\��t�ҫ��"�����ʬ`TU�;�^���:;;����:      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x����
�0@盯��&�j�9���� �KsM#y��������r�38s
�$
p�	���F
���m0k�Ѻ���b�Ų�GG�Qۀ3��a5l1���Bp�$����Sa=J��S���y���Z収+Ar�s�'{j��Cj�P���k��<�e&�Z�l�2Y�]0�3�^��O�      �   �  x��X[���~v~1等�>���m�E��{6&he�K�3v����d�-��pN�n�ČN~_Uf~��nD�F7DSn�D�J�3r��<J�ZD�oo�XS�륲
~��J1�����^yڅ�m4D�~!�ls̄d����Mfl�W�Y��OZC�\q�=��h5�e\�Wd��L4�ɡ����x�&W�:����qƖ|�ړ�!a�xoߦ� �+(�"A�@�b~ڇ4��T�1��|�ES�UA)���;���K1�e�~g �:@1����;��9Λ�&�T.�0tiNo�m�H �Y�X�*�a��YPQI*����YPI�*�q��h�Mː��HM�XK�zc�V�,H���ʑ� �RT +4t�������BC�BCHZ[R��$�@Vh��+"T��$�X�BC�Th��j,�c[�!�U)��j"Q�����������������C�VC�BC�VCP����Ƀ(F��y�q��W3r��ߞq?zh���zc��z:Z؉�U��}�`|[�u4|q�W�hE�h�:;�o��|H����cD��k?r��3Ƿ�s��KX���~��M��y7��^4���YZ�n�6"�t>��x)ט�:�866��%�Rg7���U{�<|1A�g,�5Z��+��?�3��}�>�.�s� �8���x8�C��o~8�>���!������lS�v_Z�/�>��t��[��璺����>;�)��V>��m��=�������?=��t�{3�<���=��v7�}������+Rc��[�ׇ���~q���t�+��?��9������p������λ�-����?l�b��h�;��Oݞ|�C*��!���|ܸ�k'�W^���~��y�����<8mbq��nd����G�)s�^l����g3`}w��s���m���m��?-'�U��]�>���X�)҈��\�D�Jz<c*��g�L�tz0.i�WƧi>5.��WƧy>5.iޜ�(M[����n�.u�IL�m��5l ��[O��ƅ~�3&�ƅF�3�ƼPa��UgDG�T���6
���nm�<��*L�&Tɥ� ��������h���h���	��2����W���h�É�Z/7�ꣂ� ф��uA�y?����8�g��~��4^PJ)���o�mp�ZЍ֤B�i����	g=PT��J���O�}���O<S�O����Ԑ�	�V��\%Eʍr���F�*��]�h� ��
��Ƙ�s6&5���1-3��3�w7zC/��p��m��qQ��&�*6�/[����l,2cMAV�-��.�b����2X���,�Z��P�2�(���)�"%*L��0�)�"�U���#��BCy
mY��)���9
��HWE�p��s�+H �5]�tn�sD��&��`�Y��-�2�L�4Ț�6U	\�t*Y4]k?&�n�>Pۿ��5�L��צ��_��^4V��5�,D	��C�T��DZ����S0�*�ĕq���2�<��쀫p�B��~�s�4������x���+_Da<��?�ڑ��H�wuZ~]�4mM�Tv��:�JO�^��,Ë�3�c&��ɠ�(�K�\��|�Z�t�,�Fae�A)דt��{�-���G�QZ��>�ut�:EM�T�1�fƒn��;��1�:�x0,_ �6�20Ƀq#UGT��)�r���B�P	���i�t'�`�x��n����!��0��4���hEMN�8W8R�:���M8�DB7��q
M�|�M;[=�1���B��6M)��M�ug>����;�DH�ֳM�Am�v�-ϢAQ5m�VF�a���T�ۖ���Y}CH��� <p[7쌇gx�/��g���0Y�XoRM5HX��8|��6����j��q���&��EYݥׇ������IV_�m%y�H ��6L��PI�U,�S���Ryھ�a�W�p<[����#s�ԲjyV/��f_CL����J��)K��z��z3���yK��%5�B�'�����PЍV�
��d�l��&�������")-�H���|�k�L���]�괠t�ӱ���z���V��a�P1+$��jN*�@��;Kj>R_t�$`���a:�*�p��~DcPYF�	�%KDNe�ET�p:�.`0�n Ü.��V�|���*yB      �   �   x�}�MR!���a�0�D��n�$�����Ib�h�k���'�2�z1�}��P9]E@v6FKƛra��B�O՚J���q��Y�w��5�#2<����]�4��|1�]���/�&;c�ӆ��t��n�O��"١	Ѵ�*:`�BV�r�tW�\� r߁�?-ȋ�O��ߐ�#[�v�!}?P�5VCP���~���J��-��Fn���a'�*�m��%r�F����}"4��v�a�ʭ��� |���Q      �   �  x���ђ�*���)|�����ǩ�X���&!'�[�۟4�ש��hE������|?��<_�z�0��6}37�� C� �f�PJ(E�7�f>����;����ax��L1^��7���}�sB�=m돔�x�c��_�u��[WU�%8�!�~gP�u����l��N�9��,�9V�$޲��`�/�w]��ҊcTCm(��{1*T"��ֵs=ڡ�f��&�s�m[�G��*JE@�ů��D��sM��R(Lj [0�1?��
e0� �0�#�u�������i��ƀ����wnƥ"�T6��"�!|��k*�\�Tn��S��mWO�;����w�v&�^U�ΒIr!�'���� "����]Q�џ��aH(HR-���$��0�ߗK�Ї�1��w�ٌ_��Ȣ��d3	+�mJߛ�NgJo)Bz�KX��l�?z��B 뉰!�ܧ�/�P��̰"��y�����_*���Sp�u}e;?��"�Jd�C�So;ˡ�'7��* �G�ȹ�;\�h��+s��W0nLҡȹ�w�@��t�r��W"72qu����9�;�ǊV�_��u��?�q���~���&h���Ϧ%�M�X��:K�I�2gkH����!L���g�pz��1&�3<�0�(��SC��7i���h`u�i���i����Щd<o5��v0�#�T�wB��f�*D�FkL����.A�/���i���T_��0�g�Qi\��� )�x�h*�ۊJ;�ϐ}���C�!/�,���d217<��qk�����Q�c���7��,��A-���w_��z�SՎAɈ��Z�Xl�O׷�/�$EBQJAz�B���Vss�_��6��E����z���u�� S���a�>�(��dZ�c���K��Q�����cJ�/      �      x��}G�#������6���f��{N����������7 �
��'�HsN(		�*ĘīJc�����̀�px��?�Y �w��D�0�7A_�pؿdi��x2��k�<��2��+mn����Ã��@�a��CHLF������0��"6��䬬1,m��&��A���7��>��|�v�K��ܵ��o�z^�z=�aTg*��r�jt�="�����22E_�2 z��'����jݐ�i��������T]�������&wy�Ou���f�}�tgj���1�����Ǆ�X����ȗ`��-�YdRL�z<�|Z�8�$(j@`���>��[Jsqf�X3+}�M�:�Ǔ��.4����U:�}�S��/����if�X�Km�-�v��*R�ʬ�D�~�~#{��,�8{D�}�_�=�ޔn[�;T�f��i��u�^���B"�z-�ۤQ+	;���xj+��m=�"��O�l�:[����'�d��]'����*�������������]��/�x/�r����R�P�!Ӌ�q#��b\j�'��ʥ�NWZ��@�*���4�"uo��4�{템�s��/Bq���������Y呣E��U`�����G����[MfY:<��B����V
����ӡV_`�p����;x��(�]���JkRSO�\���D)��s�o�_�<���)H��U4���zaǫ����^=��apw2����B��|��1�b%"B�mT���vك2�WE���L.���viy?��#�N��L�v�.&*����%��^;����/,q��8�?�IH��V�� �|/��X�����?W������킎lL������v���:"�s\<�ͱ�k�'<}�=�( �W��lBE�(�	�k�,O�{TQK>#oy�wa�]0��0����$�=��`��k�v8(o���1�Y�$c��甿��J[
�.���4ARp�a ���_h���T�6Z�D7s嵕MG��^p�j����Qw��0������c��]w	��Ĭ���]"�jZ���k�s�J�zWU����h���=:�b<尴�N,&��Ot&�%ʿ�3C�NT���q�
e�r�7ѧ����;'t�웵���vI���������#Z�B��� ��/J(��yj�u��3J
 �^��o�0w�O��Yu�SopM��hSX�s�'J�l�dS�V���p�wz����'<��B��w�-ijD^啦R�G:�U�O�����Y~L�t�o��q�_F&���������lu��O�ܥ~��d���x�C�t�7
v��ij�V(r�����w��=V� <	F�E��I�5�d邏:w�}�C�G�;R�@���j%$~w�"EU�2���.[�	Tã��*� �?�Z�#ٮ��<[O���dM�h(�A:Y*�6��`�`�������K~G^�&)$.bn����+7�E�@A�>��s�&p��&��8��;�H��C�i�(���s�f���Ox��]����"����͌��Z�d�B�]�z`����y��������4>�������p8Y���X�J���M���v�]��J�����3���:?�PAu=@:jj�����g�E@V��t8\c����}�;�D?!ӻ6��j�\�d:����0�ޫ�@�Z 
/����G>&j�G!_���P^7.��l��w�/���n�0n=��Go��9>ƿu[�����cJ_�*�	���)b���4#�}�u pu�����k,�gE��6���=������)o&V��[$��.��\����˘~ΉߋoP�����fԂK�qں�J%�������!��M�sz�Y���M�&Q�>W,��3��3����Q�	_�]���;�EJKj]�3|(u�#ω�!ee����;��0l�]/ی�faWG�~�i��DWc3c�հ����O���Ӯ�}S����Lp�кi�5�npT���na~6���&����(��st,��#����E�ح�̟�=�)�s��wUv��G\�]�kҨ�7�[�h�J���9h�����]y]�E��]�<%G�GU��ǅs
u�R|��xo�[��>�qǱ)��Muڠss�6���,*T5ԇ������~��1����cR�d�Y�7��6#@�N�i��k��M��a��?�;}%uΗȷ��.�Y��qT���%8aad>k�*r}�ۇP�TX����ʌ/����:�s����8�J�����v��F���^U�,�+�+��1�IF|����ہ����.�m>��h|Z��]o�������o�z����Ԛ��':{>b����ܲʪ�w+��ѕ�Tb� ul
%�c��R�����,Z�\VQb��V3����$����eU?��Z�\<��k�]~�K�����Q�`�SІ~��P����)V$��n3q��U���v{��y�<��b:��Y���Vm������bP"�z���L��j�XM�����z�A�,�'�{�u�Q��F�Y�}0&~9��bV���Viԫl3�?�_��_�� ~W`gl���D�tQ��z(�����ʻ)JW���O��"�muJ��6=Ov�p�l��"�{��:�	O:u�E���|���H��
$7���4��"�)��n�D��-��
rm�z�U����lnZ��y V������Z;�Ox�+ ���4�o{F����Z1��#E+en�	Gr3�B����h�pe<�u����_��o�����<�QG�0'����J��S�.��
�f��JI��q���s�v��6�����Qn�$>?��H��SUـ�g_�B���7�A�e��#����ڂ@� 
����RW��ϣ�Gp�j[z�!��N���(l��%�2]-w�������voxB���������@�I� ~Ws$�A]i>ɆV.�{9���E�����2P/�]�]1)����L�J�B6���b�]ť�<7����p�(O��Q��T��������O��>tV������Ʉ)$UF�xӶ�6�����zG����Mz�K`,��ꫬ�i$)���b��V�q@����'|v��ףG/i�ͥ�k��3��8G��q�]oU]��i����5��$�B��x@x��duJ �[��U��8����7>:���eTJ����~=J����iMQ��";�e��Ġ)�#����y5<���湶��fQ]ἩS�U)�(�M����7q.��ٔ��hu�gn:)�����14�}^����?�u��#�@|!�x�ޫR]w�R3Q�z���(sfR���E��w
N�6Xj�g��==�˞���ȼvJ�Z�yz���X����]�������S��TO��-�:f�ƺJ���� n<���y)Ӽ����y���1X���j��8W�౛��b@��|ԅ}�:��w�±�JuG�� FM��Y*��'ѭ�Tv��9�{��׃A����
G��@3����x\܎�k15�x�z�_EW�I�A�S�N�:y��n�K\�xnS�d�����1-�*��Z.g���kI�h���51D��t�(�����w�ї�xG>C��U2I��v� %S@b)��ꪖ>B��c��ͲR��i�[h�u���"���4k�W�f�%q��Nt��_�/, �hb��������mhZ~Y�.�ʂ�$QX{���+9VW�䲼���|���"5C�,[{j���L�g�U��\|���Ē8���[c��YU����NW}+�-�T���?W��d^�'U�:��o<���Dm�Y�e�x�ڛ�D�����%�_J@zݮ�-�d$n+�t:��"���w���F՚������Y,�2�%�oi�v��g��i�>ϤiX-D���?�����/. fo�W�a����NЇI�i�ti`�U�"�P����E}q�ٶr��ٛ���E�oo��6t=�ͥΓ�{����qZ?&lT��c1��_�tŎ�gZ�cL����LIp9��4��k��V����Uh�=d�v�[(�E]�33����zس#W����F�>-��CѴ��=o�le:�oJ;�    tUM:�?�=x��#9��?m	��G��wm�]+��Q�ʢu��ް�*�1���C��s���e\5��Y��?��}���An>	s�G�>d���6�.9	��;9�4���n������i�J����Ġ��o��/xE�ҧP��53�:���׍:�fE;_��rjo�|����c���{�!��K�١as�k G��ZR �^4�>�2�:?[Qh
�8ʓ ���3w�m�]H�v���^��篮�%.��Ļj
�i��ZL\�o��p[G���?�\��a��n�xe׳2=��F/Ftv#�1IuqT�0���?o�*��ƞ�+��'^$�ɩQU�d���EԪ�� U��{��.�����py�,?^z�m(��X\4V�B�>��̙ݼ߆�����׼J]n��(���Do�2� �T�̨kEY��^��o����J�ݿk�$��Ŏ�i3m'8�M<fO�Z5=�Y[�Ox����a ޕ��G
�E�ajx�]1��s��F�O��~b�,�P��l������&C`�펦:z�F���t	������}ŷ��s�����63s+�ۿ,H�Ķ�O�w�y9>_�]m�f�i�V��w�����H�V���$LC�Ά���/�S	�:�d���iZe$}�::�8�f�V~���ܕ��;n��֚�\0��������-삓��4���O`Wy�$��{�P����E�5���;����L-�8kI'wG�;=�0���L=짱vX�e�ݪƸm��r�y����F�yi��R�=����/�<u`#(nTRn`3i�	���zc4m1���EZ��b�W��I�ظ+"����3�s�/� ��ÖV)���R� �ŗ��j��0�|���m\����L�@����V���0Ocg �˵=>sz��6O��Z?x�}_J�w�{�IE<Qc=�Z��$��+4����o%�9�������vp˜۶��������O�d8��A���G��# _�v����n'#@��9��"O�q�]ĪV��S�k����1o'�sl���+nÛ�>�a^��A�<J���	� �NB�"��B��/��2I�v�tX�7�+���l��b���������ឭ���ؑ^9J�������u�ͻ����4+#5W�wQ������NR��Q�GN�N�)+��u���zg�p�[w�.׹�Cr�����{����k��(A�{�Fmb���ρѕߪ�U5P�I �yQ�!Ei��ak��L��-�'�2ږ}�����c� ����߻�=D��װ"Qt�۾Du��6q�,�|�C����E�df��v���|�\;�6i�n�����ݵj��-����u�	�k(���q� rI&q�I�.�ԴR��H4�2 [˭�!T~�:RU�
t ^��g�?d#�l'������s1&߇��@���S��U���CI��@��"[��f��.�p���2���3�-0xX��5;Q'o�'�kL�e(y�$�U9M����Ji#߉�ְ|Ū��o�?������4nR��ZMVQ��u�>�횧��
Z����� ����G��It%���C�����ZWc9��e���Ei��ky������֝
M�{��Ö�?<D^g�]	ҷ�HM�%q:��ifV�f6��ENWg��lQY���]���A���sf�Ot�L�+���a2=�"j@���!�=�{� Fߓ�,L53�˺2K��L�0��k�V*���7nQ�\Ȋ	gV<��~[�NOE/��f��<r��`�w�;�����<z�>d���X�Z)jH�KL�;�zZ�|a�**�gis���gp�OE2pW���JrP/_m-�s:#U,�����j(d��i�$�2�|�� P�I|%#� NJ�-��H�`y-���}���(?�I�O1+��E��[V��S���@��;@�6%I�iZ����|NQ�7��
�`��Հ��}����*&ǰ�7^â6��.fWO��$�')�З��B�6�&�&�i�'m�1�(D�K'-�ƨ+&51�����>�m��og��\^V���}�V��Vm�x颫=��?��c�N�	,}�$,!�}�BU,�����\��-b1(?�������{O��d/�n7f�G�;J��Z�,C�@���':&_�z� N���R*"�g:e�[�Q�\R�����<�J�u�=VZ�_�{%_�,N�����h;�g�y��P�!�S��w��Al��VHQcօ��qi�,����ˎ�_RS�	c�jN�g�еm=�q�[vbv����j�Q���V[��kʺ��E\d��W�b�Pl=d�b�J�2�/4''OV��6�����%�7�Z*'K�a~��;5{NO�����?L�_��T���o)�6E!�*���N�+/���v�D	�m ���٨�m�=,:M���t�}�鏛�q��=���- ��R�󀀿�c�:7�o%����غ. n�0%�v����1.����GѮt~Y��� �>Uzu���R�? /1ԕ(�}!M�(����<݊L�pX�Z��P\����� ڦr�'�@��z�p*Mn�4	����:w~?�Ӷ���os���~B$�����?�������tB"�i-,��~��\�6��]��6Ut�LB���[�4��x�l`���~�S �5)ľ7 �N�%n���UƐ'M�xȆu�����_�/��|�^��s�5��29�l�2f�~��5As94�%�����{YnMI��F��1k��(�)��j�
(�g
�Rߗ��Pꮪ?��.���_k��$�Q:����l����޲��ҫKq�ż�~��%�)y��=�y(��H��򭏛0����iu��x鏼Bs�u��Mc�T���\]J#�_���q�g����v`AɻH[R����͈��wr�{~S��ﳐ1���m_��e4��6���b�eg"����6s7ܤ�`#�y�~ ��K@D{�?7����v���
d���#E 4�F3@�dG���7|���.����ʱ#�ޅ����TY䯟���q�")���w���Y�5��U�c"4j��]H����R2��I_#c�yk�C�\K/XO&^Q�T��V�~<�N���-��C.(�L��Ԑf<k�"��&tDmH&p�F� �ˀb/��Ӭ���޹�L*�3>�}Ն��^�HpT�?xQ�N�J��4I�`�f�K�����mĵ\7j���K�VVSGk�DCE��p����G3?����zy�X:)u�]�?=@ȷ��6�v+�2/uh�Ij hW����y� ��%6�Y.ȉ,��%9���ǰR���$��7M��Ғ��`���}J���C��/��(�۶�m)��*ׁ%�\�Y�?1�������JWm1����=��|&�fa���j�V�Uwsv�4 �/*u\�}�h��z�7Y�'��+n�� �[B���y�:�N��i��n�(��S�Qqm>��Iá�����%��O��\H}_���5Eг-b ��4+�J�$&Mj���m#����1��L��x������d���]Z�.M�����ǯ�,캀�I��[�J�V�r�
���3�g~aP� Ibҏ��|� ٠s���?���]��t�+�
��U���*f�����吮�/��w	pp�u�F]w�O�iRQ�9	��q\�O�2˽֟#��j�u���v�d����+R���f�E'�d����硴��������tX�~�S�
�Ш,2a��/ѷ/u�Oo����7׆z,�;�:T�~�}D�;�B���������}���N��ԄD�Ij�0�X!���b.7��D߾��cK.�M���y5��A�Uiܔ�VM�������2�}�����G��K1}Y�䪦����)6�~�燾*���xk]��O^��69#���J�}e���!�3#)o����Q�i�T�Bي,3Ja���"JT�E��tI1�;zn}�;X��[C���f�`<�#A�N�M����U���̬�9�T?�;
�:%�d�w��V�e��:i�Jm��0P�UF�    ��)�sM�D��ÃI����3���Uf8"�+�z�&����[�������=�������;�4FX��6*����̌�F��m�6V�/j�]d��LK���h����eTg�gp�~9��ؖm�7��CT|�~���RS�8*j;�(���5�JT�Tr�� 9:���А"��.J;k
�� �;-��n;]::ы���'<y��_@��f�yj�FN�ܫ����P��ul���b~lN�첟�g$/.{��2gi�Q�~��F��!w����B9��?�!{�B���MҔ�0"�Ru@f�H��m���L����������g�k�ڊ�n�'�K:����&8,M�޾%�z]����A�.��F�O���W͓��$L�$1Z��؟��[sO*#�~��j5�Ɏz�R�笺�j���5��w��']��$��-��S���N��(FV�E�c�[H������'ɓo�L=�*Z���j������U����dN� k#����܉�� ���A73YT����$
��9��Oá|ݡٶ�o��Y�V��%�m�c6�e���<�S|�ק�~��W�~��N���g[�fM��	{n��u�l���<�����Pn}�� ��D#-�+�s�|ĴX���<�.��fGF�s��_��̡!�=%�ˁ'�t���̠�2��+���L��Fa���M�7{�J�={�34ؑ��0���sm��7����0��:S�X]�x��y�'y][05��J/�"�ߙ�Ac�=��q���M�cڸ��7z�kf�?:�1�j��m�$����5��Ғ�[�_I��'��M)~�Jv@C�c�"��I�]���g���n�H�	T����9���	�h����wԎu?~���I�x��	L�6�0p��LG��8)����yt��RؿOr���������Y��P9?��b�����ake���qj�~U�$�}���L����F��n��R�'���߉���]��ܮk�`����a�΅���xS�)���9Z>MW�{�_b�^_1x�|]y���wOc��Q�j,�S͡�����.�,����Ž���d2/(����?�醝��c&��>%�%P/0�&�����x);�y �omK� ʐJQ��ihn��G�v�2�4�T]Eέ���{`�~�g���uw�Ƥ�Պ�;�v������ |S�� ��+N���M�t�NSPXu
k3�U'I��g��0����:��?o���%;�F�����w�]���������/i-Xם���R�t���+*���/#�U�R폇V�"�T�,�AQM�-�{R%��U������<L2�D�g�	���o@��A����J�OE%D͍Z�u��֖��7��j>�/j�Rp�H��%�-��:&k��U�+�˪`_G۟���
Bƿ�� Y&�\�5Cq-ϰ�u���$D[�o[TX�5T�n�:ڄe���6)����C�1nա�t��g�@�z����m T\N%�.D�f�e�Z'B�JD�$i#ѿ�xK�9�6��σL˖�P���j������z9��{������ߏ#�����Zj$��\#̸�늑����vb��r���Lbu���;jۿ�w��z�>��60�O��\9�ߊ~���(�pJ�_�Y�5��Q�u��ph��e��Q������{m��zU�4�F��\��#�&kO�F�n����5��}���G���!ߏ�#�h~�dȔp�(�'8�;e��S��_�"ղX�I�0����i$f�6>��L��n���BQ� �]�
��!��Na����5.����|�UD
��b��<(�N���_vh�۲����ϸ�$�&�3�X�4�f��q[lMU3Y���B�?w�o�z=$�InGˡP�D⾍�؆�-R��L���-ӿP�d}�L5���K�:9��Z�<9�~�䬺�ɳk�S�a���`'�0߷e�au����"p�D�xi6�"��_#5�Lǧk�=���"/�X+t~(�R�<�S��)�@�V+�-����=��$2 �FS�NQ�i�6uHT5Ԡ���ҳUi��N_},;�Κ:`3�g�2ݶ��6��ϗ�cJ8��uHUݛ��އ���b��7�vY�9WES���䘊�V։�4J��`�rb\�8��Oh�I�g�¨�h�J�|��T����ߏ�0���ہ��XeF�NHeyc�R����W�0F�9��َk�t���Q���E��m�J0>O�US6���Q��w��J����5g�|ڠ������M��I�(R�Æ����sv���@Z���(���xX���
�h���<�5a����W���;K��S��	�_��1�\�ZA���+��4QS�ځ�����8ɤu:[X���h���_�V��9ͳxZD%������ �z|�%AA�頣:V��f7m������_w*2���F��̏�2�/�z{�M�Ÿ�2g�{8��Z��8��m����?x�z�y@0���}J��Ƕa@�
Q���	�*�v�E4}ӕ�"�/7�\��w��<����b�隮�����{����-xwc�(��_=T-γL+P!�b� *��A;I�q�D^�`fY���<���|�ڎ����ӊY0ل���Ҋ�0��mA�>�`�����\�X���Kak�k�ȶcX��n�� ;|4���K��Di�6L����R�w���l?Gl���=M4����6󺕃���V�ƞٴ �b�lb��rIJ����º���W���O�P�l�"e�������x9� ��=��20j���������3�"��VePM;M�^U�M"(�m%Q��
�c���2Y���1��}_���f�ַ��X�g�Ήj�<v�2�8��Z��̀�~J��eT�ɕ�c?jYͣP��?���K"���G�qqͯ�Q4�g�������`m��w���>\ןP�����š7���ь%*�j�j?�tF
�BF�Qb��\�T���W�i��n��t���i���	���L+<��÷��,�#�Jߚ�%�YCC�<E~����T�&���E�:��t%���/jg<�vWE@]�x��7����d-:6�����|�5�z�F�]
��b�kp���P�)���v*W�j�u+_�?@�N�#�2/U�� 7��G��u;�s�w�~��C;ߍ�C�O@�]���#�B��yנ��I�"o�*�+����i�G���Zgo"
:&��Ŀ���1�/����m��8^�c��S�_S	��%ޢX���`�f�g1I5��P*�P]�`�;��
�s�r��P?K�d���@�v�֐z�):��	�5�,|0��U���'>���o:	_W�� ��w�S�w��qCnCF�\k��8t�G���� �
&g��갬��H/c�����ƶ?x�&��N'��mS\��w�߾ue������k�+��-��I�iz��DQ԰���wܿ�<�9[᥶�#o�����5my���C�N�:�L@d-B�L�1 �WB��y�����GAR�>�X�!$;*���br���N�Y���Y���:���QpY�Q�����g��.��WָMGZQ��n���/�9������1�D��2�mwu�3J��n^<r/���k���&f�����Jv��`E�湚+�2&��}+�m@W'_���u)���#vG�̮*�"U�%l���:�fR�}0�;�F���i�N_��Mh.��i���seJ�x�=n���`����$���e�LiR?�M��u�x���˹��� ��Q�3��%h}�GS�N��]ҧ�Z�*�=���E�XՌ�����c��b���S=H��YE�F���#f���5Ȥ��K���-U������z{r'��(�Q�<�vU�	���ߓ�����ߦ�.1�rV1�7k�V�5�af���u����;+Z�.+�~?��a�\�EK�/�S���G�d4��AW$����x�������8��2)xa�����TW��@��jN�����O���&S|�'��c;�&Ҋ߆�>�����>��mr<�7p~�.u��A���;��'u��!�s���QIn�q�˴�4@)M�o��#�*�|��ʹl
;    q�0̲�(m�8�4p��3���3~?��g��?E[�i踐���4�,;�R�`���0��uK�~�zɮ��>�?�ty��bUg���Г��\9�������=@~}/	������1+�7[G혓�amF�^z8�l��F�4���2Ċ�W]��A~�1zi}��u(��ø�����Oޢ���0^O���Ԣ��(�Vľ��n���"x�_�q+'�TS͗��ι�KŤwR/�����#�z�S����������B�{x�k��*������tjϬ�&5�����9q�a��<�>�sϴk�/�,MeyU�����x����_�����G����KС��T�������a��J%��!O!>� ��=O���	�'�3��ax�0t�^L��Њ����'�i�{�&
�{�Q`�	5�1��M��,W�,s������yd�u�9�Z=:���%�7m{��4R�/�#r�i|8�c��v��=y9��Y�J�Z9h\��%���9u�ۀB�0��my��[x����-�2��Rr���`�p"f�S=N/;��0�����+���:�Hr� XO����Q*ĺ4��_kс<��s2�<*����=��[��V�/&�猠����f�{��_��#J�����]�/p�*qX���Ja��V��̀�I>>��PL�\��G���؂�˯<��󎃏�ֺX? ������2���b1lyϸmݤ��1Pm����-�fH�_]�h53���3�YMd����`"ظ�ٷ�r_?�/� �(Վ��U�R�ʡC�p�z�X<����/���҅q8*����l�_ً�V��{��j[h�,��e�;>{�����
���$������1����ҳ��ğw�:�C�����8%N	7��q��0\l���Ǔ�oIǞ��n����uG��N�ˀRe�P,$�9�H�Koj�K0}װ���5��gYa��_���h
�K��a/�ݚyR�D�91��%��!
_�X]����C4z�a�T�-��6�
�	��<�s���=�s�����6�Fz�y�Țj$.�0,fR+U�R���.e?��k֝��d��m?��R7]C�y��a'H�A"O	տ�֓{Ҫ(�n��a�/ۃj��&��^{�ThSmX}@��SO�{��?]�4j�|=QMS(�$%uT�H��UG{S^fڌ�Z_NV.�y�5r��ǰ<AO�j���wv�Ӏ���J�iZS�I%�Mh�iൈQ��/x���(-N��5��SQ�i�<��A45�����`��������:8���큎�a�e�;�	�M�Dtf)Y��3ݲ"�I����|/��evw�mb�a�єCnz����U|�m�^�f��4���(L�k���C�xDm�PQ�8�=�z�!**K��3��O�c��h�G�0��5�Ϲ�E�ި`�"W�[�뮗���)�}������0�"q����Qb[c�kQE@��}������i���ɓ��<�=�(����?�� ���Π���bP�fTzJѱ�o��)�<��W�ʳ*�,S*Q��3�ٲc�@����\:E��8>�W�f��n��eL����]�������7�E;�(�Y�U%�,��a	1�"����jI�Q�恖+��u��~�F	�Q�X܂cx��&����/��V������Wua�*5E���(Q
EGK�L"��8y�Զ��|�ۀ2E���f۟΢Y�/ꢿH�^�uv��n�؋xl;&Ԁ?��DG��7%ύS�Y�<%n���0`�Ǝ����$��j�O�5Ǝ���z%Z[V��^����z1�Z>֏}�ޤ������D�ۀ�k�Q&�Wj���)*Mq���Z�G�M����}��E�`�H1E�}:��T�����y1o�)�Ƞ},�����+|�%&g�;I�rS�A���N,ے�u�R����T�+�\�Ů�����{���قf��ݏ�HY&�ڸ����O���}b�/q�(~ǀ���DP����{D����$'�ʘ���\�䳚������}0��US�h��r4��A������O�C���.���h����+�j�.��UJM�[���0�[�4~0�:�*��/4����g�:v\Ǖ����/D1J;�-����s��?I���W��ȪSy,��lJ���ͧ�2�����H�b����]I�%a�C�Y�3ը�TM<�m�����'ut-�b|�\���%G�^��p�X���y��Z�sўW��a����_�n���WW�q ��g-�.jy:�s0#U��悖�k�ox"�T�Ӎ�2�	7�%�5G�������p��q�����zҿ�盛�]'�U����M��^��q`9�]�nB�X������$��dq�{����G5����G܋F�S$�����0�R#r��~D�p\����A�b�D�B�����Uy���m1)1��A¥5Suk��	�>r6��F��%�|'����sA!!(��Iըib&�m%U���U���omĖ)I`t�)�h�	4%� ���%��]=��qc_I��ӿ���<A �4HS�T�bj�6��أ����:q]�>vOǋXtg�+�'���.��=��P���f��EO��<�������Og�}I#�y?=�s��d-lX��IZ!T�,�Բ��~�}�K���閩�umv�e��9�7�����%��F�k Q�<{�G/���L0��eV>.=�Re5�yx������L��������D��B�d;��W�[-A{&�����e��/x��8*p�g`,�T/�P��v���f)f��m��IX�.h�饦����w4ޅ��t�Y��b���,}�-}�>7W���͓-���]{kاDc���ё]i(��Te��k�P	��X��C��Ք�_ܣ�|���.q�Ab���(?O��Z���������@�����]>|�����8�TӮ�X-'0�0���ɉ	l�G6���%���A/����8�wz�	zvZ.$�N�� j{��m���c?]_?��\��1�[.����:'1\d5�P�=�*��{(JrQ^�-�U�0{������8�t\힛s=v@ =~���y�U;��6+QE�=��^Q@Z�D5�K �O�3s��Ir�z\0��B�����	A�WL�[�/���/%�2�Y������ȖC��R�e�haK�L^�}�4�}��b�2������á������C:���g	�(ɒ$��o�.��e\cB����Ah�I-Ҋ��.s����ڥ��|S��BI�!���u���sh��G'��I4n���øk�Y~�ӯt�.`�S���_Bf �&�Ut�5� f��6�x��力��"��2@d�ڍx<q�K��+�e�̒����&c�<�+����Ǎ-��2T֦m��%2WN
�05[��z�������=��]vE;5�ϐ��	ʋ�e�lț�zt���<Ϻ�.�Z�ًC�]�b�$Bn����W�L��=q�y��D���;�ev�,��#��D.[55�<��bӜ^���Ac������ �aU�?9��@��*!��4R��Mj52�$�x�t��^ԇ'�9�¦6@CnŚ�B�3�dM��Éf�/�}*/�O���L�ۆ��O�y���+ GKB�a)���9�i���	�2A��^�&��5�[�bٗ.�c:r�B!/k����nhߥ��;��6���x?�LN��a�@ؾ��"�*��8�f��Mr��b�������`��{K���Ix��q��|y�*����xQ7^�G<��_7��(�y��ըAX�ҮXM֒�7�x��D�N�t�^^�X�kvj��ј+��|w��*���K����r�+�w&w+�8�ve*�[�b&1VL�={S�]_���q7LZ\^ �7��	��c?xݖgs�=/�
s���~ٝ-�D������r��Kc�� �5E��ʬ<b�X�����O��P��ӽ�A7�Sz��j�2�,]���YM!j�$��pm�] ��\ ���Z�G�KyS��@RչNYhg�*�4�T}S���|q���>��GZ    �����1n����P����i� 0��{���B�ڏ�K���b����n��ØM"f:��@�B���߈������%~�p`DQ����v�Ǜ��l��qW�����,� ��ꋹ�ʻ�,��>l�*
��*O��{ßG��ãTN��#
@�#�F�+=4�k�O�:�H�,�����������=O�A���ij5��vh����s�7�|*0Q�����2>X�6�kn�P�H���z(d������D�𴳸!�{8p����Y�k^\Gf�$)(��s�3B�����FW�F�	u���'��1���bT������c}����Po��[��OG�.���sM��S/ Q�[6�\>��HW,�*���g�W��`yz8uY�w��W�p�ѫ|��2���9ȋ�M���ox����@�J�K�֮���&j��WgF�j[�\!i��غ�r��G�����Z;�g4�o>١���`)�a��z��4��?�t	��Ï�����5���Z�����f@!,_�>��Ml56�k2J���>�7�>ߞ�{>fɜ6w���/��ǯ�wXkk
�֋�:�s��L�IX���Q�.9��b�O��e�3[��Y̹d�%s��*Ym�{vb$��zxd�u�|n��IP��� �._Ű������O�Ƶ,�u�G����#��o*>�]?�+:/q��|L5/�E�>�&�b��͋����w�[f��	x��s�����V� ��Q{�@�O���Ի8��z�Zq~�R�����y�x�rZ8;O�<�O�?��z�-���@/w��=�����*��K�5%�dN@\�ss��j�$�Po=�f����~=��ŭ���_�T�)��7��s���{��0�����:גl�O�i
2
���w���+f]�.�\��H�E�ҝ[�A��I��5�m��fJ����������(��:�y���Z�=Ҥ�t1�j�l�[	<O4��8s��yox��^��tVH�5�"�����|m��ox�o_ڧ�n���I�׶�b�-��\� 晦@yC+����wt*JN�-��-��i���Hwa�04���L���O����̓>�#��<�[�/����U]���
r�$p���8�����s)-#��y]����ב+w���#V�����7��4����������,�f�Q9#f��p����Gv?�+��-Y�4U�IU_پ�O�D�Rn|b���P���䁧O�����o�X�AqoO{R�PI���}.#�We
j�N3��ɷV�Y<8+X�Է��jQ�iv[I�%I��dh������/����/OK�ă���T����{���A-��U�z+�$Y)�>��qX�O�5o�f6E����|�od#��	���x�	�o����]#�+�����0�`�0���V�!����G�,�[��1����urY+����e���s��ox���yD��m������^��`5Ħ��Y0���}8�6�3O�C6K��K$�����������cg�Qt_��#���g����Z
��Eg_n��঱�:a{l��P'��<-���妼�O�F�̑�|n����1��U��/�h��Ӄ`@K�O���PwӒ�@�J/��U�m�����̀��Q��b^Q?�q2,��o.`��v��n%�0�����x�t˰u�����tc�G@��fH]�摢[��G��y�)a8�(�'ߖK��8Hs�ٚ�<\!��U��z!��c!�] ~�G���b�!�eLHkL�I�$+,`�r�:^��V+�!��Å$�届�em���o������Yۇ�2F�`��b���G_�o-�V�1�s]�5ԌJ� ʠ�m����Su7�UM�o���AQ;1dB�恵����s&6_���~0��Qf윿�}_C�.�a��wp'AB��+�z"7�9��9\�t�>3c�����Tx����M��أK�6��FK�78��la�!>g� �W�z���q��F�s%�9J�q��s�́����2���W����M3���*�RCn��<��e�>I��.|]��d@�}�w�� ����&1�='9	�t�,�&	�Bg|�8�����a��a1l8�I��uV���c���YzJjS���.���?��(�5�Er��I�@���HrȪ�1=����Η��+J7�g�3�7��3�_�h��<�F�q��O��>�����ut�����	���T�촑U�5vXCN��� (e��a�O�i���f+l3/�^̊�9�ȃe9u��m�]{{U�}B�f���l�rD�wVjS�o*�����d;�K_�2C�"&���l˷�}Xu$Jg;dX��0*��fC�|�~�,�#�[K��,V/��܀k9g�ylb�3���*��׎��օP����<OaY�x�̉����#%��4/!~�k��㕢z��vH_�?N���ޅ� ��r7(���*��\uC�FZۄ>����~�s�=�~�c�v��w����ǥ��A|+G��wc��n�� �����]_�U�L���ia���~諥�Y�js����{���w�Q�e�Th��o��v�Q�ļ���xG����k��?p��y�(i��u]!�N�H�Kt=����{��[f���8���ϓ�? IbY��&̃y�m,��I���z�>��� S.\�Ӏ��!l�n:y��L�?�b�u1ȉ��ȴ-o�8���<�~�`�������̝�� ��n��ꏟTu�7>P݈�u�8��
����1��1��$��y����%���8ZN�'��ڞ�����fw��t��x�5��?��ܪ���a�h�h�5�8d�З�a�A}�b���t'���`��:�|,�u��/e�o�a�A���b�Y���][�V�P���~���eϯdBm-����
�0����1���ϴ�n��T��3?9/����^,<)n��Ե>M���W�V�=��-~���C�	q�+M��W�Y���F|H>l��Cq�$��F���6��z3���&��\�\<a���zw����<�G��L�ެ�i�J�����A{��x4S,�U�>�������N9cu��>2u�9>�-��c/v�����9��ǽ���Nз�7�L#�/�Eܲ�D/�n��&��μU��<��3�k��չ�{�]�6�-SՔksz�P�AY��� �O��������3�k�5$��Ws��̆#ZY4��c^�C�_8�"�O�%�\�+\�03^���kX�W#9�� ���B���LT�M�������T&�Q�W�PD%tռ��?=��2�[�(�7�0�&�z��I_�jkE]T��,���D�؁����׈���]�"ϿO �-7/Q��|ׄ/Pa��jL65�/��&͇���`V��9g��'�K`_ǌ�ox)�L��.��Tehkr�w��'��(!�jZa�k"�7>rK��8�?�<�����8㯮<R&:����=^�/k���eS����!���N	���_�Oɥ�Uۭ��Q�XL��W����*{
��@����]_hW���Z2�ϥ
˙+eW�e
w"�f�*4��^ �K� "���x.q#��P�J���w-S�2[���1�] ���v�9mݗ�L��.(����s�2R�م\��P���.ր�����P�6�㌶r��R���`d�����Tۊ��ZfB���p�+<=MZ4����'��p=Ʒ�����r-[%ԍ��	���3,}ٍS��2�r:������Վ��r	_0^��Ѹ��_�*%��½�p�����������Z@�
ޱ> �"R�e��HH��!$��
+���`��gi\��F��t��p�.[}��L�犝��������P�����~/����]!kk���mj��V+�)���;�,�"t�ۮ���3�-��ˉ|����ĆVr�^����t����&O���Th\6/� =]�Ŀ�XB�b����i)@j#>f-�����LԲچ��Ȅ2�/]�'��W�lv��Ѫ�j-��u}���w�׻�(x��&aپ>U@�    }�f!\[��P��oDO��}�/.�q>���L�����,�IIy��e�>4�W��wo�~�$���'�k�G�Y;2 ���2��jXX����'ػ��p���J���p��N�绩Z�̎�tw�����{���������O4e��a��B� 1�+���B};��*���~˄��0X��k/�30�z��#������k��X@׷���֥���H(�̼"��9M�iÒ��|��s�T�b5�=K��$h�������p���`k�S͸�<�s���a�����Gr�W�rPf��8�y^R�	�f)�_��X�lK�%�
σTA ��� �q�����#�N���n�ez�����u���	xv��<�7IZc��+�al ���y��
/a%����;��*C������. d��N&Ly��'��O���~�˸}#OT�p�&�mP术[aK����H���Z�$w3&�ی�%{�ps ��-�Wc�F�;�n^���$��n�[g �3��5AS��� �Ni�P(�B�,M���&y>뛴��%�nzm��?��b�R�\�]�9��������<�	�<�R�^��C�l�&h�o��v���Y�U�F~���������0n�N��Pw�Ù�e��_�}y�.�h_����������f_��q�Ҟ�Ç�Wki��P���"�?ο�`;q���m1'�=���l�,C�U@X7�f�ڋ��qG�b�k�o��q��{�{N�ku	�Mb���슙�����o7h2z�'1	㵵��ۛ��]�ǽ�J�k���N������Y|��|�:��'���P+��y\+1�L�l�7M\ץ�\�<$��
�����<��ڸ(#�;��zq����(K�;5ˋ���������&\���U(4�C�-��l���T���t&�<�����z�)=���O���2�.��Ҹ3�n~�L��| �o����ͱ��? �-Ǒy�S,]k�y��"52��I�h������X��Y�Z�mK�FYRH؝�iD�6>=��?�����_�hKCj%�	8R�W����D���+���1����d��Sq����M�+�
���p����,l��^��w������ $�������A�I����h��g)-�.Z ����.Ǔx��$�9�L��k���Х��;��/-/co�U�s�� �;Y��ߪ��2��ϧ%�E�i��������j	��F��|��q����QX��i��L�@Cu7Yd���|DǮ���k���_@��c�FB�Z�W���j9M�n��<�rM�k�ͽ|a�~������O]�(F~�'����R������J���H�I�aĵfQ ��p`c֭Df�c�����?>��f@q;���X���^�ZJԌ̰^�3m����2��kLT�����;%�G�{� �.,#��¹�S�����;i_X慟�>��>F�L���8�F1Y峧-ѢR�L��T�	��F�\� ��	��2U�Şm{ �2�]����ʠE^i���Kv��E�<��v5X��+Qݒ5���d�l�ss���p3�����/
�"�ۄ��Y����<>5e'�mMN�Cs�D��s���F����E���`����uQ�Ҥ�+�Wrޟ#�G8y���z\����1��Z���ql$V]_�H�Z�\xA-~'�%�����*��]�F+	�Τ�j�PM��_��~v�oj+�T���Y�\G�Z�Z����0�$K4�ű������a>){c��|���t�~�]]�W��d΄��C(�f}4ӹ���3̏_��p�.����w�iN`��*	��8u���HV�8����G��ۉh��&��97	�
�^̎�S�N��Jq�	��51����=@+�P��u#��́�%�aSX�RI�^I3���k�H�H�hO�KR8���r���v?ͅ�^
�n�ܤũY���҄��޳�S3,]��ڜ�n �ך$,Ԭ	~G[x�.
*=�����y4}����y%�`}�g�媶�����w����K}B�=��Z�����&Ʈ�P\ŉ��fZ�s��b����t�@�������3����r��\^�\�Ύ��q?�+u|��Qލ�� Ac�]mv\z@�KŊX���O��Mū�CYzX\9�&���2�#6����ħ�'ᖼ2S����U���� ;Rʀ�%��*G��5y����J�<�k���pR��q�	�R.D�kb��2�fҬ�h���Q�&������]�b̿'|����Ri�PPC�r����Z�E^���uo��J<N+��U���l5�ffdcOo�x�!��[H��]<�/�w�`���K��\5i~���j1�N�(����\�����D����-[u汀`(���ydPhM�{~�DP�=~��>��!Jr`�9��}�5>��ǰ0�&��'||��y{Z�w����q�p�\����n����?�{��wl�o�:��Tg�Z�.ǘ�%v���
[&'|��s~��ƃ�_�tvu�53M̪�&�35�����z��u�*�zx�w��i��~��i�qU�$U�Ðaj7@5�$��971���HM���8�q����G�{�N��Պ!,�òx���<�G��� G�|wf*2�Z��Vj䅉�{��j~b�e���_#s�ݶr�e�9��K�]��������w_ ��DWU흽?���L#8����e5 ��ںLC�*>��!0�<�R�
�����p����'�Sw��Σ49��`TL�l=H��C?e��3���@?7�5;Q�3�	��L�a��gX 5n
E��4��n����r�
�K�$O���}�W�x�_�Cg�ފ�5�^^�K�y��[���G��	��F�ZNS��7k+T3[R7�@�V���'��K�ķgC�(�����ΖRh=����Y� ҃��_����ܻ������W�UXz�erU�i,�q"�Ox!�b�� �[g�M�Y9��py�]��+�ǆ�/W��=����v������5Ev�����}>	��h�+�鈜�s��D+OZsk�x����>d�3�����t7?��n~�~�qWd�5�U�3��T���$�E�Q��\Z��G���sq�����"*N��A�bd�f�|��u��#;q�uf���ub�����~o=�hf6�S��*m!��8s2+��s���q�R=)<���u��^@?��}�C����d/}j*��͆��]/�.� ����[ZaȾZ��� \6��1BuY*i���5Nd!�E�嚻k�ȮB`��zi*3c���5<�\֍;�������;����8���j�v\ƅ���R���2��t��>>�|ߝE.Y�f��'r�L��3���`k%�)�L^NG��qލN���3�Q?�q�kP�jZ��`��~b�,6L�"�0����U�2���i(��lCu�:���y�R�X�B�94���;�����ҁ��	�>�-� ����H��8�rE�5_)�4�i^�H��#������g屹8W�l�����O/�N˔g~eߧт��N�ky>ߵ��f�[��ì��8F�*W:D7��	�w�;QJ����p��G��t�˔=��jz�-g��d(dkH_�i�����}� �{�G9n�2�$v�3�T�\���U������n����%}b��W0����^���=�Jn��R�G��7|_��;���7�
m�k<$6e��f�#�Ͻ���EZ�𾓉+o�뺵u]�zR~�Ϋ���x<�e+u�5<����-��[�K}7���X��*U�n|�}�Z�6fE��θJ40Ĺ̯�����7ȍ6��,x�Kns���܌M��M~�N��������~�s��
?3��7��r-S�v*�1lAvu�¢�/�[�R��	�+<pa�sy7�;ۗ5���1�ܒL�������x�Է�<W��6�PHÔ�X�m�N��7�Fv��l��F{�I\}Z퉻����Tz^y�Oy��Fw��~������ɖ�q�;��FP
ri�*���K��j�F�M��4�j"|����n    ���xf���5�a~r��o��U��&x���o�n���*�bT����H���纕/e�����0��8�N��?��"	��;k�Z���iu;�����h�[�q|�������;ʴBW��|�"7Zp��k�GK�u�rf�|�ص]抋��!ɗ�4���z�N��1Nf��j�����a(���B}���1���������[��	C3�� qucq|�'�~|���a�����:7��-�e��f9hU��誝��`5�߽;􇇈���#�o�Q2P.�QP�^�s����C�i��J�0�얤�ʗ��!�#oْ��4�������@<�����%�}��VxeI�	s鴪-P��u�()gf韇�+�I�ýEeN��*�M�����L9���������ǺO�>��c���^���\��>`��2��6m4h��/�~g�'�{��3>�瘿+WU6;g��|S;�#�_�R��F5�f���=/ t�E�M45gE�bl"�:����ZU9��8�4�቗l�H8Ą�������K~}=ڭgC���w�
���+}|��sb�qe|���<-�~�EI�����Gp(��2/�U7!A-�5n4K�vr7�<��������Tw�
Z���Z\�׺�%)dۃ�ТcGhb�H�X��8Z�ҥAk
�BGh���^�����J��I�4�Mp3����WF�ݡ��v�AE��8�	�f��o�&�>����c��=y��t&.�_�Ax���5wGÝ��f��|��󫵯�{���:#>����T+jr�����&������=p������І���&�C��A���x�1e�����x����Ty�͵
����&�B��kb�v��:�p���EǑ�O���h�s
%EY�p����D��Ɛ��6	h���<�K�1��P�
!��2�9���,Y`�EQ�����'����C��=Ȅ)�|{c��j�bk�;WO��w��@_G�/���1�:~��2r"��:�*�V̫�j�
S-Ւ�k	��¦��Ds��*�|ݜ���F춍���08�.S��m��������O�}���.D���$	dR�o\傴��i�bԵ3�ӹ��צ�n�8�v�����6FGtקt˶?�+����p�o�o������[�C��]q���J��4�d�l]iw��6�O�}-�Q��roG�{h���u���dh��`�|����/��ox�i<A`�]��Ǩ�q��Bg��u#�Si(��#o�k/��r\���~-Ι�]\Vky�������*���@�]v!�H��fK�]_���zf��F��*A?JsS�����T$1���x�=x�f�9�T�v�&�2r"}�&�`r
�L�?���6�a�޽����P0�<j�ԙ�`j .�Y�|�?2v�������*3a��mA�y�7×jD��z/���c��u�W��QmbCVW�i��Q�cˈ�&+A���	<�K�K��Y}�Wy��u��ֳ-?DEU��3D��@u��>��뜺��<�F����mf�i�Y��	��gЫ	�����l,N��.�f��>�W�m�UC7�4ݳ�a�u"G���G��=����;(dIV�v|���:�m���q�'�"����A�+���p��O%ھ�8���aZ�ؖ��r���D�[�v^�w]��]X��DANs�`@�;�����Q���kᷢ����~�9MOC�x���ܟ{���2;�y9��!�7��<&��w�4Jc�Ʉ�Ł ��w$��)Q��r�~�r�BE�KN�۞onJnT��c:M��\��Tk6�<̯����������rδr�$OM�v��ⵦuj8��Y>_5����/���=�6a}ʷ�s���8V9�m�AZ�*M/��0=X��i0�	��1��i?=��j)��R�,2մYP)WA�<v~�1'�xq��|��7>{�RO ۖ��Ϋ�a&���aG}[��H�~>�OA��O�Rǐ��хؑ�<A]U3Z��4��)����2&\,�\�qeD���r֯������Ru���p3/im�:�������� B��̧	Q���5bAoi��aR�P�r�}|{c�ڗK��R�k��v�L��|6�7�Z��8��u�Gli��N�.�p�圽��B ���&�z��e8�H3����d�x��(98V�m���cFF�{�7ȡ���Q8��%��]���}E]W�ʀ�N)���_P� 
�ȴ0Vu�ր�|��H�4d洗7�_GS����7ʳ�2�9�a�,�ϲ�6T�Q���<�:l�hk��匰�9�r��6JN����i�
#����U4��o(_.�3��Qpe�n2P��|湎9^���.�O�v��K���l�O����
���?EX����|��+�	a�����al�x'����[�����J{�򩮪kc�S�x�c͉���|C����E�׸i�%)ךiiӒ�&�g�������j F��7u��Mq����"-�85��N��;}��3������c�����Z��1�#�Zsè^/`h�2>��l'��P-�#���:�t9F�v�x{���5���'��ox��d�:�ƿ��F+곜��k�w�U����	�]K�e����s�뷴�W�K80���eW{
��#�ԓ�r�����_1\��.a�x�,��y�Ҹ8d�?��W�,^�)��p$��<MU�,
�G�h7kr���ʲ�d����5�bߐ>�qWɆ�j3�nk�{\��I�IY+�LNY�>�jF��$�) �z���h���3]ri��R����u8��{�m�w}b��gwL�'�w�"�ehPyN��Vز��X)�}X&�s%��Z��]O�A6�R�pi�g��ݸ�\;��҃���.��I�W���υT�m�.��uG9��.�\M>�x��8e�J:�d�x��L̓�9Jxw�V׻ m��<�{�6=�~69׷(��ժPA�ҹ�Ot�xZ�����]Ώ���?���&��r�V좝���7q\­�']O��>Ң��I�7�������ı���)���C-)|�A����Vy��w-R�[`��u��������L-�>:fƶ�N�0�^��L�^��y�O��5k����rDk�ul����S�+X�neڜ�}P-ᛸ���v�?́�<3\�l0����>����^�;W��������qKw�
j��5���� '�|�@[w<�RT��ʊ?��50�v�I�p�F E�r�zv@�mh����Y�Z��#I��Ͼ���y���+(��Ԅ�_�.p�Jz����u���?%L�XI�5tܢ�c9_Ń�7�L�����N�o�w�d7UP�u���%;-�`�J�mBŵ��!��I�F?�/�Zܻf)��4gY��d�FI���2|�)�-�mJ#T�/�=����[}ߗЅ��Vlz��geF(�똶�����	?X�^t�w�
 �[[P(�M|&G<۱Yk���_s���om�os\��a��y��	rӯ]/�B;P��2���q�Z${���pl���b�L���Or�f	XZ�<:%j�GB4Z����ҵ���7|w�]��?}��~�P�+T؄�:�kR4-�X��9�?�hvkR��ßn���jk���G�y~�3Ch��vA� g̗����
��7�tT��{'�Qf%��ڑ�(�cW�T��aU��X�=���C#K��}��Y}��� L�8{��ha���� e��>�?���}�%N���[ۇ��$[�Ty�n�H.�Z�t��#��e�ʆ��IFi�fO ڀ��ݽ�UpL��	������G�(�jL�&��(�d���$粂���������	G���y�f	�'��Y8�jy�.��J��(����<��vHgd�w� a��n �F��.�%����Y��a����Pl�J�*d8l�ǎ����5��E��҄�u12�ӱ�������l}�5rZ����8Y.�DwL��ΧЎ!�>D�=>�D)�E��M��hu�l��8��^qZ+Iyf�ȎAZ�[�:�cx�O�c�!6�J[i|�a��z�)+n���h\�����ɗ���x������粉���Z/_    �C!][㙸�~ܟ����]-űwgXM΋,U+�g9��1����
s���ߟ�w��ؿ��d����~�9��6̞���&�p�F��YW)�8��� '��Eu/�#A�c�4V�rB�����s�=���2kE�ӄ��s�H"ǡs�.�܆W�Xk�����:�`���@°= �4�ֲ�$��}�t�GƐ��:�p�p�-�K�&��˱K�,���KdC���{���L�n$ㅷc'v-�~��R��햋Bשd��5�a_�S���?��ɭ�f��嗚�E6����,,$�,���������
�@7��/إy�E��P&(58ق�	��e챏DM�2_��a�}2�,�̸j�֔i&p�&8*,�B!���n?��;s�?<F�[�c��4�^l񭸍��
,��&��~Tɴ�h��I:*Y�K���yz�f�!m\�e�\��lU���ѮW��9C���Tr*)P.�bGH�Z==�p��RWq-��z^9��-,<�ʋFު�˻Ek���>�7{Q����5��@o���%\�+Ma��4*?DB��4�ic��U����D�赚^E���������4�CT����XrY�_DE��7z�=/x�=����if���X�� ��*�dMv�4
���.��E�5z�+ڠ���*�c�7C���T��%!��Q�}�]�;�,Z0x���Su�����2�\/KO�4�q��L��/��5�o�%d�\i���<�D&���VB��H�����J�Öڋ�e�����Ȩo����d9�����4�oG���/����_~�P	�%��i�Q,7��9��Щ>�t;E��x�A�j����p��'��7�a��ۇ�9���c�������kJ�e�Щ��HV)�B�.��kR%j���2+�I?\�sI�����n�pY����U�Z��-��p���}���wǑW���-Vi1�*v��gv��244-h	�|�Rw)�7jk9��Cvo�ϛ�?��Vk��>V����,���oF�=��&����{kX�Z�82J("=G��S�����4�y .�!	U���}���ҝ�g�1�oݚ����.�^i�zx��6���vǌ�I���5�,[n���c��z������R�8<O7*���d�h�6b�
{WW���>:�_���oq�"ej�Ю`N<���9b�,C-��8��.8u.-�������"$�qy�����rD��s�����ue��f�wv���ܳ��i#XT����!�," 7>J��#	$s7��I�����4	.�^߿[�y�S���; GY|{���F�)�� �5�R^���
xMR��`��8I#D���ud�ĪZqA��k/8��բ�����ВUz�c���7�ƿ�Z�C	���g�@�P�(�,D��RL!@dȂ�y�d�Ka�W����n�,�l��G�,t�Mv�b����8A��uED�v[_
1� �qn�b���DU��3t�u���*��n��ꦔ���6��2蝪8],kcHo�9V��y��w���÷x����0�80`��T���o2�#���ۙw�ڟL5��c�r!���w(n}p�9e>ݏr�V����u�A��sl��n���d���������S������Pڅ'oX�R)��Y���W�;��x���|\X�CRwu����f`�%���:��顦S�y�$��m�&A������K���m��U����c�f2P�Aϙ�G���ߞh���R���'��TB4�
yip;{V��P�k��X���u��J �ؔ����~0g�K:�T��E3���N�C�����*����C�U:�K��~���P�XB�cT��}�,9��J���͵����Q�W�)uכq>ޛ�P��G����Q�jG�<y-h������U/CO �n�.P��bC��#�r�!鲫NCq|��]�G���yn�7
W�ٽa��<����P��%�0�����+��"s\��UU1��q�2�7>�^�Kp0�Ӈ~8W��y���`�cU� R-u5���|7Z��|���)�c����Z�y%�e`aS'b�>t��D���Ƨ2`����d�U��xc3�����A�,O8
,��򋣦:d����v�R���JN���*m���PA�+BFJ3t�A�ĝ;w�\�����^l�*[k����M/�X;y�ܚ|��/t��|�;=��f�%��b�J����MY�J����d���H��t<��s?U������̍o�i��~�P�M��:��J� ����/D���D�>��Z�[�&0���v�	�]U�p/��{;�7Q��E@��a�l���n�`)>���7<�+�١�ILAvה�мP�~�n�{���٧��<����vX^c�}h���6f��'�Q��Fɦ����~��N���9�R�f�@�3[���I�����W5 4Hs����u��E��6���X����r����n�g_���C��z�tH��Ͽ�����S�����!�׏캩\��.�L�4�i���*���$����:SJ�\��~u�Vqu�Չ܌�k�UYQ�k��Ӌ��A��'ot?ҵ5�!Z$�^�Uh�M3x��ѹ�n�[Iߖ:�Ƣ�-A(����,��0��4�� �,�?�_]3lO�_Y�)�Z�8L)��q��	�s���L�?(��N�M;�E���xj��Snђ=��t����2CXݿÿ#]�uj��v�p�iM����b
aK�,95}!b"�����F!��,�)7M�̝����1��Sb�z�v>��X�������Ra��P�VG ��-)Hd'�e�2A�+��e���R�x�K�YnV��`5���5
�}���~�;��噲�03Ž����@��q�?�����"$ib5\���=ݮD����-K�+���:_���N�K�nv�8�<���ĉ������K���Pξ�#��,ԕ$p=?#ޞE솖����x�m�^�R�3���e^�z�8�@�'f<�c����(d�GG�_|��@{���z���@��a�f-'P�,1��
�͇�� �J���w<Z�n1`C��s���ԕ���ޅ��c��a�u��)�U��v���-٨����
)f�jY�Nj$������H��d��¹���0�S/�1j�`������xz�L�ߞ��'۩�?����]c��y�&9ð�u�ji��K�8{J[�s��`q��b�ޢ�%%N��rE�g��y�y���k5ykvx뾋��ce2O����	w�DE�e,r����y(�J!ݹѲ�"�5�K�`�c���S�E\�'����\�<z����G�1��Pu�8Ś(��G��0ʊ�E��b!�[��Б8/���í�P*�v��l2�*A(;e�6��<z	�J�o���e(#�ixm��FMj�m���X	>��&�����S�����Y<\��znh�z^���/Lj��A�~��n(Q*���*�7M ��S����}$Tw ��}�x8�I���j9=�a-Z��::�8�e��_�d����J�
R��A����W���V���\�%׫3�fB�B�if�[�T]v銞GΰG.J��s.��T� �e����X�����?Z�גw�f�A��_����,�Z����D�jr�����%kw{r�/�e4���ޙ�{Y��}�To�v��N����(|5�n �g*$4��T|�M�<�=��L h��A�|:�K�T�=��bv<��a0ĉ|�tx�V���9K����o�^�o�3��A�oÖᶏS��4(iϲ*(�K���A?8�O�Gɬ�P�xSș��V��}<��� �Q�Q�����Y����KW� ����0�\��6�E��fm�����^�����r)6$Wtnħ�v_�C#��m�,�K�j��lv�\nCG���G��]�-�w�\#ӭ2Wa�jPz���*�*6?��>��C���4]/���;	���a��5�~�PH���v��{��a���ve�c�kY����W;�?<�
&�|P���1���B��f�<��y��    �|Z�3�T�?�����_��q�Z���Fn{����W���AP[�[+CW�>\��D���j�9a	�EpS��j��Y����L��9z�^�<|9|�Q|�(�MP����^kp�3��܈>����V_�=u�m��~'��~=�u�-��s���=_>Qܚr�?����7�������w4G)\�#K�Ҭ �h눜Z���eKI��Y�D��:�4%��|���3Z�T��Ӿ)���?�����MSX�*jDL�n8 ,JA�!T-�Ʊ�|8\�� �0g�>��� Z��8Ke�����t��s���-�?��Kr�!���;�+]U#[N
��@a1q+J���w�߲�dM�r�J��`�.��
�^���������ċ���x���G` ~�r���E
�\Y�=n\���i��G-�Wsi�k?[�Z�x��0�[��P�������p��^h��ɂ}��]ueDҞ�ח��dr�z2��R����;�5F�S�~��8�Sk����a=�����`�nlt������;�������t�^|�Z!��8OR�DqQgi��Q��]3P?�Y[�g��lm�޷���j�T��b} �؋�Z�ȝ���o͍6�!���d�Q�z|5@�����m�k�$,(�O���f'�|��,_���d��ut����m}ڔ�{�o��m<E�~ ~	��N��u�,T���̧�]ˊj��DgZ���Sv8	F�q{���i���啙����*��cm�[�G5p��]��^�0|��vL�w$m�B��Jp.+$�\�EIS6���|�3�I#��=>������V�Ԩ����^�_��N�I�c��W�(�DG����	d1=��+��V�!�������|�^�R,ڎ9_����g��X�=~|���}���Z>[�o^���"�j�z�U��Co����D�u��~Z5��	m#�?Zgi�o��[l���4߯Ip����qa0�s��/�2^����~;�+��ځJWh��,���$��sYp�� ��^o�D;��j�Y�gtZ�G&���KF�b��o�Xb�����?���.�_5|�{�����^iMT�1a�*��� �˩�|גb��v�x��ʤ���nC���'u���&3����&���}��|�@�}SI�*�  �2�YQ�x�!"h^�ٟ/w�Ҩ�RE?;���E�L�XU��7a�xhuϚ�oݶ��ox����6���y�UR� r�Jb�2n/�+���O�+�����q�G��_�k=�|�����$}�?�3���w��G��1��N�d\�~&�iii��9 v�ۤ(1�虋��PBR�.x��[�xk���&x9X�Sz��Q0֣����-�i=~��7�@^U�Z��e	.�+ �*�/�5O?گג�o��:�<��`D�k��$��Z�nk���v������o��ظ)��gdN�5�mC��ԛ��Ͱ��ҏ�g_�W�~���P�-4Ɠ>1y��A�'���J�{t������:��W��Ñ�zV�w�SS�;��
��o+ګci~��O����j�u��3�ih�����k�S6���՚"�]�S�B�k���>sR�q�5m�_�2���E��ZZ�����:��wEE�/��Yz���Lx���!�����ǯ͢��#��3�R0�X�j�j��&>�)v��Z�������a������F�,ج��1���eO��}c/$����;�]�4�F7��Ɛ#�g��cDS�q�7��@?�;��l$2��a��f9���mG�hf{��;��{|h���i׽� ~�(X�qF4�I���T��% OS�Y����E-=,r˳���:�|���#'>[gs�ۮtX�5��N�xV{��_^���+p���+R�I��������=R��+�l�Wg0(�tjd6_�b|�/pB��:���/���_&�k�����]�,�% Zm���q����6��Q��ۉ\6���-���B&֋�v�+���+G�4:_C���rS���ǅ�Ւ�_��[t�"L�O��NK��='m@��Gz#r�HZ��&��#3ƾ�ח�n~3s���ȃ�r�膌�ox��z�wk�ZqM��R�]8�!�ٚ��UI~$�#w9��8/���Ç�iw�M{��kk��q��w~����#r�߉��?P���`��0�X�4��*�M�g$n ,#��~s1�wФ�i�\�գ�f�}����4׵��廑�.�NЕ����xK4F_풱܆�$��4v�e�T�)�q�W���Q���y,'竎ݑ����k��p���t��x�:z��x{{��m�$.o0!��I�
��AlkQ��}c^H��S=�ۚ�H��p�&���)W�'x�Ut|�­���U1_�0ѻ����<Pf&rX���
���S5�2Wq�
$��&ϗ�6d���'�<7�X���v�.������ӿF1_�?T�k���l���W���A���y�Xu��u�xp�J.-�������{��t3C���Ł�0��P��_��1\(���u���"�a��[�B҄f#'j��i���4��kWZ?�-���f.'���z=�L]�,�ܪP��~� �e1�[��5�L<�I^䉢겐;�`���j���;~����Rdn�jY�M��x4�����l�8.{��������*g�?�_�f��n$UnզP�i�U�Z����l�)�������z�ú���gk����RU�����R�cy�{����� �]�"��j��N��j7���������-a�4e�i�d���C��`���r�m3�T̻�9���w�%���ߝ�HY}s���`�ۨ݅��}�=1�r☮Ϡ΄24u+�U3��'�t#�V�\č�o�a?a�Ul��m�1��E1rV� Z<N�/��R	����c��4E~Q��T���&{�\R��s)����ʁg`���ao@4�e���io�
�iq�<���9G�/A��cr�	�@?a1�8#��r��5���2#�&�~r_���>�:HΚEAe\�,�`��B�ly�������Z�׾��>e���뇝��IEK0t�%݅W�,��G��O�GU
������qŗ�!���FgZ���)��P,�24���7<|����W�Cp��,���u[4¬,�&�AC\�����N�Л��(�پf�ǅ��/Ӡyڏ��.$�=�A� ���k�;���"z/6l��ki�f�.�t��v��H53��I.�%�괌!���,�ۙ�,�� T��{����|�F���^{�_�
�/���L�'���4v+����ꉢ�Ï�j����m�x��V}W�G+�O`u
|`d2F���_�]Z����/%�WA΂��ȡ[Ɗ\A-WE��3Inɇ��j��ǡw�]-��9�/׷�v�����,�&�Qn���%�ӭ�����i	8���<�x�I� ��m�m��#�M�{�6��m���h�lV�^~��
��emx6;���<x�y����������I�������-�&'ԛ���$�ӬU��>XV:q7m��A~^AA�"L����D��I�M��WGm^������1��@仅�[j��9ρEP�+����FY)YQ!��]4������� k��Ky��j���$�kv?OÝ�Lw���%v��D��.������5��ذc+d�{`����Q��<�?v�<���(���c;��𺍮`�c����c&,N���M����bG�^��"|Rk�e>���[�-yV�HN��T%�}�q�ks*Y�ީԛ����q{�nY{��kc�0�Owg��Ü��ǯ�v��9�*�$aQ���#�V%iD�	�\4XP��G����JB�[�V�?P4N�F��װW�h�h�a˴�q�f�d ޿�w��z�Z��Ϊ�a�W�!�,��u���HTb_�B�>�i���S2&;HɄX�s�Yg�wwsc�ͭ�T9���xp���߾;h7�'v�^�^Nm�(�&��o�mإٶ�2O�0�����b)%S!�^K��=�0�X�3��y�/W��ԣkaə��2�;��_Ͳ"��~zޝK��    0K���;:�\���XvY���~�����9_4g���!s�ӥh��><:�(I��"W�hw��n%]�<~O(�r;�Hmt&b�eG�(
S����<fj6ɸ�Yo�
ħ9:G�'n���v�*���ɭi�&�\����^�A�t�C_ˆ若���б�d��
<�"���\��h/5��<B��0�dj��ty�֍����a��t�w/.�%u�;���O�E_\�\��<u����i0(�Q�����l6����4��RH|E����_,��ز3U�Z��퐛�ӿ��{6�ZPף�ά!.hn�N��bj�Nx%n�BX�|D��>kc�+������Xv�,д�l���J��z���h���E�1Z'>�7������鉂L3�CBD�3����"-G����͡`Dr�+�L�N�>���\��ɓ@~� �%|p��_>��r��eI�V$�DS����Y��9Y4��M�����޾���0�58�6t���Ћ����}�<��@bG�H��gPe�ja;6ѫ0�V�.�BeTmoE�_?`J��D+�m3�]8~�ƨr��Λ>uU��V6tv����P���O�vJ��ir�MP�b$�M31P#JP�b��rsh��m{��S��^�Q3��GAٳ��ٴ��]�[~�����)"d�RvKUy�6�PT�K#-]#&Qn�q��5����<�4��ǆ��:�a�:[>�g��|���I���l_7�_������� 6ucZ.l��S��8�G^jі�;��1��`)��3�ߗ�*?��Յ�&E=W��u	X�_�)ܨ��7<~�p�"`�������gm䥗���<�׵R���?T���HŶ�$�xb��xdۻ�$���n�O�6��g��L'����M����@�1��Ҥ>w�E�b7Z��QK��͏ӵ���"�E�R�2�?V���k�ه������j�>���؉˶l�u���H9ф�ћ ��f�L�Y�Fm�K(�����K�B�#/決Q䰸�ؼg� m�{��6�5�[�_��k}���ަ?2$
.h������*���(���< �4n<�5[y�>�9]�����pP�á	4�x��Lz���r�K�|�-*A�[�O�*r�z�<���*�KUV�!�<8-��٨���_�b��<��g��o���\�pw�)����_��^���p���2 �f�� �*_�UZyD�\wj4�<|D�k��Z���yg)6��J�T�#y	f��O/A]V�7���	�?�waG�3(ƮIa�D�42�J�WA����Xfi�ړw(6��մO1��;9��	p���֧�z}[>���9���?�!�j*�ս�E$��^Љ".���U�n�D&c�g�Ď?2,y�O$O�h��� $ �s������g��,���4w���fTpgv`'��:��h����*����|O7� 4S����z��ri5�ge�\>���}����f*�=��k�^tM�?��S�mt�,D�����iA+uݠ�z��;�UT���y.�����5�iӥP��F�'`��zuP��@b�	>z.����n������I&pvj��N�[K+�~m8���P�G�S\ĭ�$e�F�qʉ�ɱg���rN�}ڬN;ny�����7��wqn�=��P�f�4<,3XhaF"E�JnL`��(��䪍�d��WcSO}0�����PsuN�����������\N���̢U±"�D�	Bq^[��$�?�*-�-9�8��y��i�K��{���臣���avq����)>�ox�ژة�N��G]��F)3���!��x���m�?:�*<8H�����tc#ٝg���,��MP�3����D%H�B>�{��s�o��rs��gz2��J�:�,'����ld����S\�@��~/���T仝�O��z�|n�^���^W��x������ �'?"ET��iV9�����iW��MR��XXY#p���c��-����(F��V�߼�2�H���8Xo�ɸ�������N寛�n��~�����t�
_�0�K݁Z�l)UA>^q�D=mk+���(7��#��I��s��󼛓Q�o�7~~}��*�ݐ��&����1�\;f�����(R�q�i�?�k�M\I3s�=��ךo�DNrr'������?�Ł�K����w�]�m-zMG1�Y*��E�JU�P����ǜ,��ӫ]Kn8U�U����4����]$��x���S�����_I����K�_�	�WV݆r
DCm�6��:�1v��ֽ�v0��.�c,y��,�z���!,��`�*�z8��7�K���#��Ļ�@��BU�ݲ5�80DݪÒ�Q)�%���-2i�\ٴ{7����i��k1i_'���<�.���L����w���
���A�s`���*�
�Z(���:D������,l,��N�4[��z�(Γ��%��,}�p�1�����>���]��K����/X�u� jE��6k3�n�E��	�r�R����s9y�!��`���]�%.� ֎d�U����ʤ����U�f&S^W�na#�V��`�*����A�wdqZ�qʇk}I�ϖp{�$���~�aY�T�\����p�>�;|���� ��e���Ud��̏�DW��]Ȱ1?���;��y8�bo�n0<틛�5��De�Y���Z�T(P���?�w^��%�xkLr�ǲo�������\����Ԅ �?V5�^J9��O���^)��.yh��r�,Ħ/b�ٮ�z�����Ka�� �o���h�6��J��"��nz�L8�>���O���ъx����SG������_�@!j��{��7�+��$5��/�!�'����v�1�YAFx�+�n��%����'�d���]�t��4�K+����Pe��>�Ĕ�GH}n����{ѯr*�"m	y�+�M�Uר&�5����J*�u{C>�/�Br��N�[���n�V���m�l^��Gu=�g�_�����r�w�hA��ސ��:r^U\5�r[s����4J���UЅiU+e��r��.��x�8г@��Ú��D\��}������h�%j�@h�5���,���ц�5�Q�X�3���ƺ��<�ޅ���F�U�]�Q�r���]��<z�ԅ��H;J}(����:*)��8q�4#ɱ+��� ���T���+'�i?ld>|,���ɚl���Uc�=���A'0�ƺ�a�2s5�r��s;�"��ĭ�?o^��;x��9+��g'W>�#�e�ܡ��Eyi�Y����;|w�����a��Á���N���τ8195��p�&4>�NS|	%9���|�S��O�<-����t����:Kҽs	��?x������|I��-�����Y�����J��1/���7�I�dI�����V�E�߬��:S�c�p6j��ݛ��Cs��{�wx�*k�,"��o�R u�����Vڡ�A=�(��㒏�)�"�Sy{n��L�U�Ʃ�?�1?+g�㇂���p���������Pk�:mߗ�)�"O�����Q�(e�l��Κ�C
L�&��4��f��=����yy��`�I����?��E9�?�_rsb��ɿ�^�zF�cl%P0
A��fa��W�����rYH���"vp:A��#��E��8���f��ϯc��⭯&���G@xկ�R��^�r.
�2*ϵQAq��6[xC�4�nk��@E�y�a��o���p������FƤr�_�m��Fڌ#�m�F�d���RGF6+KXҺ����K�թ�\�P������n��fyj��� K�6T`��t)3��/��K���o	A�	�v�B
����:��$�q#���O�m��W�j�'G5������2\��'+N�'�zܯ�xU�U���������[ߕ���N\�vY�ɼ���c�hF�o���g�d�t(D�Ҏ�ud>�q	�K4;k�%6�����ѯ�����4>)���e6.]O	�:����
���c�a�������jR�l'F�0W�Y�e�C��Pp�x�u6��`��߫����n_���X�*v�4����f4ez    ,�XU�@���I�T���}��1�h�h�lD���`0Q��5�����`9En�k�۽G_]���a_$/�	�*�.qV�P�Fp�2�~``��^��6\�A}7/��E\�`�wδp�+���Cc4�x}q�oxڍ���z�Ԟ�xk,-Ձ��r��׭�F�c� B?|^*xZ-��l�����G.��������;��̛r?Y�|�Nr��(�.�~���X����]�M���,����R
ᵑ��Xo�<����5΍z�X�څzF��s��:�P���;<|��t��H��KIK��������;��X�VT~�TR�̣�E��TgݞZ}�vm����浜+�q=���˫$�����A'�'�+��G�xԥ�'W�Z��JꙪ����*u?��`Y\���>F��LY��-�anǭ�(2��:-c��i7(��)���]'F
���$�F`�>unT��ei�S&�ܜOm\$�2��D�>և��P5�?W�t��6\��<�ݘ��Ͽ��Xӽ��+�ɡP�8W�N�!�w"�l�hB�H<��"�����9�ǒ�L$t* �>=|-M^��߃��fexAC"�.�L/h
��Ut͏�n_�y[�]/	��iY��l3�{�������z�{�=��v�����2m�E���-�Ś��@�'WaU�"~�[��;�J!M�Q6��l��~'S�b��mԓ/3O���?��n��O�WM��@$b �T]HQ�4*KCT��iq�ߍ�)��3i�����>/�k�Xڂ��QȪ�lfާ��p�yG����ީ+�v�������㢬�ӈ�Q�3����\�=�r�c&=���f����2�C�$�j�.���bMʺ��;���퐯%��A�V7��<�e�tr��L�sR��J�r?pRx�,�>_�`�C撉P]2o۞��Im�d#D� .n�	�G��]��/��c�x��:��y,RC�St��Bu9Vk�?཰���s|(u5_��\��*��Cq��}�2���bv�za��U����%C"�� y���@�zfء\�6�7�2�T�Pw�����V���t��a�!����>�� ���yoS��2�ڄ��ox���!���n\��4L��3��<7l٤h�z���N
}���+9�Ǭog�4{>v�9�9���<얫)k�T5!�/���J[���x���4�]��l�N�M
�.*����-<�$:sol�����z[nH��O�։W�p�;���v*��_D�!�񰜸�#T��p�hO��R%ub9W�6��y~�򗗳۰��/#3��n��_�l��	�y|t�d��|�S��U
���#�m�M��D�����qӢ�o��D�P球�Ռ���&+�4�k��T��a\�Ὑl���1@��ŗm�>z5j���V�F�U
lՎ�W�U�S�����+ݮ7�E��f��nM�'�?Lo����3 ���f��G���`�P oG�46��̀P6�N���E��82�߃���+�Tm��MBJ��Z'0��?�=�5�}��KD�3�Jv==��G��wKhʌ	(C-��^�N��r����>l��>$7J�])�0�Ͻ٨�o��bW;�m���g=��;��<�Z��Ɍ"�����EF�
ųs��k�)G1���������`�Ǔ������{���-�ج�Y��L�h����'���ug�U��s���P�U�VU׎'Ym��|0�-��ܶ�ɹ7�L��1MA�k׫���s��#qn�?�W��IG3!%o�WUW��3��-f�N1
+�k�ٙ����>N��y2�ܫ۰ޗ˅b��	�%P��I���bMR�?	�������k&��N[�տȥM���P�C��6j0I�~\���+�׾��e����sI���������홙����i;k��-�
p'F�ջ�<�T*c�T�]�R��
��L�>�}�������/���f���`�����zX�yc�����ɗ�PGr��譻�TF��Q�@��ث���1D���%�?^�LQr��1����Y���6����7m�R_�� ���<����%��:�U�5��FZ��U.�۞,r����[f��������%-���]a�U�]T���li��d{��k�>��l�M����.��AK�	�W�Q�4�M���;Ze��h
Gk�TQ��%S�7��+��`���z�����R)My��{��)����oF�WF��F��|\QY���@˸��Ե�!�-V�ߣ����_���q������%��ܘ� ����0K��պ�_�����1(���L[B*'�e�C��
W=�,H�����w�4���XΊ��B��ޫ�q0=�`S�==�۶Z�K&{5N���ڭρ���^��V絯�Q
E��0�Ī=B�G�J�hؕ�P/|u�u7gZ�X4���F�D��S��`3�(�x������K:;�#ޞ���IY�W�f�mٌy�[*�\�6����+e�Ѷh,��NV�%=W��ZE�l]��y�:$���;��}��������o���y��	��
��-��mB��������s�k��7z0�!,VA ��9���\4�m0=��,�H���/��\����KA���*��FC"DK���WI&7�G�`�ڎ ��nY��]z���$ꕂ
��fN�@{p�������&{�mu���g_��LHu�t��5�/���kKd�k6�����W�Q��j��k~���Ku^W��<��y\oC�b�l��:98�O^Q~{�($��Fi�D1��cA�~����4!�t;'���n��N�{}��W�UI���yˮ��:�%L�cV��x�����ӿJy"��9�a��׸��8V6���<�4(ǕG�������k	�~�y5���vv��by4uLFTV�븙d��x�>���^�3�A��1ZN�9��������y3���K��QK՞��I|`�U��U��U0�{�sP�[�����6���"xŹ��=����z�����ˈ�l�@����&�)���8���DjL#)XM�ڔ[^���&smvn����oY�Ԯ�*ߛ�՜v�<���_#t���1|w��Y�b�'F��Y`X.U�v �"{�E�Rs1�%�Q��edi>���u;�#�v�E�dZ&w��{mz�=���R�Tu�a̠��dfD�0'���_��d�74#f눛�Z�z�0�ob�wE�.����Dd�q�@�����QȆj�m̒������{PA�k�ϤŸ�����ʵ�`Q�Qˌ�n����k�!H�lA����E�ޡ�dp���O�iC
j9a�:�P�1����YjY���,w�������Ɔ|SED
��ڷG{-ޝ�Z���:�{�J��o�7ɀ��._B�"g�kk"�̈DD���;�S����c"J��ߥ�����Xi��l�jCR���֏D�����鿭�����_}�E��7� 5#�Z1 �H'1)Mݲ�J�ݾ����"�[�1���qa�y�`y��2b�4�4������x�w�B�o�������i׳H���U3Oe�
D�WT��o,u�-�۶w�ǻ�!���5gB�ܱz���n�{@��!l�����x�
E-�|�T�5FXVܖѪ��{a�(�5+c}ک3㆔m6t�eFT�TA��;��m�g��&�j�CU/X.
��U���Qw�V��4�m�ⴒ�N�� �eEYm[5�0z�|J�ԣ�Ct%�����5r���d��*{o	7{(����e�ۇ'�km�{�����A�5FU-��\�������4ݕ<�b��\nA&�<M�6���\�N���w&��e����7�[�����V��u�@��i�ʬ����H�P������H�����8��u���Ɗb��Bq�][��z l��W�L���:5}��+���\�&�ܔ�V�}Ѩ��T,��>��S?-��c�H�3s�}=���Q���༲�qv?
FR�F�o����2ܥs}GzX�A4�X ��6��+��c���j >�}LFW�ۺ��<�=8U��L�\�`3*>g44T�>79ÿ�|50�%�^�6���V��6ӂзU=a����q��    �t'-4ax��' ���:�A���} ��TsǺ֫X9���x5L¯����UK[t��Y\g��xuZ�q�q���O}Cz��p�%����3���Ž�h{���O�)�7e�w��d�@g��3&�V�(ݬ�H��:�E�����/���K�$�J�LWv�W=��R�'�{��I}�s��hD�l�An%h�����B������)�*՘+m��6iY"��&��}ܻ��s���m�_�<��yW\U����8���1�����K��wO���v��kmU��T����G�*�R�8Ď���s�au��a/�wǑe�g`s��VB�?������΀FQ�z�����7����*� �ȫ��5(�,�R�*�	wF�X�b޸F�{8M.�N���匞���a���C[�:��q�f��ܶ����E�	��[���/=u�f��AUl�'�q\�Zb)���%�]I�W���lڬ������5(�M�؇3�|��fu��F�۲���
6�~���@7q�* ar��ω�W������U{,��e��-{L,�nU��|_-{xP.�9�/Uo��>����}K��������'-�L��� ��C#b{����Ǌ�4I�X���0r��F9sq|�Uܵ7�z�(��y V�}�	����Nk	�:r�C�<W�
f.�e�Î���f�l$U9�6��u����ǅ��lt��|k�s�ڷa�Կ�y>��x�W��9�%��n���6��!�YW~m�6�xZ�F/U��D���~��c�����΃#VRq9�C����qS��y{?��v�u�y)f�nQͩ2U��G����αn�2��"N�4m)�ts�x�z�X%�\q�g<�Ys���$$Z_g�r}���o�W�\f�?���y9<dr=�ln�4��$�y�p��*Ӣ�h>ris�����7��`�ln�����x76�3R�4�"��%�o��,��g�!��+�B[il������y��4L�ɖ]e�~�Ap���x,���x�h�<�P_Ɗ�����?�O���\�_x��;�ϯ&�&���
b1-MLG�p0FPi�����h(�m�z��hςmzq��XmÛ�#9����h-�ty���z���SX�*j][����V��<Q�B+H�>ʧ�z9��8h��p7�j��`٬����w��Ԝg�5�k|���ͤa���]E"��%�i�VZZIUh�%���#	
����%,o��P�f���R� �\;����_�F�g�����v�:}���ڿ�KS��=VyI�6~�j��X�!J��i���Rb��:�����N?c��ޗ.����c+
��E���o�k���C@��2��&b�T�Cs�qب1�DU%B�?�H�aZJ�l5|�L����=�f�Ԟ��>ʽ�� �nN(y������(�fM��ƹ���6��Z6gU[2�cV��CG��dV��F�t�����+V\�02?�U1��݀Z��v7����}���G�+bu��=��BL����4oc�TÖr�$�2G��:�5�K'�a�RO��t��P���0������st������K��}��ĉ�I�7��\0|����qې��ݡ����Jss8��A��{���z��;�[o�cx�.iv'�,����}%��.��VսM�ei��Ƌ!���h�9Px�|D0�K���}u�Ӗ��=�_\�ン��ƹ8m{�g=3�(J�-�o����-��ʪaӀX)��A���n0taP6�Y$�G������Y�3ۭ�G����5N��4W�e|-"����a]�Z�����͒��U��k�I2	������Da*~X��?�Ҭ8n7��^���iw�����eq�,-���l?J	�:���%A����\��R�Wm��J[7���g@����B	�^�3�Hnb����R�h9��r��dZ������Br,v��=��~z�W�LƲ�'���r�y�����ɘT�����V����W�SA.g�`u�]���Ք{^�6���A�ձ�᣷�-tW����"�nbȚD�*�T�(a)f�I�?�Ma-��Al�!�|��<��]wy\��A0m/��ڌ�U�X��+�B�Պ�����Uq���ҩY�\Κ*����D(�[��,Y��,/O��nh���].�1Y��?�;���}��G�
�PC�N�l1R� ��k���tD2Y����7�fkKG^//;g�Vg֯���(��\��<(gq>�0�\�)��<����A{�~+���.UY({0�1�aR��F�j��@O��cK�^�'f��IÑ �|�]c�7=��Z zz�K���ܣ�Bn�	J�	`�ȵ��&ׇ)���a�"�&�#�����[�II���sgu0N��'�L�JcP�d�y��q_;�LE��xǙtq��9}_;�x��۞����o!�\�k��Ow��X�w�&�&��xl.�>*V6���yx���K-�9��T��Y�wN�U>��_q%c�h@�Vm��b��*jcX�Ә��*��E����=y�#?��/�@�⠸sz�MƱ��,���-C�i���RJ�8/�#nU��YY����	�"���ŗ�Y��2�v?�-SMۊ6�kvN�����L*��B�T�:�T:��LԾ���o�����-�֑��h19
������q�?K���@�7�f\�Y�JmN�(�D�҆��Ckr��şܾ;�ݚ�Nh�kR/�T��ybx8Mݺ�n �V���Ix���nI><MFuc?�@k��?�k����x�_��~C��R]��f1�n��DbF�Y�I*�n)�/d��b��WX��o\��7����G��B]��ǣC����Ba�|p����KK��w��{��Um�Q��fJ�.�qú������im��ڡ��Wz�a�rh��J����d�ڛ��|�k�U�CCu����(v���+�1�ۺ[	����0��b��6U{i��U,��m#�}�>�/���w��L���-�`������^v;��Q@_,|DL�H�]MT�2	12�Z�nW�G����$?��ꇣ�����V���=��1��ҥ����%���1i�}ˮ�bޭazS�-��4 ��R���l9����@bcp�t]�)¥s��=RM�|v��Z��*���O��������H�	ͼ��V:��h~e�bE�8������<�(�x�j�F�����˔�ȏ|p��)h�e����W��(`�~z�*�l��F��nE��S�7��UM�{/�y_z�9�J��d5U�����Ӻ��3��Ǟ�zM?��k��������K��Y#�M'*��z��!l@Y��%$�?��S���d���� Lv��o�P�F��5�&/r��U���1�?�����W�'�=��s�־VX���hVb[�I�xg8H�|nC���㭃�!�s�%F���|n"�X�|��ϿN�n���ܯ�1^��rK�\( ́�aP�fɒ(�U�n_6��Z��\}?����c���e�Ѕ�KR�7���g�L�_��>j�,������
�ZP�f�^Qב��?1���q#	���L[]�q�{q/V�uZ���cq�� �L�l�u����,���4���$L���@3Z?Q:qaԼ�2���7�<H�Am�Ȁ���`3)��*�m�{]͖��bj33�����u��Hg����+ZXOϬX�D��D� 4"����i|����i7�.�������o&S��O0};T��4���S��ݽE���Q��pq(�EMcjx��(�uT�6��X�?.}�,&�p�XY�BGcN���?�Ee����^?�J,�����O^�:�����R^^�(B�{Z0�o�MP;4���k���י0��K�6���r��Ӆ�Q{����U�꾴f�e��/��e���C��j%���8�]z4 `���q��ﮁTU:�L.,�ѺE����dZ.'8%��vS�ww�]�.<���_2K�������.�XN�X1Q���Y�D�:��󻌑��.H�w5Ol�����u�D+A��j�u�����#{��<����Vدu�ݞ8�@���K�hUaA��H�    �i9Q*Y7����3<�4��f��ԛB���d��7�I�b��q5��Yyw��	��^���?����t�0O�����k�k���D�0W<�j7�xzb�g)�k�c�G{Ɩ�)Ӏq[-�Jnkb?�?ȲI��'��
�tK���rQ*�OL�}/py��{����>c�H�@>���c,�����a0J��������V�.�����"�KO���K,����IRy�4qrTEf����:�o���ը����s%O��j{����_�n�9��v����\��z
��_���Jq�M��˂T5��G�
:�f�X6�6�����/^��V��9Yv�׎��������9 �n�Heu3V��fW,~ÿ^~7� vm頓5�Ǭ<l4S\�(e�LL|�΍R����aVIˡs��ݬ8Y�eu8B�x6Ͳo��"=�\�����wsG���ڃ�:@/�@�[��	b?� �I\����($A��&X����ҕ�%��wLKV�4�O}?ܜp�oK6f�u3��ot�KP����m���z(��K��q��mZ�/���v�lP����FpLFeE������[5[�Y.��)=I�c��_�׀wbʸ5���c��0��@�`��]Y��ZNC��<F6�G�߬���EoǛku��CeQ��q���6]_�KQ��B��C�-�k��~^����W��� ����z�%�<�ph�=m�%S���6��b��-n�^�ݹF��Ѷ�������QZ��@�u�s���M�nkzI�)��E]��]��F<J�2��s��P����Q��BHzVDI��e�'�I�ۿ�� 	�%%�M?�ln텵�v�=+V�Zh*���+��M/�]��FΆJ���ݎ!�9Y"�\���-l�t��gX_w�6j��7<��o&�a1򂧶p���)ݖi��-�0Qf������S����u֌M!��x�a4�A�V��ջFT/`�w-k_���`����Ӭ���tM�SUV�Y�]�\�s3���ns�!�b���Uo���Ԝ��L��s���D�#��1^��Ә�Z���z�p�ė�m�,�Q̈́L��U�ufŸ�d2��� ��I�sd=#��C�'k�_�dn쉨��5�r���[w��^E4ᵪ�.��N���"�R^�eI��k�+��4{A)˿G`3�\VҖ������tO=�%G��\,�l�/�Nű��4�g�/����2K��"B������5�xTE��p���V��U>\�"k\�d��� �m�0��1�m6��5�>OF��`�7cՎ6�ox��^xu���s���En����m+\p��ú��H%�������ҩd�nƳ=h��t�F�(�FRw��tʥʷ��b�ϓ�7��bY�]<g�K)��+����tR��$�\R�ح�p��6��s��n�]YԵq6�A��!Iby������;�_�Lx"������[S�!Eo�Os\yP�ZR-��R�(�9#-���3+��Ru�Nt���w?��Ū�,�z[���tl��@��|��9=�%�#r@_�1ae����b䦭�L�v�I��r�}ä#OKs� Z��2���/�`c�n6����Z��/t����5�)�ѷ���Cl:b�_c'/]�5��b �~�Рn?��e�.���N��|���n���L���c����,\��{ݻ6ށ���	�E������U��"K��O�GnEf�BR�ۅZ7��*�7^ץ9uL6[�W��a�����aZ��P�����yNc����J%t��P�8�g��]��o��b`ʍ��t���.^��-�{��(�@>�f��]�_���66q�ķ����xb��(���4w`���y��V!5>��֒����$��G=Ӟ�3G9��� ?�[U�������7���f q{�ޓ��/��vJ�Vr�vݲ��Q[�s=>��՛J�����2z��9��S�XT���?Y?Y9��ؚ��o��;A��֓��Kj����,��p^���]��%�V'-'đ�7�_�b,�gZ�����q��g��('����{�V�n���{�E.�wv�`����bH<���Va�Ѝ2��-�-�%k(�֥������*t�f���
�����^q�W׉����B�L�~z� �T+�!+j�1��#���)���j�%mg�*d�=�A1=f���f�$�n�O��"_�c1*��_Wx�%�����u�Mj�ȕ�*6m,�<$��J�A�Q�=K���ė묟�S<������`�����a�!�mn���qa� ���r@����Ѓ��Y���*-�#]$V���WV��NK4w���kO�)8�Fb=�Zy���x�dȼ;y\��_�M�7Ѡ]񜷱�;�/��޸S�$rd&5dv���5J�����*�m4ջ���۽TƉ|X��g�G�g8:�5����f��6f������+qI��n�k����*2�=7P��m��-�ϑ�2���Θ�SZ
�}�Xy����k�{+w��߱6}��ﬦ�?ѯ����i{M�sWI}�QK��W~;#g;��y�jC|��U������]�A�����v�9W����K9�����r�E5�cBE��\. 1e��CUe��q�u�����İG�j[F�����B^�[�n��I��Q�ę�v�b�rZ_��W��rH�6��"�э7Q�9�Ќ�?ET4ኤ�k���ǩ��^L��C��Xc��hz)+��ϣ���N�
�:O]��[+�Qcf`�T�WV�:����.�tI˱����u"8sh�}��9L�a�&|�\�;����C�/eɷȕ�*��I��Fh �i�vݢ�4e�Y�R=U���NWkg�h���a{ѓ�a�?}��X�n5)�_u<����\�$�^FvS ��b�6��$r�!uRN�)�#e/��qի<�x��\���X��h�SS�,����m�I��B  �{td��mJ�A��
ʃ�O�N`��IW�3T��ē�&k����ZY@{|��4s�������N�/�����_[m�Gڏ���C��	��<����BRuD+r"Tڇ�m�^%�K�/�`2�z��Cg��e����"X�w�q�}K�>�^�b`���eFT���*�4�Ƭ\O4���,U~;��앑��r�^�e��X=��`"��U��NXcm��6��/��n���	Bo����Y��f�)1���
�p5٥�N�s��2�b��v�TX��ն0Ϊx�;A��p����l7p���2ſ�����ew:m��54\�D�z���Y`%@�h�~�����^2ǋb�8���z;<<R��ƙ�%����A�Z=��*;_���?�*YT��d��*�XSA噠�X��J7l�pH�٠�z��[���z����G��j 5�ɺ�,�\�REY���u��ko
A��M˲�Z1`Q�@W�B�%�e���q�Τ�"Q0rܿg_��s���z�'$N��ح�q�	s^��?'�"���mtAì\��i-7��"����뵡t(du�� 1���=��>��8>v�Q���q��n���͏���c����" ��p��ȳ̂�rP��Q\Rf����ik�*I�뛿e���&�����h�V}�*Q�Yۑ��V�^�oQQ�v4B�B-�����t&�p�%�-O�p�z]
��z���ʹ�Tkv���d��N�^kJ=^BAmQ}�>�/.w���_�%b��<���cF��\]������Z�@f�C�U&�ʋ������&;X������B,d��Lz��`W��������}�%�����J	5h9��i�T�x��Z�Ѩ�k��NgC��Uo|~p��|I���c��9��&Xg���A�/�6�įB�S�<L*��vK���T	�5�ӏW���+Շ �
g�IJǻ�~1.��R�Z���k�\��]͟���nc=����RMi&�~̚�8/��R�5�,��(1��2-���mP�������v�1W�j�J|vo�:
E�a���q<��3�]�FP�<-L\�jZB�Q��Re�)#9x��R�
�Ū㉹�fli    ���FI�wS9���Zˆ�--_��f�NZ�M3dQ�g�#b#[q��L6X�DP�y��d>��2�.v�Jש���%z>&�b<zX�u�)������v�D��Nj�Ml����ȃUZl ��ʬ�!G�F���h�Ƙ��rCv8L
<n'��������_k�ڋ'v����Ul����"l���*�WKV�F�.��ϖ`o�������b �>��ƺ���A�ͬbw�.O���7<�;�P�n��x��)C�PS�jj�P>���5���d/��d=�������40vs�ָ��ޏ���L�� �BnRf�[vo�ab��D�}Э��x�d��%�_�MZ,=|�M�L"Q�9��Ğ�D��K���~蹾���W5�N�\
pZ��Ƒ�����$���&�i˶?ᗇFZ'�����BKrwB�O�U\a����8[��Go\���}5�&� nY���u�5��Y�=���%	���Jd�~D�dK5�:�ޔ�x���3z�Bp�[2����f<��8�w��( O���]�p7���w˚dӜ
D��ɤ���'�s!d{�I�.�)ܝ��n�F9�L^�������`oe�`�ڌ�_�赤�[[�w�B���pE�]j�!�%vyX,~j
��I�f�D2�p3Ro��I9K�~_g��r�
e��ѻ��ʱ�����d��4��*c_�<�<Qȫ��}o��D:�±���g��̝��5�{��Gb��_z8����x��/���r"�%����4i]���P�R��a8q��>�K+t�?�C;=�7��f��w���&
gS/��H	�OX�Y��ս��Z�r���v�PUJ�8�~��oH�l������7��h���}u���bgWk8]�E'��x��a4̺Q<�� ֳJ���>l� +�M�0�Ɋ/�^�=�ě�$"�Ke�=˚_ȕ��Y�n��]�';�,�	�w2���"y�+�a���112���sE�S�x���2s�0yn�����]�6g/=�l�;��bݷ�}N�w��0��|Y`{rP �s�Xl�L�����zi��c,�xs.��I��ƈ��"���7��?��Kݟ��Q�l�����F���׭W`dkE땕��K#��
�"Q!P㏞1�R���J�ˢ1}�8�����7���ut>���y��O�RN˯y�i����!4%I�ȏú�����iOOwJ$=��jD��`N��lW��-�Y���D]E�ď2����h�E�	힞|�M*�d���)"��>/� ��ᮏ|�QN�ו�Ŷ�o��|=
��4H˓����8F�)���ߒ���}U	h)� �39nZ�r��hQ�4�Hk�IM���t���H���ٌ�������c��}�Lי�]��p�~��|����`"}=�񂧪�]�S�!i;��ek��A��a!�%��%�aR����1��	���k��zW��qQL���<~���{+,���A�tr��F7K)P�!2�SL��Q!��u?�GD7o�[�EpA�:^m��,�x�Tii��{�;�+��@s�BEK2�R�&h�+��� f�|���(S��G$�ǻ�0�}j�gz3/rÓ��>h�գv��F?��;�WR�=�"�[Oձ]�4M��sHR����p-�N?j)-|)��rK�'�W({�`�6��!Y���|%�Uf�'y��'<���i�H�d��I�&׽8uv���X���\��*���,�H����4��p|j��ƾ�q������^u4��n�#��8-[��^t�s�ʹe94GND?5[x_������oH��d���=����B?ړ�a�����>b�({�H�:�D���F�*+:A��>5I�b�y�d"�uO���~e�t=4��Rc�����.V�a��u;R�s�<}M_���3�ͱB�d�Pq+
�(���t� K�O�~�Ǝt��>���?g�F;}#$����hRP7���x��ӿ7�t:���PNlVAG	"y�M���47�͚�M��tS&���(�O�|���f����Ct�o�7#�ߣ�V⟎�~U�����nh�:�EQG&j���U"�"�еc��$���x���M���zEf7��}of��I����I��U��B�w���^��o�-��S�W����\R-Se�Ďy56$�4m?����YҌO,�v�+[�9�y̵j��/�����0��~Ez,�mYa�(��-'y��Q�n�4�̏`��F����d[w���6V���D@���N�ow�����%��=��i<��b)肞(	��vBR
i��B��f�ԥQx��*��6���˥?�?F"ζ%��ɺ��̨�m���]���~�T]����H'�A�����#Dlt�K����l��T�M�b�4�~L��`�UݬnPQ��_��_B�s�ރ!]N��u�l���̩�.2��@�8�X�����Z�SC	�S������v���am��e���}��{�:���
��E�\V�m��{U8H��5�_�������^����i���	�@�-=φÞ,��c�$���np>U�×��F��n%eh����c��mQ`���i�~��X�e�D�1���C�x.{Ar׽A��/��<�����eȿ���C���NS�%y�v9�)&[>�3��iD\�J�����`,G�6�-���OVs��n�&>�[�� �RԴ�}s�\�n�_����N|�pT�Y!6����bبeQ���������,��H<��U��?Ա�-��_D�����e(/�K�������vbvyE�E�m��D�@㶘�>*|�p�7\�5)��|#�R�%�܋�W���\�eиo<��G��f<���xwu�yg��<ݢ&��B�<�!ɜ�3���Mnij�p��>�8�
�ry��-C��#۸���z�5�b3kF��$|�k_L3��Ц_}C�%��Dξn~�sk ]䅵_�8u�ĩr��@����Q$_��D\�j`�ĳ0Z6σb��tmFW��v�d�?��+�"�( 􂧢�gE(�@�xR�@̤N�ƀM��������t��~ި3����o�K{�.��z���>���(Y�����'�+���S���k���+2��qf�Ik|�7�O>�XjE�3ݺ��x�;Nl8`n�c����[o�`��������Bv���n����G:'Y�r��̌h��&K?|�X�4i��л���z�yN�L���\�Q�z*k�9�rU�K��߲�/]��K��m�Z3v#bW�o�,�:�JUĨ"��1�*V�YrVu�4�=�l�u|2{��x����8�˥w+vB����N����H�nC\9O�R�DL�
Q�-�V�S�ϧo&L���Rj����nvX���C���<������e/3������[����2�̪�8j"VZ�Ǯ��(U@/��x�<��+O�|�;���3�0w�VS���@�Z/ć��>�ߍg]��~zl���*SI��RlF����� y|�G�7�px� �����j~r�˩'[���(�M���'|����Up�8�'��%6���J��c���2�a�(IM�g�T͵��[R{DO�s�mn��ٯ&״��c��������|^��Ӓ�׽Kq^��!V���楫;Vj�V䒄>���L�G�ޜ>�}�̣������M�������=1��'z��$�W����*���-n?{BSdeV*�'�Xr)\#�r"q3ZݯY C��B��E�V�B�)p��}����Kx�Q�wHH��vU(q�Y˷���0�40�������?"I��c~Z�������tؗ��,_ ��&;T[����R�'�q�^A. ��j��f!�++X�ҼJ#����q���%o�et.�4����]0�R\�U6Yb����@^-s���T��]��}�y�/�i�0h9�Z.�G��M���=�R]O��r?p�Ij��p�V�,����$��d��콷����1#�]�o    \V\Թ�&����Ձ��!w>���i��x�ۉ��\�X�������8\��4�gs;%l(���iǳ���%O�e03�K�R�CQ��p8*M#��#��cJ�z�l���d��>%�|;&W2�N+�3��_�����'/�3ؕ1_/���w
�̮\�0<۱S�jю�����x%)��S'xT���ѱ�Ynڳ�\�f����7]���?�:&A-�i�y=��X��dP]V�d]E����S�����t��B>QvDt�B!���'�o��>f� 6RT���f �iǋ��4o�Hp�((jK��1�ٙ�q�+����cM��L�~�^����n��(T3�/�"�y����� �j^����ċ��+厚Ժ\ױV��/�uEE�����$�d�zϧx;-�+���b:�a|ɏ��?�1U��Q*�{�;��n;_�4�[��9� +�g��(�Ay�=Ej�3e�s�2):�u��j*Dƴ�����^��'̏Y���k ������Ď:-����L�-�)��}�ı��i¸� �Qj6�?6���c�7�Y-�-\�_�C��Fm��]p�3{n=7� {�j�U֟𨍵����T�K��ْ�H�A+��>����b{YJ��yr��
����p+�;O_6r����@��4�G76�x�����k��ZH-�Q�AVh)�K?�Չ*h����o����29��2��z���iy��Y�s�V��Ӎ�<'��/t��m��ת�(橯�j�%�оp,F"d�0b�sz,����$��V��ۑ<ai��;���x���n/8J�,f�$f�G���U�ǅ���!1�$ej%V�{I<�Ŝ�rP7��ϫ78�@
����䣯�q<yx���9��>ڞwY<C`�����ۂ�����V�P*����;@��C���\,>������k�#y�M5U�����#�5f����]����&/\~�[x�{�F�;ܳ'/�g5$��m�PC͡�����}#��j+-���Bl��p���F94�a���T���&��^�7�s��-����EBޫ��&�ۋ�B��).7j�F��C�����Է�,h�����F�I����&�f+,��:M�����O���v'��1}�L�.�܌̵V�6�$qP�ԆbH?��p�@	�����g��AS��������iW�p*�rغ������E�WRے��*���$~�Q�+��P��e���G�*m�;m�>��1ی����b����A_5\�]V������P�?�4���]��S@t-��D�$L�X�(�����A0�o�=�}�L��s-�W�w b��ѰY���_�ྲྀ~|{�WR�� @�-,YĬ�.e�ő�D�J�6���U���GV}8�ri�GƬw�J�5��`�ҷ���8����2�@8���e�u����-�y!$�s+��h%o��1=b2��ajw]�눕�Ut�D&�Kx�0�_>����q�(��^4]G�	��JԮ���Dv)����FWtn�G)=�=O/P��|��a��rCW��B��WC/wI��`���ˍ/����y�.�����?����:�;9���P�Tc橲�E~o�.��v&�?�ΰ�\�ʗK�5a��i�+g���j��a�is��Ռ���W����w]ˢIL�����q纽����")Qwr���圳��Hv�LU��FOO��D�֎��ga��~��˓m�=�9.WcE��Y���	?/��-$y������϶"�=��d�3�����[n�a�8s�Y(�ײ�	��Zڙ����Rsŕ�h��f�βWA�y��S����"7ɬ.�{Y�?�]ɜ�r|d���l��l��I��8J�F�@�,����K{/��8��L�ֽ0g�޵-:�ۿ����=$�s��YR��YO|��1���T��EE�i�oAVQ�N�������+�FHĽ(b�"Ҳ�xz����0x�ȭE���������ﾤT�#���uYD�(��U�z�K�W�6��31|���6>k�:��5��WM=>P�����x���'|G�@�}��YO�˻Bɪ�DP�,� 3�x��r�aOdM�`&������YK�rk>qs��c�<5�GC���U+�-��V9]�8��v$}Jg(B�����
�S�r���E����l�A��O��.R:<��UqB��*��{v�]�$_�*"ܮ�c�E`J��{%�@���S3��j���k78�V Y�Zr\���d��"ʢ[�cYZ?��v?�E�أ���/K]��K}�w@��_���;� >͠F�0�}'�L_��A�� jas�kNV�B|�Q��p��~�}��K��O[�Δǋ�����[`�g�e���yV��*�0���,WM�y�ؒ������_���,�ay}�!#����c���zt�a1Mv����ᄮf�|jWt�[>���Qu�R��J"_�u>U���i�֢~�n�٩���`%+�z5ܜ.�k}>d�)�wc�^~�>��9�P�ݭ�A����"�tk�C.�m�J���C��$����K�2%t���MW��_��J�ݣ��χ�\�ềO]PW���M��,'�a�.k��UD�/Z��z��莴��b%H3�s���e�Z���<�q��Gی���ʹ�&qX�w�zOW�p��>K!%¨}φ���#�>�M΢�G�5�����çf���S������^�#��g���6�j���t>w�_��{�d��i�R��|�������:�z�#��y=ɳϢ�!�4����s���*,i�f�D;o�q�社���g�\��S���O�0i=}����[���N3��ء�����k�h���벮[��8-�DX+�������P�#hoл�)�� ��239�̺ɂ��A�	a�Q_���*�[xG��!�EĎ����da�\l��+���J�_��%E�����C�}�~�a�t��-oh�ȱk�A������gw[�F��j�Hw��Rn;sg*w���Bp�ǃ���GG�'��NhH�Ϟ(ת'4� �[�ɩf��Rk��t��{1}�smQ�fU�7(�'i�Nx�f�Y̶�N�j#;�Z	<�����|QЊ��է�Q�@�!�!�5����9��|C5��5�I�w�z��W��$i��ɷ��Q>��l|�8�f����ѕox�K%���}R�*��kH�1Q1&�+�B���4�R��uZx_\��j�5��*tќ�wg�� �ÇP�e�E4���'��ߋC�L�=]�)���R�
��}�)��ŇB�M<x�T�y�u�� �Gu��^y�M|�F迧��Lح+�ʴ�K��py�f�#ާ����	�d�B?�1�8q�	/P{kQ8#Z�B;������3��J��C��k̻�໶�n�`���sﳖk&�f�X�P�uk AZ녃�=�=�1��zA�g>���:���av�����;o�dw�P�Ó��[��S��KJ*��3����ǑOòH�C����Q�w�c��wkA�̐0��4.B�M��6��7_x�J#���/:{�E}�u�d((Z�C��1���|c���tL5q�b�N���K��O�Qq<��Nᴡ9̟(���O̗��;���=��@)���Ț��M%Qm�y��UəF֋iO�ڴ5����4^��N�����A�:�G�p��u��V�fү��E�H���?C�����e�M�>�g)gB��G&nzL{zQ���|�р���P��'�[a>�6��V�n�g➄�?����ԕ�l�kM��݇�i6���ڶ� �K�����`+T�{z����2P|���4��K�_ձs�nW{�����N�:|I����¾ f�A�FIK����2�`��V|j�����=�3ҙȚ�[�
�sA��o��B�Ӛ��mZ=�nhy����tF�1a7����q^���q#w�ry��r*�HXs���%M�Ks��g}k��c���d�__d���u����R K�m��1�OgL��
~A�O�*ulq�l����8h�{�NI��l�칧"(7�AX�K2O�_�n��sd��v���[x�`٪��    �+qAkt�	)k��ĥ q�ֹ���(ǦZ�>˳^Hy��q��Q�b� �(|6�L�;e�^Qri��7��9�'�g��_��O_Nb��Y(G-�t9�lGfh���+�{D{�D�mx��}�{�wHդ�,g��Su����o'�ez;&?L�^�)\�O4�7}ţuK�K�t#�<��~h�:R{}���D��k��������}��L����$Mv�Tf��t��j8�Vu]��OOVX�
;Q��Tu5�R\�'	_V�0��K�Y��G5|6��r��n��Z9�!�vM��眍'?U���<滠��8�a�e����V��V`r��#5�^To>ND���$i��-��Vk��Y�nv���\�7�Y5�^6�๮+���r�p�>�3���2�P�-��*m�#�\�
�������o�
���m MO�K�.��p/�X��?��{vg�����⧭it�rU#LM/Ԍ��A�
V�6���c�հ==�aVU��iIqDicD��~�n��5}��Ծʟ��=�	�/* �)����D���.U�c��*��aiju]�^w�9�8ԕj���~3���uNR��?�Z���Z�o镔���;��W�0�OdK��S&��CP��66�@�����f�h~��vw@H�T�#p�AxH-6/������ i�Z�G�[�����L#����a�E�l&:JR�)�S����2�6Z�'�P_����d��'�\{�(^*�l�@MzK#�d�s��俇�u�-�����}l.U
EUS���txǮ�C��v]�۫�\p��H-c���ȸ�Fb���d>{�b^}�2�����@�M��D���	�t�
����7��,ZY�)�ZEN��~j1��Xp˽�Zם���>��{�Ag�4d��V�elJ��hrs����;��>O� �Q]EzZb���,$y�Cq!I{SG��Hd6��ET�X�"�f��W7�v�����h���Mpgk8�����J���	]�e���y]b?l�8A�`�����虝� �[���9F^��G�x����rjT-��a����ЇG���\<d�6o�B#a�6|$ �,Rx�������ލ��:~��*H��gj6�;e�'L>,}��z��.�篱���X�jC'�'E�i�y)��Z��ɔ�f 7�j��8��.�a���,��T.��)��<�n�_��"|a��O&�lDe�`8i�t�#�浯�Nm�/q���ħ ��<7vu�{p�Q<�,.�;����x�g�����-|
��{O�����]ӊ��kɎL��&u܊[�����W��%��p�=��q��l�>1,\���+i
T�r��Y�?�]�<l����>T��������^�����T>�����%�[q����H_e�k�X�O ��J���3g.9){�L��jtx�_��R7����X��&�o�V����RQ?S�V���g�U#)�Gy��2�8E�U7�\�e���Zʵ���e��5��݅���켏^n��F��nn�����-mH����<�u&vV�gO�A&Fc㰷h����7���~a���?x��ft_��I'�v��t͵T��6�5����t����r�Wc%Z�"���_�����[��\����LjGk���ܺ:������<�/D>EC�i���Xf��$ش�\V2Z���e��-o�B��&���8�Q���`]�.w�\�|����W��`��݁��ʉn���@��8R]ŵQ]Ƒ욕g>�b%���� �<\��@r��h�ʯ0��ȓ@��5[KJf�G�Z+����ʣ�l���xN�G���L�#���v+x#��Z>��Hx⍎e�|x�uϖ�8����]���]�>K�7h������a�����he�|X4����B9$pI]s��#�g��*�r������6���9�|�7|�Z���2c����'|'��+�Z�}ֳ�@��eY!W�MZv�o+LӀV�{��e�f��f���I������v�xx�/C���Qu�� �;i�}����x��_˲��e��VS) T�b��Zo�R��h{t����QEs�p_��{������7KXm�0��Ш7��ϽY~����B�0W�I� ��jf�JI�i���&��zɄe�
Ź0��8Nƕ����y�4�����wJ��x~<�ŏ��}Ϲ℮Yx�c�?9w@�1��M[ҋ�nh�Qrʌ~<u5��ż�9zp���n�vW��%t.���S��+�y������G�,~�
�a���|Yɑ������!�-�I��o�{�������S,W,%};NOn�Ue�ϴ�͜�ek)�x1	<������RI�� @�>�`���Q�qj
���DKu�߻��i=C(���2>h#�TX�uc��u?
�!-N���V���{q��M��T,i�P�|j���"Yc�n
�ȊBh���c��j{�<W8T��[�gv�����]��(o5Z�v|��J:���T)��j	~�V@�����	��R5�R�c���LF�k����G����9?��Ь�~���>og�a����`>=��W�/�j��|;+�S�ͺHx\�e���$�PdTi/��R�\vq�A��Bpvk�j�I�S���/�U�y����o�w�DW<�
���S�:p#�TJ`��D\M6�2܏���r&j�5X�ys����V�Ad-�>��%�����B~�Ӯl�.�D?�-��M3�	�u/�>�2��B!S��#=���I�E<�G��6҈s��{�9���_�p�ؼ:>;��2�g����L���I�e3�m,�X�L1� ^v���W��ҡ%>5}%w�(Y�}TS��w<������l���E��?��=��)R>q(J�Ǝ�**[G�B�J�Z��C+�D]:4�
�1y���'��<�6�Ƒ�3k0���h������]1�Zg������e��E��a�B� �P̒���h_�T��bF<y��cX�W�tU���k��CQ�i����j{�gg���ؑ/���qr7�!RƸ��mN
/l�ƙ��W-�ʏ����uQ��3�����>�{��l(�W���㙎��O�wO̻l�!�C�Z?Ԋ�P����,&�R�YEY��}��={&��:W����b�k�l�n�a=-�_l�������)�ꖡ~�=H[�mXM��)"�Z�nb��W������D���:ϵ���O��9r�qY>G��-�`����W������g�^���K��@��a�р��kfcѬ�{o�5k�A�-�(�����Kx{�'��Lʥk�C��΋�V����>����X����J��Q���ǹ��2&��z#�ӵ>߉����+�K���/9���s��ع�<�cy�Q�ٜ�/|�/�y3���~�0HaS=����5�;Z�{�d}��A���xp������G*���,2���c���0��kzZ�����m��J������>���8�1RBR�U�E0�ާ��/�5�e'L�~�\y,�_~4?_}I߫�r�m�|p���x9�OZy�������g���@�nT����ڏ�x�s�^&a��N��r-Gu6���	>o����A0�b����Q�dhH�E$��'zW�;�I1b�`z�F�d��CW���@��*�� i�n~�����wn�㠻����Eˍ��ih������QI����'���BT��O�2�ݰv<�׳�l�c���%�@�Q����ms$JWV�h�`��5ձ�~��9��4=��&�.�I'������~p����v8qjPO���]�����9U�`���&𙸰ky^6��Kӥ���5{=8���9ˣ_�x����T�!(|�b���B*F�U'sIiZF���R����Q��P��f��ca(\�� Un��*}��Y��ד ������d�pgux�3�K�#9�[��F�Ur�Q�5I����r���iD#��r�Ҭ��-���`����Yu*�������U�ν#z���c�pԔ���yX�v(����I!8M���{c{rq!���cY�e�Ҟ�غ��J&�Aݱ�����U�|�}O��    ϣO�	��ry��\V:��^�V*��C�d��G�^��8s��x��u{��۾VTj�/ݒ�7O�h��=4��νYf���Q�kZ��8�/�}�����5Rb�/z����==���Y.���/�����n��u�= �O��ln0����?#<O>��r��&C���ʨ3���ť��Y�r�Q�ަG���f���̀N}�����\����_4����������*@� A�}Oy�
je��G�`ˎ#�Σ�K��7�ޅ�8y��>�!Y��3t}��KR+�孰��F6;S�\~��}{�9�}�^��|Ȫ8�S��T��@�%����؍ng��\�o���F�R�����~ʚV6߮��m9�ܺ������-�S�B��d�ɔ/�(����m�P�W�Y���D�D?_��:�S2����HG\ʔ�Z�����O��,��:_~��w�u+n%����;r���Pk�+�8U�4�`ܟ򴛮K1?U����3���ȿ�IxV'z�]az�^�R�[&�~���_��-�{sy`�*�K��R�j�iw��k?�����]��HS�]�!���K������
��E��%�.��'���݆2��O�
�xĈKP���èV�R?J�0	�w�v��"��S3�A��w��W�������`X(�0��̱A�d?.ޛfr���H����m�)3C�-Y��V�λ���r㐐�q=]�F�10�����lt;p5�O�My#�}���_x����F�a�!j)��i��)�˔��8
�&�G/[?ŗ%<��ᥝ��}���jjl��8�����<�un����3Pt'}��L�����uly���ޣ�	P���e�-��q��>/�����%��hD�,�ҵ���~���b����x |���R�R�8��5ZU��O�I!�S�vy������ylM��fIQXy�i��
ʐ$�6S%���
J�I�q ����k�]���<���\A��>u�lV�i���M���?O�f�h�S�oI�/i����T�^N���r��#��Y�"�i-��mA0Ė�5��i���]�މ[��V�eG��+���wͫ$��m��O)�f���6_��QM��N>A-�>S�ea�K��Su3?15��_�(@����H�8:sR��#��c0X���3L9z���SØ'����ooZ�Ǝ&�4'�Pl�.k���R�K�w�f.�8q�zv�]7���r1���J��^%׻����z���O������<'S�����P$X�ePF_�"�F��rެ1>�8�܎���^�Wi������5[�_ÿG�ۚ�-���g� �Қ:�e��ƦRؙ��E��F����v���s�kx�RBEHM�e��i���C-܎wglh`�x��P��s�j%�Z�����Ty�Eq�8�i7~�{��@�r�U����H���J,��c)�ZP�\�j��M��Z��m�lVk���o��s1���6ui����[�F��B��/��x!�����4���������L -�U21���t�<~��K���T)��k�V�2�sH9�w=�Bimj>����	��&DM��]f��V�V���Z�+�(ͫ{�^l<��%o���]�2	T�nI�Q�#┅d�Im�IQ��n41���/W���E�m�t��z5?�=;���X/W*��~�{�|�8z�[��.(t�?m	E�BO'	�YR:�t�.5�V�Vd�W�N\���r5a�S�_
z\rZhC⮤9�N��O�rq��_��A���z����c-�Bf�B�5:����ƕ%������퉻���ӂ(�c-�����R�.�~�������K��{����p�ﱎ��M	ȲBs0�2U ja�N�Q���޼1�{��S�{�8x�wb.z���){��Y&XO.�a%ȾKV ��@���uĳ�l4�XN, �5����vN�=���ģ]c��OASKĶ��|*`{��`\ի��?(����:ܖ�	��W�����9�R�j���r���ԕ˨?pco;q4?�����C���ß��㼖�N���S�^ ۙ���[�/����َZq�4�k�*@f,Cϔ�tZ��S�-|ݒa��n�];щ�ǹ$�����c3���ըn��5�MA�u��P����5�b;�cb�9!��R��-C����*������dg��@X�./!:��Fp��ڋ�s�����U�<���wd�[��}a���d�`�y�hյ`�'%5����z*��UL��������4�,:V�|��镌���*)����c�c��g�}�}�qHt�=���
W�F��0|9�`����.8�J��˽�[B �����U-��T�E��s���l�"����ｄ)i%E��
,�Yr��:�v�_qࢭ�V���+ �����5��x�K�>�Z'�	�\_���=�	��S%���b#�TNsRP�*�s��t��d�zՃ?z�Y7�|>]	��.����<�zJ��2�ch��iD��e�Чr�]�Mq�?~g��&SQ������4�Yf,�s��]O�_�#�g�s<���in{]`'�ae��&���Z-`���ҍ�=����o��j<�S�S�yڞ�gueK�mE7\5-c��@	{V�HʧX��c�]q�k[����й�7\\�(}8�r��3s��Ӎ�}�.u�~z�ٶ�)�2Μ�u����g��`S��Ƒ��x�.7P�����s���5L���p�A�����x��UC0�>M	���T+�R��
���u`���L�3;ǃ�������UN�1���Jmk9�.G{-أ��'�Gdu��(>O3�Ƃ\S�-
EE�a&�./�T�?��x)Z�Q~�� Q��O\h.�f�IG��v$�iYo����0��g1�T�����x](A��̴�	��hl�n�K�����cq�Y�)M~���T�FS�s�8�_�ޅ�y/���m�T>�^;Vւ���t����	[.S���h����jO���ܵNmH�Q1{�T#����}=֖��*�G�����3	��a��2Z�T�E���%�L� �>�R���;nDL�s�@8T���J���v����f�Z���}w���+���ῗ��0����8@Nd��^Z����k:�Gv���u�1M�90Z����iܬ�	����v�J�ֻ��Ei��O��6ԖkA�U.��(�gs������^ӊ�u��2�z��cq���gd#Fǡ����2�f��������y8�����_O�Y��@�4��,�RŪ��hU^�R�yI���8�˹���y���2O��bs?�2О��9�_���ʡ��I��ۓ*��/Э����� �r�Զ�1�%�"f�m8������#^����j�*�fSo�Z>`�ϥ���Bz���5�?�_����ɧ���t�\����^��K�e������y.�{��N�]h�#_����?_�)f�@ٮ�"J`lX���j�t���Go�Ѻ{���>��,�����7���J��\�9\��5֋(���Jl.�q{���r�<��y�Y�o�ǋ�l��YFڼ�O���?C�{?اTNv�ĦQc �(�:�놔�\ލ䬗�h�1-W�����.����CnU�~��i՞x���=u	}�n�h7r����JPx'��1�$Z{�σU�9���={&��������Z��i�$��9�ʹ�6��w5��0;���^�,c��ĉA-�ܬ6s�����1	8�h)��Y���d�$��]�l����f�j]�,��u��F?l�G޳�BN��kiJ4[!W�P��}�ȅ!*t>���;O"��|�M�|jo;+��s�h;�t�KOY6���?��om6Ǿ8Ɓ�]N���4橖�P���h��^�~O_�W�/����1�*~Õ�+ZLS�5�\6�'��*����s���Mh_>��r@�L�t��	QS����j˶5�6_�.�Yi���N���p~^��AzQ.�)���v'��w��o,��4�	��M��d9¾�X�ք��`�����Ҵ"u�������
��xy�|�"p f  �T4T̍r�6�F�����-N�n�"�?��M���T'�*H�:�-V�̄1	k�R�8��Sg5ދ�I�5��Z5,�x$�xm�g�s�S���<��x�u��e��-�f
3G���jm^���ګ�� ��Q���M���8]#�������}�k�ᰒϏ��,��n�eO��/��ӣn�7��o�jd�܌��[�SZLFNC�oA=�`����B�FEN>�O�������F��`�b}��ꭔ#����_�3�q�5���H ��T(�&3�\�A�Bׂ���=�w�کXN�FH^c-Z^m�*Sy�����#"��,S���K�?��8�e��gò��P9�����U��F~,�
 �Q/�C:�l��8n �pϒ*g�pހ7I�G~%M������Ў�]���n[�;��T���~RGE�f���-c�l]���tC�.{�ߞ�g0������J�\+��&lS'C�&g��
�7|�D{Oo���e>��p�ح9�>hh��}*�ꝼ���E�.���7&pŅ$���sӦ�g�1�M�'	׳N���{�8�õ��p=��e���eȎ���uy&�Ev.��u��^6��k�w�����g����]-yiH���G���ir�{j��K�w3^�S=��0���	)'����x⶛l7�/���?�a{I�w3��	7��&$��?x���EԻ�V�G^��}�J��u��~V��%j*�4�^q�5�b���f� �)���J��y͞��=�ؘKgg>��<�'�����w<�
m��P3����6j,4U�����O��*)#gې���U�m:��KrN6�B0��۾tm�4��<���w)��)T��%��0T�LW��I,���q�U�����������/�����_��'u����ʲ���~�w���ٌ�ϵτ�[&��Ej���U��+7���ލYG�A�R��,WP}jƛ�C�����:>?�B>_��rY��n�R9���/�e;�A���<%jm]��J��s�$0��ް����3[��D�u}.[�m�/0 �m0l�u��i��r�����]�U��C6xA��ƥ��rC!�j�z������x^�H��&�)����qم�\���V�3"�n�o/�Ux�������k\ȱ��bĚ�ob>�B���w�̿M'k�i�����2�������
k����n,��\�94��_�+uM�O?���9��ө�V��N��,�Y
#m���qnr�׵��V���=��t9�7`����r�ڻ�*��U1�͟�]S��ŕh��?�|U�K�I���
$5>�b-j҆��~և��#�t-[�C�^ԡwX^�a��|�1�By���2/��/��Վh�V@��^��Fc�*|��L���Hg��z���5��h����n���2��W�Đ	�󝻷5�rY�3��ez]�ͥ��鎁��n�Taf��\�=�PY/�y{J��(dl�R*�fS$k�-F%���Ԏƹ���I���?�OI��[H������ v��Z��qa�����(���-UQ�7wc$ߤ�yb�j���ݙGNk�mɔ��q��Ώ���v����z�>E3U��qHx!J�`�jV7��f�Sм�@��� ^^��P�*0Ӻ�#�:{�E~��O��?�\i6k͋���
]���O�F���jb��!��%@�4eڷy��{{�����Z�W�0^���p6�����7x�.�Sr1�����w)b§,�U
�b�/�6���6A�n׭�R���4EBK����ܳ�\�/	>����^�=��l����,l�_A�ϥ�Ep��B�a���va��^Л1sK#"���4�t,���p�|ݦ��L&j�~��ʇd���=�w�1!��y�e����G��+�fNi+�������łɂ~^��$�
_�Ǖtq��z�����=�oĘ\4-���ӛ[��i=�r-�k�NI��y�y�L�*�V�ۀza�[�r��?W��<.Ιs���Ǿʂ�{��HGp^<��A3������+Q��A���,��KX@�yZe~�D	of=u}�M�&�iӕ����ZU����KU����'�N<�|#���Z���O�'���i�� 欖2e2a���X)]W���nyt�����^���e�+R�����I��w�x�}�&���G��u,P���3נ��ʎZ�y�֌7)�cj����0���6:�,�Z�K��~��QPa%tS]�tq(l���]~��!� ���
��s�د���V��a�2��4Ԛ^���E��[U|�Ҟ)�_�۪c����*����,�)���~���_�����x�Ƒ�j+��0[W��� :uzf�>�1ڲ��ܔ���k{^�N�T�jYy;���?���~�n~�w�r�k	a����湌Sl�=u��A��k�r�����XbS\v��#���jŻ�8]m���L���9_y���Ͼ�av=��Q��W�(�ȗXW*�D���z�5� �BK���d-�t�K<q���Ot��u#�t���R�?`�RJ�'�����a���m�pő�6Q۹eW�u��˓B�c���}�_�f����b"9����A�I.���tW'=�˲�����b�}rx~�'Q����VF�����6r�L��i�2�����2��`V�<j������6�'�=�ݜ���B����'��r-��gMM�iUj���u��>��Y%'.V#�����LT�X����K�I���
B��0����:��3�j��'�-!���$��BF%Ǽj�D��x�,�(��g��c���L6����ܯ�3�����֖�Oe�f�:̒��6��x|W�B��� �$�SM����T��������޲Φ2�V��x�c�Eힸ%V�b���B������a��x�'��n7x��<ާ6����|�Ke,���u�4NjZ��V��,��2�Q�{���R�д�]���0r'��i�,,�����fm'���?����������'(T��|Bà�}*'d���g�W��=����"SR���t)hb-iQ���r�W@��	w'���v�����KIT�%pQ
Tb�>�
`�oX��=,a%ڣ�u���$�7�$�E�A=vA=�O�������/�'�F�4e� f:b��� GV��-� ,a�I��x��ws�.�<��r"U����k��ֈ.N�j�ON#者�Wo�/x�I<ĺ:M��z,�iٚYƙ�K7m?�S���_�Ho���F�ꣳg�kO;��M���GޕܡJT�Qx���/�n�L'r�w�?U�kl���������rYM��j=��pΕ8�ƫ��.v~_�G��]��3�Nz���)�z0���W��r�U�y\+1�P�Lv���-�Q�B���U�yL�h�G3V�j�#����J1��ŭ��zr	��,-�?�ݾ� ��:J ��#=��xq�^~^G$T��7����tŦ:<Y�dffS[Ɉ�n��F���̧�FڭA�ď��]6�kO�g9i���	�G�Qdb����<��x�"����v�P.�1w��'���8��,?NQ���������hm.��7ѵM)� Pt?�Ɯ�cNn8�F����k�X�X:vX�C_�O�q�je��6�"��Cs�MS��e�	ọ_
���{\Xi��7�k f�
��r� �<���N7?w�V4ٯ&jI	X5���M��s��l��7̹���衘���w[F�1>DW@A���h%.#��P˹�!N����}8N!����禕�c��qG���c���M_�;���Ѱ��_x�%�@{��gtK�!��9.���k	����_�����6��)��G��]��*h]D�
[�9N#m��YD��U�8�/<�5$1
�����������?S
      �      x������ � �     