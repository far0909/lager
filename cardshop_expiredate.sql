-- phpMyAdmin SQL Dump
-- version 5.1.3-2.el8.remi
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 23. 09 2025 kl. 14:00:36
-- Serverversion: 8.0.42-33
-- PHP-version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gavefabrikken2025`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cardshop_expiredate`
--

CREATE TABLE `cardshop_expiredate` (
  `id` int NOT NULL,
  `shop_id` int NOT NULL,
  `expire_date_id` int NOT NULL,
  `reservation_code` varchar(50) DEFAULT NULL,
  `packing_state` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `cardshop_expiredate`
--

INSERT INTO `cardshop_expiredate` (`id`, `shop_id`, `expire_date_id`, `reservation_code`, `packing_state`) VALUES
(13, 1832, 32, NULL, 0),
(14, 9495, 32, NULL, 0),
(17, 1981, 32, NULL, 0),
(18, 1981, 23, NULL, 0),
(21, 5117, 32, NULL, 0),
(22, 5117, 23, NULL, 0),
(25, 54, 23, NULL, 0),
(26, 54, 25, NULL, 0),
(27, 54, 27, NULL, 0),
(28, 54, 28, NULL, 0),
(29, 55, 23, NULL, 0),
(30, 55, 25, NULL, 0),
(31, 55, 27, NULL, 0),
(32, 55, 28, NULL, 0),
(33, 56, 23, NULL, 0),
(34, 56, 25, NULL, 0),
(35, 56, 27, NULL, 0),
(36, 56, 28, NULL, 0),
(37, 575, 22, NULL, 0),
(38, 575, 24, NULL, 0),
(39, 575, 27, NULL, 0),
(40, 290, 23, NULL, 0),
(41, 290, 25, NULL, 0),
(42, 290, 27, NULL, 0),
(43, 310, 23, NULL, 0),
(44, 310, 25, NULL, 0),
(45, 310, 27, NULL, 0),
(49, 53, 23, NULL, 0),
(50, 53, 25, NULL, 0),
(51, 53, 27, NULL, 0),
(52, 53, 28, NULL, 0),
(53, 2395, 23, NULL, 0),
(54, 2395, 25, NULL, 0),
(55, 2395, 27, NULL, 0),
(56, 2395, 28, NULL, 0),
(57, 52, 22, NULL, 0),
(58, 52, 24, NULL, 0),
(59, 52, 27, NULL, 0),
(63, 574, 23, NULL, 0),
(64, 574, 25, NULL, 0),
(65, 574, 27, NULL, 0),
(66, 2550, 23, NULL, 0),
(67, 2550, 25, NULL, 0),
(68, 2550, 27, NULL, 0),
(69, 272, 23, NULL, 0),
(70, 272, 25, NULL, 0),
(71, 272, 27, NULL, 0),
(72, 57, 23, NULL, 0),
(73, 57, 25, NULL, 0),
(74, 57, 27, NULL, 0),
(75, 58, 23, NULL, 0),
(76, 58, 25, NULL, 0),
(77, 58, 27, NULL, 0),
(78, 59, 23, NULL, 0),
(79, 59, 25, NULL, 0),
(80, 59, 27, NULL, 0),
(83, 574, 34, NULL, 0),
(84, 2550, 34, NULL, 0),
(85, 272, 34, NULL, 0),
(86, 57, 34, NULL, 0),
(87, 58, 34, NULL, 0),
(88, 59, 34, NULL, 0),
(90, 574, 35, NULL, 0),
(91, 2550, 35, NULL, 0),
(92, 272, 35, NULL, 0),
(93, 57, 35, NULL, 0),
(94, 58, 35, NULL, 0),
(95, 59, 35, NULL, 0),
(96, 2960, 38, NULL, 0),
(97, 2963, 38, NULL, 0),
(98, 2962, 38, NULL, 0),
(99, 2961, 38, NULL, 0),
(120, 4662, 22, NULL, 0),
(121, 4662, 24, NULL, 0),
(122, 4662, 27, NULL, 0),
(123, 4668, 22, NULL, 0),
(124, 4668, 24, NULL, 0),
(125, 4668, 27, NULL, 0),
(127, 4740, 23, NULL, 0),
(128, 4740, 25, NULL, 0),
(129, 4740, 27, NULL, 0),
(130, 4740, 34, NULL, 0),
(131, 4740, 35, NULL, 0),
(132, 4793, 32, NULL, 0),
(133, 4793, 23, NULL, 0),
(136, 6989, 22, NULL, 0),
(137, 6989, 24, NULL, 0),
(138, 6989, 27, NULL, 0),
(139, 7121, 22, NULL, 0),
(140, 7121, 24, NULL, 0),
(141, 7121, 27, NULL, 0),
(142, 7122, 22, NULL, 0),
(143, 7122, 24, NULL, 0),
(144, 7122, 27, NULL, 0),
(145, 52, 39, NULL, 0),
(146, 4668, 39, NULL, 0),
(147, 7121, 39, NULL, 0),
(153, 8271, 41, NULL, 0),
(154, 8355, 38, NULL, 0),
(155, 8356, 38, NULL, 0),
(156, 8357, 38, NULL, 0),
(157, 8358, 38, NULL, 0),
(158, 8359, 38, NULL, 0),
(159, 8360, 38, NULL, 0),
(160, 8361, 38, NULL, 0),
(161, 8362, 38, NULL, 0),
(162, 8363, 38, NULL, 0),
(163, 8364, 38, NULL, 0),
(164, 8365, 38, NULL, 0),
(165, 8366, 38, NULL, 0),
(170, 8355, 42, NULL, 0),
(171, 8356, 42, NULL, 0),
(172, 8357, 42, NULL, 0),
(173, 8358, 42, NULL, 0),
(174, 8359, 42, NULL, 0),
(175, 8360, 42, NULL, 0),
(176, 8361, 42, NULL, 0),
(177, 8362, 42, NULL, 0),
(178, 8363, 42, NULL, 0),
(179, 8364, 42, NULL, 0),
(180, 8365, 42, NULL, 0),
(181, 8366, 42, NULL, 0),
(182, 9321, 23, NULL, 0),
(183, 9321, 25, NULL, 0),
(184, 9321, 27, NULL, 0),
(185, 9321, 28, NULL, 0);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `cardshop_expiredate`
--
ALTER TABLE `cardshop_expiredate`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `cardshop_expiredate`
--
ALTER TABLE `cardshop_expiredate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
