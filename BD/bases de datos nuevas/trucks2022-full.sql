-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2022 a las 04:34:44
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trucks2022`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_empresa` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_cliente` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_lic_emp` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel1` bigint(20) DEFAULT NULL,
  `tel2` bigint(20) DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_cgpe` bigint(20) DEFAULT NULL,
  `ifta_number` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tax_id_number_ein` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de clientes o empresas';

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_empresa`, `nombre_cliente`, `direccion`, `numero_lic_emp`, `tel1`, `tel2`, `email1`, `email2`, `id_cgpe`, `ifta_number`, `tax_id_number_ein`) VALUES
(13, 'Interrpidisimo SAS', 'jose bohorquez', 'bogotá-col', '456', 456, 456, 'i@gmial.com', 'i2@gmail.com', 456, '456', '456'),
(14, 'Taxis Verdes', 'Lucia Gomez', 'bogotá-Col', '123', 123, 123, 'tv@gmail.com', 'tv2@gmail.com', 123, '123', '123'),
(15, 'Servientrega', 'julio delgado', 'bogotá-Col', '789', 789, 789, 's@gmail.com', 's2@gmail.com', 789, '789', '789'),
(16, 'Trans Quintero SAS', 'Aaron gomez', 'bogotá-Col', '987', 987, 987, 'tq@gmail.com', 'tq2@gmail.com', 987, '987', '987'),
(17, 'picap', 'pipe picachu', 'bogota-Col', '654', 654, 654, 'p@gmail.com', 'p2@gmail.com', 654, '654', '654'),
(18, 'mensajeros urbanos', 'pepito perez', 'bogotá-Col', '321', 321, 321, 'mu@gmail.com', 'mu2@gmail.com', 321, '321', '321'),
(19, 'All American Trading LLC', 'Sergio Rodriguez', '13444 NW 38th Ct Opa Locka FL 33054', '0', 7864999797, 7869999999, 'sergio@allamericantrading.us', 'none@gmail.com', 107, '999', '815464613'),
(20, 'CHGUIRE\'S UNITED CORP', 'FRANK PALOMINO ', '5211 SE 4TH ST CORAL GABLES, FL 33134', '455260900050', 3059879967, 786999999999, 'All1truck@gmail.com', 'none@gmail.com', 224, '0', '0'),
(21, 'VINOLE TRANSPORT INC', 'NORIEL NEGRIN BOBADILLA', '7535 W 14TH AVE HIALEAH FL, 33014', '134620773290', 7864845454, 7869999999, 'NONE@GMAIL.COM', 'none@gmail.com', 0, '0', '474925178'),
(22, 'COLVEN EXPRESS CARGO CORP', 'JOHN PIZA', '11434 NW 74TH TER MEDLEY, FL 33178', '00000000', 7863517737, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 0, '0', '843456748'),
(23, 'L B A W ENTERPRISES CORP', 'WILFREDO A BLANCO LORENZO', '816 NE 27TH ST BELLE GLADE, FL 33430', '452881643080', 7862163949, 7869999999, 'NONE@GMAIL.COM', 'none@gmail.com', 0, '0', '842974568'),
(24, 'TD LOGISTICS TRANSPORT LLC', 'Daniel J Lazarde  Ortiz', '4460 nw 107 th ave #106 Doral FL 33178', '263170803850', 4078376707, 7869999999, 'tdltllc.1@gmail.com', 'none@gmail.com', 0, '87397395201', '873973952'),
(25, 'BIG SIGNS INC ', 'JUSTO POZO ', '13117 NW 107TH AVE STE 4 HIALEAH GARDENS, FL 33018', '200420680270', 7862854885, 7869999999, 'NONE@GMAIL.COM', 'none@gmail.com', 0, '0', '473315282'),
(26, 'M&M TRANSPORT LLC ', 'MANUEL SOSA ', '26780 SW 140 AVE APT 316 NARANJA, FL 33032', '200540873720', 3058333672, 786999999, 'MMTRANSPORT2022@GMAIL.COM', 'none@gmail.com', 0, '0', '873973274'),
(27, 'SOSA CONNECTIONS SVC INC', 'YUNIOR AGUILAR SOSA ', '1317 NE 24TH TER CAPE CORAL, FL 33909', '22496081280', 7865090724, 7869999999, 'YUNIORSOSA81@YAHOO.COM', 'none@gmail.com', 134, '0', '851032858'),
(28, 'PRINCE OF THE ROAD LLC', 'PASCUAL REYES ESPERON', '9980 SW 51ST AVE OCALA FL 34476', '221660744640', 8436835342, 7860000000, 'PASCUALREYES3144@GMAIL.COM', 'NONE@GMAIL.COM', 103, '84352895901', '84352895901'),
(29, 'JOSE GONZALEZ CABRERA CORP', 'JOSE GONZALEZ CABRERA ', '825 SW 44TH AVE LOT A108 MIAMI, FL 33134', '522420673331', 7864938110, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 0, '0', '861489265'),
(30, 'FLORIDA STRUCTURAL STEEL ABD CONSTRUCTION, INC ', 'LAZARO LOPEZ L ', '19200 SW 106TH AVE UNIT 13 CUTLER BAY, FL 33157', '000', 78699999, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 198, '0', '814636847'),
(31, 'GONZALEZ DUMP TRUCKS LLC ', 'RAUL GONZALEZ ', '19578 NW 55TH CIRCLE PL MIAMI GARDENS, FL 33055', '0', 3055608990, 7869999999, 'GONZALEZ743123@BELLSOUTH.NET', 'none@gmail.com', 0, '0', '844873083'),
(32, 'AGUILA\'S KINGDOM', 'JOSE CARLOS AGUILA REINA', '2191 NAUSTRALIAN AVE APTO 409 WEST PALM BCH, FL 33407', '246423964120', 5615662079, 7860000000, 'AGUILAJOSE96@YAHOO.C0M', 'NONE@GMAIL.COM', 0, '87164918901', '871649189'),
(33, 'NOBA CAPITAL GROUP LLC', 'BRYAN CARTWRIGHT ', '10515 NW 30TH AVE MIAMI, FL 33147', '000', 3059753400, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 122, '0', '473781246'),
(34, 'ISO-K TRUCKING LLC ', 'ISAEL RIVERA ', '3540 32ND AVE NORTH #115 SAINT PETERSBURG,FL 33713', '160400944690', 7273368539, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 116, '0', '834064339'),
(35, 'FENIX.M.B.R.16 HAULING  LLC', 'MIGUEL A BALBEIRA PEREZ', '19810 NW 44TH CT MIAMI GARDENS FL 33055', '416541913440', 3053185553, 7860000000, 'FENIXMBR16@GMAIL.COM', 'NONE@GMAIL.COM', 0, '85428897401', '854288974'),
(36, 'GREYMAR INTERNATIONAL FREIGHT LLC ', 'HECTOR EDWARD ESCOBAR E', '9213 W 33RD WAY APT 12 HIALEAH, FL   33018', '216325743210', 3059789719, 786999999, 'HESCOBAR@GREYMARLOGISTICS.COM', 'none@gmail.com', 136, '0', '270679956'),
(37, 'GUERRERO SERVICES TRUCKING CORP ', 'EBERTO GUERRERO', '534 SW 67TH AVE MIAMI, FL   33144', '00', 3056076747, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 138, '0', '832205698'),
(38, 'G & V SAFE DRIVE CORP ', 'MAIKEL GONZALEZ J', '20111 GULFSTREAM ROAD CUTLER BAY, FL 33189', '00', 7862839479, 786999999, 'MAIKELGONZALEZ215@YAHOO.COM', 'none@gmail.com', 102, '0', '833310124'),
(39, 'RAUL PEDRAZA', 'RAUL PEDRAZA', '6134 EDWARDS RD MARGATE, FL 33063', '362726882040', 7864590753, 78690000000, 'RAPEZA1988@ICLOUD.COM', 'NONE@GMAIL.COM', 0, '88097482701', '880974827'),
(40, 'STM FREIGHT CORP ', 'MAIKEL ECHENENDIA ', '6340 NW ALE CT PORT ST LUCIE, FL   34983', '255540842220', 7862953850, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 124, '0', '811663151'),
(41, 'HAUL ME INC', 'MICHAEL JAMES EHRLICH', '23 SW 113 TH AVE APTO 101 MIAMI FL 33174', '642550911740', 3059842545, 7860000000, 'DISPATCH@HAULMEUSA.COM', 'NONE@GMAIL.COM', 0, '84396195301', '843961953'),
(42, 'N/A', 'AGUSTIN HERRERA ', '3909 MINDI AVE NAPLES, FL 34112', '660000653080', 9419791918, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 117, '0', '844001795'),
(43, 'LINH\'S BROTHERS INC ', 'OSHIN MYLINH DIAZ H ', '8607 LONGBOAT LN HUDSON, FL 34667', '000', 8135626247, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 118, '0', '0'),
(44, 'RAPID TRANSPORT TRUCKING & LOGISTICS SERVICES LLC', 'RICKARDO ANTONIO CHIN', '2452 NW175 TH TERRANCE MIAMI GARDENS FL33056', '500721891041', 7863150220, 7860000000, 'RAPITTRANSPORT2022@GMAIL.COM', 'NONE@GMAIL.COM', 0, '86334513101', '863345131'),
(45, 'PELAEZ CONNECTIONS SERVICES INC ', 'MANUEL PELAEZ LOPEZ E ', '1019 NE 8TH TERR CAPE CORAL, FL 33909', '424545704700', 2394404433, 786999999, 'MARIA1169@YAHOO.COM', 'none@gmail.com', 0, '0', '0'),
(46, 'ABL EXPRESS LLC ', 'ADRIAN RICARDO BARROSO L ', '424 FLEMING AVE GREENARCES, FL 33463', '624016872710', 8136790366, 78699999, 'ADRIANRBARRA@GMAIL.COM', 'none@gmail.com', 120, '0', '833431618'),
(47, 'CORDIE-ALONSO TRANSPORT INC ', 'YENIFEX ALONSO ', '501 SW 42ND AVE APT 119 CORAL GABLES, FL 33134', '452960968220', 3059865177, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 143, '0', '843768528'),
(48, 'LCG EXPRESS LLC', 'JORGE L CAPOTE', '1421 SW 124 TH CONCOURSE PLACE MIAMI FL 33184', '130432634010', 3052189918, 7860000000, 'JORGEC45@YAHOO.COM', 'NONE@GMAIL.COM', 0, '85420658601', '854206586'),
(49, 'COSTA ENGINEERING, CORP ', 'SAMIL COSTA ', '5561 E 2ND AVE HIALEAH, FL 33013', '0', 7862471775, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 146, '0', '842815065'),
(50, 'JOSE DELIVERY & TRANSPORT LLC', 'JOSE RODRIGUEZ F ', '412 W 15TH ST HAIELAH, FL 33010', '00', 7869851294, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 197, '0', '852545475'),
(51, 'SUNATY\'S TRUCK LLC ', 'YOANYS ARAGON L ', '3331 NW 177TH TER MIAMI GARDENS, FL 33056', '62560814410', 3055398915, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 201, '0', '0'),
(52, 'O & M DELIVERY CORP ', 'OYANTAY CUESTA H ', '6640 W 24TH CT APT 106 HIALEAH, FL 33016', '236640761010', 7865060248, 786999999, 'MARRONDO28@GMAIL.COM', 'none@gmail.com', 204, '0', '0'),
(53, 'ALPHA CONCRETE EQUIPMENT LLC ', 'RUFINO DANILO O ', '5181 NW 2ND ST MIAMI, FL 33128', '153724632709', 3053000173, 78699999, 'DANILOROB.OHANDO@GMAIL.COM', 'none@gmail.com', 162, '0', '842860405'),
(54, 'PACO WELDING CORP ', 'FRANCISCO ESCOBAR ', '1226 SHARAR AVE OPA LOCKA, FL 33054', '216240570920', 3053188008, 78699999, 'PACOESCOBAR0312@GMAIL.COM', 'none@gmail.com', 261, '0', '0'),
(55, 'GLE CARGO CORP ', 'NICOLAS ALEJANDO L ', '7941 NW 68TH ST MIAMI, FL 33166', '124621980300', 7869537370, 78699999, 'LOPEZ.LIENDO30@GMAIL.COM', 'none@gmail.com', 188, '0', '815076624'),
(56, 'CHICHIS ASAP  CARRIER LLC', 'MARIA DE LA CARIDAD VILLANUEVA', '143 DAKOTA  AVE GROVELAND FL 34736', '451544858320', 8637771004, 7860000000, 'CHICHISASAPCARRIER@GMAIL.COM', 'NONE@GMAIL.COM', 0, '87298269001', '872982690'),
(57, 'MAMAONWAY INC ', 'JUAN SERRANO M ', '3430 E 4 AVE APT 310 HIALEAH, FL 33013', '650433601450', 7862863209, 78699999, 'CHEASLEY47@HOTMAIL.COM', 'none@gmail.com', 185, '0', '0'),
(58, 'A ALEMAN LLC ', 'ALEXIE ALEMAN ', '107 STEPHANIE LN SEBRING, FL 33870', '455000702860', 7862173878, 78699999, 'ALEXIEALEMAN98@GMAIL.COM', 'none@gmail.com', 165, '0', '862950466'),
(59, 'AAL TRANSPORT CORP', 'LIVAN MONTES GONZALEZ', '17600NW 43 RD MIAMI GARDENS FL 33055', '532520962910', 3058494951, 7860000000, 'DELGADOMARTINEZJ036@GMAIL.COM', 'NONE@GMAIL.COM', 0, '8433970001', '84339700'),
(60, 'AGUILA EXPRESS CORP ', 'LESLI ALTAMIRANO CARVAJAL J ', '1701 N OLEANDER AVE DAYTONA BEACH, FL 32118', '000', 3863334846, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 235, '0', '0'),
(61, 'VIVIAN TRUCKING INC ', 'FRANK MESA MARTINEZ ', '2934 SW 35TH AVE MIAMI, FL 33133', '256260860590', 7868124960, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 177, '0', '0'),
(62, 'CARLOS DCM TRUCKING INC ', 'CARLOS CASAS D ', '5333 W 23RD CT HIALEAH, FL 33016', '000', 9567016217, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 176, '0', '824163421'),
(63, 'TONY- ISMARY & SON\'S INC ', 'ANTONIO LLANO C ', '13521 SW 272ND TER MIAMI, FL 33032', '524000712830', 3057216014, 78699999, 'LLANO823@YAHOO.COM', 'none@gmail.com', 212, '0', '0'),
(64, 'FDE CORPORATION ', 'FELIX HUGO CORDERO C ', '17310 NW 37TH CT MIAMI GARDENS, FL 33055', '636248732490', 7864987094, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 187, '0', '851049180'),
(65, 'RED FLOWER EXPRESS CORP', 'JOSE LUIS GARCIA', '8150 NW 186 TH TER HIALEAH FL 33015', '620432790500', 8135850066, 7860000000, 'REDFLOWEREXPRESSCORP@GMAIL.COM', 'NONE@GMAIL.COM', 134, '84467731001', '844677310'),
(66, 'ALEX6 TRUCKING CORP ', 'ALEXY GOMEZ HERRERA', '980 W 29TH ST APT 23 HOALEAH,F FL 33012', '526000833310', 3057964763, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 190, '0', '851055908'),
(67, 'VICENTE EXPRESS CORP ', 'ENGLIS VICENTE S ', '1851 FILLMORE ST HOLLYWOOD, FL 33020', '253200763400', 9549881643, 786999999, 'ENGLISVICENTESO@GMAIL.COM', 'none@gmail.com', 211, '0', '844122022'),
(68, 'RAYMOND EXPRESS INC ', 'MABEL RAYMOND ', '1285 W 76TH ST HIALEAH, FL 33014', '553540655090', 7865533270, 7865533270, 'MABELRAY65@GMAIL.COM', 'none@gmail.com', 160, '0', '0'),
(69, 'ERNEST TRANSPORTATION LLC ', 'YAONEL ERNESTO CHAVEZ M ', '19881 N HWY 329 MICANOPY, FL 32667', '125965961460', 7862638592, 7866197420, 'YAONEL.CHAVEZ17@GMAIL.COM', 'none@gmail.com', 184, '0', '831089674'),
(70, 'KAST FAST LOGISTICS', 'SANDY FERNANDEZ PEREZ', '1811 SW 107 TH AVE APTO 2303 MIAMI FL 33165', '655780923210', 7864270606, 78960000000, 'SANDY.FERNANDEZPEREZ@GMAIL.COM', 'NONE@GMAIL.COM', 100, '84272026301', '842720263'),
(71, 'LOPEZ TRUCK ONE CORP', 'MIGUEL ANGEL LOPEZ ', '5850 W 25TH CT APT 1 HIALEAH, FL 33016', '120541892160', 7869707249, 786999999, 'LOPEZ061689@YAHOO.COM', 'none@gmail.com', 135, '0', '834232208'),
(72, 'V I C M A G CORPORATION ', 'VICENTE AMAYA ', '1151 WHITE STONE WAY DAVIE, FL 33325', '00', 9542490319, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 207, '0', '651132013'),
(73, 'JZ TRANSPORT ', 'JAVIER ALEJANDRO ZAMARA ', '3211 NW 175TH STREET MIAMI GARDENS, FL 33056', '560421950190', 7867079207, 786999999, 'MARYFRANK95@HOTMAIL.COM', 'none@gmail.com', 115, '0', '0'),
(74, 'ALEXIS RODRIGUEZ ', 'ALEXIS RODRIGUEZ MARTINEZ ', '575 N CABBAGE PALM ST CLEWISTON, FL 33440  ', '362000740610', 5613583183, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 113, '0', '0'),
(75, 'A & Y EXPRESS LLC', 'ALAIN GUTIERREZ MEDINA', '11245 SW47 TH TER MIAMI FL 33165', '362000783501', 7866149589, 7860000000, 'AYEXPRESS@GMAIL.COM', 'NONE@GMAIL.COM', 0, '86259333801', '862593338'),
(76, 'CHALO TRANSPORT SVC LLC ', 'EMILIO MEDAL R SR ', '665 NW 152ND ST MIAMI, FL 33169', '340216561900', 7863437444, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 110, '0', '0'),
(77, 'YMCE TRANSPORT INC ', 'SERGIO RODRIGUEZ A', '18500 NW 42 PL MIAMI GARDENS, FL 33055', '362781831040', 3054845699, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 109, '0', '0'),
(78, 'SPOT ON HAULING CORP', 'ALEJANDRO BETANCOURT FERRAN', '10410  NW 74 TH ST DORAL FL 33178', '352000993220', 7869753108, 7860000000, 'SPOTONHAULING@OUTLOOK.COM', 'NONE@GMAIL.COM', 0, '87090059201', '870900592'),
(79, 'J & E WIRE CONNECTIONS SERVICES INC ', 'JOSE M CHAVEZ SIERRA ', '510 E 47ST HIALEAH, FL 33013', '126433851260', 2398877551, 786999999, 'NONE@GMAIL.COM', 'none@gmail.com', 108, '0', '0'),
(80, 'MASTERLINE TRANSPORT LLC', 'YOSDANY A HERRERA', '3501 SW 132 ND AVE MIRAMAR FL 33027', '452960842420', 3059303223, 7860000000, 'MASTERLINETRANSPORT@GMAIL.COM', 'NONE@GMAIL.COM', 283, '871895266', '87189526601'),
(81, 'RONNY TRANSPORTATION LLC ', 'ROLANDO BASTO LOPEZ', '8850 NW 36TH ST DORAL, FL 33178', '507071338', 0, 0, 'NONE@GMAIL.COM', 'none@gmail.com', 129, '0', '0'),
(82, 'NICOLAS TRANSPORT LLC ', 'NICOLAS GONZALEZ ', '901 EAST 32 STREET HIALEAH, FL 33013', '00', 0, 0, 'NONE@GMAIL.COM', 'none@gmail.com', 128, '0', '472951265'),
(83, 'ATOPS EXPRESS LLC', 'SAMAEL ALBORNOZ', '14901 SW 11 TH ST MIAMI FL 33194', '416780763890', 3057939471, 7860000000, 'SAM@ATOPS.AERO.COM', 'NONE@GMAIL.COM', 0, '85275233601', '852752336'),
(84, 'D&G FOOD DISTRIBUTORS CORP', 'OLVIER DUARTE H ', '4237 SW 48TH CT FT. LAUDERDALE, FL 33314', '630648713040', 9543059941, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 0, '0', '872797290'),
(85, 'LA LEYENDA TRUCKING CORP', 'ERIC MARMOL', '23065 SW 113 TH PSGE MIAMI FL 33170', '654200934210', 7863980217, 7860000000, 'LALEYENDATRUCKINGCORP@GMAIL.COM', 'NONE@GMAIL.COM', 0, '85181311301', '851813113'),
(86, 'J&J UNDERGROUND CORP', 'JOSE SOSA C ', '27705 SW 133RD PATH HOMESTEAD, FL 33032', '200423871650', 7866472678, 7869999, 'JJUNDERGROUNDCORP@GMAIL.COM', 'none@gmail.com', 0, '0', '853961239'),
(87, 'JAYRO TRANSPORT LLC', 'JOANSKA CHI ', '8803 BARCIN CIR RIVERVIEW, FL 33578', '000', 7872263253, 786999999, 'JAYROTRANSPORT@GMAIL.COM', 'none@gmail.com', 0, '0', '853306682'),
(88, 'ANTONIO MEDINA MONTANO', 'ANTONIO MEDINA MONTANO ', '7261 SW 158TH AVE MIAMI, FL 33193', '355000883090', 7869093903, 7869999, 'ANTONIOMEDINA2989@GMAIL.COM', 'none@gmail.com', 0, '0', '0'),
(89, 'JHOLIZ TRUCKING LLC ', 'JHOGER YORDAN MORET A ', '1445 SW 131ST AVE MIAMI, FL 33184', '634439851700', 3059888596, 78699999, 'JHOGEEMORE85@GMAIL.COM', 'none@gmail.com', 186, '0', '0'),
(90, 'FLORIDA BOBCAT & EXCAVATOR SERVICES LLC ', 'ARISMEL HARAMBOURES', '15611 NW 47TH ABE OPA LOCKA, FL 33054', '651000830280', 7863265566, 786999999, 'ARISMELSAGUA@GMAIL.COM', 'none@gmail.com', 189, '0', '863715082'),
(91, 'LOS REYES TRUCK INC', 'ELVIS REYES CASTILLO', '500 NW 62 ND AVE MIAMI FL 33126', '223200710520', 7864242899, 7860000000, 'ELVISREYES1971D@GMAIL.COM', 'NONE@GMAIL.COM', 0, '86308479801', '863084798'),
(92, 'LUIS RODRIGUEZ ', 'LUIS RODRIGUEZ', '2401 SW 132 AVE MIAMI, FL 33175', '0', 7865376882, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 192, '0', '0'),
(93, 'RICK CAST TRUCKING CORP', 'RICARDO JOSE CASTILLO', '3173W 77 PL HIALEAH FL 33018', '234730763090', 7865669224, 7860000000, 'RICKCASTILLO@HOTMAIL.COM', 'NONE@GMAIL.COM', 0, '83224654201', '832246542'),
(94, 'DMMTRAVEL LLC ', 'DAVID MESA ', '9911 W OCKEECHOBEE RD APT 109 HIALEAH, FL 33016', '0', 9566523882, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 191, '0', '474018427'),
(95, 'RISALEX HAULING LLC ', 'RICARDO CAINAS ALBERTO ', '7028 W HILLSBOUGH AVE TAMPA, FL 33634', '520721742480', 8133638161, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 194, '0', '471438050'),
(96, 'WEAVER XPRESS CORP', 'CRAIG LORAND SR WEAVER', '4500 SALISBURY ROAD SUITE 160 JACKSONVILLE FL 32216', '160112641900', 3053033925, 7860000000, 'WEAVERPRAISE@LLAOL.COM', 'NONE@GMAIL.COM', 0, '88057231601', '880572316'),
(97, 'SOUTHERN EXPRESS USA CORP ', 'GUILLERMO GINARTE E ', '9500 NW 77TH AVE STE 24 HIALEAH GARDENS, FL 33016', '563285663330', 3058461340, 7863423923, 'NONE@GMAIL.COM', 'none@gmail.com', 267, '0', '853135889'),
(98, 'NFWP TRUCKING CORP ', 'HECTOR PINEIRO M ', '6893 NW 179ST APT 112 HIALEAH, FL 33015', '0', 7864884895, 7869999, 'HECTORPINEIRO834@GMAIL.COM', 'none@gmail.com', 258, '0', '813408005'),
(99, 'S&S FUMIGATION INC', 'GEORGE HURTADO ', '565 SW 62ND CT MIAMI, FL 33144', '633300803020', 9546098144, 786999999, 'GEORGE.HURTADO@GMAIL.COM', 'none@gmail.com', 256, '0', '0'),
(100, 'ROAD RUNNERZ TRANSPORT LLC', 'JEAN BERNARD JR CLEMENT', '14380 NE 12 TH AVE NORTH MIAMI FL 33161', '455462923670', 3055494937, 7860000000, 'ROADRUNNERZTRANSPORT+305@GMAIL.COM', 'NONE@GMAIL.COM', 0, '85263860501', '852638605'),
(101, 'YORLEY DELIVERY INC', 'ORDIS LEYVA B ', '3443 SARLTON ARMS TAMPA, FL 33614', '13769222', 8136505493, 78699999, 'YORDISLEYVA68@GMAIL.COM', 'none@gmail.com', 164, '0', '0'),
(102, 'ALMORA ENTERPRISES CORP ', 'ELIEZER JIMENEZ A ', '1810 NW 172ND TER MIAMI GARDENS, FL 33056', '552200943070', 7863622010, 78699999, 'ELIZERJIMENEZ14315@GMAIL.COM', 'none@gmail.com', 163, '0', '0'),
(103, 'VIVIAN TRUCKING INC ', 'FRANK  MESA MARTINEZ', '2934 SW 35TH AVE MIAMI, FL 33133', '00', 7868124960, 78699999, 'NONE@GMAIL.COM', 'none@gmail.com', 158, '0', '0'),
(104, 'SWFL EXPRESS DELIVERIES LLC ', 'NIEL LABORI JR ', '220 SOUTH LAKE DR LEHIGH ARCES, FL 33936', '160620964060', 2398507876, 7869999, 'LABORINIEL@YAHOO.COM', 'none@gmail.com', 159, '0', '0'),
(105, 'ZORZAL CORP ', 'CARLOS GRELA A ', '2244 SW 24 ST MIAMI, FL 33145', '640426953630', 7862901187, 78699999, 'ZORZALEORP@GMAIL.COM', 'none@gmail.com', 157, '0', '263525780'),
(106, 'Motorola', 'ki quang', 'japon', '654654as', 654654, 6546546, 'm@gmil.com', 'm2@gmail.com', 54544, 'm545454', 'm545454');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles_trucks`
--

CREATE TABLE `perfiles_trucks` (
  `id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado_perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creacion_perfil` timestamp NULL DEFAULT NULL,
  `actualizacion_perfil` timestamp NULL DEFAULT NULL,
  `eliminacion_perfil` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de los perfiles de usuario del sistema trucks';

--
-- Volcado de datos para la tabla `perfiles_trucks`
--

INSERT INTO `perfiles_trucks` (`id_perfil`, `nombre_perfil`, `estado_perfil`, `creacion_perfil`, `actualizacion_perfil`, `eliminacion_perfil`) VALUES
(2, 'Colaborador', 'Inactivo', '2022-02-01 03:15:16', '2022-03-14 23:53:44', '2022-01-31 05:00:00'),
(3, 'Contabilidad', 'Inactivo', '2022-02-01 03:15:32', '2022-03-14 23:53:39', '2022-01-31 05:00:00'),
(4, 'Super Admin', 'Inactivo', '2022-02-01 03:14:37', '2022-03-31 10:21:53', '2022-01-31 05:00:00'),
(12, 'Desarrollador', 'Activo', '2022-03-14 23:53:16', '2022-03-21 21:03:40', NULL),
(13, 'Administrador', 'Inactivo', '2022-03-21 21:03:13', '2022-03-21 21:03:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor_servicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tiempo_servicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tiempo_desde` timestamp NULL DEFAULT NULL,
  `tiempo_hasta` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de todos y cada uno de los servicos que ofrece TRUCKS';

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre_servicio`, `valor_servicio`, `tiempo_servicio`, `tiempo_desde`, `tiempo_hasta`) VALUES
(12, 'Transporte Tecnologia', '11,112,115,241.00', '1 mes', NULL, NULL),
(13, 'Transporte Mercaderia ', '1,111,111,111.00', '6 meses', NULL, NULL),
(14, 'Transpote Textiles', '200,000,000,000.00', '3 meses', NULL, NULL),
(15, 'transporte barillas', '50,000', '1 month', NULL, NULL),
(16, 'Corporation Creation', '0', '1 year', NULL, NULL),
(17, 'Tax ID', '0', '1 year', NULL, NULL),
(18, 'DOT Creation', '0', '1 year', NULL, NULL),
(19, 'MC Creation ', '0', '1 year', NULL, NULL),
(20, 'DOT/MC Creation', '0', '1 year', NULL, NULL),
(21, 'Apportioned TAG App', '0', '1 year', NULL, NULL),
(22, 'Local Tag', '0', '1 year', NULL, NULL),
(23, 'Transfer', '0', '1 year', NULL, NULL),
(24, 'UCR', '0', '1 year', NULL, NULL),
(25, 'BOC3', '0', '1 year', NULL, NULL),
(26, 'NY Permit', '0', '1 year', NULL, NULL),
(28, 'NJ Permit', '0', '1 year', NULL, NULL),
(29, 'KY Permit', '0', '1 year', NULL, NULL),
(30, 'NM Permit', '0', '1 year', NULL, NULL),
(31, 'Prepass', '0', '1 year', NULL, NULL),
(32, 'VIN Verification', '0', '1 year', NULL, NULL),
(33, 'Mechanical Inspection', '0', '1 year', NULL, NULL),
(34, 'Road Taxes', '0', '1 year', NULL, NULL),
(35, 'Audit', '0', '1 year', NULL, NULL),
(36, 'IFTA', '0', '1 year', NULL, NULL),
(37, 'OTHER', '0', '1 year', NULL, NULL),
(38, 'Alcohol And Drugs', NULL, NULL, NULL, NULL),
(39, 'TELEFONOS', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_asignados_vehiculos`
--

CREATE TABLE `servicios_asignados_vehiculos` (
  `id_asignacion` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `fecha_inicio_serv` date NOT NULL,
  `fecha_fin_serv` date NOT NULL,
  `valor_servicio_asignado` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='tabla exclusiva para los servicios asignados a cada vehiculo';

--
-- Volcado de datos para la tabla `servicios_asignados_vehiculos`
--

INSERT INTO `servicios_asignados_vehiculos` (`id_asignacion`, `id_vehiculo`, `id_servicio`, `fecha_inicio_serv`, `fecha_fin_serv`, `valor_servicio_asignado`) VALUES
(27, 8, 38, '2022-06-01', '2023-07-02', '5,500.00'),
(28, 15, 38, '2022-05-31', '2023-06-25', '10,000.00'),
(29, 13, 38, '2022-05-09', '2022-05-09', '2,500.00'),
(30, 11, 38, '2022-05-10', '2022-06-10', '3,500.00'),
(31, 14, 38, '2022-05-14', '2023-06-14', '4,560.00'),
(32, 17, 38, '2022-05-20', '2022-06-20', '3,521.00'),
(33, 9, 12, '2022-05-09', '2022-06-09', '2,500.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_trucks`
--

CREATE TABLE `usuarios_trucks` (
  `id_usuario` int(11) NOT NULL,
  `identificacion` bigint(20) DEFAULT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pass_usu` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol_asignado` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `crea` timestamp NULL DEFAULT NULL,
  `actualiza` timestamp NULL DEFAULT NULL,
  `elimina` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='usuarios que daran uso al sistema junto a los roles de usuario';

--
-- Volcado de datos para la tabla `usuarios_trucks`
--

INSERT INTO `usuarios_trucks` (`id_usuario`, `identificacion`, `nombres`, `email`, `pass_usu`, `telefono`, `direccion`, `rol_asignado`, `estado`, `crea`, `actualiza`, `elimina`) VALUES
(16, 1119217998, 'Jose Bohorquez', 'bd@gmail.com', 'abc123', 3178773186, 'Col-Bog', 'Desarrollador', NULL, '2022-03-24 20:56:37', '2022-03-25 23:20:13', '2022-03-24 20:56:38'),
(17, 1, 'daniel', 'admin2022@trucks.com', 'abc123', 1, '?', 'Administrador', NULL, '2022-03-25 23:20:00', NULL, NULL),
(18, 2, 'Natali Navarro', 'info@allin1truckservices.com', '13027789$', 7866028391, 'Hiealeah', 'Administrador', NULL, '2022-04-25 11:31:27', '2022-05-05 10:44:58', NULL),
(19, 1, 'maria marquez', 'maria1169@yahoo.com', 'Maiam1169', 2392037820, '2314 Adam Street Apt 302 Hollywoord, Fl 33020', 'Colaborador', NULL, '2022-05-05 10:51:23', NULL, NULL),
(20, 2, 'Dania Navarro', 'daniagemela@gmail.com', '1075isabella', 3058157789, '9255 NW 121 Terrace  Hialeah Gardens, Fl 33018', 'Colaborador', NULL, '2022-05-05 10:52:44', NULL, NULL),
(21, 3, 'Marielis Peralta', 'marielisperalta5@gmail.com', 'Junior20!!', 7863109171, '14601 NW 135 St Hialeah, Fl 33018', 'Colaborador', NULL, '2022-05-05 10:54:03', NULL, NULL),
(22, 1119217998, 'Yosef Strong', 'ys@gmail.com', 'abc123', 3196866820, 'bg/col', 'Desarrollador', NULL, '2022-05-10 02:23:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `placa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `year` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vin_numer` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `costo_vehiculo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dote_number` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pendiente1` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pendiente2` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pendiente3` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `asignado_empresa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `servicio_asig` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serv_desde` date DEFAULT NULL,
  `serv_hasta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de los vehiculos registrados en la plataforma';

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `placa`, `modelo`, `year`, `vin_numer`, `costo_vehiculo`, `dote_number`, `pendiente1`, `pendiente2`, `pendiente3`, `asignado_empresa`, `servicio_asig`, `serv_desde`, `serv_hasta`) VALUES
(8, 'ABC123', 'MARK ANTHEM AUTOMATIZADA', '2022', '123', '70,000,000', '123', 'motor MP8 440C', 'capacidad 52000 kg', 'transmision Semiautomática', 'Interrpidisimo SAS', 'actualmente Tiene Asignado el servicio: ( actualme', '0000-00-00', '0000-00-00'),
(9, 'DEF456', 'MACK ANTHEM TRACTOMULA ANTHEM', '2022', '456', '8,388,607', '456', 'Marca del motor MP8 440C', 'Capacidad de carga 52000 kg', 'Transmisión Mecánica', 'Trans Quintero SAS', NULL, NULL, NULL),
(10, 'GHI789', 'Scania', '2020', '789', '8,388,607', '789', '40mil km', 'sin info', 'transmision mecanica', 'mensajeros urbanos', NULL, NULL, NULL),
(11, 'JKL987', 'internacional', '2012', '987', '8,388,607', '987', 'sin info', 'sin info', 'sin info', 'Servientrega', NULL, NULL, NULL),
(12, 'MNÑ654', 'Mercedes-Benz Atego 1726 Largo', '2023', '654', '8,388,607', '654', 'Marca del motor Mercedes Benz', 'Capacidad de carga 11780 kg', 'Transmisión Mecánica', 'picap', 'Transporte Mercaderia ', '2022-04-01', '2022-05-01'),
(13, 'OPQ321', 'kenworth t800', '2012', '321', '8,388,607', '321', 'Kilómetros	111111 km', 'sin info', 'sin info', 'Taxis Verdes', NULL, NULL, NULL),
(14, 'RST147', 'Chevrolet 	NPR 729', '2007', '147', '8,388,607', '147', 'Kilómetros	307335 km', 'Transmisión	Mecánica', 'sin info', 'Servientrega', NULL, NULL, NULL),
(15, 'QFW053', 'NPR Chevrolet ISUZU', '1995', '2580', '100,000', '2580', 'Transmisión	Mecánica', 'Kilómetros	405000 km', 'Marca	Chevrolet', 'Interrpidisimo SAS', 'Transporte Alimentos', '2022-03-26', '2022-04-26'),
(16, 'WOX621', 'CHEVROLET NPR', '2017', '3690', '8,388,607', '3690', 'Kilómetros	241000 km', 'Capacidad de carga	10500 kg', 'SIN INFO', 'Trans Quintero SAS', NULL, NULL, NULL),
(17, 'THX287', 'CHEVROLET NPR', '2012', '7890', '8,388,607', '7890', 'Kilómetros	435000 km', 'Transmisión	Mecánica', ' Dirección: Hidráulica', 'Servientrega', NULL, NULL, NULL),
(23, '545454', '5454', '5454', '545454', '54,544,545,454.00', '545454', '545454', '545454', '545454', 'mensajeros urbanos', NULL, NULL, NULL),
(24, 'JD45FV', 'PTRB', '2007', 'INP5DU9X87D666052', '000', '3369356', '000', '000', '000', 'HAUL ME INC', NULL, NULL, NULL),
(25, 'JC22CX', 'FRHT', '2015', '3AKGGLD56FSGC1862', '000', '3716220', '000', '000', '000', 'RAPID TRANSPORT TRUCKING & LOGISTICS SERVICES LLC', NULL, NULL, NULL),
(26, 'JD38KQ', 'PETERBILT', '2018', '1XPBD49X6JD442486', '000', '3576361', '000', '000', '000', 'LCG EXPRESS LLC', NULL, NULL, NULL),
(27, 'KB40AD', 'RAM', '2016', '3C63RRJL4GG290501', '000', '3739017', '000', '000', '000', 'CHICHIS ASAP  CARRIER LLC', NULL, NULL, NULL),
(28, '-----', '----', '----', '-----', '-----', '3678030', '000', '000', '000', 'AAL TRANSPORT CORP', NULL, NULL, NULL),
(29, '-----', 'FRHT', '2014', '1FUJGLBG7ELFM4590', '000', '03399746', '000', '000', '000', 'RED FLOWER EXPRESS CORP', NULL, NULL, NULL),
(30, '----', 'VOLV', '2011', '4V4NC9EJ3BN296385', '000', '3327321', '000', '000', '000', 'KAST FAST LOGISTICS', NULL, NULL, NULL),
(31, 'JD23LC', 'FRHT', '2014', '3AKJGLD54ESFZ0930', '0000', '3615156', '000', '000', '000', 'A & Y EXPRESS LLC', NULL, NULL, NULL),
(32, 'MB41DH', 'RAM', '2021', '3C7WRLFL0MG642287', '000', '3652289', '000', '000', '000', 'SPOT ON HAULING CORP', NULL, NULL, NULL),
(33, 'JC93CL', 'VOLV', '2014', '4V4NC9EH5EN161555', '000', '03722218', '000', '000', '000', 'MASTERLINE TRANSPORT LLC', NULL, NULL, NULL),
(34, 'JC20CCX', 'KW', '2015', '1XKYDP9XXFJ436698', '000', '3479030', '000', '000', '000', 'ATOPS EXPRESS LLC', NULL, NULL, NULL),
(35, 'JC62YX', 'FRHT', '2005', '1FUJBBCKX5LU78450', '000', '3451858', '000', '000', '000', 'LA LEYENDA TRUCKING CORP', NULL, NULL, NULL),
(36, 'JC63QI', 'FRHT', '2016', '1FUJGLBG7GLHH1633', '000', '3747983', '000', '0000', '000', 'LOS REYES TRUCK INC', NULL, NULL, NULL),
(37, 'JCO9QK', 'PTRB', '2016', '1XPBDP9X8GD325907', '00', '03745995', '000', '000', '000', 'RICK CAST TRUCKING CORP', NULL, NULL, NULL),
(38, 'JD63FV', 'VOLV', '2011', '4V4NC9EJ6BN298230', '000', '1852080', '000', '000', '000', 'WEAVER XPRESS CORP', NULL, NULL, NULL),
(39, 'JD29GB', 'FREIGHTLINER', '2018', '3AKJHHDR7JSJW9210', '000', '03790798', '000', '000', '000', 'ROAD RUNNERZ TRANSPORT LLC', NULL, NULL, NULL),
(40, 'All American Trading', 'Not Apply', '2022', '0', '0', '0', '0', '0', '0', 'All American Trading LLC', NULL, NULL, NULL),
(41, 'JC25DP', 'FRHT', '2012', '1FUJGLDR0CSBD6820', '7500', '3783421', '00', '00', '00', 'TD LOGISTICS TRANSPORT LLC', NULL, NULL, NULL),
(42, 'JC77DA', 'FRHT', '2006', '1FUJBBCK16LU58167', '1000', '3679889', '000', '000', '000', 'PRINCE OF THE ROAD LLC', NULL, NULL, NULL),
(43, 'JD37FZ', 'FORD', '2017', '1FDOW5HT3HEFO7656', '000', '3777976', '000', '000', '000', 'AGUILA\'S KINGDOM', NULL, NULL, NULL),
(44, 'JC89ZC', 'PTRB', '1998', '1XP5DR9X5WN461980', '000', '3536428', '000', '000', '000', 'FENIX.M.B.R.16 HAULING  LLC', NULL, NULL, NULL),
(45, 'ME29CP', 'DODG', '2021', '3C63RRGL3MG195219', '000', '000', '000', '000', '000', 'RAUL PEDRAZA', NULL, NULL, NULL),
(46, 'A5S4A5S4', '5a4s5a4s54', '5454', '54545454', '5,454,545,454.00', '5454545454', 'KO', 'KO', 'KO', 'Motorola', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `nombre_empresa` (`nombre_empresa`);

--
-- Indices de la tabla `perfiles_trucks`
--
ALTER TABLE `perfiles_trucks`
  ADD PRIMARY KEY (`id_perfil`) USING BTREE,
  ADD KEY `nombre_perfil` (`nombre_perfil`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `servicios_asignados_vehiculos`
--
ALTER TABLE `servicios_asignados_vehiculos`
  ADD PRIMARY KEY (`id_asignacion`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `usuarios_trucks`
--
ALTER TABLE `usuarios_trucks`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `rol_asignado` (`rol_asignado`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`) USING BTREE,
  ADD KEY `asignado_empresa` (`asignado_empresa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `perfiles_trucks`
--
ALTER TABLE `perfiles_trucks`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `servicios_asignados_vehiculos`
--
ALTER TABLE `servicios_asignados_vehiculos`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuarios_trucks`
--
ALTER TABLE `usuarios_trucks`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `servicios_asignados_vehiculos`
--
ALTER TABLE `servicios_asignados_vehiculos`
  ADD CONSTRAINT `FK_servicios_asignados_vehiculos_servicios` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_servicios_asignados_vehiculos_vehiculos` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id_vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_trucks`
--
ALTER TABLE `usuarios_trucks`
  ADD CONSTRAINT `FK_usuarios_trucks_perfiles_trucks` FOREIGN KEY (`rol_asignado`) REFERENCES `perfiles_trucks` (`nombre_perfil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `FK_vehiculos_clientes` FOREIGN KEY (`asignado_empresa`) REFERENCES `clientes` (`nombre_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
