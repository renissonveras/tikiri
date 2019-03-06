-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 21/11/2017 às 00:04
-- Versão do servidor: 5.5.55-0+deb8u1
-- Versão do PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `tikiri_demo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `api_settings`
--

CREATE TABLE IF NOT EXISTS `api_settings` (
`id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `banlist`
--

CREATE TABLE IF NOT EXISTS `banlist` (
`id` int(10) unsigned NOT NULL,
  `ban_status` tinyint(1) NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `internal_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bar_notifications`
--

CREATE TABLE IF NOT EXISTS `bar_notifications` (
`id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `bar_notifications`
--

INSERT INTO `bar_notifications` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(30, 'new-version', '', '2017-11-20 23:13:15', '2017-11-20 23:13:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `canned_response`
--

CREATE TABLE IF NOT EXISTS `canned_response` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `common_settings`
--

CREATE TABLE IF NOT EXISTS `common_settings` (
`id` int(10) unsigned NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `optional_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `common_settings`
--

INSERT INTO `common_settings` (`id`, `option_name`, `option_value`, `status`, `optional_field`, `created_at`, `updated_at`) VALUES
(1, 'itil', '', '0', '', NULL, NULL),
(2, 'ticket_token_time_duration', '1', '', '', '2016-12-13 03:19:52', '2016-12-13 03:19:52'),
(3, 'enable_rtl', '0', '', '', '2016-12-13 03:19:52', '2017-06-16 13:41:46'),
(4, 'user_set_ticket_status', '', '1', '', '2016-12-13 03:19:52', '2016-12-13 03:19:52'),
(5, 'send_otp', '', '1', '', '2016-12-13 03:19:52', '2017-11-21 02:32:00'),
(6, 'email_mandatory', '', '1', '', '2016-12-13 03:19:52', '2017-11-21 02:32:00'),
(7, 'user_priority', '', '0', '', '2016-12-13 03:19:52', '2016-12-13 03:19:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `conditions`
--

CREATE TABLE IF NOT EXISTS `conditions` (
`id` int(10) unsigned NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `country_code`
--

CREATE TABLE IF NOT EXISTS `country_code` (
`id` int(10) unsigned NOT NULL,
  `iso` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nicename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `numcode` smallint(6) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `country_code`
--

INSERT INTO `country_code` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', 'NUL', 0, 0, '2016-12-13 03:19:33', '2016-12-13 03:19:33'),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, '2016-12-13 03:19:34', '2016-12-13 03:19:34'),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', 'NUL', 0, 0, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'NUL', 0, 246, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, '2016-12-13 03:19:35', '2016-12-13 03:19:35'),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'NUL', 0, 61, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'NUL', 0, 672, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(53, 'CI', 'COTE DIVOIRE', 'Cote DIvoire', 'CIV', 384, 225, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, '2016-12-13 03:19:36', '2016-12-13 03:19:36'),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, '2016-12-13 03:19:37', '2016-12-13 03:19:37'),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', 'NUL', 0, 0, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, '2016-12-13 03:19:38', '2016-12-13 03:19:38'),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', 'NUL', 0, 0, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, '2016-12-13 03:19:39', '2016-12-13 03:19:39'),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLES REPUBLIC OF', 'Korea, Democratic Peoples Republic of', 'PRK', 408, 850, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(116, 'LA', 'LAO PEOPLES DEMOCRATIC REPUBLIC', 'Lao Peoples Democratic Republic', 'LAO', 418, 856, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, '2016-12-13 03:19:40', '2016-12-13 03:19:40'),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(137, 'YT', 'MAYOTTE', 'Mayotte', 'NUL', 0, 269, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, '2016-12-13 03:19:41', '2016-12-13 03:19:41'),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, '2016-12-13 03:19:42', '2016-12-13 03:19:42'),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', 'NUL', 0, 970, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, '2016-12-13 03:19:43', '2016-12-13 03:19:43'),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', 'NUL', 0, 381, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, '2016-12-13 03:19:44', '2016-12-13 03:19:44'),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', 'NUL', 0, 0, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', 'NUL', 0, 670, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, '2016-12-13 03:19:45', '2016-12-13 03:19:45'),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', 'NUL', 0, 1, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, '2016-12-13 03:19:46', '2016-12-13 03:19:46'),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, '2016-12-13 03:19:47', '2016-12-13 03:19:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_forms`
--

CREATE TABLE IF NOT EXISTS `custom_forms` (
`id` int(10) unsigned NOT NULL,
  `formname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_form_fields`
--

CREATE TABLE IF NOT EXISTS `custom_form_fields` (
`id` int(10) unsigned NOT NULL,
  `forms_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `date_format`
--

CREATE TABLE IF NOT EXISTS `date_format` (
`id` int(10) unsigned NOT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `date_format`
--

INSERT INTO `date_format` (`id`, `format`) VALUES
(1, 'dd/mm/yyyy'),
(2, 'dd-mm-yyyy'),
(3, 'dd.mm.yyyy'),
(4, 'mm/dd/yyyy'),
(5, 'mm:dd:yyyy'),
(6, 'mm-dd-yyyy'),
(7, 'yyyy/mm/dd'),
(8, 'yyyy.mm.dd'),
(9, 'yyyy-mm-dd');

-- --------------------------------------------------------

--
-- Estrutura para tabela `date_time_format`
--

CREATE TABLE IF NOT EXISTS `date_time_format` (
`id` int(10) unsigned NOT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `date_time_format`
--

INSERT INTO `date_time_format` (`id`, `format`) VALUES
(1, 'd/m/Y H:i:s'),
(2, 'd.m.Y H:i:s'),
(3, 'd-m-Y H:i:s'),
(4, 'm/d/Y H:i:s'),
(5, 'm.d.Y H:i:s'),
(6, 'm-d-Y H:i:s'),
(7, 'Y/m/d H:i:s'),
(8, 'Y.m.d H:i:s'),
(9, 'Y-m-d H:i:s');

-- --------------------------------------------------------

--
-- Estrutura para tabela `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sla` int(10) unsigned DEFAULT NULL,
  `manager` int(10) unsigned DEFAULT NULL,
  `ticket_assignment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `outgoing_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_set` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auto_ticket_response` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auto_message_response` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auto_response_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_access` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_sign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `department`
--

INSERT INTO `department` (`id`, `name`, `type`, `sla`, `manager`, `ticket_assignment`, `outgoing_email`, `template_set`, `auto_ticket_response`, `auto_message_response`, `auto_response_email`, `recipient`, `group_access`, `department_sign`, `created_at`, `updated_at`) VALUES
(1, 'Suporte', '1', 1, 1, '', '', '', '', '', '', '', '', '', '2016-12-13 03:19:27', '2017-11-18 04:36:49'),
(2, 'Análise e Desenvolvimento', '1', 1, NULL, '', '', '', '', '', '', '', '', '', '2016-12-13 03:19:28', '2017-10-26 22:40:33'),
(3, 'Redes e Segurança', '1', 1, NULL, '', '', '', '', '', '', '', '', '', '2016-12-13 03:19:28', '2017-10-26 22:40:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
`id` int(10) unsigned NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` int(10) unsigned DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `help_topic` int(10) unsigned DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fetching_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fetching_port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fetching_protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fetching_encryption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailbox_protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imap_config` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sending_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sending_port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sending_protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sending_encryption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_validate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_authentication` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `internal_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auto_response` tinyint(1) NOT NULL,
  `fetching_status` tinyint(1) NOT NULL,
  `move_to_folder` tinyint(1) NOT NULL,
  `delete_email` tinyint(1) NOT NULL,
  `do_nothing` tinyint(1) NOT NULL,
  `sending_status` tinyint(1) NOT NULL,
  `authentication` tinyint(1) NOT NULL,
  `header_spoofing` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
`id` int(10) unsigned NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `faveo_mails`
--

CREATE TABLE IF NOT EXISTS `faveo_mails` (
`id` int(10) unsigned NOT NULL,
  `email_id` int(11) NOT NULL,
  `drive` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `faveo_queues`
--

CREATE TABLE IF NOT EXISTS `faveo_queues` (
`id` int(10) unsigned NOT NULL,
  `service_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `field_values`
--

CREATE TABLE IF NOT EXISTS `field_values` (
`id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned DEFAULT NULL,
  `child_id` int(10) unsigned DEFAULT NULL,
  `field_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_badges`
--

CREATE TABLE IF NOT EXISTS `ga_badges` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_sm` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_lg` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `icon_css` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT '0',
  `credits` int(11) NOT NULL DEFAULT '0',
  `xp` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `notification` text COLLATE utf8_unicode_ci,
  `isdeduct` tinyint(1) NOT NULL DEFAULT '0',
  `ilevel` smallint(6) NOT NULL DEFAULT '0',
  `ishide` tinyint(1) NOT NULL DEFAULT '0',
  `ismultiple` tinyint(1) NOT NULL DEFAULT '0',
  `isactive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ga_badges`
--

INSERT INTO `ga_badges` (`id`, `title`, `description`, `icon`, `icon_sm`, `icon_lg`, `category_id`, `type_id`, `icon_css`, `priority`, `credits`, `xp`, `price`, `notification`, `isdeduct`, `ilevel`, `ishide`, `ismultiple`, `isactive`, `created_at`, `updated_at`) VALUES
(3, 'Atendimento nota 10', 'Este distintivo é atribuído aos atendentes que atingem 10 pontos', NULL, NULL, NULL, 4, 1, NULL, 5, 0, 0, 10, 'Atingiu a marca de 10 pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-09-21 07:14:51'),
(4, 'Atendimento nota 100', 'Este distintivo é atribuído aos atendentes que atingem 100 pontos', NULL, NULL, NULL, 4, 1, NULL, 4, 0, 0, 100, 'Este distintivo é atribuído aos atendentes que atingem 10 pontos', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-09-19 08:07:43'),
(5, 'Atendimento nota 1000', 'Este distintivo é atribuído aos atendentes que atingem 10 pontos', NULL, NULL, NULL, 4, 1, NULL, 0, 0, 0, 1000, 'Atingiu a marca de 1000 pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-10-16 23:54:02'),
(6, 'Nível C', 'Primeiro nível a ser atingido por usuários do sistema. Para tanto o usuário deve atingir 1000 pontos, no entanto, ao atingir o nível este ganhará 100 pontos de bônus.', NULL, NULL, NULL, 7, 2, NULL, 1, 100, 0, 1000, 'Você atingiu o Nível C, ganhou 100 pontos de bônus.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(7, 'Nível B', 'Primeiro nível a ser atingido por usuários do sistema. Para tanto o usuário deve atingir 10000 pontos, no entanto, ao atingir o nível este ganhará 1000 pontos de bônus.', NULL, NULL, NULL, 7, 2, NULL, 1, 1000, 0, 10000, 'Parabéns você atingiu o Nível B e ganhará 1000 pontos de bônus.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(8, 'Nível A', 'Maior nível a ser atingido por usuários do sistema. Para tanto o usuário deve atingir 100000 pontos, no entanto, ao atingir o nível este ganhará 100 pontos de bônus.', NULL, NULL, NULL, 7, 2, NULL, 0, 10000, 0, 100000, 'Parabéns você atingiu o nível máximo do Tikiri. Será premiado com um bônus de 10.000 para usar como quiser.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(14, 'Recebeu uma estrela na avaliação do atendimento', 'Esta pontuação o agente recebe sempre que o atendimento for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 5, 0, 1, 0, 'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(15, 'Recebeu 02 estrelas na avaliação do atendimento', 'Esta pontuação o agente recebe sempre que o atendimento for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 4, 0, 5, 0, 'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(16, 'Recebeu 03 estrelas na avaliação do atendimento', 'Esta pontuação o agente recebe sempre que o atendimento for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 3, 0, 10, 0, 'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(17, 'Recebeu 04 estrelas na avaliação do atendimento', 'Esta pontuação o agente recebe sempre que o atendimento for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 2, 0, 20, 0, 'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(18, 'Recebeu 05 estrelas na avaliação do atendimento', 'Esta pontuação o agente recebe sempre que o atendimento for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 4, 0, 50, 0, 'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(19, 'Abriu um chamado', 'Esta pontuação será atribuída sempre que um chamado for aberto pelo sistema', NULL, NULL, NULL, 9, 3, NULL, 6, 0, 5, 0, 'Parabéns, você abriu um chamado pelo sistema, ganhou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-10-20 22:14:08'),
(20, 'Compartilhamento de Conhecimento', 'Sempre que algo for postado na base de conhecimento esta pontuação será atribuída.', NULL, NULL, NULL, 10, 3, NULL, 4, 0, 20, 0, 'Parabéns você compartilhou conhecimento na nossa Base de Conhecimento, ganhou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(21, '[100] Bônus por serviços não controlados pelo Tikiri', 'Este é um bônus controlado diretamente pela chefia.', NULL, NULL, NULL, 6, 4, NULL, 3, 100, 0, 0, 'Parabéns, você recebeu um bônus de [value].', 0, 0, 0, 0, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(24, 'Um turno de folga', 'O usuário terá direito a um dia de folga ao atingir os pontos mostrados no campo preço', NULL, NULL, NULL, 5, 5, NULL, 1, 0, 0, 5000, 'Você adquiriu a recompensa e utilizou [value] pontos.', 0, 0, 0, 1, 1, '2017-10-17 01:04:24', '2017-10-17 01:04:32'),
(25, 'Recebeu 01 estrela na avaliação do contéudo que você postou', 'Esta pontuação o agente recebe sempre que o contéudo for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 5, 0, 1, 0, 'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 12:09:22', '2017-11-09 12:09:22'),
(26, 'Recebeu 02 estrelas na avaliação do contéudo que você postou', 'Esta pontuação o agente recebe sempre que o contéudo for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 4, 0, 5, 0, 'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 12:09:22', '2017-11-09 12:09:22'),
(27, 'Recebeu 03 estrelas na avaliação do contéudo que você postou', 'Esta pontuação o agente recebe sempre que o contéudo for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 3, 0, 10, 0, 'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 12:09:22', '2017-11-09 12:09:22'),
(28, 'Recebeu 04 estrelas na avaliação do contéudo que você postou', 'Esta pontuação o agente recebe sempre que o contéudo for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 2, 0, 20, 0, 'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 12:09:22', '2017-11-09 12:09:22'),
(29, 'Recebeu 05 estrelas na avaliação do contéudo que você postou', 'Esta pontuação o agente recebe sempre que o contéudo for avaliado.', NULL, NULL, NULL, 8, 3, NULL, 4, 0, 50, 0, 'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.', 0, 0, 0, 0, 1, '2017-11-09 12:09:22', '2017-11-09 12:09:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_badge_events`
--

CREATE TABLE IF NOT EXISTS `ga_badge_events` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_categories`
--

CREATE TABLE IF NOT EXISTS `ga_categories` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shorttitle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `priority` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ga_categories`
--

INSERT INTO `ga_categories` (`id`, `title`, `shorttitle`, `description`, `type_id`, `priority`, `created_at`, `updated_at`) VALUES
(4, 'Padrão de Atendimento', 'Padrão de Atendimento', 'Este distintivo é atribuído aos atendentes assim que são habilitados para o game.', 1, 0, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(5, 'Folgas no serviço', 'Folgas no serviço', 'Esta categoria de benefício concede folgas diversas aos funcionários.', 5, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(6, 'Bônus concedido pela chefia', 'Concedido de Chefia', 'Esta categoria engloba os pontos concedidos diretamente pela chefia (bônus) no saldo dos funcionários.', 4, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(7, 'Níveis Padrão', 'Níveis Padrão', 'Níveis Padrão', 2, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(8, 'Avaliação do Atendimento', 'Avaliação do Atendimento', 'Pontuações recebidas pela avaliação do atendimento.', 3, 1, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(9, 'Utilização correta do sistema', 'Uso correto do Tikiri', 'Pontuações recebidas por bom atendimento', 3, 2, '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(10, 'Compartilhamento de Conhecimento', 'Compartilhamento de Conhecimento', 'Pontuação recebida quando o conhecimento é compartilhado e/ou utilizado por meio da Base de Conhecimento', 3, 3, '2017-11-09 08:09:22', '2017-11-09 08:09:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_events`
--

CREATE TABLE IF NOT EXISTS `ga_events` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `event_key` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ga_events`
--

INSERT INTO `ga_events` (`id`, `title`, `description`, `event_key`, `created_at`, `updated_at`) VALUES
(2, 'Avaliação do Atendimento 1', 'Teste', 'Eventkey1', '2017-11-09 08:09:22', '2017-11-09 08:09:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_level_associate`
--

CREATE TABLE IF NOT EXISTS `ga_level_associate` (
`id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ga_level_associate`
--

INSERT INTO `ga_level_associate` (`id`, `level_id`, `reward_id`, `description`, `created_at`, `updated_at`) VALUES
(2, 6, 24, '', '2017-10-17 01:18:52', '2017-10-17 01:19:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_types`
--

CREATE TABLE IF NOT EXISTS `ga_types` (
`id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ga_types`
--

INSERT INTO `ga_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Distintivo', '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(2, 'Nível', '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(3, 'Ponto', '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(4, 'Bônus', '2017-11-09 08:09:22', '2017-11-09 08:09:22'),
(5, 'Recompensas', '2017-11-09 08:09:22', '2017-11-09 08:09:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_user_achievements`
--

CREATE TABLE IF NOT EXISTS `ga_user_achievements` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `added_date` datetime NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_user_badges`
--

CREATE TABLE IF NOT EXISTS `ga_user_badges` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `added_date` datetime NOT NULL,
  `added_user_id` int(11) DEFAULT NULL,
  `acumulated_xp` int(11) DEFAULT NULL,
  `acumulated_credits` int(11) DEFAULT NULL,
  `deducted_xp` int(11) DEFAULT NULL,
  `deducted_credits` int(11) DEFAULT NULL,
  `total_credits_in_moment` int(11) NOT NULL,
  `total_xp_in_moment` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ga_user_levels`
--

CREATE TABLE IF NOT EXISTS `ga_user_levels` (
  `user_id` int(11) NOT NULL,
  `levels` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `credits` int(11) NOT NULL DEFAULT '0',
  `init_points` int(11) NOT NULL DEFAULT '0',
  `max_points` int(11) NOT NULL DEFAULT '0',
  `level_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_status` tinyint(1) NOT NULL,
  `can_create_ticket` tinyint(1) NOT NULL,
  `can_edit_ticket` tinyint(1) NOT NULL,
  `can_post_ticket` tinyint(1) NOT NULL,
  `can_close_ticket` tinyint(1) NOT NULL,
  `can_assign_ticket` tinyint(1) NOT NULL,
  `can_transfer_ticket` tinyint(1) NOT NULL,
  `can_delete_ticket` tinyint(1) NOT NULL,
  `can_ban_email` tinyint(1) NOT NULL,
  `can_manage_canned` tinyint(1) NOT NULL,
  `can_manage_faq` tinyint(1) NOT NULL,
  `can_view_agent_stats` tinyint(1) NOT NULL,
  `department_access` tinyint(1) NOT NULL,
  `admin_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `group_status`, `can_create_ticket`, `can_edit_ticket`, `can_post_ticket`, `can_close_ticket`, `can_assign_ticket`, `can_transfer_ticket`, `can_delete_ticket`, `can_ban_email`, `can_manage_canned`, `can_manage_faq`, `can_view_agent_stats`, `department_access`, `admin_notes`, `created_at`, `updated_at`) VALUES
(1, 'Grupo Nível A', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', '2016-12-13 03:19:27', '2017-10-26 22:42:59'),
(2, 'Grupo Nível B', 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', '2016-12-13 03:19:27', '2017-10-26 22:43:05'),
(3, 'Grupo Nível C', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '2016-12-13 03:19:27', '2017-10-26 22:43:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `group_assign_department`
--

CREATE TABLE IF NOT EXISTS `group_assign_department` (
`id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `help_topic`
--

CREATE TABLE IF NOT EXISTS `help_topic` (
`id` int(10) unsigned NOT NULL,
  `topic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_topic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `custom_form` int(10) unsigned DEFAULT NULL,
  `department` int(10) unsigned DEFAULT NULL,
  `ticket_status` int(10) unsigned DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `sla_plan` int(10) unsigned DEFAULT NULL,
  `thank_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_num_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `internal_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `auto_assign` int(10) unsigned DEFAULT NULL,
  `auto_response` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `help_topic`
--

INSERT INTO `help_topic` (`id`, `topic`, `parent_topic`, `custom_form`, `department`, `ticket_status`, `priority`, `sla_plan`, `thank_page`, `ticket_num_format`, `internal_notes`, `status`, `type`, `auto_assign`, `auto_response`, `created_at`, `updated_at`) VALUES
(1, 'Pedido de Suporte', '', NULL, 1, 1, 2, 1, '', '1', '', 1, 1, NULL, 0, '2016-12-13 03:19:28', '2017-10-27 00:04:17'),
(2, 'Dúvidas', '', NULL, 2, 1, 2, 1, '', '1', '', 1, 1, NULL, 0, '2016-12-13 03:19:28', '2017-10-27 00:04:49'),
(3, 'Pedido de novo recurso', '', NULL, 2, 1, 2, 1, '', '1', '', 1, 1, NULL, 0, '2016-12-13 03:19:28', '2017-10-27 00:05:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
`id` bigint(20) unsigned NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `kb_article`
--

CREATE TABLE IF NOT EXISTS `kb_article` (
`id` int(10) unsigned NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `publish_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `kb_article_relationship`
--

CREATE TABLE IF NOT EXISTS `kb_article_relationship` (
`id` int(10) unsigned NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `kb_category`
--

CREATE TABLE IF NOT EXISTS `kb_category` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `parent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `kb_comment`
--

CREATE TABLE IF NOT EXISTS `kb_comment` (
`id` int(10) unsigned NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `kb_pages`
--

CREATE TABLE IF NOT EXISTS `kb_pages` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `kb_settings`
--

CREATE TABLE IF NOT EXISTS `kb_settings` (
`id` int(10) unsigned NOT NULL,
  `pagination` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `kb_settings`
--

INSERT INTO `kb_settings` (`id`, `pagination`, `created_at`, `updated_at`) VALUES
(1, 10, '2016-12-13 03:19:32', '2016-12-13 03:19:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `languages`
--

INSERT INTO `languages` (`id`, `name`, `locale`) VALUES
(1, 'English', 'en'),
(2, 'Italian', 'it'),
(3, 'German', 'de'),
(4, 'French', 'fr'),
(5, 'Brazilian Portuguese', 'pt_BR'),
(6, 'Dutch', 'nl'),
(7, 'Spanish', 'es'),
(8, 'Norwegian', 'nb_NO'),
(9, 'Danish', 'da');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
`id` int(10) unsigned NOT NULL,
  `User` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Attempts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LastLogin` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `log_notification`
--

CREATE TABLE IF NOT EXISTS `log_notification` (
`id` int(10) unsigned NOT NULL,
  `log` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `log_notification`
--

INSERT INTO `log_notification` (`id`, `log`, `created_at`, `updated_at`) VALUES
(1, 'NOT-1', '2016-12-13 03:19:29', '2016-12-13 03:19:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mailbox_protocol`
--

CREATE TABLE IF NOT EXISTS `mailbox_protocol` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `mailbox_protocol`
--

INSERT INTO `mailbox_protocol` (`id`, `name`, `value`) VALUES
(1, 'IMAP', '/imap'),
(2, 'IMAP+SSL', '/imap/ssl'),
(3, 'IMAP+TLS', '/imap/tls'),
(4, 'IMAP+SSL/No-validate', '/imap/ssl/novalidate-cert');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mail_services`
--

CREATE TABLE IF NOT EXISTS `mail_services` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `mail_services`
--

INSERT INTO `mail_services` (`id`, `name`, `short_name`, `created_at`, `updated_at`) VALUES
(1, 'SMTP', 'smtp', '2016-12-13 03:19:08', '2016-12-13 03:19:08'),
(2, 'Php Mail', 'mail', '2016-12-13 03:19:08', '2016-12-13 03:19:08'),
(3, 'Send Mail', 'sendmail', '2016-12-13 03:19:08', '2016-12-13 03:19:08'),
(4, 'Mailgun', 'mailgun', '2016-12-13 03:19:08', '2016-12-13 03:19:08'),
(5, 'Mandrill', 'mandrill', '2016-12-13 03:19:09', '2016-12-13 03:19:09'),
(6, 'Log file', 'log', '2016-12-13 03:19:09', '2016-12-13 03:19:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_02_16_140450_create_banlist_table', 1),
('2016_02_16_140450_create_canned_response_table', 1),
('2016_02_16_140450_create_custom_form_fields_table', 1),
('2016_02_16_140450_create_custom_forms_table', 1),
('2016_02_16_140450_create_date_format_table', 1),
('2016_02_16_140450_create_date_time_format_table', 1),
('2016_02_16_140450_create_department_table', 1),
('2016_02_16_140450_create_emails_table', 1),
('2016_02_16_140450_create_group_assign_department_table', 1),
('2016_02_16_140450_create_groups_table', 1),
('2016_02_16_140450_create_help_topic_table', 1),
('2016_02_16_140450_create_kb_article_relationship_table', 1),
('2016_02_16_140450_create_kb_article_table', 1),
('2016_02_16_140450_create_kb_category_table', 1),
('2016_02_16_140450_create_kb_comment_table', 1),
('2016_02_16_140450_create_kb_pages_table', 1),
('2016_02_16_140450_create_kb_settings_table', 1),
('2016_02_16_140450_create_languages_table', 1),
('2016_02_16_140450_create_log_notification_table', 1),
('2016_02_16_140450_create_mailbox_protocol_table', 1),
('2016_02_16_140450_create_organization_table', 1),
('2016_02_16_140450_create_password_resets_table', 1),
('2016_02_16_140450_create_plugins_table', 1),
('2016_02_16_140450_create_settings_alert_notice_table', 1),
('2016_02_16_140450_create_settings_auto_response_table', 1),
('2016_02_16_140450_create_settings_company_table', 1),
('2016_02_16_140450_create_settings_email_table', 1),
('2016_02_16_140450_create_settings_ratings_table', 1),
('2016_02_16_140450_create_settings_system_table', 1),
('2016_02_16_140450_create_settings_ticket_table', 1),
('2016_02_16_140450_create_sla_plan_table', 1),
('2016_02_16_140450_create_team_assign_agent_table', 1),
('2016_02_16_140450_create_teams_table', 1),
('2016_02_16_140450_create_template_table', 1),
('2016_02_16_140450_create_ticket_attachment_table', 1),
('2016_02_16_140450_create_ticket_collaborator_table', 1),
('2016_02_16_140450_create_ticket_form_data_table', 1),
('2016_02_16_140450_create_ticket_priority_table', 1),
('2016_02_16_140450_create_ticket_source_table', 1),
('2016_02_16_140450_create_ticket_status_table', 1),
('2016_02_16_140450_create_ticket_thread_table', 1),
('2016_02_16_140450_create_tickets_table', 1),
('2016_02_16_140450_create_time_format_table', 1),
('2016_02_16_140450_create_timezone_table', 1),
('2016_02_16_140450_create_user_assign_organization_table', 1),
('2016_02_16_140450_create_users_table', 1),
('2016_02_16_140450_create_version_check_table', 1),
('2016_02_16_140450_create_widgets_table', 1),
('2016_02_16_140454_add_foreign_keys_to_canned_response_table', 1),
('2016_02_16_140454_add_foreign_keys_to_department_table', 1),
('2016_02_16_140454_add_foreign_keys_to_emails_table', 1),
('2016_02_16_140454_add_foreign_keys_to_group_assign_department_table', 1),
('2016_02_16_140454_add_foreign_keys_to_help_topic_table', 1),
('2016_02_16_140454_add_foreign_keys_to_kb_article_relationship_table', 1),
('2016_02_16_140454_add_foreign_keys_to_kb_comment_table', 1),
('2016_02_16_140454_add_foreign_keys_to_organization_table', 1),
('2016_02_16_140454_add_foreign_keys_to_settings_system_table', 1),
('2016_02_16_140454_add_foreign_keys_to_team_assign_agent_table', 1),
('2016_02_16_140454_add_foreign_keys_to_teams_table', 1),
('2016_02_16_140454_add_foreign_keys_to_ticket_attachment_table', 1),
('2016_02_16_140454_add_foreign_keys_to_ticket_collaborator_table', 1),
('2016_02_16_140454_add_foreign_keys_to_ticket_form_data_table', 1),
('2016_02_16_140454_add_foreign_keys_to_ticket_thread_table', 1),
('2016_02_16_140454_add_foreign_keys_to_tickets_table', 1),
('2016_02_16_140454_add_foreign_keys_to_user_assign_organization_table', 1),
('2016_02_16_140454_add_foreign_keys_to_users_table', 1),
('2016_03_31_061239_create_notifications_table', 1),
('2016_03_31_061534_create_notification_types_table', 1),
('2016_03_31_061740_create_user_notification_table', 1),
('2016_04_18_115852_create_workflow_name_table', 1),
('2016_04_18_115900_create_workflow_rule_table', 1),
('2016_04_18_115908_create_workflow_action_table', 1),
('2016_05_10_102423_create_country_code_table', 1),
('2016_05_10_102604_create_bar_notifications_table', 1),
('2016_05_11_105244_create_api_settings_table', 1),
('2016_05_19_055008_create_workflow_close_table', 1),
('2016_06_02_072210_create_common_settings_table', 1),
('2016_06_02_074913_create_login_attempts_table', 1),
('2016_06_02_080005_create_ratings_table', 1),
('2016_06_02_081020_create_rating_ref_table', 1),
('2016_06_02_090225_create_settings_security_table', 1),
('2016_06_02_090628_create_templates_table', 1),
('2016_06_02_094409_create_template_sets_table', 1),
('2016_06_02_094420_create_template_types_table', 1),
('2016_06_02_095357_create_ticket_token_table', 1),
('2016_06_28_141613_version1079table', 1),
('2016_07_02_051247_create_jobs_table', 1),
('2016_07_02_051439_create_failed_jobs_table', 1),
('2016_07_19_071910_create_field_values_table', 1),
('2016_07_26_084458_create_faveo_mails_table', 1),
('2016_07_26_090201_create_faveo_queues_table', 1),
('2016_07_26_094753_create_mail_services_table', 1),
('2016_07_26_095020_create_queue_services_table', 1),
('2016_07_29_113012_create_conditions_table', 1),
('2016_08_08_095744_create_social_media_table', 1),
('2016_08_12_104410_create_user_additional_infos_table', 1),
('2016_08_16_104539_alter_ticket_source_table', 1),
('2016_11_30_122809_alter_attachment_table', 2),
('2017_08_23_032310_create_ga_badges', 4),
('2017_08_23_032931_create_ga_badge_events', 4),
('2017_08_23_032945_create_ga_categories', 4),
('2017_08_23_032953_create_ga_events', 4),
('2017_08_23_033000_create_ga_level_associate', 4),
('2017_08_23_033008_create_ga_user_achievements', 4),
('2017_08_23_033015_create_ga_user_badges', 4),
('2017_08_23_033022_create_ga_user_levels', 4),
('2017_09_11_034305_create_ga_type', 4),
('2016_05_28_133807_create_sd_product_status_table', 5),
('2016_05_28_133934_create_d_product_proc_mode_table', 5),
('2016_05_28_134915_create_sd_products_table', 5),
('2016_05_29_131105_create_sd_cab_table', 5),
('2016_05_30_084708_create_sd_attachment_types_table', 5),
('2016_05_30_085022_create_sd_attachments_table', 5),
('2016_05_30_095117_create_sd_asset_types_table', 5),
('2016_05_30_095158_create_sd_impact_types_table', 5),
('2016_05_30_095427_create_sd_location_categories_table', 5),
('2016_05_30_095428_create_sd_locations_table', 5),
('2016_05_30_095506_create_sd_assets_table', 5),
('2016_05_30_122952_create_sd_contract_types_table', 5),
('2016_05_30_130830_create_sd_vendors_table', 5),
('2016_05_30_131734_create_sd_license_types_table', 5),
('2016_05_30_134953_create_sd_contracts_table', 5),
('2016_05_30_135606_create_sd_sd_contract_asset_relations_table', 5),
('2016_05_31_100449_create_sd_release_types_table', 5),
('2016_05_31_100518_create_sd_release_status_table', 5),
('2016_05_31_100605_create_sd_release_priority_table', 5),
('2016_05_31_100704_create_sd_releases_table', 5),
('2016_05_31_102512_create_sd_change_status_table', 5),
('2016_05_31_102537_create_sd_change_priority_table', 5),
('2016_05_31_102602_create_sd_change_types_table', 5),
('2016_05_31_102657_create_sd_changes_table', 5),
('2016_06_09_133929_create_sd_problem_table', 5),
('2016_06_09_133939_create_sd_asset_relations_table', 5),
('2016_07_01_042955_create_sd_form_table', 5),
('2016_07_01_043044_create_sd_form_field_table', 5),
('2016_07_01_043125_create_sd_field_value_table', 5),
('2016_07_01_115934_create_sd_asset_type_form_table', 5),
('2016_07_03_153743_create_sd_asset_form_table', 5),
('2016_07_05_103737_create_sd_cab_votes_table', 5),
('2016_07_05_113126_create_sd_add_template_table', 5),
('2016_07_09_073642_create_sd_general_table', 5),
('2016_07_09_123113_create_sd_problem_change_table', 5),
('2016_07_09_123149_create_sd_change_release_table', 5),
('2016_07_12_120647_create_table_sd_ticket_relation', 5),
('2016_07_14_043706_create_sd_product_vendor_relation_table', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
`id` int(10) unsigned NOT NULL,
  `model_id` int(11) NOT NULL,
  `userid_created` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notification_types`
--

CREATE TABLE IF NOT EXISTS `notification_types` (
`id` int(10) unsigned NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `notification_types`
--

INSERT INTO `notification_types` (`id`, `message`, `type`, `icon_class`, `created_at`, `updated_at`) VALUES
(1, 'Um usuário cadastrado', 'registration', 'fa fa-user', '2016-12-13 03:19:14', '2016-12-13 03:19:14'),
(2, 'Você tem uma nova resposta neste ticket', 'reply', 'fa fa-envelope', '2016-12-13 03:19:14', '2016-12-13 03:19:14'),
(3, 'Um novo ticket foi criado', 'new_ticket', 'fa fa-envelope', '2016-12-13 03:19:14', '2016-12-13 03:19:14'),
(4, 'Você acumulou pontos', 'game', 'fa fa-shopping-basket', '2017-10-18 04:00:00', '2017-10-18 04:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `head` int(10) unsigned DEFAULT NULL,
  `internal_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `organization`
--

INSERT INTO `organization` (`id`, `name`, `phone`, `website`, `address`, `head`, `internal_notes`, `created_at`, `updated_at`) VALUES
(1, 'Tikiri Gestão de TI', '55 95 981128113', 'http://www.tikiri.com.br', 'Rua Pedro Teixeira, 597', NULL, '', '2017-07-01 08:16:03', '2017-07-01 08:16:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('cliente@tikiri.com.br', 'JR6VXC7ZbyTyoc88wOMCW6uyiwuOJLWWcdTTgjumSJo9OKwjM7jY92It4z1f', '2017-11-21 02:40:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `plugins`
--

INSERT INTO `plugins` (`id`, `name`, `path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ServiceDesk', 'ServiceDesk', 1, '2017-07-16 07:54:52', '2017-10-26 22:14:19'),
(2, 'Gamification', 'Gamification', 1, '2017-09-11 05:27:22', '2017-09-11 08:22:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `queue_services`
--

CREATE TABLE IF NOT EXISTS `queue_services` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `queue_services`
--

INSERT INTO `queue_services` (`id`, `name`, `short_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sync', 'sync', 1, '2016-12-13 03:19:09', '2016-12-13 03:19:09'),
(2, 'Database', 'database', 0, '2016-12-13 03:19:09', '2016-12-13 03:19:09'),
(3, 'Beanstalkd', 'beanstalkd', 0, '2016-12-13 03:19:09', '2016-12-13 03:19:09'),
(4, 'SQS', 'sqs', 0, '2016-12-13 03:19:09', '2016-12-13 03:19:09'),
(5, 'Iron', 'iron', 0, '2016-12-13 03:19:09', '2016-12-13 03:19:09'),
(6, 'Redis', 'redis', 0, '2016-12-13 03:19:09', '2016-12-13 03:19:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `allow_modification` int(11) NOT NULL,
  `rating_scale` int(11) NOT NULL,
  `rating_area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restrict` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ratings`
--

INSERT INTO `ratings` (`id`, `name`, `display_order`, `allow_modification`, `rating_scale`, `rating_area`, `restrict`, `created_at`, `updated_at`) VALUES
(1, 'Satisfação geral', 1, 1, 5, 'Helpdesk', 'General', '2016-12-13 03:19:53', '2017-10-19 18:44:42'),
(2, 'Avalie a resposta', 1, 1, 5, 'Comentarios', 'Support', '2016-12-13 03:19:53', '2017-10-19 18:45:26'),
(3, 'Avalie o conteúdo', 2, 0, 5, 'Article', 'General', '2017-10-20 23:38:56', '2017-10-20 23:38:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rating_ref`
--

CREATE TABLE IF NOT EXISTS `rating_ref` (
`id` int(10) unsigned NOT NULL,
  `rating_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `rating_value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `rating_ref`
--

INSERT INTO `rating_ref` (`id`, `rating_id`, `ticket_id`, `thread_id`, `article_id`, `rating_value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, NULL, 5, '2017-07-01 00:15:48', '2017-07-01 00:15:48'),
(2, 1, 23, 0, NULL, 3, '2017-10-19 18:53:32', '2017-10-20 06:25:44'),
(3, 2, 23, 46, NULL, 5, '2017-10-20 06:44:03', '2017-10-20 06:59:44'),
(4, 3, 0, 0, NULL, 0, '2017-10-20 23:38:56', '2017-10-20 23:38:56'),
(5, 1, 22, 0, NULL, 4, '2017-10-21 16:45:27', '2017-10-21 16:45:27'),
(6, 2, 22, 51, NULL, 3, '2017-10-21 16:45:34', '2017-10-21 16:45:34'),
(7, 1, 7, 0, NULL, 3, '2017-10-21 22:43:22', '2017-10-21 22:43:22'),
(9, 3, 0, 0, 1, 3, '2017-10-22 00:01:19', '2017-10-22 00:01:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_assets`
--

CREATE TABLE IF NOT EXISTS `sd_assets` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `external_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `asset_type_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `impact_type_id` int(10) unsigned DEFAULT NULL,
  `managed_by` int(10) unsigned DEFAULT NULL,
  `used_by` int(10) unsigned DEFAULT NULL,
  `attachment` int(10) unsigned DEFAULT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `assigned_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_asset_form`
--

CREATE TABLE IF NOT EXISTS `sd_asset_form` (
`id` int(10) unsigned NOT NULL,
  `asset_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_asset_relations`
--

CREATE TABLE IF NOT EXISTS `sd_asset_relations` (
`id` int(10) unsigned NOT NULL,
  `asset_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_asset_types`
--

CREATE TABLE IF NOT EXISTS `sd_asset_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_asset_types`
--

INSERT INTO `sd_asset_types` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Serviços', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Cloud', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Hardware', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Software', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Materiais', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Rede', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Documentos', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Outros', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Serviço de Negócio', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Serviço de TI', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Serviço de Venda', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Serviço de Suporte', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Serviço de Email ', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Serviço de Backup', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Serviço de Hosting', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'AWS', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'EC2', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'RDS', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'EBS', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Computador', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Storage', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Data Center', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Dispositivos Móveis', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Monitor', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Impressora', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Projetor', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Scanner', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Router', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Switch', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Access Point', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Firewall', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Outros Dispositivos', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Desktop', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Laptop', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Servidor', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Servidor Unix', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Servidor Solaris', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Servidor Aix', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Servidor VMware', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Servidor Windows', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Disco', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_asset_type_form`
--

CREATE TABLE IF NOT EXISTS `sd_asset_type_form` (
`id` int(10) unsigned NOT NULL,
  `asset_type_id` int(10) unsigned DEFAULT NULL,
  `form_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_attachments`
--

CREATE TABLE IF NOT EXISTS `sd_attachments` (
`id` int(10) unsigned NOT NULL,
  `saved` int(10) unsigned NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_attachment_types`
--

CREATE TABLE IF NOT EXISTS `sd_attachment_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_attachment_types`
--

INSERT INTO `sd_attachment_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'File', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_cab`
--

CREATE TABLE IF NOT EXISTS `sd_cab` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `head` int(10) unsigned DEFAULT NULL,
  `approvers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aproval_mandatory` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_cab`
--

INSERT INTO `sd_cab` (`id`, `name`, `head`, `approvers`, `aproval_mandatory`, `created_at`, `updated_at`) VALUES
(1, 'Comitê de Gestão de Mudanças', 1, '1,2,3', 0, '2017-10-26 23:17:56', '2017-10-26 23:17:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_cab_votes`
--

CREATE TABLE IF NOT EXISTS `sd_cab_votes` (
`id` int(10) unsigned NOT NULL,
  `cab_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vote` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_changes`
--

CREATE TABLE IF NOT EXISTS `sd_changes` (
`id` int(10) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `requester` int(10) unsigned DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `priority_id` int(10) unsigned DEFAULT NULL,
  `change_type_id` int(10) unsigned DEFAULT NULL,
  `impact_id` int(10) unsigned DEFAULT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `approval_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_change_priorities`
--

CREATE TABLE IF NOT EXISTS `sd_change_priorities` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_change_priorities`
--

INSERT INTO `sd_change_priorities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baixa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Média', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Alta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Urgente', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_change_release`
--

CREATE TABLE IF NOT EXISTS `sd_change_release` (
`id` int(10) unsigned NOT NULL,
  `change_id` int(10) unsigned DEFAULT NULL,
  `release_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_change_status`
--

CREATE TABLE IF NOT EXISTS `sd_change_status` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_change_status`
--

INSERT INTO `sd_change_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aberto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Planejando', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Aguardando Aprovação', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Release Pendente', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Revisão Pendente', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Fechado', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_change_types`
--

CREATE TABLE IF NOT EXISTS `sd_change_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_change_types`
--

INSERT INTO `sd_change_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Menor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Padrão', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Maior', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Emergencial', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_contracts`
--

CREATE TABLE IF NOT EXISTS `sd_contracts` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contract_type_id` int(10) unsigned DEFAULT NULL,
  `approver_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL,
  `license_type_id` int(10) unsigned DEFAULT NULL,
  `licensce_count` int(11) NOT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `notify_expiry` timestamp NULL DEFAULT NULL,
  `contract_start_date` timestamp NULL DEFAULT NULL,
  `contract_end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_contract_asset_relations`
--

CREATE TABLE IF NOT EXISTS `sd_contract_asset_relations` (
`id` int(10) unsigned NOT NULL,
  `contract_id` int(10) unsigned DEFAULT NULL,
  `asset_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_contract_types`
--

CREATE TABLE IF NOT EXISTS `sd_contract_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_contract_types`
--

INSERT INTO `sd_contract_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'De concessão', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Licença de Software', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Manutenção', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Suporte de Produto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Fornecimento', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_field_values`
--

CREATE TABLE IF NOT EXISTS `sd_field_values` (
`id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned DEFAULT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_forms`
--

CREATE TABLE IF NOT EXISTS `sd_forms` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_form_fields`
--

CREATE TABLE IF NOT EXISTS `sd_form_fields` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `multiple` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_gerneral`
--

CREATE TABLE IF NOT EXISTS `sd_gerneral` (
`id` int(10) unsigned NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_impact_types`
--

CREATE TABLE IF NOT EXISTS `sd_impact_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_impact_types`
--

INSERT INTO `sd_impact_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baixo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Médio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Alto', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_license_types`
--

CREATE TABLE IF NOT EXISTS `sd_license_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_license_types`
--

INSERT INTO `sd_license_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'open source', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'comercial', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_locations`
--

CREATE TABLE IF NOT EXISTS `sd_locations` (
`id` int(10) unsigned NOT NULL,
  `location_category_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `all_department_access` int(11) NOT NULL,
  `departments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_location_categories`
--

CREATE TABLE IF NOT EXISTS `sd_location_categories` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_location_categories`
--

INSERT INTO `sd_location_categories` (`id`, `parent_id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sede', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, NULL, 'Parceiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, NULL, 'Interior', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, NULL, 'Fornecedor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, NULL, 'Cedido', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_problem`
--

CREATE TABLE IF NOT EXISTS `sd_problem` (
`id` int(10) unsigned NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_type_id` int(10) unsigned DEFAULT NULL,
  `priority_id` int(10) unsigned DEFAULT NULL,
  `impact_id` int(10) unsigned DEFAULT NULL,
  `location_type_id` int(10) unsigned DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `agent_id` int(10) unsigned DEFAULT NULL,
  `assigned_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_problem_change`
--

CREATE TABLE IF NOT EXISTS `sd_problem_change` (
`id` int(10) unsigned NOT NULL,
  `problem_id` int(10) unsigned DEFAULT NULL,
  `change_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_products`
--

CREATE TABLE IF NOT EXISTS `sd_products` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_status_id` int(10) unsigned DEFAULT NULL,
  `product_mode_procurement_id` int(10) unsigned DEFAULT NULL,
  `all_department` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_product_proc_mode`
--

CREATE TABLE IF NOT EXISTS `sd_product_proc_mode` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_product_proc_mode`
--

INSERT INTO `sd_product_proc_mode` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Compra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Concessão', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Cedido', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_product_status`
--

CREATE TABLE IF NOT EXISTS `sd_product_status` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_product_status`
--

INSERT INTO `sd_product_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Em StandBy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Em produção', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Obsoleto', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_product_vendor_relation`
--

CREATE TABLE IF NOT EXISTS `sd_product_vendor_relation` (
`id` int(10) unsigned NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_releases`
--

CREATE TABLE IF NOT EXISTS `sd_releases` (
`id` int(10) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `planned_start_date` timestamp NULL DEFAULT NULL,
  `planned_end_date` timestamp NULL DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `priority_id` int(10) unsigned DEFAULT NULL,
  `release_type_id` int(10) unsigned DEFAULT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_release_priorities`
--

CREATE TABLE IF NOT EXISTS `sd_release_priorities` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_release_priorities`
--

INSERT INTO `sd_release_priorities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baixo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Média', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Alta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Urgente', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_release_status`
--

CREATE TABLE IF NOT EXISTS `sd_release_status` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_release_status`
--

INSERT INTO `sd_release_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aberta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Em Espera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Em Progresso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Incompleta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Completa', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_release_types`
--

CREATE TABLE IF NOT EXISTS `sd_release_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sd_release_types`
--

INSERT INTO `sd_release_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Menor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Padrão', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Maior', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Emergencial', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_ticket_relation`
--

CREATE TABLE IF NOT EXISTS `sd_ticket_relation` (
`id` int(10) unsigned NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sd_vendors`
--

CREATE TABLE IF NOT EXISTS `sd_vendors` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primary_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_alert_notice`
--

CREATE TABLE IF NOT EXISTS `settings_alert_notice` (
`id` int(10) unsigned NOT NULL,
  `ticket_status` tinyint(1) NOT NULL,
  `ticket_admin_email` tinyint(1) NOT NULL,
  `ticket_department_manager` tinyint(1) NOT NULL,
  `ticket_department_member` tinyint(1) NOT NULL,
  `ticket_organization_accmanager` tinyint(1) NOT NULL,
  `message_status` tinyint(1) NOT NULL,
  `message_last_responder` tinyint(1) NOT NULL,
  `message_assigned_agent` tinyint(1) NOT NULL,
  `message_department_manager` tinyint(1) NOT NULL,
  `message_organization_accmanager` tinyint(1) NOT NULL,
  `internal_status` tinyint(1) NOT NULL,
  `internal_last_responder` tinyint(1) NOT NULL,
  `internal_assigned_agent` tinyint(1) NOT NULL,
  `internal_department_manager` tinyint(1) NOT NULL,
  `assignment_status` tinyint(1) NOT NULL,
  `assignment_assigned_agent` tinyint(1) NOT NULL,
  `assignment_team_leader` tinyint(1) NOT NULL,
  `assignment_team_member` tinyint(1) NOT NULL,
  `transfer_status` tinyint(1) NOT NULL,
  `transfer_assigned_agent` tinyint(1) NOT NULL,
  `transfer_department_manager` tinyint(1) NOT NULL,
  `transfer_department_member` tinyint(1) NOT NULL,
  `overdue_status` tinyint(1) NOT NULL,
  `overdue_assigned_agent` tinyint(1) NOT NULL,
  `overdue_department_manager` tinyint(1) NOT NULL,
  `overdue_department_member` tinyint(1) NOT NULL,
  `system_error` tinyint(1) NOT NULL,
  `sql_error` tinyint(1) NOT NULL,
  `excessive_failure` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `settings_alert_notice`
--

INSERT INTO `settings_alert_notice` (`id`, `ticket_status`, `ticket_admin_email`, `ticket_department_manager`, `ticket_department_member`, `ticket_organization_accmanager`, `message_status`, `message_last_responder`, `message_assigned_agent`, `message_department_manager`, `message_organization_accmanager`, `internal_status`, `internal_last_responder`, `internal_assigned_agent`, `internal_department_manager`, `assignment_status`, `assignment_assigned_agent`, `assignment_team_leader`, `assignment_team_member`, `transfer_status`, `transfer_assigned_agent`, `transfer_department_manager`, `transfer_department_member`, `overdue_status`, `overdue_assigned_agent`, `overdue_department_manager`, `overdue_department_member`, `system_error`, `sql_error`, `excessive_failure`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-13 03:19:29', '2016-12-13 03:19:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_auto_response`
--

CREATE TABLE IF NOT EXISTS `settings_auto_response` (
`id` int(10) unsigned NOT NULL,
  `new_ticket` tinyint(1) NOT NULL,
  `agent_new_ticket` tinyint(1) NOT NULL,
  `submitter` tinyint(1) NOT NULL,
  `participants` tinyint(1) NOT NULL,
  `overlimit` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `settings_auto_response`
--

INSERT INTO `settings_auto_response` (`id`, `new_ticket`, `agent_new_ticket`, `submitter`, `participants`, `overlimit`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, 0, '2016-12-13 03:19:29', '2016-12-13 03:19:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_company`
--

CREATE TABLE IF NOT EXISTS `settings_company` (
`id` int(10) unsigned NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `landing_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `offline_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thank_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `settings_company`
--

INSERT INTO `settings_company` (`id`, `company_name`, `website`, `phone`, `address`, `landing_page`, `offline_page`, `thank_page`, `logo`, `use_logo`, `created_at`, `updated_at`) VALUES
(1, 'Ideia8 Comunicação e Consultoria', 'https://www.tikiri.com.br', '', '', '', '', '', '1714.logo_branco561px.png', '1', '2016-12-13 03:19:29', '2017-10-26 22:51:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_email`
--

CREATE TABLE IF NOT EXISTS `settings_email` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sys_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alert_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_fetching` tinyint(1) NOT NULL,
  `notification_cron` tinyint(1) NOT NULL,
  `strip` tinyint(1) NOT NULL,
  `separator` tinyint(1) NOT NULL,
  `all_emails` tinyint(1) NOT NULL,
  `email_collaborator` tinyint(1) NOT NULL,
  `attachment` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `settings_email`
--

INSERT INTO `settings_email` (`id`, `template`, `sys_email`, `alert_email`, `admin_email`, `mta`, `email_fetching`, `notification_cron`, `strip`, `separator`, `all_emails`, `email_collaborator`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, '', '', '', 1, 1, 0, 0, 1, 1, 1, '2016-12-13 03:19:29', '2016-12-13 03:19:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_ratings`
--

CREATE TABLE IF NOT EXISTS `settings_ratings` (
`id` int(10) unsigned NOT NULL,
  `rating_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` int(11) NOT NULL,
  `modify` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_security`
--

CREATE TABLE IF NOT EXISTS `settings_security` (
`id` int(10) unsigned NOT NULL,
  `lockout_message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `backlist_offender` int(11) NOT NULL,
  `backlist_threshold` int(11) NOT NULL,
  `lockout_period` int(11) NOT NULL,
  `days_to_keep_logs` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `settings_security`
--

INSERT INTO `settings_security` (`id`, `lockout_message`, `backlist_offender`, `backlist_threshold`, `lockout_period`, `days_to_keep_logs`, `created_at`, `updated_at`) VALUES
(1, 'Você foi bloqueado devido a muitas falhas em tentativas de login.', 0, 15, 15, 0, '2016-12-13 03:19:47', '2017-11-21 02:35:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_system`
--

CREATE TABLE IF NOT EXISTS `settings_system` (
`id` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purge_log` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_enable` int(11) NOT NULL,
  `api_key_mandatory` int(11) NOT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_farmat` int(10) unsigned DEFAULT NULL,
  `date_format` int(10) unsigned DEFAULT NULL,
  `date_time_format` int(10) unsigned DEFAULT NULL,
  `day_date_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_zone` int(10) unsigned DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `settings_system`
--

INSERT INTO `settings_system` (`id`, `status`, `url`, `name`, `department`, `page_size`, `log_level`, `purge_log`, `api_enable`, `api_key_mandatory`, `api_key`, `name_format`, `time_farmat`, `date_format`, `date_time_format`, `day_date_time`, `time_zone`, `content`, `version`, `created_at`, `updated_at`) VALUES
(1, 1, '', 'Tikiri', '1', '', '', '', 0, 0, '', '', NULL, NULL, 1, '', 21, '', '', '2016-12-13 03:19:29', '2017-06-16 13:41:46'),
(2, 1, '', '', '1', '', '', '', 0, 0, '', '', NULL, NULL, 1, '', 79, '', '1.0.8.0', '2016-12-13 03:19:53', '2016-12-13 03:19:53'),
(3, 1, '', '', '1', '', '', '', 0, 0, '', '', NULL, NULL, 1, '', 14, '', '1.9.2', '2017-01-03 06:17:47', '2017-01-03 06:17:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings_ticket`
--

CREATE TABLE IF NOT EXISTS `settings_ticket` (
`id` int(10) unsigned NOT NULL,
  `num_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_sequence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sla` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_topic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_open_ticket` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collision_avoid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lock_ticket_frequency` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `captcha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `claim_response` tinyint(1) NOT NULL,
  `assigned_ticket` tinyint(1) NOT NULL,
  `answered_ticket` tinyint(1) NOT NULL,
  `agent_mask` tinyint(1) NOT NULL,
  `html` tinyint(1) NOT NULL,
  `client_update` tinyint(1) NOT NULL,
  `max_file_size` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `settings_ticket`
--

INSERT INTO `settings_ticket` (`id`, `num_format`, `num_sequence`, `priority`, `sla`, `help_topic`, `max_open_ticket`, `collision_avoid`, `lock_ticket_frequency`, `captcha`, `status`, `claim_response`, `assigned_ticket`, `answered_ticket`, `agent_mask`, `html`, `client_update`, `max_file_size`, `created_at`, `updated_at`) VALUES
(1, '$$$$-####-####', 'sequence', '1', '2', '1', '', '2', '0', '', 1, 0, 0, 0, 0, 0, 0, 0, '2016-12-13 03:19:29', '2016-12-13 03:19:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sla_plan`
--

CREATE TABLE IF NOT EXISTS `sla_plan` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grace_period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `transient` tinyint(1) NOT NULL,
  `ticket_overdue` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `sla_plan`
--

INSERT INTO `sla_plan` (`id`, `name`, `grace_period`, `admin_note`, `status`, `transient`, `ticket_overdue`, `created_at`, `updated_at`) VALUES
(1, 'Sla 1', '6 Hours', '', 1, 0, 0, '2016-12-13 03:19:25', '2016-12-13 03:19:25'),
(2, 'Sla 2', '12 Hours', '', 1, 0, 0, '2016-12-13 03:19:25', '2016-12-13 03:19:25'),
(3, 'Sla 3', '24 Hours', '', 1, 0, 0, '2016-12-13 03:19:25', '2016-12-13 03:19:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `social_media`
--

CREATE TABLE IF NOT EXISTS `social_media` (
`id` int(10) unsigned NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `team_lead` int(10) unsigned DEFAULT NULL,
  `assign_alert` tinyint(1) NOT NULL,
  `admin_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `teams`
--

INSERT INTO `teams` (`id`, `name`, `status`, `team_lead`, `assign_alert`, `admin_notes`, `created_at`, `updated_at`) VALUES
(1, 'Suporte de 1º Nível', 1, 2, 0, '', '2016-12-13 03:19:27', '2017-10-26 22:41:24'),
(2, 'Suporte de 2º Nível', 1, NULL, 0, '', '2016-12-13 03:19:27', '2017-10-26 22:41:48'),
(3, 'Desenvolvedor', 1, NULL, 0, '', '2016-12-13 03:19:27', '2017-10-26 22:41:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `team_assign_agent`
--

CREATE TABLE IF NOT EXISTS `team_assign_agent` (
`id` int(10) unsigned NOT NULL,
  `team_id` int(10) unsigned DEFAULT NULL,
  `agent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `team_assign_agent`
--

INSERT INTO `team_assign_agent` (`id`, `team_id`, `agent_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 3, 1, NULL, NULL),
(7, 1, 3, NULL, NULL),
(8, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `template`
--

CREATE TABLE IF NOT EXISTS `template` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `template_set_to_clone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `internal_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `set_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `templates`
--

INSERT INTO `templates` (`id`, `name`, `variable`, `type`, `subject`, `message`, `description`, `set_id`, `created_at`, `updated_at`) VALUES
(1, 'This template is for sending notice to agent when ticket is assigned to them', '0', 1, '', '<div>Hello {!!$ticket_agent_name!!},<br /><br /><b>Ticket No:</b> {!!$ticket_number!!}<br />Has been assigned to you by {!!$ticket_assigner!!} <br /> Please check and resppond on the ticket.<br /> Link: {!!$ticket_link!!}<br /><br />Thank You<br />Kind Regards,<br /> {!!$system_from!!}</div>', '', 1, '2016-12-13 03:19:50', '2016-12-13 03:19:50'),
(2, 'This template is for sending notice to client with ticket link to check ticket without logging in to system', '1', 2, 'Check your Ticket', '<div>Hello {!!$user!!},<br /><br />Click the link below to view your requested ticket<br /> {!!$ticket_link_with_number!!}<br /><br />Kind Regards,<br /> {!!$system_from!!}</div>', '', 1, '2016-12-13 03:19:50', '2016-12-13 03:19:50'),
(3, 'This template is for sending notice to client when ticket status is changed to close', '0', 3, '', '<div>Hello,<br /><br />This message is regarding your ticket ID {!!$ticket_number!!}. We are changing the status of this ticket to "Closed" as the issue appears to be resolved.<br /><br />Thank you<br />Kind regards,<br /> {!!$system_from!!}</div>', '', 1, '2016-12-13 03:19:50', '2016-12-13 03:19:50'),
(4, 'This template is for sending notice to client on successful ticket creation', '0', 4, '', '<div><span>Hello {!!$user!!}<br /><br /></span><span>Thank you for contacting us. This is an automated response confirming the receipt of your ticket. Our team will get back to you as soon as possible. When replying, please make sure that the ticket ID is kept in the subject so that we can track your replies.<br /><br /></span><span><b>Ticket ID:</b> {!!$ticket_number!!} <br /><br /></span><span> {!!$department_sign!!}<br /></span>You can check the status of or update this ticket online at: {!!$system_link!!}</div>', '', 1, '2016-12-13 03:19:51', '2016-12-13 03:19:51'),
(5, 'This template is for sending notice to agent on new ticket creation', '0', 5, '', '<div>Hello {!!$ticket_agent_name!!},<br /><br />New ticket {!!$ticket_number!!}created <br /><br /><b>From</b><br /><b>Name:</b> {!!$ticket_client_name!!}   <br /><b>E-mail:</b> {!!$ticket_client_email!!}<br /><br /> {!!$content!!}<br /><br />Kind Regards,<br /> {!!$system_from!!}</div>', '', 1, '2016-12-13 03:19:51', '2016-12-13 03:19:51'),
(6, 'This template is for sending notice to client on new ticket created by agent in name of client', '0', 6, '', '<div> {!!$content!!}<br /><br /> {!!$agent_sign!!}<br /><br />You can check the status of or update this ticket online at: {!!$system_link!!}</div>', '', 1, '2016-12-13 03:19:51', '2016-12-13 03:19:51'),
(7, 'This template is for sending notice to client on new registration during new ticket creation for un registered clients', '1', 7, 'Registration Confirmation', '<p>Hello {!!$user!!}, </p><p>This email is confirmation that you are now registered at our helpdesk.</p><p><b>Registered Email:</b> {!!$email_address!!}</p><p><b>Password:</b> {!!$user_password!!}</p><p>You can visit the helpdesk to browse articles and contact us at any time: {!!$system_link!!}</p><p>Thank You.</p><p>Kind Regards,</p><p> {!!$system_from!!} </p>', '', 1, '2016-12-13 03:19:51', '2016-12-13 03:19:51'),
(8, 'This template is for sending notice to any user about reset password option', '1', 8, 'Reset your Password', 'Hello {!!$user!!},<br /><br />You asked to reset your password. To do so, please click this link:<br /><br /> {!!$password_reset_link!!}<br /><br />This will let you change your password to something new. If you didn''t ask for this, don''t worry, we''ll keep your password safe.<br /><br />Thank You.<br /><br />Kind Regards,<br /> {!!$system_from!!}', '', 1, '2016-12-13 03:19:51', '2016-12-13 03:19:51'),
(9, 'This template is for sending notice to client when a reply made to his/her ticket', '0', 9, '', '<span></span><div><span></span><p> {!!$content!!}<br /></p><p> {!!$agent_sign!!} </p><p><b>Ticket Details</b></p><p><b>Ticket ID:</b> {!!$ticket_number!!}</p></div>', '', 1, '2016-12-13 03:19:51', '2016-12-13 03:19:51'),
(10, 'This template is for sending notice to agent when ticket reply is made by client on a ticket', '0', 10, '', '<div>Hello {!!$ticket_agent_name!!},<br /><b><br /></b>A reply been made to ticket {!!$ticket_number!!}<br /><b><br /></b><b>From<br /></b><b>Name: </b>{!!$ticket_client_name!!}<br /><b>E-mail: </b>{!!$ticket_client_email!!}<br /><b><br /></b> {!!$content!!}<br /><b><br /></b>Kind Regards,<br /> {!!$system_from!!}</div>', '', 1, '2016-12-13 03:19:51', '2016-12-13 03:19:51'),
(11, 'This template is for sending notice to client about registration confirmation link', '1', 11, 'Verify your email address', '<p>Hello {!!$user!!}, </p><p>This email is confirmation that you are now registered at our helpdesk.</p><p><b>Registered Email:</b> {!!$email_address!!}</p><p>Please click on the below link to activate your account and Login to the system {!!$password_reset_link!!}</p><p>Thank You.</p><p>Kind Regards,</p><p> {!!$system_from!!} </p>', '', 1, '2016-12-13 03:19:52', '2016-12-13 03:19:52'),
(12, 'This template is for sending notice to team when ticket is assigned to team', '1', 12, '', '<div>Hello {!!$ticket_agent_name!!},<br /><br /><b>Ticket No:</b> {!!$ticket_number!!}<br />Has been assigned to your team : {!!$team!!} by {!!$ticket_assigner!!} <br /><br />Thank You<br />Kind Regards,<br />{!!$system_from!!}</div>', '', 1, '2016-12-13 03:19:52', '2016-12-13 03:19:52'),
(13, 'This template is for sending notice to client when password is changed', '1', 13, 'Verify your email address', 'Hello {!!$user!!},<br /><br />Your password is successfully changed.Your new password is : {!!$user_password!!}<br /><br />Thank You.<br /><br />Kind Regards,<br /> {!!$system_from!!}', '', 1, '2016-12-13 03:19:52', '2016-12-13 03:19:52'),
(14, 'This template is to notify users when their tickets are merged.', '1', 14, 'Your tickets have been merged.', '<p>Hello {!!$user!!},<br />&nbsp;</p><p>Your ticket(s) with ticket number {!!$merged_ticket_numbers!!} have been closed and&nbsp;merged with <a href="{!!$ticket_link!!}">{!!$ticket_number!!}</a>.&nbsp;</p><p>Possible reasons for merging tickets</p><ul><li>Tickets are duplicate</li<li>Tickets state&nbsp;the same issue</li><li>Another member from your organization has created a ticket for the same issue</li></ul><p><a href="{!!$system_link!!}">Click here</a> to login to your account and check your tickets.</p><p>Regards,</p><p>{!!$system_from!!}</p>', '', 1, '2017-01-02 00:20:12', '2017-01-02 00:31:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `template_sets`
--

CREATE TABLE IF NOT EXISTS `template_sets` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `template_sets`
--

INSERT INTO `template_sets` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'default', 1, '2016-12-13 03:19:47', '2016-12-13 03:19:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `template_types`
--

CREATE TABLE IF NOT EXISTS `template_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `template_types`
--

INSERT INTO `template_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'assign-ticket', '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(2, 'check-ticket', '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(3, 'close-ticket', '2016-12-13 03:19:47', '2016-12-13 03:19:47'),
(4, 'create-ticket', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(5, 'create-ticket-agent', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(6, 'create-ticket-by-agent', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(7, 'registration-notification', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(8, 'reset-password', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(9, 'ticket-reply', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(10, 'ticket-reply-agent', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(11, 'registration', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(12, 'team_assign_ticket', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(13, 'reset_new_password', '2016-12-13 03:19:48', '2016-12-13 03:19:48'),
(14, 'merge-ticket-notification', '2017-01-02 00:20:11', '2017-01-02 00:20:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
`id` int(10) unsigned NOT NULL,
  `ticket_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `dept_id` int(10) unsigned DEFAULT NULL,
  `team_id` int(10) unsigned DEFAULT NULL,
  `priority_id` int(10) unsigned DEFAULT NULL,
  `sla` int(10) unsigned DEFAULT NULL,
  `help_topic_id` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `rating` tinyint(1) NOT NULL,
  `ratingreply` tinyint(1) NOT NULL,
  `flags` int(11) NOT NULL,
  `ip_address` int(11) NOT NULL,
  `assigned_to` int(10) unsigned DEFAULT NULL,
  `lock_by` int(11) NOT NULL,
  `lock_at` datetime DEFAULT NULL,
  `source` int(10) unsigned DEFAULT NULL,
  `isoverdue` int(11) NOT NULL,
  `reopened` int(11) NOT NULL,
  `isanswered` int(11) NOT NULL,
  `html` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `closed` int(11) NOT NULL,
  `is_transferred` tinyint(1) NOT NULL,
  `transferred_at` datetime NOT NULL,
  `reopened_at` datetime DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `last_message_at` datetime DEFAULT NULL,
  `last_response_at` datetime DEFAULT NULL,
  `approval` int(11) NOT NULL,
  `follow_up` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_attachment`
--

CREATE TABLE IF NOT EXISTS `ticket_attachment` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thread_id` int(10) unsigned DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` mediumblob,
  `driver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_collaborator`
--

CREATE TABLE IF NOT EXISTS `ticket_collaborator` (
`id` int(10) unsigned NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_form_data`
--

CREATE TABLE IF NOT EXISTS `ticket_form_data` (
`id` int(10) unsigned NOT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_priority`
--

CREATE TABLE IF NOT EXISTS `ticket_priority` (
`priority_id` int(10) unsigned NOT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority_urgency` tinyint(1) NOT NULL,
  `ispublic` tinyint(1) NOT NULL,
  `is_default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ticket_priority`
--

INSERT INTO `ticket_priority` (`priority_id`, `priority`, `status`, `priority_desc`, `priority_color`, `priority_urgency`, `ispublic`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Baixa', '1', 'Baixa', '#00a65a', 4, 1, '', NULL, NULL),
(2, 'Normal', '1', 'Normal', '#00bfef', 3, 1, '1', NULL, NULL),
(3, 'Alta', '1', 'Alta', '#f39c11', 2, 1, '', NULL, NULL),
(4, 'Emergência', '1', 'Emergência', '#dd4b38', 1, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_source`
--

CREATE TABLE IF NOT EXISTS `ticket_source` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ticket_source`
--

INSERT INTO `ticket_source` (`id`, `name`, `value`, `css_class`) VALUES
(1, 'web', 'Web', 'fa fa-internet-explorer'),
(2, 'email', 'E-mail', 'fa fa-envelope'),
(3, 'agent', 'Agent Panel', 'fa fa-envelope'),
(4, 'facebook', 'Facebook', 'fa fa-facebook'),
(5, 'twitter', 'Twitter', 'fa fa-twitter'),
(6, 'call', 'Call', 'fa fa-phone'),
(7, 'chat', 'Chat', 'fa fa-comment'),
(8, 'web', 'Web', ''),
(9, 'email', 'E-mail', ''),
(10, 'agent', 'Agent Panel', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_status`
--

CREATE TABLE IF NOT EXISTS `ticket_status` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flags` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `email_user` int(11) NOT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `properties` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ticket_status`
--

INSERT INTO `ticket_status` (`id`, `name`, `state`, `mode`, `message`, `flags`, `sort`, `email_user`, `icon_class`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'Aberto', 'open', 3, 'Ticket reaberto por', 0, 1, 0, 'fa fa-folder-open-o', 'Tickets Abertos.', '2016-12-13 03:19:23', '2017-07-15 07:25:15'),
(2, 'Resolvido', 'closed', 1, 'Ticket resolvido por', 0, 2, 0, 'fa fa-check', 'Tickets resolvidos.', '2016-12-13 03:19:24', '2017-07-15 07:26:21'),
(3, 'Fechado', 'closed', 3, 'Ticket fechado por', 0, 3, 0, 'fa fa-times', 'Ticket fechado, acessível agora pelos painéis do cliente e da equipe.', '2016-12-13 03:19:24', '2017-07-15 07:27:13'),
(4, 'Arquivado', '', 3, 'Ticket arquivado por', 0, 4, 0, 'fa fa-folder-o', 'Tickets disponíveis apenas para administradores.', '2016-12-13 03:19:24', '2017-07-15 07:28:03'),
(5, 'Excluído', 'deleted', 3, 'Ticket excluído por', 0, 5, 0, '', 'Os tickets foram encaminhados para exclusão. Não acessível nas listas de tickets.', '2016-12-13 03:19:24', '2016-12-13 03:19:24'),
(6, 'Desarquivado', '', 3, 'Necessária a verificação da conta do usuário.', 0, 6, 0, 'fa fa-folder-open', 'O ticket vai ser aberto após o usuário validar o cadastro.', '2016-12-13 03:19:24', '2017-07-15 07:28:50'),
(7, 'Solicitação de Aprovação', '', 3, 'Aprovação solicitada por', 0, 7, 0, 'fa fa-check-square-o', 'Ticket vai ser aberto após aprovação do administrador', '2016-12-13 03:19:24', '2017-07-15 07:30:57');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_thread`
--

CREATE TABLE IF NOT EXISTS `ticket_thread` (
`id` int(10) unsigned NOT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` int(10) unsigned DEFAULT NULL,
  `reply_rating` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `is_internal` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longblob,
  `format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_token`
--

CREATE TABLE IF NOT EXISTS `ticket_token` (
`id` int(10) unsigned NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `timezone`
--

CREATE TABLE IF NOT EXISTS `timezone` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `timezone`
--

INSERT INTO `timezone` (`id`, `name`, `location`) VALUES
(1, 'Pacific/Midway', '(GMT-11:00) Midway Island'),
(2, 'US/Samoa', '(GMT-11:00) Samoa'),
(3, 'US/Hawaii', '(GMT-10:00) Hawaii'),
(4, 'US/Alaska', '(GMT-09:00) Alaska'),
(5, 'US/Pacific', '(GMT-08:00) Pacific Time (US &amp; Canada)'),
(6, 'America/Tijuana', '(GMT-08:00) Tijuana'),
(7, 'US/Arizona', '(GMT-07:00) Arizona'),
(8, 'US/Mountain', '(GMT-07:00) Mountain Time (US &amp; Canada)'),
(9, 'America/Chihuahua', '(GMT-07:00) Chihuahua'),
(10, 'America/Mazatlan', '(GMT-07:00) Mazatlan'),
(11, 'America/Mexico_City', '(GMT-06:00) Mexico City'),
(12, 'America/Monterrey', '(GMT-06:00) Monterrey'),
(13, 'Canada/Saskatchewan', '(GMT-06:00) Saskatchewan'),
(14, 'US/Central', '(GMT-06:00) Central Time (US &amp; Canada)'),
(15, 'US/Eastern', '(GMT-05:00) Eastern Time (US &amp; Canada)'),
(16, 'US/East-Indiana', '(GMT-05:00) Indiana (East)'),
(17, 'America/Bogota', '(GMT-05:00) Bogota'),
(18, 'America/Lima', '(GMT-05:00) Lima'),
(19, 'America/Caracas', '(GMT-04:30) Caracas'),
(20, 'Canada/Atlantic', '(GMT-04:00) Atlantic Time (Canada)'),
(21, 'America/La_Paz', '(GMT-04:00) La Paz'),
(22, 'America/Santiago', '(GMT-04:00) Santiago'),
(23, 'Canada/Newfoundland', '(GMT-03:30) Newfoundland'),
(24, 'America/Buenos_Aires', '(GMT-03:00) Buenos Aires'),
(25, 'Greenland', '(GMT-03:00) Greenland'),
(26, 'Atlantic/Stanley', '(GMT-02:00) Stanley'),
(27, 'Atlantic/Azores', '(GMT-01:00) Azores'),
(28, 'Atlantic/Cape_Verde', '(GMT-01:00) Cape Verde Is.'),
(29, 'Africa/Casablanca', '(GMT) Casablanca'),
(30, 'Europe/Dublin', '(GMT) Dublin'),
(31, 'Europe/Lisbon', '(GMT) Lisbon'),
(32, 'Europe/London', '(GMT) London'),
(33, 'Africa/Monrovia', '(GMT) Monrovia'),
(34, 'Europe/Amsterdam', '(GMT+01:00) Amsterdam'),
(35, 'Europe/Belgrade', '(GMT+01:00) Belgrade'),
(36, 'Europe/Berlin', '(GMT+01:00) Berlin'),
(37, 'Europe/Bratislava', '(GMT+01:00) Bratislava'),
(38, 'Europe/Brussels', '(GMT+01:00) Brussels'),
(39, 'Europe/Budapest', '(GMT+01:00) Budapest'),
(40, 'Europe/Copenhagen', '(GMT+01:00) Copenhagen'),
(41, 'Europe/Ljubljana', '(GMT+01:00) Ljubljana'),
(42, 'Europe/Madrid', '(GMT+01:00) Madrid'),
(43, 'Europe/Paris', '(GMT+01:00) Paris'),
(44, 'Europe/Prague', '(GMT+01:00) Prague'),
(45, 'Europe/Rome', '(GMT+01:00) Rome'),
(46, 'Europe/Sarajevo', '(GMT+01:00) Sarajevo'),
(47, 'Europe/Skopje', '(GMT+01:00) Skopje'),
(48, 'Europe/Stockholm', '(GMT+01:00) Stockholm'),
(49, 'Europe/Vienna', '(GMT+01:00) Vienna'),
(50, 'Europe/Warsaw', '(GMT+01:00) Warsaw'),
(51, 'Europe/Zagreb', '(GMT+01:00) Zagreb'),
(52, 'Europe/Athens', '(GMT+02:00) Athens'),
(53, 'Europe/Bucharest', '(GMT+02:00) Bucharest'),
(54, 'Africa/Cairo', '(GMT+02:00) Cairo'),
(55, 'Africa/Harare', '(GMT+02:00) Harare'),
(56, 'Europe/Helsinki', '(GMT+02:00) Helsinki'),
(57, 'Europe/Istanbul', '(GMT+02:00) Istanbul'),
(58, 'Asia/Jerusalem', '(GMT+02:00) Jerusalem'),
(59, 'Europe/Kiev', '(GMT+02:00) Kyiv'),
(60, 'Europe/Minsk', '(GMT+02:00) Minsk'),
(61, 'Europe/Riga', '(GMT+02:00) Riga'),
(62, 'Europe/Sofia', '(GMT+02:00) Sofia'),
(63, 'Europe/Tallinn', '(GMT+02:00) Tallinn'),
(64, 'Europe/Vilnius', '(GMT+02:00) Vilnius'),
(65, 'Asia/Baghdad', '(GMT+03:00) Baghdad'),
(66, 'Asia/Kuwait', '(GMT+03:00) Kuwait'),
(67, 'Africa/Nairobi', '(GMT+03:00) Nairobi'),
(68, 'Asia/Riyadh', '(GMT+03:00) Riyadh'),
(69, 'Asia/Tehran', '(GMT+03:30) Tehran'),
(70, 'Europe/Moscow', '(GMT+04:00) Moscow'),
(71, 'Asia/Baku', '(GMT+04:00) Baku'),
(72, 'Europe/Volgograd', '(GMT+04:00) Volgograd'),
(73, 'Asia/Muscat', '(GMT+04:00) Muscat'),
(74, 'Asia/Tbilisi', '(GMT+04:00) Tbilisi'),
(75, 'Asia/Yerevan', '(GMT+04:00) Yerevan'),
(76, 'Asia/Kabul', '(GMT+04:30) Kabul'),
(77, 'Asia/Karachi', '(GMT+05:00) Karachi'),
(78, 'Asia/Tashkent', '(GMT+05:00) Tashkent'),
(79, 'Asia/Kolkata', '(GMT+05:30) Kolkata'),
(80, 'Asia/Kathmandu', '(GMT+05:45) Kathmandu'),
(81, 'Asia/Yekaterinburg', '(GMT+06:00) Ekaterinburg'),
(82, 'Asia/Almaty', '(GMT+06:00) Almaty'),
(83, 'Asia/Dhaka', '(GMT+06:00) Dhaka'),
(84, 'Asia/Novosibirsk', '(GMT+07:00) Novosibirsk'),
(85, 'Asia/Bangkok', '(GMT+07:00) Bangkok'),
(86, 'Asia/Ho_Chi_Minh', '(GMT+07.00) Ho Chi Minh'),
(87, 'Asia/Jakarta', '(GMT+07:00) Jakarta'),
(88, 'Asia/Krasnoyarsk', '(GMT+08:00) Krasnoyarsk'),
(89, 'Asia/Chongqing', '(GMT+08:00) Chongqing'),
(90, 'Asia/Hong_Kong', '(GMT+08:00) Hong Kong'),
(91, 'Asia/Kuala_Lumpur', '(GMT+08:00) Kuala Lumpur'),
(92, 'Australia/Perth', '(GMT+08:00) Perth'),
(93, 'Asia/Singapore', '(GMT+08:00) Singapore'),
(94, 'Asia/Taipei', '(GMT+08:00) Taipei'),
(95, 'Asia/Ulaanbaatar', '(GMT+08:00) Ulaan Bataar'),
(96, 'Asia/Urumqi', '(GMT+08:00) Urumqi'),
(97, 'Asia/Irkutsk', '(GMT+09:00) Irkutsk'),
(98, 'Asia/Seoul', '(GMT+09:00) Seoul'),
(99, 'Asia/Tokyo', '(GMT+09:00) Tokyo'),
(100, 'Australia/Adelaide', '(GMT+09:30) Adelaide'),
(101, 'Australia/Darwin', '(GMT+09:30) Darwin'),
(102, 'Asia/Yakutsk', '(GMT+10:00) Yakutsk'),
(103, 'Australia/Brisbane', '(GMT+10:00) Brisbane'),
(104, 'Australia/Canberra', '(GMT+10:00) Canberra'),
(105, 'Pacific/Guam', '(GMT+10:00) Guam'),
(106, 'Australia/Hobart', '(GMT+10:00) Hobart'),
(107, 'Australia/Melbourne', '(GMT+10:00) Melbourne'),
(108, 'Pacific/Port_Moresby', '(GMT+10:00) Port Moresby'),
(109, 'Australia/Sydney', '(GMT+10:00) Sydney'),
(110, 'Asia/Vladivostok', '(GMT+11:00) Vladivostok'),
(111, 'Asia/Magadan', '(GMT+12:00) Magadan'),
(112, 'Pacific/Auckland', '(GMT+12:00) Auckland'),
(113, 'Pacific/Fiji', '(GMT+12:00) Fiji'),
(114, 'America/Sao_Paulo', '(GMT-03:00) Sao Paulo'),
(115, 'America/Rio_branco', '(GMT-05:00) Rio Branco'),
(116, 'America/Belem', '(GMT-03:00) Belem'),
(117, 'America/Bahia', '(GMT-03:00) Bahia'),
(118, 'America/Cuiaba', '(GMT-04:00) Cuiaba'),
(119, 'America/Fortaleza', '(GMT-03:00) Fortaleza'),
(120, 'America/Recife', '(GMT-03:00) Recife'),
(121, 'America/Boa_Vista', '(GMT-04:00) Boa Vista'),
(122, 'America/Maceio', '(GMT-03:00) Maceio'),
(123, 'America/Araguaia', '(GMT-03:00) Araguaia'),
(124, 'America/Manaus', '(GMT-04:00) Manaus'),
(125, 'America/Campo_Grande', '(GMT-04:00) Campo Grande'),
(126, 'America/Porto_Velho', '(GMT-04:00) Porto Velho');

-- --------------------------------------------------------

--
-- Estrutura para tabela `time_format`
--

CREATE TABLE IF NOT EXISTS `time_format` (
`id` int(10) unsigned NOT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `time_format`
--

INSERT INTO `time_format` (`id`, `format`) VALUES
(1, 'H:i:s'),
(2, 'H.i.s');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban` tinyint(1) NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` int(11) NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agent_sign` text COLLATE utf8_unicode_ci NOT NULL,
  `account_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assign_group` int(10) unsigned DEFAULT NULL,
  `primary_dpt` int(10) unsigned DEFAULT NULL,
  `agent_tzone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `daylight_save` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit_access` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `directory_listing` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vacation_mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `internal_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `user_name`, `first_name`, `last_name`, `gender`, `email`, `ban`, `password`, `active`, `is_delete`, `ext`, `country_code`, `phone_number`, `mobile`, `agent_sign`, `account_type`, `account_status`, `assign_group`, `primary_dpt`, `agent_tzone`, `daylight_save`, `limit_access`, `directory_listing`, `vacation_mode`, `company`, `role`, `internal_note`, `profile_pic`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Tikiri', 'Admin', 1, 'demoadmin@tikiri.com.br', 0, '$2y$10$VkTfzaICqiie8dDx4i1K.O3yX48MkyLiPjt098u1ImchZEj6DpzA6', 1, 0, '', 0, '', NULL, '', '', '', 1, 1, '6', '', '', '', '', '', 'admin', '', '8483.admin.png', '3b3fzKAM9plkQDYzkMSr1F9f9lP1eUIahu4FlbBVKe9N26y9BJiBKRsP7vjD', '2016-12-13 03:19:53', '2017-11-21 07:40:46'),
(2, 'atendente', 'Carlos', 'Atendente', 1, 'demoatendente@tikiri.com.br', 1, '$2y$10$F1pTkzoLFpny95xDalbareSlAswWNqgVauyvH47s8Co2kk1wFzN3G', 1, 0, '', 0, '', NULL, '', '', '', 1, 1, '6', '', '', '', '', '', 'agent', '', '6528.if_8_2694142.png', 'iVh9JN8iif5gqKJEnABEDqTvuMiMDa6j8LGhbffYFwv7NjUDCSTIGLCvCndo', '2016-12-13 03:32:41', '2017-11-21 00:47:09'),
(3, 'jose', 'José', 'Atendente', 1, 'demoatendente2@tikiri.com.br', 0, '$2y$10$gsbQAupQBgOW6NOc51oTD.vhYynXxz/GJCqYuUCxi08bqa/dh9QN6', 1, 0, '', 0, '', NULL, '', '', '', 2, 2, '6', '', '', '', '', '', 'agent', '', '4514.if_8_2694142.png', '4UWy8h8QceB69Vru1lxvz1ViAZTMYHKpKTaGraqaHZca540U5h73yqPcvPGr', '2016-12-13 03:35:29', '2017-11-10 07:26:38'),
(4, 'cliente', 'Pedro', 'Cliente', 1, 'cliente@tikiri.com.br', 1, '$2y$10$qphk0McJKrDaYHqgmBB.Y.1QqdDxK9FOpR6B06yRcOk6byj9Z4xRK', 1, 0, '', 95, '2914', '981128113', '', '', '', NULL, NULL, '', '', '', '', '', 'TKR Corp', 'user', '', '4925.cliente.png', 'gxemcwKiWxF8IM4ocIbcoYikA4qUptTvc4JRqQYq8xJcWVkWO74ES2Sj9Xcs', '2016-12-13 03:45:19', '2017-11-18 02:26:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_additional_infos`
--

CREATE TABLE IF NOT EXISTS `user_additional_infos` (
`id` int(10) unsigned NOT NULL,
  `owner` int(11) NOT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_assign_organization`
--

CREATE TABLE IF NOT EXISTS `user_assign_organization` (
`id` int(10) unsigned NOT NULL,
  `org_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `user_assign_organization`
--

INSERT INTO `user_assign_organization` (`id`, `org_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 3, '2017-11-10 07:25:31', '2017-11-10 07:25:31'),
(5, 1, 2, '2017-11-18 02:10:20', '2017-11-18 02:10:20'),
(6, 1, 4, '2017-11-18 02:26:15', '2017-11-18 02:26:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_notification`
--

CREATE TABLE IF NOT EXISTS `user_notification` (
`id` int(10) unsigned NOT NULL,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `version_check`
--

CREATE TABLE IF NOT EXISTS `version_check` (
`id` int(10) unsigned NOT NULL,
  `current_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `version_check`
--

INSERT INTO `version_check` (`id`, `current_version`, `new_version`, `created_at`, `updated_at`) VALUES
(1, '', '', '2016-12-13 03:19:30', '2016-12-13 03:19:30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
`id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `widgets`
--

INSERT INTO `widgets` (`id`, `name`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'footer1', '', '', '2016-12-13 03:19:30', '2017-11-07 19:28:54'),
(2, 'footer2', '', '<br />', '2016-12-13 03:19:30', '2017-11-07 19:25:39'),
(3, 'footer3', '', '<br />', '2016-12-13 03:19:30', '2017-11-07 19:25:49'),
(4, 'footer4', '', '', '2016-12-13 03:19:30', '2017-11-07 19:26:03'),
(5, 'side1', NULL, NULL, '2016-12-13 03:19:30', '2016-12-13 03:19:30'),
(6, 'side2', NULL, NULL, '2016-12-13 03:19:30', '2016-12-13 03:19:30'),
(7, 'linkedin', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(8, 'stumble', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(9, 'google', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(10, 'deviantart', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(11, 'flickr', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(12, 'skype', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(13, 'rss', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(14, 'twitter', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(15, 'facebook', NULL, NULL, '2016-12-13 03:19:31', '2016-12-13 03:19:31'),
(16, 'youtube', NULL, NULL, '2016-12-13 03:19:32', '2016-12-13 03:19:32'),
(17, 'vimeo', NULL, NULL, '2016-12-13 03:19:32', '2016-12-13 03:19:32'),
(18, 'pinterest', NULL, NULL, '2016-12-13 03:19:32', '2016-12-13 03:19:32'),
(19, 'dribbble', NULL, NULL, '2016-12-13 03:19:32', '2016-12-13 03:19:32'),
(20, 'instagram', NULL, NULL, '2016-12-13 03:19:32', '2016-12-13 03:19:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `workflow_action`
--

CREATE TABLE IF NOT EXISTS `workflow_action` (
`id` int(10) unsigned NOT NULL,
  `workflow_id` int(10) unsigned NOT NULL,
  `condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `workflow_close`
--

CREATE TABLE IF NOT EXISTS `workflow_close` (
`id` int(10) unsigned NOT NULL,
  `days` int(11) NOT NULL,
  `condition` int(11) NOT NULL,
  `send_email` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `workflow_close`
--

INSERT INTO `workflow_close` (`id`, `days`, `condition`, `send_email`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 3, '2016-12-13 03:19:14', '2016-12-13 03:19:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `workflow_name`
--

CREATE TABLE IF NOT EXISTS `workflow_name` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `internal_note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `workflow_rules`
--

CREATE TABLE IF NOT EXISTS `workflow_rules` (
`id` int(10) unsigned NOT NULL,
  `workflow_id` int(10) unsigned NOT NULL,
  `matching_criteria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matching_scenario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matching_relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matching_value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `api_settings`
--
ALTER TABLE `api_settings`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `banlist`
--
ALTER TABLE `banlist`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bar_notifications`
--
ALTER TABLE `bar_notifications`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `canned_response`
--
ALTER TABLE `canned_response`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `common_settings`
--
ALTER TABLE `common_settings`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `conditions`
--
ALTER TABLE `conditions`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `country_code`
--
ALTER TABLE `country_code`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `custom_forms`
--
ALTER TABLE `custom_forms`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `custom_form_fields`
--
ALTER TABLE `custom_form_fields`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `date_format`
--
ALTER TABLE `date_format`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `date_time_format`
--
ALTER TABLE `date_time_format`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`id`), ADD KEY `sla` (`sla`), ADD KEY `manager_2` (`manager`);

--
-- Índices de tabela `emails`
--
ALTER TABLE `emails`
 ADD PRIMARY KEY (`id`), ADD KEY `department` (`department`,`priority`,`help_topic`), ADD KEY `department_2` (`department`,`priority`,`help_topic`), ADD KEY `priority` (`priority`), ADD KEY `help_topic` (`help_topic`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `faveo_mails`
--
ALTER TABLE `faveo_mails`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `faveo_queues`
--
ALTER TABLE `faveo_queues`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `field_values`
--
ALTER TABLE `field_values`
 ADD PRIMARY KEY (`id`), ADD KEY `field_values_field_id_foreign` (`field_id`);

--
-- Índices de tabela `ga_badges`
--
ALTER TABLE `ga_badges`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`), ADD KEY `type_id` (`type_id`);

--
-- Índices de tabela `ga_badge_events`
--
ALTER TABLE `ga_badge_events`
 ADD PRIMARY KEY (`id`), ADD KEY `event_id` (`event_id`), ADD KEY `badge_id` (`badge_id`);

--
-- Índices de tabela `ga_categories`
--
ALTER TABLE `ga_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `type_id` (`type_id`);

--
-- Índices de tabela `ga_events`
--
ALTER TABLE `ga_events`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ga_level_associate`
--
ALTER TABLE `ga_level_associate`
 ADD PRIMARY KEY (`id`), ADD KEY `level_id` (`level_id`), ADD KEY `reward_id` (`reward_id`);

--
-- Índices de tabela `ga_types`
--
ALTER TABLE `ga_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ga_user_achievements`
--
ALTER TABLE `ga_user_achievements`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `type_id` (`type_id`);

--
-- Índices de tabela `ga_user_badges`
--
ALTER TABLE `ga_user_badges`
 ADD PRIMARY KEY (`id`), ADD KEY `ga_user_badges_ibfk_1` (`user_id`), ADD KEY `ga_user_badges_ibfk_2` (`badge_id`), ADD KEY `type_id` (`type_id`);

--
-- Índices de tabela `ga_user_levels`
--
ALTER TABLE `ga_user_levels`
 ADD KEY `user_id` (`user_id`), ADD KEY `level_id` (`level_id`);

--
-- Índices de tabela `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `group_assign_department`
--
ALTER TABLE `group_assign_department`
 ADD PRIMARY KEY (`id`), ADD KEY `group_id` (`group_id`), ADD KEY `department_id` (`department_id`);

--
-- Índices de tabela `help_topic`
--
ALTER TABLE `help_topic`
 ADD PRIMARY KEY (`id`), ADD KEY `custom_form` (`custom_form`), ADD KEY `department` (`department`), ADD KEY `ticket_status` (`ticket_status`), ADD KEY `priority` (`priority`), ADD KEY `sla_plan` (`sla_plan`), ADD KEY `auto_assign_2` (`auto_assign`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
 ADD PRIMARY KEY (`id`), ADD KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`);

--
-- Índices de tabela `kb_article`
--
ALTER TABLE `kb_article`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `kb_article_relationship`
--
ALTER TABLE `kb_article_relationship`
 ADD PRIMARY KEY (`id`), ADD KEY `article_relationship_article_id_foreign` (`article_id`), ADD KEY `article_relationship_category_id_foreign` (`category_id`);

--
-- Índices de tabela `kb_category`
--
ALTER TABLE `kb_category`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `kb_comment`
--
ALTER TABLE `kb_comment`
 ADD PRIMARY KEY (`id`), ADD KEY `comment_article_id_foreign` (`article_id`);

--
-- Índices de tabela `kb_pages`
--
ALTER TABLE `kb_pages`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `kb_settings`
--
ALTER TABLE `kb_settings`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `log_notification`
--
ALTER TABLE `log_notification`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mailbox_protocol`
--
ALTER TABLE `mailbox_protocol`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mail_services`
--
ALTER TABLE `mail_services`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notification_types`
--
ALTER TABLE `notification_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `organization`
--
ALTER TABLE `organization`
 ADD PRIMARY KEY (`id`), ADD KEY `head` (`head`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Índices de tabela `plugins`
--
ALTER TABLE `plugins`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `queue_services`
--
ALTER TABLE `queue_services`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ratings`
--
ALTER TABLE `ratings`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `rating_ref`
--
ALTER TABLE `rating_ref`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_assets`
--
ALTER TABLE `sd_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sd_assets_external_id_unique` (`external_id`), ADD KEY `sd_assets_department_id_foreign` (`department_id`), ADD KEY `sd_assets_asset_type_id_foreign` (`asset_type_id`), ADD KEY `sd_assets_product_id_foreign` (`product_id`), ADD KEY `sd_assets_impact_type_id_foreign` (`impact_type_id`), ADD KEY `sd_assets_managed_by_foreign` (`managed_by`), ADD KEY `sd_assets_used_by_foreign` (`used_by`), ADD KEY `sd_assets_attachment_foreign` (`attachment`), ADD KEY `sd_assets_location_id_foreign` (`location_id`);

--
-- Índices de tabela `sd_asset_form`
--
ALTER TABLE `sd_asset_form`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_asset_relations`
--
ALTER TABLE `sd_asset_relations`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_asset_types`
--
ALTER TABLE `sd_asset_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_asset_type_form`
--
ALTER TABLE `sd_asset_type_form`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_asset_type_form_asset_type_id_foreign` (`asset_type_id`), ADD KEY `sd_asset_type_form_form_id_foreign` (`form_id`);

--
-- Índices de tabela `sd_attachments`
--
ALTER TABLE `sd_attachments`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_attachments_saved_foreign` (`saved`);

--
-- Índices de tabela `sd_attachment_types`
--
ALTER TABLE `sd_attachment_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_cab`
--
ALTER TABLE `sd_cab`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_cab_head_foreign` (`head`);

--
-- Índices de tabela `sd_cab_votes`
--
ALTER TABLE `sd_cab_votes`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_cab_votes_cab_id_foreign` (`cab_id`), ADD KEY `sd_cab_votes_user_id_foreign` (`user_id`);

--
-- Índices de tabela `sd_changes`
--
ALTER TABLE `sd_changes`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_changes_requester_foreign` (`requester`), ADD KEY `sd_changes_status_id_foreign` (`status_id`), ADD KEY `sd_changes_priority_id_foreign` (`priority_id`), ADD KEY `sd_changes_change_type_id_foreign` (`change_type_id`), ADD KEY `sd_changes_impact_id_foreign` (`impact_id`), ADD KEY `sd_changes_location_id_foreign` (`location_id`), ADD KEY `sd_changes_approval_id_foreign` (`approval_id`);

--
-- Índices de tabela `sd_change_priorities`
--
ALTER TABLE `sd_change_priorities`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_change_release`
--
ALTER TABLE `sd_change_release`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_change_release_change_id_foreign` (`change_id`), ADD KEY `sd_change_release_release_id_foreign` (`release_id`);

--
-- Índices de tabela `sd_change_status`
--
ALTER TABLE `sd_change_status`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_change_types`
--
ALTER TABLE `sd_change_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_contracts`
--
ALTER TABLE `sd_contracts`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_contracts_contract_type_id_foreign` (`contract_type_id`), ADD KEY `sd_contracts_approver_id_foreign` (`approver_id`), ADD KEY `sd_contracts_vendor_id_foreign` (`vendor_id`), ADD KEY `sd_contracts_license_type_id_foreign` (`license_type_id`), ADD KEY `sd_contracts_product_id_foreign` (`product_id`);

--
-- Índices de tabela `sd_contract_asset_relations`
--
ALTER TABLE `sd_contract_asset_relations`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_contract_asset_relations_contract_id_foreign` (`contract_id`), ADD KEY `sd_contract_asset_relations_asset_id_foreign` (`asset_id`);

--
-- Índices de tabela `sd_contract_types`
--
ALTER TABLE `sd_contract_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_field_values`
--
ALTER TABLE `sd_field_values`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_field_values_field_id_foreign` (`field_id`);

--
-- Índices de tabela `sd_forms`
--
ALTER TABLE `sd_forms`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_form_fields`
--
ALTER TABLE `sd_form_fields`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_form_fields_form_id_foreign` (`form_id`);

--
-- Índices de tabela `sd_gerneral`
--
ALTER TABLE `sd_gerneral`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_impact_types`
--
ALTER TABLE `sd_impact_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_license_types`
--
ALTER TABLE `sd_license_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_locations`
--
ALTER TABLE `sd_locations`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_locations_location_category_id_foreign` (`location_category_id`);

--
-- Índices de tabela `sd_location_categories`
--
ALTER TABLE `sd_location_categories`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_problem`
--
ALTER TABLE `sd_problem`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_problem_change`
--
ALTER TABLE `sd_problem_change`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_problem_change_problem_id_foreign` (`problem_id`), ADD KEY `sd_problem_change_change_id_foreign` (`change_id`);

--
-- Índices de tabela `sd_products`
--
ALTER TABLE `sd_products`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_products_product_status_id_foreign` (`product_status_id`), ADD KEY `sd_products_product_mode_procurement_id_foreign` (`product_mode_procurement_id`);

--
-- Índices de tabela `sd_product_proc_mode`
--
ALTER TABLE `sd_product_proc_mode`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_product_status`
--
ALTER TABLE `sd_product_status`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_product_vendor_relation`
--
ALTER TABLE `sd_product_vendor_relation`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_releases`
--
ALTER TABLE `sd_releases`
 ADD PRIMARY KEY (`id`), ADD KEY `sd_releases_status_id_foreign` (`status_id`), ADD KEY `sd_releases_priority_id_foreign` (`priority_id`), ADD KEY `sd_releases_release_type_id_foreign` (`release_type_id`), ADD KEY `sd_releases_location_id_foreign` (`location_id`);

--
-- Índices de tabela `sd_release_priorities`
--
ALTER TABLE `sd_release_priorities`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_release_status`
--
ALTER TABLE `sd_release_status`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_release_types`
--
ALTER TABLE `sd_release_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_ticket_relation`
--
ALTER TABLE `sd_ticket_relation`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sd_vendors`
--
ALTER TABLE `sd_vendors`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings_alert_notice`
--
ALTER TABLE `settings_alert_notice`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings_auto_response`
--
ALTER TABLE `settings_auto_response`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings_company`
--
ALTER TABLE `settings_company`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings_email`
--
ALTER TABLE `settings_email`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings_ratings`
--
ALTER TABLE `settings_ratings`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `settings_ratings_slug_unique` (`slug`);

--
-- Índices de tabela `settings_security`
--
ALTER TABLE `settings_security`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings_system`
--
ALTER TABLE `settings_system`
 ADD PRIMARY KEY (`id`), ADD KEY `time_farmat` (`time_farmat`), ADD KEY `date_format` (`date_format`), ADD KEY `date_time_format` (`date_time_format`), ADD KEY `time_zone` (`time_zone`);

--
-- Índices de tabela `settings_ticket`
--
ALTER TABLE `settings_ticket`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sla_plan`
--
ALTER TABLE `sla_plan`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `social_media`
--
ALTER TABLE `social_media`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `teams`
--
ALTER TABLE `teams`
 ADD PRIMARY KEY (`id`), ADD KEY `team_lead` (`team_lead`);

--
-- Índices de tabela `team_assign_agent`
--
ALTER TABLE `team_assign_agent`
 ADD PRIMARY KEY (`id`), ADD KEY `team_id` (`team_id`), ADD KEY `agent_id` (`agent_id`);

--
-- Índices de tabela `template`
--
ALTER TABLE `template`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `templates`
--
ALTER TABLE `templates`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `template_sets`
--
ALTER TABLE `template_sets`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `template_types`
--
ALTER TABLE `template_types`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tickets`
--
ALTER TABLE `tickets`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `dept_id` (`dept_id`), ADD KEY `team_id` (`team_id`), ADD KEY `priority_id` (`priority_id`), ADD KEY `sla` (`sla`), ADD KEY `help_topic_id` (`help_topic_id`), ADD KEY `status` (`status`), ADD KEY `assigned_to` (`assigned_to`), ADD KEY `source` (`source`);

--
-- Índices de tabela `ticket_attachment`
--
ALTER TABLE `ticket_attachment`
 ADD PRIMARY KEY (`id`), ADD KEY `thread_id` (`thread_id`);

--
-- Índices de tabela `ticket_collaborator`
--
ALTER TABLE `ticket_collaborator`
 ADD PRIMARY KEY (`id`), ADD KEY `ticket_id` (`ticket_id`), ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `ticket_form_data`
--
ALTER TABLE `ticket_form_data`
 ADD PRIMARY KEY (`id`), ADD KEY `ticket_id` (`ticket_id`);

--
-- Índices de tabela `ticket_priority`
--
ALTER TABLE `ticket_priority`
 ADD PRIMARY KEY (`priority_id`);

--
-- Índices de tabela `ticket_source`
--
ALTER TABLE `ticket_source`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ticket_status`
--
ALTER TABLE `ticket_status`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ticket_thread`
--
ALTER TABLE `ticket_thread`
 ADD PRIMARY KEY (`id`), ADD KEY `ticket_id_2` (`ticket_id`), ADD KEY `user_id` (`user_id`), ADD KEY `source` (`source`);

--
-- Índices de tabela `ticket_token`
--
ALTER TABLE `ticket_token`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `timezone`
--
ALTER TABLE `timezone`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `time_format`
--
ALTER TABLE `time_format`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `users_mobile_unique` (`mobile`), ADD KEY `assign_group_3` (`assign_group`), ADD KEY `primary_dpt_2` (`primary_dpt`);

--
-- Índices de tabela `user_additional_infos`
--
ALTER TABLE `user_additional_infos`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user_assign_organization`
--
ALTER TABLE `user_assign_organization`
 ADD PRIMARY KEY (`id`), ADD KEY `org_id` (`org_id`), ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `user_notification`
--
ALTER TABLE `user_notification`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `version_check`
--
ALTER TABLE `version_check`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `widgets`
--
ALTER TABLE `widgets`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `workflow_action`
--
ALTER TABLE `workflow_action`
 ADD PRIMARY KEY (`id`), ADD KEY `workflow_action_1` (`workflow_id`);

--
-- Índices de tabela `workflow_close`
--
ALTER TABLE `workflow_close`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `workflow_name`
--
ALTER TABLE `workflow_name`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `workflow_rules`
--
ALTER TABLE `workflow_rules`
 ADD PRIMARY KEY (`id`), ADD KEY `workflow_rules_1` (`workflow_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `api_settings`
--
ALTER TABLE `api_settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `banlist`
--
ALTER TABLE `banlist`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `bar_notifications`
--
ALTER TABLE `bar_notifications`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de tabela `canned_response`
--
ALTER TABLE `canned_response`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `common_settings`
--
ALTER TABLE `common_settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `conditions`
--
ALTER TABLE `conditions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `country_code`
--
ALTER TABLE `country_code`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT de tabela `custom_forms`
--
ALTER TABLE `custom_forms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `custom_form_fields`
--
ALTER TABLE `custom_form_fields`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `date_format`
--
ALTER TABLE `date_format`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `date_time_format`
--
ALTER TABLE `date_time_format`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `department`
--
ALTER TABLE `department`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `emails`
--
ALTER TABLE `emails`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `faveo_mails`
--
ALTER TABLE `faveo_mails`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `faveo_queues`
--
ALTER TABLE `faveo_queues`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `field_values`
--
ALTER TABLE `field_values`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ga_badges`
--
ALTER TABLE `ga_badges`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de tabela `ga_badge_events`
--
ALTER TABLE `ga_badge_events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ga_categories`
--
ALTER TABLE `ga_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `ga_events`
--
ALTER TABLE `ga_events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `ga_level_associate`
--
ALTER TABLE `ga_level_associate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `ga_types`
--
ALTER TABLE `ga_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `ga_user_achievements`
--
ALTER TABLE `ga_user_achievements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ga_user_badges`
--
ALTER TABLE `ga_user_badges`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `group_assign_department`
--
ALTER TABLE `group_assign_department`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `help_topic`
--
ALTER TABLE `help_topic`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `kb_article`
--
ALTER TABLE `kb_article`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `kb_article_relationship`
--
ALTER TABLE `kb_article_relationship`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `kb_category`
--
ALTER TABLE `kb_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `kb_comment`
--
ALTER TABLE `kb_comment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `kb_pages`
--
ALTER TABLE `kb_pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `kb_settings`
--
ALTER TABLE `kb_settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `log_notification`
--
ALTER TABLE `log_notification`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `mailbox_protocol`
--
ALTER TABLE `mailbox_protocol`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `mail_services`
--
ALTER TABLE `mail_services`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `notification_types`
--
ALTER TABLE `notification_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `organization`
--
ALTER TABLE `organization`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `plugins`
--
ALTER TABLE `plugins`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `queue_services`
--
ALTER TABLE `queue_services`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `ratings`
--
ALTER TABLE `ratings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `rating_ref`
--
ALTER TABLE `rating_ref`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `sd_assets`
--
ALTER TABLE `sd_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_asset_form`
--
ALTER TABLE `sd_asset_form`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_asset_relations`
--
ALTER TABLE `sd_asset_relations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_asset_types`
--
ALTER TABLE `sd_asset_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de tabela `sd_asset_type_form`
--
ALTER TABLE `sd_asset_type_form`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_attachments`
--
ALTER TABLE `sd_attachments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_attachment_types`
--
ALTER TABLE `sd_attachment_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `sd_cab`
--
ALTER TABLE `sd_cab`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `sd_cab_votes`
--
ALTER TABLE `sd_cab_votes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_changes`
--
ALTER TABLE `sd_changes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_change_priorities`
--
ALTER TABLE `sd_change_priorities`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `sd_change_release`
--
ALTER TABLE `sd_change_release`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_change_status`
--
ALTER TABLE `sd_change_status`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `sd_change_types`
--
ALTER TABLE `sd_change_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `sd_contracts`
--
ALTER TABLE `sd_contracts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_contract_asset_relations`
--
ALTER TABLE `sd_contract_asset_relations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_contract_types`
--
ALTER TABLE `sd_contract_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `sd_field_values`
--
ALTER TABLE `sd_field_values`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_forms`
--
ALTER TABLE `sd_forms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_form_fields`
--
ALTER TABLE `sd_form_fields`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_gerneral`
--
ALTER TABLE `sd_gerneral`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_impact_types`
--
ALTER TABLE `sd_impact_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `sd_license_types`
--
ALTER TABLE `sd_license_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `sd_locations`
--
ALTER TABLE `sd_locations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_location_categories`
--
ALTER TABLE `sd_location_categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `sd_problem`
--
ALTER TABLE `sd_problem`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_problem_change`
--
ALTER TABLE `sd_problem_change`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_products`
--
ALTER TABLE `sd_products`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_product_proc_mode`
--
ALTER TABLE `sd_product_proc_mode`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `sd_product_status`
--
ALTER TABLE `sd_product_status`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `sd_product_vendor_relation`
--
ALTER TABLE `sd_product_vendor_relation`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_releases`
--
ALTER TABLE `sd_releases`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_release_priorities`
--
ALTER TABLE `sd_release_priorities`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `sd_release_status`
--
ALTER TABLE `sd_release_status`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `sd_release_types`
--
ALTER TABLE `sd_release_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `sd_ticket_relation`
--
ALTER TABLE `sd_ticket_relation`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sd_vendors`
--
ALTER TABLE `sd_vendors`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `settings_alert_notice`
--
ALTER TABLE `settings_alert_notice`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `settings_auto_response`
--
ALTER TABLE `settings_auto_response`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `settings_company`
--
ALTER TABLE `settings_company`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `settings_email`
--
ALTER TABLE `settings_email`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `settings_ratings`
--
ALTER TABLE `settings_ratings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `settings_security`
--
ALTER TABLE `settings_security`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `settings_system`
--
ALTER TABLE `settings_system`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `settings_ticket`
--
ALTER TABLE `settings_ticket`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `sla_plan`
--
ALTER TABLE `sla_plan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `social_media`
--
ALTER TABLE `social_media`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `teams`
--
ALTER TABLE `teams`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `team_assign_agent`
--
ALTER TABLE `team_assign_agent`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `template`
--
ALTER TABLE `template`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `templates`
--
ALTER TABLE `templates`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de tabela `template_sets`
--
ALTER TABLE `template_sets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `template_types`
--
ALTER TABLE `template_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de tabela `tickets`
--
ALTER TABLE `tickets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ticket_attachment`
--
ALTER TABLE `ticket_attachment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ticket_collaborator`
--
ALTER TABLE `ticket_collaborator`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ticket_form_data`
--
ALTER TABLE `ticket_form_data`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ticket_priority`
--
ALTER TABLE `ticket_priority`
MODIFY `priority_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `ticket_source`
--
ALTER TABLE `ticket_source`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `ticket_status`
--
ALTER TABLE `ticket_status`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `ticket_thread`
--
ALTER TABLE `ticket_thread`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ticket_token`
--
ALTER TABLE `ticket_token`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `timezone`
--
ALTER TABLE `timezone`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT de tabela `time_format`
--
ALTER TABLE `time_format`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `user_additional_infos`
--
ALTER TABLE `user_additional_infos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `user_assign_organization`
--
ALTER TABLE `user_assign_organization`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `user_notification`
--
ALTER TABLE `user_notification`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `version_check`
--
ALTER TABLE `version_check`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `widgets`
--
ALTER TABLE `widgets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de tabela `workflow_action`
--
ALTER TABLE `workflow_action`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `workflow_close`
--
ALTER TABLE `workflow_close`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `workflow_name`
--
ALTER TABLE `workflow_name`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `workflow_rules`
--
ALTER TABLE `workflow_rules`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `canned_response`
--
ALTER TABLE `canned_response`
ADD CONSTRAINT `canned_response_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `department`
--
ALTER TABLE `department`
ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`sla`) REFERENCES `sla_plan` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `department_ibfk_2` FOREIGN KEY (`manager`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `emails`
--
ALTER TABLE `emails`
ADD CONSTRAINT `emails_ibfk_1` FOREIGN KEY (`department`) REFERENCES `department` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `emails_ibfk_2` FOREIGN KEY (`priority`) REFERENCES `ticket_priority` (`priority_id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `emails_ibfk_3` FOREIGN KEY (`help_topic`) REFERENCES `help_topic` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `field_values`
--
ALTER TABLE `field_values`
ADD CONSTRAINT `field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `custom_form_fields` (`id`);

--
-- Restrições para tabelas `group_assign_department`
--
ALTER TABLE `group_assign_department`
ADD CONSTRAINT `group_assign_department_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `group_assign_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `help_topic`
--
ALTER TABLE `help_topic`
ADD CONSTRAINT `help_topic_ibfk_1` FOREIGN KEY (`custom_form`) REFERENCES `custom_forms` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `help_topic_ibfk_2` FOREIGN KEY (`department`) REFERENCES `department` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `help_topic_ibfk_3` FOREIGN KEY (`ticket_status`) REFERENCES `ticket_status` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `help_topic_ibfk_4` FOREIGN KEY (`priority`) REFERENCES `ticket_priority` (`priority_id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `help_topic_ibfk_5` FOREIGN KEY (`sla_plan`) REFERENCES `sla_plan` (`id`),
ADD CONSTRAINT `help_topic_ibfk_6` FOREIGN KEY (`auto_assign`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `kb_article_relationship`
--
ALTER TABLE `kb_article_relationship`
ADD CONSTRAINT `article_relationship_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `kb_article` (`id`),
ADD CONSTRAINT `article_relationship_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `kb_category` (`id`);

--
-- Restrições para tabelas `kb_comment`
--
ALTER TABLE `kb_comment`
ADD CONSTRAINT `comment_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `kb_article` (`id`);

--
-- Restrições para tabelas `organization`
--
ALTER TABLE `organization`
ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`head`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `sd_assets`
--
ALTER TABLE `sd_assets`
ADD CONSTRAINT `sd_assets_asset_type_id_foreign` FOREIGN KEY (`asset_type_id`) REFERENCES `sd_asset_types` (`id`),
ADD CONSTRAINT `sd_assets_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `sd_attachments` (`id`),
ADD CONSTRAINT `sd_assets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
ADD CONSTRAINT `sd_assets_impact_type_id_foreign` FOREIGN KEY (`impact_type_id`) REFERENCES `sd_impact_types` (`id`),
ADD CONSTRAINT `sd_assets_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `sd_locations` (`id`),
ADD CONSTRAINT `sd_assets_managed_by_foreign` FOREIGN KEY (`managed_by`) REFERENCES `users` (`id`),
ADD CONSTRAINT `sd_assets_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `sd_products` (`id`),
ADD CONSTRAINT `sd_assets_used_by_foreign` FOREIGN KEY (`used_by`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `sd_asset_type_form`
--
ALTER TABLE `sd_asset_type_form`
ADD CONSTRAINT `sd_asset_type_form_asset_type_id_foreign` FOREIGN KEY (`asset_type_id`) REFERENCES `sd_asset_types` (`id`),
ADD CONSTRAINT `sd_asset_type_form_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `sd_forms` (`id`);

--
-- Restrições para tabelas `sd_attachments`
--
ALTER TABLE `sd_attachments`
ADD CONSTRAINT `sd_attachments_saved_foreign` FOREIGN KEY (`saved`) REFERENCES `sd_attachment_types` (`id`);

--
-- Restrições para tabelas `sd_cab`
--
ALTER TABLE `sd_cab`
ADD CONSTRAINT `sd_cab_head_foreign` FOREIGN KEY (`head`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `sd_cab_votes`
--
ALTER TABLE `sd_cab_votes`
ADD CONSTRAINT `sd_cab_votes_cab_id_foreign` FOREIGN KEY (`cab_id`) REFERENCES `sd_cab` (`id`),
ADD CONSTRAINT `sd_cab_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `sd_changes`
--
ALTER TABLE `sd_changes`
ADD CONSTRAINT `sd_changes_approval_id_foreign` FOREIGN KEY (`approval_id`) REFERENCES `sd_cab` (`id`),
ADD CONSTRAINT `sd_changes_change_type_id_foreign` FOREIGN KEY (`change_type_id`) REFERENCES `sd_change_types` (`id`),
ADD CONSTRAINT `sd_changes_impact_id_foreign` FOREIGN KEY (`impact_id`) REFERENCES `sd_impact_types` (`id`),
ADD CONSTRAINT `sd_changes_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `sd_locations` (`id`),
ADD CONSTRAINT `sd_changes_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `sd_change_priorities` (`id`),
ADD CONSTRAINT `sd_changes_requester_foreign` FOREIGN KEY (`requester`) REFERENCES `users` (`id`),
ADD CONSTRAINT `sd_changes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `sd_change_status` (`id`);

--
-- Restrições para tabelas `sd_change_release`
--
ALTER TABLE `sd_change_release`
ADD CONSTRAINT `sd_change_release_change_id_foreign` FOREIGN KEY (`change_id`) REFERENCES `sd_changes` (`id`),
ADD CONSTRAINT `sd_change_release_release_id_foreign` FOREIGN KEY (`release_id`) REFERENCES `sd_releases` (`id`);

--
-- Restrições para tabelas `sd_contracts`
--
ALTER TABLE `sd_contracts`
ADD CONSTRAINT `sd_contracts_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `sd_cab` (`id`),
ADD CONSTRAINT `sd_contracts_contract_type_id_foreign` FOREIGN KEY (`contract_type_id`) REFERENCES `sd_contract_types` (`id`),
ADD CONSTRAINT `sd_contracts_license_type_id_foreign` FOREIGN KEY (`license_type_id`) REFERENCES `sd_license_types` (`id`),
ADD CONSTRAINT `sd_contracts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `sd_products` (`id`),
ADD CONSTRAINT `sd_contracts_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `sd_vendors` (`id`);

--
-- Restrições para tabelas `sd_contract_asset_relations`
--
ALTER TABLE `sd_contract_asset_relations`
ADD CONSTRAINT `sd_contract_asset_relations_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `sd_assets` (`id`),
ADD CONSTRAINT `sd_contract_asset_relations_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `sd_contracts` (`id`);

--
-- Restrições para tabelas `sd_field_values`
--
ALTER TABLE `sd_field_values`
ADD CONSTRAINT `sd_field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `sd_form_fields` (`id`);

--
-- Restrições para tabelas `sd_form_fields`
--
ALTER TABLE `sd_form_fields`
ADD CONSTRAINT `sd_form_fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `sd_forms` (`id`);

--
-- Restrições para tabelas `sd_locations`
--
ALTER TABLE `sd_locations`
ADD CONSTRAINT `sd_locations_location_category_id_foreign` FOREIGN KEY (`location_category_id`) REFERENCES `sd_location_categories` (`id`);

--
-- Restrições para tabelas `sd_problem_change`
--
ALTER TABLE `sd_problem_change`
ADD CONSTRAINT `sd_problem_change_change_id_foreign` FOREIGN KEY (`change_id`) REFERENCES `sd_changes` (`id`),
ADD CONSTRAINT `sd_problem_change_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `sd_problem` (`id`);

--
-- Restrições para tabelas `sd_products`
--
ALTER TABLE `sd_products`
ADD CONSTRAINT `sd_products_product_mode_procurement_id_foreign` FOREIGN KEY (`product_mode_procurement_id`) REFERENCES `sd_product_proc_mode` (`id`),
ADD CONSTRAINT `sd_products_product_status_id_foreign` FOREIGN KEY (`product_status_id`) REFERENCES `sd_product_status` (`id`);

--
-- Restrições para tabelas `sd_releases`
--
ALTER TABLE `sd_releases`
ADD CONSTRAINT `sd_releases_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `sd_locations` (`id`),
ADD CONSTRAINT `sd_releases_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `sd_release_priorities` (`id`),
ADD CONSTRAINT `sd_releases_release_type_id_foreign` FOREIGN KEY (`release_type_id`) REFERENCES `sd_release_types` (`id`),
ADD CONSTRAINT `sd_releases_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `sd_release_status` (`id`);

--
-- Restrições para tabelas `settings_system`
--
ALTER TABLE `settings_system`
ADD CONSTRAINT `settings_system_ibfk_1` FOREIGN KEY (`time_zone`) REFERENCES `timezone` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `settings_system_ibfk_2` FOREIGN KEY (`time_farmat`) REFERENCES `time_format` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `settings_system_ibfk_3` FOREIGN KEY (`date_format`) REFERENCES `date_format` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `settings_system_ibfk_4` FOREIGN KEY (`date_time_format`) REFERENCES `date_time_format` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `teams`
--
ALTER TABLE `teams`
ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`team_lead`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `team_assign_agent`
--
ALTER TABLE `team_assign_agent`
ADD CONSTRAINT `team_assign_agent_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `team_assign_agent_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tickets`
--
ALTER TABLE `tickets`
ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`priority_id`) REFERENCES `ticket_priority` (`priority_id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`sla`) REFERENCES `sla_plan` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_6` FOREIGN KEY (`help_topic_id`) REFERENCES `help_topic` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_7` FOREIGN KEY (`status`) REFERENCES `ticket_status` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_8` FOREIGN KEY (`source`) REFERENCES `ticket_source` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `tickets_ibfk_9` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `ticket_attachment`
--
ALTER TABLE `ticket_attachment`
ADD CONSTRAINT `ticket_attachment_ibfk_1` FOREIGN KEY (`thread_id`) REFERENCES `ticket_thread` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `ticket_collaborator`
--
ALTER TABLE `ticket_collaborator`
ADD CONSTRAINT `ticket_collaborator_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `ticket_collaborator_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `ticket_form_data`
--
ALTER TABLE `ticket_form_data`
ADD CONSTRAINT `ticket_form_data_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `ticket_thread`
--
ALTER TABLE `ticket_thread`
ADD CONSTRAINT `ticket_thread_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `ticket_thread_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `ticket_thread_ibfk_3` FOREIGN KEY (`source`) REFERENCES `ticket_source` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`assign_group`) REFERENCES `groups` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`primary_dpt`) REFERENCES `department` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `user_assign_organization`
--
ALTER TABLE `user_assign_organization`
ADD CONSTRAINT `user_assign_organization_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `user_assign_organization_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `workflow_action`
--
ALTER TABLE `workflow_action`
ADD CONSTRAINT `workflow_action_1` FOREIGN KEY (`workflow_id`) REFERENCES `workflow_name` (`id`) ON UPDATE NO ACTION;

--
-- Restrições para tabelas `workflow_rules`
--
ALTER TABLE `workflow_rules`
ADD CONSTRAINT `workflow_rules_1` FOREIGN KEY (`workflow_id`) REFERENCES `workflow_name` (`id`) ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
