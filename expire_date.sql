-- phpMyAdmin SQL Dump
-- version 5.1.3-2.el8.remi
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 23. 09 2025 kl. 14:00:58
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
-- Struktur-dump for tabellen `expire_date`
--

CREATE TABLE `expire_date` (
  `id` int NOT NULL,
  `expire_date` date NOT NULL,
  `week_no` int DEFAULT NULL,
  `display_date` varchar(10) CHARACTER SET dec8 COLLATE dec8_swedish_ci NOT NULL,
  `blocked` tinyint(1) DEFAULT '0',
  `is_delivery` tinyint(1) DEFAULT '0',
  `item_name_format` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_danish_ci DEFAULT '',
  `item_no_format` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_danish_ci DEFAULT '',
  `is_home_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `is_jgk_50` tinyint NOT NULL DEFAULT '0',
  `is_special_private` int NOT NULL DEFAULT '0',
  `is_floating` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_danish_ci;

--
-- Data dump for tabellen `expire_date`
--

INSERT INTO `expire_date` (`id`, `expire_date`, `week_no`, `display_date`, `blocked`, `is_delivery`, `item_name_format`, `item_no_format`, `is_home_delivery`, `is_jgk_50`, `is_special_private`, `is_floating`) VALUES
(22, '2025-10-26', 47, '26-10-2025', 0, 0, '', '', 0, 0, 0, 0),
(23, '2025-11-02', 48, '02-11-2025', 0, 0, '', '', 0, 0, 0, 0),
(24, '2025-11-09', 49, '09-11-2025', 0, 0, '', '', 0, 0, 0, 0),
(25, '2025-11-16', 50, '16-11-2025', 0, 0, '', '', 0, 0, 0, 0),
(27, '2025-12-31', 5, '31-12-2025', 0, 0, '', '', 0, 0, 0, 0),
(28, '2026-04-01', 0, '01-04-2026', 0, 1, '', '', 1, 0, 0, 0),
(32, '2026-12-31', 0, '31-12-2026', 0, 1, '', '', 1, 0, 0, 0),
(34, '2025-11-10', 49, '10-11-2025', 0, 1, '', '', 0, 0, 1, 0),
(35, '2026-01-03', 4, '04-01-2026', 0, 1, '', '', 0, 0, 1, 0),
(38, '2030-01-01', 0, 'LUKS-PRIV', 0, 1, '', '', 1, 0, 0, 1),
(39, '2025-11-23', 50, '23-11-2025', 0, 0, '', '', 0, 1, 0, 0),
(41, '2026-02-28', 0, '28-02-2026', 0, 1, '', '', 1, 0, 0, 0),
(42, '2030-02-01', 98, 'LUKS-VIRK', 0, 0, '', '', 0, 0, 0, 1);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `expire_date`
--
ALTER TABLE `expire_date`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `expire_date`
--
ALTER TABLE `expire_date`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
