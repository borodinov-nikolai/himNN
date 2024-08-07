PGDMP  	    '                |            himnn    16.2    16.2 J   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    57363    himnn    DATABASE     y   CREATE DATABASE himnn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
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
       public          postgres    false    224            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
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
       public          postgres    false    254            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
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
       public          postgres    false    228            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
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
       public          postgres    false    226            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
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
       public          postgres    false    256            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    255                       1259    57937 
   categories    TABLE     Y  CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    href character varying(255),
    description text
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
       public          postgres    false    302            �           0    0    categories_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.categories_components_id_seq OWNED BY public.categories_components.id;
          public          postgres    false    301                       1259    57936    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    274            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
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
       public          postgres    false    292            �           0    0 3   components_characterisctics_characteristcics_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_characterisctics_characteristcics_id_seq OWNED BY public.components_characterisctics_characteristcics.id;
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
       public          postgres    false    298            �           0    0 )   components_characterisctics_values_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_characterisctics_values_id_seq OWNED BY public.components_characterisctics_values.id;
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
       public          postgres    false    276            �           0    0    components_seo_metadata_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_seo_metadata_id_seq OWNED BY public.components_seo_metadata.id;
          public          postgres    false    275            6           1259    100005    components_table_table_cells    TABLE     �   CREATE TABLE public.components_table_table_cells (
    id integer NOT NULL,
    text text,
    row_span integer,
    col_span integer
);
 0   DROP TABLE public.components_table_table_cells;
       public         heap    postgres    false            5           1259    100004 #   components_table_table_cells_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_table_table_cells_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_table_table_cells_id_seq;
       public          postgres    false    310            �           0    0 #   components_table_table_cells_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_table_table_cells_id_seq OWNED BY public.components_table_table_cells.id;
          public          postgres    false    309            2           1259    99951    components_table_table_rows    TABLE     M   CREATE TABLE public.components_table_table_rows (
    id integer NOT NULL
);
 /   DROP TABLE public.components_table_table_rows;
       public         heap    postgres    false            8           1259    100026 &   components_table_table_rows_components    TABLE     �   CREATE TABLE public.components_table_table_rows_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 :   DROP TABLE public.components_table_table_rows_components;
       public         heap    postgres    false            7           1259    100025 -   components_table_table_rows_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_table_table_rows_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.components_table_table_rows_components_id_seq;
       public          postgres    false    312            �           0    0 -   components_table_table_rows_components_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.components_table_table_rows_components_id_seq OWNED BY public.components_table_table_rows_components.id;
          public          postgres    false    311            1           1259    99950 "   components_table_table_rows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_table_table_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_table_table_rows_id_seq;
       public          postgres    false    306            �           0    0 "   components_table_table_rows_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_table_table_rows_id_seq OWNED BY public.components_table_table_rows.id;
          public          postgres    false    305            �            1259    57472    files    TABLE     �  CREATE TABLE public.files (
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
       public          postgres    false    264            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    263            �            1259    57471    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    238            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
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
       public          postgres    false    262            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
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
          public          postgres    false    289            <           1259    100218    products_tables_links    TABLE     �   CREATE TABLE public.products_tables_links (
    id integer NOT NULL,
    product_id integer,
    table_id integer,
    table_order double precision,
    product_order double precision
);
 )   DROP TABLE public.products_tables_links;
       public         heap    postgres    false            ;           1259    100217    products_tables_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_tables_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.products_tables_links_id_seq;
       public          postgres    false    316            �           0    0    products_tables_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.products_tables_links_id_seq OWNED BY public.products_tables_links.id;
          public          postgres    false    315            �            1259    57443    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
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
       public          postgres    false    284                        0    0 #   subcategories_category_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.subcategories_category_links_id_seq OWNED BY public.subcategories_category_links.id;
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
       public          postgres    false    304                       0    0    subcategories_components_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.subcategories_components_id_seq OWNED BY public.subcategories_components.id;
          public          postgres    false    303                       1259    58054    subcategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategories_id_seq;
       public          postgres    false    282                       0    0    subcategories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subcategories_id_seq OWNED BY public.subcategories.id;
          public          postgres    false    281            >           1259    100291    subcategories_tables_links    TABLE     �   CREATE TABLE public.subcategories_tables_links (
    id integer NOT NULL,
    subcategory_id integer,
    table_id integer,
    table_order double precision,
    subcategory_order double precision
);
 .   DROP TABLE public.subcategories_tables_links;
       public         heap    postgres    false            =           1259    100290 !   subcategories_tables_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategories_tables_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.subcategories_tables_links_id_seq;
       public          postgres    false    318                       0    0 !   subcategories_tables_links_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.subcategories_tables_links_id_seq OWNED BY public.subcategories_tables_links.id;
          public          postgres    false    317            4           1259    99972    tables    TABLE       CREATE TABLE public.tables (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.tables;
       public         heap    postgres    false            :           1259    100057    tables_components    TABLE     �   CREATE TABLE public.tables_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 %   DROP TABLE public.tables_components;
       public         heap    postgres    false            9           1259    100056    tables_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tables_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tables_components_id_seq;
       public          postgres    false    314                       0    0    tables_components_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tables_components_id_seq OWNED BY public.tables_components.id;
          public          postgres    false    313            3           1259    99971    tables_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tables_id_seq;
       public          postgres    false    308                       0    0    tables_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tables_id_seq OWNED BY public.tables.id;
          public          postgres    false    307            �            1259    57526    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
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
       public          postgres    false    246                       0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
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
       public          postgres    false    270                       0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
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
       public          postgres    false    248                       0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
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
       public          postgres    false    250            	           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
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
       public          postgres    false    272            
           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
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
       public          postgres    false    240                       0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
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
       public          postgres    false    266                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    265            S           2604    57402    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            b           2604    57571    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            U           2604    57424    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            T           2604    57413    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            c           2604    57583    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            l           2604    57940    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            z           2604    90829    categories_components id    DEFAULT     �   ALTER TABLE ONLY public.categories_components ALTER COLUMN id SET DEFAULT nextval('public.categories_components_id_seq'::regclass);
 G   ALTER TABLE public.categories_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    301    302            u           2604    58219 /   components_characterisctics_characteristcics id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_characteristcics ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_characteristcics_id_seq'::regclass);
 ^   ALTER TABLE public.components_characterisctics_characteristcics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    292    292            x           2604    58502 %   components_characterisctics_values id    DEFAULT     �   ALTER TABLE ONLY public.components_characterisctics_values ALTER COLUMN id SET DEFAULT nextval('public.components_characterisctics_values_id_seq'::regclass);
 T   ALTER TABLE public.components_characterisctics_values ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    297    298            m           2604    57991    components_seo_metadata id    DEFAULT     �   ALTER TABLE ONLY public.components_seo_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_seo_metadata_id_seq'::regclass);
 I   ALTER TABLE public.components_seo_metadata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276            ~           2604    100008    components_table_table_cells id    DEFAULT     �   ALTER TABLE ONLY public.components_table_table_cells ALTER COLUMN id SET DEFAULT nextval('public.components_table_table_cells_id_seq'::regclass);
 N   ALTER TABLE public.components_table_table_cells ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    309    310            |           2604    99954    components_table_table_rows id    DEFAULT     �   ALTER TABLE ONLY public.components_table_table_rows ALTER COLUMN id SET DEFAULT nextval('public.components_table_table_rows_id_seq'::regclass);
 M   ALTER TABLE public.components_table_table_rows ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    306    306                       2604    100029 )   components_table_table_rows_components id    DEFAULT     �   ALTER TABLE ONLY public.components_table_table_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_table_table_rows_components_id_seq'::regclass);
 X   ALTER TABLE public.components_table_table_rows_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    312    312            Z           2604    57475    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            g           2604    57632    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            f           2604    57620    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            w           2604    58447 
   filters id    DEFAULT     h   ALTER TABLE ONLY public.filters ALTER COLUMN id SET DEFAULT nextval('public.filters_id_seq'::regclass);
 9   ALTER TABLE public.filters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295    296            y           2604    58515    filters_components id    DEFAULT     ~   ALTER TABLE ONLY public.filters_components ALTER COLUMN id SET DEFAULT nextval('public.filters_components_id_seq'::regclass);
 D   ALTER TABLE public.filters_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299    300            n           2604    58002    home_pages id    DEFAULT     n   ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);
 <   ALTER TABLE public.home_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277    278            o           2604    58011    home_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);
 G   ALTER TABLE public.home_pages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280            a           2604    57560    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            r           2604    58105    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    286    286            s           2604    58134    products_category_links id    DEFAULT     �   ALTER TABLE ONLY public.products_category_links ALTER COLUMN id SET DEFAULT nextval('public.products_category_links_id_seq'::regclass);
 I   ALTER TABLE public.products_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    288    288            v           2604    58233    products_components id    DEFAULT     �   ALTER TABLE ONLY public.products_components ALTER COLUMN id SET DEFAULT nextval('public.products_components_id_seq'::regclass);
 E   ALTER TABLE public.products_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    294    294            t           2604    58146    products_subcategory_links id    DEFAULT     �   ALTER TABLE ONLY public.products_subcategory_links ALTER COLUMN id SET DEFAULT nextval('public.products_subcategory_links_id_seq'::regclass);
 L   ALTER TABLE public.products_subcategory_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    290    290            �           2604    100221    products_tables_links id    DEFAULT     �   ALTER TABLE ONLY public.products_tables_links ALTER COLUMN id SET DEFAULT nextval('public.products_tables_links_id_seq'::regclass);
 G   ALTER TABLE public.products_tables_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    316    315    316            W           2604    57446    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            d           2604    57596 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            V           2604    57435    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            Q           2604    57384    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            P           2604    57375    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            O           2604    57368    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            ]           2604    57518    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            i           2604    57656 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            \           2604    57507    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            Y           2604    57466 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            e           2604    57608 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            X           2604    57455    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            R           2604    57393    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            p           2604    58058    subcategories id    DEFAULT     t   ALTER TABLE ONLY public.subcategories ALTER COLUMN id SET DEFAULT nextval('public.subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    282    282            q           2604    58069    subcategories_category_links id    DEFAULT     �   ALTER TABLE ONLY public.subcategories_category_links ALTER COLUMN id SET DEFAULT nextval('public.subcategories_category_links_id_seq'::regclass);
 N   ALTER TABLE public.subcategories_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283    284            {           2604    90856    subcategories_components id    DEFAULT     �   ALTER TABLE ONLY public.subcategories_components ALTER COLUMN id SET DEFAULT nextval('public.subcategories_components_id_seq'::regclass);
 J   ALTER TABLE public.subcategories_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    303    304            �           2604    100294    subcategories_tables_links id    DEFAULT     �   ALTER TABLE ONLY public.subcategories_tables_links ALTER COLUMN id SET DEFAULT nextval('public.subcategories_tables_links_id_seq'::regclass);
 L   ALTER TABLE public.subcategories_tables_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    318    318            }           2604    99975 	   tables id    DEFAULT     f   ALTER TABLE ONLY public.tables ALTER COLUMN id SET DEFAULT nextval('public.tables_id_seq'::regclass);
 8   ALTER TABLE public.tables ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    308    308            �           2604    100060    tables_components id    DEFAULT     |   ALTER TABLE ONLY public.tables_components ALTER COLUMN id SET DEFAULT nextval('public.tables_components_id_seq'::regclass);
 C   ALTER TABLE public.tables_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    313    314            ^           2604    57529    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            j           2604    57668    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            _           2604    57538    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            `           2604    57549    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            k           2604    57680    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            [           2604    57492    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            h           2604    57644    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            t          0    57399    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    224   �#      �          0    57568    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    254   �*      x          0    57421    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    228    -      v          0    57410    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   �-      �          0    57580    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    256   �.      �          0    57937 
   categories 
   TABLE DATA           �   COPY public.categories (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, href, description) FROM stdin;
    public          postgres    false    274   �.      �          0    90826    categories_components 
   TABLE DATA           l   COPY public.categories_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    302   �5      �          0    58216 ,   components_characterisctics_characteristcics 
   TABLE DATA           W   COPY public.components_characterisctics_characteristcics (id, name, value) FROM stdin;
    public          postgres    false    292   �5      �          0    58499 "   components_characterisctics_values 
   TABLE DATA           G   COPY public.components_characterisctics_values (id, value) FROM stdin;
    public          postgres    false    298   f6      �          0    57988    components_seo_metadata 
   TABLE DATA           S   COPY public.components_seo_metadata (id, title, description, keywords) FROM stdin;
    public          postgres    false    276   �6      �          0    100005    components_table_table_cells 
   TABLE DATA           T   COPY public.components_table_table_cells (id, text, row_span, col_span) FROM stdin;
    public          postgres    false    310   �7      �          0    99951    components_table_table_rows 
   TABLE DATA           9   COPY public.components_table_table_rows (id) FROM stdin;
    public          postgres    false    306   k8      �          0    100026 &   components_table_table_rows_components 
   TABLE DATA           }   COPY public.components_table_table_rows_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    312   �8      �          0    57472    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    238   :      �          0    57629    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    264   y@      �          0    57617    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    262   �@      �          0    58444    filters 
   TABLE DATA           o   COPY public.filters (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    296   WA      �          0    58512    filters_components 
   TABLE DATA           i   COPY public.filters_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    300   �A      �          0    57999 
   home_pages 
   TABLE DATA           l   COPY public.home_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    278   eB      �          0    58008    home_pages_components 
   TABLE DATA           l   COPY public.home_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    280   �B      �          0    57557    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    252   �B      �          0    58102    products 
   TABLE DATA           �   COPY public.products (id, name, price, created_at, updated_at, published_at, created_by_id, updated_by_id, in_stock, price_units, description) FROM stdin;
    public          postgres    false    286   0C      �          0    58131    products_category_links 
   TABLE DATA           ]   COPY public.products_category_links (id, product_id, category_id, product_order) FROM stdin;
    public          postgres    false    288   kJ      �          0    58230    products_components 
   TABLE DATA           j   COPY public.products_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    294   �J      �          0    58143    products_subcategory_links 
   TABLE DATA           c   COPY public.products_subcategory_links (id, product_id, subcategory_id, product_order) FROM stdin;
    public          postgres    false    290   K      �          0    100218    products_tables_links 
   TABLE DATA           e   COPY public.products_tables_links (id, product_id, table_id, table_order, product_order) FROM stdin;
    public          postgres    false    316   \K      |          0    57443    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   yK      �          0    57593 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    258   �K      z          0    57432    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    230   �K      p          0    57381    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    220   �K      n          0    57372    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    218   Wj      l          0    57365    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    216   �v      �          0    57515    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    244   w      �          0    57653 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    268   (w      �          0    57504    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    242   Ew      �          0    57463 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    236   bw      �          0    57605 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    260   w      ~          0    57452    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    234   �w      r          0    57390    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    222   �w      �          0    58055    subcategories 
   TABLE DATA           �   COPY public.subcategories (id, name, href, created_at, updated_at, published_at, created_by_id, updated_by_id, description) FROM stdin;
    public          postgres    false    282   �w      �          0    58066    subcategories_category_links 
   TABLE DATA           j   COPY public.subcategories_category_links (id, subcategory_id, category_id, subcategory_order) FROM stdin;
    public          postgres    false    284   Y      �          0    90853    subcategories_components 
   TABLE DATA           o   COPY public.subcategories_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    304   �      �          0    100291    subcategories_tables_links 
   TABLE DATA           r   COPY public.subcategories_tables_links (id, subcategory_id, table_id, table_order, subcategory_order) FROM stdin;
    public          postgres    false    318   �      �          0    99972    tables 
   TABLE DATA           n   COPY public.tables (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    308   �      �          0    100057    tables_components 
   TABLE DATA           h   COPY public.tables_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    314   h�      �          0    57526    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    246   �      �          0    57665    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    270   ��      �          0    57535    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    248   �      �          0    57546    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    250   ��      �          0    57677    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    272         �          0    57489    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    240   ߃      �          0    57641    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    266   ��                 0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 273, true);
          public          postgres    false    223                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 273, true);
          public          postgres    false    253                       0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    227                       0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    225                       0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    255                       0    0    categories_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categories_components_id_seq', 2, true);
          public          postgres    false    301                       0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          postgres    false    273                       0    0 3   components_characterisctics_characteristcics_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_characterisctics_characteristcics_id_seq', 10, true);
          public          postgres    false    291                       0    0 )   components_characterisctics_values_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_characterisctics_values_id_seq', 7, true);
          public          postgres    false    297                       0    0    components_seo_metadata_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_seo_metadata_id_seq', 4, true);
          public          postgres    false    275                       0    0 #   components_table_table_cells_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_table_table_cells_id_seq', 55, true);
          public          postgres    false    309                       0    0 -   components_table_table_rows_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_table_table_rows_components_id_seq', 139, true);
          public          postgres    false    311                       0    0 "   components_table_table_rows_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_table_table_rows_id_seq', 15, true);
          public          postgres    false    305                       0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    263                       0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 14, true);
          public          postgres    false    237                       0    0    files_related_morphs_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 128, true);
          public          postgres    false    261                       0    0    filters_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.filters_components_id_seq', 13, true);
          public          postgres    false    299                       0    0    filters_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.filters_id_seq', 3, true);
          public          postgres    false    295                       0    0    home_pages_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_pages_components_id_seq', 5, true);
          public          postgres    false    279                        0    0    home_pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);
          public          postgres    false    277            !           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    251            "           0    0    products_category_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.products_category_links_id_seq', 9, true);
          public          postgres    false    287            #           0    0    products_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.products_components_id_seq', 120, true);
          public          postgres    false    293            $           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 5, true);
          public          postgres    false    285            %           0    0 !   products_subcategory_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.products_subcategory_links_id_seq', 11, true);
          public          postgres    false    289            &           0    0    products_tables_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.products_tables_links_id_seq', 3, true);
          public          postgres    false    315            '           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    231            (           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    257            )           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    229            *           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 45, true);
          public          postgres    false    219            +           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 68, true);
          public          postgres    false    217            ,           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    215            -           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    243            .           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    267            /           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    241            0           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    235            1           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    259            2           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    233            3           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    221            4           0    0 #   subcategories_category_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.subcategories_category_links_id_seq', 7, true);
          public          postgres    false    283            5           0    0    subcategories_components_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.subcategories_components_id_seq', 5, true);
          public          postgres    false    303            6           0    0    subcategories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.subcategories_id_seq', 4, true);
          public          postgres    false    281            7           0    0 !   subcategories_tables_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.subcategories_tables_links_id_seq', 2, true);
          public          postgres    false    317            8           0    0    tables_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tables_components_id_seq', 47, true);
          public          postgres    false    313            9           0    0    tables_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tables_id_seq', 2, true);
          public          postgres    false    307            :           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 31, true);
          public          postgres    false    245            ;           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 31, true);
          public          postgres    false    269            <           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    247            =           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    249            >           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    271            ?           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    239            @           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    265            �           2606    57406 (   admin_permissions admin_permissions_pkey 
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
       public            postgres    false    254    254            �           2606    57428    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    228            �           2606    57417    admin_users admin_users_pkey 
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
       public            postgres    false    256    256            \           2606    90833 0   categories_components categories_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.categories_components DROP CONSTRAINT categories_components_pkey;
       public            postgres    false    302                       2606    57942    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    274            `           2606    100314 '   categories_components categories_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_unique UNIQUE (entity_id, component_id, field, component_type);
 Q   ALTER TABLE ONLY public.categories_components DROP CONSTRAINT categories_unique;
       public            postgres    false    302    302    302    302            E           2606    58223 ^   components_characterisctics_characteristcics components_characterisctics_characteristcics_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_characterisctics_characteristcics
    ADD CONSTRAINT components_characterisctics_characteristcics_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_characterisctics_characteristcics DROP CONSTRAINT components_characterisctics_characteristcics_pkey;
       public            postgres    false    292            R           2606    58504 J   components_characterisctics_values components_characterisctics_values_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_characterisctics_values
    ADD CONSTRAINT components_characterisctics_values_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_characterisctics_values DROP CONSTRAINT components_characterisctics_values_pkey;
       public            postgres    false    298                       2606    57995 4   components_seo_metadata components_seo_metadata_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_seo_metadata
    ADD CONSTRAINT components_seo_metadata_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_seo_metadata DROP CONSTRAINT components_seo_metadata_pkey;
       public            postgres    false    276            o           2606    100012 >   components_table_table_cells components_table_table_cells_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_table_table_cells
    ADD CONSTRAINT components_table_table_cells_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_table_table_cells DROP CONSTRAINT components_table_table_cells_pkey;
       public            postgres    false    310            r           2606    100033 R   components_table_table_rows_components components_table_table_rows_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_table_table_rows_components
    ADD CONSTRAINT components_table_table_rows_components_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.components_table_table_rows_components DROP CONSTRAINT components_table_table_rows_components_pkey;
       public            postgres    false    312            i           2606    99958 <   components_table_table_rows components_table_table_rows_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_table_table_rows
    ADD CONSTRAINT components_table_table_rows_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_table_table_rows DROP CONSTRAINT components_table_table_rows_pkey;
       public            postgres    false    306            v           2606    100326 I   components_table_table_rows_components components_table_table_rows_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_table_table_rows_components
    ADD CONSTRAINT components_table_table_rows_unique UNIQUE (entity_id, component_id, field, component_type);
 s   ALTER TABLE ONLY public.components_table_table_rows_components DROP CONSTRAINT components_table_table_rows_unique;
       public            postgres    false    312    312    312    312            �           2606    57634 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    264            �           2606    57638 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    264    264            �           2606    57479    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    238            �           2606    57624 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    262            U           2606    58519 *   filters_components filters_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_components_pkey;
       public            postgres    false    300            O           2606    58451    filters filters_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_pkey;
       public            postgres    false    296            Y           2606    100316 !   filters_components filters_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_unique;
       public            postgres    false    300    300    300    300            "           2606    58015 0   home_pages_components home_pages_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_components_pkey;
       public            postgres    false    280                       2606    58004    home_pages home_pages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_pkey;
       public            postgres    false    278            &           2606    100318 '   home_pages_components home_pages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_unique UNIQUE (entity_id, component_id, field, component_type);
 Q   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_unique;
       public            postgres    false    280    280    280    280            �           2606    57564    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    252            :           2606    58136 4   products_category_links products_category_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_pkey;
       public            postgres    false    288            <           2606    58140 6   products_category_links products_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_unique UNIQUE (product_id, category_id);
 `   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_unique;
       public            postgres    false    288    288            H           2606    58237 ,   products_components products_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_components_pkey;
       public            postgres    false    294            4           2606    58107    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    286            A           2606    58148 :   products_subcategory_links products_subcategory_links_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_pkey;
       public            postgres    false    290            C           2606    58152 <   products_subcategory_links products_subcategory_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_unique UNIQUE (product_id, subcategory_id);
 f   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_unique;
       public            postgres    false    290    290            �           2606    100223 0   products_tables_links products_tables_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.products_tables_links
    ADD CONSTRAINT products_tables_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.products_tables_links DROP CONSTRAINT products_tables_links_pkey;
       public            postgres    false    316            �           2606    100227 2   products_tables_links products_tables_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.products_tables_links
    ADD CONSTRAINT products_tables_links_unique UNIQUE (product_id, table_id);
 \   ALTER TABLE ONLY public.products_tables_links DROP CONSTRAINT products_tables_links_unique;
       public            postgres    false    316    316            L           2606    100320 #   products_components products_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_unique UNIQUE (entity_id, component_id, field, component_type);
 M   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_unique;
       public            postgres    false    294    294    294    294            �           2606    57448 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
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
       public            postgres    false    258    258            �           2606    57439 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    230            �           2606    57388 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    220            �           2606    57379 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    218            �           2606    57370 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    216            �           2606    57522 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            postgres    false    244                       2606    57658 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            postgres    false    268                       2606    57662 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            postgres    false    268    268            �           2606    57511 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            postgres    false    242            �           2606    57468 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
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
       public            postgres    false    260    260            �           2606    57459 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    234            �           2606    57397 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    222            /           2606    58071 >   subcategories_category_links subcategories_category_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_pkey;
       public            postgres    false    284            1           2606    58075 @   subcategories_category_links subcategories_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_unique UNIQUE (subcategory_id, category_id);
 j   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_unique;
       public            postgres    false    284    284            c           2606    90860 6   subcategories_components subcategories_components_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.subcategories_components
    ADD CONSTRAINT subcategories_components_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.subcategories_components DROP CONSTRAINT subcategories_components_pkey;
       public            postgres    false    304            )           2606    58062     subcategories subcategories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_pkey;
       public            postgres    false    282            �           2606    100296 :   subcategories_tables_links subcategories_tables_links_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.subcategories_tables_links
    ADD CONSTRAINT subcategories_tables_links_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.subcategories_tables_links DROP CONSTRAINT subcategories_tables_links_pkey;
       public            postgres    false    318            �           2606    100300 <   subcategories_tables_links subcategories_tables_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_tables_links
    ADD CONSTRAINT subcategories_tables_links_unique UNIQUE (subcategory_id, table_id);
 f   ALTER TABLE ONLY public.subcategories_tables_links DROP CONSTRAINT subcategories_tables_links_unique;
       public            postgres    false    318    318            g           2606    100322 -   subcategories_components subcategories_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_components
    ADD CONSTRAINT subcategories_unique UNIQUE (entity_id, component_id, field, component_type);
 W   ALTER TABLE ONLY public.subcategories_components DROP CONSTRAINT subcategories_unique;
       public            postgres    false    304    304    304    304            y           2606    100064 (   tables_components tables_components_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tables_components
    ADD CONSTRAINT tables_components_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tables_components DROP CONSTRAINT tables_components_pkey;
       public            postgres    false    314            l           2606    99979    tables tables_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tables DROP CONSTRAINT tables_pkey;
       public            postgres    false    308            }           2606    100324    tables_components tables_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.tables_components
    ADD CONSTRAINT tables_unique UNIQUE (entity_id, component_id, field, component_type);
 I   ALTER TABLE ONLY public.tables_components DROP CONSTRAINT tables_unique;
       public            postgres    false    314    314    314    314            �           2606    57531 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    246                       2606    57670 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    270                       2606    57674 :   up_permissions_role_links up_permissions_role_links_unique 
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
       public            postgres    false    250                       2606    57682 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    272                       2606    57686 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    272    272            �           2606    57646 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    266                        2606    57650 >   upload_folders_parent_links upload_folders_parent_links_unique 
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
       public            postgres    false    240            �           1259    57407 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    224            �           1259    57574    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    254            �           1259    57575 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    254            �           1259    57578 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    254            �           1259    57408 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    224            �           1259    57429    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    228            �           1259    57430    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    228            �           1259    57418    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    226            �           1259    57586    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    256            �           1259    57587    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    256            �           1259    57590     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    256            �           1259    57591 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    256            �           1259    57419    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    226            Z           1259    90835    categories_component_type_index    INDEX     k   CREATE INDEX categories_component_type_index ON public.categories_components USING btree (component_type);
 3   DROP INDEX public.categories_component_type_index;
       public            postgres    false    302                       1259    57943    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    274            ]           1259    90836    categories_entity_fk    INDEX     [   CREATE INDEX categories_entity_fk ON public.categories_components USING btree (entity_id);
 (   DROP INDEX public.categories_entity_fk;
       public            postgres    false    302            ^           1259    90834    categories_field_index    INDEX     Y   CREATE INDEX categories_field_index ON public.categories_components USING btree (field);
 *   DROP INDEX public.categories_field_index;
       public            postgres    false    302                       1259    57944    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    274            p           1259    100035 0   components_table_table_rows_component_type_index    INDEX     �   CREATE INDEX components_table_table_rows_component_type_index ON public.components_table_table_rows_components USING btree (component_type);
 D   DROP INDEX public.components_table_table_rows_component_type_index;
       public            postgres    false    312            s           1259    100036 %   components_table_table_rows_entity_fk    INDEX     }   CREATE INDEX components_table_table_rows_entity_fk ON public.components_table_table_rows_components USING btree (entity_id);
 9   DROP INDEX public.components_table_table_rows_entity_fk;
       public            postgres    false    312            t           1259    100034 '   components_table_table_rows_field_index    INDEX     {   CREATE INDEX components_table_table_rows_field_index ON public.components_table_table_rows_components USING btree (field);
 ;   DROP INDEX public.components_table_table_rows_field_index;
       public            postgres    false    312            �           1259    57486    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
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
       public            postgres    false    238            S           1259    58521    filters_component_type_index    INDEX     e   CREATE INDEX filters_component_type_index ON public.filters_components USING btree (component_type);
 0   DROP INDEX public.filters_component_type_index;
       public            postgres    false    300            M           1259    58452    filters_created_by_id_fk    INDEX     U   CREATE INDEX filters_created_by_id_fk ON public.filters USING btree (created_by_id);
 ,   DROP INDEX public.filters_created_by_id_fk;
       public            postgres    false    296            V           1259    58522    filters_entity_fk    INDEX     U   CREATE INDEX filters_entity_fk ON public.filters_components USING btree (entity_id);
 %   DROP INDEX public.filters_entity_fk;
       public            postgres    false    300            W           1259    58520    filters_field_index    INDEX     S   CREATE INDEX filters_field_index ON public.filters_components USING btree (field);
 '   DROP INDEX public.filters_field_index;
       public            postgres    false    300            P           1259    58453    filters_updated_by_id_fk    INDEX     U   CREATE INDEX filters_updated_by_id_fk ON public.filters USING btree (updated_by_id);
 ,   DROP INDEX public.filters_updated_by_id_fk;
       public            postgres    false    296                        1259    58017    home_pages_component_type_index    INDEX     k   CREATE INDEX home_pages_component_type_index ON public.home_pages_components USING btree (component_type);
 3   DROP INDEX public.home_pages_component_type_index;
       public            postgres    false    280                       1259    58005    home_pages_created_by_id_fk    INDEX     [   CREATE INDEX home_pages_created_by_id_fk ON public.home_pages USING btree (created_by_id);
 /   DROP INDEX public.home_pages_created_by_id_fk;
       public            postgres    false    278            #           1259    58018    home_pages_entity_fk    INDEX     [   CREATE INDEX home_pages_entity_fk ON public.home_pages_components USING btree (entity_id);
 (   DROP INDEX public.home_pages_entity_fk;
       public            postgres    false    280            $           1259    58016    home_pages_field_index    INDEX     Y   CREATE INDEX home_pages_field_index ON public.home_pages_components USING btree (field);
 *   DROP INDEX public.home_pages_field_index;
       public            postgres    false    280                       1259    58006    home_pages_updated_by_id_fk    INDEX     [   CREATE INDEX home_pages_updated_by_id_fk ON public.home_pages USING btree (updated_by_id);
 /   DROP INDEX public.home_pages_updated_by_id_fk;
       public            postgres    false    278            �           1259    57565    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    252            �           1259    57566    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    252            6           1259    58137    products_category_links_fk    INDEX     d   CREATE INDEX products_category_links_fk ON public.products_category_links USING btree (product_id);
 .   DROP INDEX public.products_category_links_fk;
       public            postgres    false    288            7           1259    58138    products_category_links_inv_fk    INDEX     i   CREATE INDEX products_category_links_inv_fk ON public.products_category_links USING btree (category_id);
 2   DROP INDEX public.products_category_links_inv_fk;
       public            postgres    false    288            8           1259    58141 $   products_category_links_order_inv_fk    INDEX     q   CREATE INDEX products_category_links_order_inv_fk ON public.products_category_links USING btree (product_order);
 8   DROP INDEX public.products_category_links_order_inv_fk;
       public            postgres    false    288            F           1259    58239    products_component_type_index    INDEX     g   CREATE INDEX products_component_type_index ON public.products_components USING btree (component_type);
 1   DROP INDEX public.products_component_type_index;
       public            postgres    false    294            2           1259    58108    products_created_by_id_fk    INDEX     W   CREATE INDEX products_created_by_id_fk ON public.products USING btree (created_by_id);
 -   DROP INDEX public.products_created_by_id_fk;
       public            postgres    false    286            I           1259    58240    products_entity_fk    INDEX     W   CREATE INDEX products_entity_fk ON public.products_components USING btree (entity_id);
 &   DROP INDEX public.products_entity_fk;
       public            postgres    false    294            J           1259    58238    products_field_index    INDEX     U   CREATE INDEX products_field_index ON public.products_components USING btree (field);
 (   DROP INDEX public.products_field_index;
       public            postgres    false    294            =           1259    58149    products_subcategory_links_fk    INDEX     j   CREATE INDEX products_subcategory_links_fk ON public.products_subcategory_links USING btree (product_id);
 1   DROP INDEX public.products_subcategory_links_fk;
       public            postgres    false    290            >           1259    58150 !   products_subcategory_links_inv_fk    INDEX     r   CREATE INDEX products_subcategory_links_inv_fk ON public.products_subcategory_links USING btree (subcategory_id);
 5   DROP INDEX public.products_subcategory_links_inv_fk;
       public            postgres    false    290            ?           1259    58153 '   products_subcategory_links_order_inv_fk    INDEX     w   CREATE INDEX products_subcategory_links_order_inv_fk ON public.products_subcategory_links USING btree (product_order);
 ;   DROP INDEX public.products_subcategory_links_order_inv_fk;
       public            postgres    false    290            ~           1259    100224    products_tables_links_fk    INDEX     `   CREATE INDEX products_tables_links_fk ON public.products_tables_links USING btree (product_id);
 ,   DROP INDEX public.products_tables_links_fk;
       public            postgres    false    316                       1259    100225    products_tables_links_inv_fk    INDEX     b   CREATE INDEX products_tables_links_inv_fk ON public.products_tables_links USING btree (table_id);
 0   DROP INDEX public.products_tables_links_inv_fk;
       public            postgres    false    316            �           1259    100228    products_tables_links_order_fk    INDEX     g   CREATE INDEX products_tables_links_order_fk ON public.products_tables_links USING btree (table_order);
 2   DROP INDEX public.products_tables_links_order_fk;
       public            postgres    false    316            �           1259    100229 "   products_tables_links_order_inv_fk    INDEX     m   CREATE INDEX products_tables_links_order_inv_fk ON public.products_tables_links USING btree (product_order);
 6   DROP INDEX public.products_tables_links_order_inv_fk;
       public            postgres    false    316            5           1259    58109    products_updated_by_id_fk    INDEX     W   CREATE INDEX products_updated_by_id_fk ON public.products USING btree (updated_by_id);
 -   DROP INDEX public.products_updated_by_id_fk;
       public            postgres    false    286            �           1259    57449 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    232            �           1259    57599 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    258            �           1259    57600 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    258            �           1259    57603 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    258            �           1259    57450 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    232            �           1259    57440 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    230            �           1259    57441 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    230            �           1259    57523 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            postgres    false    244                       1259    57659 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            postgres    false    268                       1259    57660 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            postgres    false    268                       1259    57663 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            postgres    false    268            �           1259    57524 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            postgres    false    244            �           1259    57512     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            postgres    false    242            �           1259    57513     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            postgres    false    242            �           1259    57469 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    236            �           1259    57611 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    260            �           1259    57612 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    260            �           1259    57615 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    260            �           1259    57470 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    236            �           1259    57460 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    234            �           1259    57461 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    234            +           1259    58072    subcategories_category_links_fk    INDEX     r   CREATE INDEX subcategories_category_links_fk ON public.subcategories_category_links USING btree (subcategory_id);
 3   DROP INDEX public.subcategories_category_links_fk;
       public            postgres    false    284            ,           1259    58073 #   subcategories_category_links_inv_fk    INDEX     s   CREATE INDEX subcategories_category_links_inv_fk ON public.subcategories_category_links USING btree (category_id);
 7   DROP INDEX public.subcategories_category_links_inv_fk;
       public            postgres    false    284            -           1259    58076 )   subcategories_category_links_order_inv_fk    INDEX        CREATE INDEX subcategories_category_links_order_inv_fk ON public.subcategories_category_links USING btree (subcategory_order);
 =   DROP INDEX public.subcategories_category_links_order_inv_fk;
       public            postgres    false    284            a           1259    90862 "   subcategories_component_type_index    INDEX     q   CREATE INDEX subcategories_component_type_index ON public.subcategories_components USING btree (component_type);
 6   DROP INDEX public.subcategories_component_type_index;
       public            postgres    false    304            '           1259    58063    subcategories_created_by_id_fk    INDEX     a   CREATE INDEX subcategories_created_by_id_fk ON public.subcategories USING btree (created_by_id);
 2   DROP INDEX public.subcategories_created_by_id_fk;
       public            postgres    false    282            d           1259    90863    subcategories_entity_fk    INDEX     a   CREATE INDEX subcategories_entity_fk ON public.subcategories_components USING btree (entity_id);
 +   DROP INDEX public.subcategories_entity_fk;
       public            postgres    false    304            e           1259    90861    subcategories_field_index    INDEX     _   CREATE INDEX subcategories_field_index ON public.subcategories_components USING btree (field);
 -   DROP INDEX public.subcategories_field_index;
       public            postgres    false    304            �           1259    100297    subcategories_tables_links_fk    INDEX     n   CREATE INDEX subcategories_tables_links_fk ON public.subcategories_tables_links USING btree (subcategory_id);
 1   DROP INDEX public.subcategories_tables_links_fk;
       public            postgres    false    318            �           1259    100298 !   subcategories_tables_links_inv_fk    INDEX     l   CREATE INDEX subcategories_tables_links_inv_fk ON public.subcategories_tables_links USING btree (table_id);
 5   DROP INDEX public.subcategories_tables_links_inv_fk;
       public            postgres    false    318            �           1259    100301 #   subcategories_tables_links_order_fk    INDEX     q   CREATE INDEX subcategories_tables_links_order_fk ON public.subcategories_tables_links USING btree (table_order);
 7   DROP INDEX public.subcategories_tables_links_order_fk;
       public            postgres    false    318            �           1259    100302 '   subcategories_tables_links_order_inv_fk    INDEX     {   CREATE INDEX subcategories_tables_links_order_inv_fk ON public.subcategories_tables_links USING btree (subcategory_order);
 ;   DROP INDEX public.subcategories_tables_links_order_inv_fk;
       public            postgres    false    318            *           1259    58064    subcategories_updated_by_id_fk    INDEX     a   CREATE INDEX subcategories_updated_by_id_fk ON public.subcategories USING btree (updated_by_id);
 2   DROP INDEX public.subcategories_updated_by_id_fk;
       public            postgres    false    282            w           1259    100066    tables_component_type_index    INDEX     c   CREATE INDEX tables_component_type_index ON public.tables_components USING btree (component_type);
 /   DROP INDEX public.tables_component_type_index;
       public            postgres    false    314            j           1259    99980    tables_created_by_id_fk    INDEX     S   CREATE INDEX tables_created_by_id_fk ON public.tables USING btree (created_by_id);
 +   DROP INDEX public.tables_created_by_id_fk;
       public            postgres    false    308            z           1259    100067    tables_entity_fk    INDEX     S   CREATE INDEX tables_entity_fk ON public.tables_components USING btree (entity_id);
 $   DROP INDEX public.tables_entity_fk;
       public            postgres    false    314            {           1259    100065    tables_field_index    INDEX     Q   CREATE INDEX tables_field_index ON public.tables_components USING btree (field);
 &   DROP INDEX public.tables_field_index;
       public            postgres    false    314            m           1259    99981    tables_updated_by_id_fk    INDEX     S   CREATE INDEX tables_updated_by_id_fk ON public.tables USING btree (updated_by_id);
 +   DROP INDEX public.tables_updated_by_id_fk;
       public            postgres    false    308            �           1259    57532    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    246                       1259    57671    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    270            	           1259    57672     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    270            
           1259    57675 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    270            �           1259    57533    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    246            �           1259    57543    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    248            �           1259    57544    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    248            �           1259    57554    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    250                       1259    57683    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    272                       1259    57684    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    272                       1259    57687     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
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
       public            postgres    false    240            �           2606    57688 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    224    226    5009            �           2606    57838 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    224    254    5005            �           2606    57843 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    254    5013    228            �           2606    57693 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    5009    226    224            �           2606    57708 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    226    228    5009            �           2606    57713 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    5009    228    226            �           2606    57698 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    5009    226    226            �           2606    57848 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    226    256    5009            �           2606    57853 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    228    5013    256            �           2606    57703 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    5009    226    226            �           2606    57945 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    5009    274    226            �           2606    90839 *   categories_components categories_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_entity_fk FOREIGN KEY (entity_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.categories_components DROP CONSTRAINT categories_entity_fk;
       public          postgres    false    302    5144    274            �           2606    57950 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    226    5009    274            �           2606    100039 L   components_table_table_rows_components components_table_table_rows_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_table_table_rows_components
    ADD CONSTRAINT components_table_table_rows_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_table_table_rows(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.components_table_table_rows_components DROP CONSTRAINT components_table_table_rows_entity_fk;
       public          postgres    false    312    5225    306            �           2606    57758    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    226    5009    238            �           2606    57883 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    5033    238    264            �           2606    57888 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    240    264    5047            �           2606    57878 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    5033    262    238            �           2606    57763    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    226    5009    238            �           2606    58454     filters filters_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_created_by_id_fk;
       public          postgres    false    296    5009    226            �           2606    58525 $   filters_components filters_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters_components
    ADD CONSTRAINT filters_entity_fk FOREIGN KEY (entity_id) REFERENCES public.filters(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.filters_components DROP CONSTRAINT filters_entity_fk;
       public          postgres    false    296    5199    300            �           2606    58459     filters filters_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_updated_by_id_fk;
       public          postgres    false    226    5009    296            �           2606    58021 &   home_pages home_pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_created_by_id_fk;
       public          postgres    false    5009    226    278            �           2606    58031 *   home_pages_components home_pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_entity_fk;
       public          postgres    false    280    278    5150            �           2606    58026 &   home_pages home_pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_updated_by_id_fk;
       public          postgres    false    5009    226    278            �           2606    57828 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    226    5009    252            �           2606    57833 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    226    252    5009            �           2606    58154 2   products_category_links products_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_fk;
       public          postgres    false    286    288    5172            �           2606    58159 6   products_category_links products_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_links
    ADD CONSTRAINT products_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.products_category_links DROP CONSTRAINT products_category_links_inv_fk;
       public          postgres    false    5144    288    274            �           2606    58110 "   products products_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_created_by_id_fk;
       public          postgres    false    286    5009    226            �           2606    58243 &   products_components products_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_entity_fk FOREIGN KEY (entity_id) REFERENCES public.products(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_entity_fk;
       public          postgres    false    294    286    5172            �           2606    58164 8   products_subcategory_links products_subcategory_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_fk;
       public          postgres    false    286    290    5172            �           2606    58169 <   products_subcategory_links products_subcategory_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_subcategory_links
    ADD CONSTRAINT products_subcategory_links_inv_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.products_subcategory_links DROP CONSTRAINT products_subcategory_links_inv_fk;
       public          postgres    false    282    290    5161            �           2606    100230 .   products_tables_links products_tables_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_tables_links
    ADD CONSTRAINT products_tables_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.products_tables_links DROP CONSTRAINT products_tables_links_fk;
       public          postgres    false    5172    286    316            �           2606    100235 2   products_tables_links products_tables_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_tables_links
    ADD CONSTRAINT products_tables_links_inv_fk FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.products_tables_links DROP CONSTRAINT products_tables_links_inv_fk;
       public          postgres    false    5228    316    308            �           2606    58115 "   products products_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_updated_by_id_fk;
       public          postgres    false    5009    286    226            �           2606    57728 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    5009    232    226            �           2606    57858 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    232    5021    258            �           2606    57863 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    258    5017    230            �           2606    57733 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    232    226    5009            �           2606    57718 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    5009    226    230            �           2606    57723 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    230    226    5009            �           2606    57788 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    5009    244    226            �           2606    57903 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    268    244    5055            �           2606    57908 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    268    5051    242            �           2606    57793 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    226    244    5009            �           2606    57778 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    5009    226    242            �           2606    57783 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    226    5009    242            �           2606    57748 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    236    226    5009            �           2606    57868 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    236    5029    260            �           2606    57873 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    234    5025    260            �           2606    57753 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    226    5009    236            �           2606    57738 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    234    226    5009            �           2606    57743 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    226    234    5009            �           2606    58087 <   subcategories_category_links subcategories_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_fk;
       public          postgres    false    284    5161    282            �           2606    58092 @   subcategories_category_links subcategories_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_category_links
    ADD CONSTRAINT subcategories_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.subcategories_category_links DROP CONSTRAINT subcategories_category_links_inv_fk;
       public          postgres    false    274    5144    284            �           2606    58077 ,   subcategories subcategories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_created_by_id_fk;
       public          postgres    false    282    5009    226            �           2606    90866 0   subcategories_components subcategories_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_components
    ADD CONSTRAINT subcategories_entity_fk FOREIGN KEY (entity_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.subcategories_components DROP CONSTRAINT subcategories_entity_fk;
       public          postgres    false    5161    304    282            �           2606    100303 8   subcategories_tables_links subcategories_tables_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_tables_links
    ADD CONSTRAINT subcategories_tables_links_fk FOREIGN KEY (subcategory_id) REFERENCES public.subcategories(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.subcategories_tables_links DROP CONSTRAINT subcategories_tables_links_fk;
       public          postgres    false    282    5161    318            �           2606    100308 <   subcategories_tables_links subcategories_tables_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories_tables_links
    ADD CONSTRAINT subcategories_tables_links_inv_fk FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.subcategories_tables_links DROP CONSTRAINT subcategories_tables_links_inv_fk;
       public          postgres    false    5228    308    318            �           2606    58082 ,   subcategories subcategories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_updated_by_id_fk;
       public          postgres    false    226    282    5009            �           2606    99982    tables tables_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.tables DROP CONSTRAINT tables_created_by_id_fk;
       public          postgres    false    5009    308    226            �           2606    100070 "   tables_components tables_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tables_components
    ADD CONSTRAINT tables_entity_fk FOREIGN KEY (entity_id) REFERENCES public.tables(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.tables_components DROP CONSTRAINT tables_entity_fk;
       public          postgres    false    314    308    5228            �           2606    99987    tables tables_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.tables DROP CONSTRAINT tables_updated_by_id_fk;
       public          postgres    false    226    308    5009            �           2606    57798 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    246    226    5009            �           2606    57913 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    270    5059    246            �           2606    57918 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    270    248    5063            �           2606    57803 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    5009    226    246            �           2606    57808 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    226    5009    248            �           2606    57813 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    248    5009    226            �           2606    57818 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    250    226    5009            �           2606    57923 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    250    5067    272            �           2606    57928 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    248    272    5063            �           2606    57823 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    5009    250    226            �           2606    57768 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    240    226    5009            �           2606    57893 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    240    5047    266            �           2606    57898 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    266    5047    240            �           2606    57773 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    226    240    5009            t   2  x��ZKo�H>'�"�y�h�n׽�V;���9�$�1 ��D����`��۔]ģ�"�����zS����c^��.�$s�d7?��������ۍ�z|튵��<{<���E��?~�t��rӪ|�w�Z?���"��2�3�6CҶ�k�T�S��!���`^G=�'AV���wE��{
�)��_�E^n.s v 3h�d��nޮ�T�
#B�� �>��0�Ht�O� ��̥:]o���j7�0
�q�����(>�"^�Se��&e�G�Ь��8ʬ�UM��U���6�J�j���\=���U|�e�#e�U�?�Vj��EQ7�s��f���y����n���_#�O�Qe���l�NSؠ�ﾨ�����
����P|T��
�����87�'.+�Z�ZH�␻����L���3Aj���t!m^>jݽ֪]��R��"��iU*��Vr�8	(N,:C���R#S�"y�v�X���i�'�������&y�bUV�edG{|���	$b=	��NjQ0�#$���NQ"�'M�{m� {�����P_�_�,���[O�ť� �O=��*B`�Gg�g���"v��{���'��!X�g���"N���E�C�������g���S���eЖ���E�c�xGd�C�����Sۺ�l�"~?�8�;E<&2�aM��LU�^��;��p+q��<p3y�&ga��.1)5�pd��������IZ���3n���٬t�v惬�G�ެ|b��l���Q�3>{o�f�:��)U9���� �E�?UՆ\,8��e���U�B����d�9�s�y����d�!��7S	�D2����hd��$�GǂiZ��y`?��%�1���OHG��F�|Yx vQ��}$?�f0����۸i�?K�/��B��j�D]R�뮟 貓��m	����H���Fp3��t�9R`8��&)/ʋtgW��JՐ�97s
�f�^�"�DH������ny�"�
���Q��bc6�&V�&)��8 �hp3ѐ��F��!�K�Д�L6��l� #�ZZ"�MBr�!�zHHLSFUFC���[������LG�����cռ:p1� ?�Y�'O�|\ ah_�}z�
";�p���������fwL�\ƾ��i�d��N�P�
��K����9��� �<'�N��Þ��;��0pش[�pX߂C�_���au�NZ~�����>���w̳���Z��'�����ȋ}�q�E������A�E�^����5��>>����ZU9]����/�j�&����6�?�jm��V�M�������o[z�P|\:!�X����Q����5���Ԧ��|�?5�a8�5�f��k��|������5��wɽ~ �t��;��ŋ�`�=�8肐H,]���ٿvZ��]���_���B_�~��^>�I�� �
��T��U��1�ݛ��ݞ�̜_Pr��pDH�G��N�mr�i�	B�>�ć�Y��(*&�+7�Ww�(�X^�>�R&�ݤy9�%d7�E�䁇�n�ҙ�Oq�*��nG߲�a!�:G�;��,?s��;Ϸ�8��s�$�Û3�۫���s�Ǥ�c/��gi޶b�(��((
 �TGE�=mrbn��b!XI�]) @qP a�ae���c'�c�2��m�	�ǎ~"9c(om,oE�I晳{��:2|^~�tc�!�$>�zJ�$�T��]��ȳ��<��-�eU����1^�M�� ����0Իt`�\P���"����Z�5jQ|�ޯ�����:�IK      �     x�%�[�$1C��bF�;����:�N�iE%��-��~HK����Yhk����9X[�p;��k�g�?c$3܍��qf-f9S��23�M��1�r��=�P�5�-�3��A� ��E��P��~�ӰyQ<�_OG��y#��H>�k!�/�È����8�Ň�Ԣ�#�������h�ȱ-
ɝ����D�Ars�Ţ>+�⠸��� ���fEKG�iD�@��[!�k�D�B��h٨c%Z�Z�����E˃�Eˋ�3�V��'Z9��E�@S�U�����֢U���h5�k-Z-����)Z]�$Z*D�vLوցi�:1�h]��y�"��h=�k#Z/6mUl[�*6�ڲ�>�T�j��R�'>����v�_�9���s�3�����å5�:n��PK_�]�\Ɏ
���(]v�[g�Xjz��X*VjxZc�Xj{��Y08V��|e7�������C�}lW;����ۡ�i�x�r�/h�x�rn0�g.�C���{Y�硑�x��Ǉ�Q2�d�Ú�J�/o���6៩      x   �   x�u��n� @g���l�Jm�]�d�r�s������!A����{H��:��"��y�qs-�P�o����4����z���L()R�L"�_�S��S��� z8��0������W�շu��Ce*�T��l��eu��	^���fM6�,�	�A����kQ_5\�FuL���$,S����iOy���=��?�lM�����]�4O2�}�      v   �   x�3�LL�����!0�!=713G/9?�S�(Q��@%;���3�%15���7-��4-�ĥ4<�3���+#�¿�M��(7T/�")Ҩ�=%+�4jd	g�2202�50�50T02�22�25׳46�)������ ��+�      �      x�3�4�@�=... �      �   �  x��XKnG]���PrHJ�x���Ȏ�eC���cJv������� ��c�8� >A��R��竡 2$z����իWլ��j_/L״�ZzN�C34��y�Wze����R�LW��(�#Zp]r�nc��ܩ֔[�܆�V�j�?�5U��5�^����f��Fm�T�����gg��Ov�O�_�^�����������伤�+rf�צmzzF�'�Ŋ|	��(�[*��\�����K��!o�H�g:��s��&:�F�Y"⡢E>�6}�=Ñ�h�D��
�w�L��p6��}K���a=�rӥ'�jʻ**~:a����:�s�(�[��a��aS@�n�̍���9��� ��)�,l���W)�4'��=ޒ 3P�y�W]戹� Av�&����)�8L�H��D@�w�6�ǯ�J�oa���O��pe3��V�"`w�����x	��EDg�!�i@�N ���S
� ���L�5<\c������m\�d��"zR���-��L��DY΄��> �`͍spzp�oyMğ%�#[Lr���A�}��*y�8� ǵA{CK�垗?�|�)շ�}4�ה�M�\|�`Sz����k�WfN'O� �G�T�4&����G��%}�	*���F���k%�[�V��^s��w����Z}�����/Ϗ�RRy�c�Vҟ��9�GR���j�7Zs9e�Լ�v��k�95o�z���l��m�Z˫�����6��٫�Oɧ�g/~z��������
u\�Ryc�Ը�1o�d��C���=��	�F)�X����6�,*� J��5L+_#�~T���J�w�
Y��E�Dsa�'V|}pm�RĔd���z���%5�ٴ��)�Dg�+ԖnIUxe)n5~�S�gA!F����Κ�LV�+A
�8ڇ��Jq�K��_�})G��Wr�W�6�8PPߒ%�y̯��K��v�B ��U�T��
O"�2GTɋ�,�Օd�Gi��e$i'|��~�;�C�ɟ�_�;��ȍ:��s!ڒX�r2���к��8�_Q@qaۡ��3ϝ�Ô�S��	��9B��Q&z��g/�klw��@������T-�:vx��dO@��Sq����1<oq�GQ����f����I���f� ���זAM�tc�{c��a��&��������7b����c;s&��T��V�^�Y��	9͖���6IF��`���yf@8����P��O������f�w�G��[h�
E�I(̷��>���JAS��M����|������PmI�_,AR���G�_&�fM�y����[�Rȩ��:D.Am��|+�:p�n�:olw����z�}ϭ;��^�%�{Mש�Zu�U.�-��s��Z���ӣ�穦��=R�H;�'�����d�B����(�d���"Ѩ�؉~maO5���K&GI�%�l�^�B�q��'���!�J�ر�H�>ͤ��/c�t��k���'����+C�T�}a�Y)òXF�����*�2+Z �np[.�& B.7��������+��_"�0?�EQ24D�����G_J����y�D/l�����qtC���IQ4+�Tt�r�M.}�������QJ%�IBy��&���))���]���59S�0Y�F����E'��� 䫏t�ʐ,4C�1�\9�O��:S��Bro�yO���=�/��V(�{�_��/� �/������Ȼ�����{����#��)8�r�?(�m�      �   $   x�3�4�4�,N���M-ILI,Iq8c��b���� ��      �   p   x�}�1@@���S8��b�ø��J��H�� b��=��YJ�j23y�0aƆ^jR�R&��s�(5��-1W���㔖0�e����u���ͯ�ĉ�S���֑�\\��|� U      �   U   x�3�44�04U���2�44�041�9/,���b���;.�s�p^�d4]�pa'�)��^��1�47P���ˌ�L��qqq ��"u      �   �   x���=�0���9 ���Ht����H+!�"��.P�����F��L�H��g����9��|�[H+�>�����ZT~���B�8=p�C̓�H28��=_(�Ùn8S������P`�Ȳ�@��GSܘ|*&v8�؉
SCD��p�E�VǱ6FK�"351Q�d�?8�#��R��Y��      �   �   x�]�K�0��a*�|.����DݶE��/$�{�c�FZ�o�H�=L[�.["�QZszﴕ�)��d�����`+GO�)7���,u�
z}�+�W�jY��!��+=��s�zǃ����g���my��s��1#C�t0\\��cu�\�o_S�h�w�(��R kɜ�97sn��̹)�)�)�)��ͷ�n�ě      �   &   x��I   �?a��.��!Ӳ]q�J�I�)�+�^��      �   T  x���1n�0k�/9��d[u��&	�s��٥�ec��Bͮx������s�_���}_��O�r[@�B�|k{�G��Nȋ��P(��wB]A�|���g��f1�Nh/f:�L�FM]��9��)Ywz�4ڕ�缑�R��7�S�n^v�$�w�P�0�r��y�ޕ���ɩ��|~&�j��`��B�Ap�u�-��ЩNt{ck�N6ө�Dr:U؈��N6&uh�nq��f���Z���HU-�s�mt[\dQ5r��t����n�n+�}���׉�Ff��G� �j��� Wv��\�!�rU���\y�m�QndE����~��y��6�#1p�z�_/3�y�)5      �   d  x�ݚϏ�D��޿"�:;o~O�H��q�d��dH��&K�U��� 'n���C������$�q�{l	ue�Ƴo^�����7Cd�T��F0J��PPBM�ԎME�֫���W� �p�8����ՅOF��懭�;vf�G�뫅;=�^/.�|s�3���$fi:5<S$�u4K63穳7y9_����era�W�~0��m�d��X]/�l3�|ʑ���<��0�.h3��9=�`뇫O~ܚ�~��_&�E�z;�!�uvЪ^��F�@
DK��S�(%�����ni���2D�����{h�/�e�~TrDXI@�OdZU�s�N���z���y�xg<D�^NZ���(&cH��$���.*Z2�{����l�F���H��N��:/.�d�^�G� �F&O�"��w"8#їf���6��"ٚѧ�|{y���� ���`ߚ�{�8�RF��nZ�^/�Y��_���9�i|L�����{�#�'L!F�w�eG��1�LMNR�K�@j %3 ����8�Xڲ��m��D�d9�`�� �!i��� 1�'3c5dV���E��u�J�AR�U~2A�dV�*2��d����I4"�K�60M0�`��}0#H�#�:�ۀ.:9�IJ��],��4��pM$0�)$Ӕ(�r�Y�%�}��Wgx��K�r��$�X�ë��@x�$�]$ ��V�O��0Ž�5@��B�5H@���\��{l?nx �h��IrR�Z��2�v�jD%BH���TzJF+5[�@��a.��7�ۛW��Q�k�s��G�}���8(Q�E�F���o$<|z�0�m?���8���&��N7<�ջ�۵��!h�ƿ� ��]Tus@V��9����Gf� ������z��ծ��f� *�l�.�a~oM�B�a_[�g̏[�,G�*�:�]�����p�ʷ���\ae	�	:��nD�D���5��C#�؃S�$x�e��2��͓R�Fm�F�X
����1d��4u�j�2Y��PK����m���#Z��-�^�jl��\�*s'A}��$,M&&X!��w�]&��n�?���77/�O�Z_.��W16j�Ae����]p��D�o���[���$�GujO�g\��'A���B��^U�=s�ax�	�ݶ������6�*��M�M��jL�
1ݭ�(��CT%�JAaʕ��j�AJ��
{ ��w�AJ���<�k�|j�RG�R��}v
���{?0H�h���B�a0�Nh��NH��R�������w��˛W�Q�&5�m��i�i���Q�`B݋�{��F����'�	�=�Ԛ��,�N�I���ۡZ6Q���f6�f��'Sh�L�<��%}xZ�'�Z�o0��P	8��Ĺ�I��*Dخ�ɑH��7I�/�OV���w@���M�'��Ż�W����ҕ��W�[3��4M2�M���Tg
����Z]�`
څԚAD��UG@�>���(x�]�L���Qzo+:�]4��
Q�ٺ��~(�.�cZ�����6W� ��(�I�F3FU�;�����lo��w��Y�=�s�$#0�:I��:H���oxN�脱	f6\���4�������      �      x������ � �      �   �   x���K� ��p��g��*5&�Ņ�/�� 	�I��
 @�Ǿ������d� r�ljg:;��(���4�p��8�vi���(፼6:�6(4 �ә�Ay�>z�e�>����yʿ��w�}d-�w�Y��1�@T ʔjm����p��-�O��{�#U̖k��c_'���      �   �   x�m���0E��,P�v�x�)�9� ������و��V=Yzzz���O���C�#K��C= ��I�u��8!��]_��E~o��|����}l�ۮ�^"C��.\����E�2������+��� Q�r5Ъ��J]�'�1�RmK�      �   X   x���A
� Dѵ9�4F�e�� (tel�ߡ���90NG[Mw_�tO��������&9*Q�w�@ew�BG	�`u�,`�ۼ"}��Xn      �   =   x�3�4202�50�50R02�21�24�31�D7�2"s=4q�zS=C3NCNC�=... ���      �   #   x�3�4���|��ԒĔĒD�3Ə+F��� �@      �   ;   x�3�t�K��,�P�H���L��4202�50�50T02�22�26�32�%�D\1z\\\ ��      �   +  x��W�nW]���e��r����2,"Vلc�HF`$���d�VR�/�]v�,�^�Q�=�UU�c)
�P�{����s����{����F�8��8��5'\s��m�^;m;�꼭'v��m���G�6.��5���@���z����Y	K�a#,����n;�|���y��&k�]�k5k��6,�_�����h��<'��m�^{Ѣ��A`GA{Y�#5��Gb���N����豢�}�Ӽ����P���p��&P]��j��)7�]�q�pY�o�~�$z���ĉ�M���[�{�~=m;�鑭���/E�F�����;k��n�F��y�5ڋ���br�k١�U�z~��v�k��vP��!�י���;�C���l.�w�� �T���US��$��=��f�	�b9�51�d��u�و���3�`�`	%��F���N����P�9}NB�>'77�yr�q ��}F�Ǌl�� ��>�S<���	|��9?��Pt��C*�t��J9s(���D��0B|�>@Ǖ#gʘKI��H�{Vܲ?�88�[�Mw��
�;�����cQ��<k�+�1���k=�7d����&�
�E�@/����_|� &��g�aS�1�4�;)�%��d�s���p�Pc�"ۦK�fX�-ʐ���BnLf{� �fx���ʹ��&�(~2N��:$}_O���A/%��CN���O�>URR5��i`"�*cP*�R!l"]RBp��>a�v�� ��(�,��=�A������w�?��ƚO�B�,��N�����!�@��:,E��U�M�q(�M��3u]5�1��]�R&��D��7���QK��� x�v��KJ�l]�3��@\~��PU�05�Onf@�� ab86� �e?�	a9)�q��e�S���;�W�P#���\&�;�PC=�8ޑ%��s������v�e�(�x����3S�;_9��.�~�[8P�g�8��g�(%:V7�f�#\��7pT4�ޱe��b��I��$�eΙh�)��W�Ӣr0,�� ���ʔ�3��0�[�hp�bg]���Z����(3;�3�����Z��nW��g�R �L�S�#2��`�xMc���>aJ��`�3���&�P��,j�>���gs�O�+�ǘA���,��X�#M ���9�#�``)`c�~�"��0�{"J��9R,2�b`^s��-�b�c׌�1j'�93��xY89����3[�l�զ]�"�>�>Q���� {��˼�p��?{��`� ~ l �لu�2>B4���"tN�E���CD0����#;��d01�ƨ)_�D������Q�澿|o)3@�2���2#3(�*YM�Q�;.�j��L�3�ـ�:��j�?���5�	Yw��C��ũ`�Hf4$���E��,3�Mb,ٔ����ORu���9D`J:҅6&�Wmd
)j�o3�޺o2>P�j�a�Y̑��������]�f�D��P�	�1�l��O^@fF�F�6'��S�c��O8,���9���B���D����Y��kź�z��ў��ķ���]����%?$
����R��Qr�d�3�	/ TjXV�DN�&d��Y��(��#��^���Ч��V���A*z��nEFX��<U��vW�ƽ�c��"3�՛gkυ��Z!>�	���EQ]�����苷��g�Ɏ;�)��[_|c{o�a����������x/v}�������ƽ�돶�x����}g��ݍ�(��p�ݪ(տN)��~�?|������ww��mܹ��w6���j�w#Vn�+++� ԯ��      �   -   x���  ��N1H9����m2��T�Nl՜�\�<|Sf      �   e   x����
�0D��c
�U뿸�X��m���k%����]J@����lr���H৷TQ˵4��-Ӣc�} ��s�<�ȱ�i�\�b��i�>�����Om�      �   /   x�3�4A.3N# 4��4B.CNS����!�	�a����� ���      �      x������ � �      |      x������ � �      �      x������ � �      z      x������ � �      p      x��]�r�ƒ��<�Ο-��lىU9�u��6����eOm9.ED � �%��}�}�}����� C�S{6�0���L���43����EVLӲhP�L�I�\���=�.�U�d�*mnV�>;Kfˬ8;[�j��5����q��&+.��ٟ��u~���h|�Tkt4�gy�*�J��*]�WV��w���GG�e�?d(����IJt�gh����]Y5��x
^W3T��^�o��$��I�Zٌ�Ͳ���&��yr�r|.�4��X��-��7��I�JuZe+Vo�/��$E�2g��WY�i�IZ+�vRt��o�*�=��گ�Vg8��Ft��I^@/�'��翢��EC�d�t�*�4;X+BUC|X�b?�R�
��Z������J�)����&��Bǀڼ�sH+�4h��ZU�Iq�9�{W��z5��
�Uߡ_	�{�i��Y��v�o�T�^�Aov�3�M�n(x0YY�T�I�'u�OG�Q?~��9��h�v���.4�#��zLRLd��7��!�^��D�0�|�f?��%U��/����x��"�J���dʽ�*�z���N�Q���r�F�!g����*��Chj�¿�CCYA�����.DT�9L���#%D��F�_$'��|��#>��=���#�2�B�q�[%�@\�te/ݠ|�"���d�7�%6y�ƽ��Ĝ M��!T���_)��h�p�����j��͇���!�5�e��	B���
�p���!�\�d �իDY6�q(�1�	f$��ӌ�4Xu"�0�Թ��έF�n4a޹��A5f9��@AO+���b���b���ȃ}Ɇ���`O/rDc1��Xc٦79�[�5��QAA��7�a����*)�9�b�#�9��s�\B�%�\B�%D���_�KPa���78j�l~wuԚ50�!y��������a� �B� �#؝� x�_m&�=gg�U^&�	���4�0�	���z�~qˮ2Hs���ě�E��.M�d=��Y��TdC(($���@��w^2��Rt���Z&��EC�d�%/I3�>H'2�!]��졼9܃�����q�!��h	|5G���D|��<���1�a�]���J���O���UF�?:de}r(�w�s*J�ªҐ�뭄䜷
�x�KG�M>eka��T~��!\+&i��\9Ε�\�=��N#W��f#@�U�8$�X�>E~�B�uBS
�d�}j
���"������6#���ʸ�Rl�9F;:���f4�\���x�K��|�2h�By�����%��چ"��X�P���ާ�,��}=�-���e�z%<h���$��`�9$�D����.���,�+�!zV��~�{ߛ�� $l'�1.�(�-OaW�!�fB�!�_�$�C�˲!LF��e��
��uKx&�</�Kz�(�g���D�Uh�sR\�q,��+�:%-�F�T/N��T�3�ӹ�F�$��fz��X��dH�J�K�h����F= 30��΍��Ah�}�K�̞�< �t����i�.��y��i���sD�?��3hRkj.kʊyI*sM�(	�!�xn�Γꕽ@�)���N	��Y�M���~�����,�M _�Kc���|*H.��{$�.9>_g"�iU$�U�������jY��{��?ߘ��(~F��.�P�l��{\�~[g	��-	��_k�A��|�H����P��+sG���3w��I��O�jG<�^.�By�S<������}��@Ԧ��0��L�I�Ԍ�}'���"��d8�`	��UѲ@BO[�������Ƹ`� |��Y�ި���+���R#��X�ˬ ���=�6t�!o:� .\(�y]��%��߳���qo�%�+�j��%п���{Q�/\��y��H� �L�с���b�!��?��[K˷9�^-7k3��
ܷ�y]�5�E��Z��V��gc���gQ7��(�\�`��zς�L)���V��3��-m�Щ9(�o��9�� �@v�/�zڎ�</1�$�j����G@&�BT
������qS8;��G.���m�4�j�<:�(�蠡�<�pԼ�)Y3��E6��_�I �6��L�c��!6��bc���ϴT��8�R �>��w��E�����S),��ck��|-j��[�{��2$>�4��D��l��\���#v{�mO�mށ{�2Y��o�1Yӭ��E��)3���]	�HsG�]9h��Gw�v��/m����)��vg�J�9/#�O+��b���R/��l�e�댺8��v� mv��D��N���]�^�J:��,��qov\9���:Ϗ�*���uS.�B���Sm+���nc=t"4W2�	��{��$1\p�}��/C�V��t}C��O�+KL�2�H���WLdZ����L+|���1�sWB�&�,���oXic^���o~dx5괂�c20J��*�G담�Ǟ��h[�GsHj��c�O�>�c�:���o#a\g��� ���Ϳ�|��jʲn�ԵkGzd��0�~��_Ȥ�;�o:y�!��3ψ0a6��������q��ys;�l'1��F�S:��ڬ��ZgB~}�th��}�@���f��#z|�x�����S!��C�4m�R�R���e��>ˌ�-����A+��d�Y'��|��-m����v�z+����?�Aێ����H�Vm�]�u�+���vM���E$Fi�L������۵m������۶
�2�;��<�ZV������)7b3FK �qIl�i��@���;!�{��I�}���-1���`�����)��)���
֥���%�)�Z1Y���X繶%�!��4i q�4L�e�4U&�\�䈍�6K (	I��$C:$� �y���9{�!��Dy���Cv��r�l�xB3Cm��.����EV`j)G�uDh�6t�o⻼�BxV� !{�6�g V�wVX��<]�ǮxT�"��;76��6�Os{ĝ��v�	k�̥��:9i�
���S|0�*/R$U�@ti�(@���7bc�ƻ��=��Н�� )�z6.D1�6�Ԩ��m/�D]�S
!����F��i^����J�͋b�f}�gd�#��!���l�������l��� �����m���$�Z�z�7:��զ��9ݠ��.���憀�g��=�gR��8c�h5�Y��;�\�1�w��=�*�
���E[��w_�Rn��fġ]��ɦbH6���]�厕��F/�݇��7X���Hh��Y8V�ڌ�<��ٓa��0�7&9��-۞ʷ����!��e�=��J��C-��R���%"�_�(�ye�;�z�ķ�������c��r�lX��^�/�\uY�������~��y�V�;�;`|����7�1�`��>fF���{�	_��z.׮g�uI�2�ڳ��(�M{�̬��2� 25���'�����m�>�6��������P	�#w��S���:�Pz8j�J#�Dع+���5`Sލ<g[�`���7<��9�e=Ա.SC�H�$�U�^S��v؉��lc���'��מ��p�_~�	��,}�8�����۝��lG�R$K���0�m��ƪ��I_g{�#@� w3��[CΗ�H����Agg��W�D����,�aWYGY��L8�Yj�x�@^_nZd�L~�=}���2]�$�p���w�wv�g9^A �㧆��24���TV�p�Ǔ�^�&�����Rl�eu3?H��L�i�ߔ����-�4�5�𥺥�
ffY���@�o��li8�9M�����@R�/$y^^��p���T�?�5��s�϶J��!Wrn&�o3�&�2�;[��.mr�����Z3i�\a�EC�Y�xc`�*>#7N�G���k����|Q�C���:n����cX�3�n�%G�vGlw�u\+�0J!\Q�;�j��2��5�I�ǁ����3�EȄ�Ӊ��[��]i��O�m��+�"�wq��$_��AM�񤋤�]������*+��梃�:�� r  (*�n3���㧼����� �\�Kt�v"iJ;G>�$wLW4J{�CI�LD�V��hD���.z�#&~vf��N��`��{b3�Ap�Ý~UC<�uox�͘gS�.�Q��C�����[�h-������T�)�qjV��2�^�H�Ҋ�ߨy'��q1$�s�&�Lo�� ����M�t,F�C��YŐfe�^biu�(ۓ~� ��[>�7-Gem������T��6b�D�@�1|�q`����ͼ��"+N��i�X�I !��kbl�轨hz�����7�͗#� 3���CѡB�f��`�gp"��\2Bg����sw�e��f
��􊊙�5:f�` %�{��c�ѷ��|�&�>^w�/�(���my��$H�㪼���-���ȼqS���Oջ-}i�?h�z�HL"1�`��0�=T;��M�����da�m���Ay�+n��/����8y�Y��:�'L��Y��to�G���y?�4�L�H���K}$ٺ����?P7���t��|V����<u��ڻ�j舸�_W����w/�pp6GUb��aڈ��)���9��=���ժ�b��d�srQR�T����F��XrA�k���Zp5�CtSg/���!����4g<�Vv��Pi�Z���Y�ڲlO�k�9_���ot�����Ľ}�-�Y�eY�`6j:�t�AvҒ��F5u�!����U��.�C�2����o��Og]M��gU�x�Mk�C�Ϡ
��z����Hn�5c�L�Gy�p�!��ҏ�P'�h8��Ϥb-:��t�Q+��ܧ�/���6��D�Hm����Ni�.���&�����[�Ř��"�P�o|炃p�ܴ�A"����Ԕ���R��5�|�܃�Rt����ݶ�j���\����߶�F��l5�I�'��x�I#�!���a
�("$�\�D`�n(�sn� ���gA�\V�i�������I��H�X�<m��!45��uvg��$�����$�q���hX�D�*���؛�O��vt�����$ғϒ� ��#e���� ���f�[�+�dK�]�l:�l':���9�Ap�K������CJ)�qHᮢL�S@��|}�=�8ϲ�S����D��e����`��P��q#�B�eKTp*�ʒuS��2�-�7Z�~e5z��k3���M�'�����w�(7?�"�(7�����b��ɨ �$��Rj8��By�V�̲:�����vxmQ�h|�n����ذ߸���|KF�~<ĝ�x�oy(��!̤Aj��9�+�&�96��lQCT9�['ꢎ��G)qQ�<E��+th�ݱ�ݬY����e��K� ��K��?gJ�e�Ve]Λ5��bFVFu�C���2!�fS���Iy5:(�oQ͓�yQ7	v�eKS�N���Mާ������|�f�W�]Z��dۤ�ņ�M]�6]x���fayV\b�/Zt�U:h!����y� ��էT�d6������E�5e�V�������$!�����؟��\z����Y��
;uk�Ќ3����O�&Q;�C���[ ��]K���Q�a}u�gT8VM���O�P�;���^J�tǣ1�KkQač����1[-T�����hƥ�ב������vn#Ō�|���'.�?\�>-��|Y?\���
]�צB'~*Do~�����9�5�X��I�I����M���7�"k��UI�g�/����Mj��$ʥ��Ֆ�Z�7���d%;+�2L4�H����0o��H?p��Ri�����S�٨Y$���Q^��G%ޕUu3J�1+������7��R��a�⫳������ftMj�m��XP�#ܙ�4���'L�GdGM9�=d�sƥb�_���o���%|��������b��~����\�K�iL��*Z�	�.�*]�T����iZ��fd)f�}r:b���y�5@dݼ98d$�"}�ű^��x���ް#��<K/G�)Ȩѱ�s��zb�4FGiHG����o$���=/�]%E�f���������T<�L� & ������b���m��,�ĊuV��Ȧ��,�%�3g��ܚ�-QSe)�+^#t�߼�&6[SAOOG'_�NNG�����́�柴�:}�Ӻ/O�>?=����'O��NY�������ɢi�C�i�Ѷ�V�QW/B_S~���l��(��(�5�Ա�w��w��d���C4T�8*���_��kW �U��mmL�����Ժ	��vJ��R���F;t`�n���ܩ9�?��;�{��"3�{Pf�W޸�
*���{�� �K��X��?�]y8d�6k+���**O��N-�ho}� �R�ٺ,�Q��P��PA�$�G7L�E{	�9��J�����=�kqKI�i�_C!9hկvH���W�������U6���Y欇� Z
K�@�+���� �����{�3�şUi4��h3�p�o��U�c�mEE�j*ّ�F����`�CT@�D~uJ��_�&������h��Kw��t����P&f���_A?ơ��CL��2����05׷����O�M
n_�|���M������	��;�e�%�!���eC��	��#c`ܵǂ`G����j� a�XKv+x�6̣Ob��郴�Дn�8%���2i>?��J�_����[p�{Ki{�_�����Ś]u�1|�U�wn�=��;M�{��B_�m&��F�����&��|�Ti��=���'���	m��,Ē%y
��}$�d��䠍��^��z�`�����ࣝ��ȋQR�B�D��� y�;�b�mBU{A��<'��mgn� f�a��:g�9�`U$)���q���t0�⃦���j��S2�Ԥ�u��ꃝ·$E����=!�l-�_��%�_��K��D���x�� mg'8����1�S+'+��}h��I�Œ������iU��UsfyG�Q���W[�cN��3�4�vi�#��d� &���8[7z}ݸ�{1tN}��U��q��Pʯ��%ɓ��r �j/������N#;�\�)��Upz�KeE��DT���h�R�	�M��g��,���,�s�Y䂑��|��fV��� �:`�󩑱F�z�+�20��U[�����s;�>[���U�8��]{iK��jj鱖�MIJv��h�,��T���Lf��|*�
��NH�ã��N~,�w�b�Վ7��}��6����O�?��C��d�Z��x�`i]�u��uKD�!)?��Hv���d9!��0(ثHn�=p}O�讒?��B*D�MT������F��c���%*�?�4K"f��&����$��_��̟�>y6OO�\}E:�!�ѳ~hU�w_g3r��slK�],��OO�����y��O&Ϟ��5��������{�>z�����i��OU�M?���Wm(g�v3��=NQ�߳/�Z�_�����>�'�Lp�f ��V	��/d�Q);l�ܧ�(f��<X�䣡Yȅ�Q�}��1`%���{��x!h���X��ǽ��/q��SܬtW�Ň��f�Jh�FS � �̶;՗�M��{fjwq�@	n�-9�z٫Jy嫋�V����_W˲A6R�?�Ō1qG1q��
�K�L$�������w�rU}�3U�L�������      n   �  x��]K��6>ۿ"ų��Ď=���C*�\�=��X	I�P�B�c�S��˧��� ��X"ql��� _?�o޾�ףh�̻��^��ػ�2���$�~F�?1�$�g��#q�?W�7ޮxH������!H�����hE�N��� �GӒJ�5�)%G�>y�4���g����k�7�;�G�C���ym�8�)uo��qV�C�~��ݜUx(X�u(zWt��?ɽ�&c���w(�L;�^������*���#I��� H1�������'�=$�åZm�?�i��h	�=`�4�D��%�֪�>6s& .	{�M��خբ�Hb���#�2��C����u"�C����=x}��O=�@??�N��'f)��q�x�S8�P�_�2�jSꞿ��M��aZ��������?���uھj�,�����@������$�|�7@��)M
��C�#H����4��ƫ\�T.�l����r�wJq@�5�ݿ�6�i�Ԭ�gUb�L�%I��sƼZ�lo�������T3�K�î[1�ޡttE�dGҌBǳ��Q��|D$�S(�>%i)#��~+ɧ�%R�'e�W��H旱�c�����m� iG?f�0&�#�s��lV\X�&���̰��a7�0�>�0���
hO$!(�gAJN�i���k�ݦ�]�W�=�eȌ!��d�g�	�3;�@��@�]
�e>��2'.M�q>�"#|^%"���	��fK���Gd�n��n�_��ZXs� ���i��kv/��4��=�+����8+��J�1��}cv�Ao���ݬ��$q�K���?��3������ك�>,�S]�������#����)JP��J
�Da�0O���v� {��5T+\*4�U�_gU<v=�S�֙�[�x������T�J2�ˡ�]����Js$��~8��~i8�s}��.��Šs+�!�)�h�k�ܯ�7�\�O?��@9��<�p(�ԁ��(����9�� 9��t$���r],S*Gu^�ln-�M)�F�?���<���p�ST8�2����]�n���beK|M��!/�lu�e!���cO(Q�
s�i>�눍��u�v�!��X��ٍz�@�f�18�0���e��Έhn5���r��L�*�fv8l�Y5όYp�a=���/I��RD�̹%�l�%�~o��ZZKN���W�i���2���<��Zp�xa7B��$��1��(	P*�d~ё��D�=����5���4��hH3��oh�v�0�#H��A�f�����в{{��F�@��X�� �����u��
�����{���F�8��������s�7�I�#�&�En�k�ߖ�č|��^��%�������q�=c���a���遍;�"'퀡/�sxx�x��IJD���1�X�CS� �д�
�9)Fj�ܗ{��|����j\�ؑ�
�P��9�J����>�K�;���"/"��'����sc�챰���ZA¥i7W�����#�)M�<�<k��ٙ�-,3��̺�"���
�����h<��q����1����Α9G6�Ȳ|;U����!p�vt�\7�C�u�U��?p����-	��~f��涠�DH�7�{W�v�x9�$�S�k�(E�)�J��4(~`(c�]��(�{l�K��U�q�s4C[�$�'�K/q�(���=[J���ʽ����
v�?E�����)�MT�|��b���b(!
fPt񲬀�*{�t|y ՏH� �<��wd�Hʆď�����P�>�����Q���p�շ'�"R���٠Js%Q�5�i��Q�����?��� H��H��9O�ol%�r��a�����`,�˥�|�٢�%\�ƬϾObC�V�rQ�m��5l{̴�u ��\cW�QT��:Y)�
Mcn��۲�
i��z@�3�K�������P������/�Sm��>���n�i��յ2�ʃM�ڛ�<	�*��"W�i��?Y��5�}s9�Z���j_ꊭ"���Ec��:�B�Ơ��p�(��vFMg��a��+��itUTG�b��qdf͠K��X%صk?6zqq(<e�`��2㿜�EA��b����1IO��?���ے�s�mآ� 6�'�_7��hi�Oj�Hs��R����v2��f)�W���@o�Z
�o�Ib/�Nc���^C0ݘuf�c#	x8l�QM�|:���P2g�5�`�0�m:��B
!`u4���N(-��������b�q�Yr��6'.~�&n�U�"2)8�yO��B,jks�.�Y�n���Ɵ�i�=]��d_(��9K�{���X57���L1`�$+�rfO�Y�����R�f��R�‍g���\;�H9l|��=KH��7K�Cu�����]Yb	��d�v�U16�}�.r�ۆ5�*�2&T�~�k��&L��ۮx\g���E��MJ{�W�ױ?j��K�������#��ܼ7-u�{J@U��5R���	}b�������k��I�k�M-�6b��RZsy��s��3���wK*���Y'�������	ȴL��|���𢮮�&z�V,k��e���#Հ� ������ͨ�㌖ҚP3�<ס�C�@���	�9j ��g�\�P���tq��PXaz��:|q�rQ�R��O�R���}Q�	���9��x&Q��}ԩ�2�qE$/�1ӵ\��@&c5������Uol!���tD�nU�^WX<k�S�s��1[�a�X��G�����2���A���.�i.U�>�6�s��Uw9)5�Ė��
�x������d<,�����j�r��ס{�Tp�W~,�n���'JACj�z�@�IQh�J�24�����k
P\�h���6($v�:I���N�Hʈ�3L����I%����<��s� �l��j
L��a�a�w9D������hd�Jx(��R:(��N2�eZS� ��|���zr�e!����D�ؐid�c�&)b�C+7l?�xR���*V�KךJ>Y0}�C�V瘇�
F�>$���H=�ɐY���Ƥ��p �@���__���������_�����������~|���u�vw�����;����ޡp{�������~x�����<[      l      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      ~      x������ � �      r      x������ � �      �   s  x��XKOW^ï�U7A�{����cQe�M�"��$
n���@�$��4�*]�Yd?��R���s�s���$Rը!!��8��|�1����4�gz��:J��!=���h��H5���fz�{z�v�0=R�+�*=����:Nۛ�̓���As�M������q��U��c���q���uL���9�=y����T��!}�?+��V������Z�{�q�TG��M%��� ����e��c�l� ��U8�m�?�䧥���;6�Z;�K�Rٿ]��_��A�T��Z}-[/{�k�wͭ��7�R����ϧJ�AZ=b�ַ׷?�V��/)lWޘ��Z�����_����[�[��`uu�,�z���
�J�����������/��jn�6����{�Y��o����ry��3�:I�I�D�ѿ��������Vn��]�Ւۨ����*����R)/8﹕�7׿^�,��ESz����#}�����:����[O�[�3�A�4�\�ϖ=2���Tsk��o0��zP������e&�J�/�XCb6D���C	Y5P�U�#�(L	��"�f��a�ɚ,-��5�m��z+�&�� ��?#����}��X(�ϑC�d&�*���1"8���t�Tq����h?&��)�������$}�Hj��^��OY(�c����o�%�"l� �inHOu��`DD����$b��v6�1ʫ�JE�-��;�q,�9��#�����H)�BJiF4�ڐ�9J����BLTf�æ�c�as(�d���Hҝ@8��$mw�[j�aIr��G�_���lߔԄ�%�'#r&(l���
ύ��$"Ao�i��6��D�7��S������J�A���]0��eʵL�P�H����?�O��!��M��'���L���܃�+��$|��J�?�$�!��Q#E�P�b �@!�S��kE��@1�h´,�u^��Vg�6�Ԇ>=M_�>�\_OW�;u�/ۤ�b �Q4��K%��������F� ad86� �Y=�a9ɒ~��Y�c���C��c�H!	��X�j���=���I�"R\�������6�<���fF��,L1�X�r)"���k8R^٩�3#�O{)&:�Nw���'��J���Pa,�����c{A��I��$�Y̙h�*��W!Uũ�4�Ar��yKQzaҹ�Lb6�V`�NJl��@y+|:���G�Y�n�v\��<�����
�~A/9r��;�:"=j���f�xl�T��-#/;(�ײ�Oڜ��A0m���
s�;3����U�����"��w���{0t�1�C=yAw��C���Ҋ����1R�r*���P�횖�Q���a<���iYX{�꾫��.���
��?R�?<4� ��gq��,]���rM�~l �لu�4>A4����u��uSi��+x03����L�(iL�G�1*ʗ&���CXC�Q�Eqo��;�4б�kT�ĜfC��&Y���m5t������c&��"��hA/��>��>U��������d�3��	�L����<�%�b2I��[��������JQx�c��p��ʘ�b���)d���c;f���m">T�j�a���#KK��o�(W�B��	�
�Ռ��*Q�CX��L� ���,�5��U�>b��J�}���L":�.��=u~�O�|0Q���I�홙�Ƽ:o���y���]�"a1�!D:G�'V̭���hg�nA�ذ,{E��&��Ќ^3� ]��j/ �MP�3��Y6g/�"�m�]a�f�\�U2�]E�j�ah�E
�-V�ڞ
C�5G|��q�c#�IuC�g_�Q������#�A���wV"swg���ͽ{�f}����M�2j�]^^���3�      �   !   x�3�4�4�4�2�4�F\f �Ә+F��� 4�u      �   $   x�3�4�4�,N���M-ILI,Iq8c��b���� ��      �      x�3�4�4BC.# ��b���� 'T�      �   o   x�m���@D��n4�噵Yp-�'��r��&LG��-����Q�{�����B���3��h&�6t2���7�ŻT^�pX�E1l؂P�|�D����~�Rk�֨2|      �   �   x����
�0�s�wq,m��kx�����0��ۛLB1R(�&�/(�c�ou���ڶ��ܶ;1���AVQ�PT�#2Ćp��Z���;
�����-�OZ&;^��ttŨ��6�����8_(Bl��Xd��I�e ��'��      �   �  x����j�0��zހ!j�����I�цi"Id��g�uʖ�@4����vh�bl��ؤ���J�,�&�1M`�@c�0eL2o~z�ߑ��.��pՈ7n�6��)$8��홗�;�z�ɧA_+%J��OC|�M���������H���gaߊG�":.�'�ji:��|�"4�
U=��0�x/��N$=o�Y�R-^�1d�x��|f��-��6��x�J�t1����j(�����1��X�Ro>�d"�p��\�ަc�T�]�v���vY�Y��m2r�Po>��\=�6s���V���ouB�d�.�h�1C�v� ��p�����d�v?�L�u��������z�Cs��������P�      �   g   x�%���0߻�D��{I�u�C<f$#�*�i�2n�ÓʃhN��ۼ�MqHm�	�D�.��m�X��X&m,��uj��U�P3u�l��_0a��{H��9�      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`dhedbel�gdd�S<����8J�r2�qX[������&���A�@)K=cs#��1z\\\ A�EJ      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     