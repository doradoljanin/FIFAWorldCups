PGDMP     4    %            
    x            ORdb    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24986    ORdb    DATABASE     �   CREATE DATABASE "ORdb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Croatian_Croatia.1250' LC_CTYPE = 'Croatian_Croatia.1250';
    DROP DATABASE "ORdb";
                postgres    false            �            1259    25088    venues    TABLE     �   CREATE TABLE public.venues (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    city character varying(50) NOT NULL,
    capacity integer NOT NULL
);
    DROP TABLE public.venues;
       public         heap    postgres    false            �            1259    25086    venues_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.venues_id_seq;
       public          postgres    false    203                       0    0    venues_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.venues_id_seq OWNED BY public.venues.id;
          public          postgres    false    202            �            1259    25109 	   worldcups    TABLE     �  CREATE TABLE public.worldcups (
    year integer NOT NULL,
    wikipediapage character varying(50) NOT NULL,
    host character varying(50) NOT NULL,
    beginning date NOT NULL,
    ending date NOT NULL,
    teamcount smallint NOT NULL,
    champions character varying(50) NOT NULL,
    secondplace character varying(50) NOT NULL,
    thirdplace character varying(50) NOT NULL,
    fourthplace character varying(50) NOT NULL,
    matchcount smallint NOT NULL,
    goalcount integer,
    attendance integer
);
    DROP TABLE public.worldcups;
       public         heap    postgres    false            �            1259    25114    worldcups_venues    TABLE     b   CREATE TABLE public.worldcups_venues (
    year integer NOT NULL,
    venueid integer NOT NULL
);
 $   DROP TABLE public.worldcups_venues;
       public         heap    postgres    false            �
           2604    25091 	   venues id    DEFAULT     f   ALTER TABLE ONLY public.venues ALTER COLUMN id SET DEFAULT nextval('public.venues_id_seq'::regclass);
 8   ALTER TABLE public.venues ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                      0    25088    venues 
   TABLE DATA           :   COPY public.venues (id, name, city, capacity) FROM stdin;
    public          postgres    false    203   O                 0    25109 	   worldcups 
   TABLE DATA           �   COPY public.worldcups (year, wikipediapage, host, beginning, ending, teamcount, champions, secondplace, thirdplace, fourthplace, matchcount, goalcount, attendance) FROM stdin;
    public          postgres    false    204   =)                 0    25114    worldcups_venues 
   TABLE DATA           9   COPY public.worldcups_venues (year, venueid) FROM stdin;
    public          postgres    false    205   �,                  0    0    venues_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.venues_id_seq', 384, true);
          public          postgres    false    202            �
           2606    25093    venues venues_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.venues
    ADD CONSTRAINT venues_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.venues DROP CONSTRAINT venues_pkey;
       public            postgres    false    203            �
           2606    25113    worldcups worldcups_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.worldcups
    ADD CONSTRAINT worldcups_pkey PRIMARY KEY (year);
 B   ALTER TABLE ONLY public.worldcups DROP CONSTRAINT worldcups_pkey;
       public            postgres    false    204            �
           2606    25118 &   worldcups_venues worldcups_venues_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.worldcups_venues
    ADD CONSTRAINT worldcups_venues_pkey PRIMARY KEY (year, venueid);
 P   ALTER TABLE ONLY public.worldcups_venues DROP CONSTRAINT worldcups_venues_pkey;
       public            postgres    false    205    205            �
           2606    25124 .   worldcups_venues worldcups_venues_venueid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.worldcups_venues
    ADD CONSTRAINT worldcups_venues_venueid_fkey FOREIGN KEY (venueid) REFERENCES public.venues(id);
 X   ALTER TABLE ONLY public.worldcups_venues DROP CONSTRAINT worldcups_venues_venueid_fkey;
       public          postgres    false    205    2697    203            �
           2606    25119 +   worldcups_venues worldcups_venues_year_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.worldcups_venues
    ADD CONSTRAINT worldcups_venues_year_fkey FOREIGN KEY (year) REFERENCES public.worldcups(year);
 U   ALTER TABLE ONLY public.worldcups_venues DROP CONSTRAINT worldcups_venues_year_fkey;
       public          postgres    false    204    2699    205                  x��Z�r�H�]'��Z�Ad⹔(Kv�z�䲣+f�"Sd� �I ��?��Y�zݽ����U��_sn`��G�`^��O��e^ȅΜ�J�J�3v���^���S���F���Թ���Ke�02�s+.��l��,V�c���-����D���i�ߏ��E�-�N�$[���S�0	���Ig)���3v�m�B�p/q�����9Q���,ɌJ�$���$ꈙ%>��4*I4���D�̳��-�z��3et��s�f�� ���;����v.�<��j��4:e<r���u8^����B���r�W�U��jR5f8���i�vc�����&�.�ɕN�5���c�����562���v���\���yiH�f�d��	/����K�"��SY�'#�4K&�Y�Z�L�\o�o��J>`FέD��]v�n��䌻A����b����Ջ�/f/ػ�L�2W̵����3�9�d�jzdo��k!���,3�3��쾲�Ф��
Y��}!k,`0i�\�����A9��T�wZǆ��N��js]��FO�dm�������&;QI漂�(,j�q�;u�,�2�[��k����%i��Z���J�nnTA[�Qs}�ȅ��{D��ő6����P���G�L׋��;�;��iRx�U^@����J�O>6{�d]�ł�8��0�[Y�C���.���ِ��fJ��z@<�qN���$���%ޖK�f���
�J�EQ�M#���_F�W�]+�߰n�Ȋ�J��o}ᓈ�nv���t!��,�\�=P�f��j4K���p"dU�J�J%�N�w�$�[�B?�{Ha��N�?�!b��P�V�5$.3cֻn1KmAo�~���.�$�Q��I��k��E_a�0������~}�5ZǇ'���G���{C�Ɇ��~�h�oBR�����d�%�����U�\m*h
�����L/�\">�"a#rK~� ]��z�?�d�P27��p�E�����H�ۭ2�x�nd:��R�,���L�At�k�خ�[�D�ğ��D=�N���5���}]8�G"�����ҳa�]��p�l�����5�΃2�,K�:����DklҎ�³�Au[ �
�{��J#)�t�=���߇6
��D#N��Jn��v{�a�_���U�+u�U��8�����Q9�[;Ӆ^,ow��:������
=]��z�����!���V���Z�<c�\�D~D�d�k��5@)�U������Tw	��I�62(�0Q�#�'�w�1M���Y	[n��$�?��"�Ɠ@�#.��
e�����㰭4+�~���R��(���mQ�R����� �j���#�U��N �X�!�Y��eNw�ʑ){��XUP>M{�3�M��k�1{�%k�{�Wrc�R���e�.����r��Z�4����Pn
]�r^ܣj7�r���!��;��6ц�tmP�I��%w���R�ܛ����廯��F&���i�4��b�F��k����[a�6��a��D\��cW@|ﾡ�Щ�T�G�׉D��	�㓰M"�)�����d��+n�6�9yn�c�m:��r!${�PO��է�b�9y
���#���;	Q�p���Θg5M�F�d*�v_K�|a���(�D.�vN}44��t䲵�:�'����g�v���ʓs��>�x`�(R�� B,M"�.K��9�����0�mZ=Vw�6IlH�����b����L��1��'��JA�D������0ɝ�6�x�D�ΕNp�?҇�4m�B����nw_�Ĝ�fDq5���-���KҼ��L�)j�|�;F�6%�=l��<�u'r��T�*!l��y�7���w_�zb�	R��8U�xﵿ�t��S5��~A���cu=x�(�
]��bm�m ��=���7d��[JI=GXH�Ɉ�.�ĭ~/JZ��p�����KCja��Z_������C���p�����k3�z�lF��R&���Y�@���I�f�wj�b�?��B����#M} �igƍ��y����	X� gs�m��U���@�}y��k#��D
W`yw��w�6�p�.���p�!\Z^��U���+�"S~j`!� �q��C��<�����Xh�Өe$��+a!)�5�]��^d8ː&	[6�PDq�B�A�8�� �,�P]��(��2�Ц�@5��]9��@b�h��P-*�����!8�K|`O���n!�08��>��1|b{agNБ7�Q:g� ��0��l�~�
��S����&�b���ku�RgӶ�U������
3Jxs �� K�?Q-�I(@z����%��sS��6�{
��Q �3�����|��ga!p!�"�9���l��fQ����gʼz��6S������3�B�&�g�q|��au����N��p�(���#*���.4�}��
���L�w�o��U���tZ�"��b��y��}�,^u@���g������HlmM�zj����`�	*���˙�}+V;x�!�7_DX-�G��*��G�<:/�-���R!�1T/Dߣ�,ϩu���t��Cԇ�a>�,��A�<+�����`S�F�PaW����a�8���O:ǹ��Nˑ��8�� 
��z	���l�zc7�!+ �h>�}9a�����5�v���]����ӳ���!�RL$�����sǮG�tG� �e鳢� $ELG�ór���ޢ$sN� 	�~|^���T�*)�#�X�s���3�ɚ/!ox�� �l:�z���$d��~*�u#⼜]]7?���$��.e�;^�ҎV�`�G�l��Gt%ո���?�r3l�`�j��F7���I�V"`o(�;'��!Q��7��z+�_��n)��Rʫ��-�w��n�k�.�*��.o����z��R���%�Jȥk�Quwt*���h��
빀�v!縼�E'k�(�
v|����M�z�D��(�t$rTɴ���'�D	+���]�Ξ����Y�[1�>jP���)�j/<�%K�=�K����~Wz��	��{u��/o��>�e#3%���I]4۹, <E�b �g�'m�����r��ȃkA-̖[�</	|
��~"�����w+ݹ:-���RQ
��-e�Oi#�����ڝy ��Jz��ŭ��6�^nS��b,0M�R��CQ	��� ]:h��* ݹg�
��`�뵼��$[#+�
n(Ѕ �^�ѽq�	��5����1G�h=3J�@��D�djsO����H\��7�#��D�gkՉ��2/��5�N�;��>�0q��z� �2<�l��tS�^�voV��`�sepS�"�nx���F'�A�a窖p�6$��իq�;��'��G7h俻v����)��]��� � V�2y �0h0�)��2ה����R��~c �����1+5 �X˥� �V�$4����TLNeIw��G����9E�ɑw	ڋ�6� ��'R��Υ/*�  �i��u'gh?1@24�U����>�U�En.p�t�E�����#-�Uh�@5 �g:_5�1�ܷ�W��T#@��Y�̖�@�h�L ��j�B;$,�������d:��EW���SVGYztj˼B�o��"V�~��iI� ���`� ��!t{�~7{��8�k��+�� ��$2(��j�S����쭹�F�j���KL�q�[����C��s����<7�h��ÃVY<7n��Aύt���a�#�<>m��l�6X����-�}����}�?����=�a��4��8`n�ǧ?��H=>��qY=�;H�q�C���곟��T��=����P{�w\��vȷ��v'd��h$���c�=��^��ҥ}o��X��q|�{C$ �����h>D���q �>���f� ?z�>�;�����}ȶ��〳�>���q�փ�a/��E�� ��;��5Ɠ~�k�*�X?\�K�qO�~ട�� �}�<��8 j�����	���o�}���~������{�� �۶����ey��@�} 6� �  #9Pi?�N}�x�y0�%9p� �HGP��t��A��~2���ȃ��y�R ��@�)f���f��{(A`z����C� Bq����#iA z�䀞�� ��ey�9P�An�r&9���� 'n�yz�d>�r��A��G� C�'{)B�.;�#�Q�?G���!��I���<!�;�q�'�:�'�$������	y=����xB�B��yB���C<�h��P����P�p� O(Z�����I=����'�:�
�C<� ��
�̓<� *��'���yBp9�
˝�<O(\���yB�v(�gxB���mO(�����	���	E���#yB���� O(�(����p��P M�hr,O��0�'ĺ��	@�X�A8�'Dq��.��	!ҟ�	�7xB�:�'���yB��������p��'D��	�j/O(,iz�'D���
��A�P ���	��(�PП��	 �0O( Q���u�'�V��h��yBx:�'D�	��Q<!P���cO(�WG��Bן�	��1<!:�a�P�:�'�;�'A��;�
��Q<�:���yBt�}xBt.~{yB��<���Pq?O�>���X}�'!�	0l?O( a�xB�:�'���<� ��	�~�'a<�$�	E����"��<� FuO(�~�����b2��?$6�!         m  x�u�Mo�8�Ϛ_�So����1	6�ݢEѴ(
�EHԉѩx�t�__��{���$>�˗���8�i��^_4_��x�\M��0��Dk{��B-!�Pˆ�ᐺ��"�ҵc�kn�8��6��1>��	�g&p���hL�ωo�x$��s��.�v/�g���s�����c���J����%��8 �!IY�9G��$��t=��6���z	E`�d��Sw����s{d7��]���r�+��J�|�0��9�Z�m�vLJ���\�-"�p%�ͯv|N�1vw�N׷9tT�e_�il�H��"V���S�3g������T+���Pdmk�o.� �"x������tu���ȟByn�9s�|he:2�S�Id�4֞���YAk�=b	ٮl��������Mc��L�*A�pxsWy�}����i��9Ū�لli�Hi��@�W9ds7��*�`WY�C�gO��H*<_F)�~o��������$/���O�J��j˚��疃9�6.�yt���2�,�aHm��{E�\Tv����2)xpR!]�+�,-�vi�d} ����e�e:��'ѠuR�V� �2Hy_�,��!�6��|��Y�I#�葀	�G�o6�(�F������	���������l�������n��Y� =]���=�ql�&�P���:��w;��$��|�O�}�Rl�4�ć�Ѿܼ9�8�ͼ���i����)k�X�sT6))p�Zr�0Ԭ_��zL�S �V0�~^������F�@j����5��Z��g�x��齱�Ә��H��$sH� ���+��[���)�yLS���t:�T�l�C���I�;�l�S�@k0�=����n����\�         �  x�=�Q�� D�o{1�HB�e���g�v���iO%El���k�~����K]����z��@��ĉ���������^���u44�x�������vd�����ĉ�{/󉆆:&�ٞ(\�lh����tL�X����٫gv�����?�p]��aǁ����{��bo���[쭳��s�\���z>�}=q���>kMa����Ρ��6�+�H�T�b�D�08w�6�E*��z�9b'�����@���WB��I�^���ֿX�w	St�P�"��
--��]ˮeײkٵ�Zv-�Y�}L�拈�0EW��pE(R1����}���芡pE(R1�8˾3�6�������H�T��'X����m��
W�"SQ�E,-/-G�������H�     