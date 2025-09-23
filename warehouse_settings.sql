-- phpMyAdmin SQL Dump
-- version 5.1.3-2.el8.remi
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 23. 09 2025 kl. 13:43:25
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
-- Struktur-dump for tabellen `warehouse_settings`
--

CREATE TABLE `warehouse_settings` (
  `id` int NOT NULL,
  `shop_id` int NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci NOT NULL,
  `packaging_status` int NOT NULL DEFAULT '0',
  `noter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci,
  `note_move_order` text CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci,
  `note_from_warehouse_to_gf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci,
  `log_menu` timestamp NULL DEFAULT NULL,
  `log_info` timestamp NULL DEFAULT NULL,
  `log_download` timestamp NULL DEFAULT NULL,
  `log_status` datetime DEFAULT NULL,
  `pick_approval` int NOT NULL DEFAULT '0',
  `approved_count_date` datetime DEFAULT NULL,
  `approved_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `approved_count_date_approved_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci DEFAULT NULL,
  `approved_package_instructions` int DEFAULT NULL,
  `approved_package_instructions_approved_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci DEFAULT NULL,
  `approved_ontime` int DEFAULT NULL,
  `approved_ontime_approved_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_danish_ci;

--
-- Data dump for tabellen `warehouse_settings`
--

INSERT INTO `warehouse_settings` (`id`, `shop_id`, `token`, `packaging_status`, `noter`, `note_move_order`, `note_from_warehouse_to_gf`, `log_menu`, `log_info`, `log_download`, `log_status`, `pick_approval`, `approved_count_date`, `approved_by`, `approved_date`, `approved_count_date_approved_by`, `approved_package_instructions`, `approved_package_instructions_approved_by`, `approved_ontime`, `approved_ontime_approved_by`, `active`, `updated_at`, `created_at`) VALUES
(1, 3809, 'Y2ZhM2IzYTRmMzE0Nzg1Y2NlYTUyZDNlMTYxMzZmODIxNjk4NjE2ODM4', 3, 'Det skal pakkes\nasdfojasklæjdfj\nasdf\nasd æfjlæaøsdf a\nsdf\n a\nsd f', 'afdsfsd', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-10-31 14:12:24', '2023-10-29 22:00:38'),
(2, 3750, 'ZjQ5MjBkNTZjYzMyNGJlNzM3NmQ2ZTVjMjYyN2EzOTgxNjk4NjM0ODAz', 5, 'Dette er en note', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-10-30 07:13:15', '2023-10-30 03:00:03'),
(3, 4303, 'ODUzMTc0YThhYTk0Njg4MzYyYTUyN2NlZjBhYTlkNGUxNjk4NjUyNjAx', 3, 'LO132162\nLO132163\nLO132164\nLO132166\nLO132165', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-10-31 10:03:27', '2023-10-30 07:56:41'),
(4, 3512, 'MDExZmYwYjVlMDkzYmMxMjkzZjI4YzI5MGE0NDBhZTkxNjk4NzM2Mjk1', 1, 'dsfafasd', NULL, NULL, '2024-11-25 08:44:29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2024-11-25 08:44:29', '2023-10-31 07:11:35'),
(5, 5671, 'MzkyYWUxMjA5NTkyYTFlYzA2Y2NmNGU2MTEzNmE5YTMxNjk4NzM5ODM2', 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-10-31 08:10:36', '2023-10-31 08:10:36'),
(6, 4742, 'OGQwZjQwMmYzZGRkNWQ3NzkxZWM1ZWZjMmMyYTJlYWIxNjk4NzQxNTIx', 6, 'Forsendelsesdato EU og Norge :4-12-2023\n\nLO132665\nLO132667\nLO132668\nLO132669\n\n', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-05 17:48:03', '2023-10-31 08:38:41'),
(7, 5612, 'YzdiMmE2OTBmNDlhY2RhYTE5NTc3YTM0N2E1OTQzZGMxNjk4NzQxNTUw', 6, 'LO132679\nLO132680', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-22 15:49:45', '2023-10-31 08:39:10'),
(8, 4823, 'YTcxZGM5M2MyYjVlODAxYzYzMGU1OTdhMjk1ZDUzODUxNjk4NzQxNTg2', 6, 'LO132659', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-02 15:19:51', '2023-10-31 08:39:46'),
(9, 5283, 'NzY3OThhODBmOGNmYTUzMGQ3YzRmZjhmNDU2NmE0YTQxNjk4NzQxNjk2', 3, 'LO132573 \nLO132567\nLO132575', 'TO010536\nTO010537\nTO010941\nTO011450', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-20 14:31:20', '2023-10-31 08:41:36'),
(10, 5338, 'M2ZhYjkwOGQzMDk5MTZjMmNhNjhlM2Y4YjE5ZGRiNWUxNjk4NzQxNzI4', 5, 'LO132623\nLO132624\nLO132625', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-30 16:21:47', '2023-10-31 08:42:08'),
(11, 5777, 'NmZlOTc0ZmM4NzdkM2Q2ODQyMDYxZDUxMjVkMTAxYzkxNjk4NzQxNzYw', 6, 'LO132610', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-22 15:48:38', '2023-10-31 08:42:40'),
(12, 4542, 'M2E3ZDNkNzlmZjBkMzNkZDI1YzczYTU1OTQ4N2YyM2QxNjk4NzQxODA5', 6, 'LO132601\nLO132602', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-11 04:20:07', '2023-10-31 08:43:29'),
(13, 5159, 'OWU5NjM4OTAwZDVhZDVhNzFiNzRlZmVmMzA4NTUwZTkxNjk4NzQxODIx', 5, 'Eva Solo: LO132310\nBon Coca: LO132311', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-29 12:23:02', '2023-10-31 08:43:41'),
(14, 5798, 'MzM5MmRlMDhjZDBmODQxZGMxYTkyM2YzMGFhMzM4YTMxNjk4NzQxODY3', 5, 'Ingen eksterne.', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-20 08:37:34', '2023-10-31 08:44:27'),
(15, 5359, 'M2U5OTFlN2MyMDcxNjBjYmY2ZWQzNGY5Mzk2MGEyZWUxNjk4NzQxODcz', 3, 'LO132581\nLO132583\nLO132584\nLO132585\nLO132586', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-06 09:53:48', '2023-10-31 08:44:33'),
(16, 5415, 'ZDVlNzFhYjliMzQzYjRiYTFiOGExZGM2OTE0YmU4MjgxNjk4NzQxOTI2', 6, 'Miiego: LO132304\nBon Coca: LO132305\n\nobs: ny sumliste', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-03 05:29:35', '2023-10-31 08:45:26'),
(17, 5370, 'Mjc5MGY2OTk0ZmRmMDRmNWI4NDFiMzQyNTE1ZDU5M2MxNjk4NzQxOTUz', 3, 'LO132472', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-10-31 08:46:22', '2023-10-31 08:45:53'),
(18, 5649, 'MThlOWQ1MWE1NDE4YjgzMGE0OTNiYThjODYwMDU3NDUxNjk4NzQxOTg1', 5, 'Dewalt: LO132287\nBon Coca: LO132288', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-26 06:25:45', '2023-10-31 08:46:25'),
(19, 4831, 'M2NmMGRlMTIwMjQ0MDYzMTJjMDVlMTdkNWM2YWE1NjgxNjk4NzQyMDYw', 6, 'Aida: LO132229\nEcooking: LO132230\nBon Coca: LO132231\n\nobs: Ny sumliste', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-22 06:11:13', '2023-10-31 08:47:40'),
(20, 4820, 'MWIzNDE2ZWE1OGE5MjIyMTE4NDE0YWY3MGNhOTk4YjExNjk4NzQyMDY1', 6, 'LO132511\nLO132510', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-27 08:03:16', '2023-10-31 08:47:45'),
(21, 4637, 'ZGUyNzAwZGEzODNjOTJjYTE4MDM3MTRiNTlhZjkzZTIxNjk4NzQyMTY3', 5, 'Forsendelsesdato EU og Norge:17-11-2023\n\nSøren Søgaard (Dart): LO131900\nAida: LO131901\nGJD: LO131902\n\nobs: ny sumliste', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-17 08:41:06', '2023-10-31 08:49:27'),
(22, 4513, 'MzMyMzhiZGUzYWEzNTZiZjY4NGEzNmFjNDAzZDUwMGExNjk4NzQyMjEx', 6, 'LO132501\nLO132498\nLO132499\n\nLO134149 - Wera zyklop (obs! indkøb først lavet 20/11, har ønsket levering 22/11)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-04 14:05:36', '2023-10-31 08:50:11'),
(23, 5216, 'NWZjZTJiN2ViZGY5OTc2NTMzMThiMGUzYzkxMjViZWIxNjk4NzQyMjIx', 5, 'Bon Coca: LO132161\n\nobs: ny sumliste ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-01 16:29:53', '2023-10-31 08:50:21'),
(24, 5149, 'MzZjNDRhMjBhZjRlZDljZjM3NWQwMDkwZmZmMGU0NjgxNjk4NzQyMzAw', 5, 'Bon Coca: LO132083\n\nobs: ny sumliste', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-16 06:50:23', '2023-10-31 08:51:40'),
(25, 4592, 'YTJkMzM0ZWVjZTgyZTM4OTdmNjdhMThhMGUxNGE1ZGYxNjk4NzQyMzE3', 6, 'LO132252', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-12-08 07:28:59', '2023-10-31 08:51:57');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `warehouse_settings`
--
ALTER TABLE `warehouse_settings`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `warehouse_settings`
--
ALTER TABLE `warehouse_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1749;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
