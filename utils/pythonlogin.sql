-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 10:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pythonlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `nombre`, `apellido`, `localidad`, `usuario`, `password`) VALUES
(1, 'Martin', 'Galvan', 'Cañuelas', 'm.galva', '1234'),
(5, 'Caro', 'lopez', 'caba', 'clopez', '12345'),
(8, 'lorena', 'lopez', 'caba', 'lolopez', '12345'),
(11, 'Nico J.', 'Petrecca', 'Saenz Peña', 'NicoP', '12345'),
(12, 'leonor', 'perez', 'saenz peña', 'leonorP', '12345'),
(13, 'Juana', 'Lopez', 'Caba', 'Radich', '12345'),
(14, 'leon', 'sarasa', 'caba', 'leon', 'lalala'),
(15, 'julian', 'perez', 'Saavedra', 'julianP', '12345'),
(16, 'oliverio', 'petrecca', 'caba', 'oliveralbo', 'micaela03');

-- --------------------------------------------------------

--
-- Table structure for table `avisos`
--

CREATE TABLE `avisos` (
  `id` int(11) NOT NULL,
  `idAdministrador` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publicacion`
--

CREATE TABLE `publicacion` (
  `idPublicacion` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `tipoPublicacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipoMascota` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombreMascota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ubicacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` longblob NOT NULL,
  `fecha` date DEFAULT NULL,
  `mensaje` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publicacion`
--

INSERT INTO `publicacion` (`idPublicacion`, `idUsuario`, `tipoPublicacion`, `tipoMascota`, `nombreMascota`, `color`, `edad`, `sexo`, `ubicacion`, `calle`, `foto`, `fecha`, `mensaje`) VALUES
(1, NULL, 'perdida', 'perro', 'Albo', 'negro', '17', 'macho', 'monte castro', '', 0x6e6f, '2022-05-22', 'collar azul'),
(2, 16, 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', '', 0x616161, '0000-00-00', 'aa'),
(3, 15, 'aaa', 'aaaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaa', '', 0x61616161, '0000-00-00', 'aaaaaaaa'),
(4, 12, 'perdida', 'perro', 'albo', 'negro', '17', 'macho', 'devoto', '', 0x6e6f207469656e65, '0000-00-00', 'collar azul'),
(5, 12, 'encontrada', 'gato', 'radi', 'negro', '10', 'hembra', 'caba', '', 0x6e6f, '2022-05-27', 'no'),
(6, 12, 'perdida', 'mono', 'donki', 'marron', '3', 'macho', 'lomas', '', 0x6e6f, '2022-05-27', 'no hay'),
(7, 12, 'perdida', 'perro ', 'juan', 'marron', '3', 'macho', 'floresta', '', 0x666f6e646f332e6a706567, '2022-06-22', 'estaba en la plaza'),
(8, 12, 'encontrada', 'loro', 'pepe', 'verde', '2', 'macho', 'villa del parque', '', 0x69636f6e6f312e6a7067, '2022-06-23', 'no'),
(9, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(10, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(11, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(12, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(13, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(14, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(15, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(16, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(17, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(18, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(19, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(20, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(21, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(22, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(23, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(24, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(25, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(26, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(27, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(28, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(29, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(30, 12, 'perdida', 'loro', 'pepito', 'verde', '3', 'hembra', 'caba', 'liniers', 0x63616c63756c61646f722e6a7067, '2022-06-26', 'nada'),
(31, 12, 'perdida', 'aaa', 'aaa', 'aaa', 'aaa', 'macho', 'caba', 'aaa', 0x64657363617267612e706e67, '2022-06-26', 'aaa'),
(32, 12, 'perdida', 'perro', 'lolo', 'verde', '2', 'macho', 'zonaNoroeste', 'springolo y ameghino', 0x63616c63756c61646f722e6a7067, '2022-07-08', 'se perdio con collar verde'),
(33, 12, 'perdida', 'perro', 'lolo', 'naranja', '3', 'macho', 'zonaOeste', 'san y san luis', 0x63616c63756c61646f722e6a7067, '2022-07-08', 'collar verde'),
(34, 12, 'perdida', 'perro', 'albo', 'negro', '2', 'macho', 'zonaNoroeste', 'springolo y roque saenz peña', '', '2022-08-14', 'no hay mensaje'),
(35, 14, 'encontrada', 'Caballo', 'lolo', 'marron', '2', 'macho', 'caba', 'sarmiento y libertador', '', '2022-08-14', 'se perdio hoy'),
(36, 8, 'perdida', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqq', '2', 'macho', 'zonaNoroeste', 'qqqqqqqqqqqqq', '', '2022-08-09', 'qqqqqqqqqqqqqqq'),
(37, 8, 'encontrada', 'perro', 'walter', 'cremita', '4', 'hembra', 'zonaOeste', 'libertad y roque', '', '2022-08-15', 'ddd'),
(38, 8, 'encontrada', 'iiiiiiiiiiiiiiiii', 'iiiiiiiiiiiiiiii', 'iiiiiiiiiiiiii', '66', 'macho', 'zonaOeste', 'iiiiiiiiii', '', '2022-08-15', 'teye'),
(39, 8, 'encontrada', 'iiiiiiiiiiiiiiiii', 'iiiiiiiiiiiiiiii', 'iiiiiiiiiiiiii', '66', 'macho', 'zonaOeste', 'iiiiiiiiii', '', '2022-08-15', 'teye'),
(40, 8, 'perdida', 'wwwwwwwwwwww', 'wwwwwwww', 'wwwwww', 'wwwwwww', 'macho', 'zonaOeste', 'wwwwww', '', '2022-08-23', 'wwwwwww'),
(41, 11, 'encontrada', 'aaaaaaaaa', 'aaaaaa', 'aaa', 'a', 'macho', 'zonaOeste', 'aaaaaaa', '', '2022-08-23', 'aaaaaaaa'),
(42, 12, 'perdida', 'perro', 'pepo', 'marron', '14', 'macho', 'zonaNoroeste', 'allalala', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161515181515161818181818181818181818151818181818181919181818181c212e251c1e2b2118182638262b2f313535351a243b403b343f2e343531010c0c0c100f101f12121e342b252b3631343134343134343434343434343434343434343434343434343434343434343434343434343434343434343434343434ffc000110800b7011303012200021101031101ffc4001b00000202030100000000000000000000000405030600010207ffc4003d1000010302040207060405040301000000010002110304051221314151061361718191a114223242b1c11552d1f02362a2e1f13343829207537216ffc400190100030101010000000000000000000000010203040005ffc400261100020202020105000203000000000000000102110321123141041322516114b1324271ffda000c03010002110311003f0064f666039216e2ca46c99d8c11253165b821781c9b67a0d144af69060a9ada8884ef15b51280a0cec54e42340352841942d7dd35b8625572f85a22ed007f8637dd09dd31eea4b8554f7404d83f4534fb382ede9ca36952083b63a2654542ee4131ad85156ac0044bc24d7f4ddaeab445d010062178350127af554d78e8dd07504f05a632b473542ab9e286a3464ab258e0c1fabe63927d6f805102320ef93faaa2128ab5bbc0d0a6432912ac74f00a43e41e3afd54ff00835203e01e495c5b0a74541cc6f25cb2ec374d3cd5b8e12cfca1686174ff00237fea14de2b1f9145bec4c6da79a46eb9932bd59d84d3fc8dff00a84354e8ed17ef4dbe413471a40e4cf3ea7742169b71257a1b3a256e7e45b3d10b61f21f328f00bc8fa282d748415cb95df10e8cb47fa64b4f23a853e1fd12a447be0bcf19240f00134744e5dd9e6fd6c14d2c712cbb95e8e3a15687fdafea77eabb6742ad07fb63cca2e1618e4712b361d26634438f8ea8f774ba901f1cf7029e8e88db7feb1e414353a1d6c7e48eed10e324739a6caf54e95b0ed2508cc7f3ba1594f42adbf29f32bb67446ddba869f35dc64372895fa97598288395a1fd1da7dbe6a17602c1cfcca64a89b77d09da56273f84b391f32b689db06a1605a374c693606ab551f94219f740e80af3e58d4765d307c518084be830153dfbceca6b2608507d9ccaedf3c824424579515eaf6c83a553b15c35d2616884974c47d0c704ad99a159281d152703a858d2d3a10e33f656ec26a66536ea4d022ed0ca803c91d41cee488b2604c594427860e4eece72a03c8ee482bab673b82b0862c2c0b52f4ffa4f995ab1c1db39dedccee00ec077734dfd95b119479260d62ec53578c2950ae62175a35a74014ad604d9f41bc5722d19c93713b98b8382ecc239d68cdb2841d4c287cae3dc7f541c5854910ba173a28ea583c734355b678dc14ac6b0d9078a9e9b1a9453a4660ca6b6d43bd0406c2d94c2e9d482e5b4fb4adc76a7003d5b5695d51a006ca421705bc8a141b270174817d379d9c50afa35783cfa23c8143895c9489ecb8e0ff40b74ea561f13bd10e5f87711ee55cb98806577f12b8ab74e1c51b41e2c2de10cf2129b9bf78f992cad88bff325b0f458f385b551f6f7fe73e8b4ba8eb2c152997859470d84ce8d30880c58945cbb2ae5421b9b1d3641506e5d159ead394b2bd96b214a70a3aec09cf0955eb01329ad7b5296d7691a10a4e540b2ad8830b1d99be2a5c17192d7c384047dd509dc25afb100c84f169ad98b24a5195a3d1b0ebf61020a6ecba6f35e5b6b51ccd8909bd0c41fcd34734a2523994bb3d01b74d2606fc910c33c157f047d3304b8bde6746cc7701c476980acad10368f55e8e194a51b91d26bc1994043d5bb6b4c4807b546fbc6b734988d8713db1c025d66d2f79aae1a7ca3ee02772e944651f2c7ad1a4a89f5bfca8ea5c7bbc928ad880698ed4653510462d8d9d5c0439ae674280ebe44ca85d575dd0e63712c542e330ed534cf055ab7bc2d32130a5891892994908e2c3df6ec719813cd4629421bdaf32ecdd10d9de1738a7b0ab44c428de0a92daa878e47b16df4a14e5756864f74c5ef2ee656e93cf6a21cc5c862cef2343d1234ac2b995c9251f79028d3ca0ae2a423082a1a942782e7991d424b9bf7b763e895d7c65fcc792b1d6c303b804154c0187e50a2fd4fe30494bc15d7e205db9503ae82b0bba36ce4a3774699c8f9ae5ea97e9271c857fda16277ff00e607f379ad27fe547f45e393e8b6b1ca50f4b9954a9d8f952590d8d0439ea2715b6ad90b9b723812a041d6a00a2eb388433deb2c9ec0c51756a128af6faab1d732817d0cc639a09b44724390b2c70e7d4706b1a5c7c87892add63d13020d57cf36b447f51465b5365ad091abdda4ef2790ec492d719797b9ce74c12d006b99df940d8af431e28c6b96dff42430eacb5db9a54c8a74da01e4d1af7b9dc5137958318e738c06892aaf835c1eb0b9c493c4004924ec01fba3fa617992dcf37103eeb539541b45143e490a2ceaf58fd75cc49777056a2e0d64f20a9dd1f7c31a789fb7ec9f14e311a8e7b0b0122470dd4f13a8d94c8ae456fa4dd300c2ea74dae7bc6ae0d21ad60fe6799d7b155f06e92bea566b1e2266350781e2a1c5302af6e5f91d21e4174c9cd96627cce86524b0b0a9d648690e1a88e0674f545c6325bec55269d25a3d4e8d6275cd28c6ba62529c0ec9ed60eb2438eb12263b4a76d6468961163c9a237be163aec00b2ad390557713c41acf75dc8e9c74dfd25749c974745263da1890cf078a756f52411320af191d29735e5d9333018982481d8657a8747b10656a61cd2082241fa84f8dc96a424b8bda1b61f7218fca78ec9cd47e9a7eaa9b8a3cb1ed23629de1b7d99bba319edc581c6d2912baedb3bac174de690748ad5f9f353744ea47e894329561bb8af332ca71934d8af234ea8bc36b34f152078547179519f1094452e90b468e31df292399fd07dd5e745cc10b6ab3431f61f9823998ab4f11e6a8b3af286528be98de166440331069e2a5176de69d66831827205aead462e0735beb977381c6fab58b5d6ac5dca01026d25d86295a1779572886c89a54a16b2ae9a115a01c3a94a85f6a0f045872dc842508b38535b0ee487a5610e12275db61e253c2b41814bdaa969828131d68eab34c65076e1223454ee8fb43b3bcecd258c1ea63bcf1fd15df10b6cf4dcce60c792a260ed345ef63a7499ed24c0016d6f69b1a2be2d0e6dab43d8d1b174b9d31ff001087ff00c8f88886d31b365e47681a4a92da97f11a4ef209e424e8d0abdd3c7c5c341f98b3cb38d11949b8d7e862972bfc2d1d1cb7c94999be2ca27b091b23dcfd617164e8603d8a304b9deeea5516a29137b6d825cb4931beb07fba26c30c63752066dc0d2076947d1b5008d25dbc72ef47d3b58df73fbf24f18f962b9008b5e3f4586de3984d2a58cf13f64b6e2a318eca6ab07f28209f254a2760d56969a2a274d70d25a6a8907296c70246de8bd118f07620a0315b50f639a47094b28f91e32f0786510f63c1c876ca34d3504498ef2aff00ff008ceb90d7b0e995c481c0076a23c8a64cc36938c398dd38c2676d68ca3f0340d3846ddb0a6e7618c2992e38ef75878e68faa13a397ae78710661c411fbd8a5fd2ac432d36c1d6730ff88457451934f39897924c69af352bb9da2c954765b7307b6388e1a19097b98a065e06bf78823c09d9138954d0546edb3c7277d94fd563e71e4bc124e88dd6a0a1eae0ec76ed0a6b6bc051eca80af3d241a8cbb2bf53006700477151fe0d1b3dc159890a27008317da8fd15ff617b76795d4d46f194e9cd0a3c814ed9dc12e856dbb78e0548dc49dc414c3a80b3d8c1e085869fd80fe287b5623bf0e1c962eb6754866d2a40e50b42e96fba28c9656895c858507238d972e4b97402c7352b6ce3815176d7a82a18503ae028fb8d33866da8abbd21c3bdf15583598776a3a9d6929957a5fc3f7b72b66094b2a69f817971657dacca5a4ef12a9fd3d39ae68379907faa7ecadf7d53de0279c9ec10a9d8b3facbea237caccc7b2498faabb75a192f25d29bfdc68ec47db53c8047c4ef4081b360300993f9470ef77f94d0bc121a3d15a1b564e41368d820f3f340748711ea00aa49caddc0125dc9a022eb3c020cc06eaa9bd3cc483981a74124fc5ef0d23503bf655b13f4a3f483a717359e7df73593a31a6001c881ba54dc49e35cc6774beb0666248d6765097e6264c4a36fc09d97be8e74c21d91e75e067d0f35e994ea87b439ba8201f02178161166f7d46b1a4493a46abdd309664a51f9591e4345ce57d9d1542ab8a596a16faf30532a0dd35415c99735fcf444b5f0d256454a4cd2fa479f749ea1370ea7c00d3c7fc2b9f465996d593fbd5506fab75972f701273068fea1f757cb9269db437421b3fa95d0d3b1e5b8d035f3cf5d1bb5eddb9ce847d135b4c4435ae6d400c0caf07e68f84f7911e292517f58d6b8e8e683e3a09f5097e3777fc431b38007c37f1d7d1773ab60e37a658ee2d83467a6e961f36cf03faad32e88e2a4c15e45233a823cc46a925c5c41201d2745833c1269c7cf83364ac6c746ff995af6fed55aa97256d974b3f1643f93ba2c3eda7815db2f9c94dbd5051b4c25712b19b7e4694f101c51b46eda522ead774da4205536597ae6ac4924ac4d635b1e31cbacc81a75b45b7dcc2bf3d0f61d9d607a5352f56e8ddcf14bcd82c74d2ba840b2e8295b701554a3e4eb3ba8c94155b547b5f2b79523c6a5d1c71865986fbc77e0392eee6b6671683a01eabaacec8c31b909154bbca1d0bd48c638e092122add8971f6bdcecacd399ecd67ea92db31c6e1d5a37018d3d8dd27c753e28db9bc7b8904e9c7f7c51568d1c786c16494ade8d35487b604318e7bb96806f038f621fa378a9aaf787e5194c863770d3b179de4ef07f50237562e63c0dc831dfc150b05c74db5c64f91aff00e2389f79ef73a0b9c4fca24e9f55ae1b4abc19a5abb3d4314b83acebc86c3b340bcc7a6172e73e3ddf74192278fefd15ff0011bc6650fcda65cc0f31cc782f3ae935d5271d4f1d40dcec4fdbc93f2f9501c7e2556b33cd42ca64f629ab5e341f744edbfaa929333896ee4ebd8a96d22639e8a5b7f101d7c39af5db0f800e7a2f30e8b5b39ae0ed4411a8e7b1057a55a56cad2e246500924f0812a6a7ba1f8eac8ee29803c652ec5eeb2523aea740a7b6c45b5a9b9ede7c5537a55889cb00e9fb959e4edd2f25a3d5bf001d15667b81236713e5fb2ae388dd174b06dab63bb4fb2ae74329e463ebbb8481dfc938b6199f2797ac909652dd22915ab31b5c340034cb3faa5145c6a5502265ce33fbf1475dda3df54318093963fb9f32acb8460eda2dda5dc4fe8a6e697616d45593b1cda74b29e5e3b70548acd735e44cea60f31c0ab7e276ce73811b049aad946e14259937479beaa329b129795231c8a7d113b2e996e979a312c72b076b8f044d3bb7853d1b404a64cb06a494d7d1a218a5e18bd98a734433146f3443f09694355c09a76d125c595accbad85fe24de6b12efc0ddcd62ea8fd8dcb2fd05d1c61bcd4aec481e2bcdd95ddcca2e95ebb9ab3c0fec82f59f68b855bd93ba32caacaa8d0aae29c585cb8704928f1298f3727b2d7494a2425546f614dedc14db352921bd2b984550b8955e174baf684f09b8b4c3658df503e60ce9baadddb22530c26ae6744a1b16a7a3f9af46327387261869954b8a8337622ed2b69e1f48497339ef3c86c39f694ce918d0723af66c3eea06a687342b08d775e71d2db02da959ed060bd85d00e80899f32ae6f7c46bc7f4fb951e2b6a2ab1e2435ef616b2437de7b756b65c342439faf62d1825f24999f2c74098031b736190b9a1cc39352441739ce00003590401fd951ef298cc449275de55c3a3f869a658c692e8ccea8013958f2c7866db901c04ec736c212ebbc3c07c9e6b5553d0d08a947f4a93e89cc042dd27b98e91fb09f54b519c1e40fd94f46d5a5dab41f05dcf405e9db613d1fbdd5baefbf89d8ab1e378db1ac1429b817bc80f0d3ab584c13a6c750aa9d23b26d36d1ea665f9c88de7dc6807c5c99747f0414bdf7fbcfe3c7c07a2cf2a8fc9befc0b4dbe3f43da74fa9b70362778d06dc07aaa7622e2e24bbe5fb2b4dfdc97b4b76d9576f29cba3bbce028296eca71d50c98ec94194c7087bfb5c75011f615bf7c8cff74babd9be33b412d27870811099747f0e7bdd0410dde4f18e48ab655d2896bc2a8b4373c6aee3d89a3402827d1c9006c365b6d42161cd26a4d333376c31f44140d6b41c94e2e9742b02a129260115c61e38207d89c15a9d4c143bed8229d1378e2caf53a2423a9be11ceb50a375b85cd9ca35d039ba03752b2e1a78ae1f680a89d651b2e0fc904f581625a6d5fccac5c0e52fa3cd82ee9132897530b053017a7678f283435c3db30ac36d6a1546dae8b4a73678b81a159e706dd9ab0648a54cb18b50a1ad41434f136c6eba37c0a8d1b3941916a174dadcd69d5414db01c1fae39dff00003ff63cbb9521073971405f830e8cda124d477c23e1fe63cfb9758fd28970e213a73c37dc688006c387241dd303db90ee468bd68e25087143c5d3b3ccee2996bb4d26765232a068f5ee1c3cd1f8c5a1063e9c92773f588d1bea46eb1354e8da9da090f322779d7bcea8fab6e2ab05325deffc25bbb5e24b5c3c7824f4aa713cff00c94d6c6e487308d23c34ed3cb45d1d34c592b4036753f0f63def7baa39f2d01ac819984365ee74f688e3a88420ba65c333b0c3be66e920f1567c498cb9616868d248802675fa97127ffa3cd79b5e60b7142a1ca1d32756ff0095b94e325a6463278e5b4387db11a7144db5a90e0e3a0e24ec076aafdade5dbb48cd1b92cd47d1592961d51f6e5efa8731305b03281a83a73d509348bace9f4992e0369d6d4a970fd449ea86b0d66d201d8988f0288af5c87eba08809861a43581a09718124924e9ca52ec70406bbf9a3d1629cb94ac1154017d58801a373e8142d66a09df49f10355d384ba4f127c82928b333c4f9208a22d184c75797b558b0ba0034148aca965680ac144c342b297156ccf3d8455a72a07514407caed8160cb539b689a0136b2b9f6784d72a8c80a6f0b41a046525df528b680ba4cb11c00ea0a07d029b405a2c09bda3848ea4792e084f1d48282ada8291e2a3851956261eca1625e20d9e2ee7150b9ee4caa3402b4da60ad6a68f2e70b01a6d3c54cdd119ecc16c50e4133c899178a446cae76d5134ee0c2e4501c57419097e2754d0d308a2faf51b4dbc773c80dcaf4ea4c6d2606376688552e81d0018faa46e4301eedd58ee6ae84add82118c792f26ff4e9f1b7e4c654dcf33e812fa978739772d02edcfd00ec4046a4f254936698a27bea42a34fe6854cbfb52d91cb4efdc9fa2b5d9920971286c62d839b9dbdb3f759f246d5a2d0953a290da91bf3d536b37fbcded047a25d7b461a39927d11145f0fa6072f52a2d68b0d2f2e0d219c1821a48f2303c4c2130ab97d561a95752498d210fd24ab30decd7ec88c1a3ab8fca09f347fd45ad84b2836090d039f96c9151bc79aae6177bad3b70566a60960f1f3d65554538b978e7a8f4fd505e4e2cf66efd7cffc2831a666681c8ad583b49eff00a95ddfb641ec8fa25430bcd1d1be3e68bb1b597b4f283fd96506eddc8da272ba46c8a5b39bd0e1a25e00da13fa74f44a70ba598ca7910ab917c2cccdee8e4535235ab1a5760acf1846ece3450f549e0892b87b53cf68e0235c85c1bc85256a680acc58e5268e0bfc4176dbf091d528675570535293f22f22d2dbd0baf6a1cd544dd39114ae4a2a524ce53b2cdd7058abded879ada6e41e48f2d75cea99db3644caaeb64ea9851ba206ab64e1ad1e7465bd8ee9b24a2db4b44aec2e277d9195ae236d967945a2aaaac92b51424498035e10a6a55f369cf82b8f473000cfe3541afca0f0feeab8a0e6e81edf27a0cc0eddd46dd8c788249711dfaa92f2aec3b5117f52435c360610351b2e6af452a8f146b8c54691b793e8871b1ed2a7a9b90878d4f905cc28e18fd4346db9fa2e9d5041670210ce904f28ff002b9b73bb8ee5da770d94db1e847d21a39208d81faee82b46eac7fe527c86c9ff00486df352246e3509161cf1d5e51f10fba8c95168cac1b10d4c9e3aa2b06adac1f9881f5fd171529c8f0415b3b23c13c24f8ec105d505a2e34388e423cd57b15a792e5879e9e9fd937b1ba11bebc7bca0fa44c87b1fc9c257207924b7765739bda3c9c3f51ea8daaccc03bb20f784b2a54f7c1fccc20f7b482132a35011e3af7a090583b1995a89b2a6e73fb08525dd091038a6d636d91b27784f18394a8494a9075a0ca2116faf012cce415ddcd5f7255b324f135f443cd8736e148db948db7639a985c8e6bcb53686b4367dd288dd256eae39ae0dc041cdbeceb19bee1055ea219d7239a89f76de695ab05a07b8ae4150beb69ba8310ba093bef39268e332cf328ba1d75c2775375cde6ab2eb92b1b74eed4d2c5e49c73a2cb9fb56243ed45625e057dd456dad10a123558b16f4667d0cad1d034e2891509307c962c519791d745bfa2384079eb5c069f08fbab56275f2b7285b58b5e14963d1b71ae88ed581f4e0a5f4ddac1ee58b1542c94b75941d4a9ae9dde6b16232e8e441707dd8fdc286ddda77181e1bac58a2fb28ba3ac51d14de396bfbf2554b1643f4fd83fb2b1629c8688caad3024a4b5d9fc4858b14d1527a950b1c00e264a3b16ac1f4e388823c162c5c7023eb7fa6ee5bfd135b5dcf87aac58bbc9cc7cca72426159bee8858b16dc6b4ccb3ece5a24282fbe058b12e6ff17ff051736d4c6ea071709ec58b1792c4900d4be7050bf122b162ea314f24afb20378f3b184354b870d656d62a45225c9d8154b873b495c32442c58a884edec369325174adf49858b149b7669c51411d5858b162535523fffd9, '2022-08-16', 'kakakakak'),
(43, 11, 'encontrada', 'loro', 'pepe', 'verde', '1', 'hembra', 'zonaSudeste', 'olavarria y sarasa', 0x89504e470d0a1a0a0000000d4948445200000121000000ae08030000004e524b9000000099504c5445000000ffe91fffe81fffed20ffef20ffeb1ffff020a89915d3c01afff220ecd71df8e21e7b700f564e0a7f7410c7b518867a108b7f11bfae17f3dd1e494209443d08383307e0cc1b6a600d242105302c06d0bd195f570c9e9013b0a0155b520be6d11c181603746a0ec4b2189386120908009a8c13b6a616aa9b153b360750490a2c2805665c0c100f02201d04332e061c1a030e0d01fff9214f58e36e0000150349444154789ced5d6977aaca12956e1a059c8941a346638c738e39e7ffffb8570d0e545537829af73e3cf65d779d1564dc7457d74cad56a142850a152a54a850a142850a152a54a850a142850a152a54a850a142850a152a54a850e1ff107f5f5f285a06cc261c87a101cdd1fffa899e8a453f0a8543a10a429ab6fd6b5dcede08ad505bcb1d09db11510098cfe77163dcf95c6fa68bff063fcbd053cac0cc1d649d21847f61e8c367dc5fe06e2cf7e45a0fc9be19295dd78f7b5fbfcbcf2ef01ca15cd7b1bf69cbdbcc8123bc0b432b579fde08a122cb5d4921a4e5a00ba41ebc70ef5eb8fc4d82baf0c2a5db581e768313b6af1cc7bd0123033e12fc51198662a51a8ba6092be5a8898d2139e507b4bbdd76b7d7eb2d01abe966fdd988435f0ac78b5f7e8da01e0c676ffcecf37f29e7c2d000e6924d58044abe9b7f91c2db15bad468d871814ef15bf2a8e9c2bc6e3ffdb47f330cad5c27b2098aba6b9b663233086f61dbf01cc77ffe5368bcc202268abdab52c8323457726ddb6fa71c7768fca50c43b0d6c0aae29b4ff4201a20832c82e02164180212a4fdde03a5fac61fca31541b0a10d9bf208b16bef0a6cf3f2d62a80e8ba47dc7294cb30fd30f2519aa0d41e8cfcb1c500c73f51b67ad2186f22659adb68777641c616519aa2d5de1d64b1d51001338e9af4cde0c433b5ff858d0cdd05fa00a744c6728cd506d0ca3685fee909b58cb5f1a421986de255dade2d7ec5f4bd711a695ae3c431f20f59f3d8802e5fe8a14ca321429890d8bd13fa4008f5ce1350d6728cfd02fbcf0d7d05187e79ef28c8bc6d882498697989517a3bf1b4a8e0d67e00cd5139bf58c79bf4b0fd1d7fafbe08d634c9413969eb8dfc5763b5b1df05e31213070f1aadcf5846b380167e8ddc5c6b11b12357a04d60716728f62e1392685b6d590be1de488c8b29b383da070c8449e29e1aeb21bde60971ebf0b03431219c05a4724c368aedce79ab06686b60ee85e56a800ef0d23c282e4018760d4e049a69f138faab1540d7e1b2686549c18c06d4077d5701c27c4aa144cd8e78aea8551977b7785b20d20d7c4906bde37f1a07d2a42c797a65422d2dab09a1dd96d181942026b28a8453cb6dac177a26554d4e19576b6574fece08aed71e57286dcd57660c20bbcdfafd0c1530a06150c2fbc288f42d334bbcd90be369e544f67a816d1fbd758831a6993df5d13433936751386c7006de92801ffcdc9362acd6b85188aa9b2f2f459a66f2d60cbe351d80d1c23436cd5cd5c80ae64305e545f0a1fd106b39d8fe5db0c0d60ece16b3f5d52d75a4653461b3896c15a92a13d9b3fb0b47bda6d8695486118cb39925abb1adbbd55044202a9e77b490d9cc7d1918ee43ae3580acbd429c95013549d1fb4a5a160dd7a97640ded1ba6d9cdd5de55c2c7930c44beb4decb9df8811915fed0ad1fa1a2e2e384920cb175fcc7d72646cb231ed6832f5c1a1532698c24e2e19338496cd6ce1fc3d01372ceb6be788ed9395a8ea191a2826205fac577e210c1d338e436276768930da145f3f8938cfe19181dbfe0acaebbc2407ccf336d2dcb500fd445bc65aed427fcb3a1de69b04dc879efb05c835f727675402e730f571f2c6eae08946408165fecfa19b8a9bb0c1431ecfbd5362799d6a519d25a8ac949f038e6d450d2f89a2b47712bb01443df2074f0a8afcb9376c182406c792bcdd0ca38199e82ef10160546fe006478c472134a31b404a1f387ec7c72c84ee97960792306504986a69eb038bc9f80ad508ecf021e6dd33b29c5509c0a9d2b0e302ed3a71e800c4757dc49b2a11c437f1a3ea8eaafb777bc1313b8f390adee30af7daaa1966168aba861b9063de8b0d038840e71ef337f7f1986ba21a84ae1efc5a541b3938e0ad8100551e412deca30b4a2719e6f30eb1dd7d300334305c83bcd82afc5193ac4703a776e4bb3790e6016bb9f74e3961b6865188251816385079c24e3a38560e790e06b6186c6a05c0befc9363d475f5177724df32188255882a1160bb5ae71fa8d43a719965a9ca183d9a7bef4c5dd31ad5db75d10cda53430546bd0e0410986eaaed1c56b85ce7fc8ae7c06867c3345efae70c2f5fbfba63e9dae96bd2e3cf562311c1e0e93c9acd5daed7676effed4bf95a274cd5502b9c07df443ea622bc1507ea895e3cdc5da93892165362ab4c1a6a494d98c2cef0cdff7ec6bdcd415a2705a9d345d3d74b0ce579ca19d5b562726c15703439e23cd4af3d2552899528bb98bbfdc117619ae190a0ac29cc31591e72fce10f370dc840ebe66d63eced0c4138e671eb0934ea7331e371a8d389ecf83208a40349d2607906574532400cd957b374b813aed8a33c4cd885bf8865197f14a1919028a4a3a115f43c7b12b4a8f331439778e2183297a130d95f5b25a182a1b9ad77165bbdff17186ee9643f784d0130fed056686c08634782272700c4d16f8190f33c4c24585191277a461ec51f0953334f39cf005cc2fd79cb4663969a46cd9b6b52730c44cf0a20c69d765d94996386daff76b6448e82716ae31e1c88c51a40c9ef8331e6688b9718a326472cddf86cecb7d3bff6161a8369a4be1360aa778fc0186ec0af7a30ce9d8019672451962a1d67523c538c5678a751fc58a46b0305c962a23430efcf311034571d1b29a8fc8ace9a57894a1808d84820c2d68a8f5f5a2cfc9049704177cb66cf09533d4f24e6eef862e76e0917e23fec20dda7db30f32d47733d52b290a32c4c2cc3d78268991e8be39c1d71c866a630f0476c1d8616ed8fc3186a63e5f588b31c443ada0eac4f5cd7b8a758a7e7f1d3924ce1e5eb38d4c0c0975f229ad75254131b7fdef31f40ecb118dd01464a80d2f1bc9099d8369ba4da63565247c2e43f0684575c7dc90e7030c1d623dd7d9825d8ca1b122a1d6263c9bc9cb7e00cd1b457c4129744fd38c33b4f385bcf825bb5209af81030546fc06433fad6543575445dc9e29c490d6fcf00cf8a4949daf14d1e9780dbe0243e4fa832c43b589904286cb9b7998f37c869c70dcb88df88c79106977897495a33c93ced1758540671c83114d6f0076520dba93d9e0ec9cd33916c3c570383cb474bece99211593db045d31e3dbdec77aa681c41741304f6edff870c6f4ad2b43a274f5a5f6ab38c05160146f5de6713230d4506c27c752ceaaa71ff278e9eacfdd8921e6db1288a15a6d73beddfc07ca63c897b7c0bd8d9ee786c1d8b24ef40c67a409a97bdf65fb7896d9fe1aa287497c5fa7dc25c359e05a785cef3a91be5f5cd8c90fb23b4c869bfa2d4c2f582d97cb5eb7bd38cc76476b61edec9d9fe29d2e39867d3636b5b6339f6b979746521eab5dfce934db986efe9dded968d71a36dbddde72757a8c3a3f6cf34b59f5ff757c69fcfdfefefeadd872857b30e95174bbedeb405db09f7bcbab0ab49d197095031dfbca68f5dfec8f6fb7312a5e3c3f182e37fdce4de4446317ffb824be5683ee85c77fbdda1981ef51644a1666ae6df100716bbba54ea12afe207e5f149869adf55c796eb65d04691d713196f32c38bd1a92b5ef1a2a6e7b6ca114d71c9581e4850899f4659d76695e10954df9496ae46e433f931b7edec853d835808122ad24449e273f09368b79b6e42872aee9060de5842426a4c425ae39d5e678f68d68b2af73300035992f887a4d8ceddeb3b16226be4903491edd1de7a9cbefae845da40ac69ffd5c746e3034f1858706ec485d229b7b4953c492a8de7988053466dacf9a997062dfe2a10163cbb34c3330d8d65bd6a18660d2adc70246a252563de627d69a66542f10b27ccb8d06d592700ece398e2fb9853a8247775f5db6cd14a9cefb40250e6bc552332f08e9352f18170da21d570198143e4b473901cc6a19e594026430b8c5104b32ed0107a96782a588015e2ee536ac3c7501a3e6ead2b0b390c75e6186403b9aeaa886d91fad93531b2c0bdc0ccd506e4c41bb13d00e5f9e4823bb7b7862eee2bed0c69cf8a80e6a689f49695eb3f9c7b12c51bb3308c0783749345dd45838a773206e30f415d07299739ebc4efae2d91e3a3b530bae8ca3e60499f1b2f3b231046b44ba1443893fda10f8f90ecbb41eb8c9909e2d78c82fbcd46bc5247182edc9b7c36667d3cb16b33b4e5e110e2f203fa1538e214d11373ba76e5e9c99e23643139a17fd93466a5ad23136fc3849f288fa3891df50978de17984a4024b283fa32c433a9552d125d3da29c40860c85ca2923d2169a4f59924f7b3b175829e66a3c43d8af39254363185958d1df125cce3f30e8660e5205577a0ccd3205e2e0a30b4a1540c3dadf931e24ef8ebe9ea1d1633ed02719797c9cb2edb2132a6a696ae42a519d2534acec8166b6330130a3004d3c945d7f8d29d1a66d6c99ce4a8281a3345992b4097c00a6f0367acbf58ba0a71867e928e624700d8acfb3f7ce908685b1090f665923f5e7273d0524474c8eb184cdfaab3e8c787ff159a6447910de734a863fe482f3137cb0ace50f75fa6ba5a8551bc2136ab9ef56fd90d256b598b30c4a619086f38cca6f17d835104eb29a6a0972dd138b2fad2152d4bd789ad06958e33d476b3963118a2ee1c4be60f1080c825ccca7ff3f15a80a1ad4f83cb491701df961bd0917052922f88eaa0baac58720e162f9a66235616949e9a557b03434e661479921504c6647c9a19da621fd5f88246018678de6e92236bd5f8863a192e446f728b2260ac6c0cde8150f81231dd27818921186cba3be168743c6e774330287cbc08d44925a87996cdadeeaa220c4de91c380207f610c947a46855100803e7f2074d7c4e7c45825c42f730e462d7c41011014cc62d4958146c022ea947fa1db11cf1b333e526430397cc0178c38eb20774d7ac541a19b9dc27106ab986f3987ea4e3f1885b87e9498ca1263d7b8f303435e5fab77ca1facbd50a79aaea9b136ee71ac103e21b83f79263fa1d24e92a7574b3462ef3090c75bf548794b9b0d8bd4601869694001a5a9f81b1c615f69c2e0a4530a5efe5c7e545891904a44e081d0f039ad45768337645f5b8364a6cbdec798ba11d3c2abef8a794b4db87a15ab3e997ca6ea4e06d47c7211e7938bc30fd875fd23c3b06a7d427a00dbdde96163f69bd9b199d26869cb0bf3e67147dce7dc721153882aa163d63c5afa95eb004d8c468e2b7f007af9faf58eabefa593916d0b231ad62beb2e22763bb1313435a093ac9542515c85baccc3725b31a40cde615b889917b7f70554f6ef4dedfb082b42055b878085d2a9c35749b527c23e9eac374c405ac667411e10c75ffa5f19c53ccc0f569464583130d66b5619e6923b7687223c780f532c2e8d07c450464a9d7a968d5f3ab9dea88689a7d185af77086f68be9badfff4c027f9ffdfe7442dcae33d6f6a19656d6f3157fe1e5287937616b0b79bacd30af12a085ea9a9977767ad295d825fabc850267e816f48ce25b63297cae36d6bd72e9fa087a9ad9b582aec7a31e5720bb8e39e42e629c759e1c4ae63e28cdd0d835b40200b9097693a1a5c4f80169fdc3f4e02c1a703dbb90435e67e678d34d4d13ca46ec12bcdd499f2a6637d0f12c6bf82052866a3c5d8c6dd0958ac16c27a5d8831162776c4e6466d47c3127fdd5a1cdcc355e1f548ea1ef866b0e76d412bdc97158cd4f22adef6c0dabc364b65e93da90b537485e67ddf2338f968dc13dc5a0eeaf56cbb1229d27c11420c99aa5186a4560fdcc6d61b199ef28de6eb3a953280b5f018114002244dafeb5ad757f51388939de16dec564e4298d9143a47abfb813fe67edeb88a27d07bd747121be81e72c591b79c658d94cb1962e6ca3bafe0513141e64a1d606f23a9027dad0a850e131f4a72e744bafdc9d61e81b2407c854b76cc7dd14463b2981eedc4a8bddaf40a346875a9152f61113a099fc7296e299939131f4664ea75af98e70821b0da9fad2607efc29156fcc62cf5ca767e87131625d4cb2bf5eef8975e8ccbf28f5dd7186861649accb7fe2d6f64f5e1dd93e720c2a220c05ffbef6b94677442db50e5eac6bdd1065c1a8dc502b07752a70860e5e60d6d3e66e9a1a96978b2584343c126bb256144d16c24991964ef6924022070ad0370da6562e0664681a189286ea91040df776c29a32b5d89f5a62a53761eebe9a042ef466dfdc691c8d9a8eb109701e8853c1c49050a13970370d4221792ee535a952868129ea31ccb510f2607e3eddef4e87a8cc9dc69181fe935b2261c43995e404831cd2150ec22237de06bb566b36635f484bbe99366bedccfd3c2630590ad40c19d066e9081a674db8eb660b6fce4001fab64b4220b78183242686743e695ebd7779cce43987ac348441ce6ecf2ee80fc730403e50053c0b4314006eb3696608e4cd33db041eee9e65c6b4a8eb07594c93508f9acb507eb5ea0b39e8a1a0f29a31b4904ea0bff9234b4edf1b97bcf350d0d359e8e8ea1d835f5d3a389186a04360a5bf64f08db26a4c0c81daddd41419fa63de878eb41be9b7c0323a920626a7950415bba7c0017a66bb17022279cd924b17495c60a89ef731923fa6104251f04e0aeb8c1f90bbde750ac8c58c382ad2256538eee8ae02fd7e12abd045d03a7a57af6f90d685aa826d0cd5663af1f539cdde962059ef3ef8c0d2c49d8c4dc13b8d230d6045dbe0f6bd4bca7e5ec15b56a33233a4a7ee4ba48477b70b35039d07fa40e08ce69fb7516f05faeb1b4a4c89a90c091d61fa4c2975a767d707309209434d60285132b69114def8f16f6a76a4a04d24cb80ba77f0fadd27d989cbeca879a3e9d73a0b298903eaa976cd4689e9776486994cf51c866afb403bcc1efd4aeeca7b6cb61e3cd44bfc88e39943924389ac599d5080563216164af11192e6031f99a1c9196a5fa3d9df4989ff63ad4b97ba39e9230351a73066960c6d1364bd9c21fafeec088d1a166ab599d0cc7cc90c5c6088c80814b71f6b7bbeb4ca95c13b2c0b0ff6cfc589e434c4f58e5cefa78eed295e600a200373202c5f47ec5167dce43a3439434d3412756345bf73ef57da5ada63f2e867330f203cba6703b04b3356f1e7ea50b6661dac834fbda86fdeebf5e96ab5ec4b8b6e3f022e9760682e926b2c168be6357b3d61e8e32b45b20533947e7d37dc0c27bb97edebdbe503badf97fd2f389de4fb67b43f0e769361771dbbbacfc403523a85ee9175761fb82cc2112827ca54e379d94926843cafeaa9dfdea63fc6994b2465a2cee563436b29c2087d852c7248764c00772575ef61f455666b1bc9b4025db9ba9c53287ffcf8f7d0f1171da8d87f9799ba4e91c98239f869c320796daea468278233a6866f669fe27c6b49eb461df6a9a68d77769de55767664f92ec2dfdf0111976c60c7d149df69a18a046b2fe75922dd286419fd7d699f1dc9619bf97bcba57a4af62edf32611f48368b53f1b1815e75e15853ebead075c34aeffc677691916d986c3dda7f7c47e490493964d99cb9822081ffbc14bab3599a4fb37db1634178be161d27a79ab9a1854a850a142850a152a54a850a142850a152a54a850a142850a152a54a850a142850a152afc5fe03f0ff2a9f4ea7772bc0000000049454e44ae426082, '2022-08-21', 'se volo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avisos`
--
ALTER TABLE `avisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAdministrador` (`idAdministrador`);

--
-- Indexes for table `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`idPublicacion`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `avisos`
--
ALTER TABLE `avisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `idPublicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avisos`
--
ALTER TABLE `avisos`
  ADD CONSTRAINT `avisos_ibfk_1` FOREIGN KEY (`idAdministrador`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
