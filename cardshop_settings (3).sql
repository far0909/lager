-- phpMyAdmin SQL Dump
-- version 5.1.3-2.el8.remi
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 23. 09 2025 kl. 14:02:29
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
-- Struktur-dump for tabellen `cardshop_settings`
--

CREATE TABLE `cardshop_settings` (
  `id` int NOT NULL,
  `shop_id` int NOT NULL,
  `language_code` int NOT NULL,
  `shipment_print_language` int NOT NULL DEFAULT '0',
  `concept_parent` varchar(50) NOT NULL DEFAULT '',
  `concept_code` varchar(15) NOT NULL DEFAULT '',
  `concept_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `card_price` int NOT NULL DEFAULT '0',
  `card_db` double NOT NULL,
  `card_moms_multiplier` double NOT NULL DEFAULT '1.25',
  `card_values` varchar(100) DEFAULT NULL,
  `env_fee_percent` double DEFAULT '0',
  `web_salesperson` varchar(50) NOT NULL DEFAULT '',
  `privatedelivery_use` tinyint NOT NULL DEFAULT '0',
  `privatedelivery_price` int NOT NULL DEFAULT '0',
  `cardfee_use` tinyint NOT NULL DEFAULT '0',
  `cardfee_minquantity` int NOT NULL DEFAULT '0',
  `cardfee_percard` int NOT NULL DEFAULT '0',
  `cardfee_price` int NOT NULL DEFAULT '0',
  `carddelivery_use` tinyint NOT NULL DEFAULT '0',
  `carddelivery_price` int NOT NULL DEFAULT '0',
  `carryup_use` tinyint NOT NULL DEFAULT '0',
  `carryup_price` int NOT NULL DEFAULT '0',
  `dot_use` int NOT NULL DEFAULT '0',
  `dot_price` int NOT NULL DEFAULT '0',
  `giftwrap_use` tinyint NOT NULL DEFAULT '0',
  `giftwrap_price` int NOT NULL DEFAULT '0',
  `giftwrap_notset_itemno` varchar(20) NOT NULL DEFAULT '',
  `invoiceinitial_use` tinyint NOT NULL DEFAULT '0',
  `invoiceinitial_price` int NOT NULL DEFAULT '0',
  `invoicefinal_use` tinyint NOT NULL DEFAULT '0',
  `invoicefinal_price` int NOT NULL DEFAULT '0',
  `minorderfee_use` int NOT NULL DEFAULT '0',
  `minorderfee_price` int DEFAULT NULL,
  `minorderfee_mincards` int DEFAULT NULL,
  `namelabels_use` int NOT NULL DEFAULT '0',
  `namelabels_price` int DEFAULT NULL,
  `calculate_freight` tinyint NOT NULL DEFAULT '0',
  `default_present_itemno` varchar(50) NOT NULL DEFAULT '',
  `default_present_name` varchar(50) NOT NULL DEFAULT '',
  `physical_close_days` int NOT NULL DEFAULT '5',
  `min_web_cards` int NOT NULL DEFAULT '5',
  `ordercs_syncwait` int NOT NULL DEFAULT '0',
  `orderweb_syncwait` int NOT NULL DEFAULT '0',
  `shipment_syncwait` int NOT NULL DEFAULT '0',
  `earlyorder_handler` varchar(25) NOT NULL DEFAULT '',
  `privatedelivery_handler` varchar(25) NOT NULL DEFAULT '',
  `week_47_open` datetime DEFAULT NULL,
  `week_47_close` datetime DEFAULT NULL,
  `week_47_close_websale` datetime DEFAULT NULL,
  `week_47_close_sale` datetime DEFAULT NULL,
  `week_48_open` datetime DEFAULT NULL,
  `week_48_close` datetime DEFAULT NULL,
  `week_48_close_websale` datetime DEFAULT NULL,
  `week_48_close_sale` datetime DEFAULT NULL,
  `week_49_open` datetime DEFAULT NULL,
  `week_49_close` datetime DEFAULT NULL,
  `week_49_close_websale` datetime DEFAULT NULL,
  `week_49_close_sale` datetime DEFAULT NULL,
  `week_50_open` datetime DEFAULT NULL,
  `week_50_close` datetime DEFAULT NULL,
  `week_50_close_websale` datetime DEFAULT NULL,
  `week_50_close_sale` datetime DEFAULT NULL,
  `week_51_open` datetime DEFAULT NULL,
  `week_51_close` datetime DEFAULT NULL,
  `week_51_close_websale` datetime DEFAULT NULL,
  `week_51_close_sale` datetime DEFAULT NULL,
  `week_04_open` datetime DEFAULT NULL,
  `week_04_close` datetime DEFAULT NULL,
  `week_04_close_websale` datetime DEFAULT NULL,
  `week_04_close_sale` datetime DEFAULT NULL,
  `private_open` datetime DEFAULT NULL,
  `private_close` datetime DEFAULT NULL,
  `private_close_websale` datetime DEFAULT NULL,
  `private_close_sale` datetime DEFAULT NULL,
  `private_expire_date` varchar(20) NOT NULL DEFAULT '',
  `private_expire_date_future` varchar(20) NOT NULL DEFAULT '',
  `special_private1_open` datetime DEFAULT NULL,
  `special_private1_close` datetime DEFAULT NULL,
  `special_private1_close_websale` datetime DEFAULT NULL,
  `special_private1_close_sale` datetime DEFAULT NULL,
  `special_private1_expiredate` varchar(20) DEFAULT NULL,
  `special_private2_open` datetime DEFAULT NULL,
  `special_private2_close` datetime DEFAULT NULL,
  `special_private2_close_websale` datetime DEFAULT NULL,
  `special_private2_close_sale` datetime DEFAULT NULL,
  `special_private2_expiredate` varchar(20) DEFAULT NULL,
  `replacement_company_id` int NOT NULL DEFAULT '0',
  `show_index` int NOT NULL,
  `floating_expire_months` int DEFAULT NULL,
  `send_certificates` int NOT NULL DEFAULT '0',
  `is_hidden` int NOT NULL DEFAULT '0',
  `navsync_orders` int NOT NULL DEFAULT '0',
  `navsync_shipments` int NOT NULL DEFAULT '0',
  `navsync_privatedelivery` int NOT NULL DEFAULT '0',
  `navsync_earlyorders` int NOT NULL DEFAULT '0',
  `bonus_presents` varchar(20) DEFAULT NULL,
  `earlyorder_print_language` int NOT NULL DEFAULT '0',
  `allinclusive` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `cardshop_settings`
--

INSERT INTO `cardshop_settings` (`id`, `shop_id`, `language_code`, `shipment_print_language`, `concept_parent`, `concept_code`, `concept_name`, `card_price`, `card_db`, `card_moms_multiplier`, `card_values`, `env_fee_percent`, `web_salesperson`, `privatedelivery_use`, `privatedelivery_price`, `cardfee_use`, `cardfee_minquantity`, `cardfee_percard`, `cardfee_price`, `carddelivery_use`, `carddelivery_price`, `carryup_use`, `carryup_price`, `dot_use`, `dot_price`, `giftwrap_use`, `giftwrap_price`, `giftwrap_notset_itemno`, `invoiceinitial_use`, `invoiceinitial_price`, `invoicefinal_use`, `invoicefinal_price`, `minorderfee_use`, `minorderfee_price`, `minorderfee_mincards`, `namelabels_use`, `namelabels_price`, `calculate_freight`, `default_present_itemno`, `default_present_name`, `physical_close_days`, `min_web_cards`, `ordercs_syncwait`, `orderweb_syncwait`, `shipment_syncwait`, `earlyorder_handler`, `privatedelivery_handler`, `week_47_open`, `week_47_close`, `week_47_close_websale`, `week_47_close_sale`, `week_48_open`, `week_48_close`, `week_48_close_websale`, `week_48_close_sale`, `week_49_open`, `week_49_close`, `week_49_close_websale`, `week_49_close_sale`, `week_50_open`, `week_50_close`, `week_50_close_websale`, `week_50_close_sale`, `week_51_open`, `week_51_close`, `week_51_close_websale`, `week_51_close_sale`, `week_04_open`, `week_04_close`, `week_04_close_websale`, `week_04_close_sale`, `private_open`, `private_close`, `private_close_websale`, `private_close_sale`, `private_expire_date`, `private_expire_date_future`, `special_private1_open`, `special_private1_close`, `special_private1_close_websale`, `special_private1_close_sale`, `special_private1_expiredate`, `special_private2_open`, `special_private2_close`, `special_private2_close_websale`, `special_private2_close_sale`, `special_private2_expiredate`, `replacement_company_id`, `show_index`, `floating_expire_months`, `send_certificates`, `is_hidden`, `navsync_orders`, `navsync_shipments`, `navsync_privatedelivery`, `navsync_earlyorders`, `bonus_presents`, `earlyorder_print_language`, `allinclusive`) VALUES
(1, 52, 1, 0, 'DKJGK', 'JGK 560', 'Julegavekortet 560', 56000, 200, 1.25, NULL, 3.85, 'GS', 0, 0, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2415', 'Gaveæske', 4, 5, 2, 2, 2, 'navision', 'navision', '2025-07-01 00:00:00', '2025-10-28 00:00:00', '2025-10-24 10:00:00', '2025-10-28 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '2025-07-01 00:00:00', '2025-11-25 00:00:00', '2025-11-21 10:00:00', '2025-11-25 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 0, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(2, 53, 1, 0, 'DKGULD', 'GULD800', 'Guldgavekortet 800', 80000, 250, 1.25, NULL, 3.85, 'GS', 1, 4900, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2417', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', '2025-07-01 00:00:00', '2024-11-30 00:00:00', '2024-11-27 12:00:00', '2024-11-30 00:00:00', '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', '2025-07-01 00:00:00', '2026-04-10 00:00:00', '2026-04-01 00:00:00', '2026-04-01 00:00:00', '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 1, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(3, 54, 1, 0, 'DK24G', '24G-400', '24gaver 400', 40000, 100, 1.25, NULL, 3.85, 'GS', 1, 4900, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2415', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', '2025-07-01 00:00:00', '2024-11-30 00:00:00', '2024-11-27 12:00:00', '2024-11-30 00:00:00', '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', '2025-07-01 00:00:00', '2026-04-10 00:00:00', '2026-04-01 00:00:00', '2026-04-01 00:00:00', '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 3, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(4, 55, 1, 0, 'DK24G', '24G-560', '24gaver 560', 56000, 200, 1.25, NULL, 3.85, 'GS', 1, 4900, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2415', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', '2025-07-01 00:00:00', '2024-11-30 00:00:00', '2024-11-27 12:00:00', '2024-11-30 00:00:00', '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', '2025-07-01 00:00:00', '2026-04-10 00:00:00', '2026-04-01 00:00:00', '2026-04-01 00:00:00', '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 4, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(5, 56, 1, 0, 'DK24G', '24G-640', '24gaver 640', 64000, 230, 1.25, NULL, 3.85, 'GS', 1, 4900, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2416', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', '2025-07-01 00:00:00', '2024-11-30 00:00:00', '2024-11-27 12:00:00', '2024-11-30 00:00:00', '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', '2025-07-01 00:00:00', '2026-04-10 00:00:00', '2026-04-01 00:00:00', '2026-04-01 00:00:00', '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 5, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(6, 290, 1, 0, 'DKDROM', 'DRØM-200', 'Drømmegavekortet 200', 20000, 50, 1.25, NULL, 3.85, 'GS', 0, 0, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2800, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2413', 'Gaveæske', 14, 10, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', NULL, NULL, NULL, NULL, '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 6, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(7, 310, 1, 0, 'DKDROM', 'DRØM-300', 'Drømmegavekortet 300', 30000, 75, 1.25, NULL, 3.85, 'GS', 0, 0, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2800, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2414', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', NULL, NULL, NULL, NULL, '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 7, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(8, 575, 1, 0, 'DKDESIGN', 'DJ640', 'Designgavekortet 640', 64000, 230, 1.25, NULL, 3.85, 'GS', 0, 0, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, '54820', 'Gaveæske', 14, 5, 2, 8, 2, 'navision', 'navision', '2025-07-01 00:00:00', '2025-10-28 00:00:00', '2025-10-24 10:00:00', '2025-10-28 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 8, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(9, 272, 4, 1, 'NOJG', 'JGNO-300', '', 30000, 75, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3500, 1, 34900, 0, 87800, 1, 170000, 1, 4500, '', 0, 5800, 2, 8600, 1, 34900, 5, 1, 1000, 0, 'N25JAuto-3', 'Håndklepakke\r\n', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', NULL, NULL, NULL, NULL, '', '', '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '10-11-2025', '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', '04-01-2026', 69451, 14, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(10, 57, 4, 1, 'NOJG', 'JGNO-400', '', 40000, 100, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3500, 1, 34900, 0, 87800, 1, 170000, 1, 4500, '', 0, 5800, 2, 8600, 1, 34900, 5, 1, 1000, 0, 'N25JAuto-4', 'Håndklepakke\r\n', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', NULL, NULL, NULL, NULL, '', '', '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '10-11-2025', '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', '04-01-2026', 69451, 15, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(11, 58, 4, 1, 'NOJG', 'JGNO-600', '', 60000, 200, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3500, 1, 34900, 0, 87800, 1, 170000, 1, 4500, '', 0, 5800, 2, 8600, 1, 34900, 5, 1, 1000, 0, 'N25JAuto-6', 'Håndklepakke\r\n', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', NULL, NULL, NULL, NULL, '', '', '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '10-11-2025', '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', '04-01-2026', 69451, 16, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(12, 59, 4, 1, 'NOJG', 'JGNO-800', '', 80000, 250, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3500, 1, 34900, 0, 87800, 1, 170000, 1, 4500, '', 0, 5800, 2, 8600, 1, 34900, 5, 1, 1000, 0, 'N25JAuto-8', 'Håndklepakke\r\n', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', NULL, NULL, NULL, NULL, '', '', '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '10-11-2025', '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', '04-01-2026', 69451, 17, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(13, 574, 4, 1, 'NOGULD', 'GULDNO1000', '', 100000, 300, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3500, 1, 34900, 0, 87800, 1, 170000, 1, 4500, '', 0, 5800, 2, 8600, 1, 34900, 5, 1, 1000, 0, 'N25JAuto-10', 'Håndklepakke\r\n', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', NULL, NULL, NULL, NULL, '', '', '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '10-11-2025', '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', '04-01-2026', 69451, 18, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(14, 1832, 5, 1, 'SEJK', 'SE-440', '', 44000, 95, 1, NULL, 3.85, 'GS', 2, 8800, 1, 0, 1, 2500, 1, 24800, 1, 87800, 1, 87800, 1, 2500, '', 2, 7800, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'DEFAULT', 'Gaveæske', 5, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '31-12-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69439, 21, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(15, 1981, 5, 1, 'SEJK', 'SE-800', '', 80000, 190, 1, NULL, 3.85, 'GS', 2, 8800, 1, 0, 1, 2500, 1, 24800, 1, 87800, 1, 87800, 1, 2500, '', 2, 7800, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'DEFAULT', 'Gaveæske', 5, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '31-12-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69439, 22, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(16, 2550, 4, 1, 'NOGULD', 'GULDNO1200', '', 120000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3500, 1, 34900, 0, 87800, 1, 170000, 1, 4500, '', 0, 5800, 2, 8600, 1, 34900, 5, 1, 1000, 0, 'N25JAuto-12', 'Håndklepakke\r\n', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', NULL, NULL, NULL, NULL, '', '', '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '10-11-2025', '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', '04-01-2026', 69451, 19, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(19, 2395, 1, 0, 'DKGULD', 'GULD1120', 'Guldgavekortet 1120', 112000, 300, 1.25, NULL, 3.85, 'GS', 1, 4900, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2419-9', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', '2025-07-01 00:00:00', '2024-11-30 00:00:00', '2024-11-27 12:00:00', '2024-11-30 00:00:00', '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', '2025-07-01 00:00:00', '2026-04-10 00:00:00', '2026-04-01 00:00:00', '2026-04-01 00:00:00', '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 2, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(21, 2960, 1, 0, 'LUKS', 'LUKS-400', '', 40000, 400, 1.25, NULL, 3.85, 'GS', 1, 4900, 0, 0, 1, 1600, 1, 21800, 0, 0, 0, 0, 0, 0, '', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 0, '', '', 7, 0, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 11, 12, 1, 0, 1, 1, 1, 1, NULL, 0, 0),
(22, 2962, 1, 0, 'LUKS', 'LUKS-640', '', 64000, 230, 1.25, NULL, 3.85, 'GS', 1, 4900, 0, 0, 1, 1600, 1, 21800, 0, 0, 0, 0, 0, 0, '', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 0, '', '', 7, 0, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 12, 12, 1, 0, 1, 1, 1, 1, NULL, 0, 0),
(23, 2963, 1, 0, 'LUKS', 'LUKS-800', '', 80000, 250, 1.25, NULL, 3.85, 'GS', 1, 4900, 0, 0, 1, 1600, 1, 21800, 0, 0, 0, 0, 0, 0, '', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 0, '', '', 7, 0, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 13, 12, 1, 0, 1, 1, 1, 1, NULL, 0, 0),
(24, 2961, 1, 0, 'LUKS', 'LUKS-200', '', 20000, 200, 1.25, NULL, 3.85, 'GS', 1, 4900, 0, 0, 1, 1600, 1, 21800, 0, 0, 0, 0, 0, 0, '', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 0, '', '', 7, 0, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 10, 12, 1, 0, 1, 1, 1, 1, NULL, 0, 0),
(26, 4662, 1, 0, 'DKDESIGN', 'DJ960', 'Designgavekortet 960', 96000, 280, 1.25, NULL, 3.85, 'GS', 0, 0, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, '54851', 'Gaveæske', 14, 5, 2, 8, 2, 'navision', 'navision', '2025-07-01 00:00:00', '2025-10-28 00:00:00', '2025-10-24 10:00:00', '2025-10-28 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 8, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(27, 4668, 1, 0, 'DKJGK', 'JGK 720', 'Julegavekortet 720', 72000, 250, 1.25, NULL, 3.85, 'GS', 0, 0, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2416', 'Gaveæske', 4, 5, 2, 2, 2, 'navision', 'navision', '2025-07-01 00:00:00', '2025-10-28 00:00:00', '2025-10-24 10:00:00', '2025-10-28 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '2025-07-01 00:00:00', '2025-11-25 00:00:00', '2025-11-21 10:00:00', '2025-11-25 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 0, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(28, 4740, 4, 1, 'NOGULD', 'GULDNO2000', '', 200000, 650, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3500, 1, 34900, 0, 87800, 1, 170000, 1, 4500, '', 0, 5800, 2, 8600, 1, 34900, 5, 1, 1000, 0, 'N25JAuto-20', 'Håndklepakke\r\n', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', NULL, NULL, NULL, NULL, '', '', '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '10-11-2025', '2025-07-01 00:00:00', '2026-01-06 00:00:00', '2025-12-27 10:00:00', '2026-01-06 00:00:00', '04-01-2026', 69451, 19, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(29, 4793, 5, 1, 'SEJK', 'SE-300', '', 30000, 95, 1, NULL, 3.85, 'GS', 2, 8800, 1, 0, 1, 2500, 1, 24800, 1, 87800, 1, 87800, 1, 2500, '', 2, 7800, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'DEFAULT', 'Gaveæske', 5, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '31-12-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69439, 21, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(30, 5117, 5, 1, 'SEJK', 'SE-600', '', 60000, 95, 1, NULL, 3.85, 'GS', 2, 8800, 1, 0, 1, 2500, 1, 24800, 1, 87800, 1, 87800, 1, 2500, '', 2, 7800, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'DEFAULT', 'Gaveæske', 5, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '31-12-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69439, 23, NULL, 1, 0, 1, 1, 0, 0, NULL, 1, 0),
(32, 7121, 1, 0, 'DKJGV', 'JGV', 'Julegavevalget', 60000, 200, 1.25, '400,600,800', 3.85, 'GS', 0, 0, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 1800, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'Afventer', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', '2025-07-01 00:00:00', '2025-10-28 00:00:00', '2025-10-24 10:00:00', '2025-10-28 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-11 00:00:00', '2025-11-07 10:00:00', '2025-11-11 00:00:00', '2025-07-01 00:00:00', '2025-11-25 00:00:00', '2025-11-21 10:00:00', '2025-11-25 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 0, NULL, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(34, 8271, 5, 1, 'SESOM', 'SOM440', '', 44000, 95, 1, NULL, 3.85, 'GS', 2, 7900, 1, 0, 1, 2500, 1, 24800, 0, 87800, 0, 87800, 0, 2500, '', 2, 7800, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'DEFAULT', 'Gaveæske', 5, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-01 00:00:00', '2026-03-01 00:00:00', '2025-09-01 00:00:00', '2025-09-01 00:00:00', '28-02-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69439, 21, NULL, 1, 0, 1, 1, 1, 1, NULL, 1, 0),
(35, 8355, 4, 0, 'NOLUKS', 'NOLUKS-300', 'Luksuskortet 300 NO', 30000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(36, 8356, 4, 0, 'NOLUKS', 'NOLUKS-400', 'Luksuskortet 400 NO', 40000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(37, 8357, 4, 0, 'NOLUKS', 'NOLUKS-600', 'Luksuskortet 600 NO', 60000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(38, 8358, 4, 0, 'NOLUKS', 'NOLUKS-800', 'Luksuskortet 800 NO', 80000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(39, 8359, 4, 0, 'NOLUKS', 'NOLUKS-1000', 'Luksuskortet 1000 NO', 100000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(40, 8360, 4, 0, 'NOLUKS', 'NOLUKS-1200', 'Luksuskortet 1200 NO', 120000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(41, 8361, 4, 0, 'NOLUKS', 'NOLUKS-1500', 'Luksuskortet 1500 NO', 150000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(42, 8362, 4, 0, 'NOLUKS', 'NOLUKS-2000', 'Luksuskortet 2000 NO', 200000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(43, 8363, 4, 0, 'NOLUKS', 'NOLUKS-3000', 'Luksuskortet 3000 NO', 300000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(44, 8364, 4, 0, 'NOLUKS', 'NOLUKS-4000', 'Luksuskortet 4000 NO', 400000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(45, 8365, 4, 0, 'NOLUKS', 'NOLUKS-5000', 'Luksuskortet 5000 NO', 500000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(46, 8366, 4, 0, 'NOLUKS', 'NOLUKS-8000', 'Luksuskortet 8000 NO', 800000, 400, 1, NULL, 3.85, 'GS', 1, 22500, 1, 5, 1, 3200, 1, 34900, 0, 87800, 0, 170000, 1, 4100, '', 0, 8400, 2, 8600, 1, 34900, 5, 1, 800, 0, '', '', 17, 5, 2, 2, 2, 'autodetect', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '2027-04-01 00:00:00', '01-01-2030', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69451, 11, 12, 0, 1, 0, 0, 0, 0, NULL, 0, 0),
(47, 9321, 1, 0, 'DKGULD', 'GULD1400', 'Guldgavekortet 1400', 140000, 400, 1.25, NULL, 3.85, 'GS', 1, 4900, 1, 0, 1, 1600, 1, 21800, 1, 96800, 1, 96800, 2, 2400, 'NOGIFTWRAP', 2, 8400, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'GF2419-9', 'Gaveæske', 14, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-04 00:00:00', '2025-10-31 10:00:00', '2025-11-04 00:00:00', NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2025-11-18 00:00:00', '2025-11-07 10:00:00', '2025-11-18 00:00:00', '2025-07-01 00:00:00', '2024-11-30 00:00:00', '2024-11-27 12:00:00', '2024-11-30 00:00:00', '2025-07-01 00:00:00', '2026-01-01 00:00:00', '2025-12-27 10:00:00', '2026-01-03 00:00:00', '2025-07-01 00:00:00', '2026-04-10 00:00:00', '2026-04-01 00:00:00', '2026-04-01 00:00:00', '01-04-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69437, 2, NULL, 1, 0, 1, 1, 0, 0, NULL, 0, 0),
(48, 9495, 5, 1, 'SEJKAI', 'SEAI-440', '', 44000, 95, 1, NULL, 0, 'GS', 2, 0, 1, 0, 1, 0, 1, 0, 0, 87800, 0, 87800, 0, 2500, '', 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'DEFAULT', 'Gaveæske', 5, 5, 2, 2, 2, 'navision', 'navision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '2027-01-01 00:00:00', '31-12-2026', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69439, 81, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 1);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `cardshop_settings`
--
ALTER TABLE `cardshop_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_id` (`shop_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `cardshop_settings`
--
ALTER TABLE `cardshop_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
