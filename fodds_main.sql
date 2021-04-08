-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql-fodds.alwaysdata.net
-- Generation Time: Jan 05, 2021 at 04:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fodds_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `circuit`
--

CREATE TABLE `circuit` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `length` double UNSIGNED NOT NULL,
  `fastest_lap` varchar(255) DEFAULT NULL,
  `img_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `circuit`
--

INSERT INTO `circuit` (`id`, `name`, `location`, `length`, `fastest_lap`, `img_link`) VALUES
(1, 'Spa-Francorchamps', 'Francorchamps, Belgique', 7.004, '1:41:252', 'https://localhost/assets/img/circuits/Circuit de Spa-Francorchamps.png'),
(2, 'Autodromo Nazionale di Monza', 'Monza, Italie', 5.793, '1:18:887', 'https://localhost/assets/img/circuits/Autodromo Nazionale Monza.png'),
(3, 'Circuit Paul-Ricard', 'Le Castellet, France', 5.861, '1:28:319', 'https://localhost/assets/img/circuits/Circuit Paul Ricard.png'),
(4, 'Suzuka Circuit', 'Suzuka, Japon', 5.821, '1:27:064 ', 'https://localhost/assets/img/circuits/Suzuka International Racing Course.png'),
(5, 'Autodromo Enzo e Dino Ferrari', 'Imola, Italie', 4.909, '1:20:411', 'https://localhost/assets/img/circuits/Autodromo Enzo e Dino Ferrari.png'),
(6, 'Autódromo Hermanos Rodríguez', 'Mexio, Mexique', 4.304, '1:14:758', 'https://localhost/assets/img/circuits/Autodromo Hermanos Rodriguez.png'),
(7, 'Autódromo Internacional do Algarve', 'Portimão Algarve, Portugal', 4.692, '1:31:404', 'https://localhost/assets/img/circuits/Autodromo Internacional do Algarve.png'),
(8, 'Autódromo José Carlos Pace', 'São Paulo , Brésil', 4.309, '1:07:281', 'https://localhost/assets/img/circuits/Autodromo Jose Carlos Pace.png'),
(10, 'Bahrain International Circuit – Outer Track', 'Sakhir, Bahrain', 3.543, NULL, 'https://localhost/assets/img/circuits/Bahrain International Circuit OT.png'),
(11, 'Bahrain International Circuit', 'Sakhir, Bahrain', 5.412, '1:27:866', 'https://localhost/assets/img/circuits/Bahrain International Circuit.png'),
(12, 'Baku City Circuit', 'Baku, Azerbaijan', 6.003, '1:43:009', 'https://localhost/assets/img/circuits/Baku City Circuit.png'),
(13, 'Red Bull Ring', 'Styria, Austria', 4.318, '1:05.619', 'https://localhost/assets/img/circuits/Red Bull Ring.png'),
(14, 'Circuit de Barcelona-Catalunya', 'Catalonia, Spain', 4.655, '1:18.183', 'https://localhost/assets/img/circuits/Circuit de Barcelona-Catalunya.png'),
(15, 'Circuit de Monaco', 'Monte-Carlo, Monaco', 3.337, '1:10:166', 'https://localhost/assets/img/circuits/Circuit de Monaco.png'),
(16, 'Circuit Gilles-Villeneuve', 'Québec, Canada', 4.361, '1:10:240', 'https://localhost/assets/img/circuits/Circuit Gilles-Villeneuve.png'),
(17, 'Circuit of The Americas', 'Texas, Etats-Unis', 5.513, '1:32:029', 'https://localhost/assets/img/circuits/Circuit of The Americas.png'),
(18, 'Hockenheimring', 'Hockenheim, Allemagne', 4.574, '1:11:212', 'https://localhost/assets/img/circuits/Hockenheimring.png'),
(19, 'Hungaroring', 'Mogyoród, Hongrie', 4.381, '1:17:103', 'https://localhost/assets/img/circuits/Hungaroring.png'),
(20, 'Intercity Istanbul Park', 'Tuzla, Turkey', 5.338, '1:24:770', 'https://localhost/assets/img/circuits/Intercity Istanbul Park.png'),
(21, 'Marina Bay Street Circuit', 'Marina Bay, Singapour', 5.063, '1:41:905', 'https://localhost/assets/img/circuits/Marina Bay Street Circuit.png'),
(22, 'Melbourne Grand Prix Circuit', 'Albert Park, Australie', 5.303, '1:20:486', 'https://localhost/assets/img/circuits/Melbourne Grand Prix Circuit.png'),
(23, 'Mugello', 'Mugello, Italie', 5.245, '1:15:144', 'https://localhost/assets/img/circuits/Mugello.png'),
(24, 'Nürburgring', 'Nürburg, Allemagne', 5.148, '1:28:351', 'https://localhost/assets/img/circuits/Nurburgring.png'),
(25, 'Shanghai International Circuit', 'Shanghai, Chine', 5.451, '1:31:095', 'https://localhost/assets/img/circuits/Shanghai International Circuit.png'),
(26, 'Silverstone Circuit', 'Northamptonshire, Angleterre', 5.891, '1:24:303', 'https://localhost/assets/img/circuits/Silverstone Circuit.png'),
(27, 'Sochi Autodrom', 'Sotchi, Russie', 5.848, '1:31:304', 'https://localhost/assets/img/circuits/Sochi Autodrom.png'),
(28, 'Yas Marina Circuit', 'Yas Marina, Abou Dabi', 5.554, '1:34:779', 'https://localhost/assets/img/circuits/Yas Marina Circuit.png');

-- --------------------------------------------------------

--
-- Table structure for table `constructor_standings`
--

CREATE TABLE `constructor_standings` (
  `placement` int(10) UNSIGNED DEFAULT NULL,
  `points` int(10) DEFAULT NULL,
  `team_id` int(10) UNSIGNED NOT NULL,
  `season_id` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `constructor_standings`
--

INSERT INTO `constructor_standings` (`placement`, `points`, `team_id`, `season_id`) VALUES
(1, 540, 2, 2020),
(2, 282, 1, 2020),
(5, 135, 5, 2020),
(3, 184, 3, 2020),
(4, 172, 4, 2020),
(6, 131, 6, 2020),
(7, 103, 7, 2020),
(8, 8, 8, 2020),
(9, 3, 9, 2020),
(10, 0, 10, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `firstN` varchar(255) NOT NULL,
  `lastN` varchar(255) NOT NULL,
  `numb` int(10) UNSIGNED NOT NULL,
  `age` int(3) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `img_link` varchar(255) NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `nationality_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `active`, `firstN`, `lastN`, `numb`, `age`, `alias`, `img_link`, `team_id`, `nationality_id`) VALUES
(1, 1, 'Lewis', 'Hamilton', 44, 35, 'HAM', 'https://localhost/assets/img/drivers/HAM.png', 2, 4),
(2, 1, 'Valtteri', 'Bottas', 77, 31, 'BOT', 'https://localhost/assets/img/drivers/BOT.png', 2, 7),
(3, 1, 'Max', 'Verstappen', 33, 22, 'VER', 'https://localhost/assets/img/drivers/VER.png', 1, 8),
(4, 1, 'Lando', 'Norris', 4, 20, 'NOR', 'https://localhost/assets/img/drivers/NOR.png', 3, 4),
(5, 1, 'Alexander', 'Albon', 23, 24, 'ALB', 'https://localhost/assets/img/drivers/ALB.png', 1, 9),
(6, 1, 'Daniel', 'Ricciardo', 3, 31, 'RIC', 'https://localhost/assets/img/drivers/RIC.png', 5, 10),
(7, 1, 'Charles', 'Leclerc', 16, 22, 'LEC', 'https://localhost/assets/img/drivers/LEC.png', 6, 12),
(8, 1, 'Lance', 'Stroll', 18, 21, 'STR', 'https://localhost/assets/img/drivers/STR.png', 4, 11),
(9, 1, 'Sergio', 'Perez', 11, 30, 'PER', 'https://localhost/assets/img/drivers/PER.png', 4, 16),
(10, 1, 'Pierre', 'Gasly', 10, 24, 'GAS', 'https://localhost/assets/img/drivers/GAS.png', 7, 1),
(11, 1, 'Carlos', 'Sainz', 55, 26, 'SAI', 'https://localhost/assets/img/drivers/SAI.png', 3, 13),
(12, 1, 'Esteban', 'Ocon', 31, 24, 'OCO', 'https://localhost/assets/img/drivers/OCO.png', 5, 1),
(13, 1, 'Sebastian', 'Vettel', 5, 33, 'VET', 'https://localhost/assets/img/drivers/VET.png', 6, 2),
(14, 1, 'Daniil', 'Kvyat', 26, 26, 'KVY', 'https://localhost/assets/img/drivers/KVY.png', 7, 14),
(15, 0, 'Nico', 'Hulkenberg', 27, 33, 'HUL', 'https://localhost/assets/img/drivers/HUL.png', 4, 2),
(16, 1, 'Kimi', 'Räikkönen', 7, 40, 'RAI', 'https://localhost/assets/img/drivers/RAI.png', 8, 7),
(17, 1, 'Antonio', 'Giovinazzi', 99, 26, 'GIO', 'https://localhost/assets/img/drivers/GIO.png', 8, 3),
(18, 1, 'Kevin', 'Magnussen', 20, 27, 'MAG', 'https://localhost/assets/img/drivers/MAG.png', 9, 15),
(19, 1, 'Nicholas', 'Latifi', 6, 25, 'LAT', 'https://localhost/assets/img/drivers/LAT.png', 10, 11),
(20, 1, 'George', 'Russell', 63, 22, 'RUS', 'https://localhost/assets/img/drivers/RUS.png', 10, 4),
(21, 0, 'Romain', 'Grosjean', 8, 34, 'GRO', 'https://localhost/assets/img/drivers/GRO.png', 9, 1),
(22, 0, 'Jack', 'Aitken', 89, 25, 'AIT', 'https://localhost/assets/img/drivers/AIT.png', 10, 4),
(23, 1, 'Pietro', 'Fittipaldi', 51, 24, 'FIT', 'https://localhost/assets/img/drivers/FIT.png', 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `driver_standings`
--

CREATE TABLE `driver_standings` (
  `placement` int(10) UNSIGNED DEFAULT NULL,
  `points` int(10) DEFAULT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `season_id` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver_standings`
--

INSERT INTO `driver_standings` (`placement`, `points`, `driver_id`, `season_id`) VALUES
(1, 332, 1, 2020),
(2, 205, 2, 2020),
(3, 189, 3, 2020),
(5, 112, 6, 2020),
(6, 98, 7, 2020),
(4, 125, 9, 2020),
(9, 87, 4, 2020),
(7, 97, 11, 2020),
(8, 93, 5, 2020),
(11, 71, 10, 2020),
(10, 74, 8, 2020),
(12, 60, 12, 2020),
(14, 32, 14, 2020),
(13, 33, 13, 2020),
(15, 10, 15, 2020),
(16, 4, 16, 2020),
(17, 4, 17, 2020),
(19, 2, 21, 2020),
(20, 1, 18, 2020),
(21, 0, 19, 2020),
(18, 3, 20, 2020),
(22, 0, 22, 2020),
(23, 0, 23, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `engine_sup`
--

CREATE TABLE `engine_sup` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engine_sup`
--

INSERT INTO `engine_sup` (`id`, `name`) VALUES
(1, 'Ferrari'),
(2, 'Mercedes'),
(3, 'Renault'),
(4, 'Honda');

-- --------------------------------------------------------

--
-- Table structure for table `event_result`
--

CREATE TABLE `event_result` (
  `race_event_id` int(10) UNSIGNED NOT NULL,
  `placement` int(10) UNSIGNED NOT NULL,
  `time` varchar(255) NOT NULL,
  `points` int(10) DEFAULT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_result`
--

INSERT INTO `event_result` (`race_event_id`, `placement`, `time`, `points`, `driver_id`) VALUES
(5, 1, '1:30:55.739', 25, 2),
(5, 2, '+2.700s', 18, 7),
(5, 3, '+5.491s', 16, 4),
(5, 4, '+5.689s', 12, 1),
(5, 5, '+8.903s', 10, 11),
(5, 6, '+15.092s', 8, 9),
(5, 7, '+16.682s', 6, 10),
(5, 8, '+17.456s', 4, 12),
(5, 9, '+21.146s', 2, 17),
(5, 10, '+24.545s', 1, 13),
(5, 11, '+31.650s', 0, 19),
(5, 12, 'DNF', 0, 14),
(5, 13, 'DNF', 0, 5),
(5, 14, 'DNF', 0, 16),
(5, 15, 'DNF', 0, 20),
(5, 16, 'DNF', 0, 21),
(5, 17, 'DNF', 0, 18),
(5, 18, 'DNF', 0, 8),
(5, 19, 'DNF', 0, 6),
(5, 20, 'DNF', 0, 3),
(49, 1, '1:22:50.683', 25, 1),
(49, 2, '+13.719s', 18, 2),
(49, 3, '+33.698s', 15, 3),
(49, 4, '+44.400s', 12, 5),
(49, 5, '+61.470s', 10, 4),
(49, 6, '+62.387s', 8, 9),
(49, 7, '+62.453s', 6, 8),
(49, 8, '+62.591s', 4, 6),
(49, 9, '+1 lap', 3, 11),
(49, 10, '+1 lap', 1, 14),
(49, 11, '+1 lap', 0, 16),
(49, 12, '+1 lap', 0, 18),
(49, 13, '+1 lap', 0, 21),
(49, 14, '+1 lap', 0, 17),
(49, 15, '+1 lap', 0, 10),
(49, 16, '+2 laps', 0, 20),
(49, 17, '+2 laps', 0, 19),
(49, 18, 'DNF', 0, 12),
(49, 19, 'DNF', 0, 7),
(49, 20, 'DNF', 0, 13),
(50, 1, '1:36:12.473', 26, 1),
(50, 2, '+8.702s', 18, 3),
(50, 3, '+9.452s', 15, 2),
(50, 4, '+57.579s', 12, 8),
(50, 5, '+78.316s', 10, 5),
(50, 6, '+1 lap', 8, 13),
(50, 7, '+1 lap', 6, 9),
(50, 8, '+1 lap', 4, 6),
(50, 9, '+1 lap', 2, 11),
(50, 10, '+1 lap', 1, 18),
(50, 11, '+1 lap', 0, 7),
(50, 12, '+1 lap', 0, 14),
(50, 13, '+1 lap', 0, 4),
(50, 14, '+1 lap', 0, 12),
(50, 15, '+1 lap', 0, 16),
(50, 16, '+1 lap', 0, 21),
(50, 17, '+1 lap', 0, 17),
(50, 18, '+1 lap', 0, 20),
(50, 19, '+5 laps', 0, 19),
(50, 20, 'DNF', 0, 10),
(51, 1, '1:28:01.283', 25, 1),
(51, 2, '+5.856s', 19, 3),
(51, 3, '+18.474s', 15, 7),
(51, 4, '+19.650s', 12, 6),
(51, 5, '+22.277s', 10, 4),
(51, 6, '+26.937s', 8, 12),
(51, 7, '+31.188s', 6, 10),
(51, 8, '+32.670s', 4, 5),
(51, 9, '+37.311s', 2, 8),
(51, 10, '+41.857s', 1, 13),
(51, 11, '+42.167s', 0, 2),
(51, 12, '+52.004s', 0, 20),
(51, 13, '+53.370s', 0, 11),
(51, 14, '+54.205s', 0, 17),
(51, 15, '+54.549s', 0, 19),
(51, 16, '+55.050s', 0, 21),
(51, 17, '+1 lap', 0, 16),
(51, 18, 'DNF', 0, 14),
(51, 19, 'DNF', 0, 18),
(51, 20, 'DNS', 0, 15),
(52, 1, '1:19:41.993', 25, 3),
(52, 2, '+11.326s', 19, 1),
(52, 3, '+19.231s', 15, 2),
(52, 4, '+29.289s', 12, 7),
(52, 5, '+39.146s', 10, 5),
(52, 6, '+42.538s', 8, 8),
(52, 7, '+55.951s', 6, 15),
(52, 8, '+64.773s', 4, 12),
(52, 9, '+65.544s', 2, 4),
(52, 10, '+69.669s', 1, 14),
(52, 11, '+70.642s', 0, 10),
(52, 12, '+73.370s', 0, 13),
(52, 13, '+74.070s', 0, 11),
(52, 14, '+1 lap', 0, 6),
(52, 15, '+1 lap', 0, 16),
(52, 16, '+1 lap', 0, 21),
(52, 17, '+1 lap', 0, 17),
(52, 18, '+1 lap', 0, 20),
(52, 19, '+1 lap', 0, 19),
(52, 20, 'DNF', 0, 18),
(53, 1, '1:31:45.279', 25, 1),
(53, 2, '+24.177s', 18, 3),
(53, 3, '+44.752s', 16, 2),
(53, 4, '+1 lap', 12, 8),
(53, 5, '+1 lap', 10, 9),
(53, 6, '+1 lap', 8, 11),
(53, 7, '+1 lap', 8, 13),
(53, 8, '+1 lap', 6, 5),
(53, 9, '+1 lap', 2, 10),
(53, 10, '+1 lap', 1, 4),
(53, 11, '+1 lap', 0, 6),
(53, 12, '+1 lap', 0, 14),
(53, 13, '+1 lap', 0, 12),
(53, 14, '+1 lap', 0, 16),
(53, 15, '+1 lap', 0, 18),
(53, 16, '+1 lap', 0, 17),
(53, 17, '+1 lap', 0, 20),
(53, 18, '+2 laps', 0, 19),
(53, 19, '+2 laps', 0, 21),
(53, 20, 'DNF', 0, 7),
(54, 2, '+8.448s', 18, 2),
(54, 3, '+15.455s', 15, 3),
(54, 4, '+18.877s', 13, 6),
(54, 5, '+40.650s', 10, 12),
(54, 6, '+42.712s', 8, 5),
(54, 7, '+43.774s', 6, 4),
(54, 8, '+47.371s', 4, 10),
(54, 9, '+52.603s', 2, 8),
(54, 10, '+53.179s', 1, 9),
(54, 11, '+70.200s', 0, 14),
(54, 12, '+71.504s', 0, 16),
(54, 13, '+72.894s', 0, 13),
(54, 14, '+74.920s', 0, 7),
(54, 15, '+76.793s', 0, 21),
(54, 16, '+77.795s', 0, 19),
(54, 17, '+85.540s', 0, 18),
(54, 18, 'DNF', 0, 17),
(54, 19, 'DNF', 0, 20),
(54, 20, 'DNS', 0, 11),
(55, 1, '1:47:06.056', 25, 10),
(55, 2, '+0.415s', 18, 11),
(55, 3, '+3.358s', 15, 8),
(55, 4, '+6.000s', 12, 4),
(55, 5, '+7.108s', 10, 2),
(55, 6, '+8.391s', 8, 6),
(55, 7, '+17.245s', 7, 1),
(55, 8, '+18.691s', 4, 12),
(55, 9, '+22.208s', 2, 14),
(55, 10, '+23.224s', 1, 9),
(55, 11, '+32.876s', 0, 19),
(55, 12, '+35.164s', 0, 21),
(55, 13, '+36.312s', 0, 16),
(55, 14, '+36.593s', 0, 20),
(55, 15, '+37.533s', 0, 5),
(55, 16, '+55.199s', 0, 17),
(55, 17, 'DNF', 0, 3),
(55, 18, 'DNF', 0, 7),
(55, 19, 'DNF', 0, 18),
(55, 20, 'DNF', 0, 13),
(56, 1, '2:19:35.060', 26, 1),
(56, 2, '+4.880s', 18, 2),
(56, 3, '+8.064s', 15, 5),
(56, 4, '+10.417s', 12, 6),
(56, 5, '+15.650s', 10, 9),
(56, 6, '+18.883s', 8, 4),
(56, 7, '+21.756s', 6, 14),
(56, 8, '+28.345s', 4, 7),
(56, 9, '+29.770s', 2, 16),
(56, 10, '+29.983s', 1, 13),
(56, 11, '+32.404s', 0, 20),
(56, 12, '+42.036s', 0, 21),
(56, 13, 'DNF', 0, 8),
(56, 14, 'DNF', 0, 12),
(56, 15, 'DNF', 0, 19),
(56, 16, 'DNF', 0, 18),
(56, 17, 'DNF', 0, 17),
(56, 18, 'DNF', 0, 11),
(56, 19, 'DNF', 0, 3),
(56, 20, 'DNF', 0, 10),
(57, 1, '1:34:00.364', 26, 2),
(57, 2, '+7.729s', 18, 3),
(57, 3, '+22.729s', 15, 1),
(57, 4, '+30.558s', 12, 9),
(57, 5, '+52.065s', 10, 6),
(57, 6, '+62.186s', 8, 7),
(57, 7, '+68.006s', 6, 12),
(57, 8, '+68.740s', 4, 14),
(57, 9, '+89.766s', 2, 10),
(57, 10, '+97.860s', 1, 5),
(57, 11, '+1 lap', 0, 17),
(57, 12, '+1 lap', 0, 18),
(57, 13, '+1 lap', 0, 13),
(57, 14, '+1 lap', 0, 16),
(57, 15, '+1 lap', 0, 4),
(57, 16, '+1 lap', 0, 19),
(57, 17, '+1 lap', 0, 21),
(57, 18, '+1 lap', 0, 20),
(57, 19, 'DNF', 0, 11),
(57, 20, 'DNF', 0, 8),
(58, 1, '1:35:49.641', 25, 1),
(54, 1, '1:24:08.761', 25, 1),
(58, 2, '+4.470s', 19, 3),
(58, 3, '+14.613s', 15, 6),
(58, 4, '+16.070s', 12, 9),
(58, 5, '+21.905s', 10, 11),
(58, 6, '+22.766s', 8, 10),
(58, 7, '+30.814s', 6, 7),
(58, 8, '+32.596s', 4, 15),
(58, 9, '+39.081s', 2, 21),
(58, 10, '+40.035s', 1, 17),
(58, 11, '+40.810s', 0, 13),
(58, 12, '+41.476s', 0, 16),
(58, 13, '+49.585s', 0, 18),
(58, 14, '+54.449s', 0, 19),
(58, 15, '+55.588s', 0, 14),
(58, 16, 'DNF', 0, 4),
(58, 17, 'DNF', 0, 5),
(58, 18, 'DNF', 0, 12),
(58, 19, 'DNF', 0, 2),
(58, 20, 'DNF', 0, 20),
(59, 1, '1:29:56.828', 26, 1),
(59, 2, '+25.592s', 18, 2),
(59, 3, '+34.508s', 15, 3),
(59, 4, '+65.312s', 12, 7),
(59, 5, '+1 lap', 10, 10),
(59, 6, '+1 lap', 8, 11),
(59, 7, '+1 lap', 6, 9),
(59, 8, '+1 lap', 4, 12),
(59, 9, '+1 lap', 2, 6),
(59, 10, '+1 lap', 1, 13),
(59, 11, '+1 lap', 0, 16),
(59, 12, '+1 lap', 0, 5),
(59, 13, '+1 lap', 0, 4),
(59, 14, '+1 lap', 0, 20),
(59, 15, '+1 lap', 0, 17),
(59, 16, '+1 lap', 0, 18),
(59, 17, '+1 lap', 0, 21),
(59, 18, '+2 laps', 0, 19),
(59, 19, '+2 laps', 0, 14),
(59, 20, 'DNF', 0, 8),
(60, 1, '1:28:32.430', 26, 1),
(60, 2, '+5.783s', 18, 2),
(60, 3, '+14.320s', 15, 6),
(60, 4, '+15.141s', 12, 14),
(60, 5, '+19.111s', 10, 7),
(60, 6, '+19.652s', 8, 9),
(60, 7, '+20.230s', 6, 11),
(60, 8, '+21.131s', 4, 4),
(60, 9, '+22.224s', 2, 16),
(60, 10, '+26.398s', 1, 17),
(60, 11, '+27.135s', 0, 19),
(60, 12, '+28.453s', 0, 13),
(60, 13, '+29.163s', 0, 8),
(60, 14, '+32.935s', 0, 21),
(60, 15, '+57.284s', 0, 5),
(60, 16, 'DNF', 0, 20),
(60, 17, 'DNF', 0, 3),
(60, 18, 'DNF', 0, 18),
(60, 19, 'DNF', 0, 12),
(60, 20, 'DNF', 0, 10),
(61, 1, '1:42:19.313', 25, 1),
(61, 2, '+31.633s', 18, 9),
(61, 3, '+31.960s', 15, 13),
(61, 4, '+33.858s', 12, 7),
(61, 5, '+34.363s', 10, 11),
(61, 6, '+44.873s', 8, 3),
(61, 7, '+46.484s', 6, 5),
(61, 8, '+61.259s', 5, 4),
(61, 9, '+72.353s', 2, 8),
(61, 10, '+95.460s', 1, 6),
(61, 11, '+1 lap', 0, 12),
(61, 12, '+1 lap', 0, 14),
(61, 13, '+1 lap', 0, 10),
(61, 14, '+1 lap', 0, 2),
(61, 15, '+1 lap', 0, 16),
(61, 16, '+1 lap', 0, 20),
(61, 17, 'DNF', 0, 18),
(61, 18, 'DNF', 0, 21),
(61, 19, 'DNF', 0, 19),
(61, 20, 'DNF', 0, 17),
(62, 1, '2:59:47.515', 25, 1),
(62, 2, '+1.254s', 19, 3),
(62, 3, '+8.005s', 15, 5),
(62, 4, '+11.337s', 12, 4),
(62, 5, '+11.787s', 10, 11),
(62, 6, '+11.942s', 8, 10),
(62, 7, '+19.368s', 6, 6),
(62, 8, '+19.680s', 4, 2),
(62, 9, '+22.803s', 2, 12),
(62, 10, '+1 lap', 1, 7),
(62, 11, '+1 lap', 0, 14),
(62, 12, '+1 lap', 0, 20),
(62, 13, '+1 lap', 0, 13),
(62, 14, '+1 lap', 0, 19),
(62, 15, '+1 lap', 0, 16),
(62, 16, '+1 lap', 0, 17),
(62, 17, '+1 lap', 0, 18),
(62, 18, 'DNF', 0, 9),
(62, 19, 'DNF', 0, 8),
(62, 20, 'DNF', 0, 21),
(63, 1, '1:31:15.114', 25, 9),
(63, 2, '+10.518s', 18, 12),
(63, 3, '+11.869s', 15, 8),
(63, 4, '+12.580s', 12, 11),
(63, 5, '+13.330s', 10, 6),
(63, 6, '+13.842s', 8, 5),
(63, 7, '+14.534s', 6, 14),
(63, 8, '+15.389s', 4, 2),
(63, 9, '+18.556s', 3, 20),
(63, 10, '+19.541s', 1, 4),
(63, 11, '+20.527s', 0, 10),
(63, 12, '+22.611s', 0, 13),
(63, 13, '+24.111s', 0, 17),
(63, 14, '+26.153s', 0, 16),
(63, 15, '+32.370s', 0, 18),
(63, 16, '+33.674s', 0, 22),
(63, 17, '+36.858s', 0, 23),
(63, 18, 'DNF', 0, 19),
(63, 19, 'DNF', 0, 3),
(63, 20, 'DNF', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `name`) VALUES
(1, 'France'),
(2, 'Allemagne'),
(3, 'Italie'),
(4, 'Anglais'),
(5, 'Autriche'),
(6, 'Amérique'),
(7, 'Finlande'),
(8, 'Pays-Bas'),
(9, 'Thaïlande'),
(10, 'Australie'),
(11, 'Canada'),
(12, 'Monaco'),
(13, 'Espagne'),
(14, 'Russie'),
(15, 'Danemark'),
(16, 'Méxique');

-- --------------------------------------------------------

--
-- Table structure for table `raceW`
--

CREATE TABLE `raceW` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nb_lap` int(10) NOT NULL,
  `circuit_id` int(10) UNSIGNED NOT NULL,
  `season_id` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raceW`
--

INSERT INTO `raceW` (`id`, `name`, `nb_lap`, `circuit_id`, `season_id`) VALUES
(1, '2020 Austrian Grand Prix', 71, 13, 2020),
(2, '2020 Styrian Grand Prix', 71, 13, 2020),
(3, '2018 Rolex Australian Grand Prix', 58, 22, 2018),
(4, '2018 Gulf Air Bahrain Grand Prix', 57, 11, 2018),
(5, '2018 Heineken Chinese Grand Prix', 56, 25, 2018),
(6, '2018 Azerbaijan Grand Prix', 51, 12, 2018),
(7, '2018 Gran Premio De España Emirates', 66, 14, 2018),
(8, '2018 Grand Prix De Monaco ', 78, 15, 2018),
(9, '2018 Grand Prix Heineken Du Canada ', 68, 16, 2018),
(10, '2018 Pirelli Grand Prix De France ', 53, 3, 2018),
(11, '2018 Eyetime Grosser Preis Von Österreich ', 71, 13, 2018),
(12, '2018 Rolex British Grand Prix', 52, 26, 2018),
(13, '2018 Emirates Grosser Preis Von Deutschland ', 67, 18, 2018),
(14, '2018 Rolex Magyar Nagydíj ', 70, 19, 2018),
(15, '2018 Johnnie Walker Belgian Grand Prix', 44, 1, 2018),
(16, '2018 Gran Premio Heineken D\'italia ', 53, 2, 2018),
(17, '2018 Singapore Airlines Singapore Grand Prix', 61, 21, 2018),
(18, '2018 VTB Russian Grand Prix', 53, 27, 2018),
(19, '2018 Honda Japanese Grand Prix', 53, 4, 2018),
(20, '2018 Pirelli United States Grand Prix', 56, 17, 2018),
(21, '2018 Gran Premio De México ', 71, 6, 2018),
(22, '2018 Grande Prêmio Heineken Do Brasil ', 71, 8, 2018),
(23, '2018 Etihad Airways Abu Dhabi Grand Prix', 55, 28, 2018),
(24, '2019 Rolex Australian Grand Prix ', 58, 22, 2019),
(25, '2019 Gulf Air Bahrain Grand Prix ', 57, 11, 2019),
(26, '2019 Heineken Chinese Grand Prix ', 56, 25, 2019),
(27, '2019 SOCAR Azerbaijan Grand Prix ', 51, 12, 2019),
(28, '2019 Emirates Gran Premio De España ', 66, 14, 2019),
(29, '2019 Grand Prix De Monaco ', 78, 15, 2019),
(30, '2019 Pirelli Grand Prix Du Canada ', 70, 16, 2019),
(31, '2019 Pirelli Grand Prix De France ', 53, 3, 2019),
(32, '2019 myWorld Grosser Preis Von Österreich ', 71, 13, 2019),
(33, '2019 Rolex British Grand Prix ', 52, 26, 2019),
(34, '2019 Mercedes-Benz Grosser Preis Von Deutschland ', 64, 18, 2019),
(35, '2019 Rolex Magyar Nagydíj ', 70, 19, 2019),
(36, '2019 Johnnie Walker Belgian Grand Prix ', 44, 1, 2019),
(37, '2019 Gran Premio Heineken D\'italia ', 53, 2, 2019),
(38, '2019 Singapore Airlines Singapore Grand Prix ', 61, 21, 2019),
(39, '2019 VTB Russian Grand Prix ', 53, 27, 2019),
(40, '2019 Japanese Grand Prix ', 52, 4, 2019),
(41, '2019 Gran Premio De México ', 71, 6, 2019),
(42, '2019 Emirates United States Grand Prix ', 56, 17, 2019),
(43, '2019 Heineken Grande Prêmio Do Brasil ', 71, 8, 2019),
(44, '2019 Etihad Airways Abu Dhabi Grand Prix ', 55, 28, 2019),
(46, '2020 Hungarian Grand Prix', 70, 19, 2020),
(47, '2020 Pirelli British Grand Prix ', 52, 26, 2020),
(48, '2020 70th Anniversary Grand Prix ', 52, 26, 2020),
(49, '2020 Aramco Gran Premio De España ', 66, 14, 2020),
(50, '2020 Rolex Belgian Grand Prix ', 44, 1, 2020),
(51, '2020 Gran Premio Heineken D’italia ', 53, 2, 2020),
(52, '2020 Pirelli Gran Premio Della Toscana Ferrari 1000 ', 59, 23, 2020),
(53, '2020 VTB Russian Grand Prix ', 53, 27, 2020),
(54, '2020 Aramco Grosser Preis Der Eifel ', 60, 24, 2020),
(55, '2020 Heineken Grande Prémio De Portugal ', 66, 7, 2020),
(56, '2020 Emirates Gran Premio Dell\'emilia Romagna ', 63, 5, 2020),
(57, '2020 DHL Turkish Grand Prix ', 58, 20, 2020),
(58, '2020 Gulf Air Bahrain Grand Prix ', 57, 11, 2020),
(59, '2020 Rolex Sakhir Grand Prix ', 87, 10, 2020),
(60, '2020 Etihad Airways Abu Dhabi Grand Prix ', 55, 28, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `race_event`
--

CREATE TABLE `race_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('fp1','fp2','fp3','quali','race') NOT NULL,
  `raceW_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `race_event`
--

INSERT INTO `race_event` (`id`, `type`, `raceW_id`, `date`) VALUES
(1, 'fp1', 1, '2020-07-03 11:00:00'),
(2, 'fp2', 1, '2020-07-03 15:00:00'),
(3, 'fp3', 1, '2020-07-04 12:00:00'),
(4, 'quali', 1, '2020-07-04 15:00:00'),
(5, 'race', 1, '2020-07-05 15:10:00'),
(6, 'race', 3, '2018-03-25 16:10:00'),
(7, 'race', 4, '2018-04-08 18:10:00'),
(8, 'race', 5, '2018-04-15 14:10:00'),
(9, 'race', 6, '2018-04-28 16:10:00'),
(10, 'race', 7, '2018-05-13 15:10:00'),
(11, 'race', 8, '2018-05-27 15:10:00'),
(12, 'race', 9, '2018-06-10 14:10:00'),
(13, 'race', 10, '2018-06-24 15:10:00'),
(14, 'race', 11, '2018-07-01 15:10:00'),
(15, 'race', 12, '2018-07-08 14:10:00'),
(16, 'race', 13, '2018-07-22 15:10:00'),
(17, 'race', 14, '2018-07-29 15:10:00'),
(18, 'race', 15, '2018-08-26 15:10:00'),
(19, 'race', 16, '2018-09-02 15:10:00'),
(20, 'race', 17, '2018-09-16 20:10:00'),
(21, 'race', 18, '2018-09-30 14:10:00'),
(22, 'race', 19, '2018-10-07 14:10:00'),
(23, 'race', 20, '2018-10-21 13:10:00'),
(24, 'race', 21, '2018-10-28 13:10:00'),
(25, 'race', 22, '2018-11-11 15:10:00'),
(26, 'race', 23, '2018-11-25 17:10:00'),
(27, 'race', 24, '2019-03-17 16:10:00'),
(28, 'race', 25, '2019-03-31 18:10:00'),
(29, 'race', 26, '2019-04-14 14:10:00'),
(30, 'race', 27, '2019-04-28 16:10:00'),
(31, 'race', 28, '2019-05-12 15:10:00'),
(32, 'race', 29, '2019-05-26 15:10:00'),
(33, 'race', 30, '2019-06-09 14:10:00'),
(34, 'race', 31, '2019-06-23 15:10:00'),
(35, 'race', 32, '2019-06-30 15:10:00'),
(36, 'race', 33, '2019-07-14 14:10:00'),
(37, 'race', 34, '2019-07-28 15:10:00'),
(38, 'race', 35, '2019-08-04 15:10:00'),
(39, 'race', 36, '2019-09-01 15:10:00'),
(40, 'race', 37, '2019-09-08 15:10:00'),
(41, 'race', 38, '2019-09-22 20:10:00'),
(42, 'race', 39, '2019-09-29 14:10:00'),
(43, 'race', 40, '2019-10-13 14:10:00'),
(44, 'race', 41, '2019-10-27 13:10:00'),
(45, 'race', 42, '2019-11-03 13:10:00'),
(46, 'race', 43, '2019-11-17 14:10:00'),
(47, 'race', 44, '2019-12-01 17:10:00'),
(49, 'race', 2, '2020-07-12 15:10:00'),
(50, 'race', 46, '2020-07-19 15:10:00'),
(51, 'race', 47, '2020-08-02 14:10:00'),
(52, 'race', 48, '2020-08-09 14:10:00'),
(53, 'race', 49, '2020-08-16 15:10:00'),
(54, 'race', 50, '2020-08-30 15:10:00'),
(55, 'race', 51, '2020-09-06 15:10:00'),
(56, 'race', 52, '2020-09-13 15:10:00'),
(57, 'race', 53, '2020-09-27 14:10:00'),
(58, 'race', 54, '2020-10-11 14:10:00'),
(59, 'race', 55, '2020-10-25 14:10:00'),
(60, 'race', 56, '2020-11-01 13:10:00'),
(61, 'race', 57, '2020-11-15 11:10:00'),
(62, 'race', 58, '2020-11-29 16:10:00'),
(63, 'race', 59, '2020-12-06 18:10:00'),
(64, 'race', 60, '2022-12-13 14:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`year`) VALUES
(2016),
(2017),
(2018),
(2019),
(2020),
(2021),
(2022);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `director_name` varchar(255) NOT NULL,
  `img_link` varchar(255) NOT NULL,
  `nationality_id` int(10) UNSIGNED NOT NULL,
  `engine_sup_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `active`, `name`, `director_name`, `img_link`, `nationality_id`, `engine_sup_id`) VALUES
(1, 1, 'Red Bull Racing', 'Christian Horner', 'https://localhost/assets/img/teams/redbull.jpg', 5, 4),
(2, 1, 'Mercedes-AMG F1', 'Toto Wolff', 'https://localhost/assets/img/teams/mercedes.jpg', 2, 2),
(3, 1, 'McLaren F1 Team', 'Andreas Seidl', 'https://localhost/assets/img/teams/mclaren.jpg', 4, 3),
(4, 1, 'BWT Racing Point F1 Team', 'Otmar Szafnauer', 'https://localhost/assets/img/teams/racingpoint.jpg', 4, 2),
(5, 1, 'Renault DP World F1 Team', 'Cyril Abiteboul', 'https://localhost/assets/img/teams/renault.jpg', 1, 3),
(6, 1, 'Scuderia Ferrari', 'Mattia Binotto', 'https://localhost/assets/img/teams/Ferrari.jpg', 3, 1),
(7, 1, 'Scuderia AlphaTauri Honda', 'Franz Tost', 'https://localhost/assets/img/teams/AlphaTauri.jpg', 3, 4),
(8, 1, 'Alfa Romeo Racing', 'Frédéric Vasseur', 'https://localhost/assets/img/teams/AlphaRomeoRacing.jpg', 3, 1),
(9, 1, 'Haas F1 Team', 'Guenther Steiner', 'https://localhost/assets/img/teams/HaasF1Team.jpg', 6, 1),
(10, 1, 'Williams Racing', 'Simon Roberts', 'https://localhost/assets/img/teams/WilliamsRacing.jpg', 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `circuit`
--
ALTER TABLE `circuit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constructor_standings`
--
ALTER TABLE `constructor_standings`
  ADD KEY `team_id` (`team_id`),
  ADD KEY `season_id` (`season_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `nationality_id` (`nationality_id`);

--
-- Indexes for table `driver_standings`
--
ALTER TABLE `driver_standings`
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `season_id` (`season_id`);

--
-- Indexes for table `engine_sup`
--
ALTER TABLE `engine_sup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_result`
--
ALTER TABLE `event_result`
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `race_event_id` (`race_event_id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raceW`
--
ALTER TABLE `raceW`
  ADD PRIMARY KEY (`id`),
  ADD KEY `circuit_id` (`circuit_id`),
  ADD KEY `season_d` (`season_id`);

--
-- Indexes for table `race_event`
--
ALTER TABLE `race_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raceW_id` (`raceW_id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nationality_id` (`nationality_id`),
  ADD KEY `engine_sup_id` (`engine_sup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circuit`
--
ALTER TABLE `circuit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `engine_sup`
--
ALTER TABLE `engine_sup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `raceW`
--
ALTER TABLE `raceW`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `race_event`
--
ALTER TABLE `race_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `constructor_standings`
--
ALTER TABLE `constructor_standings`
  ADD CONSTRAINT `constructor_standings_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `constructor_standings_ibfk_2` FOREIGN KEY (`season_id`) REFERENCES `season` (`year`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `driver_standings`
--
ALTER TABLE `driver_standings`
  ADD CONSTRAINT `driver_standings_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `season` (`year`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_standings_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_result`
--
ALTER TABLE `event_result`
  ADD CONSTRAINT `event_result_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `event_result_ibfk_3` FOREIGN KEY (`race_event_id`) REFERENCES `race_event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `raceW`
--
ALTER TABLE `raceW`
  ADD CONSTRAINT `raceW_ibfk_1` FOREIGN KEY (`circuit_id`) REFERENCES `circuit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `raceW_ibfk_2` FOREIGN KEY (`season_id`) REFERENCES `season` (`year`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `race_event`
--
ALTER TABLE `race_event`
  ADD CONSTRAINT `race_event_ibfk_1` FOREIGN KEY (`raceW_id`) REFERENCES `raceW` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`engine_sup_id`) REFERENCES `engine_sup` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
