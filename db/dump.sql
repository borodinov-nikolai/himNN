PGDMP      .                |            himnn    16.2    16.2 �   o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            r           1262    57363    himnn    DATABASE     y   CREATE DATABASE himnn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
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
       public          postgres    false    224            s           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
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
       public          postgres    false    254            t           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
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
       public          postgres    false    228            u           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
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
       public          postgres    false    226            v           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
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
       public          postgres    false    256            w           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
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
       public         heap    postgres    false            .           1259    90826    categories_components    TABLE     �   CREATE TABLE public.categories_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 )   DROP TABLE public.categories_components;
       public         heap    postgres    false            -           1259    90825    categories_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.categories_components_id_seq;
       public          postgres    false    302            x           0    0    categories_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.categories_components_id_seq OWNED BY public.categories_components.id;
          public          postgres    false    301                       1259    57936    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    274            y           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
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
       public          postgres    false    292            z           0    0 3   components_characterisctics_characteristcics_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_characterisctics_characteristcics_id_seq OWNED BY public.components_characterisctics_characteristcics.id;
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
       public          postgres    false    298            {           0    0 )   components_characterisctics_values_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_characterisctics_values_id_seq OWNED BY public.components_characterisctics_values.id;
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
       public          postgres    false    276            |           0    0    components_seo_metadata_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_seo_metadata_id_seq OWNED BY public.components_seo_metadata.id;
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
       public          postgres    false    264            }           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    263            �            1259    57471    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    238            ~           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
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
       public          postgres    false    262                       0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
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
       public          postgres    false    300            �           0    0    filters_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.filters_components_id_seq OWNED BY public.filters_components.id;
          public          postgres    false    299            '           1259    58443    filters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.filters_id_seq;
       public          postgres    false    296            �           0    0    filters_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.filters_id_seq OWNED BY public.filters.id;
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
       public          postgres    false    280            �           0    0    home_pages_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.home_pages_components_id_seq OWNED BY public.home_pages_components.id;
          public          postgres    false    279                       1259    57998    home_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.home_pages_id_seq;
       public          postgres    false    278            �           0    0    home_pages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;
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
       public          postgres    false    252            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    251                       1259    58102    products    TABLE     �  CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    price numeric(10,2),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    in_stock boolean,
    price_units character varying(255),
    description text
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
       public          postgres    false    288            �           0    0    products_category_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.products_category_links_id_seq OWNED BY public.products_category_links.id;
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
       public          postgres    false    294            �           0    0    products_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.products_components_id_seq OWNED BY public.products_components.id;
          public          postgres    false    293                       1259    58101    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    286            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
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
       public          postgres    false    290            �           0    0 !   products_subcategory_links_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.products_subcategory_links_id_seq OWNED BY public.products_subcategory_links.id;
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
       public          postgres    false    232            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
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
       public          postgres    false    258            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
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
       public          postgres    false    230            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
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
       public          postgres    false    220            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
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
       public          postgres    false    218            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
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
       public          postgres    false    216            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
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
       public          postgres    false    244            �           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
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
       public          postgres    false    268            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
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
       public          postgres    false    242            �           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
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
       public          postgres    false    236            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
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
       public          postgres    false    260            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
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
       public          postgres    false    234            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
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
       public          postgres    false    222            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
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
       public          postgres    false    284            �           0    0 #   subcategories_category_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.subcategories_category_links_id_seq OWNED BY public.subcategories_category_links.id;
          public          postgres    false    283            0           1259    90853    subcategories_components    TABLE     �   CREATE TABLE public.subcategories_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 ,   DROP TABLE public.subcategories_components;
       public         heap    postgres    false            /           1259    90852    subcategories_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategories_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.subcategories_components_id_seq;
       public          postgres    false    304            �           0    0    subcategories_components_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.subcategories_components_id_seq OWNED BY public.subcategories_components.id;
          public          postgres    false    303                       1259    58054    subcategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategories_id_seq;
       public          postgres    false    282            �           0    0    subcategories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subcategories_id_seq OWNED BY public.subcategories.id;
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
       public          postgres    false    246            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
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
       public          postgres    false    270            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
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
       public          postgres    false    248            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
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
       public          postgres    false    250            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
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
       public          postgres    false    272            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
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
       public          postgres    false    240            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
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
       public          postgres    false    266            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    265            0           2604    57402    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    57571    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            2           2604    57424    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            1           2604    57413    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            @           2604    57583    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            I           2604    57940    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273    274            W           2604    90829    categories_components id    DEFAULT     �   ALTER TABLE ONLY public.categories_components ALTER COLUMN id SET DEFAULT nextval('public.categories_components_id_seq'::regclass);
 G   ALTER TABLE public.categories_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    301    302            R           2604    58219 /   components_characterisctics_characteristcics id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_characteristcics ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_characteristcics_id_seq'::regclass);
 ^   ALTER TABLE public.components_characterisctics_characteristcics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    292    292            U           2604    58502 %   components_characterisctics_values id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_values ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_values_id_seq'::regclass);
 T   ALTER TABLE public.components_characterisctics_values ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    298    298            J           2604    57991    components_seo_metadata id    DEFAULT     �   ALTER TABLE ONLY public.components_seo_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_seo_metadata_id_seq'::regclass);
 I   ALTER TABLE public.components_seo_metadata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            7           2604    57475    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            D           2604    57632    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            C           2604    57620    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            T           2604    58447 
   filters id    DEFAULT     h   ALTER TABLE ONLY public.filters ALTER COLUMN id SET DEFAULT nextval('public.filters_id_seq'::regclass);
 9   ALTER TABLE public.filters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295    296            V           2604    58515    filters_components id    DEFAULT     ~   ALTER TABLE ONLY public.filters_components ALTER COLUMN id SET DEFAULT nextval('public.filters_components_id_seq'::regclass);
 D   ALTER TABLE public.filters_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299    300            K           2604    58002    home_pages id    DEFAULT     n   ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);
 <   ALTER TABLE public.home_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277    278            L           2604    58011    home_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);
 G   ALTER TABLE public.home_pages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280            >           2604    57560    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            O           2604    58105    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285    286            P           2604    58134    products_category_links id    DEFAULT     �   ALTER TABLE ONLY public.products_category_links ALTER COLUMN id SET DEFAULT nextval('public.products_category_links_id_seq'::regclass);
 I   ALTER TABLE public.products_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287    288            S           2604    58233    products_components id    DEFAULT     �   ALTER TABLE ONLY public.products_components ALTER COLUMN id SET DEFAULT nextval('public.products_components_id_seq'::regclass);
 E   ALTER TABLE public.products_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293    294            Q           2604    58146    products_subcategory_links id    DEFAULT     �   ALTER TABLE ONLY public.products_subcategory_links ALTER COLUMN id SET DEFAULT nextval('public.products_subcategory_links_id_seq'::regclass);
 L   ALTER TABLE public.products_subcategory_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289    290            4           2604    57446    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            A           2604    57596 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            3           2604    57435    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            .           2604    57384    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            -           2604    57375    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            ,           2604    57368    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            :           2604    57518    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            F           2604    57656 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            9           2604    57507    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            6           2604    57466 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            B           2604    57608 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            5           2604    57455    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            /           2604    57393    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            M           2604    58058    subcategories id    DEFAULT     t   ALTER TABLE ONLY public.subcategories ALTER COLUMN id SET DEFAULT nextval('public.subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    282    282            N           2604    58069    subcategories_category_links id    DEFAULT     �   ALTER TABLE ONLY public.subcategories_category_links ALTER COLUMN id SET DEFAULT nextval('public.subcategories_category_links_id_seq'::regclass);
 N   ALTER TABLE public.subcategories_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284            X           2604    90856    subcategories_components id    DEFAULT     �   ALTER TABLE ONLY public.subcategories_components ALTER COLUMN id SET DEFAULT nextval('public.subcategories_components_id_seq'::regclass);
 J   ALTER TABLE public.subcategories_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    304    304            ;           2604    57529    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            G           2604    57668    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            <           2604    57538    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            =           2604    57549    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            H           2604    57680    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            8           2604    57492    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            E           2604    57644    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266                      0    57399    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    224   ��      :          0    57568    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    254   b�                 0    57421    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    228   m�                0    57410    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   L�      <          0    57580    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    256   ��      N          0    57937 
   categories 
   TABLE DATA           x   COPY public.categories (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, href) FROM stdin;
    public          postgres    false    274   �      j          0    90826    categories_components 
   TABLE DATA           l   COPY public.categories_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    302   R�      `          0    58216 ,   components_characterisctics_characteristcics 
   TABLE DATA           W   COPY public.components_characterisctics_characteristcics (id, name, value) FROM stdin;
    public          postgres    false    292   ��      f          0    58499 "   components_characterisctics_values 
   TABLE DATA           G   COPY public.components_characterisctics_values (id, value) FROM stdin;
    public          postgres    false    298   �      P          0    57988    components_seo_metadata 
   TABLE DATA           S   COPY public.components_seo_metadata (id, title, description, keywords) FROM stdin;
    public          postgres    false    276   k�      *          0    57472    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    238   2�      D          0    57629    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    264   p�      B          0    57617    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    262   ��      d          0    58444    filters 
   TABLE DATA           o   COPY public.filters (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    296   G�      h          0    58512    filters_components 
   TABLE DATA           i   COPY public.filters_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    300   ��      R          0    57999 
   home_pages 
   TABLE DATA           l   COPY public.home_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    278   U�      T          0    58008    home_pages_components 
   TABLE DATA           l   COPY public.home_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    280   ��      8          0    57557    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    252   ��      Z          0    58102    products 
   TABLE DATA           �   COPY public.products (id, name, price, created_at, updated_at, published_at, created_by_id, updated_by_id, in_stock, price_units, description) FROM stdin;
    public          postgres    false    286    �      \          0    58131    products_category_links 
   TABLE DATA           ]   COPY public.products_category_links (id, product_id, category_id, product_order) FROM stdin;
    public          postgres    false    288   ��      b          0    58230    products_components 
   TABLE DATA           j   COPY public.products_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    294   �      ^          0    58143    products_subcategory_links 
   TABLE DATA           c   COPY public.products_subcategory_links (id, product_id, subcategory_id, product_order) FROM stdin;
    public          postgres    false    290   ��      $          0    57443    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   ��      >          0    57593 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    258   ��      "          0    57432    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    230   �                0    57381    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    220   $�                0    57372    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    218   &�                0    57365    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    216   ��      0          0    57515    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    244   ��      H          0    57653 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    268   ��      .          0    57504    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    242   �      (          0    57463 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    236   !�      @          0    57605 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    260   >�      &          0    57452    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    234   [�                0    57390    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    222   x�      V          0    58055    subcategories 
   TABLE DATA           �   COPY public.subcategories (id, name, href, created_at, updated_at, published_at, created_by_id, updated_by_id, description) FROM stdin;
    public          postgres    false    282   ��      X          0    58066    subcategories_category_links 
   TABLE DATA           j   COPY public.subcategories_category_links (id, subcategory_id, category_id, subcategory_order) FROM stdin;
    public          postgres    false    284   ��      l          0    90853    subcategories_components 
   TABLE DATA           o   COPY public.subcategories_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    304   (       2          0    57526    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    246   \       J          0    57665    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    270   �      4          0    57535    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    248   C      6          0    57546    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    250   �      L          0    57677    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    272   �      ,          0    57489    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    240         F          0    57641    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    266   .      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 217, true);
          public          postgres    false    223            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 217, true);
          public          postgres    false    253            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    227            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    225            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    255            �           0    0    categories_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categories_components_id_seq', 1, true);
          public          postgres    false    301            �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          postgres    false    273            �           0    0 3   components_characterisctics_characteristcics_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_characterisctics_characteristcics_id_seq', 10, true);
          public          postgres    false    291            �           0    0 )   components_characterisctics_values_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_characterisctics_values_id_seq', 7, true);
          public          postgres    false    297            �           0    0    components_seo_metadata_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_seo_metadata_id_seq', 4, true);
          public          postgres    false    275            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    263            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 13, true);
          public          postgres    false    237            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 99, true);
          public          postgres    false    261            �           0    0    filters_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.filters_components_id_seq', 13, true);
          public          postgres    false    299            �           0    0    filters_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.filters_id_seq', 3, true);
          public          postgres    false    295            �           0    0    home_pages_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_pages_components_id_seq', 5, true);
          public          postgres    false    279            �           0    0    home_pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);
          public          postgres    false    277            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    251            �           0    0    products_category_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.products_category_links_id_seq', 9, true);
          public          postgres    false    287            �           0    0    products_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.products_components_id_seq', 92, true);
          public          postgres    false    293            �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 5, true);
          public          postgres    false    285            �           0    0 !   products_subcategory_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.products_subcategory_links_id_seq', 11, true);
          public          postgres    false    289            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    231            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    257            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    229            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 42, true);
          public          postgres    false    219            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 52, true);
          public          postgres    false    217            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    215            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    243            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    267            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    241            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    235            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    259            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    233            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    221            �           0    0 #   subcategories_category_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.subcategories_category_links_id_seq', 7, true);
          public          postgres    false    283            �           0    0    subcategories_components_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.subcategories_components_id_seq', 2, true);
          public          postgres    false    303            �           0    0    subcategories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.subcategories_id_seq', 4, true);
          public          postgres    false    281            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 29, true);
          public          postgres    false    245            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 29, true);
          public          postgres    false    269            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    247            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    249            �           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    271            �           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    239            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    265            c           2606    57406 (   admin_permissions admin_permissions_pkey 
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
       public            postgres    false    254    254            k           2606    57428    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    228            g           2606    57417    admin_users admin_users_pkey 
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
       public            postgres    false    256    256            2           2606    90833 0   categories_components categories_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.categories_components DROP CONSTRAINT categories_components_pkey;
       public            postgres    false    302            �           2606    57942    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    274            6           2606    90911 '   categories_components categories_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_unique UNIQUE (entity_id, component_id, field, component_type);
 Q   ALTER TABLE ONLY public.categories_components DROP CONSTRAINT categories_unique;
       public            postgres    false    302    302    302    302                       2606    58223 ^   components_characterisctics_characteristcics components_characterisctics_characteristcics_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_characterisctics_characteristcics
    ADD CONSTRAINT components_characterisctics_characteristcics_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_characterisctics_characteristcics DROP CONSTRAINT components_characterisctics_characteristcics_pkey;
       public            postgres    false    292            (           2606    58504 J   components_characterisctics_values components_characterisctics_values_pkey 
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
       public            postgres    false    264    264                       2606    57479    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    238            �           2606    57624 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    262            +           2606    58519 *   filters_components filters_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_components_pkey;
       public            postgres    false    300            %           2606    58451    filters filters_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_pkey;
       public            postgres    false    296            /           2606    90913 !   filters_components filters_unique 
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
       public            postgres    false    278            �           2606    90915 '   home_pages_components home_pages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_unique UNIQUE (entity_id, component_id, field, component_type);
 Q   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_unique;
       public            postgres    false    280    280    280    280            �           2606    57564    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    252                       2606    58136 4   products_category_links products_category_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_pkey;
       public            postgres    false    288                       2606    58140 6   products_category_links products_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_unique UNIQUE (product_id, category_id);
 `   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_unique;
       public            postgres    false    288    288                       2606    58237 ,   products_components products_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_components_pkey;
       public            postgres    false    294            
           2606    58107    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    286                       2606    58148 :   products_subcategory_links products_subcategory_links_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_pkey;
       public            postgres    false    290                       2606    58152 <   products_subcategory_links products_subcategory_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_unique UNIQUE (product_id, subcategory_id);
 f   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_unique;
       public            postgres    false    290    290            "           2606    90917 #   products_components products_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_unique UNIQUE (entity_id, component_id, field, component_type);
 M   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_unique;
       public            postgres    false    294    294    294    294            s           2606    57448 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
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
       public            postgres    false    258    258            o           2606    57439 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    230            ^           2606    57388 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    220            \           2606    57379 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    218            Z           2606    57370 (   strapi_migrations strapi_migrations_pkey 
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
       public            postgres    false    242            {           2606    57468 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
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
       public            postgres    false    260    260            w           2606    57459 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    234            `           2606    57397 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    222                       2606    58071 >   subcategories_category_links subcategories_category_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_pkey;
       public            postgres    false    284                       2606    58075 @   subcategories_category_links subcategories_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_unique UNIQUE (subcategory_id, category_id);
 j   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_unique;
       public            postgres    false    284    284            9           2606    90860 6   subcategories_components subcategories_components_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.subcategories_components
    ADD CONSTRAINT subcategories_components_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.subcategories_components DROP CONSTRAINT subcategories_components_pkey;
       public            postgres    false    304            �           2606    58062     subcategories subcategories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_pkey;
       public            postgres    false    282            =           2606    90919 -   subcategories_components subcategories_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_components
    ADD CONSTRAINT subcategories_unique UNIQUE (entity_id, component_id, field, component_type);
 W   ALTER TABLE ONLY public.subcategories_components DROP CONSTRAINT subcategories_unique;
       public            postgres    false    304    304    304    304            �           2606    57531 "   up_permissions up_permissions_pkey 
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
       public            postgres    false    266    266            �           2606    57498 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    240            �           2606    57500 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    240            �           2606    57496 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    240            a           1259    57407 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    224            �           1259    57574    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    254            �           1259    57575 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    254            �           1259    57578 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    254            d           1259    57408 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    224            i           1259    57429    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    228            l           1259    57430    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    228            e           1259    57418    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    226            �           1259    57586    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    256            �           1259    57587    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    256            �           1259    57590     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    256            �           1259    57591 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    256            h           1259    57419    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    226            0           1259    90835    categories_component_type_index    INDEX     k   CREATE INDEX categories_component_type_index ON public.categories_components USING btree (component_type);
 3   DROP INDEX public.categories_component_type_index;
       public            postgres    false    302            �           1259    57943    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    274            3           1259    90836    categories_entity_fk    INDEX     [   CREATE INDEX categories_entity_fk ON public.categories_components USING btree (entity_id);
 (   DROP INDEX public.categories_entity_fk;
       public            postgres    false    302            4           1259    90834    categories_field_index    INDEX     Y   CREATE INDEX categories_field_index ON public.categories_components USING btree (field);
 *   DROP INDEX public.categories_field_index;
       public            postgres    false    302            �           1259    57944    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    274            }           1259    57486    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
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
       public            postgres    false    262            �           1259    57487    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    238            )           1259    58521    filters_component_type_index    INDEX     e   CREATE INDEX filters_component_type_index ON public.filters_components USING btree (component_type);
 0   DROP INDEX public.filters_component_type_index;
       public            postgres    false    300            #           1259    58452    filters_created_by_id_fk    INDEX     U   CREATE INDEX filters_created_by_id_fk ON public.filters USING btree (created_by_id);
 ,   DROP INDEX public.filters_created_by_id_fk;
       public            postgres    false    296            ,           1259    58522    filters_entity_fk    INDEX     U   CREATE INDEX filters_entity_fk ON public.filters_components USING btree (entity_id);
 %   DROP INDEX public.filters_entity_fk;
       public            postgres    false    300            -           1259    58520    filters_field_index    INDEX     S   CREATE INDEX filters_field_index ON public.filters_components USING btree (field);
 '   DROP INDEX public.filters_field_index;
       public            postgres    false    300            &           1259    58453    filters_updated_by_id_fk    INDEX     U   CREATE INDEX filters_updated_by_id_fk ON public.filters USING btree (updated_by_id);
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
       public            postgres    false    252                       1259    58137    products_category_links_fk    INDEX     d   CREATE INDEX products_category_links_fk ON public.products_category_links USING btree (product_id);
 .   DROP INDEX public.products_category_links_fk;
       public            postgres    false    288                       1259    58138    products_category_links_inv_fk    INDEX     i   CREATE INDEX products_category_links_inv_fk ON public.products_category_links USING btree (category_id);
 2   DROP INDEX public.products_category_links_inv_fk;
       public            postgres    false    288                       1259    58141 $   products_category_links_order_inv_fk    INDEX     q   CREATE INDEX products_category_links_order_inv_fk ON public.products_category_links USING btree (product_order);
 8   DROP INDEX public.products_category_links_order_inv_fk;
       public            postgres    false    288                       1259    58239    products_component_type_index    INDEX     g   CREATE INDEX products_component_type_index ON public.products_components USING btree (component_type);
 1   DROP INDEX public.products_component_type_index;
       public            postgres    false    294                       1259    58108    products_created_by_id_fk    INDEX     W   CREATE INDEX products_created_by_id_fk ON public.products USING btree (created_by_id);
 -   DROP INDEX public.products_created_by_id_fk;
       public            postgres    false    286                       1259    58240    products_entity_fk    INDEX     W   CREATE INDEX products_entity_fk ON public.products_components USING btree (entity_id);
 &   DROP INDEX public.products_entity_fk;
       public            postgres    false    294                        1259    58238    products_field_index    INDEX     U   CREATE INDEX products_field_index ON public.products_components USING btree (field);
 (   DROP INDEX public.products_field_index;
       public            postgres    false    294                       1259    58149    products_subcategory_links_fk    INDEX     j   CREATE INDEX products_subcategory_links_fk ON public.products_subcategory_links USING btree (product_id);
 1   DROP INDEX public.products_subcategory_links_fk;
       public            postgres    false    290                       1259    58150 !   products_subcategory_links_inv_fk    INDEX     r   CREATE INDEX products_subcategory_links_inv_fk ON public.products_subcategory_links USING btree (subcategory_id);
 5   DROP INDEX public.products_subcategory_links_inv_fk;
       public            postgres    false    290                       1259    58153 '   products_subcategory_links_order_inv_fk    INDEX     w   CREATE INDEX products_subcategory_links_order_inv_fk ON public.products_subcategory_links USING btree (product_order);
 ;   DROP INDEX public.products_subcategory_links_order_inv_fk;
       public            postgres    false    290                       1259    58109    products_updated_by_id_fk    INDEX     W   CREATE INDEX products_updated_by_id_fk ON public.products USING btree (updated_by_id);
 -   DROP INDEX public.products_updated_by_id_fk;
       public            postgres    false    286            q           1259    57449 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    232            �           1259    57599 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    258            �           1259    57600 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    258            �           1259    57603 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    258            t           1259    57450 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    232            m           1259    57440 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    230            p           1259    57441 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
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
       public            postgres    false    242            y           1259    57469 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    236            �           1259    57611 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    260            �           1259    57612 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    260            �           1259    57615 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    260            |           1259    57470 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    236            u           1259    57460 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    234            x           1259    57461 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    234                       1259    58072    subcategories_category_links_fk    INDEX     r   CREATE INDEX subcategories_category_links_fk ON public.subcategories_category_links USING btree (subcategory_id);
 3   DROP INDEX public.subcategories_category_links_fk;
       public            postgres    false    284                       1259    58073 #   subcategories_category_links_inv_fk    INDEX     s   CREATE INDEX subcategories_category_links_inv_fk ON public.subcategories_category_links USING btree (category_id);
 7   DROP INDEX public.subcategories_category_links_inv_fk;
       public            postgres    false    284                       1259    58076 )   subcategories_category_links_order_inv_fk    INDEX        CREATE INDEX subcategories_category_links_order_inv_fk ON public.subcategories_category_links USING btree (subcategory_order);
 =   DROP INDEX public.subcategories_category_links_order_inv_fk;
       public            postgres    false    284            7           1259    90862 "   subcategories_component_type_index    INDEX     q   CREATE INDEX subcategories_component_type_index ON public.subcategories_components USING btree (component_type);
 6   DROP INDEX public.subcategories_component_type_index;
       public            postgres    false    304            �           1259    58063    subcategories_created_by_id_fk    INDEX     a   CREATE INDEX subcategories_created_by_id_fk ON public.subcategories USING btree (created_by_id);
 2   DROP INDEX public.subcategories_created_by_id_fk;
       public            postgres    false    282            :           1259    90863    subcategories_entity_fk    INDEX     a   CREATE INDEX subcategories_entity_fk ON public.subcategories_components USING btree (entity_id);
 +   DROP INDEX public.subcategories_entity_fk;
       public            postgres    false    304            ;           1259    90861    subcategories_field_index    INDEX     _   CREATE INDEX subcategories_field_index ON public.subcategories_components USING btree (field);
 -   DROP INDEX public.subcategories_field_index;
       public            postgres    false    304                        1259    58064    subcategories_updated_by_id_fk    INDEX     a   CREATE INDEX subcategories_updated_by_id_fk ON public.subcategories USING btree (updated_by_id);
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
       public            postgres    false    250            �           1259    57481    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    238            �           1259    57485    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    238            �           1259    57480    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    238            �           1259    57483    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    238            �           1259    57484    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    238            �           1259    57482    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    238            �           1259    57501    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    240            �           1259    57647    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    266            �           1259    57648 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    266            �           1259    57651 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    266            �           1259    57502    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    240            >           2606    57688 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    226    4967    224            \           2606    57838 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    224    4963    254            ]           2606    57843 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    228    254    4971            ?           2606    57693 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    4967    224    226            B           2606    57708 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    226    228    4967            C           2606    57713 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    228    4967    226            @           2606    57698 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    226    4967    226            ^           2606    57848 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    256    4967    226            _           2606    57853 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    4971    228    256            A           2606    57703 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    4967    226    226            o           2606    57945 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    226    4967    274            �           2606    90839 *   categories_components categories_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_entity_fk FOREIGN KEY (entity_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.categories_components DROP CONSTRAINT categories_entity_fk;
       public          postgres    false    302    5102    274            p           2606    57950 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    274    4967    226            L           2606    57758    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    238    4967    226            e           2606    57883 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    238    264    4991            f           2606    57888 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    5005    264    240            d           2606    57878 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    238    262    4991            M           2606    57763    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    4967    238    226                       2606    58454     filters filters_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_created_by_id_fk;
       public          postgres    false    4967    226    296            �           2606    58525 $   filters_components filters_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_entity_fk FOREIGN KEY (entity_id) REFERENCES public.filters(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_entity_fk;
       public          postgres    false    296    300    5157            �           2606    58459     filters filters_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_updated_by_id_fk;
       public          postgres    false    226    4967    296            q           2606    58021 &   home_pages home_pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_created_by_id_fk;
       public          postgres    false    4967    226    278            s           2606    58031 *   home_pages_components home_pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_entity_fk;
       public          postgres    false    5108    278    280            r           2606    58026 &   home_pages home_pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_updated_by_id_fk;
       public          postgres    false    278    226    4967            Z           2606    57828 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    4967    252    226            [           2606    57833 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    226    252    4967            z           2606    58154 2   products_category_links products_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_fk;
       public          postgres    false    288    286    5130            {           2606    58159 6   products_category_links products_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_inv_fk;
       public          postgres    false    274    5102    288            x           2606    58110 "   products products_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_created_by_id_fk;
       public          postgres    false    286    226    4967            ~           2606    58243 &   products_components products_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_entity_fk FOREIGN KEY (entity_id) REFERENCES public.products(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_entity_fk;
       public          postgres    false    5130    286    294            |           2606    58164 8   products_subcategory_links products_subcategory_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_fk;
       public          postgres    false    286    5130    290            }           2606    58169 <   products_subcategory_links products_subcategory_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_inv_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_inv_fk;
       public          postgres    false    282    5119    290            y           2606    58115 "   products products_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_updated_by_id_fk;
       public          postgres    false    226    4967    286            F           2606    57728 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    232    4967    226            `           2606    57858 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    232    258    4979            a           2606    57863 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    258    4975    230            G           2606    57733 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    226    4967    232            D           2606    57718 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    4967    230    226            E           2606    57723 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    230    4967    226            R           2606    57788 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    4967    226    244            i           2606    57903 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    244    5013    268            j           2606    57908 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    268    242    5009            S           2606    57793 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    244    226    4967            P           2606    57778 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    4967    226    242            Q           2606    57783 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    242    226    4967            J           2606    57748 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    226    4967    236            b           2606    57868 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    260    4987    236            c           2606    57873 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    4983    234    260            K           2606    57753 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    226    4967    236            H           2606    57738 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    234    4967    226            I           2606    57743 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    226    234    4967            v           2606    58087 <   subcategories_category_links subcategories_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_fk;
       public          postgres    false    5119    284    282            w           2606    58092 @   subcategories_category_links subcategories_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_inv_fk;
       public          postgres    false    284    5102    274            t           2606    58077 ,   subcategories subcategories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_created_by_id_fk;
       public          postgres    false    282    4967    226            �           2606    90866 0   subcategories_components subcategories_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_components
    ADD CONSTRAINT subcategories_entity_fk FOREIGN KEY (entity_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.subcategories_components DROP CONSTRAINT subcategories_entity_fk;
       public          postgres    false    282    304    5119            u           2606    58082 ,   subcategories subcategories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_updated_by_id_fk;
       public          postgres    false    282    226    4967            T           2606    57798 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    4967    246    226            k           2606    57913 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    270    246    5017            l           2606    57918 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    248    270    5021            U           2606    57803 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    4967    226    246            V           2606    57808 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    248    226    4967            W           2606    57813 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    248    4967    226            X           2606    57818 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    250    226    4967            m           2606    57923 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    272    250    5025            n           2606    57928 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    272    5021    248            Y           2606    57823 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    4967    250    226            N           2606    57768 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    4967    226    240            g           2606    57893 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    240    5005    266            h           2606    57898 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    5005    266    240            O           2606    57773 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    226    4967    240               �  x��Z�n�H>'O��Ft�4?1ZiwO3s �Ic@���F���`���.��h����KR_�WSvS�Ǽ��C]TI�4*�n��w��S�����r�u����8���=���Gq��_>�r[nZ���Q��\�\e�\��G�fH�Vu��j:E �P�H �C���}��G!Ȫ����@���BbN���m����H ���$پ�i�n��T�#B�  �{s�!a��9�?0��Tt�q)ٻӌc�cV���IN�ߩ���2yT���լ�~8��Ӫ��֪��m�W�v�Fn�orUd�&����2٫�w�O����9�T3<ks^�&��-�s��v���!�}�i
T���U�;>6U�6_qWx����]u��!��&���8�ևvһ�.&��"S����"��0sX�*���c���k�����G&����(qZ�J�@��N>'] ��U��)m��V��@,Q|<i�3�����!/�I�B�DՇ��������p�D�DOB��l�#=BB���=)J���9��� 6Ɔ��d�0_�8,H�&[g�ŵ� ��L��W�*B`�G�g���"q!�{��h��ﱫL�l�$!	<~��4��pa��hy�.��T/"�28�y��E�c�dGd�ÿ�7t�m��u���"y�<�+8ɖ"��	.�&�sR�*ۮ��ɝ��N���h�@6�l�S��YX:�����U�xf� �E�$�	w���G�lQ:�;�E��|�(��1[>���(߻߽�I�S����d�!�C��jG�-I�����l��˅��d9�L�r3/p"�I��J���o$��zɎF6�l"Dt.��e�ďC�|�\,��H�8�O�!�	�zIf�e���U��!��3�Q�\0ͿȹM���/��R���d��z+S����η]�A�c'MU��#�;E/X�N!��f��iqȀ0`�hA69��x0^�����*UCb@���)$[`�f��f!MU��7�v�(>]�+=��c��1��V�&)��8+ �h�ѐ>FA���C?�#�9	�l�ِF@��Dz���&C�zIH�S�UFC���[B�����LW��=m�cռ:𰨀�,p�ٛ�	 ,���}��Oo� ��	��,a]n��!/:�?lv���X��㎜��,�	j�tz��^u��>�����8�?|��{y��!�MO�������څ(ڭ�i���Mo�-|����Xf?U{����8��N0>T�=�q�C������"�jz��!D�Q�:�U�ƪU���]1��&Sm��u��N��W_��AI_�*r����Qy�� ~��C�QuBo����)/P�)���V�{3�&�Z�n�ҙ^ �à!w��y���"매>g��s��E~���{6�	�7��5
H�E�VY8�,���F=���^K��-W�x���B����΀a,�~�Q,�ﬗ[�/m�����^���W���>��ń���hs�d7��m��ǂ���n_���,��|B�?��e����拕����8x�0ج�͕%��&Oՙ�y�WW�;�?zJ�$�/y��i�<?� �?e~thV��}�o5��ha�T7f��Yi5����ayVV��K����R�4�*��wj��G�~qnoo�(;      :   �  x�%�ٍ$1C��`�m�2�Ǳd5Z�KO����~HK����Yhk����9X[�p\�z�g�gђ�FK�83��.4�y����&��L�k2�^�����q��v�h�L:� ��a5L^�����B��@ވk!��Y�d1b�E2G��!Y�hq��Z�pdY~5�}m)Z$r,E�B�g�E#�6�b��h��c%Z\� Z< Z;+Z:��-�V_9��-�V�e���h9�g%Z.�X���^���1�V��V�.k�*�Ԃh���&F���h��k-Z�Y�V�96���p����PL���P!��c�F�Lۈ։��D�¬�'*�ڈփy6��b�V�Ʊe�`C�-C�'���m?%�������.����>��wq�]a��{*je�����Z�E�S��jh7>�^�U��\�����2�Ì�٥�'�O��Q���ki���I�=�CўO�lkp	�I���>?����u�o���\|k�lqp��Q���?���          �   x�u��n� @g���l�Jm�]�d�r�s������!A����{H��:��"��y�qs-�P�o����4����z���L()R�L"�_�S��S��� z8��0������W�շu��Ce*�T��l��eu��	^���fM6�,�	�A����kQ_5\�FuL���$,S����iOy���=��?�lM�����]�4O2�}�         �   x�3�LL�����!0�!=713G/9?�S�(Q��@%;���3�%15���7-��4-�ĥ4<�3���+#�¿�M��(7T/�")Ҩ�=%+�4jd	g�2202�50�50T02�22�25׳46�)������ ��+�      <      x�3�4�@�=... �      N   @  x���MN�0���)r�X�؎���D(R��$]��J���.�T$"����1ͦ-t��7�'�O�
�{�a�_��{���}6~9np�WpP1�1H�)�c���w2q:e)���	���|V�M�*�dM^YY�"�Wl����ӏtu����RNT>�F�~}� ��Nhf,�$2N%Ljs�U$����̀���hD@�jv�7u(|���~I�a�<����'���θп�40k.֕H����MU��2.���̚bz{��+��~pD����$' B|B��!?�	�u`�v ��Q^7��ha����I      j   $   x�3�4�4�,N���M-ILI,Iq8c��b���� ��      `   p   x�}�1@@D��O�b�]�
�+�Z"Qj8��B��od)�ɼ�M�0c�/5)S)�X�9a�{ܖ�+vi�qJK�2�`��u����>G:Kp����ĉ���2e�0�U      f   U   x�3�44�04U���2�44�041�9/,���b���;.�s�p^�d4]�pa'�)��^��1�47P���ˌ�L��qqq ��"u      P   �   x��OK
1]���lI����s�΀�Pе���(��^nd���^��%y��WH\r�tT].�}M�=�!y��p��H;`���,���I�0G̓�#�K;�d�b��6�L�{"�w�p����1!�<w�;�E���ω2��p� ��Br�*�?&��I�OЈQz�.����ݪ�      *   .  x�ݚ�n�F���S��Y��~�X�hS�EEO~,m��%7m� I��@N���{zZ�M�
�uW�-��K2��-�g�3R��]�D��J�D`l�T�%T�s;������o�A@�Hq=��3����͏[�w��Ɵ���Wswz~����ls�3��]dʒ$7<U��:��7��Sgn�b�pэg��<.��`���8���ű�����f����#!���Y��7��������!;X?\~���l�����n|��!������A�za�#R Z��jG)T��S@s���d��E�x{�!�u��*_��F���XI@�OdZU�s�Q'���z�,�Y�xg<D�^NZ���(&cH����Z.*Z2�{����l�F��j�Et�sGu��4���``0��Ȅ�	�H`�'9��k���xFߚ�zo���l�]]�u��wL���ӽ�4%&���nZ�^�gi������0C�l�s{uOv0=a
1ʽ�.;����`j2H �<&�!)Q2%�ǥ��0�$���us�5�H�K�aQ����̊ ��df��̊0&z�y�|�=��y��T)D���B�*���
�y����t � 1A#(�XR��4`l��!��`&��Gbu�]tB���z��Xd}i�)&��$a'$�P�p�Y�%�}��Wgx�]e�2�eq����W��
I���H�TC[�?���H�(���u�
�A
~r�O�-h�}����a/'�5HIj"��ڱ�]��]�����"Vj�:��.%|�\<*~)�(�o�w7��7����u��'�}���8Q,���ڍk��Hx�t57�m<}�ݗ�TkbO4�N:�4�W���צf��-��� ]���� ����� {d
�h�.�~zoA�]�+"�b��G�i�n��0��&�oX��V+����#ˑi�ʴNh�袷>��#��!�+�,A=AG; Í@J�N�A����=8EJ︃���W懙yRjިmۀ��`��yp9%)72Iܾ��LVm;T�R���gۯ2� Hkѳ�@�[V��ҖkWe�$�O�w�����	VH+���ۤ�����g�w���Ň�Z����|5�F嘨����U��U���m�@�y�Z�����N���kRx��)w�Uҫ
�g�5�=���P5t�uՆQE�jӮ@�m���BLw�*�ip��DX)(L��^�T� >H)�F�Pa$��;H��R�'vM��4C�h��@ʟ���c��?s��G)�M��WH#�ԩ m���	�@�0� EpT��yY�n�}y���0*�$f������&9$�����^��[$5��^c���=�Ԛ��,�N�IE��ӡZ6Q�}���lj��gN�м�>��B����
=�Ԛ|�i'(�J��$��H��W!��vG"���$�>�>Y����D7/l�?[�+�߼r�?����l�ښ˩ɓ8��ĸ�Lu��p��������]H�遨�����( ���
�u�߮c��������.J4'��D�u�u}S ]~$8ƴp)��Ym�8 ��(�I�F3�*�w4{�������<      D      x������ � �      B   �   x���K� ��e1��Vq-�X�Ƥ�8��V�i�t$�����Ǿ���-���C���A!�|6�՝�^4<�u�*�C�	��!�J�pnU�dڥ�t�wS2g����l=��m/��ޭ�y�<O��,���U�F�q忦5�2觝����p�q��q}I[���RB����      d   �   x�m���0E��,P�v�x�)�9� ������و��V=Yzzz���O���C�#K��C= ��I�u��8!��]_��E~o��|����}l�ۮ�^"C��.\����E�2������+��� Q�r5Ъ��J]�'�1�RmK�      h   X   x���A
� Dѵ9�4F�e�� (tel�ߡ���90NG[Mw_�tO��������&9*Q�w�@ew�BG	�`u�,`�ۼ"}��Xn      R   =   x�3�4202�50�50R02�21�24�31�D7�2"s=4q�zS=C3NCNC�=... ���      T   #   x�3�4���|��ԒĔĒD�3Ə+F��� �@      8   ;   x�3�t�K��,�P�H���L��4202�50�50T02�22�26�32�%�D\1z\\\ ��      Z   �  x��R͊A>�<E{Spz������݈�LB�����]���x��YЃ������3�����@��K��u}?�d�u[��z.� �H�s(9O΃Z�n9��I*��R���l�>�+Q����M^dz����{��z��� Y�pǱ/Kdʣ����Ł��**����x� ��(�+%���|Jg�y #��%�L��xoyZ/�U�3\n�_ç���þS���Քj�#q�q�U;}ȗ��N>���Kb|����\>�t>�:� �&���<��@(!��B�@���O�9*�L�h�Dq"�R��s�o�:�s�Y]��Pބ5�סjx��݈աkxh�]��.LN�y�j�HQ?ƿ�6ޥ�i�_>{�x��+_��Mò��T�4��*�Ӻ+��廓��/��o�3��S�=�&"˲{j!�      \   -   x���  ��N1H9����m2��T�Nl՜�\�<|Sf      b   d   x���1
�0�YЦmz�.b�P
���q˚���"0���TQ˵4��-Ӣ��@���>/S�-���&���	|~�����O�]�y���ϴm�      ^   /   x�3�4A.3N# 4��4B.CNS����!�	�a����� ���      $      x������ � �      >      x������ � �      "      x������ � �            x��]�r�ƒ��<�Ο-���[��ɮ�$��xmWl�-�ł��� ���T�����O�s����)yj��f��1����Ơ��`��ϳb��E��f�L��U��yv���&+Uis�B��i2[f���
Uˬ�q����5j��8�ǧ����Er���iS���x����+5J�t�_Y�n�e⿏��IV���|6>')�a|8��y�Λwe�|w�)xS�P��^�{9��rP�̒&�je3�h�5�_\�g5�5Γ3��6�Ҭ�b��7�!�X	�"4���V��_X�I�e���.�:�z!��^\���p�&U�G U�_W��pZ���ϓ�6n�^ wP��~Ci).���W��UU�I�d`�tU�a���1��U ��J����oU�?]M���u4a��:��}��CZ��A��ժ�N����<���]׫�_WU8�����J@�;��pw]M��gU���B��x���
o��n7��\�놂���9M�$|�i����Ǐ�	��1���|:�Mw�H��QO�i@���P{��b���3�(����栤�����գ]H�wP:E��%S��[�Rl��!���q�A�S�@���a<�,T7�sWE�xMM�A�W{h(+�ٙ��^݅��y�<����H	Q?��@��I$'_"9��6DO��~�P�3�h\�BC�����S�K7(����]�F�ʎ����l��ztbN����*r�a����4U8L�KIQ5O��C�svZ���"^���?VY�jx�U�c�K2�l��U��,�8����3�v�izP�:L�E�\Q8@���s��&�;�=T``��^
Z� ��o�,�I/,�(���۷��CT��ҋ�Y�eїE_��M��-��^�(� ��7�a������*)�9�b�#�9��s�XB�%�XB�%D����%(7�s@��G6��:l�a����I�l~��?~#1�#уEvg"^ ����[�	���t���d6���f�G!!�\��v�ޣ?@ܲ��Ü>� ,�F?D� �K�.Q��l�, Y�

�!�-Pv� �;/BA):D�yY-��l��!tT�Â��3�>� 2�!C��C�����`h�ׇP�эyK�9r}�O�� �S� ����Ќ���]f����V:̇|����/3���!+�C!���SAP�V���\�% �W��^:l�){s>���v�Z�0.H��q�����^w!�z�x/����2�� ���j��
5�	}L)8!��)��D�@����m���?�~���p�}*�vt0Aэh �;��|�X7�e����1n�Sv+a�7�	�zw������>Me�P��;�Ilɧ�,��+�A�Gl� �g��!�� z���UY� e� dX	ѳB5��6�}ob�Z�� ����8ǢH�܅]i��p�	���~���.ˆ0Mx�X�9���b��H�Y^����h��U�sT�٫�8_c_�	W�u
Z؝ĥ^\�ť�g��sA�nIF���nϱ
�Őƕ�u��)�jGcNC� +0��NC�v�x���;��F�ĝ�2s�3���U��q�����y�����|MjM�mMY1/Ie��[%0����yR��7HQ#�+��)��0��	_�v���^R�5[��yi�o��/�%��oe2$Gg�L�3���j�T�ٺa�[mb�z�������+T����1�ϖ�������"�#��������A��׏d<���&p'%�X��v��̸�����nTF<�-_�<�!��C^q��|S jӗ�	0��L�I�sԌ�����hl2����ժhY ����������Ƹ`� ��?ʬxoTZU�%�KZ���UM��EVDT��}:�7�F�� .�S��%��߳�����FK�����[��AAa��_8�˳$���A.�sF�<y������ZZs���1�e�6c>S��=y���=5�E��Z��V3E��!_��n�(Q�;�8��5����R�G�-/�G.y_ڪ�Sw��"6�0�=r`wAҁ�`_����yVb�I�����~2��R l�'�_7�d����ͦLA3��ϭC!�����"��5o�lJ���`��f䗘$М6��L����.6���b��u������ٸ�R ۾����E���_<�RX�ϟ��������狐���Dc�¢%"�z���#v{��'�6��g�2Y����dM7N���Sf�t�2���r�G��4�N	$_�L	���Sa�N�Jh"r^F��V��U6�[��)�d[�P��QgM�;0E;/�6O��D��A	��ҮX/Q%��E6s`�7;*��X�|��G,�
1�uݔK��#��T�J䍕m��A��Jf�0ۻ��J2�{΃	�B0D�\��	���==W�XVex"5���\1�i폚�3���#�G�w���]up!����X�"D &{�a7��y���^����ը�"���(yԶ�T��/�V��5FK�y�>����s�˝�=���λ��6����pV�Ж	 jz��{^�G魮,�6K]�v�G����\F&��lx��t�����<#�l������S?gb��>h6��=1�� ����Q��Ǆ�n�6�j��֕�_���a9d�.��>��3��3>�xg���
��B6Oi��R�+�@��m�v��&����A;���d�Y'�f>l����=��L�Ϋ��=�y`-9o��H�F��n�:��H��]W"ݵ��(͖Iܜg�ޮo3kt��깛��Ȫ�L)v�	x���V���Sn��f��@l�H�i��@�����D���@��$��Q���A0\�hD�eJ-c��`�0�u�>�zI|�ǱVL6l�-�y��$2���7MH�*��G�#M��I#� 9"q�f	%!	=�$`H��7�ښ�GyH�!��|�<d��(��օ'�2�֚첹��@�Qd���)8�.��ц�b�M|��,�g����gO������J��"�e�5�����@�� ��g����&�nn���f�Z/si"�N�4.�J��� ��
�A�)�*�@ti�(@���7bc�ƻ��=�qӝ�66Ruo\�0b<l(�Q=�?�^���I)�؟N����Ӽ�1/ǳ*�7/����Y�������0]����������yK���l��H�&iֺ����!��J�l�4AI�8Z��k֞4�;�,�I���/�Փ��b����rĈ��c��V]���zG���uL����r�5#�͓l*ɦ��F�rGJ8�F/X�}���7X���Hh��Y8V�ڌ�<���a��0�lLrxbk�l{*�b���@֗�d4�+�3(�Zt�{�f_n;"JD�υ(�9ye�;�z�ķw��������w9N6��^��7i������t�=�[i�H�Y+���}`<_V�K�4�>so���g��x?���'|[s��\���%��j�&gx�<6�I�Y�2s/"5���G��U���C�6�ϼ	��/��G���*a}d&�>5�x�Ct����N�4�N���;=�Q��n�9۲s
xG�3Q=Ǻ��:�ech����d���k
c��vb��m�X�v��M罧7=����?�����l��O��� ����[\툩�Ҿ�)Ls���Ic��������� z���v�!�Km$���V������b�^qy^U�
Ⱛl�,�SE&���>�ۓח�6/�?ƧO��3�G��,#��5��|�;{0wv�g��� Z�O��e�ْ�SY]�韎�~�0�Uvz�b</���AF�g�NO�QֶT
���hk�Kդ�
ffY���@�o��Y�4�Ĝ&K�	৛�@R�/$y^^�p���T�?�=��3m̶
��G��\O��fPM^eDw�N�]��"&�__5*�n�r��B��������PU|JN�G�=x7�M�c:G��e�X�f�Ns�8�Sħ�ħ��6,�����wE��㴪�f�$wkz���n��g$�Ǆ�ӉC�&�9S��Q��ɛ�@�Ag&�v��k��}�!h�2�t�Tx�Q��x`�zBeE'�X� �dw�C�CM�� �  �S^��S�r v.�%:Za?:��4%;G>�$-�+ꃽ���Z&"\+�w\4�mz��H�� l�&~if��N��`��Gb3�Ap�Ý~UC<2toy�͘g�.�Q�}�W4�ܡ�Z۳e�ϼ��� �k�lC�ٲ�]S���2iZH���0�����-���ܥK���۱�/�臣�B�,����Ȍ��bH�2]/����)�Kz�Cf�W>�R�74�{Z4$Ia���7Gx���y?�y�ղ���Y�QUR]�������gE]h�����i�`�L�zg4��/
nc�Q��x��D�B��\)D������,�����)�i��i���*�b^�(�9)�h��Ay������������0�w2���B�,YJƵƆ e= AƦ�3����:��q���Я�[�yFw��;����!1���1C9�C:%���we�P�s/��覽�w/��⏔����`Cl��������q���~w���X�7�\� ձ>h������N.H�e=9Z�f\p�n*���/B?):LC�d�հb�uG��潅(�'+�Ֆe���֟������$*�ۚ�#_nCm�Y��"�2dŃ�p�1�LױY�IK>��Ň�j�n[WU8������8�g\�x_g]M��gU�x'��m���A��=��n�" �.׌+2Y�s�~H�=��O��N?�S�ˢ���v@�����ͧÏZ��d���z�Po)��PoD�d[ft�#��đ6���5���&O��[�P���S����\p�Y$��oMM�!
�o�l]s�w4=�)E�h�e��UT) o����B���O���C���A�'��Dz�'�xâ�'�)����r�����i��Оς��dS�Y��<�-�~,�:{Ա���z�����:��ғ93}j��DL\ �`t!�i��Q��]�C� �w�w�'��|���$);P,48���X04�S�%Z�����ӝ舖j r��� "M����]Jt)_�K�SE�b'�"&����/6�?8�O�XM`K$�l�ٟ|w	��
�+�7�K�}�D��,Y7�*�.�7a����k���]��wo�>U}��~��rS����x��y�+s���<%�}9K����%�+2���ٓ����ڢ���]3+�ֱa���g	�yM��<���x��<�e�@�!5
<pٜ�S�<�96㳲�hQCT9�_'ꢎh
꣔8/�s��U�:��Zl�7k볶~Y�.��`�|��T��Ҫ��yӢ�UV�ʫ��R�W�	9����\eψ�Q@�� o��'�n<U�-]�::���w;]U%=����e��_^t��r�m�qH�6]t�t��S�`5˳�~Ѣ���A�ԣ��Y�ĘcT�R}���;۰���E֔-Z%~���g���T���cN�r�ї����QTPߩ[K�f�x��|�6�J)
)ƚ�@69<��z���5����������g�h7�6rt�p飔��G7�b:�֢w�!���
�m��E3.��qʟ�����>R�H��'������}���Y�/��k�ã�P���б�
��<��TO'�wkc}~ u&Z�4���Ѩ��tl�۞W%u��� [�3r�$�1z�(��cV[Uh�_�;�r���B�0�TT#]л��$�*#=�1�+�]y������S�٨Y$���Q^��G%�LF�ʪ�%g��ӊ�����_-�X�w��,����]���7�&�&n�F��s�DyD@vԔ#:Bf?�\*����1��˫�߿�W���A�~���^�+F��IqQO�5�����TO�������Y��j�6�ً4-�E3�3��s���e���k�Ȗ|��'�H.s.��:�w���d���9��Yz1�wA�}VxW^M���Qҧ����?�?${��g^2�L����c_���'bTSq�2���X��"{�<��ኳ�;�Y-#��|�ԃX$�g�b�n[���R�V�B�"�~Ǐ3ǂ�N��N�G����ј���柴��|�˺g�O���<v������ ۶b0r/���ix�hZ�z�C���U{�Ջ��ה��6[�?�~�+�y���,��k�(/d8����8���a�}����� ګ^���Z���M�u�5$�b7� �]-�v��5����&�?��;�{��&3�{Pf%�d��Tp+�J���A\�ı�4��9�fm�W|UtTG%'�8#��-�� �I���e�v ��*���*ȕA�����	��V�~��s��&<DO�Z�RRD���PH������l�e� �&=��xMw?~�1�!>����B0�n(Ʃ5� ��~��$|�gU�F �t�ڌ*�[E)=DU�\D[QQ4��Jvd���F�{?���PPx�_��8�W�	 ���F�kA��@R|x�n��n2����=uO���;��ؕ��d���Pv�sdaj������O�M
n_�|���M��΀��	��;�e��&	|#"ˆPU��G��s�n��@���GW�	#m�V�R崣wb��ヴ�Д����W�d�4_��[%ۯ������J��[��._QT#kv�����V ���r��4Y
C�&�<��L*7��D3M/�I���z���IŐ�Dl��66vn=����MK{�iI��u�ׇЍ�s$���ʱ�A2q�a��9��q�v��ۈ�؝��r1�hy�ȭdAU�>��O"?��d����8��x�`�e@��^;��"h�@�������K���d嵏li/ؒ<�����`�7�\� Lڙ]���h%�� ϒ��0ǒ���(���/(Nc�䧣�vf�aY�͜�`U�%��G(��Jq��B|P�^?��	���A����;�����G\�ąI\���5$݂0е�j� ;��b(��x�B���5�zd=�U�T�Y�k>1�ڮ_s�d��e/���7P6bzWP~l��5�e��A�X��	�}�3��N�ٽ��|�Վޟ?�>��9��Ε�m��w3wx�|��t�}�����x]iq���,� ��=�D���+����B�*��Rk�[%ߡ��i�T���&�������5HIx�`뢘v%:�茺mepC:�y�C}����'�@u�U��D{��-���j��c�Ju7���``�Cʎ���KT�_��t�$8��I}yN(ZR/�������GO���C\��Ȁ<`Y�V��*��3��c[Z��|�U|r�o��c�받}4y�H�d�wĠ|3�����ӓ���ǉG?U�7����u��W_�?�#�<         w  x��K��6����H�f�v�3���C*�\�=��X	I�P$C�c�S��˧��� ��Dql�n��n� ����?E������bt�ރ������9��Ĕ�x�{��!�R����v�C�����A�x$��e.�����qL+I(�7	ӌQ��=Ь����o���Pя��Q����Q�����W�yi���r�ms2�u��,]Y�^���Z�L��
�+����{Q�럖+� �O$K⪁ �P��/��@Aہ?��!Iϵ���l�"����B�彪��$�Z��Omۀ)�����M���n�E��~��#�s���~+N旽Q��g������ho�ԓ*�4�H=-%1Cɖ�/�;��8��Ǧ�Z�E�t����^J�5���U�?������w�^�����
hY?�j4�)��SXH���/���4K�~E	�,G��!�-�������.���>���I^��Tc�{�q�����v佨c2�$�{�-��z���R�r�����	:�F�]�b`�C1(����r
�F^G�2�:���O�<��d!�����&�&�4���TӾ:� �Fr��]���ڔ�ײ���d�1�YjƄ~��}���=ۅ�VdI��aE�`aX�ȰV�V��
hO$!���AFR�i���%c�]����|�d�f%��B!q�����M�wm(p����&�9q��^���KJ�����S4�5[��u9����fw;��N�Úy�g��5]�{����_�9^�?�*S�Iڥ蛊��E֮��Eſ"�]�t�M�t�����sq6��r�`���T7�p��G`>��uq�F	*�Z���%QX�у_����j5W�J5���*��A�S��w��A�Q�V�ƓS�U����\	��j�nQ�#�����K�\�{l��/��"=EC�v�U�������B�S��$,)g��S�rH(��r�衝��� ܑ�vPԮ��e�@刢^�����Bؔ�nd����}p5�	����?b�JG� G�0Xr��܍�.Z���Lߤi���W���زTM�.�'�(�
�� �rL։[��� C�%�u��ų�@��͜cp�a�wVZ���v&���f��X^�6�o��j�;[<oV7��#8,��6�R�5�a��"wnɹ%n�o�[)y�.�%'u�̬]�e���<��ZJ�x`�J��$��1��(	P���~Y���B�=����%��"��]4N�`d���`W�܎ ��v9�-�����hٽ=��"`P�{#��L xt�8{ٜ�\�=]�Y����Y�Yw���ߖ�����/H��6��r#_����5n�s^���.�}���D��$0��C�ܯ�]�ظ�W䄡0�%y����àT�O2"Z���p �M��d�i1
�9)kʡp#�b����f\"�w$��e���S��梐�=�'=����y>�<$G�h/
Z��Ơ���JS� qiZ�+"�#�#8��,	��
x�=5��I�-��YI2�"^Ǡ#��� �F��er�������EL�d��M�C�Α9G̧��-)����I�v���6�#<�u�l���?p����A��$�P������%���?�������
�֪�8�6�ԡ�F�]���=b�Xa���ӽ��{�����|���Z�Sk��?"����L��'�F�R1$~bDՏu���zI���B%��I��-�3��Uu"�̚U�4>�����(��O~���_�+@�TF�ug�xF�ki4�X`�QW��*����I���bU�nNI4g�f��$fg�y5(y�`�걆���L�_0��-\�:��
��6RMun4軩�
�4��z �w�s�Ϡ��Ϥ���&��`�w������!�sh^8op��L��)2{3�'a��~1�V�s�~ci�k滣r�Z��>;�{-"G���Uc���-��SMӡ���ST�;�����*-ʆ�~����+6J�� -k�.�۔�k���(��Qx����c���z�V�r�G���c��� &%�o�D���lƎ"�5������~��'�K;�@�D�����Y�������mV�}UΎ������~F{��4F�(��	�3󢡾��H�XqTS�`t��"J�T��̗_����R	[G�|�&EYu߮���]&�ד�ߴ%q�1h��T	EdZ$8id�ŰB!��6�.⬁�q��m�e���ݿ�W��9�J�Ԃ��H�{�6��<�X37#��;r�b`M4+/�,n��CJk5�Zx��g6^_���uռ��Q'�����g	�k���P�,!�`kW�X��-Y���h����Qg��m�Zxׯ
_�	��_��iЄɻ|�O���RZգ?(նIi�����2�G��uix��tp�τA�z�����Y��SP/��S���	}f�y�3����ϴho֎۵��QlĜ�2Zsx����� �9���4�
zܻ%�wK�5m3���ip�m�N�aNW���us��0�3\au`�V��4�a� �^x
L3����i�sF�hMԌ��s�q�9����Ͱ�P�4�pΜ�hQ���lu�h�I���v�/�/gŗf��,[�$f�_4�C~����xJ�(���7c3(Y�)��j�̯�ԟ]Yh��Y;u8Z���Ϩ��B��75�0鵹�J���a*uI����Ua��*f�j�4fͣ��er�CÂI_u&�X�L�Ʃ5fL5&Ӧ�(����n��'P��_�vS�k�JMؠ��r�-R9:�+� gW�I5����>���K� Z�Z�j�`�E*+�a��}"}��������7﾿}�����ۛ�ۻ��_�����7��M���n�����ͻ�����op����~x�����6w�            x������ � �      0      x������ � �      H      x������ � �      .      x������ � �      (      x������ � �      @      x������ � �      &      x������ � �            x������ � �      V   R  x����N�0���)�X@����/�π:�T��R+EI՘���ZĄ�Љ� UBy��7�I���3��+]�s��X����l`]��L˙���tF�8K��a���-�#*��$X��Ĉ�
s���S̥p��ѥKx,��f=��jǍ�ݬ�M�6d5�(�C�~�+DCM�fJ��W�(V"XX�5|ê�Di�\�3|X�V���K�O�zR|�>�93Ҟ�؍�A�M9��Q�ŷ�w~�%��ĝ��Y��퇲�X�����l�,���դu�K(��8�UM��V2�M�X���`�`Q���לbBwR���Lb�oi���p�]�����      X   !   x�3�4�4�4�2�4�F\f �Ә+F��� 4�u      l   $   x�3�4�4�,N���M-ILI,Iq8c��b���� ��      2   g  x����n� ��zހ�?m���m����L� f���F��l��.1����AD��ۡQZ���uY�S�)�:'��Ŕg8�0I)�FeE0?��OBo�r�'T��n�M:�al���E[d�e����y0�|���P��|�kc�oR�ek��(�������M�b%�I�>]+�I?�+���"�z��2�od��8��^6�~V�ҋ�b)łc�c�w4��l1������.�G��-�U�J�������ң����yJ
����Y0�I6�n8^�\�|�N�?����ki>ѵj�[�.�%X���ߦ`;D�3������g.nx�Y�����ƪ�a	O)d�Na��3���ˡ�(I�/=�Y      J   `   x�%���0��w�T���٥����Ö�`9txqb�qa!:7N�`_�ŋ[���fR�h;�S�n���hә�)9��n��"��֦+u˾���r�      4   �   x�u�A
�0E��)���(���Z<@7��i��締�B�z������%�؇"u�k���4$�[|J�2P��P}�d�S�p��4�	��|�ح��8��:�s�����%���,.��rvx�_0�n?��h�_@�E7      6      x������ � �      L      x������ � �      ,      x������ � �      F      x������ � �     