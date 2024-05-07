PGDMP      %                |            himnn    16.2    16.2 �   O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    251                       1259    58102    products    TABLE     e  CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    price numeric(10,2),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    description text,
    in_stock boolean
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
          public          postgres    false    221                       1259    58055    subcategories    TABLE     F  CREATE TABLE public.subcategories (
    id integer NOT NULL,
    name character varying(255),
    href character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
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
       public          postgres    false    224    223    224            5           2604    57571    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            (           2604    57424    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            '           2604    57413    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            6           2604    57583    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            ?           2604    57940    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            H           2604    58219 /   components_characterisctics_characteristcics id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_characteristcics ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_characteristcics_id_seq'::regclass);
 ^   ALTER TABLE public.components_characterisctics_characteristcics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    292    292            K           2604    58502 %   components_characterisctics_values id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_values ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_values_id_seq'::regclass);
 T   ALTER TABLE public.components_characterisctics_values ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    298    298            @           2604    57991    components_seo_metadata id    DEFAULT     �   ALTER TABLE ONLY public.components_seo_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_seo_metadata_id_seq'::regclass);
 I   ALTER TABLE public.components_seo_metadata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276            -           2604    57475    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            :           2604    57632    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            9           2604    57620    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            J           2604    58447 
   filters id    DEFAULT     h   ALTER TABLE ONLY public.filters ALTER COLUMN id SET DEFAULT nextval('public.filters_id_seq'::regclass);
 9   ALTER TABLE public.filters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295    296            L           2604    58515    filters_components id    DEFAULT     ~   ALTER TABLE ONLY public.filters_components ALTER COLUMN id SET DEFAULT nextval('public.filters_components_id_seq'::regclass);
 D   ALTER TABLE public.filters_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299    300            A           2604    58002    home_pages id    DEFAULT     n   ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);
 <   ALTER TABLE public.home_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    278    278            B           2604    58011    home_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);
 G   ALTER TABLE public.home_pages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280            4           2604    57560    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            E           2604    58105    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    286    286            F           2604    58134    products_category_links id    DEFAULT     �   ALTER TABLE ONLY public.products_category_links ALTER COLUMN id SET DEFAULT nextval('public.products_category_links_id_seq'::regclass);
 I   ALTER TABLE public.products_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    288    288            I           2604    58233    products_components id    DEFAULT     �   ALTER TABLE ONLY public.products_components ALTER COLUMN id SET DEFAULT nextval('public.products_components_id_seq'::regclass);
 E   ALTER TABLE public.products_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293    294            G           2604    58146    products_subcategory_links id    DEFAULT     �   ALTER TABLE ONLY public.products_subcategory_links ALTER COLUMN id SET DEFAULT nextval('public.products_subcategory_links_id_seq'::regclass);
 L   ALTER TABLE public.products_subcategory_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    290    290            *           2604    57446    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            7           2604    57596 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            )           2604    57435    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            $           2604    57384    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            #           2604    57375    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            "           2604    57368    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            0           2604    57518    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            <           2604    57656 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            /           2604    57507    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            ,           2604    57466 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            8           2604    57608 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            +           2604    57455    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            %           2604    57393    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            C           2604    58058    subcategories id    DEFAULT     t   ALTER TABLE ONLY public.subcategories ALTER COLUMN id SET DEFAULT nextval('public.subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281    282            D           2604    58069    subcategories_category_links id    DEFAULT     �   ALTER TABLE ONLY public.subcategories_category_links ALTER COLUMN id SET DEFAULT nextval('public.subcategories_category_links_id_seq'::regclass);
 N   ALTER TABLE public.subcategories_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283    284            1           2604    57529    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            =           2604    57668    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            2           2604    57538    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            3           2604    57549    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            >           2604    57680    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            .           2604    57492    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ;           2604    57644    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266                       0    57399    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    224   O�                0    57568    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    254   �                0    57421    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    228   �                0    57410    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   ʤ                 0    57580    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    256   ^�      2          0    57937 
   categories 
   TABLE DATA           x   COPY public.categories (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, href) FROM stdin;
    public          postgres    false    274   ��      D          0    58216 ,   components_characterisctics_characteristcics 
   TABLE DATA           W   COPY public.components_characterisctics_characteristcics (id, name, value) FROM stdin;
    public          postgres    false    292   ͦ      J          0    58499 "   components_characterisctics_values 
   TABLE DATA           G   COPY public.components_characterisctics_values (id, value) FROM stdin;
    public          postgres    false    298   L�      4          0    57988    components_seo_metadata 
   TABLE DATA           S   COPY public.components_seo_metadata (id, title, description, keywords) FROM stdin;
    public          postgres    false    276   ��                0    57472    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    238   ۧ      (          0    57629    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    264   !�      &          0    57617    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    262   >�      H          0    58444    filters 
   TABLE DATA           o   COPY public.filters (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    296   Ѭ      L          0    58512    filters_components 
   TABLE DATA           i   COPY public.filters_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    300   w�      6          0    57999 
   home_pages 
   TABLE DATA           l   COPY public.home_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    278   ߭      8          0    58008    home_pages_components 
   TABLE DATA           l   COPY public.home_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    280   ,�                0    57557    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    252   _�      >          0    58102    products 
   TABLE DATA           �   COPY public.products (id, name, price, created_at, updated_at, published_at, created_by_id, updated_by_id, description, in_stock) FROM stdin;
    public          postgres    false    286   ��      @          0    58131    products_category_links 
   TABLE DATA           ]   COPY public.products_category_links (id, product_id, category_id, product_order) FROM stdin;
    public          postgres    false    288   ��      F          0    58230    products_components 
   TABLE DATA           j   COPY public.products_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    294   ͯ      B          0    58143    products_subcategory_links 
   TABLE DATA           c   COPY public.products_subcategory_links (id, product_id, subcategory_id, product_order) FROM stdin;
    public          postgres    false    290   /�                0    57443    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   ^�      "          0    57593 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    258   {�                0    57432    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    230   ��      �          0    57381    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    220   ��      �          0    57372    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    218   ��      �          0    57365    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    216   ��                0    57515    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    244   �      ,          0    57653 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    268   ,�                0    57504    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    242   I�                0    57463 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    236   f�      $          0    57605 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    260   ��      
          0    57452    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    234   ��      �          0    57390    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    222   ��      :          0    58055    subcategories 
   TABLE DATA           {   COPY public.subcategories (id, name, href, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    282   ��      <          0    58066    subcategories_category_links 
   TABLE DATA           j   COPY public.subcategories_category_links (id, subcategory_id, category_id, subcategory_order) FROM stdin;
    public          postgres    false    284   ��                0    57526    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    246   ��      .          0    57665    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    270   @�                0    57535    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    248   ��                0    57546    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    250   <�      0          0    57677    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    272   Y�                0    57489    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    240   v�      *          0    57641    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    266   ��      ~           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 188, true);
          public          postgres    false    223                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 188, true);
          public          postgres    false    253            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    227            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    225            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    255            �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          postgres    false    273            �           0    0 3   components_characterisctics_characteristcics_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.components_characterisctics_characteristcics_id_seq', 9, true);
          public          postgres    false    291            �           0    0 )   components_characterisctics_values_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_characterisctics_values_id_seq', 7, true);
          public          postgres    false    297            �           0    0    components_seo_metadata_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_seo_metadata_id_seq', 1, true);
          public          postgres    false    275            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    263            �           0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 7, true);
          public          postgres    false    237            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 59, true);
          public          postgres    false    261            �           0    0    filters_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.filters_components_id_seq', 13, true);
          public          postgres    false    299            �           0    0    filters_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.filters_id_seq', 3, true);
          public          postgres    false    295            �           0    0    home_pages_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_pages_components_id_seq', 5, true);
          public          postgres    false    279            �           0    0    home_pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);
          public          postgres    false    277            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    251            �           0    0    products_category_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.products_category_links_id_seq', 5, true);
          public          postgres    false    287            �           0    0    products_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.products_components_id_seq', 68, true);
          public          postgres    false    293            �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 3, true);
          public          postgres    false    285            �           0    0 !   products_subcategory_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.products_subcategory_links_id_seq', 8, true);
          public          postgres    false    289            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    231            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    257            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    229            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 37, true);
          public          postgres    false    219            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 33, true);
          public          postgres    false    217            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    215            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    243            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    267            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    241            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    235            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    259            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    233            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    221            �           0    0 #   subcategories_category_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.subcategories_category_links_id_seq', 5, true);
          public          postgres    false    283            �           0    0    subcategories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.subcategories_id_seq', 3, true);
          public          postgres    false    281            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 25, true);
          public          postgres    false    245            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 25, true);
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
       public            postgres    false    296            #           2606    58524 !   filters_components filters_unique 
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
       public            postgres    false    278            �           2606    58531 '   home_pages_components home_pages_unique 
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
       public            postgres    false    290    290                       2606    58533 #   products_components products_unique 
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
       public          postgres    false    4955    224    226            B           2606    57838 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    224    254    4951            C           2606    57843 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    4959    228    254            %           2606    57693 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    224    4955    226            (           2606    57708 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    4955    228    226            )           2606    57713 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    228    226    4955            &           2606    57698 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    226    4955    226            D           2606    57848 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    4955    226    256            E           2606    57853 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    228    256    4959            '           2606    57703 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    226    226    4955            U           2606    57945 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    274    226    4955            V           2606    57950 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    226    274    4955            2           2606    57758    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    226    4955    238            K           2606    57883 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    264    238    4979            L           2606    57888 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    4993    240    264            J           2606    57878 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    262    238    4979            3           2606    57763    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    226    4955    238            e           2606    58454     filters filters_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_created_by_id_fk;
       public          postgres    false    226    296    4955            g           2606    58525 $   filters_components filters_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_entity_fk FOREIGN KEY (entity_id) REFERENCES public.filters(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_entity_fk;
       public          postgres    false    5145    300    296            f           2606    58459     filters filters_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_updated_by_id_fk;
       public          postgres    false    226    296    4955            W           2606    58021 &   home_pages home_pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_created_by_id_fk;
       public          postgres    false    226    278    4955            Y           2606    58031 *   home_pages_components home_pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_entity_fk;
       public          postgres    false    278    280    5096            X           2606    58026 &   home_pages home_pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_updated_by_id_fk;
       public          postgres    false    226    278    4955            @           2606    57828 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    226    252    4955            A           2606    57833 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    4955    252    226            `           2606    58154 2   products_category_links products_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_fk;
       public          postgres    false    288    5118    286            a           2606    58159 6   products_category_links products_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_inv_fk;
       public          postgres    false    274    288    5090            ^           2606    58110 "   products products_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_created_by_id_fk;
       public          postgres    false    4955    286    226            d           2606    58243 &   products_components products_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_entity_fk FOREIGN KEY (entity_id) REFERENCES public.products(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_entity_fk;
       public          postgres    false    5118    294    286            b           2606    58164 8   products_subcategory_links products_subcategory_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_fk;
       public          postgres    false    286    290    5118            c           2606    58169 <   products_subcategory_links products_subcategory_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_inv_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_inv_fk;
       public          postgres    false    290    282    5107            _           2606    58115 "   products products_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_updated_by_id_fk;
       public          postgres    false    226    286    4955            ,           2606    57728 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    226    232    4955            F           2606    57858 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    258    4967    232            G           2606    57863 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    258    4963    230            -           2606    57733 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    4955    232    226            *           2606    57718 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    4955    226    230            +           2606    57723 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    230    4955    226            8           2606    57788 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    244    4955    226            O           2606    57903 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    268    5001    244            P           2606    57908 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    4997    268    242            9           2606    57793 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    226    4955    244            6           2606    57778 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    242    4955    226            7           2606    57783 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    242    4955    226            0           2606    57748 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    236    226    4955            H           2606    57868 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    4975    260    236            I           2606    57873 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    260    4971    234            1           2606    57753 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    4955    226    236            .           2606    57738 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    4955    234    226            /           2606    57743 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    4955    234    226            \           2606    58087 <   subcategories_category_links subcategories_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_fk;
       public          postgres    false    282    284    5107            ]           2606    58092 @   subcategories_category_links subcategories_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_inv_fk;
       public          postgres    false    274    284    5090            Z           2606    58077 ,   subcategories subcategories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_created_by_id_fk;
       public          postgres    false    282    4955    226            [           2606    58082 ,   subcategories subcategories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_updated_by_id_fk;
       public          postgres    false    282    4955    226            :           2606    57798 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    226    4955    246            Q           2606    57913 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    270    246    5005            R           2606    57918 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    5009    248    270            ;           2606    57803 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    246    226    4955            <           2606    57808 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    4955    248    226            =           2606    57813 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    4955    226    248            >           2606    57818 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    226    250    4955            S           2606    57923 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    250    272    5013            T           2606    57928 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    248    272    5009            ?           2606    57823 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    226    4955    250            4           2606    57768 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    240    4955    226            M           2606    57893 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    240    266    4993            N           2606    57898 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    266    4993    240            5           2606    57773 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    240    4955    226                �  x��Y�n�H]'_y= ���#�F�����N��Lt5�>��vC�EE�&&'N�zwQMn�r�TTI�o�:��V�����n�?����^ ���Q�P�0��X������ԕ���c�o��R�׫,  ~``.C�u���L[�+��M�#X�р@�ׯ��;�"����T7o^YT��@L�+	�I���ע�����"BL@���"BLD��	A�@@lR��F!x�$N3
QX�Y���3�A|"9V�|���ۥU��Z_��Y[�p�էSm�5��]Wԕv�Fn~oU��&����*ݩ�w�K�rxh����U;>ks^�6�[�-�s�����1�]�k
T��=�u�=<�u�6�`W��'W��0u������6��uGK�[��]��."��"W�¹�"���͙CBP����J��o��Vwo�D�E$���,U6����$��D�仦�4rJ[�o��GK�&�`F<��=�2?�Wh��
Uz<F�r�u��:��@ѓ&ztv� =B�A?:)J���v?:*������b���9_�'�!�����ټ��C SC���9qe�V~|�{m�Y��ĝW��6яL��ʄ��H��$�W��'�.(X&Z�]�2�9֋�\f�2�Q\X?�@v�6;���K{��5�fC[�Il�D��D[
dLl3&����/i���[Y�1�;�͝h+�Zl��<�c�)HT�zJLK��*X<p�x���|��x���;��t�(��"�I>]����,">�g7ӻ�.m��׹�a��0��apn�����ޢN��d�'�b&��r!�$Y�$cù���g�����n%��${�^���M����y��&~"8�v1>j§ߐ�c=$��eA��USg@bv1�����m�n�����H�B���z*[�V]�^?l���e��ҁ��.Hǆ�Fp��тt\9p�ps��xA6:������"�E͟T�Z���vO!�6k�E��i�RO����_?� ��DW2�c�X�K[�}�Vݣj�� l4��hHQ`� h覟K	��l6��l�"�FZ�M��&#�|IH�S�U1D��	�[�p���#��L�=m�Sݾ��aQ&$��ٛ��@,��CYt��� v�7�Yĺ���cQ�=|���Ȅ˄Q_�NMn�j�xz	�f;���h���~�����^�ㇻ��w�0�����F��:��]�F�U7-����-�����D��?��:y^���U�������:(�g}7<;�57��Dk���l+�����d9�ր���1 ���r�M ~0!�oq��\�������Stl�4a�Ng+?���s�vɵ:D >�@VӢ
�A�T��E_��~�U��E3\�h�ކ�΍ᨤ�%���,����te}��!�Iu����)�A|*� ��N��?;�y�I ��{�s�h��]�~ޣq���akjf����O�a����?����$�O
D>8]da޽t���6h��Ύ�_K�AS!fX�X��ǳV���č��p�ɗZ
�,����ɡY/�ߴE��p�bQ�����7N�����M3=�]_d�oĻ��{xM�`~� ��1��e��� q����NFKO�^�|�ý{{�?���3         �  x�%�ٍ$1C��`���e�cI7Z�KO���{?�%�DY�,�5�����-_8��ĵ�3�ђ�FK�83��.4�y����&��L�k2��������� ���"�t(�`>�j��(�/�'�%��X���B$ĵ��b��d���E���C�j�e�jb��R�H�X��d�D�F�m�� �9�bQ��hqP�hqQ�h���Y��Q�h��z-��J�,�Z���:V�堮�h���Z�<h�Z��h�Y��М�h���M-�V��71
d�E�Fk�j��Z�Z�g#Z�)Z]�$Z*D�vLوցi�:1�h]��y�"��h=�k#Z/6ml[�
6��2�>�T�h��Rߟ'�]�O;�}����F���1��D���`��8�s�(����]��.���qî�_nP�}�Dڢ'qF��j�?\��I�Ì?������a�ڲ�i��To��v�����/ޘ�k�Sྒ��8����+��S         �   x�u��n� @g���l�Jm�]�d�r�s������!A����{H��:��"��y�qs-�P�o����4����z���L()R�L"�_�S��S��� z8��0������W�շu��Ce*�T��l��eu��	^���fM6�,�	�A����kQ_5\�FuL���$,S����iOy���=��?�lM�����]�4O2�}�         �   x�3�LL�����!0�!=713G/9?�S�(Q��@%;���3�%15���7-��4-�ĥ4<�3���+#�¿�M��(7T/�")Ҩ�=%+�4jd	g�2202�50�50T02�22�25׳46�)������ ��+�             x�3�4�@�=... �      2   =  x���Kj�0���)ri$Y�v�G7Nj��y`;��@�E9B{�B
5	y��u�E��J⛁�����w���/��[�G<��?���úG�?���pP�= ��$֜9�\��1�J_p�u`�6t�r��դ����n6��P��M;
��0Ǔ_�G�tzs*l��Wҁrʲ��3W=a'E�@�+�}&d�yL'��(-�QR�E��e(|#��~IC�.��k�D��R��pƅ�iFIHs�]�~'���*�a�Gٸ��I���i� _IrK�O�Y�p�;���p�g'Ι���:�b6Pn_�ea~���      D   o   x�3估��/칰�b��i���Bn.���.컰(�	Ho���bӅ�v_�i�w��b#P��˂��$��FNS�{�L�4�04h���Y`Ά;�b���� *\U      J   U   x�3�44�04U���2�44�041�9/,���b���;.�s�p^�d4]�pa'�)��^��1�47P���ˌ�L��qqq ��"u      4      x�3��ta��ƋM��=... Onv         6  x����n�6@��W޶C�^��,P�S��,��$�NT��v��A6������n�.��7h����Jd�aF1�W�rxI���k����JΘ�[Z�9��������>z��� jiA��"y���������u?�>l��h�{,��d�.VI���㶛�<M�V�4f�D���g��w^�?�q�H���q��e<�c�l�8���pW����!� R��wy��3PJ��m~��yHɏѯ�_����C')�ɷ/���Bo8�^����el�JV�'��ck�\4³[�,�-��;D��?C+��)�1%�
@%��F� �>ș�}�-�e�wz��C0ޔ��d���09'�����!k,9ל?=���2�h���<"d��9���m\�fI��DH������)0"��Cw}k77���v�.��}����#Yg��ϟch|
���l�8r.�}�d�.�Y��Wˉ�Fʉ��i��9�=0;���rM8�v?;� �5�Rf3L1S"���������iJ#E�[�z���q���Ϩ�.�	:��˴�b�@����+f�����������̃ 2�	�a3K��f֚i`�oJ��̃`�!X-��j3�ԉ��d^�8i.��	�A]l
jJ�(Ƃ�^]<r��4��
�
8��y�SA����<|�-����:�,K2C�uy�H�Q^]&~]�PV._�0
4�7�k ����k@I1l���u�nt��0�)Is"ɜCTU]{W5����ʩ��lj5%g�W���t;�K�P������ʏ�����~-�����~��7o�:JK���B^=HpqჄ��W�]n���_�3c�j�<uz~h��?����ل�@L����������@���1�ȡ��@����i�_��@2jb 9:�#���v$��73AMD���j��a��\�֑Lk�v8�7�DW_d�M�BS�t��e�*E�R�5�	�Q��O�G0�۽U�~�?��]�xc�lC@g���c�fª4��j�e��c5��=���j=Dh]��B �#���V��ʜ\�x�1Ig�)�)��h����������?��      (      x������ � �      &   �   x����
� ��|I��=K3�(��}R��!��>~�On�m��zZ����"'���=������fNx*�e���r��)U��5���꣭�>�۾�����e��4���NQ��?m���Bn�%�      H   �   x�m���0E��,P�v�x�)�9� ������و��V=Yzzz���O���C�#K��C= ��I�u��8!��]_��E~o��|����}l�ۮ�^"C��.\����E�2������+��� Q�r5Ъ��J]�'�1�RmK�      L   X   x���A
� Dѵ9�4F�e�� (tel�ߡ���90NG[Mw_�tO��������&9*Q�w�@ew�BG	�`u�,`�ۼ"}��Xn      6   =   x�3�4202�50�50R02�21�24�31�D7�2"s=4q�zS=C3NCNC�=... ���      8   #   x�3�4���|��ԒĔĒD�3Ə+F��� �@         ;   x�3�t�K��,�P�H���L��4202�50�50T02�22�26�32�%�D\1z\\\ ��      >   �   x���1JAE��S���WU��t�l��*���&Ƃz��3����dН@*)��k��<?�:Y'�� ��a]�Im�Lx%�x�[x��qXG~����x����w�/�6n����4%n���%�� ����?�S�Z��X�ͅ�+P��k��[��ؚ�d�_�C����/�*��Y��K�������Qߕ���5�Vd���y�H��ۭ(��b~z�      @   !   x�3�4�4�4�2�4�F\�@�ȏ���� 4�t      F   R   x�3�4��Ģ��Ԣ�����b=$����dd yNC.CK�>3�uq� uZ��Ә�ЄӈӔ�u����=... YQf�      B      x�3�4A.3N# 4��4B�=... 4�u            x������ � �      "      x������ � �            x������ � �      �      x��]�nܶ���}����4N�65z���)��n4�^,�` k8�i*i캅�}�}�}����D�H�8!nnm���y>~<�m��EV�ӲhP���I�\�����.�U�d�*mn6�>;K�8;۠j��5�p�״FM������6�L�s4=k�-:�.��A���FI���'����O�����:Ɋ2�/�g�$%<L���L�y󺬚�n</��p���Ϧ��j�E�$��lA��Y���<��o�<9G9n��!�jLV�}��1IBc�N�l��M�M��hU�=��*�3�BI���N���UR%xPU�y��ǵщ��2�k������7�6�h~�a�T%V�&C� k�c�j�T�ǘ*f�W+�_�|�UI�t9�����43��)�6�+D�
%Z<�V�b�N��j�Cx�n~^U�(���{�+1��qŅ��jJ�2���'z�=�~Ux��w���@rSnj<�w�i*�$�'U����U߽��)��Ǩ������]h�
�43P1-#�޴EP����{2��#6�������__��=�T�~G�S��\0�>�(�F�����^�2;��>�C.By3:wYԋ��Ԥd�je;�v�W��J�a����RB���4�Ep�ɧN���6O��~�X�hX���NSip �b��nP<b��� �d��4�%7x��G�щ8A���c��	�ſRT�?!Р��q"^�z�yR7ok���J�`� ��H��c�U��]�1�:� ɖ��$�U�e��"�_`F��0MJ�U/�	�H+
�45|��4�Ns�6�i�
Z� �o�(��AP�I܍<��H6�T�w��#:��,���˺vr��(i��QNA��7��n�9|��sh������q���=�c	1�c	1��W�_&�����(np�5�޻:n�a����	�l|��p�0Fb!F����D��vOvr����v���b��~<�yA��s�'�
�A�vˮ2�s�2a�7�!�F9]��z\g�f��
�`PPao���8�d%��e�N0�!���Q�^���f�|�Ad�C�У�cis��3�4��c��	��Ƽ%��y>�'s�p�r���cp��}ȇ�2t��O+�C>�|�g�W��萕��ɡ އϹ (m�Jcr��f ��WȌ�t��S��|H�W	�µ�q\�F>���Z9��ۣ��2B`�^�^`5]�e�CA"p���)�j���R`> B�cS ��� �߻��0*�ZK��<��T6���4�nD�5�A����u�oPF^(�q#��;	c��!Oh06�#Ԩ�n��8�ecm����Ȓ�OY6
�Wă֏X>A@�
FYCr�A�8���Z@ʲQ��"�g���x�ۼ��� �FA`?a�q�I1#��v��^��&���iJ�;ĺ,Cd4�Ac]�pNVp��[�#a�y�^"PE�#�h*��B����b�}�'\a�)haw�zq��z����5�%��3�#x<�*4CVr�]�@�8u? ����ujfhY�/y3{mtzD��&3W?�:]�W��7i����sD��_�4�57�5eŲ$�9��@k����I��> E���r��zì�"|����zI��l��/�)��$�Lٿ=�uȐ��o3ϴ*�mզ���m�|�:�>���!��7%��Ϩ� ��SJ�-?u����۬"�[8(%!��[M���׏d<�n�J��b�̌~��gf�ۋ޻��*#ؖ��P���������M��@T���0Sk�b�T��Zy',��;"��ɘ�4�%Pn8�VF�	>mf��{����p��(��QiSeW�/)��:T61��YA,��`oط�sn���hࢁ�.��yU��%��߰���qm�%�*�j��%_П@PȽ(�.��<�$���G���Ư�"�okx���mn�����}��Zy�����"�}��f'Mѣ�c�ף��)�x'''P��ޗA�L1������#��/m�Ы;��o�9�� �@tp(�z؎�</��I����mπ���`6��׶�B�A�y�����A3�6̫C!���r����s��[A��5����`�-�7�$�Nu�����F]lt��ņ���WZ��t����m_]	����(�e���Ja}>��їۢ������>\��g<MklZ��h�H�><e+�H���j��w�;p�^'��m1� j�u�_��"3�_�ۍ@�0�p���Fs�ѽ6G�C���!���vH ��I_	)"�e�����O7�D�2UPѶ�P�ʨ��T��h�R�"�_ j���Hh.�v�v�*!��/r����IY�Dʗ�<?a9T��m�\��Ao��V$o�lc"�V2ӄ��=|+ɴ�q�uL�bCd*��E���k���se�eU��A~<���H�p��iE|4���;d�Ǯ�q��1iG�؊0# ٓ�Ӑ��k?7��Տ�^Mz� �l%O�N�|D狴����R�GsHl�c�N�:=��:�}��/#a<g�
mQ QӋ���
>HoueI�Y�ʵC="�A����"ifÏNG�qHl�3���f6���3��C?G1C@���pOh���O\�5j_�������M�Z�W�J��O\���o����D���h�Ю�(�Cxz8HSF��r���],٦�,1ML��!�N�$��N �|��--�{X�n�Wo�s�z���Z:r�����J�۸�+�L{��D�k�Q���<�9�H�[�f�谷�s7��+�U9dN��4>�ֲڬ�z�'N���6Zb�.������-ffc�Q�c/�> ���pؼ%°@�e4��2��1gr0�`A�Ӻ��|�&>��T+&6؋�<�R���͓"�Jè�Q�PS�a��3��H�M�XI���A�I�Ko��3f�8$␈C"��q���Qn&[���P[k���b�-}F-+�����u�Dh�6�.Fߴﲙe�Y�4����� m��aв��(��
�v���� �ȵ��;mۄ���1W�A�a"����"�饤q)pPl�/�yીPy��B� �kP�Itv��6F�x�l� �D�t/��)@'DQ�Ɖ!�Æ��3�K�Ƒ��WJA��tZ5�������.�d�<-���yF�:���:��������[l���Xl��H�&i������!��J/,�4AIU�7�1֞4�{j�O�N�u���j�#�86��\�6"ڈ�m��V	]���zG���uL����r�5!�n%��)��55��ʝ(2��M��և��L;�~�Y$�Y�I8f���<��'¬�a�u�ژ�bk�lw(�"���@֗�s2����C-��bs(�-J�(ʢ��l������+Q��w��J?�8�8��ݴ���9�9��r���H�쬕����Nϗ�r�ң��g���̨��>��q5=�k׳º�X	A�9��G�=)3��RfD�F;��(T�w�^�x�[g��ۀO��7?ڥ��P	�#3q�	���<DWz8l��J�ىf羘�֨Iy;qή(�T�hx�s��v�k]:CClO�n���V����]vb��.i��������nC�����v��s6��'���W���}���v�*E�t�l
���/Pi�:�1�n�����~z��qk��R� {W�j^�wv��>)fj�˳U�+X�=eeY8Ud�������d����:�cz���>#|�K�r1���a3��G�9 ���<��
2к�Ԭ2y�-y>��5;���|��`n�����EY���/dD|����em�G%aK8���>SM���@f��~tU�e��8Ͳ�y�$�4YBD �n�A%��yy�d���:�R=}OΌnϵ1�)�F�\ѹ�i��A5����6m�铓�����uJ�tO�,�ʄ�	uMT�uC����k4+ѬiV����۴zl�O���%�FӪ����L��M�>��^{��d3����fM�3�4�w��������I�*�v��[CZ�r��rR4Tt6�Z��\��O!�
1��LZ�(��{��
Ҫ �[Q9t�6Դp����4�)G9�v��5:�`� �  7��i�Lv�|֓��o���ʇ�j��,p���qф�H.jT̽�����g2N���&~�b�,�f���>݆2G��ӟj��+^����8�b�0�;�
}��UC�0�����aXR��Hx6�R>֐o���uS����1xZx��ΔwYb��f�
��ҿ&�v��>�A0:�4K�c��-ڶh�>N۶�:M	}7~qCp
��grQ \|����N���shh�M�T��F��Y�4G�����f�gŎ;bD5D��peWm
Y��������6��}���aN�~}��}v���I䜿ɜ��K5&�d)�O�A�y�K!���m~��F֟�GMyk��k�������!C9yC����j�Ļ�_V������gt�x숲��e�)o�������9�q����u��1Y�7�����$ ٱpc���cMH��z t�\�8��T�S�;^2�t�"���aŠ���2�{aZO�j�-��q�?縶λ�e2ݫ͹���.����,��BR<��
��6i�����#�ɦN>�W�ڼ��Qx���W�C=����z�j
�2��ƫlZ�=�~Ux��w���@rSn^c��1����4�܄�?�o�NeQ.���/����WТǷ��i��&;�t����Һ��HT�-���:�b���Lxj�'o�`(��]i;C�wN8��Y�Kd�М��CV��ؼ��`S��P˖g��R��	Q݅�mg۳�7��e��O"<���O�Ӡ�On� �"\��5L�e��ƚ���,@��J�j�8��~�����9�����k�����I���;+�`0�E	I����Ӱ�L��q�bH�e�Ȁ�����$O� ��[�^�Ëk,34���-��h�p�˽���iu� �A�g�n4d1Vd�[t)ѥ|�.����^E(����.l;������Qa�����Y�u�'?��^�B����
}��Q��8+K�M��ʰK�Mn�:}buJ�(7�޴�dTuu=��91�&��@����UR4���U�
2K2�l�R�A��KvVd��)�+&+s��E���%�aRV#�c�~�#��'�.9�9����粌�zF:�B�.[�bl��\b1>/��6D����mR�>숦 ?������!j�^�GϬEW�Y�ڞ���*�闶 ���ȏ3��:K��.�M�Y�(��>|H�^Vf�:�Bs�5��t�Fx�==Q^7	V�uKW�N��d#���7UI�%/|�&�W�}z��m2�cl�UߡMW�W=#�IX����-<�*=�m@>�y�5H�9��s�O�X`��>>Hˋ"k�������EI\*�sMOű?gi�����k�.rJ�w��R�G>y�M�R(B���-&�\yK���Aacu�WT�W���3N��9:b��QJ�r��u1=�Skaa�]~�t��6�����>]���w���t�p)F$m�'l�^�l��m���������ý`����P���h�#�hw��O�'�1?�I�Y����ͬ�r4�"�g��UI�G�O���ܯGjL^%�%�Ֆ'��7��n��e%���"L4�H�����<��D����=2<�f��?�d�!�bҬ�f�a�$/k�K%��&�˪��$��ӊ���ͷ��Z���w��,�����\����7&�&�&n�&˒N�@yB��)'t��~�8UL��c����'��_	^����˟���O��߬�Ⲟ�g��#:s=Al�<��\�+�j�.��i��ۢ�X�3Gߜ�ز��p^`9oN��Ur�Șsrl�i��f�W��4���	~2kt�����4��Q�Yz�����dk�C��%���H�+;�/F����P�ū�P b	K�l=.�y5�Y%N��Z<F6g�y�#f�H_8�ů�u�5U����5B���k~}3&��t������ɿ��=��5p����zK��xY����/�<�?���]��rl+#"Y��{N���i��ֺ��fW/�_�~���vG���+�F��UăV^��)+e8����m��}�ܨ�Ϯ ܫ^�nm���zWh�4��%�b7� ����v�j.m��RSx��w �h�Cf��Q������VP���+u�+�Fq]�t��n8��s��(��Y_q8:��<�J*���uX� �Iqe�s�G���v_�*ȓQ��<��	��N�~�t�s��F<�O�-n1)"��s((���ns����Q�F=��xMw?~�1�1>����B0Ѕfn(Ʃ5� ��~��ޜ|�gUF ��xʌ*�[EI=�U�8�QQ4��vD��F��q _�(��~uH��_�&��������hƇ��!3{�Pf�-cbS����bWr�R���_��s��Cs=��@�JmBp�����n�v�`�M�&��߻//�Q$pGD����F|����y�^2;rBw��Gg�5F~|����JIK�Ĳ��ҲBs��qN���1i�>��J�_�"�p��Z��El׿�˟�U#k��9��d��/��Gfr�{��gC?e7�ҍ{�hF���LItTS|�T��<���n�v�=���CKqhI��y������s$r��̱�Q2q�a�ǹ�q�v�滈�؝���!�hy�ŝdAU�EA@���� o�I�e(=�0�N#��@a*M��Ţ'{��<���q�A�y��kH�({���G=�]�M���S^4ʨJ�A�.Q7Q8�.�]�1RFu�_P�Ƽ�ȏD���.��;w^9�`Ue���#�ЈB#
�B�����E�g`��A�w+4�lu�
:�n�0�`+|6�� ;�����sSOĺ�u9�v�Ͻ�X�#��f>e0�m��IC� <q�+kAA6��]�gGӂo�Q�Ҏ��?B�᷍�6��|2�
��NPB��^�&�w��Kj��Ǔ�3��#����j�}�TZ@��KFӐH��+b�~ۙ�@HJ�|A�$;�h�莋�<�j�'7�=��� �}~��T��]P���g�}��#�v�      �   #  x��]͓۶?'EGg���M7��:i�vzi�齌��h�]YR%j�M'�����RI���ib� H�?�	�ݽ�ǣh��{��?^���{�r����A�a?�՟�R�so�8ğ+��o��}�~n~��8�n$d��sZ�=2|�1-9�l_�9���{�Y�7�?�����o�w����{��(�xqB�`)uo�q�t����CQ��nN*<2V'X�XW:���+n2�O(*p'��ϴc�EI��~Z.� �?�,��	�C��>��=���C�<���V���"��0�F!��N�_yo���S37`⒰g�$�0��Z-
�$�S�I��$��4�ϬQ��g������[�7x�I�EJ8�2N�R������g8p����e�צ�=�q��&��8´l��/���?�����}��������j	~�2�o
y���~-�fW�`�~I����f=��x�ˀ��%�l����/'~i�R�)��~����S��^T�!2��$�{�-�j����~�W�.�"X�\jv݊�^�Š�W�Jv$�)t<!x��@��GD"P?���S���22�c귒|�<b�P"�{Rn���\��2vy�ف�-A'e%�#ȶ��T���ڃZ�+.?�ȒKÊ�`aXQ�V�Vt��
hO$!(��AFR�m���K��&�]�W�=�ˑC0��/��vځ�&��68�}�W�垸4��]�9%lG��JDd����fK��.Gd�n���ο�����A^���|M��^�)xi��{� ٟqΖ���cD����,��"mW��Eݿ"�����.����'�����zO�݃�>��S�>��#>��L�..�(Al���.�B�0SD~E;\�����.��ǯ�*���)q��Cĭg<J���D|*Z%9�"�P���v�� l?X]�4ȥ��@H�bй+�!�[4���^y^�o��y+��DB�r6Qy,���ԁ��`���@/�P~��`C:�EQ��.�a��E���o6�¦� k���䃋I�HX�?���)b� ��~��w��m�X��L_�4�{(�+�G]l�D���MJ��
� �|L�[��� C�%�u��Ż�B��͜cp�aq�;c��S����l����ܵ�~+d��:�p��}�j^?����"zi5Ja_�v�J-r疜[�������wji-9�;_e��z.ˬ�W习/P�	S�����K�0�cx9Q�T�}֑��B������%��"�?]4�Y�97�D;��;��܉ `LRC�}���V�0��\݈+� ];��l��� l�.�Y����4�YW����q��+�I�#�!�U*�5Ҁ��Q��y�K����w�J'
o�����y�r��zAz`�^��v��E�^2L�>��T��{n��=���T+H,4���B{WN�H9(\C���F$?�����;�ɴP�p�-Oj3)d��MO�:v� �| �����T��=7�[Xi�$\�v��!�C4pDK�$,:�g�Sc4;1��efA"�Y�Ǡ#?�q _�@x����r���0��a�b;����߶p�v��\7л5�u���}@;�����$.צP��3���h�~�7�W�O(*zl����U�q�s4C[�41v9N���q�(��ѽ���?��u�S���w�W(��ďү��[p�WG6W�lH�ı��0i*`I��tL%u��B�L�L�oOTE��)V�A��S���d/�}�ӟ�����N��j�-(�R�Z4XdԎ-��r��3)�^,�_��}����,�p���//�+��zX÷�L+_`x�5�ukE�������Ф1�F���{� ��^ufw���3p��3*xt�~���Ew��9�����3�\���V�\E�9��f$O����qQ��<Nڟ,M���B�Y-Z�B��u��"���Uc����B�Π'�M�����5]�_��ҮlD���UQ�i��VJgAf���9S�]��c�g��svV�����
���|2U/f�I���s��ݖD�S�|�E����X؞�~�Hģ��?n��#���~
쬖[�Y�}`77+H�.*�#8�s�4_Q��^<���49��`��(�̶�F��NG5�� Fgx,Bɒ��T��F���!�tC)����$߃IQVV�������b�qYr��6'!~�&n�U�"2)8�y���B,jkst]���VK������I[�/���9K�{����x57����i�IVN�,����I�\Ͳ^�����!wr�0� e`����Ir��Y�<TKLs�u*kZ��#Y���he��F_��<�a-����/cB��W�vhµ]~�J�u�i)���_�jǤ���J��2�G�tt�Tb�tk`2�[�U	n�;�:�-e]e�Em�B&�!�Ϝm7?�i�L� =����:Y�$���p�"��*����g���6�RM�
r�k$�*B���#Հ� �����~q��qFKiM��rh���Ц��3�5'B�ᙛ�̉��t�wV��5�W���×��ɳ,y2A�gk��%?j.�۟Hy��!CIZeJ�$-ۈ�Ϯ���]�0�
��(��zc���*��9R�^Wx"k�S�s��1[���X��G���}�<*X� �Â�_�
�)����fH��6RF"���Q����/O�t̒�X��f�j��`b%1���G��__��ܾ���oo�}�}�pw�ݻ������폻 �����������wA��{������ׯ����      �      x������ � �            x������ � �      ,      x������ � �            x������ � �            x������ � �      $      x������ � �      
      x������ � �      �      x������ � �      :   �   x�u�K
�@���S��t^�Y�TW�X�=�v��.��
���9�*L`���G�۰�#?�Ƈ�M�=DQ��q��˙P�� L|)j��2/��nS�Hҹ��\B�
L2�;��Uh�:���۶|�{��#��ܹ�z0�Tu�c�d<i��{����ή�ۈm�xE���}L�XW1/�lR�l�d�y��͵\;B'��G��I�2I�g�t�      <   !   x�3�4�4�4�2�4�F\�@�ȏ���� 4�t         B  x����N� ���*z%�orj<U/`'���[h��x��t�-��:�&���y?%��[c��P�{�q6�������
�
��E�bQ&���y�
zE�c<���m�:�w��[X�Ew�N�o;�'���Y�Yu\ȋ�8ߺx���-�\��ք~�/�~�{�ɕ@�M��lc|��/,z����*#b�����P���k�=�,VR�8V#�����ʙ�u���t�܃���/�����~�#�^/G%��K%$b,�I6�aܝ�<���6���C%����|��M9:-�,1�ަbDO�GP�����dnQQ��̽�      .   Z   x�%��� D��L1�1&���:�Eޗ�@�P������[��ʃh���틷�ԍ1�
Ht�J�f���N�M�h�:5���!��70         �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`dhedbel�gdd�S<����8J�r2�qX[������&!�����-��fFPc���� A�ED            x������ � �      0      x������ � �            x������ � �      *      x������ � �     