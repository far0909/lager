-- phpMyAdmin SQL Dump
-- version 5.1.3-2.el8.remi
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 23. 09 2025 kl. 14:44:39
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_date_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_danish_ci;

--
-- Data dump for tabellen `warehouse_settings`
--

INSERT INTO `warehouse_settings` (`id`, `shop_id`, `token`, `packaging_status`, `noter`, `note_move_order`, `note_from_warehouse_to_gf`, `log_menu`, `log_info`, `log_download`, `log_status`, `pick_approval`, `approved_count_date`, `approved_by`, `approved_date`, `approved_count_date_approved_by`, `approved_package_instructions`, `approved_package_instructions_approved_by`, `approved_ontime`, `approved_ontime_approved_by`, `active`, `updated_at`, `created_at`, `expire_date_id`) VALUES
(1758, 8483, 'NTYyYWY2NjQ4YmJkOWEwMjgxODhkZWU0YTNkY2UzZGMxNzU4NjMxNDIy', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:43:42', '2025-09-23 12:43:42', NULL),
(1757, 8483, 'YTlmZmJhZWU5ZmVmODFhOWZhYTAyYTVjN2UwNmIyNTMxNzU4NjMxMzYy', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:42:42', '2025-09-23 12:42:42', NULL),
(1756, 8483, 'MzAwYWFiMmY1MzFlYWNmZGZkMWUwNWUyMzQzMGZmYTMxNzU4NjMxMzYy', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:42:42', '2025-09-23 12:42:42', NULL),
(1755, 8483, 'Y2ZlYmY4ZDZjNGJmMDc5YjUyZjBiMDRlN2FkMjZjMzgxNzU4NjMxMzQ3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:42:27', '2025-09-23 12:42:27', NULL),
(1754, 8483, 'NDRkZTJjNjE0MzM1ZjU3MmI1OTZmZGYwOWYzZjAwMzAxNzU4NjMxMjg3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:41:27', '2025-09-23 12:41:27', NULL),
(1753, 8483, 'Y2NkNTJiMmM0NzQ1NjI1MGExZDRjNTY1MTc0MWU3MWIxNzU4NjMxMjI3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:40:27', '2025-09-23 12:40:27', NULL),
(1752, 8483, 'YmUwYmQ3YzYzYmUxNzg3ZDFmMTU0YTM4ZTY0MDZhYTQxNzU4NjMxMjI3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:40:27', '2025-09-23 12:40:27', NULL),
(1751, 8483, 'ZWYwNTdhMzljN2M4YWJlOTNiM2U0OWVmY2UzNzI3N2YxNzU4NjMxMTU0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:39:14', '2025-09-23 12:39:14', NULL),
(1750, 8483, 'MWE1MmJhNjc4NDI3MjZhMGE5ZGI4NTIxMmExMDA1ZTAxNzU4NjMxMTU0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:39:14', '2025-09-23 12:39:14', NULL),
(1700, 8483, 'MzYwNDlmNjU1Yjg1NTM5NjY1N2Q2NDA3MDg1ODVhZTUxNzU2OTg0NjQ2', 1, 'asdfasdf', 'asdfasdf', NULL, '2025-09-23 11:18:44', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-23 12:18:02', '2025-09-04 11:17:26', NULL);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1759;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
