PGDMP         8                x            sistema_distribuido    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    sistema_distribuido    DATABASE     �   CREATE DATABASE sistema_distribuido WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 #   DROP DATABASE sistema_distribuido;
                postgres    false            �            1259    16406    category    TABLE     q   CREATE TABLE public.category (
    category_id integer NOT NULL,
    category_name character varying NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16455    produc_store    TABLE     �   CREATE TABLE public.produc_store (
    product_id integer NOT NULL,
    store_id integer NOT NULL,
    product_price character varying NOT NULL
);
     DROP TABLE public.produc_store;
       public         heap    postgres    false            �            1259    16442    products    TABLE     �   CREATE TABLE public.products (
    products_id integer NOT NULL,
    products_name character varying NOT NULL,
    category_id integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16394    store    TABLE     h   CREATE TABLE public.store (
    store_id integer NOT NULL,
    store_name character varying NOT NULL
);
    DROP TABLE public.store;
       public         heap    postgres    false                      0    16406    category 
   TABLE DATA           >   COPY public.category (category_id, category_name) FROM stdin;
    public          postgres    false    203   �                 0    16455    produc_store 
   TABLE DATA           K   COPY public.produc_store (product_id, store_id, product_price) FROM stdin;
    public          postgres    false    205   �                 0    16442    products 
   TABLE DATA           K   COPY public.products (products_id, products_name, category_id) FROM stdin;
    public          postgres    false    204   �                 0    16394    store 
   TABLE DATA           5   COPY public.store (store_id, store_name) FROM stdin;
    public          postgres    false    202          �
           2606    16427    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    203            �
           2606    16454    products products_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (products_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    204            �
           2606    16436    store store_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (store_id);
 :   ALTER TABLE ONLY public.store DROP CONSTRAINT store_pkey;
       public            postgres    false    202            �
           2606    16448    products category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES public.category(category_id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT category_fk;
       public          postgres    false    2704    203    204            �
           2606    16468    produc_store prostore_products    FK CONSTRAINT     �   ALTER TABLE ONLY public.produc_store
    ADD CONSTRAINT prostore_products FOREIGN KEY (product_id) REFERENCES public.products(products_id) NOT VALID;
 H   ALTER TABLE ONLY public.produc_store DROP CONSTRAINT prostore_products;
       public          postgres    false    205    204    2706            �
           2606    16461    produc_store prostore_storefk    FK CONSTRAINT     �   ALTER TABLE ONLY public.produc_store
    ADD CONSTRAINT prostore_storefk FOREIGN KEY (store_id) REFERENCES public.store(store_id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 G   ALTER TABLE ONLY public.produc_store DROP CONSTRAINT prostore_storefk;
       public          postgres    false    205    202    2702                  x������ � �            x������ � �            x������ � �            x������ � �     