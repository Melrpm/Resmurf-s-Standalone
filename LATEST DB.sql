-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2020 a las 21:19:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `charId` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `inventory` varchar(10000) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `height` int(3) DEFAULT NULL,
  `steamId` varchar(255) DEFAULT NULL,
  `DiscordId` varchar(255) DEFAULT NULL,
  `stats` varchar(255) NOT NULL,
  `clothing` varchar(10000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `faction` int(255) NOT NULL,
  `factionrank` varchar(255) NOT NULL,
  `duty` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`charId`, `FirstName`, `LastName`, `Age`, `inventory`, `weight`, `height`, `steamId`, `DiscordId`, `stats`, `clothing`, `location`, `faction`, `factionrank`, `duty`) VALUES
(38, 'Carlos', 'Evans', 21, NULL, NULL, NULL, 'steam:110000105034d8e', NULL, '', '{\"pedcharacter\":{\"complexion\":255,\"bodyblemishes\":255,\"blushcolor\":0,\"facialhair\":255,\"ageing\":255,\"blemishes\":255,\"lipstick\":255,\"makeup\":255,\"eyebrows\":255,\"sundamage\":255,\"chesthair\":255,\"eyebrowscolor\":0,\"moles\":255,\"lipstickcolor\":0,\"eyes\":65535,\"facialhaircolor\":0,\"blush\":255,\"chesthaircolor\":0},\"clothing\":{\"parachute\":[0,0],\"haircolor\":0,\"face\":[0,0],\"mask\":[0,0],\"badge\":[0,0],\"shoes\":[0,0],\"torso2\":[0,0],\"undershirt\":[0,0],\"accessory\":[0,0],\"kevlar\":[0,0],\"torso\":[0,0],\"hair\":[18,0],\"pants\":[0,0]},\"indexes\":{\"hats\":[82,0],\"ears\":[-1,-1],\"bracelet\":[-1,-1],\"glasses\":[-1,-1],\"watch\":[-1,-1]},\"facefeatures\":{\"Chinshape\":0.0,\"Chinposition\":0.0,\"Chinlength\":0.0,\"Jawwidth\":0.0,\"Jawheight\":0.0,\"Cheekbonewidth\":0.0,\"Chinwidth\":0.0,\"Eyes\":0.0,\"Nosewidth\":0.0,\"Noseheight\":0.0,\"Cheekboneheight\":0.0,\"Neckwidth\":0.0,\"Cheekswidth\":0.0,\"Lips\":0.0,\"Browheight\":0.0,\"Nosebridgeshift\":0.0,\"Browwidth\":0.0,\"Nosetip\":0.0,\"Noselength\":0.0,\"Nosebridge\":0.0},\"model\":1885233650}', '{\"x\":260.96252441406,\"y\":-871.12951660156,\"z\":29.232732772827}', 0, '', 0),
(39, 'Carlos', 'Evan2', 21, NULL, NULL, NULL, 'steam:110000105034d8e', NULL, '', '{\"facefeatures\":{\"Browwidth\":0.0,\"Nosebridge\":0.0,\"Cheekswidth\":0.0,\"Chinwidth\":0.0,\"Jawheight\":0.0,\"Eyes\":0.0,\"Cheekbonewidth\":0.0,\"Chinlength\":0.0,\"Chinposition\":0.0,\"Browheight\":0.0,\"Nosewidth\":0.0,\"Chinshape\":0.0,\"Jawwidth\":0.0,\"Nosetip\":0.0,\"Neckwidth\":0.0,\"Noseheight\":0.0,\"Nosebridgeshift\":0.0,\"Cheekboneheight\":0.0,\"Lips\":0.0,\"Noselength\":0.0},\"model\":1885233650,\"clothing\":{\"accessory\":[0,0],\"torso\":[0,0],\"torso2\":[0,0],\"pants\":[0,0],\"hair\":[0,0],\"haircolor\":0,\"shoes\":[0,0],\"mask\":[0,0],\"badge\":[0,0],\"kevlar\":[0,0],\"face\":[0,0],\"undershirt\":[0,0],\"parachute\":[0,0]},\"indexes\":{\"bracelet\":[-1,-1],\"ears\":[-1,-1],\"hats\":[-1,-1],\"watch\":[-1,-1],\"glasses\":[-1,-1]},\"pedcharacter\":{\"facialhair\":255,\"blush\":255,\"blushcolor\":0,\"facialhaircolor\":0,\"eyebrows\":255,\"complexion\":255,\"chesthaircolor\":0,\"bodyblemishes\":255,\"lipstickcolor\":0,\"chesthair\":255,\"sundamage\":255,\"eyes\":65535,\"makeup\":255,\"eyebrowscolor\":0,\"moles\":255,\"ageing\":255,\"blemishes\":255,\"lipstick\":255}}', '{\"z\":29.232732772827,\"y\":-871.12951660156,\"x\":260.96252441406}', 0, '', 0),
(48, 'yep', 'yep', 1, NULL, NULL, NULL, 'steam:110000101f5771b', NULL, '', '{\"pedcharacter\":{\"eyebrows\":255,\"complexion\":255,\"sundamage\":255,\"facialhaircolor\":0,\"blushcolor\":0,\"eyes\":65535,\"makeup\":255,\"chesthaircolor\":0,\"chesthair\":255,\"lipstick\":255,\"blush\":255,\"eyebrowscolor\":0,\"blemishes\":255,\"lipstickcolor\":0,\"bodyblemishes\":255,\"ageing\":255,\"facialhair\":255,\"moles\":255},\"clothing\":{\"accessory\":[0,0],\"pants\":[0,0],\"hair\":[0,0],\"badge\":[0,0],\"parachute\":[0,0],\"shoes\":[0,0],\"kevlar\":[0,0],\"undershirt\":[0,0],\"torso2\":[0,0],\"haircolor\":0,\"face\":[0,0],\"mask\":[0,0],\"torso\":[0,0]},\"indexes\":{\"hats\":[-1,-1],\"ears\":[-1,-1],\"glasses\":[-1,-1],\"bracelet\":[-1,-1],\"watch\":[-1,-1]},\"facefeatures\":{\"Noselength\":0.0,\"Nosebridge\":0.0,\"Cheekswidth\":0.0,\"Neckwidth\":0.0,\"Lips\":0.0,\"Eyes\":0.0,\"Cheekboneheight\":0.0,\"Chinlength\":0.0,\"Jawwidth\":0.0,\"Jawheight\":0.0,\"Noseheight\":0.0,\"Nosebridgeshift\":0.0,\"Chinposition\":0.0,\"Browheight\":0.0,\"Nosetip\":0.0,\"Nosewidth\":0.0,\"Browwidth\":0.0,\"Cheekbonewidth\":0.0,\"Chinshape\":0.0,\"Chinwidth\":0.0},\"model\":1885233650}', '{\"z\":29.232732772827,\"x\":260.96252441406,\"y\":-871.12951660156}', 0, '', 0),
(50, 'Richard', 'Dick', 15, NULL, NULL, NULL, 'steam:11000011a76b5e8', NULL, '', '{\"facefeatures\":{\"Cheekbonewidth\":0.0,\"Chinposition\":0.0,\"Cheekboneheight\":0.0,\"Noselength\":0.0,\"Jawwidth\":0.0,\"Jawheight\":0.0,\"Chinshape\":0.0,\"Neckwidth\":0.0,\"Chinlength\":0.0,\"Nosetip\":0.0,\"Browheight\":0.0,\"Lips\":0.0,\"Nosebridgeshift\":0.0,\"Chinwidth\":0.0,\"Noseheight\":0.0,\"Browwidth\":0.0,\"Cheekswidth\":0.0,\"Nosebridge\":0.0,\"Nosewidth\":0.0,\"Eyes\":0.0},\"clothing\":{\"torso2\":[0,0],\"undershirt\":[0,0],\"torso\":[0,0],\"mask\":[0,0],\"accessory\":[0,0],\"face\":[0,0],\"hair\":[37,0],\"shoes\":[0,0],\"parachute\":[0,0],\"haircolor\":19,\"kevlar\":[0,0],\"badge\":[0,0],\"pants\":[0,0]},\"model\":1885233650,\"indexes\":{\"ears\":[-1,-1],\"hats\":[-1,-1],\"glasses\":[5,1],\"watch\":[-1,-1],\"bracelet\":[-1,-1]},\"pedcharacter\":{\"moles\":255,\"eyebrowscolor\":0,\"lipstick\":255,\"chesthaircolor\":0,\"eyes\":65535,\"eyebrows\":255,\"sundamage\":255,\"blemishes\":255,\"facialhaircolor\":0,\"chesthair\":255,\"complexion\":255,\"bodyblemishes\":255,\"blush\":255,\"facialhair\":255,\"blushcolor\":0,\"ageing\":255,\"lipstickcolor\":0,\"makeup\":255}}', '{\"z\":29.232732772827,\"x\":260.96252441406,\"y\":-871.12951660156}', 0, '', 0),
(51, 'Zachary', 'Parker', 12, NULL, NULL, NULL, 'license:50a02ec7b43790fe44ed9e492fcafa69a7fea835', NULL, '', '{\"clothing\":{\"undershirt\":[0,0],\"pants\":[0,0],\"parachute\":[0,0],\"face\":[0,0],\"accessory\":[0,0],\"torso2\":[0,0],\"mask\":[0,0],\"torso\":[0,0],\"shoes\":[0,0],\"haircolor\":0,\"badge\":[0,0],\"kevlar\":[0,0],\"hair\":[41,0]},\"model\":1885233650,\"facefeatures\":{\"Noselength\":0.0,\"Cheekswidth\":0.0,\"Browwidth\":0.0,\"Chinshape\":0.0,\"Chinwidth\":0.0,\"Neckwidth\":0.0,\"Nosewidth\":0.0,\"Noseheight\":0.0,\"Cheekboneheight\":0.0,\"Eyes\":0.0,\"Browheight\":0.0,\"Jawwidth\":0.0,\"Lips\":0.0,\"Nosebridge\":0.0,\"Jawheight\":0.0,\"Cheekbonewidth\":0.0,\"Nosebridgeshift\":0.0,\"Nosetip\":0.0,\"Chinlength\":0.0,\"Chinposition\":0.0},\"indexes\":{\"bracelet\":[-1,-1],\"ears\":[-1,-1],\"watch\":[-1,-1],\"glasses\":[-1,-1],\"hats\":[4,1]},\"pedcharacter\":{\"eyebrows\":255,\"blemishes\":255,\"complexion\":255,\"lipstickcolor\":0,\"eyebrowscolor\":0,\"lipstick\":255,\"makeup\":255,\"moles\":255,\"eyes\":65535,\"facialhair\":10,\"chesthaircolor\":0,\"ageing\":255,\"bodyblemishes\":255,\"blush\":255,\"chesthair\":255,\"sundamage\":255,\"facialhaircolor\":42,\"blushcolor\":0}}', '{\"x\":260.96252441406,\"y\":-871.12951660156,\"z\":29.232732772827}', 0, '', 0),
(52, 'Hamza', 'Zeyk', 21, NULL, NULL, NULL, 'steam:110000111b47a32', NULL, '', '{\"facefeatures\":{\"Chinwidth\":0.0,\"Nosetip\":0.0,\"Chinshape\":0.0,\"Noseheight\":0.0,\"Nosebridgeshift\":0.0,\"Nosebridge\":0.0,\"Eyes\":0.0,\"Neckwidth\":0.0,\"Nosewidth\":0.0,\"Browheight\":0.0,\"Cheekbonewidth\":0.0,\"Browwidth\":0.0,\"Cheekswidth\":0.0,\"Jawheight\":0.0,\"Chinlength\":0.0,\"Cheekboneheight\":0.0,\"Noselength\":0.0,\"Chinposition\":0.0,\"Lips\":0.0,\"Jawwidth\":0.0},\"clothing\":{\"undershirt\":[15,0],\"parachute\":[0,0],\"torso\":[38,0],\"hair\":[17,0],\"torso2\":[89,0],\"mask\":[0,0],\"shoes\":[12,0],\"pants\":[12,0],\"face\":[0,0],\"kevlar\":[0,0],\"badge\":[0,0],\"haircolor\":0,\"accessory\":[0,0]},\"indexes\":{\"ears\":[-1,-1],\"bracelet\":[-1,-1],\"watch\":[-1,-1],\"glasses\":[4,0],\"hats\":[39,0]},\"model\":1885233650,\"pedcharacter\":{\"sundamage\":255,\"facialhaircolor\":0,\"bodyblemishes\":255,\"chesthair\":255,\"eyebrows\":255,\"ageing\":255,\"facialhair\":255,\"moles\":255,\"chesthaircolor\":0,\"lipstickcolor\":0,\"complexion\":255,\"makeup\":255,\"blemishes\":255,\"eyebrowscolor\":0,\"eyes\":65535,\"blush\":255,\"blushcolor\":0,\"lipstick\":255}}', '{\"y\":-871.12951660156,\"z\":29.232732772827,\"x\":260.96252441406}', 0, '', 0),
(56, 'Pete', 'Evans', 28, '[{\"id\":1,\"quantity\":3,\"value\":0,\"name\":\"water\"}]', NULL, NULL, 'steam:1100001118e2642', NULL, '', '{\"indexes\":{\"glasses\":[-1,-1],\"watch\":[19,0],\"ears\":[-1,-1],\"bracelet\":[-1,-1],\"hats\":[-1,-1]},\"clothing\":{\"undershirt\":[15,0],\"shoes\":[28,0],\"torso2\":[97,0],\"badge\":[0,0],\"accessory\":[112,0],\"torso\":[0,0],\"mask\":[0,0],\"kevlar\":[0,0],\"hair\":[9,0],\"parachute\":[0,0],\"pants\":[17,4],\"face\":[0,0],\"haircolor\":71},\"model\":1885233650,\"pedcharacter\":{\"lipstickcolor\":0,\"moles\":255,\"bodyblemishes\":255,\"blushcolor\":0,\"chesthair\":255,\"makeup\":255,\"blemishes\":255,\"blush\":255,\"facialhaircolor\":58,\"lipstick\":255,\"eyes\":26,\"eyebrowscolor\":0,\"eyebrows\":255,\"facialhair\":18,\"chesthaircolor\":0,\"ageing\":255,\"complexion\":255,\"sundamage\":255},\"facefeatures\":{\"Browheight\":0.0,\"Chinshape\":0.0,\"Cheekswidth\":0.0,\"Jawheight\":0.0,\"Cheekboneheight\":0.0,\"Lips\":0.0,\"Neckwidth\":0.0,\"Nosebridgeshift\":0.0,\"Jawwidth\":0.0,\"Noseheight\":0.0,\"Browwidth\":0.0,\"Cheekbonewidth\":0.0,\"Eyes\":0.0,\"Chinwidth\":0.0,\"Nosebridge\":0.0,\"Chinposition\":0.0,\"Nosetip\":0.0,\"Noselength\":0.0,\"Nosewidth\":0.0,\"Chinlength\":0.0}}', '{\"y\":-871.12951660156,\"x\":260.96252441406,\"z\":29.232732772827}', 1, 'Police Chief', 0),
(66, 'Dusty', 'Hansen', 30, NULL, NULL, NULL, 'steam:11000010e4c8452', NULL, '', '{\"model\":1885233650,\"pedcharacter\":{\"chesthair\":255,\"ageing\":255,\"bodyblemishes\":255,\"blush\":255,\"chesthaircolor\":0,\"moles\":255,\"sundamage\":255,\"lipstick\":255,\"complexion\":255,\"lipstickcolor\":0,\"eyes\":65535,\"facialhair\":16,\"makeup\":255,\"blemishes\":255,\"facialhaircolor\":2,\"eyebrowscolor\":0,\"blushcolor\":0,\"eyebrows\":255},\"indexes\":{\"hats\":[-1,-1],\"watch\":[-1,-1],\"glasses\":[5,4],\"ears\":[-1,-1],\"bracelet\":[-1,-1]},\"clothing\":{\"haircolor\":4,\"undershirt\":[0,0],\"face\":[0,0],\"accessory\":[0,0],\"badge\":[0,0],\"pants\":[0,0],\"parachute\":[0,0],\"kevlar\":[0,0],\"shoes\":[0,0],\"hair\":[57,0],\"torso\":[0,0],\"mask\":[0,0],\"torso2\":[0,0]},\"facefeatures\":{\"Nosewidth\":0.0,\"Cheekboneheight\":0.0,\"Neckwidth\":0.0,\"Nosebridge\":0.0,\"Noselength\":0.0,\"Jawwidth\":0.0,\"Chinposition\":0.0,\"Chinshape\":0.0,\"Eyes\":0.0,\"Nosebridgeshift\":0.0,\"Cheekswidth\":0.0,\"Browheight\":0.0,\"Jawheight\":0.0,\"Browwidth\":0.0,\"Nosetip\":0.0,\"Cheekbonewidth\":0.0,\"Chinwidth\":0.0,\"Noseheight\":0.0,\"Lips\":0.0,\"Chinlength\":0.0}}', '{\"z\":29.232732772827,\"y\":-871.12951660156,\"x\":260.96252441406}', 0, '', 0),
(67, 'Charlie', 'Evans', 28, NULL, NULL, NULL, 'steam:1100001118e2642', NULL, '', '{\"model\":1885233650,\"pedcharacter\":{\"eyes\":65535,\"makeup\":255,\"chesthair\":255,\"facialhaircolor\":0,\"lipstick\":255,\"ageing\":255,\"bodyblemishes\":255,\"eyebrows\":255,\"complexion\":255,\"blushcolor\":0,\"chesthaircolor\":0,\"blemishes\":255,\"lipstickcolor\":0,\"moles\":255,\"blush\":255,\"facialhair\":255,\"sundamage\":255,\"eyebrowscolor\":0},\"clothing\":{\"badge\":[0,0],\"accessory\":[0,0],\"parachute\":[0,0],\"undershirt\":[0,0],\"pants\":[0,0],\"shoes\":[0,0],\"torso2\":[0,0],\"mask\":[0,0],\"haircolor\":0,\"face\":[0,0],\"torso\":[0,0],\"hair\":[0,0],\"kevlar\":[0,0]},\"facefeatures\":{\"Eyes\":0.0,\"Lips\":0.0,\"Nosewidth\":0.0,\"Chinlength\":0.0,\"Chinshape\":0.0,\"Browwidth\":0.0,\"Noselength\":0.0,\"Jawheight\":0.0,\"Cheekswidth\":0.0,\"Nosebridgeshift\":0.0,\"Browheight\":0.0,\"Chinposition\":0.0,\"Cheekboneheight\":0.0,\"Cheekbonewidth\":0.0,\"Nosebridge\":0.0,\"Neckwidth\":0.0,\"Noseheight\":0.0,\"Nosetip\":0.0,\"Chinwidth\":0.0,\"Jawwidth\":0.0},\"indexes\":{\"glasses\":[-1,-1],\"hats\":[-1,-1],\"ears\":[-1,-1],\"bracelet\":[-1,-1],\"watch\":[-1,-1]}}', '{\"x\":260.96252441406,\"y\":-871.12951660156,\"z\":29.232732772827}', 0, '', 0),
(68, 'Steve', 'Harriman', 30, NULL, NULL, NULL, 'steam:11000010e4c8452', NULL, '', '{\"model\":1885233650,\"indexes\":{\"watch\":[-1,-1],\"hats\":[-1,-1],\"glasses\":[12,2],\"bracelet\":[-1,-1],\"ears\":[0,0]},\"clothing\":{\"face\":[0,0],\"accessory\":[0,0],\"parachute\":[0,0],\"undershirt\":[0,0],\"pants\":[0,0],\"shoes\":[0,0],\"torso2\":[0,0],\"haircolor\":0,\"mask\":[0,0],\"torso\":[0,0],\"badge\":[0,0],\"hair\":[58,0],\"kevlar\":[0,0]},\"facefeatures\":{\"Cheekbonewidth\":0.0,\"Lips\":0.0,\"Nosetip\":0.0,\"Chinlength\":0.0,\"Nosebridgeshift\":0.0,\"Browwidth\":0.0,\"Noselength\":0.0,\"Jawheight\":0.0,\"Cheekboneheight\":0.0,\"Eyes\":0.0,\"Browheight\":0.0,\"Chinposition\":0.0,\"Chinshape\":0.0,\"Cheekswidth\":0.0,\"Nosebridge\":0.0,\"Neckwidth\":0.0,\"Noseheight\":0.0,\"Jawwidth\":0.0,\"Chinwidth\":0.0,\"Nosewidth\":0.0},\"pedcharacter\":{\"eyes\":65535,\"makeup\":255,\"chesthair\":255,\"facialhaircolor\":0,\"lipstick\":255,\"facialhair\":8,\"bodyblemishes\":255,\"eyebrows\":255,\"blemishes\":255,\"blushcolor\":0,\"chesthaircolor\":0,\"complexion\":255,\"lipstickcolor\":0,\"moles\":255,\"ageing\":255,\"eyebrowscolor\":0,\"sundamage\":255,\"blush\":255}}', '{\"x\":260.96252441406,\"y\":-871.12951660156,\"z\":29.232732772827}', 0, '', 0),
(89, 'Carlos', 'Hernandez', 26, NULL, NULL, NULL, 'steam:1100001118e2642', NULL, '', '{\"pedcharacter\":{\"facialhair\":255,\"blemishes\":255,\"chesthair\":255,\"eyebrows\":255,\"facialhaircolor\":26,\"blushcolor\":43,\"makeup\":255,\"chesthaircolor\":0,\"eyebrowscolor\":42,\"complexion\":255,\"ageing\":255,\"bodyblemishes\":255,\"lipstick\":255,\"sundamage\":255,\"eyes\":0,\"blush\":255,\"lipstickcolor\":0,\"moles\":255},\"indexes\":{\"hats\":[-1,-1],\"ears\":[-1,-1],\"bracelet\":[-1,-1],\"glasses\":[-1,-1],\"watch\":[-1,-1]},\"facefeatures\":{\"Lips\":0.0,\"Noseheight\":-1.0,\"Browheight\":0.0,\"Jawwidth\":0.0,\"Cheekboneheight\":0.0,\"Chinwidth\":0.0,\"Chinshape\":0.0,\"Nosebridge\":1.0,\"Browwidth\":0.0,\"Cheekbonewidth\":0.0,\"Chinlength\":-0.60000002384186,\"Chinposition\":0.0,\"Cheekswidth\":0.0,\"Nosetip\":-0.30000001192093,\"Noselength\":1.0,\"Nosewidth\":0.80000001192093,\"Nosebridgeshift\":0.0,\"Jawheight\":-0.60000002384186,\"Neckwidth\":0.0,\"Eyes\":0.40000000596046},\"clothing\":{\"face\":[0,0],\"undershirt\":[15,0],\"torso\":[15,0],\"pants\":[21,0],\"mask\":[0,0],\"torso2\":[15,0],\"hair\":[20,0],\"parachute\":[0,0],\"haircolor\":45,\"shoes\":[34,0],\"accessory\":[0,0],\"badge\":[0,0],\"kevlar\":[0,0]},\"model\":1885233650}', '{\"y\":-871.12951660156,\"x\":260.96252441406,\"z\":29.232732772827}', 0, '', 0),
(90, 'Michal', 'Harris', 20, NULL, NULL, NULL, 'steam:11000010c416f50', NULL, '', '{\"clothing\":{\"shoes\":[0,0],\"undershirt\":[0,0],\"parachute\":[0,0],\"mask\":[0,0],\"hair\":[0,0],\"pants\":[0,0],\"badge\":[0,0],\"torso2\":[0,0],\"face\":[0,0],\"accessory\":[0,0],\"kevlar\":[0,0],\"torso\":[0,0],\"haircolor\":0},\"model\":1885233650,\"indexes\":{\"bracelet\":[-1,-1],\"ears\":[-1,-1],\"watch\":[-1,-1],\"glasses\":[-1,-1],\"hats\":[-1,-1]},\"pedcharacter\":{\"facialhaircolor\":0,\"blushcolor\":0,\"chesthair\":255,\"ageing\":255,\"lipstickcolor\":0,\"bodyblemishes\":255,\"eyebrowscolor\":0,\"eyebrows\":255,\"blush\":255,\"sundamage\":255,\"complexion\":255,\"eyes\":65535,\"makeup\":255,\"moles\":255,\"lipstick\":255,\"facialhair\":255,\"chesthaircolor\":0,\"blemishes\":255},\"facefeatures\":{\"Jawwidth\":0.0,\"Nosewidth\":0.0,\"Chinwidth\":0.0,\"Nosetip\":0.0,\"Lips\":0.0,\"Nosebridgeshift\":0.0,\"Cheekboneheight\":0.0,\"Browwidth\":0.0,\"Cheekbonewidth\":0.0,\"Chinlength\":0.0,\"Chinposition\":0.0,\"Jawheight\":0.0,\"Eyes\":0.0,\"Cheekswidth\":0.0,\"Neckwidth\":0.0,\"Browheight\":0.0,\"Nosebridge\":0.0,\"Noselength\":0.0,\"Chinshape\":0.0,\"Noseheight\":0.0}}', '{\"y\":-871.12951660156,\"x\":260.96252441406,\"z\":29.232732772827}', 1, 'Chief', 0),
(105, 'Jorge', 'Gonzalez', 24, NULL, NULL, NULL, 'steam:1100001118e2642', NULL, '', '{\"facefeatures\":{\"Eyes\":0.20000000298023,\"Cheekswidth\":0.0,\"Chinlength\":0.0,\"Chinwidth\":0.0,\"Neckwidth\":0.0,\"Chinposition\":0.0,\"Noseheight\":-0.40000000596046,\"Lips\":0.0,\"Nosetip\":0.0,\"Noselength\":0.0,\"Browheight\":0.0,\"Browwidth\":0.0,\"Jawheight\":0.0,\"Jawwidth\":0.0,\"Chinshape\":0.0,\"Nosebridge\":0.0,\"Cheekbonewidth\":0.0,\"Cheekboneheight\":0.0,\"Nosebridgeshift\":0.0,\"Nosewidth\":0.30000001192093},\"model\":-1667301416,\"indexes\":{\"bracelet\":[-1,-1],\"watch\":[-1,-1],\"hats\":[14,0],\"glasses\":[-1,-1],\"ears\":[-1,-1]},\"pedcharacter\":{\"eyes\":0,\"blemishes\":255,\"moles\":255,\"blush\":255,\"chesthair\":255,\"blushcolor\":0,\"eyebrows\":255,\"sundamage\":255,\"makeup\":255,\"ageing\":255,\"lipstick\":255,\"eyebrowscolor\":0,\"bodyblemishes\":255,\"lipstickcolor\":0,\"complexion\":255,\"chesthaircolor\":0,\"facialhair\":255,\"facialhaircolor\":0},\"clothing\":{\"mask\":[0,0],\"torso2\":[270,0],\"pants\":[47,0],\"torso\":[0,0],\"parachute\":[0,0],\"hair\":[13,0],\"shoes\":[5,0],\"accessory\":[0,0],\"haircolor\":0,\"kevlar\":[4,0],\"badge\":[0,0],\"face\":[0,0],\"undershirt\":[0,0]}}', '{\"x\":260.96252441406,\"y\":-871.12951660156,\"z\":29.232732772827}', 92, 'Apprentice', 0),
(106, 'Zachary', 'Parker', 23, NULL, NULL, NULL, 'steam:110000109680299', NULL, '', '{\"pedcharacter\":{\"facialhair\":255,\"chesthaircolor\":0,\"complexion\":255,\"chesthair\":255,\"makeup\":255,\"eyebrows\":255,\"eyes\":65535,\"moles\":255,\"blushcolor\":0,\"ageing\":255,\"eyebrowscolor\":0,\"blush\":255,\"facialhaircolor\":16,\"lipstick\":255,\"sundamage\":255,\"blemishes\":255,\"bodyblemishes\":255,\"lipstickcolor\":0},\"facefeatures\":{\"Chinshape\":0.0,\"Nosetip\":0.0,\"Chinwidth\":0.0,\"Neckwidth\":0.0,\"Cheekswidth\":0.0,\"Browwidth\":0.0,\"Lips\":0.0,\"Nosebridge\":0.0,\"Eyes\":0.0,\"Jawheight\":0.0,\"Jawwidth\":0.0,\"Noseheight\":0.0,\"Chinposition\":0.0,\"Nosewidth\":0.0,\"Chinlength\":0.0,\"Noselength\":0.0,\"Nosebridgeshift\":0.0,\"Cheekbonewidth\":0.0,\"Cheekboneheight\":0.0,\"Browheight\":0.0},\"clothing\":{\"badge\":[0,0],\"undershirt\":[0,0],\"haircolor\":34,\"torso\":[0,0],\"mask\":[54,2],\"face\":[0,0],\"torso2\":[0,0],\"accessory\":[0,0],\"pants\":[0,0],\"parachute\":[0,0],\"hair\":[20,0],\"kevlar\":[0,0],\"shoes\":[0,0]},\"indexes\":{\"watch\":[-1,-1],\"bracelet\":[-1,-1],\"ears\":[13,1],\"hats\":[31,0],\"glasses\":[7,3]},\"model\":1885233650}', '{\"y\":-871.12951660156,\"x\":260.96252441406,\"z\":29.232732772827}', 1, 'Police Chief', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factions`
--

CREATE TABLE `factions` (
  `factionId` int(11) NOT NULL,
  `factionName` varchar(255) NOT NULL,
  `ranks` varchar(10000) DEFAULT NULL,
  `members` varchar(10000) DEFAULT NULL,
  `factionLeader` varchar(255) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factions`
--

INSERT INTO `factions` (`factionId`, `factionName`, `ranks`, `members`, `factionLeader`, `type`) VALUES
(1, 'Police Department', '{\"Police Chief\":{\"wage\":\"1200\",\"permission\":true},\"Chief\":{\"wage\":\"2500\",\"permission\":true}}', '[56,90,106]', '56', 0),
(91, '22', '{\"Apprentice\":{\"wage\":0,\"permission\":false}}', '[87]', '87', 1),
(92, 'Carlos Nuñez', '{\"Apprentice\":{\"permission\":false,\"wage\":0}}', '[105]', '105', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support`
--

CREATE TABLE `support` (
  `TicketId` int(11) NOT NULL,
  `TicketIssuer` varchar(30) NOT NULL,
  `TicketDescription` varchar(255) NOT NULL,
  `TicketStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `support`
--

INSERT INTO `support` (`TicketId`, `TicketIssuer`, `TicketDescription`, `TicketStatus`) VALUES
(1, 'steam:1100001118e2642', 'asdasdasd', 'pending'),
(2, 'steam:1100001118e2642', 'h', 'pending'),
(3, 'steam:1100001118e2642', 'sdfsdf', 'pending'),
(4, 'steam:1100001118e2642', 'dfs', 'pending'),
(5, 'steam:1100001118e2642', 'sdfsdfdf', 'pending'),
(6, 'steam:1100001118e2642', '213123123', 'pending'),
(7, 'steam:1100001118e2642', 'sadad', 'pending'),
(8, 'steam:1100001118e2642', 'I was CK\'d by user dhjadhasdb ', 'pending'),
(9, 'steam:1100001118e2642', 'asldansdasduasdghasd', 'pending'),
(10, 'steam:1100001118e2642', 'sdksdfjhsdfsdfsdf asdasdadasdasdasdasdasdasd', 'pending'),
(11, 'steam:1100001118e2642', 'asdasd', 'pending'),
(12, 'steam:1100001118e2642', 'a', 'pending');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `steamId` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `isBanned` varchar(255) NOT NULL,
  `money` varchar(255) NOT NULL,
  `bankMoney` varchar(255) NOT NULL,
  `properties` varchar(255) NOT NULL,
  `vehicles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`userId`, `steamId`, `firstName`, `lastName`, `isBanned`, `money`, `bankMoney`, `properties`, `vehicles`) VALUES
(1, '76561198254794306', '', '', '0', '1000', '1000', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles1`
--

CREATE TABLE `vehicles1` (
  `vehicleId` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  `z` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `vplate` varchar(255) DEFAULT NULL,
  `steamId` varchar(255) DEFAULT NULL,
  `plate` varchar(15) DEFAULT NULL,
  `properties` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehicles1`
--

INSERT INTO `vehicles1` (`vehicleId`, `model`, `x`, `y`, `z`, `heading`, `vplate`, `steamId`, `plate`, `properties`) VALUES
(19, 'adder', '-342.0223693847656', '-767.214111328125', '33.5577278137207', '90.88408660888672', NULL, 'steam:1100001118e2642', '41EEV028', '{\"oil\":5.0,\"fuel\":65.0,\"engine\":1000.0,\"wheelType\":0,\"tint\":-1,\"colors\":4}'),
(20, 'adder', '-1685.9888916015625', '-868.0535888671875', '8.271247863769531', '136.9', NULL, 'steam:1100001118e2642', '23ELL015', '{\"engine\":1000.0,\"fuel\":65.0,\"wheelType\":0,\"colors\":1,\"tint\":-1,\"oil\":5.0}'),
(21, 'adder', '-299.074951171875', '-775.7792358398438', '33.553592681884766', '160.4967498779297', NULL, 'steam:1100001118e2642', '01UJB010', '{\"wheelType\":7,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":111,\"engine\":1000.0}'),
(22, 'adder', '-331.80596923828125', '-750.7374267578125', '33.55588150024414', '358.8898620605469', NULL, 'steam:1100001118e2642', '60DBW243', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":0,\"fuel\":65.0,\"tint\":-1}'),
(23, 'adder', '-289.6722106933594', '-780.6112670898438', '33.553001403808594', '339.3900451660156', NULL, 'steam:1100001118e2642', '86IGV411', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":5,\"fuel\":65.0,\"tint\":-1}'),
(24, 'adder', '-342.2401123046875', '-756.7684326171875', '33.55754852294922', '275.072265625', NULL, 'steam:1100001118e2642', '09BKG407', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":89,\"fuel\":65.0,\"tint\":-1}'),
(25, 'adder', '-341.72265625', '-753.3504638671875', '33.55746078491211', '273.0428161621094', NULL, 'steam:1100001118e2642', '20NLU955', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":75,\"fuel\":65.0,\"tint\":-1}'),
(26, 'adder', '-342.6635437011719', '-749.5927124023438', '33.55834197998047', '91.4442367553711', NULL, 'steam:1100001118e2642', '06HCE564', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(27, 'adder', '-334.46685791015625', '-750.4252319335938', '33.55589294433594', '1.733786702156067', NULL, 'steam:1100001118e2642', '06BAT021', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":36,\"fuel\":65.0,\"tint\":-1}'),
(28, 'adder', '-314.7375183105469', '-754.8553466796875', '33.556053161621094', '161.24493408203125', NULL, 'steam:1100001118e2642', '28PHP410', '{\"tint\":-1,\"wheelType\":0,\"engine\":1000.0,\"colors\":3,\"oil\":5.0,\"fuel\":65.0}'),
(29, 'adder', '-328.9243469238281', '-750.696533203125', '33.557796478271484', '357.5467834472656', NULL, 'steam:1100001118e2642', '81CHU669', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":29,\"fuel\":65.0,\"tint\":-1}'),
(30, 'faggio', '-358.7476501464844', '-764.3129272460938', '33.447998046875', '87.61202239990234', NULL, 'steam:1100001118e2642', '61DXG696', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":36,\"engine\":1000.0}'),
(31, 'faggio', '-354.8986511230469', '-766.818359375', '33.451759338378906', '95.77532958984375', NULL, 'steam:1100001118e2642', '49IEM152', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":42,\"engine\":1000.0}'),
(32, 'faggio', '-358.7362060546875', '-765.282470703125', '33.44400405883789', '93.1064682006836', NULL, 'steam:1100001118e2642', '48UEL214', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":51,\"engine\":1000.0}'),
(33, 'faggio', '-355.1207275390625', '-767.79736328125', '33.44773483276367', '86.85688018798828', NULL, 'steam:1100001118e2642', '42OWS282', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":62,\"engine\":1000.0}'),
(34, 'faggio', '-356.15875244140625', '-765.27685546875', '33.454627990722656', '87.85029602050781', NULL, 'steam:1100001118e2642', '87JJV727', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":73,\"engine\":1000.0}'),
(35, 'faggio', '-355.43548583984375', '-768.7080688476562', '33.451568603515625', '87.79744720458984', NULL, 'steam:1100001118e2642', '83NZA799', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":29,\"engine\":1000.0}'),
(36, 'faggio', '-355.71319580078125', '-763.9384155273438', '33.45347213745117', '92.4050064086914', NULL, 'steam:1100001118e2642', '49MXM431', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":36,\"engine\":1000.0}'),
(37, 'faggio', '-357.9900817871094', '-768.7172241210938', '33.45116424560547', '86.4552001953125', NULL, 'steam:1100001118e2642', '43INJ419', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":42,\"engine\":1000.0}'),
(38, 'faggio', '-358.57928466796875', '-766.474365234375', '33.44926071166992', '93.04786682128906', NULL, 'steam:1100001118e2642', '81ODB712', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":51,\"engine\":1000.0}'),
(39, 'faggio', '-358.18487548828125', '-767.5460815429688', '33.45267868041992', '88.65618133544922', NULL, 'steam:1100001118e2642', '07JII596', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":62,\"engine\":1000.0}'),
(40, 'faggio', '-355.96240234375', '-764.6243286132812', '33.44870376586914', '90.85005950927734', NULL, 'steam:1100001118e2642', '83MJW763', '{\"wheelType\":6,\"tint\":-1,\"oil\":5.0,\"fuel\":65.0,\"colors\":73,\"engine\":1000.0}'),
(41, 'adder', '-305.28326416015625', '-759.2014770507812', '33.55611801147461', '157.58689880371094', NULL, 'steam:1100001118e2642', '03XNJ843', '{\"fuel\":65.0,\"tint\":-1,\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":0}'),
(42, 'adder', '-311.1446533203125', '-756.953857421875', '33.556121826171875', '161.00392150878906', NULL, 'steam:1100001118e2642', '22TKC973', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(44, 'elegy', '-298.5560607910156', '-760.3639526367188', '33.294925689697266', '163.22384643554688', NULL, 'steam:1100001118e2642', '48ZWV037', '{\"fuel\":65.0,\"tint\":-1,\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":79}'),
(45, 'specter2', '-357.3799743652344', '-745.8887329101562', '33.22944641113281', '91.03730773925781', NULL, 'steam:1100001118e2642', '67KBD435', '{\"fuel\":60.0,\"tint\":-1,\"engine\":1000.0,\"wheelType\":7,\"oil\":6.5,\"colors\":0}'),
(46, 'schlagen', '-315.2978515625', '-755.5760498046875', '33.261573791503906', '335.45953369140625', NULL, 'steam:1100001118e2642', '80VRY894', '{\"fuel\":65.0,\"tint\":-1,\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":73}'),
(47, 'dubsta', '-320.81890869140625', '-752.6368408203125', '33.522605895996094', '336.0768737792969', NULL, 'steam:1100001118e2642', '49RLX350', '{\"fuel\":65.0,\"tint\":-1,\"engine\":1000.0,\"wheelType\":3,\"oil\":5.0,\"colors\":1}'),
(48, 'dubsta2', '-302.50128173828125', '-759.755126953125', '33.531288146972656', '342.5522155761719', NULL, 'steam:1100001118e2642', '84WES017', '{\"fuel\":65.0,\"tint\":-1,\"engine\":1000.0,\"wheelType\":3,\"oil\":5.0,\"colors\":12}'),
(49, 'granger', '-317.58050537109375', '-753.8806762695312', '33.595008850097656', '159.69021606445312', NULL, 'steam:1100001118e2642', '62YQK070', '{\"engine\":1000.0,\"wheelType\":3,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(50, 'granger', '-276.3910217285156', '-771.5032958984375', '33.59035110473633', '252.47914123535156', NULL, 'steam:1100001118e2642', '86GFQ748', '{\"engine\":1000.0,\"wheelType\":3,\"oil\":5.0,\"colors\":2,\"fuel\":65.0,\"tint\":-1}'),
(51, 'warrener', '-302.83221435546875', '-742.7501220703125', '33.155643463134766', '342.09796142578125', NULL, 'steam:1100001118e2642', '82LEI693', '{\"engine\":1000.0,\"wheelType\":5,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(53, 'warrener', '-273.71929931640625', '-764.4439697265625', '33.156883239746094', '68.9166030883789', NULL, 'steam:1100001118e2642', '84SDL649', '{\"engine\":1000.0,\"wheelType\":5,\"oil\":5.0,\"colors\":2,\"fuel\":65.0,\"tint\":-1}'),
(54, 'warrener', '-302.9903259277344', '-774.80859375', '33.15751647949219', '158.29403686523438', NULL, 'steam:1100001118e2642', '83SWV252', '{\"engine\":1000.0,\"wheelType\":5,\"oil\":5.0,\"colors\":3,\"fuel\":65.0,\"tint\":-1}'),
(55, 'sultan', '-295.1546630859375', '-761.4508056640625', '33.362327575683594', '338.2362365722656', NULL, 'steam:1100001118e2642', '42MHG554', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(56, 'taxi', '-289.770751953125', '-764.2412109375', '33.575401306152344', '339.5744323730469', NULL, 'steam:1100001118e2642', '01DPV685', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":88,\"fuel\":65.0,\"tint\":-1}'),
(57, 'premier', '-284.6336975097656', '-749.138427734375', '33.47727966308594', '339.58062744140625', NULL, 'steam:1100001118e2642', '84BXR387', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":69,\"fuel\":65.0,\"tint\":-1}'),
(58, 'regina', '-297.2376403808594', '-745.7739868164062', '33.65434265136719', '159.8299102783203', NULL, 'steam:1100001118e2642', '27SUD314', '{\"engine\":1000.0,\"wheelType\":2,\"oil\":5.0,\"colors\":61,\"fuel\":65.0,\"tint\":-1}'),
(59, 'washington', '-290.2917175292969', '-747.792236328125', '33.490638732910156', '341.1201477050781', NULL, 'steam:1100001118e2642', '42DYK126', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(60, 'ingot', '-277.178955078125', '-751.9705810546875', '33.634830474853516', '338.03106689453125', NULL, 'steam:1100001118e2642', '08GKF093', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(61, 'emperor2', '-307.5357666015625', '-773.6361083984375', '33.467288970947266', '157.42739868164062', NULL, 'steam:1100001118e2642', '82MNI572', '{\"engine\":1000.0,\"wheelType\":2,\"oil\":5.0,\"colors\":85,\"fuel\":65.0,\"tint\":-1}'),
(62, 'rocoto', '-313.0227355957031', '-771.5067138671875', '33.825531005859375', '340.2379150390625', NULL, 'steam:1100001118e2642', '84XII125', '{\"engine\":1000.0,\"wheelType\":3,\"oil\":5.0,\"colors\":111,\"fuel\":65.0,\"tint\":-1}'),
(65, 'adder', '-292.7310485839844', '-763.4249267578125', '33.55623245239258', '340.247314453125', NULL, 'steam:1100001118e2642', '62YUX464', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":36,\"fuel\":65.0,\"tint\":-1}'),
(67, 'felon', '-280.47406005859375', '-750.9310302734375', '33.65606689453125', '339.90570068359375', NULL, 'steam:1100001118e2642', '27GRK426', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":2,\"fuel\":65.0,\"tint\":-1}'),
(68, 'windsor', '-275.74560546875', '-768.3916015625', '33.416908264160156', '70.62258911132812', NULL, 'steam:1100001118e2642', '61XZF568', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":98,\"fuel\":65.0,\"tint\":-1}'),
(69, 'blista', '-287.6905517578125', '-749.205078125', '33.78679275512695', '161.78079223632812', NULL, 'steam:1100001118e2642', '44CGS705', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":7,\"fuel\":65.0,\"tint\":-1}'),
(70, 'panto', '-270.613037109375', '-761.3391723632812', '33.29220962524414', '248.303955078125', NULL, 'steam:1100001118e2642', '23HHB711', '{\"engine\":1000.0,\"wheelType\":5,\"oil\":5.0,\"colors\":3,\"fuel\":65.0,\"tint\":-1}'),
(71, 'panto', '-271.20361328125', '-762.9908447265625', '33.292938232421875', '247.75265502929688', NULL, 'steam:1100001118e2642', '40CAV131', '{\"engine\":1000.0,\"wheelType\":5,\"oil\":5.0,\"colors\":111,\"fuel\":65.0,\"tint\":-1}'),
(72, 'panto', '-273.93670654296875', '-762.2108154296875', '33.2918701171875', '250.7393035888672', NULL, 'steam:1100001118e2642', '07TJT013', '{\"engine\":1000.0,\"wheelType\":5,\"oil\":5.0,\"colors\":32,\"fuel\":65.0,\"tint\":-1}'),
(73, 'panto', '-273.2345275878906', '-760.6065673828125', '33.29191589355469', '247.09632873535156', NULL, 'steam:1100001118e2642', '04JTB069', '{\"engine\":1000.0,\"wheelType\":5,\"oil\":5.0,\"colors\":54,\"fuel\":65.0,\"tint\":-1}'),
(74, 'issi2', '-277.66693115234375', '-774.5941162109375', '33.64101028442383', '248.09239196777344', NULL, 'steam:1100001118e2642', '21PCX049', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":34,\"fuel\":65.0,\"tint\":-1}'),
(75, 'issi2', '-356.8825988769531', '-756.9501342773438', '33.64288330078125', '87.73224639892578', NULL, 'steam:1100001118e2642', '48DTP124', '{\"fuel\":65.0,\"wheelType\":0,\"engine\":1000.0,\"tint\":-1,\"oil\":5.0,\"colors\":36}'),
(76, 'issi2', '-356.4936218261719', '-760.5635375976562', '33.644901275634766', '86.35629272460938', NULL, 'steam:1100001118e2642', '44HGD696', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":8,\"fuel\":65.0,\"tint\":-1}'),
(77, 'windsor2', '-337.4725646972656', '-750.33544921875', '33.42145538330078', '2.980776786804199', NULL, 'steam:1100001118e2642', '64MYA897', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":112,\"fuel\":65.0,\"tint\":-1}'),
(78, 'windsor2', '-342.01495361328125', '-760.4401245117188', '33.421871185302734', '90.66390228271484', NULL, 'steam:1100001118e2642', '45UTE101', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":112,\"fuel\":65.0,\"tint\":-1}'),
(79, 'exemplar', '-292.8703918457031', '-746.1873779296875', '33.57067108154297', '341.6191711425781', NULL, 'steam:1100001118e2642', '25WFQ016', '{\"engine\":1000.0,\"wheelType\":7,\"oil\":5.0,\"colors\":6,\"fuel\":65.0,\"tint\":-1}'),
(80, 'fbi', '-315.70025634765625', '-770.7581787109375', '33.611480712890625', '161.0256805419922', NULL, 'steam:1100001118e2642', '47BYN550', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(81, 'police2', '-356.9053649902344', '-780.6067504882812', '33.57900619506836', '299.74517822265625', NULL, 'steam:1100001118e2642', '63PWC562', '{\"colors\":134,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(82, 'oracle', '-310.35809326171875', '-772.8975830078125', '33.757511138916016', '160.9357452392578', NULL, 'steam:1100001118e2642', '48IQZ514', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.5,\"colors\":31,\"fuel\":65.0,\"tint\":-1}'),
(83, 'jackal', '-299.7891540527344', '-743.7188110351562', '33.69091796875', '341.38861083984375', NULL, 'steam:1100001118e2642', '27ZPY150', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":1,\"fuel\":65.0,\"tint\":-1}'),
(84, 'police4', '-307.5331726074219', '-756.89111328125', '33.57494354248047', '339.724609375', NULL, 'steam:1100001118e2642', '25YJR544', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":2,\"fuel\":65.0,\"tint\":-1}'),
(85, 'Dilettante2', '-323.8019104003906', '-752.0518188476562', '33.46134567260742', '338.1676330566406', NULL, 'steam:1100001118e2642', '28UZL126', '{\"engine\":1000.0,\"wheelType\":0,\"oil\":5.0,\"colors\":2,\"fuel\":65.0,\"tint\":-1}'),
(86, 'ruiner2', '-357.2359313964844', '-737.8851318359375', '33.68477249145508', '93.85134887695312', NULL, 'steam:1100001118e2642', '27NCD730', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":0,\"fuel\":65.0,\"tint\":-1}'),
(87, 'virgo', '-357.2419738769531', '-749.2261962890625', '33.49007797241211', '270.9770202636719', NULL, 'steam:1100001118e2642', '03UDZ754', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":0,\"fuel\":65.0,\"tint\":-1}'),
(88, 'stalion', '-356.3050842285156', '-753.8519897460938', '33.43952941894531', '271.2328186035156', NULL, 'steam:1100001118e2642', '63URL787', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":4,\"fuel\":65.0,\"tint\":-1}'),
(89, 'sabregt', '-342.48004150390625', '-764.0696411132812', '33.443634033203125', '272.1467590332031', NULL, 'steam:1100001118e2642', '66WUL123', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":0,\"fuel\":65.0,\"tint\":-1}'),
(90, 'sabregt', '-295.4236145019531', '-777.4441528320312', '33.43815994262695', '158.80996704101562', NULL, 'steam:1100001118e2642', '41NGW129', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":33,\"fuel\":65.0,\"tint\":-1}'),
(91, 'Sadler2', '-270.6815185546875', '-754.5642700195312', '33.71687698364258', '291.6004943847656', NULL, 'steam:1100001118e2642', '00MJE466', '{\"engine\":1000.0,\"wheelType\":3,\"oil\":6.5,\"colors\":11,\"fuel\":70.0,\"tint\":-1}'),
(92, 'Sadler', '-275.1985778808594', '-753.9041748046875', '33.71784591674805', '334.3634948730469', NULL, 'steam:1100001118e2642', '09NEA168', '{\"engine\":1000.0,\"wheelType\":3,\"oil\":6.5,\"colors\":11,\"fuel\":70.0,\"tint\":-1}'),
(93, 'Tampa', '-357.64776611328125', '-733.3139038085938', '33.44233322143555', '91.22911834716797', NULL, 'steam:1100001118e2642', '42FMQ623', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":28,\"fuel\":65.0,\"tint\":-1}'),
(94, 'Tampa', '-333.810302734375', '-756.77001953125', '33.442100524902344', '88.8537368774414', NULL, 'steam:1100001118e2642', '41OMT220', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":17,\"fuel\":65.0,\"tint\":-1}'),
(95, 'Tampa', '-334.40533447265625', '-759.6632080078125', '33.442020416259766', '89.34709930419922', NULL, 'steam:1100001118e2642', '02YMU292', '{\"engine\":1000.0,\"wheelType\":1,\"oil\":5.0,\"colors\":125,\"fuel\":65.0,\"tint\":-1}'),
(96, 'Kalahari', '-334.62213134765625', '-762.2938842773438', '33.494014739990234', '90.63589477539062', NULL, 'steam:1100001118e2642', '26BDX089', '{\"engine\":1000.0,\"wheelType\":4,\"oil\":6.5,\"colors\":54,\"fuel\":70.0,\"tint\":-1}'),
(97, 'dune', '-334.7099914550781', '-764.7815551757812', '33.437767028808594', '90.72463989257812', NULL, 'steam:1100001118e2642', '48ZGM013', '{\"engine\":1000.0,\"wheelType\":4,\"oil\":4.0,\"colors\":23,\"fuel\":45.0,\"tint\":-1}'),
(98, 'Blazer', '-359.2458801269531', '-771.8358764648438', '33.472537994384766', '87.9950942993164', NULL, 'steam:1100001118e2642', '85AIA799', '{\"engine\":1000.0,\"wheelType\":4,\"oil\":2.5,\"colors\":27,\"fuel\":10.0,\"tint\":-1}'),
(100, 'Blazer5', '-357.71099853515625', '-774.7625122070312', '33.210262298583984', '89.42793273925781', NULL, 'steam:1100001118e2642', '03ZHP305', '{\"colors\":3,\"wheelType\":0,\"tint\":-1,\"fuel\":10.0,\"engine\":1000.0,\"oil\":2.5}'),
(101, 'Blazer3', '-358.4867858886719', '-776.934814453125', '33.468563079833984', '88.9154052734375', NULL, 'steam:1100001118e2642', '83XRT651', '{\"engine\":1000.0,\"wheelType\":4,\"oil\":2.5,\"colors\":0,\"fuel\":10.0,\"tint\":-1}'),
(102, 'Technical2', '-356.5810852050781', '-729.5242919921875', '33.55126190185547', '86.75814056396484', NULL, 'steam:1100001118e2642', '69GDX463', '{\"engine\":1000.0,\"wheelType\":4,\"oil\":8.0,\"colors\":0,\"fuel\":80.0,\"tint\":-1}'),
(103, 'Lguard', '-358.36529541015625', '-785.3418579101562', '33.5948600769043', '121.36261749267578', NULL, 'steam:1100001118e2642', '23HOS192', '{\"colors\":111,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(104, 'CarbonRS', '-361.853759765625', '-748.5987548828125', '33.47775650024414', '178.49879455566406', NULL, 'steam:1100001118e2642', '42DMT629', '{\"colors\":132,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":999.76556396484,\"oil\":5.0}'),
(105, 'CarbonRS', '-360.4899597167969', '-739.9284057617188', '33.47846221923828', '83.81695556640625', NULL, 'steam:1100001118e2642', '80QUD559', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(106, 'CarbonRS', '-361.0657958984375', '-738.7128295898438', '33.49262237548828', '99.6178970336914', NULL, 'steam:1100001118e2642', '28ZGE805', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(107, 'CarbonRS', '-361.3580627441406', '-737.0697631835938', '33.480072021484375', '93.27749633789062', NULL, 'steam:1100001118e2642', '46QLE693', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(108, 'CarbonRS', '-360.981201171875', '-735.6026000976562', '33.48798370361328', '88.90015411376953', NULL, 'steam:1100001118e2642', '85YCR447', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(109, 'CarbonRS', '-361.4827575683594', '-734.0293579101562', '33.4785041809082', '92.51151275634766', NULL, 'steam:1100001118e2642', '63DKX901', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(110, 'CarbonRS', '-361.5865173339844', '-732.550537109375', '33.47873306274414', '92.85939025878906', NULL, 'steam:1100001118e2642', '22SCJ299', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(111, 'CarbonRS', '-361.66455078125', '-755.3781127929688', '33.47066116333008', '263.70220947265625', NULL, 'steam:1100001118e2642', '40JIF855', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(112, 'CarbonRS', '-361.6783447265625', '-758.2196044921875', '33.47014617919922', '258.1136474609375', NULL, 'steam:1100001118e2642', '08PAU169', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(113, 'CarbonRS', '-361.5923767089844', '-759.5392456054688', '33.488773345947266', '285.3435363769531', NULL, 'steam:1100001118e2642', '01AKY635', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(114, 'CarbonRS', '-361.30615234375', '-761.3092041015625', '33.49177169799805', '273.498046875', NULL, 'steam:1100001118e2642', '26FNO407', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(115, 'CarbonRS', '-358.0819091796875', '-762.3043823242188', '33.49046325683594', '267.1584777832031', NULL, 'steam:1100001118e2642', '44DIE558', '{\"colors\":132,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(116, 'CarbonRS', '-361.65069580078125', '-762.6188354492188', '33.477867126464844', '268.684814453125', NULL, 'steam:1100001118e2642', '21SBV482', '{\"colors\":132,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(117, 'Sanchez', '-361.5447082519531', '-773.4407958984375', '33.43899154663086', '264.5521240234375', NULL, 'steam:1100001118e2642', '03JCT914', '{\"engine\":1000.0,\"wheelType\":6,\"oil\":5.0,\"colors\":0,\"fuel\":65.0,\"tint\":-1}'),
(118, 'Sanchez', '-361.64544677734375', '-775.3270874023438', '33.41395568847656', '262.331787109375', NULL, 'steam:1100001118e2642', '80VTH828', '{\"colors\":0,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(119, 'Sanchez', '-361.5845947265625', '-776.0925903320312', '33.4432373046875', '270.7525939941406', NULL, 'steam:1100001118e2642', '69DDI587', '{\"colors\":0,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(120, 'Sanchez', '-361.695068359375', '-777.7330932617188', '33.43978500366211', '248.13485717773438', NULL, 'steam:1100001118e2642', '29OSD019', '{\"colors\":0,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(121, 'Sanchez', '-361.5144348144531', '-778.7664794921875', '33.485862731933594', '263.55938720703125', NULL, 'steam:1100001118e2642', '49JVL169', '{\"colors\":0,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(122, 'Sanchez', '-361.6159362792969', '-771.9347534179688', '33.41240310668945', '260.5447998046875', NULL, 'steam:1100001118e2642', '03QYV486', '{\"colors\":0,\"wheelType\":6,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(123, 'Sanchez', '-361.63677978515625', '-770.1264038085938', '33.42496109008789', '270.894775390625', NULL, 'steam:1100001118e2642', '82YJP968', '{\"colors\":0,\"wheelType\":0,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(226, 'adder', '-336.6130676269531', '-876.6162719726562', '30.66215705871582', '340.5614318847656', NULL, 'steam:1100001118e2642', '06OJV757', '{\"colors\":75,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(227, 'adder', '-332.8226623535156', '-877.0676879882812', '30.66244888305664', '345.1328125', NULL, 'steam:1100001118e2642', '84ZHB987', '{\"colors\":4,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(228, 'adder', '-330.0660400390625', '-877.5084838867188', '30.662649154663086', '353.2451171875', NULL, 'steam:1100001118e2642', '69OHY128', '{\"colors\":111,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(229, 'adder', '-318.90789794921875', '-879.7191772460938', '30.669296264648438', '349.39990234375', NULL, 'steam:1100001118e2642', '08KOM160', '{\"colors\":1,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(230, 'adder', '-314.2373352050781', '-880.9365234375', '30.67059898376465', '347.2582092285156', NULL, 'steam:1100001118e2642', '49URG265', '{\"colors\":0,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(231, 'adder', '-303.11492919921875', '-882.5996704101562', '30.744943618774414', '353.6921691894531', NULL, 'steam:1100001118e2642', '26WPJ926', '{\"colors\":5,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(232, 'adder', '-311.18927001953125', '-897.0718383789062', '30.661306381225586', '166.5930633544922', NULL, 'steam:1100001118e2642', '27ZVD572', '{\"colors\":29,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(233, 'adder', '-313.9908142089844', '-896.49462890625', '30.665437698364258', '167.07615661621094', NULL, 'steam:1100001118e2642', '04RAM561', '{\"colors\":3,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(234, 'adder', '-321.38726806640625', '-880.467529296875', '30.663108825683594', '170.18093872070312', NULL, 'steam:1100001118e2642', '00RJD607', '{\"fuel\":65.0,\"oil\":5.0,\"colors\":29,\"tint\":-1,\"wheelType\":7,\"engine\":1000.0}'),
(235, 'adder', '-317.6845397949219', '-895.6524658203125', '30.66025161743164', '167.10406494140625', NULL, 'steam:1100001118e2642', '86SIR804', '{\"colors\":36,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(236, 'adder', '-324.7501220703125', '-893.6494140625', '30.656858444213867', '347.24432373046875', NULL, 'steam:1100001118e2642', '42FNX794', '{\"colors\":1,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(237, 'adder', '-321.95806884765625', '-894.2890625', '30.65951156616211', '347.1702880859375', NULL, 'steam:1100001118e2642', '81AQT727', '{\"colors\":89,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(238, 'adder', '-338.03021240234375', '-891.326904296875', '30.66118812561035', '182.43316650390625', NULL, 'steam:1100001118e2642', '00KLH643', '{\"colors\":0,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(239, 'adder', '-334.8951416015625', '-891.6754150390625', '30.660341262817383', '173.79257202148438', NULL, 'steam:1100001118e2642', '64PKR461', '{\"colors\":0,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(240, 'adder', '-339.1673889160156', '-884.0415649414062', '30.661170959472656', '144.8956756591797', NULL, 'steam:1100001118e2642', '01ERH241', '{\"colors\":1,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(241, 'adder', '-341.5672912597656', '-882.4046630859375', '30.661174774169922', '145.11727905273438', NULL, 'steam:1100001118e2642', '02MGO365', '{\"colors\":5,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(242, 'adder', '-344.4654846191406', '-880.3895263671875', '30.661222457885742', '145.13938903808594', NULL, 'steam:1100001118e2642', '84BDW788', '{\"colors\":4,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(243, 'adder', '-325.43634033203125', '-886.2981567382812', '30.65533447265625', '348.1620178222656', NULL, 'steam:1100001118e2642', '20ZAZ344', '{\"colors\":4,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(244, 'adder', '-323.1205749511719', '-886.7802734375', '30.6582088470459', '348.18212890625', NULL, 'steam:1100001118e2642', '06YUU271', '{\"colors\":111,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(245, 'adder', '-320.1814880371094', '-887.3861083984375', '30.656770706176758', '348.19561767578125', NULL, 'steam:1100001118e2642', '83OSC131', '{\"colors\":111,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(246, 'adder', '-321.2057800292969', '-909.0167846679688', '30.669090270996094', '348.02447509765625', NULL, 'steam:1100001118e2642', '03OUY355', '{\"colors\":75,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(247, 'adder', '-317.2578125', '-910.3146362304688', '30.669221878051758', '345.6628112792969', NULL, 'steam:1100001118e2642', '81XXD991', '{\"colors\":89,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(248, 'adder', '-314.82037353515625', '-910.9613647460938', '30.665714263916016', '345.67742919921875', NULL, 'steam:1100001118e2642', '00SFG018', '{\"colors\":75,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(249, 'adder', '-330.9819641113281', '-910.1720581054688', '30.666515350341797', '182.15980529785156', NULL, 'steam:1100001118e2642', '00EEJ152', '{\"colors\":3,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(250, 'adder', '-332.3598327636719', '-915.5604858398438', '30.669572830200195', '244.80145263671875', NULL, 'steam:1100001118e2642', '61FQJ148', '{\"colors\":29,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(251, 'adder', '-334.2261962890625', '-919.4554443359375', '30.662145614624023', '224.98318481445312', NULL, 'steam:1100001118e2642', '81ESC197', '{\"colors\":3,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(252, 'adder', '-337.2290344238281', '-922.5354614257812', '30.690134048461914', '227.86697387695312', NULL, 'steam:1100001118e2642', '80FIC203', '{\"colors\":5,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(253, 'adder', '-324.5479431152344', '-924.807861328125', '30.91809844970703', '332.4728088378906', NULL, 'steam:1100001118e2642', '66BHA893', '{\"colors\":29,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(259, 'adder', '-336.5026550292969', '-908.0391235351562', '30.669551849365234', '38.03669738769531', NULL, 'steam:1100001118e2642', '86AIZ249', '{\"colors\":36,\"wheelType\":7,\"tint\":-1,\"fuel\":65.0,\"engine\":1000.0,\"oil\":5.0}'),
(261, 'adder', '-654.2154541015625', '5673.04736328125', '32.43603515625', '275.66139221191406', NULL, 'steam:110000109680299', '60HLK216', ''),
(262, 'adder', '1096.0576171875', '-752.4779663085938', '58.31209945678711', '435.7723388671875', NULL, 'steam:1100001118e2642', '61RQD431', ''),
(263, 'marquis', '-1337.6444091796875', '-1741.4117431640625', '1.5054008960723877', '225.23260498046875', NULL, 'steam:1100001118e2642', NULL, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`charId`);

--
-- Indices de la tabla `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionId`);

--
-- Indices de la tabla `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`TicketId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indices de la tabla `vehicles1`
--
ALTER TABLE `vehicles1`
  ADD PRIMARY KEY (`vehicleId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `charId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `factions`
--
ALTER TABLE `factions`
  MODIFY `factionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `support`
--
ALTER TABLE `support`
  MODIFY `TicketId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vehicles1`
--
ALTER TABLE `vehicles1`
  MODIFY `vehicleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
