-- phpMyAdmin SQL Dump
-- version 5.1.3-2.el8.remi
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 23. 09 2025 kl. 13:47:20
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
-- Struktur-dump for tabellen `warehouse_files`
--

CREATE TABLE `warehouse_files` (
  `id` int NOT NULL,
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci NOT NULL,
  `extension` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci DEFAULT NULL,
  `real_filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci NOT NULL,
  `file_size` float DEFAULT '0',
  `shop_id` int NOT NULL,
  `user_id` int DEFAULT '0',
  `replace_file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci DEFAULT '0',
  `replace_file_time` datetime DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci NOT NULL,
  `post_block_upload` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_danish_ci;

--
-- Data dump for tabellen `warehouse_files`
--

INSERT INTO `warehouse_files` (`id`, `filename`, `extension`, `real_filename`, `file_size`, `shop_id`, `user_id`, `replace_file`, `replace_file_time`, `active`, `token`, `post_block_upload`, `updated_at`, `created_at`) VALUES
(1, 'YmNkNzliODEwN2UwMTliZjA4NzMzMWU4M2QxM2JkZDgxNjk4NjUyMjk4.pdf', 'pdf', '3106_Lagersalg NO 2023_sumliste_23-10-2023.pdf', 43755, 3106, 40, '0', NULL, 0, 'YmNkNzliODEwN2UwMTliZjA4NzMzMWU4M2QxM2JkZDgxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(2, 'MGRiMWQ1ODkzN2I2ZDFkYTIzZmJkOTUzZjQwMzQ3MWIxNjk4NjUyMjk4.xlsx', 'xlsx', '3502_previewasdf_fordelingsrapport_23-10-2023.xlsx', 8469, 3502, 40, '0', NULL, 0, 'MGRiMWQ1ODkzN2I2ZDFkYTIzZmJkOTUzZjQwMzQ3MWIxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(3, 'OGRmODNjMjkxNGEwYWM3YzIxYzI2MTllNjc0ZmVkYjUxNjk4NjUyMjk4.pdf', 'pdf', '3502_previewasdf_sumliste_23-10-2023.pdf', 45207, 3502, 40, '0', NULL, 0, 'OGRmODNjMjkxNGEwYWM3YzIxYzI2MTllNjc0ZmVkYjUxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(4, 'MzllNzQ0ZDI5ZGU4M2QxODllOTU4ZThmZmRmOWQ4ZDExNjk4NjUyMjk4.xlsx', 'xlsx', '3503_SCH Testvalgshop_fordelingsrapport_23-10-2023.xlsx', 9105, 3503, 40, '0', NULL, 0, 'MzllNzQ0ZDI5ZGU4M2QxODllOTU4ZThmZmRmOWQ4ZDExNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(5, 'NGZkNzVlYmUzMjliOGU1M2Y0NzA0NDhiNmNkY2VjNGIxNjk4NjUyMjk4.pdf', 'pdf', '3503_SCH Testvalgshop_sumliste_23-10-2023.pdf', 47400, 3503, 40, '0', NULL, 0, 'NGZkNzVlYmUzMjliOGU1M2Y0NzA0NDhiNmNkY2VjNGIxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(6, 'ZjE5YTFiN2NjZDUzNTBjMDEzNDFmYTAzZThmN2M5YzQxNjk4NjUyMjk4.pdf', 'pdf', '3512_testgo_sumliste_23-10-2023.pdf', 44090, 3512, 40, '0', NULL, 0, 'ZjE5YTFiN2NjZDUzNTBjMDEzNDFmYTAzZThmN2M5YzQxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(7, 'NTVmMTY3ZTY2Y2QxOTJhNjU0MDZmMTM3ZDBmNGYxY2YxNjk4NjUyMjk4.xlsx', 'xlsx', '4093_NO22GKNorge_fordelingsrapport_23-10-2023.xlsx', 222196, 4093, 40, '0', NULL, 0, 'NTVmMTY3ZTY2Y2QxOTJhNjU0MDZmMTM3ZDBmNGYxY2YxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(8, 'ODk1MTk4ODNmZDNiM2RkZmI1MDE2ODE4NmM5ZjliMDMxNjk4NjUyMjk4.pdf', 'pdf', '4093_NO22GKNorge_sumliste_23-10-2023.pdf', 307872, 4093, 40, '0', NULL, 0, 'ODk1MTk4ODNmZDNiM2RkZmI1MDE2ODE4NmM5ZjliMDMxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(9, 'YWM1YWRmMTJjMTg0MDkxNzA0OGFmN2VlN2U2NGZlYzMxNjk4NjUyMjk4.pdf', 'pdf', '4156_SCT Transport AS - 2022_sumliste_23-10-2023.pdf', 43740, 4156, 40, '0', NULL, 0, 'YWM1YWRmMTJjMTg0MDkxNzA0OGFmN2VlN2U2NGZlYzMxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(10, 'MGEyNTUzZTY2YmY3MDY2OTM2NjgxMmVlOGQ5NDkwODIxNjk4NjUyMjk4.xlsx', 'xlsx', '4241_no22extraisachsen_fordelingsrapport_23-10-2023.xlsx', 18028, 4241, 40, '0', NULL, 0, 'MGEyNTUzZTY2YmY3MDY2OTM2NjgxMmVlOGQ5NDkwODIxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(11, 'OGUzYmJiOTA1MTk3YWZmODRkNGRmMzA3ZWIxOGQ2ZGExNjk4NjUyMjk4.pdf', 'pdf', '4241_no22extraisachsen_sumliste_23-10-2023.pdf', 51356, 4241, 40, '0', NULL, 0, 'OGUzYmJiOTA1MTk3YWZmODRkNGRmMzA3ZWIxOGQ2ZGExNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(12, 'ZGMzYTQyNjI1YjZmZTI4YTU0YWEwZmZiNmQzMjhiMjIxNjk4NjUyMjk4.xlsx', 'xlsx', '4246_NO22Princessekstra_fordelingsrapport_23-10-2023.xlsx', 10204, 4246, 40, '0', NULL, 0, 'ZGMzYTQyNjI1YjZmZTI4YTU0YWEwZmZiNmQzMjhiMjIxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(13, 'NTIwOWUwM2FkNTk1ZWFkMmQwMjAyM2NhYjAyYmNlNGYxNjk4NjUyMjk4.pdf', 'pdf', '4246_NO22Princessekstra_sumliste_23-10-2023.pdf', 50128, 4246, 40, '0', NULL, 0, 'NTIwOWUwM2FkNTk1ZWFkMmQwMjAyM2NhYjAyYmNlNGYxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(14, 'NjM1MTc3NTBjMjk5MmQ0NzY1ZGJmMTQ4ZGYzZmU5MjYxNjk4NjUyMjk4.xlsx', 'xlsx', '4248_no23LTI_fordelingsrapport_23-10-2023.xlsx', 8997, 4248, 40, '0', NULL, 0, 'NjM1MTc3NTBjMjk5MmQ0NzY1ZGJmMTQ4ZGYzZmU5MjYxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(15, 'YTI4MTQwMTIxYWYxZTkwMGYxMjBjMTFkZDc0MWNlM2IxNjk4NjUyMjk4.pdf', 'pdf', '4248_no23LTI_sumliste_23-10-2023.pdf', 45250, 4248, 40, '0', NULL, 0, 'YTI4MTQwMTIxYWYxZTkwMGYxMjBjMTFkZDc0MWNlM2IxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(16, 'OTI3YzA0NWZmYzhhNWMxZWE5MGIwZmZiZDNhOTgwOTUxNjk4NjUyMjk4.xlsx', 'xlsx', '4261_no22ekstraprincess4_fordelingsrapport_23-10-2023.xlsx', 9173, 4261, 40, '0', NULL, 0, 'OTI3YzA0NWZmYzhhNWMxZWE5MGIwZmZiZDNhOTgwOTUxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(17, 'NWQ5ZDgzZDE3YzAwZjVkYjU1NzJmYzFiMmUxYzdkNGQxNjk4NjUyMjk4.pdf', 'pdf', '4261_no22ekstraprincess4_sumliste_23-10-2023.pdf', 45100, 4261, 40, '0', NULL, 0, 'NWQ5ZDgzZDE3YzAwZjVkYjU1NzJmYzFiMmUxYzdkNGQxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(18, 'N2Y2NjhjNzA1NWVmNDk5NTFhOTM2MWExNTdjNzRkM2ExNjk4NjUyMjk4.xlsx', 'xlsx', '4262_NO22Isachsen2_fordelingsrapport_23-10-2023.xlsx', 14499, 4262, 40, '0', NULL, 0, 'N2Y2NjhjNzA1NWVmNDk5NTFhOTM2MWExNTdjNzRkM2ExNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(19, 'Y2Y3ZjAyODI2MGRhZTY2ZTAxZDRjZDkwZDk4MjQzYWIxNjk4NjUyMjk4.pdf', 'pdf', '4262_NO22Isachsen2_sumliste_23-10-2023.pdf', 47993, 4262, 40, '0', NULL, 0, 'Y2Y3ZjAyODI2MGRhZTY2ZTAxZDRjZDkwZDk4MjQzYWIxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(20, 'ZWM5Zjg1M2IwY2U1NDdkZTdkNzQ0MDBkNTZjNTNmN2ExNjk4NjUyMjk4.xlsx', 'xlsx', '4274_West Pharmaceutical Services Danmark AS - 2023_fordelingsrapport_23-10-2023.xlsx', 22527, 4274, 40, '0', NULL, 0, 'ZWM5Zjg1M2IwY2U1NDdkZTdkNzQ0MDBkNTZjNTNmN2ExNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(21, 'NDA0ZjM3YjE5NmNhNWE0MzQyZTlmNTUyMDYyNjA5OTQxNjk4NjUyMjk4.pdf', 'pdf', '4274_West Pharmaceutical Services Danmark AS - 2023_sumliste_23-10-2023.pdf', 57899, 4274, 40, '0', NULL, 0, 'NDA0ZjM3YjE5NmNhNWE0MzQyZTlmNTUyMDYyNjA5OTQxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(22, 'NDI3NzZhNjY0YmQxMTFmMGY2YTVlNDI2YjcxZjUzZmUxNjk4NjUyMjk4.xlsx', 'xlsx', '4303_Plandent - 2023, SO427504_fordelingsrapport_23-10-2023.xlsx', 19586, 4303, 40, '0', NULL, 0, 'NDI3NzZhNjY0YmQxMTFmMGY2YTVlNDI2YjcxZjUzZmUxNjk4NjUyMjk4', 0, '2023-10-31 10:02:19', '2023-10-30 07:51:38'),
(23, 'YmYzYThlMDFlYjJmODU0OTZhMGFkYmJhMmYyZjkyMWQxNjk4NjUyMjk4.pdf', 'pdf', '4303_Plandent - 2023, SO427504_sumliste_23-10-2023.pdf', 62795, 4303, 40, '0', NULL, 0, 'YmYzYThlMDFlYjJmODU0OTZhMGFkYmJhMmYyZjkyMWQxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(24, 'ZjQzNmUyYWViOWQyNWMxZWFlNDM1YmYwYzE1YjM2NDkxNjk4NjUyMjk4.xlsx', 'xlsx', '4304_Kirsten test-2023_fordelingsrapport_23-10-2023.xlsx', 8525, 4304, 40, '0', NULL, 0, 'ZjQzNmUyYWViOWQyNWMxZWFlNDM1YmYwYzE1YjM2NDkxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38'),
(25, 'NThkMWQ0OTkzOGYwMzJhMmY2M2NjNDM3ZmM5MDU5NGUxNjk4NjUyMjk4.pdf', 'pdf', '4304_Kirsten test-2023_sumliste_23-10-2023.pdf', 46310, 4304, 40, '0', NULL, 0, 'NThkMWQ0OTkzOGYwMzJhMmY2M2NjNDM3ZmM5MDU5NGUxNjk4NjUyMjk4', 0, '2023-11-03 07:57:25', '2023-10-30 07:51:38');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `warehouse_files`
--
ALTER TABLE `warehouse_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop` (`shop_id`,`active`),
  ADD KEY `token` (`token`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `warehouse_files`
--
ALTER TABLE `warehouse_files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3658;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
