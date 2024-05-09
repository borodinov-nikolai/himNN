PGDMP      6        	        |            himnn    16.2    16.2 �   O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            R           1262    57363    himnn    DATABASE     y   CREATE DATABASE himnn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE himnn;
                postgres    false            �            1259    57399    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            �            1259    57398    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    224            S           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    223            �            1259    57568    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    57567 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    254            T           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    253            �            1259    57421    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            �            1259    57420    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    228            U           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    227            �            1259    57410    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            �            1259    57409    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    226            V           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    225                        1259    57580    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    57579    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    256            W           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    255                       1259    57937 
   categories    TABLE     C  CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    href character varying(255)
);
    DROP TABLE public.categories;
       public         heap    postgres    false                       1259    57936    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    274            X           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    273            $           1259    58216 ,   components_characterisctics_characteristcics    TABLE     �   CREATE TABLE public.components_characterisctics_characteristcics (
    id integer NOT NULL,
    name character varying(255),
    value text
);
 @   DROP TABLE public.components_characterisctics_characteristcics;
       public         heap    postgres    false            #           1259    58215 3   components_characterisctics_characteristcics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_characterisctics_characteristcics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.components_characterisctics_characteristcics_id_seq;
       public          postgres    false    292            Y           0    0 3   components_characterisctics_characteristcics_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_characterisctics_characteristcics_id_seq OWNED BY public.components_characterisctics_characteristcics.id;
          public          postgres    false    291            *           1259    58499 "   components_characterisctics_values    TABLE     v   CREATE TABLE public.components_characterisctics_values (
    id integer NOT NULL,
    value character varying(255)
);
 6   DROP TABLE public.components_characterisctics_values;
       public         heap    postgres    false            )           1259    58498 )   components_characterisctics_values_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_characterisctics_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_characterisctics_values_id_seq;
       public          postgres    false    298            Z           0    0 )   components_characterisctics_values_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_characterisctics_values_id_seq OWNED BY public.components_characterisctics_values.id;
          public          postgres    false    297                       1259    57988    components_seo_metadata    TABLE     �   CREATE TABLE public.components_seo_metadata (
    id integer NOT NULL,
    title text,
    description text,
    keywords text
);
 +   DROP TABLE public.components_seo_metadata;
       public         heap    postgres    false                       1259    57987    components_seo_metadata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_seo_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_seo_metadata_id_seq;
       public          postgres    false    276            [           0    0    components_seo_metadata_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_seo_metadata_id_seq OWNED BY public.components_seo_metadata.id;
          public          postgres    false    275            �            1259    57472    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false                       1259    57629    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false                       1259    57628    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    264            \           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    263            �            1259    57471    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    238            ]           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    237                       1259    57617    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false                       1259    57616    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    262            ^           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    261            (           1259    58444    filters    TABLE       CREATE TABLE public.filters (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.filters;
       public         heap    postgres    false            ,           1259    58512    filters_components    TABLE     �   CREATE TABLE public.filters_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 &   DROP TABLE public.filters_components;
       public         heap    postgres    false            +           1259    58511    filters_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filters_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.filters_components_id_seq;
       public          postgres    false    300            _           0    0    filters_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.filters_components_id_seq OWNED BY public.filters_components.id;
          public          postgres    false    299            '           1259    58443    filters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.filters_id_seq;
       public          postgres    false    296            `           0    0    filters_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.filters_id_seq OWNED BY public.filters.id;
          public          postgres    false    295                       1259    57999 
   home_pages    TABLE       CREATE TABLE public.home_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.home_pages;
       public         heap    postgres    false                       1259    58008    home_pages_components    TABLE     �   CREATE TABLE public.home_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 )   DROP TABLE public.home_pages_components;
       public         heap    postgres    false                       1259    58007    home_pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_pages_components_id_seq;
       public          postgres    false    280            a           0    0    home_pages_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.home_pages_components_id_seq OWNED BY public.home_pages_components.id;
          public          postgres    false    279                       1259    57998    home_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.home_pages_id_seq;
       public          postgres    false    278            b           0    0    home_pages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;
          public          postgres    false    277            �            1259    57557    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    57556    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    252            c           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    251                       1259    58102    products    TABLE     �  CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    price numeric(10,2),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    description text,
    in_stock boolean,
    price_units character varying(255)
);
    DROP TABLE public.products;
       public         heap    postgres    false                        1259    58131    products_category_links    TABLE     �   CREATE TABLE public.products_category_links (
    id integer NOT NULL,
    product_id integer,
    category_id integer,
    product_order double precision
);
 +   DROP TABLE public.products_category_links;
       public         heap    postgres    false                       1259    58130    products_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.products_category_links_id_seq;
       public          postgres    false    288            d           0    0    products_category_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.products_category_links_id_seq OWNED BY public.products_category_links.id;
          public          postgres    false    287            &           1259    58230    products_components    TABLE     �   CREATE TABLE public.products_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 '   DROP TABLE public.products_components;
       public         heap    postgres    false            %           1259    58229    products_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.products_components_id_seq;
       public          postgres    false    294            e           0    0    products_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.products_components_id_seq OWNED BY public.products_components.id;
          public          postgres    false    293                       1259    58101    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    286            f           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    285            "           1259    58143    products_subcategory_links    TABLE     �   CREATE TABLE public.products_subcategory_links (
    id integer NOT NULL,
    product_id integer,
    subcategory_id integer,
    product_order double precision
);
 .   DROP TABLE public.products_subcategory_links;
       public         heap    postgres    false            !           1259    58142 !   products_subcategory_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_subcategory_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.products_subcategory_links_id_seq;
       public          postgres    false    290            g           0    0 !   products_subcategory_links_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.products_subcategory_links_id_seq OWNED BY public.products_subcategory_links.id;
          public          postgres    false    289            �            1259    57443    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            �            1259    57442 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    232            h           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    231                       1259    57593 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false                       1259    57592 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    258            i           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    257            �            1259    57432    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false            �            1259    57431    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    230            j           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    229            �            1259    57381    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            �            1259    57380 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    220            k           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    219            �            1259    57372    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            �            1259    57371    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    218            l           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    217            �            1259    57365    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            �            1259    57364    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    216            m           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    215            �            1259    57515    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_release_actions;
       public         heap    postgres    false            �            1259    57514    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          postgres    false    244            n           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          postgres    false    243                       1259    57653 $   strapi_release_actions_release_links    TABLE     �   CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);
 8   DROP TABLE public.strapi_release_actions_release_links;
       public         heap    postgres    false                       1259    57652 +   strapi_release_actions_release_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
       public          postgres    false    268            o           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
          public          postgres    false    267            �            1259    57504    strapi_releases    TABLE     �  CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 #   DROP TABLE public.strapi_releases;
       public         heap    postgres    false            �            1259    57503    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          postgres    false    242            p           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          postgres    false    241            �            1259    57463 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false            �            1259    57462 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    236            q           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    235                       1259    57605 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false                       1259    57604 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    260            r           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    259            �            1259    57452    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    postgres    false            �            1259    57451    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    234            s           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    233            �            1259    57390    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    57389    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    222            t           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    221                       1259    58055    subcategories    TABLE     \  CREATE TABLE public.subcategories (
    id integer NOT NULL,
    name character varying(255),
    href character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    description text
);
 !   DROP TABLE public.subcategories;
       public         heap    postgres    false                       1259    58066    subcategories_category_links    TABLE     �   CREATE TABLE public.subcategories_category_links (
    id integer NOT NULL,
    subcategory_id integer,
    category_id integer,
    subcategory_order double precision
);
 0   DROP TABLE public.subcategories_category_links;
       public         heap    postgres    false                       1259    58065 #   subcategories_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategories_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.subcategories_category_links_id_seq;
       public          postgres    false    284            u           0    0 #   subcategories_category_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.subcategories_category_links_id_seq OWNED BY public.subcategories_category_links.id;
          public          postgres    false    283                       1259    58054    subcategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategories_id_seq;
       public          postgres    false    282            v           0    0    subcategories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subcategories_id_seq OWNED BY public.subcategories.id;
          public          postgres    false    281            �            1259    57526    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false            �            1259    57525    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    246            w           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    245                       1259    57665    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    57664     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    270            x           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    269            �            1259    57535    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false            �            1259    57534    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    248            y           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    247            �            1259    57546    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false            �            1259    57545    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    250            z           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    249                       1259    57677    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    57676    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    272            {           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    271            �            1259    57489    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false            �            1259    57488    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    240            |           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    239            
           1259    57641    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false            	           1259    57640 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    266            }           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    265            &           2604    57402    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            5           2604    57571    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            (           2604    57424    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            '           2604    57413    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            6           2604    57583    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            ?           2604    57940    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273    274            H           2604    58219 /   components_characterisctics_characteristcics id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_characteristcics ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_characteristcics_id_seq'::regclass);
 ^   ALTER TABLE public.components_characterisctics_characteristcics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291    292            K           2604    58502 %   components_characterisctics_values id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_values ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_values_id_seq'::regclass);
 T   ALTER TABLE public.components_characterisctics_values ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    298    298            @           2604    57991    components_seo_metadata id    DEFAULT     �   ALTER TABLE ONLY public.components_seo_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_seo_metadata_id_seq'::regclass);
 I   ALTER TABLE public.components_seo_metadata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            -           2604    57475    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            :           2604    57632    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            9           2604    57620    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            J           2604    58447 
   filters id    DEFAULT     h   ALTER TABLE ONLY public.filters ALTER COLUMN id SET DEFAULT nextval('public.filters_id_seq'::regclass);
 9   ALTER TABLE public.filters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295    296            L           2604    58515    filters_components id    DEFAULT     ~   ALTER TABLE ONLY public.filters_components ALTER COLUMN id SET DEFAULT nextval('public.filters_components_id_seq'::regclass);
 D   ALTER TABLE public.filters_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    300    300            A           2604    58002    home_pages id    DEFAULT     n   ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);
 <   ALTER TABLE public.home_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277    278            B           2604    58011    home_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);
 G   ALTER TABLE public.home_pages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280            4           2604    57560    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            E           2604    58105    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285    286            F           2604    58134    products_category_links id    DEFAULT     �   ALTER TABLE ONLY public.products_category_links ALTER COLUMN id SET DEFAULT nextval('public.products_category_links_id_seq'::regclass);
 I   ALTER TABLE public.products_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287    288            I           2604    58233    products_components id    DEFAULT     �   ALTER TABLE ONLY public.products_components ALTER COLUMN id SET DEFAULT nextval('public.products_components_id_seq'::regclass);
 E   ALTER TABLE public.products_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293    294            G           2604    58146    products_subcategory_links id    DEFAULT     �   ALTER TABLE ONLY public.products_subcategory_links ALTER COLUMN id SET DEFAULT nextval('public.products_subcategory_links_id_seq'::regclass);
 L   ALTER TABLE public.products_subcategory_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289    290            *           2604    57446    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            7           2604    57596 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            )           2604    57435    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            $           2604    57384    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            #           2604    57375    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            "           2604    57368    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            0           2604    57518    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            <           2604    57656 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            /           2604    57507    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            ,           2604    57466 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            8           2604    57608 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            +           2604    57455    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            %           2604    57393    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            C           2604    58058    subcategories id    DEFAULT     t   ALTER TABLE ONLY public.subcategories ALTER COLUMN id SET DEFAULT nextval('public.subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281    282            D           2604    58069    subcategories_category_links id    DEFAULT     �   ALTER TABLE ONLY public.subcategories_category_links ALTER COLUMN id SET DEFAULT nextval('public.subcategories_category_links_id_seq'::regclass);
 N   ALTER TABLE public.subcategories_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283    284            1           2604    57529    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            =           2604    57668    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            2           2604    57538    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            3           2604    57549    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            >           2604    57680    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            .           2604    57492    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ;           2604    57644    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266                       0    57399    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    224   ��                0    57568    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    254   P�                0    57421    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    228   S�                0    57410    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   2�                 0    57580    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    256   ƥ      2          0    57937 
   categories 
   TABLE DATA           x   COPY public.categories (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, href) FROM stdin;
    public          postgres    false    274   �      D          0    58216 ,   components_characterisctics_characteristcics 
   TABLE DATA           W   COPY public.components_characterisctics_characteristcics (id, name, value) FROM stdin;
    public          postgres    false    292   7�      J          0    58499 "   components_characterisctics_values 
   TABLE DATA           G   COPY public.components_characterisctics_values (id, value) FROM stdin;
    public          postgres    false    298   ��      4          0    57988    components_seo_metadata 
   TABLE DATA           S   COPY public.components_seo_metadata (id, title, description, keywords) FROM stdin;
    public          postgres    false    276   �                0    57472    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    238   F�      (          0    57629    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    264   ��      &          0    57617    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    262   ��      H          0    58444    filters 
   TABLE DATA           o   COPY public.filters (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    296   J�      L          0    58512    filters_components 
   TABLE DATA           i   COPY public.filters_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    300   �      6          0    57999 
   home_pages 
   TABLE DATA           l   COPY public.home_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    278   X�      8          0    58008    home_pages_components 
   TABLE DATA           l   COPY public.home_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    280   ��                0    57557    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    252   ذ      >          0    58102    products 
   TABLE DATA           �   COPY public.products (id, name, price, created_at, updated_at, published_at, created_by_id, updated_by_id, description, in_stock, price_units) FROM stdin;
    public          postgres    false    286   #�      @          0    58131    products_category_links 
   TABLE DATA           ]   COPY public.products_category_links (id, product_id, category_id, product_order) FROM stdin;
    public          postgres    false    288   b�      F          0    58230    products_components 
   TABLE DATA           j   COPY public.products_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    294   ��      B          0    58143    products_subcategory_links 
   TABLE DATA           c   COPY public.products_subcategory_links (id, product_id, subcategory_id, product_order) FROM stdin;
    public          postgres    false    290   �                0    57443    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   @�      "          0    57593 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    258   ]�                0    57432    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    230   z�      �          0    57381    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    220   ��      �          0    57372    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    218   ��      �          0    57365    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    216   �                0    57515    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    244   2�      ,          0    57653 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    268   O�                0    57504    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    242   l�                0    57463 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    236   ��      $          0    57605 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    260   ��      
          0    57452    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    234   ��      �          0    57390    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    222   ��      :          0    58055    subcategories 
   TABLE DATA           �   COPY public.subcategories (id, name, href, created_at, updated_at, published_at, created_by_id, updated_by_id, description) FROM stdin;
    public          postgres    false    282   ��      <          0    58066    subcategories_category_links 
   TABLE DATA           j   COPY public.subcategories_category_links (id, subcategory_id, category_id, subcategory_order) FROM stdin;
    public          postgres    false    284   X�                0    57526    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    246   ��      .          0    57665    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    270   ��                0    57535    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    248   E�                0    57546    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    250   ��      0          0    57677    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    272   ��                0    57489    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    240   �      *          0    57641    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    266   1�      ~           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 199, true);
          public          postgres    false    223                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 199, true);
          public          postgres    false    253            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    227            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    225            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    255            �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          postgres    false    273            �           0    0 3   components_characterisctics_characteristcics_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_characterisctics_characteristcics_id_seq', 10, true);
          public          postgres    false    291            �           0    0 )   components_characterisctics_values_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_characterisctics_values_id_seq', 7, true);
          public          postgres    false    297            �           0    0    components_seo_metadata_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_seo_metadata_id_seq', 1, true);
          public          postgres    false    275            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    263            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 13, true);
          public          postgres    false    237            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 88, true);
          public          postgres    false    261            �           0    0    filters_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.filters_components_id_seq', 13, true);
          public          postgres    false    299            �           0    0    filters_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.filters_id_seq', 3, true);
          public          postgres    false    295            �           0    0    home_pages_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_pages_components_id_seq', 5, true);
          public          postgres    false    279            �           0    0    home_pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);
          public          postgres    false    277            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    251            �           0    0    products_category_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.products_category_links_id_seq', 9, true);
          public          postgres    false    287            �           0    0    products_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.products_components_id_seq', 76, true);
          public          postgres    false    293            �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 5, true);
          public          postgres    false    285            �           0    0 !   products_subcategory_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.products_subcategory_links_id_seq', 11, true);
          public          postgres    false    289            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    231            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    257            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    229            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 41, true);
          public          postgres    false    219            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 48, true);
          public          postgres    false    217            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    215            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    243            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    267            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    241            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    235            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    259            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    233            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    221            �           0    0 #   subcategories_category_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.subcategories_category_links_id_seq', 7, true);
          public          postgres    false    283            �           0    0    subcategories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.subcategories_id_seq', 4, true);
          public          postgres    false    281            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 27, true);
          public          postgres    false    245            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 27, true);
          public          postgres    false    269            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    247            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    249            �           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    271            �           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    239            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    265            W           2606    57406 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    224            �           2606    57573 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    254            �           2606    57577 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    254    254            _           2606    57428    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    228            [           2606    57417    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    226            �           2606    57585 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    256            �           2606    57589 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    256    256            �           2606    57942    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    274                       2606    58223 ^   components_characterisctics_characteristcics components_characterisctics_characteristcics_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_characterisctics_characteristcics
    ADD CONSTRAINT components_characterisctics_characteristcics_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_characterisctics_characteristcics DROP CONSTRAINT components_characterisctics_characteristcics_pkey;
       public            postgres    false    292                       2606    58504 J   components_characterisctics_values components_characterisctics_values_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_characterisctics_values
    ADD CONSTRAINT components_characterisctics_values_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_characterisctics_values DROP CONSTRAINT components_characterisctics_values_pkey;
       public            postgres    false    298            �           2606    57995 4   components_seo_metadata components_seo_metadata_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_seo_metadata
    ADD CONSTRAINT components_seo_metadata_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_seo_metadata DROP CONSTRAINT components_seo_metadata_pkey;
       public            postgres    false    276            �           2606    57634 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    264            �           2606    57638 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    264    264            s           2606    57479    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    238            �           2606    57624 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    262                       2606    58519 *   filters_components filters_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_components_pkey;
       public            postgres    false    300                       2606    58451    filters filters_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_pkey;
       public            postgres    false    296            #           2606    74592 !   filters_components filters_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_unique;
       public            postgres    false    300    300    300    300            �           2606    58015 0   home_pages_components home_pages_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_components_pkey;
       public            postgres    false    280            �           2606    58004    home_pages home_pages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_pkey;
       public            postgres    false    278            �           2606    74594 '   home_pages_components home_pages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_unique UNIQUE (entity_id, component_id, field, component_type);
 Q   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_unique;
       public            postgres    false    280    280    280    280            �           2606    57564    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    252                       2606    58136 4   products_category_links products_category_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_pkey;
       public            postgres    false    288                       2606    58140 6   products_category_links products_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_unique UNIQUE (product_id, category_id);
 `   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_unique;
       public            postgres    false    288    288                       2606    58237 ,   products_components products_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_components_pkey;
       public            postgres    false    294            �           2606    58107    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    286                       2606    58148 :   products_subcategory_links products_subcategory_links_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_pkey;
       public            postgres    false    290                       2606    58152 <   products_subcategory_links products_subcategory_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_unique UNIQUE (product_id, subcategory_id);
 f   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_unique;
       public            postgres    false    290    290                       2606    74596 #   products_components products_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_unique UNIQUE (entity_id, component_id, field, component_type);
 M   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_unique;
       public            postgres    false    294    294    294    294            g           2606    57448 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    232            �           2606    57598 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    258            �           2606    57602 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    258    258            c           2606    57439 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    230            R           2606    57388 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    220            P           2606    57379 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    218            N           2606    57370 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    216            �           2606    57522 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            postgres    false    244            �           2606    57658 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            postgres    false    268            �           2606    57662 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            postgres    false    268    268            �           2606    57511 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            postgres    false    242            o           2606    57468 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    236            �           2606    57610 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    260            �           2606    57614 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    260    260            k           2606    57459 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    234            T           2606    57397 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    222            �           2606    58071 >   subcategories_category_links subcategories_category_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_pkey;
       public            postgres    false    284            �           2606    58075 @   subcategories_category_links subcategories_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_unique UNIQUE (subcategory_id, category_id);
 j   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_unique;
       public            postgres    false    284    284            �           2606    58062     subcategories subcategories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_pkey;
       public            postgres    false    282            �           2606    57531 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    246            �           2606    57670 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    270            �           2606    57674 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    270    270            �           2606    57542    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    248            �           2606    57553    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    250            �           2606    57682 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    272            �           2606    57686 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    272    272            �           2606    57646 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    266            �           2606    57650 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    266    266            }           2606    57498 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    240                       2606    57500 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    240            �           2606    57496 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    240            U           1259    57407 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    224            �           1259    57574    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    254            �           1259    57575 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    254            �           1259    57578 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    254            X           1259    57408 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    224            ]           1259    57429    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    228            `           1259    57430    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    228            Y           1259    57418    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    226            �           1259    57586    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    256            �           1259    57587    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    256            �           1259    57590     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    256            �           1259    57591 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    256            \           1259    57419    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    226            �           1259    57943    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    274            �           1259    57944    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    274            q           1259    57486    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    238            �           1259    57635    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    264            �           1259    57636    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    264            �           1259    57639    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    264            �           1259    57625    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    262            �           1259    57627 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    262            �           1259    57626     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    262            t           1259    57487    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    238                       1259    58521    filters_component_type_index    INDEX     e   CREATE INDEX filters_component_type_index ON public.filters_components USING btree (component_type);
 0   DROP INDEX public.filters_component_type_index;
       public            postgres    false    300                       1259    58452    filters_created_by_id_fk    INDEX     U   CREATE INDEX filters_created_by_id_fk ON public.filters USING btree (created_by_id);
 ,   DROP INDEX public.filters_created_by_id_fk;
       public            postgres    false    296                        1259    58522    filters_entity_fk    INDEX     U   CREATE INDEX filters_entity_fk ON public.filters_components USING btree (entity_id);
 %   DROP INDEX public.filters_entity_fk;
       public            postgres    false    300            !           1259    58520    filters_field_index    INDEX     S   CREATE INDEX filters_field_index ON public.filters_components USING btree (field);
 '   DROP INDEX public.filters_field_index;
       public            postgres    false    300                       1259    58453    filters_updated_by_id_fk    INDEX     U   CREATE INDEX filters_updated_by_id_fk ON public.filters USING btree (updated_by_id);
 ,   DROP INDEX public.filters_updated_by_id_fk;
       public            postgres    false    296            �           1259    58017    home_pages_component_type_index    INDEX     k   CREATE INDEX home_pages_component_type_index ON public.home_pages_components USING btree (component_type);
 3   DROP INDEX public.home_pages_component_type_index;
       public            postgres    false    280            �           1259    58005    home_pages_created_by_id_fk    INDEX     [   CREATE INDEX home_pages_created_by_id_fk ON public.home_pages USING btree (created_by_id);
 /   DROP INDEX public.home_pages_created_by_id_fk;
       public            postgres    false    278            �           1259    58018    home_pages_entity_fk    INDEX     [   CREATE INDEX home_pages_entity_fk ON public.home_pages_components USING btree (entity_id);
 (   DROP INDEX public.home_pages_entity_fk;
       public            postgres    false    280            �           1259    58016    home_pages_field_index    INDEX     Y   CREATE INDEX home_pages_field_index ON public.home_pages_components USING btree (field);
 *   DROP INDEX public.home_pages_field_index;
       public            postgres    false    280            �           1259    58006    home_pages_updated_by_id_fk    INDEX     [   CREATE INDEX home_pages_updated_by_id_fk ON public.home_pages USING btree (updated_by_id);
 /   DROP INDEX public.home_pages_updated_by_id_fk;
       public            postgres    false    278            �           1259    57565    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    252            �           1259    57566    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    252                        1259    58137    products_category_links_fk    INDEX     d   CREATE INDEX products_category_links_fk ON public.products_category_links USING btree (product_id);
 .   DROP INDEX public.products_category_links_fk;
       public            postgres    false    288                       1259    58138    products_category_links_inv_fk    INDEX     i   CREATE INDEX products_category_links_inv_fk ON public.products_category_links USING btree (category_id);
 2   DROP INDEX public.products_category_links_inv_fk;
       public            postgres    false    288                       1259    58141 $   products_category_links_order_inv_fk    INDEX     q   CREATE INDEX products_category_links_order_inv_fk ON public.products_category_links USING btree (product_order);
 8   DROP INDEX public.products_category_links_order_inv_fk;
       public            postgres    false    288                       1259    58239    products_component_type_index    INDEX     g   CREATE INDEX products_component_type_index ON public.products_components USING btree (component_type);
 1   DROP INDEX public.products_component_type_index;
       public            postgres    false    294            �           1259    58108    products_created_by_id_fk    INDEX     W   CREATE INDEX products_created_by_id_fk ON public.products USING btree (created_by_id);
 -   DROP INDEX public.products_created_by_id_fk;
       public            postgres    false    286                       1259    58240    products_entity_fk    INDEX     W   CREATE INDEX products_entity_fk ON public.products_components USING btree (entity_id);
 &   DROP INDEX public.products_entity_fk;
       public            postgres    false    294                       1259    58238    products_field_index    INDEX     U   CREATE INDEX products_field_index ON public.products_components USING btree (field);
 (   DROP INDEX public.products_field_index;
       public            postgres    false    294                       1259    58149    products_subcategory_links_fk    INDEX     j   CREATE INDEX products_subcategory_links_fk ON public.products_subcategory_links USING btree (product_id);
 1   DROP INDEX public.products_subcategory_links_fk;
       public            postgres    false    290                       1259    58150 !   products_subcategory_links_inv_fk    INDEX     r   CREATE INDEX products_subcategory_links_inv_fk ON public.products_subcategory_links USING btree (subcategory_id);
 5   DROP INDEX public.products_subcategory_links_inv_fk;
       public            postgres    false    290            	           1259    58153 '   products_subcategory_links_order_inv_fk    INDEX     w   CREATE INDEX products_subcategory_links_order_inv_fk ON public.products_subcategory_links USING btree (product_order);
 ;   DROP INDEX public.products_subcategory_links_order_inv_fk;
       public            postgres    false    290            �           1259    58109    products_updated_by_id_fk    INDEX     W   CREATE INDEX products_updated_by_id_fk ON public.products USING btree (updated_by_id);
 -   DROP INDEX public.products_updated_by_id_fk;
       public            postgres    false    286            e           1259    57449 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    232            �           1259    57599 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    258            �           1259    57600 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    258            �           1259    57603 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    258            h           1259    57450 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    232            a           1259    57440 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    230            d           1259    57441 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    230            �           1259    57523 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            postgres    false    244            �           1259    57659 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            postgres    false    268            �           1259    57660 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            postgres    false    268            �           1259    57663 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            postgres    false    268            �           1259    57524 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            postgres    false    244            �           1259    57512     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            postgres    false    242            �           1259    57513     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            postgres    false    242            m           1259    57469 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    236            �           1259    57611 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    260            �           1259    57612 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    260            �           1259    57615 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    260            p           1259    57470 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    236            i           1259    57460 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    234            l           1259    57461 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    234            �           1259    58072    subcategories_category_links_fk    INDEX     r   CREATE INDEX subcategories_category_links_fk ON public.subcategories_category_links USING btree (subcategory_id);
 3   DROP INDEX public.subcategories_category_links_fk;
       public            postgres    false    284            �           1259    58073 #   subcategories_category_links_inv_fk    INDEX     s   CREATE INDEX subcategories_category_links_inv_fk ON public.subcategories_category_links USING btree (category_id);
 7   DROP INDEX public.subcategories_category_links_inv_fk;
       public            postgres    false    284            �           1259    58076 )   subcategories_category_links_order_inv_fk    INDEX        CREATE INDEX subcategories_category_links_order_inv_fk ON public.subcategories_category_links USING btree (subcategory_order);
 =   DROP INDEX public.subcategories_category_links_order_inv_fk;
       public            postgres    false    284            �           1259    58063    subcategories_created_by_id_fk    INDEX     a   CREATE INDEX subcategories_created_by_id_fk ON public.subcategories USING btree (created_by_id);
 2   DROP INDEX public.subcategories_created_by_id_fk;
       public            postgres    false    282            �           1259    58064    subcategories_updated_by_id_fk    INDEX     a   CREATE INDEX subcategories_updated_by_id_fk ON public.subcategories USING btree (updated_by_id);
 2   DROP INDEX public.subcategories_updated_by_id_fk;
       public            postgres    false    282            �           1259    57532    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    246            �           1259    57671    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    270            �           1259    57672     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    270            �           1259    57675 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    270            �           1259    57533    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    246            �           1259    57543    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    248            �           1259    57544    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    248            �           1259    57554    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    250            �           1259    57683    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    272            �           1259    57684    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    272            �           1259    57687     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    272            �           1259    57555    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    250            u           1259    57481    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    238            v           1259    57485    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    238            w           1259    57480    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    238            x           1259    57483    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    238            y           1259    57484    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    238            z           1259    57482    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    238            {           1259    57501    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    240            �           1259    57647    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    266            �           1259    57648 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    266            �           1259    57651 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    266            �           1259    57502    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    240            $           2606    57688 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    226    224    4955            B           2606    57838 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    4951    254    224            C           2606    57843 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    4959    254    228            %           2606    57693 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    4955    226    224            (           2606    57708 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    228    4955    226            )           2606    57713 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    228    226    4955            &           2606    57698 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    4955    226    226            D           2606    57848 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    4955    256    226            E           2606    57853 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    256    228    4959            '           2606    57703 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    4955    226    226            U           2606    57945 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    4955    274    226            V           2606    57950 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    226    4955    274            2           2606    57758    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    226    238    4955            K           2606    57883 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    238    4979    264            L           2606    57888 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    240    4993    264            J           2606    57878 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    238    262    4979            3           2606    57763    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    4955    238    226            e           2606    58454     filters filters_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_created_by_id_fk;
       public          postgres    false    4955    296    226            g           2606    58525 $   filters_components filters_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_entity_fk FOREIGN KEY (entity_id) REFERENCES public.filters(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_entity_fk;
       public          postgres    false    300    296    5145            f           2606    58459     filters filters_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_updated_by_id_fk;
       public          postgres    false    296    4955    226            W           2606    58021 &   home_pages home_pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_created_by_id_fk;
       public          postgres    false    226    4955    278            Y           2606    58031 *   home_pages_components home_pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_entity_fk;
       public          postgres    false    280    278    5096            X           2606    58026 &   home_pages home_pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_updated_by_id_fk;
       public          postgres    false    226    278    4955            @           2606    57828 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    4955    252    226            A           2606    57833 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    4955    252    226            `           2606    58154 2   products_category_links products_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_fk;
       public          postgres    false    288    286    5118            a           2606    58159 6   products_category_links products_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_inv_fk;
       public          postgres    false    288    5090    274            ^           2606    58110 "   products products_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_created_by_id_fk;
       public          postgres    false    226    4955    286            d           2606    58243 &   products_components products_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_entity_fk FOREIGN KEY (entity_id) REFERENCES public.products(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_entity_fk;
       public          postgres    false    294    5118    286            b           2606    58164 8   products_subcategory_links products_subcategory_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_fk;
       public          postgres    false    5118    286    290            c           2606    58169 <   products_subcategory_links products_subcategory_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_inv_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_inv_fk;
       public          postgres    false    282    5107    290            _           2606    58115 "   products products_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_updated_by_id_fk;
       public          postgres    false    4955    286    226            ,           2606    57728 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    226    232    4955            F           2606    57858 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    258    4967    232            G           2606    57863 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    230    258    4963            -           2606    57733 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    232    4955    226            *           2606    57718 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    4955    230    226            +           2606    57723 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    230    4955    226            8           2606    57788 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    4955    244    226            O           2606    57903 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    5001    268    244            P           2606    57908 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    268    4997    242            9           2606    57793 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    4955    244    226            6           2606    57778 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    4955    242    226            7           2606    57783 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    4955    242    226            0           2606    57748 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    236    226    4955            H           2606    57868 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    236    260    4975            I           2606    57873 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    234    4971    260            1           2606    57753 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    236    4955    226            .           2606    57738 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    4955    226    234            /           2606    57743 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    4955    234    226            \           2606    58087 <   subcategories_category_links subcategories_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_fk;
       public          postgres    false    282    284    5107            ]           2606    58092 @   subcategories_category_links subcategories_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_inv_fk;
       public          postgres    false    284    5090    274            Z           2606    58077 ,   subcategories subcategories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_created_by_id_fk;
       public          postgres    false    282    4955    226            [           2606    58082 ,   subcategories subcategories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_updated_by_id_fk;
       public          postgres    false    4955    282    226            :           2606    57798 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    4955    246    226            Q           2606    57913 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    5005    270    246            R           2606    57918 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    5009    270    248            ;           2606    57803 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    246    4955    226            <           2606    57808 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    248    4955    226            =           2606    57813 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    226    248    4955            >           2606    57818 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    4955    250    226            S           2606    57923 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    5013    250    272            T           2606    57928 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    5009    248    272            ?           2606    57823 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    4955    250    226            4           2606    57768 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    4955    240    226            M           2606    57893 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    4993    266    240            N           2606    57898 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    4993    240    266            5           2606    57773 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    4955    240    226                �  x��Z�r�8>'O��y�����CLm��&s �$�1P��MM����HƂ��$�����$������rS�Ǽ��C]TI�62�n~�ws������Q�x��Ȇ����'.�8(W�x���zӪ|��t�s�r��(?"�6BҶ�k�T��� � p�3���z�� Y�R��!(?B�IU��y����A�!�B�m�����[g�L�l!   D$|/��#��S$ �G �aI����#$y7�(a0f龞g�����*�,;g��ɣl\��Bm��)PƞV6�S�f��m^���Jr�c���"k���붗��^n��l�>ɋ��n��<����R5Y��Hu�?G���N��t�b�O:a��{�E�MU��7�~�GW���y�+;��c�x��#N��K��]L�."��"��Ĺ�!@�a�� 4����B:�k-��՛���VDB8��B�} �
4'���.���T�)l��V�,@�8iy3�����!/�I�D���S��U��T8[$� �'t�謇 5B�A�;)
 ��v�;*�s��ϊ�_�_������u6/��� `j`�:�WR 0��ճ/�xf�@�Cw߻��<�PG�'W��l��>��u�TW��`�h��,�ϱ^�2=�����c�#2����*�tr_
}B�'��X��>)���0&���d�I���Y�����p'\��<-6�l�S��IX�jJL
��*X<0�x`ޢ~�ט�����G�dQ;�;�I��G�tQ?�b0�<���Q�3�{�f';���`����1��E�?U��,YN�^>��3�H�������L36��5̼��`�H`+��VB������E;�D0��`ѹb��)?��ǽs�h�:|��L1�� �5�9�jWM=��o���b��������s�X�t�l��\-ֻPj���&�:w�~���N�ʶEh�w�^��B`��6���qqd@�a���hA7:�@{a��o��GY�� �)��S���e��`f!LV���L��
��ut�b�b́scar�k��}���2��3�!l ]�s!  ����3�@ �H��	]�D���qU�`�B �:�����2S��:�cռ��a� ?�I��7ѓ|4 ����E�>�͂�.<'���"���S�㇍�7D�L�>u�tj��������\o�W�-�O����sRT�>����xt�a���jɵ}+.u>ܺ�k�Vݴ|�}�[hK>���w��O�^:���<��C���]o�-�xy<_�_��ZBP>�@Vs|фi�ZY�]�C��/�l�&���-����ꫵc8�U�"7�6K>OW&���P>���-Vv|�����F$��5�e��s���쮛<�R�?XG�˿�*���c�Nv��~M��&IU��.O[W����*�q�)�n�`Cî��	�\_�!2�����WBʵW5������-f�#�-V���N��{Q�7�F=k+ѱ��[��A��	�g PQ�X��S#l*��jAY�6$���zӿݲ�ڵ���<�pԠJ}ۣ'������ �uH�?�X��?5�(5�}Ϫd?�D>$�C�J���K'1�Ξ���\ߖ��L�|�0#�'@�Qg�T�E ʵ�����'8(?��ν������M         �  x�%��m�0C��a��m����(�����X���{?�%�DY�,�5�����-�p;��.τ�H*܍��83UN	�:/SP�m
i�Ү)�=�������� ����"x�P���<���E�@���x"X�8^���q,D�A\�|�,F,?H�Q0�H�#Z|HV-Z8�,_Ml_[��KѢ��h�H�M�$;'Z,�-�}-.�-?;+Z:��-�V����X���Z+ѲQ�J�Ե-�Y���^���1�V���]֢U���*�c�&F���h��c-Z�Z�V��lD���<E����D�C��֎)�:0m#Z'����6� t��smD�Ŧ���c�VɆ^[��g��˘m�BN����C�C������;8׎0sq?�*j?\�PE��]�܋���K{K�Ι�tO��K������-z�� W����\V}�cK�x%����+�ߎ��-���%�v�9?׎���ʴ�o'/�i��
����?�\         �   x�u��n� @g���l�Jm�]�d�r�s������!A����{H��:��"��y�qs-�P�o����4����z���L()R�L"�_�S��S��� z8��0������W�շu��Ce*�T��l��eu��	^���fM6�,�	�A����kQ_5\�FuL���$,S����iOy���=��?�lM�����]�4O2�}�         �   x�3�LL�����!0�!=713G/9?�S�(Q��@%;���3�%15���7-��4-�ĥ4<�3���+#�¿�M��(7T/�")Ҩ�=%+�4jd	g�2202�50�50T02�22�25׳46�)������ ��+�             x�3�4�@�=... �      2   ?  x���MN�0F��)r�X��N���D(R��$]����E=\ �HD�Z�3�o�4(���=ͧ<|���6��n�M@��[�A�[<��T�u�E ҂�ʰ(6���[Y���/�	2������de8I��Ӣ���rK|#Ⓒ]�~�#����<H���cs�u�o�<� �0�O��
M�*@��3�M��V���gU8/g7�q]���B�z������ȱ�K#1��*�r��,���шn��#=|%L�{��^�Mչ�{��#����q�/�4���J$�VVd���i��jQ�u>�4y�|��c��J      D   p   x�3估��/칰�b��i���Bn.��I@�FNS�{��8/̿�pa߅@�����;.6]�za���	�.6^l
�s��hVah2��	���vr��qqq ��U      J   U   x�3�44�04U���2�44�041�9/,���b���;.�s�p^�d4]�pa'�)��^��1�47P���ˌ�L��qqq ��"u      4      x�3��ta��ƋM��=... Onv         .  x�ݚ�n�F���S��Y��~�X�hS�EEO~,m��%7m� I��@N���{zZ�M�
�uW�-��K2��-�g�3R��]�D��J�D`l�T�%T�s;������o�A@�Hq=��3����͏[�w��Ɵ���Wswz~����ls�3��]dʒ$7<U��:��7��Sgn�b�pэg��<.��`���8���ű�����f����#!���Y��7��������!;X?\~���l�����n|��!������A�za�#R Z��jG)T��S@s���d��E�x{�!�u��*_��F���XI@�OdZU�s�Q'���z�,�Y�xg<D�^NZ���(&cH����Z.*Z2�{����l�F��j�Et�sGu��4���``0��Ȅ�	�H`�'9��k���xFߚ�zo���l�]]�u��wL���ӽ�4%&���nZ�^�gi������0C�l�s{uOv0=a
1ʽ�.;����`j2H �<&�!)Q2%�ǥ��0�$���us�5�H�K�aQ����̊ ��df��̊0&z�y�|�=��y��T)D���B�*���
�y����t � 1A#(�XR��4`l��!��`&��Gbu�]tB���z��Xd}i�)&��$a'$�P�p�Y�%�}��Wgx�]e�2�eq����W��
I���H�TC[�?���H�(���u�
�A
~r�O�-h�}����a/'�5HIj"��ڱ�]��]�����"Vj�:��.%|�\<*~)�(�o�w7��7����u��'�}���8Q,���ڍk��Hx�t57�m<}�ݗ�TkbO4�N:�4�W���צf��-��� ]���� ����� {d
�h�.�~zoA�]�+"�b��G�i�n��0��&�oX��V+����#ˑi�ʴNh�袷>��#��!�+�,A=AG; Í@J�N�A����=8EJ︃���W懙yRjިmۀ��`��yp9%)72Iܾ��LVm;T�R���gۯ2� Hkѳ�@�[V��ҖkWe�$�O�w�����	VH+���ۤ�����g�w���Ň�Z����|5�F嘨����U��U���m�@�y�Z�����N���kRx��)w�Uҫ
�g�5�=���P5t�uՆQE�jӮ@�m���BLw�*�ip��DX)(L��^�T� >H)�F�Pa$��;H��R�'vM��4C�h��@ʟ���c��?s��G)�M��WH#�ԩ m���	�@�0� EpT��yY�n�}y���0*�$f������&9$�����^��[$5��^c���=�Ԛ��,�N�IE��ӡZ6Q�}���lj��gN�м�>��B����
=�Ԛ|�i'(�J��$��H��W!��vG"���$�>�>Y����D7/l�?[�+�߼r�?����l�ښ˩ɓ8��ĸ�Lu��p��������]H�遨�����( ���
�u�߮c��������.J4'��D�u�u}S ]~$8ƴp)��Ym�8 ��(�I�F3�*�w4{�������<      (      x������ � �      &   �   x���A� ���0��,�PkI�⢷/Z770ɼ̟Q� ��ֵk'ǗO�jALT�~�Ƹ����ط�VE ᧤�ϡ=�Sȡ����nU��?����?L)�����v���x��-�U�l�̕�{&m���T�5�[b��c_�t��      H   �   x�m���0E��,P�v�x�)�9� ������و��V=Yzzz���O���C�#K��C= ��I�u��8!��]_��E~o��|����}l�ۮ�^"C��.\����E�2������+��� Q�r5Ъ��J]�'�1�RmK�      L   X   x���A
� Dѵ9�4F�e�� (tel�ߡ���90NG[Mw_�tO��������&9*Q�w�@ew�BG	�`u�,`�ۼ"}��Xn      6   =   x�3�4202�50�50R02�21�24�31�D7�2"s=4q�zS=C3NCNC�=... ���      8   #   x�3�4���|��ԒĔĒD�3Ə+F��� �@         ;   x�3�t�K��,�P�H���L��4202�50�50T02�22�26�32�%�D\1z\\\ ��      >   /  x���=N1Fk�)| v����!8A:-)%���	
� Q�g�����l$d��'��19�������O��������˟๿�7_����V�</	�ֶo��Y g l���C�H�U�1rhQ��
i�y�;�\B**�|���Q]�w�j�W��}{�����	;�=J!)���0��#�z�B��K��[��o-�N�N���^�n�+�&P�	�G��3���Ȩ���#c�L��\X�gO��e!�.N�1��cp46֟ĢX�Nc�`	rH�<�gR���4M����      @   -   x���  ��N1H9����m2��T�Nl՜�\�<|Sf      F   R   x�3�4��Ģ��Ԣ�����b=$����dd yNC.CK�>3�uq� uZ��Ә�ЄӈӔ�u����=... YQf�      B   /   x�3�4A.3N# 4��4B.CNS����!�	�a����� ���            x������ � �      "      x������ � �            x������ � �      �      x��]�۶��=y
U�?[3����S9�u��6����=��T
1C�
I�3IMվƾ�>��~m��D���c4�`��M���d�o��b��E��f�N��
U��ev���&+Uis�A��E�Xg���U묮q����5j�����M/��ur���ESm��t����+5J�t�_��n_f���N�IV���|1��&)�az:]�e�͛�e�|{�)x^-P�˞�|:��rP�,�&�je�h�5�_\�g5�5͓K��6�Ҭ�b��w�!�X	�"4���6��_��I�Ve���n�:�z!��^\���p_$U�G U�_W��xZ���/��6n�^ wPo/Ci).���W��MU�I�d`�tU�a���1��U ��J����oU�?]M���u4a��:��}��CZ��A�'�ժ�^����]M|����¯�*EW]|�q%��W\����E,��n|f�w�c��{P�����{ ��r�P�`��0��|��O:mޞ�[}��/6�t?F��woO�B�]0R�Ш��4 �DF���EP1����f����gzwRRuN~}�����>���;*����)��A�mwFHu��B\p�P7z}�����UQ/CSS~���
v���W�!�j��$O+�&8RB���4��Er���HN8������?�(�� W���i*�*�T���G,���>D#�dgMy���D���ztbN����*r�a���O4U8N�KIQ5O��u�svZ���"^Bl�
���1�\�d �՛DY6�q(�1�	f$������Y�"�0�Թ�p�NS�� M�w�{8�&��,����3��J�i���a�g�m�Ѿ�d�����@/rDgїE_}Yכ1[�5��QNAN7oH�n�9|��sh������q���=�c	1�c	1��W�_�'�����(np�5�~wu�50�!q��������a� �B� D=ؽ� x�v_��&X����&/���~ܚyA��s��z�� qˮ2�s�����E��.M�D=�e�f��
�PPHQo�����y�
J�!.�j�4`dC�����X%5����Q�	B��k6���uC#�>�j\p�n�[_͑�|2��*)�<�fLn؇|�&C�^��i��|ȧ����&�݁���>9���9�MaUiL��^� r�{�`<d�����0�C*�H`����4�q���q���u������� �-	���h��N�_�Pc��ǔ��b����8M� ������f8X��Q��Z��ݧ�hG݈k�����u�oPF^��F0<e	c��!Oh(6�#Ԥ����i*��zu�CObK>=e�(�^	Z?b�	=+e�%�㤮ߕ��P��B���=+�Q�o���&�5
	�	��+,��d�]ؕF�	���{��')���l�ф�u��9qX�S��G�.�2�F�lEc����X�
-~N��-�Şp�Yg����I\�ť^\�y�z:��d4�J�������Xi\�]w	��v4v�4�� ����4�`h����/�3{mt~B��&3W?�:]�[��7i~@i�爾~�WФ���֔˒T暾P C���j�'�3{�5R�B˝�����3�|�%_�U[ >����v��R�\2m��T�!Crv��D<ӪH^�6M�]n�ն ���1��)y�Q���+]<����S�q�}�Uĝr��Rr���t�:��|�Hƃ��Pi�RR����o�̌{{�{��Ne��r���?/0������6}�� �Z����B���;a9n���&c�i8K��pP���z��Й��wU�l��G���J�*��zI+5|б�����
��
�^�oC����p�"���wJ��d�@�+�575>�h	4p�q�7�O (�^�Wyy��?��O�%s��@��"�5�_��[Kkns3f�L�f�g*�Г׈��Sc[d�o���4S�h���(j��@�2���	����E�)x���z����zu98 b�C�#v$�%\�q��%ƝD������' l!*�����qSLv1O]��+0�l�4�j��:zP��A�*���Q�NȦd�@V�bA~�I�i���T:���b���.6��P��JK���5���Օ�W}���/�����9��}�lЗ�E������_���&�H-�Շ�l%	��;-=��q>���f��x� k�s�_��23�_�ۍ@�4�x�ܗ�F8�pt��hJ �R7%P��N	��;�+���y�Z	��O6�Dn�2���m�CY�NF]�5�����@�H��9��&���]�]�J:��l��~oqV9���6��Xb|ۺ)�d#G�ݩ���;+�� ����4a�w�d"�����`�L%�H�r�|{z�,����DjЕ��b"�:5wgZ�#�G�� �ٟ���B`-0ig�E� L��c7��y��������դ�"���(yֶ�T��_��>�5FK�y�1�9��s������޻��6����pV�Ж	 jz��+^�G魮,�6K]�v�G�?��\�G&��l�a���3�IͽyF���f�f��~��!}�ln�{b�A��F����	��?mVՂ_�+!�>q9��r�>] �cRs`�g|��Ό���tOi��R�+�@��m�v��&����A;Ύ�d�Y'�f>l����=��L�Ϋ��;=�y`-9o��H�N��m�z��H��[W"ݵ��(��Iܜg�ޭo3kt��깛w�Ȫ�L)v�	x���6+���Sn�D7FK �qI$�4@\ ��[��ƀ���^ |@y��yG�a�� �e4��2��1gv0�`C�ӺT�|�&>��T+&6؍�<�R���'$N��I�쑦Jä�k��8�[AIHE� 	�!���ow�쑇DyH�!3�5�a�u�	���&�l.6_�kY���|
�'Bk���}�e3�Y���t������� ����hYaG��t�o��P�;� ���ٝ�ڄ���)�\���LX�e)Md�k�ƥ�Q�پ`��W���"ER�\��!�ٝ�Fl��x��q z"n�A�&@'EQ�ƅ#�Æ��3���ő�럔B���jh}=���r���e�X��^�Y�H~~�ՙl�������b��� ������4o�f�[��b�*��2�FN��t�����%`�Iӹ���ԙ<�X�Z=��,�Gͽ_.G��18F��a���X�wԼ�]���OY)7�Z3�С�ds�H��]hʝ)1�̛<a��q2K��W��f��p�@Ս�<���a��0�lLrxbk�lw*�b���@֗��d4�+�3(�Zt�G��Pn;"JD���(�9ye�{�z��ww��������w9�:vjo7�47}veq:ő쭴_$yެ�����>0�/�e��gG�y4j��3�|�0���'|[s��\���%��j�&gx�<6�I�Y��2�("5���G��S���C�:�g�|��������>2琚p��!���Qs/Wa'��}��֨Iy;yή,�����LTϱ.۱�u��w"u��7�zMa̿��N�9�K��>����n��P���'�����p�	�� w{"r�Վ�J�,���4w=��4VL�:�+z�����`�r�T'�ޕ���]\d�_3����W��]ee!�*2��g!���#y}ٵ�x��1�����=#|�K�r1���Q3��ǹssgx��+�u��P�\��-�>��5�����g����d)�������dD|����em�G�`�8���>UM���`f��tU�e��8Ͳ�y�$�4YBL ?�l�J~!���Z����PI��-�3����l��}�J��L�m��UFt۴٧O.b������S�{zfaT��Q����:��V"�	+��k�nZ=�ǧRg��7�iUS��H���6e���	���H2�����fM�3�4�w��������I�N(\�&ɷ����z���h��l0Z�x�Jɧ�I��UY�&�gTV�=���	�:A�GQ9t�j"���򒆞r��sU����� %  ���!(y�9�'i1�P��%�2Y�Zɿ�	m3�]Ԩx�2�>n8��p"&FL��^!��(��D7�Ap�Ý~UC<2t/x�n̳yr�(i���+�m�V��в�{^��y��5E³��Z����dx#]/�2�^]���s��Ly�%�l���U�>]�ׄގ5�A��0F�f�T<��Ef�?�~/��}�>:�����D7�qx���k�Q(����A�c�G�@`>bl	&"�4�ϸ�!f�9��O������J c�!��D���0hB`�e7)�S'E��A0m��$ܝ���aMN~}������	3�9��9߳4�3�Ȓ�d�j���,�'$�4�p�i\n�kNY[��o��Y�q�/i>���&�����L��Y_�UCmŽ�����O^>��Ƿ�J,���F�MMD�\���ȎdW��U�󚋒�:�&s;)Z�\��DL�����j�������1����4�_]+�����Pi�[��zY[mYv ŵ��-��r�LIkk.��8�ڢ�0�E�[ȊG��Pc�	�c����|$:��Ň�j�e[WU8�����ʨ�g\��Zo]M�]fU�x'��m���A��n��Hn�-�xL����p�!��)��7*ӻpYԝ�%mW��}v���V(0�i��/�[Jt;�ؖ���H��H��FeM&=�ɓ�� �qnw�4B����!3���D����)?Da����k���a 5����~��*-�Ah��.Do;#���Q>�([Dz�I�'z҈�:~r��8�p	.�0�
���� ��,H��J��~�<��b9��1�sA+^i�����)���;+e�`0SZII���F�a�jʁq��bH�e�
�y�azGz��GIO O�W �Bc�cxy�3@S9�[�%p���|��>���(8�H�FCc�A��E�]�G�R�TQ��ˡ���|=���_
�秢
�&��%��1��O�)��`�����.[��SqV�l��y�a���0�hu���)9F�t,�{�ɨ�����	�������_UI�`�2�*�S�q��*nP^��"��Ny�3Y���-j�N��-��a��x~��]�dȧxpV��&��2r2��lI슩I����eY^��!��տo�
�QG4�QJ\��Q�*�
=zf-��͚����_V�O���/�7G��P:���*�rٴ��.+建�R�W�9L��м��ݼGQ�����nk��O�uKW�N��d#���7UI��%7|�f�7�}z��m2�cl�UߡMW�[� V��<+�1�-:�*=�m@=�y�5H�9F�9�'Y,0��}viyUdM٢U�7�z{�(�K���8��,-�}y-��l�D����Th���GO^��j��4��b�yd�-��[=hQ#l����
���zƉvj#GG�>J)[�xt�.��qai-*L�q��îP�f�}4���ש�������#Ō�|�O\��q��-�����t}Kx�*�}�6:�S!���'��)^�&k����άAk�w�fVU9�m�N���˪�΃��'dGzF� $5&/��R�j˳
m��c�β� G&��j�zwSr�Ve�g��xEwO��|�O4YaJ��4���`�=�˚��d���eYU����rZ�o_����_���-��(�����m&�HͿM�J�b�7@�eI�'c�<! ;i�	!��.�����������߿�W���A�~�����+F߯VIq]��5�����\Ob������Y�+�j���I��ۢ�X�O��9}b˲��y�5@d'��pȓX%7��9�F��;��k6y�΁L�,��� O�>+��+�����Qҧ���w߷?${�=�ϼdq�)Z���>��WOĨ���e�0���E�<.�y5�Y%v��Z<F6g9��#�H6�/���ckݶFM��d������%?bzt>y�x��|�/��M��n�Ik���g��������y����vW�lۊ�ȣFV�Y�E��h�z�C��N��Ջ��ה��V;��y�+�Fy����<R�SV2�p
�!j'��*j��V߻h�z�okch=�ֻB�&�kH�+�nJ޻Z�Ёj.1�i�Mx��Gw�h�Mf����J��ms+�� �JQ��Q\�ı�� ��z8�fm�W|UtTG%'�8���-�� �I���g�vH��*>�U�+�:	���up�A�~8��s��&<DO�Z�RRD���PH����\�l�e� �&=��xMw?~�1�1>����B0Сkn(Ʃ5� ��~���|�gU�F ���ڌ*�[E)=DU��:[QQ4��Jvd���F��a0_��*��"�:�q�d@|E���ׂ
������87�df�3��z�x)�w�O�+9aY�D�/C�9ϳ����0|T"�?�6)�}qP��7Y;V0�K�&��ݗ���L$���,CUM�~�]�-v���[]m$��$[�S��މ����e��4�㜼�'ۤ����*�~���>���u�PZ����u�3E5r�fW�}_����A���&;��y��/��6�ʍ�#ьDӋ�l��&�1�|R1�y����;w���9]㦥�ش$��ں��c���9ivm�X�(����0����8H;��!�4v���-��@,Z�q�,���H"	�$��[�`��4	\��C	Pt9P�����.=	�-��h���Pb��;��w�s�\_C
Fy��%����ش���1�E������ux�����#eTW��h�s��L�`7`v���9x�y
V�Q�;}�Rh�</�X�h�&��7��3Gά8s8�$JoL�^D����樜�:�B�M�j ��‧��B��s�$���I6eNQ�^�v��rw�79f�~��[P9V0�vB��e&���Xv�.a;��x�x���甮p���u�1����j�^G�cpa��B|W3q5Q�F�������~�rH/�D�����bc��δƄf�Ț��5Q�:w^2�
#�s�'z�~�|��j��P߀d�w�J�Y�SF{	1��~���}���5}�2�nW(���'�|���PB�      �   4  x��]K��6>ۿ"ų�;��xn)'�Ԧr����bA$$!C�\{��_�%> � ��Dql��� _7�@��W{m#�{��ۋ�{^N3�?H2���SJ�}�m<��KE�i���C�������$*��	Y+��V��qLKN(�ׄiF�({�hV�M�Oƴ����*"�1��"�6^��?�_J��vE�3]p�=�P��o��
���I�;֕N�,������
�	����{Q﫟�� v�O$K�r� �P����SO@c�����$��j��� ��Ȣ5���Q����W��[�f������$�Y�6I"�b�V��#��gG��$��v;M�3�D����'��{����zR�~��N�����l��2���~�ǯaY�)u�?t\�I��0-����������{�:m_�,�����D�Z������D^l���_K���%�A��6� &�Y��7^�2��rI'd6���_�နk�{��7�y�Ԭ�Ub�L�%I�gKƼZ�|o����դ��:���]�b��C1�����r
�F^F93�2���O�<��d!�����$�&�4���۾*� �Fr��]�zv`mK�I�FI�����,Ƅ~��}������+�$�Ұ�"XV�<�z������I�?�y��z��`��a�Iv��Uq��rd��s��u��ㅝv�|n�	���s��d�'.M�qI	�����<E=�ْ�o�ٹ�kv��/�d-�9a��x�4_�5��{
^�垃�+�A�g��%����.��1;ˠ�H��nQ���.d;�n�����I�=�t3��r�`���T��p������#����4J[k%��K��-�у_�`�q��j�K�����JĮgsJ�:�q����7��V�CN�
9���q�_�]i��V�/r��1�ҿt�|�E�<�W���{.p�
�o?����MTK8�%u��"غ="�K;� �ؐ�vQT���eX�rDQ'���歅�)�=Ț�'�?��b�'V�.�?b��#@�+�,����F�{-V�4��4M�����Q[2���&%Nn�{�y>�눍��u�v�!��X��ݍz�@�f�18ǰ8㝱E���Έhi6���r��L�2�fv8l�Y5/�yp�a�����I�_���sK�-�pK~��J�;����ԉ��2�v=�e��+�\�(�)��n�@�%H��1��(	P*��>�H��?���^�v~��\�Ο.�,Ȁ��Z�l̝R�_�D��� &�!�>]Zv�G�iT�n��	 ���^6�JJ �O����f�+�w����8�s���$ޑ��*�i���֨���%{]��>�O�D�����>[��X/Hl��+r���H���K�À	�'���tύѰ���j����tPh��	)�k(�ۈ䇗V�yG":�j.��Im&������A�"D�D�#�S��
Z���@�ca+M���K�n^b:Ds��hi��E@'�}j�f'���L#H$3���t��4�+�v�}<�BN���S5r~�~=�;Gv��,/�s)�����kwy�u��c�Y���&���os�������1M�
���2P��<�$�@���]p}������lUj������$M�]��~�s0Jhht/���sy�2_g=ՁV��Zy1ďH�(�F���ud��Xʆ�O������D�M�TRL*��΄��DUD
�5Ti|<Zo����?����_~U �T����)��E��a�EF����,�8�b�Ţ�%\ߒ���bG��0�rQ���o��5|{̴�u ��\c�P�QT��:Y)�
Mcn��ۭ�
i����Pgv�?=�<���G7��_$p�ښ�}Q���C��E��ke�U�SjoF�$X�,�Z��������ʑբ5,T��Pw�j� r0��Y5&��ؒ*t���z���)���Q�E�E�*��F$~]ՙ��i��qdf͠K��6%صk?6zqv(<g�`u��_Oت�\�(�Q�b�d�a�
 G��mI$8��7lQ�+���I�׍D<Z��K=�\���j�����vs���R9;�#��k!@�mI���i��A3��k�����l{l$���tTS1�`t��"�,hM5�/�8h�N7��BXM�ee�]	<H(.v�%W�is�Go�F\%("�"����<�(Ģ�6Gׅ8k��p���m�4Ѹl|���쐴%�Bi@=������j(L�� �Ws3�1�ޑ˜��d�T��i0Kx�zP��,��E����lr'��
RF_iϚ$�8�5�C���4[���%X:�e<�ڡ�V��pn��:����Z�*�2&T:~%j��&\��ǮD\����E�vLJ{��.�|�JG�N��N�&��]���c�3�R�U�]�vH!d����v�3�&��/	Уk��ɭ��M�~��.Ҭ����9_z�9��h�-��4� ǽFҨ�4�-=Rx	0A�-��,Zg��ք�AU+�6m� m�:@3Xs"�@��	Μ�h�LWNhu��PXazU��8|9+|�˟<˒'�|F���\�梽��D��0/۩�2��U�HҲ�������E ���РX�Y���|�Ъ7���؁���(]M%5P��q�� ��>�:�Y��U�^�U��Qp�1��WΣ�hr8,��E�Ψ����Z�`���Nh#e$�nU�G*i���N�,_�EokƮ&�Y&V�ۯ}D����ۛ�?}s�����޼�����������=������݇w;t{�n�������ݻ������������1P*      �      x������ � �            x������ � �      ,      x������ � �            x������ � �            x������ � �      $      x������ � �      
      x������ � �      �      x������ � �      :   K  x����J�@�ד���Q���M2��,�+7FJZ-��4��U�m]�+��+�U(Vk}�;o�$"�X��0\8ܹ�~�!x���'�`a'>,]ۉ^�{C�tX�}�a�Ad��>ZFZ�x��#�-b-�m駘K���ɩG��1<;��j��q�Ҳ]tҡ)�� Y J��q�֕OcM�fGJl�W�(V���� �s;J�$�9�{xu�K��ʹ�\���Au�I��b�g�@A�6�zEi4�<
�Y�^���u�us���gG��R�˶b��}�#x��N}�W�ֹ�`io���5miY�4�F`��.H�����2�Lb�?��_����`�� ��ُ      <   !   x�3�4�4�4�2�4�F\f �Ә+F��� 4�u         B  x����N� ���*z%�orj<U/`'���[h��x��t�-��:�&���y?%��[c��P�{�q6�������
�
��E�bQ&���y�
zE�c<���m�:�w��[X�Ew�N�o;�'���Y�Yu\ȋ�8ߺx���-�\��ք~�/�~�{�ɕ@�M��lc|��/,z����*#b�����P���k�=�,VR�8V#�����ʙ�u���t�܃���/�����~�#�^/G%��K%$b,�I6�aܝ�<���6���C%����|��M9:-�,1�ަbDO�GP�����dnQQ��̽�      .   Z   x�%��� D��L1�1&���:�Eޗ�@�P������[��ʃh���틷�ԍ1�
Ht�J�f���N�M�h�:5���!��70         �   x�u�A
�0E��)��I�4;��x�nb5�R'�_AA������vUn\$Q���|�5�cf����o�g���"Kmc}c���!�VyxE�:�SNÊ��%���,>;����	�5��c���	BDEK            x������ � �      0      x������ � �            x������ � �      *      x������ � �     