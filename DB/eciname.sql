-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 05, 2021 lúc 01:56 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eciname`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietve`
--

CREATE TABLE `chitietve` (
  `ve_id` int(10) UNSIGNED NOT NULL,
  `chongoi` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietve`
--

INSERT INTO `chitietve` (`ve_id`, `chongoi`) VALUES
(113, 100),
(114, 10),
(117, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2014_10_12_000000_create_users_table', 2),
(12, '2014_10_12_100000_create_password_resets_table', 2),
(13, '2021_06_13_235553_create_tbl_admin_table', 2),
(14, '2021_06_14_152644_create_tbl_category_product', 2),
(15, '2021_06_15_172828_create_tbl_combo', 2),
(16, '2021_06_16_085818_create_tbl_phim', 2),
(17, '2021_06_16_152856_create_tbl_dangphim', 3),
(18, '2021_06_17_131244_create_tbl_theloaiphim', 4),
(19, '2021_06_20_202504_create_tbl_phong', 5),
(20, '2021_06_21_203431_create_tbl_thanhpho', 6),
(21, '2021_06_23_022931_create_tbl_rap', 7),
(22, '2021_06_24_122245_create_tbl_tintuc', 8),
(23, '2021_06_25_121105_create_tbl_suatchieu', 9),
(24, '2021_06_26_054900_tbl_customer', 10),
(25, '2021_06_30_142350_create_tbl_ve', 11),
(26, '2021_07_10_105714_create_tbl_datve', 12),
(27, '2021_07_27_190701_create_tbl_quocgia', 13),
(28, '2021_07_28_054808_create_tbl_lichchieu', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `admin_diachi`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2150', 'ngo tuong vu', '0354161612', 'binh an', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `CountryID` int(11) DEFAULT NULL,
  `CountryName` varchar(50) DEFAULT NULL,
  `TwoCharCountryCode` char(2) DEFAULT NULL,
  `ThreeCharCountryCode` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_countries`
--

INSERT INTO `tbl_countries` (`CountryID`, `CountryName`, `TwoCharCountryCode`, `ThreeCharCountryCode`) VALUES
(1, 'Afghanistan', 'AF', 'AFG'),
(2, 'Aland Islands', 'AX', 'ALA'),
(3, 'Albania', 'AL', 'ALB'),
(4, 'Algeria', 'DZ', 'DZA'),
(5, 'American Samoa', 'AS', 'ASM'),
(6, 'Andorra', 'AD', 'AND'),
(7, 'Angola', 'AO', 'AGO'),
(8, 'Anguilla', 'AI', 'AIA'),
(9, 'Antarctica', 'AQ', 'ATA'),
(10, 'Antigua and Barbuda', 'AG', 'ATG'),
(11, 'Argentina', 'AR', 'ARG'),
(12, 'Armenia', 'AM', 'ARM'),
(13, 'Aruba', 'AW', 'ABW'),
(14, 'Australia', 'AU', 'AUS'),
(15, 'Austria', 'AT', 'AUT'),
(16, 'Azerbaijan', 'AZ', 'AZE'),
(17, 'Bahamas', 'BS', 'BHS'),
(18, 'Bahrain', 'BH', 'BHR'),
(19, 'Bangladesh', 'BD', 'BGD'),
(20, 'Barbados', 'BB', 'BRB'),
(21, 'Belarus', 'BY', 'BLR'),
(22, 'Belgium', 'BE', 'BEL'),
(23, 'Belize', 'BZ', 'BLZ'),
(24, 'Benin', 'BJ', 'BEN'),
(25, 'Bermuda', 'BM', 'BMU'),
(26, 'Bhutan', 'BT', 'BTN'),
(27, 'Bolivia', 'BO', 'BOL'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES'),
(29, 'Bosnia and Herzegovina', 'BA', 'BIH'),
(30, 'Botswana', 'BW', 'BWA'),
(31, 'Bouvet Island', 'BV', 'BVT'),
(32, 'Brazil', 'BR', 'BRA'),
(33, 'British Indian Ocean Territory', 'IO', 'IOT'),
(34, 'Brunei', 'BN', 'BRN'),
(35, 'Bulgaria', 'BG', 'BGR'),
(36, 'Burkina Faso', 'BF', 'BFA'),
(37, 'Burundi', 'BI', 'BDI'),
(38, 'Cambodia', 'KH', 'KHM'),
(39, 'Cameroon', 'CM', 'CMR'),
(40, 'Canada', 'CA', 'CAN'),
(41, 'Cape Verde', 'CV', 'CPV'),
(42, 'Cayman Islands', 'KY', 'CYM'),
(43, 'Central African Republic', 'CF', 'CAF'),
(44, 'Chad', 'TD', 'TCD'),
(45, 'Chile', 'CL', 'CHL'),
(46, 'China', 'CN', 'CHN'),
(47, 'Christmas Island', 'CX', 'CXR'),
(48, 'Cocos (Keeling) Islands', 'CC', 'CCK'),
(49, 'Colombia', 'CO', 'COL'),
(50, 'Comoros', 'KM', 'COM'),
(51, 'Congo', 'CG', 'COG'),
(52, 'Cook Islands', 'CK', 'COK'),
(53, 'Costa Rica', 'CR', 'CRI'),
(54, 'Ivory Coast', 'CI', 'CIV'),
(55, 'Croatia', 'HR', 'HRV'),
(56, 'Cuba', 'CU', 'CUB'),
(57, 'Curacao', 'CW', 'CUW'),
(58, 'Cyprus', 'CY', 'CYP'),
(59, 'Czech Republic', 'CZ', 'CZE'),
(60, 'Democratic Republic of the Congo', 'CD', 'COD'),
(61, 'Denmark', 'DK', 'DNK'),
(62, 'Djibouti', 'DJ', 'DJI'),
(63, 'Dominica', 'DM', 'DMA'),
(64, 'Dominican Republic', 'DO', 'DOM'),
(65, 'Ecuador', 'EC', 'ECU'),
(66, 'Egypt', 'EG', 'EGY'),
(67, 'El Salvador', 'SV', 'SLV'),
(68, 'Equatorial Guinea', 'GQ', 'GNQ'),
(69, 'Eritrea', 'ER', 'ERI'),
(70, 'Estonia', 'EE', 'EST'),
(71, 'Ethiopia', 'ET', 'ETH'),
(72, 'Falkland Islands (Malvinas)', 'FK', 'FLK'),
(73, 'Faroe Islands', 'FO', 'FRO'),
(74, 'Fiji', 'FJ', 'FJI'),
(75, 'Finland', 'FI', 'FIN'),
(76, 'France', 'FR', 'FRA'),
(77, 'French Guiana', 'GF', 'GUF'),
(78, 'French Polynesia', 'PF', 'PYF'),
(79, 'French Southern Territories', 'TF', 'ATF'),
(80, 'Gabon', 'GA', 'GAB'),
(81, 'Gambia', 'GM', 'GMB'),
(82, 'Georgia', 'GE', 'GEO'),
(83, 'Germany', 'DE', 'DEU'),
(84, 'Ghana', 'GH', 'GHA'),
(85, 'Gibraltar', 'GI', 'GIB'),
(86, 'Greece', 'GR', 'GRC'),
(87, 'Greenland', 'GL', 'GRL'),
(88, 'Grenada', 'GD', 'GRD'),
(89, 'Guadaloupe', 'GP', 'GLP'),
(90, 'Guam', 'GU', 'GUM'),
(91, 'Guatemala', 'GT', 'GTM'),
(92, 'Guernsey', 'GG', 'GGY'),
(93, 'Guinea', 'GN', 'GIN'),
(94, 'Guinea-Bissau', 'GW', 'GNB'),
(95, 'Guyana', 'GY', 'GUY'),
(96, 'Haiti', 'HT', 'HTI'),
(97, 'Heard Island and McDonald Islands', 'HM', 'HMD'),
(98, 'Honduras', 'HN', 'HND'),
(99, 'Hong Kong', 'HK', 'HKG'),
(100, 'Hungary', 'HU', 'HUN'),
(101, 'Iceland', 'IS', 'ISL'),
(102, 'India', 'IN', 'IND'),
(103, 'Indonesia', 'ID', 'IDN'),
(104, 'Iran', 'IR', 'IRN'),
(105, 'Iraq', 'IQ', 'IRQ'),
(106, 'Ireland', 'IE', 'IRL'),
(107, 'Isle of Man', 'IM', 'IMN'),
(108, 'Israel', 'IL', 'ISR'),
(109, 'Italy', 'IT', 'ITA'),
(110, 'Jamaica', 'JM', 'JAM'),
(111, 'Japan', 'JP', 'JPN'),
(112, 'Jersey', 'JE', 'JEY'),
(113, 'Jordan', 'JO', 'JOR'),
(114, 'Kazakhstan', 'KZ', 'KAZ'),
(115, 'Kenya', 'KE', 'KEN'),
(116, 'Kiribati', 'KI', 'KIR'),
(117, 'Kosovo', 'XK', '---'),
(118, 'Kuwait', 'KW', 'KWT'),
(119, 'Kyrgyzstan', 'KG', 'KGZ'),
(120, 'Laos', 'LA', 'LAO'),
(121, 'Latvia', 'LV', 'LVA'),
(122, 'Lebanon', 'LB', 'LBN'),
(123, 'Lesotho', 'LS', 'LSO'),
(124, 'Liberia', 'LR', 'LBR'),
(125, 'Libya', 'LY', 'LBY'),
(126, 'Liechtenstein', 'LI', 'LIE'),
(127, 'Lithuania', 'LT', 'LTU'),
(128, 'Luxembourg', 'LU', 'LUX'),
(129, 'Macao', 'MO', 'MAC'),
(130, 'Macedonia', 'MK', 'MKD'),
(131, 'Madagascar', 'MG', 'MDG'),
(132, 'Malawi', 'MW', 'MWI'),
(133, 'Malaysia', 'MY', 'MYS'),
(134, 'Maldives', 'MV', 'MDV'),
(135, 'Mali', 'ML', 'MLI'),
(136, 'Malta', 'MT', 'MLT'),
(137, 'Marshall Islands', 'MH', 'MHL'),
(138, 'Martinique', 'MQ', 'MTQ'),
(139, 'Mauritania', 'MR', 'MRT'),
(140, 'Mauritius', 'MU', 'MUS'),
(141, 'Mayotte', 'YT', 'MYT'),
(142, 'Mexico', 'MX', 'MEX'),
(143, 'Micronesia', 'FM', 'FSM'),
(144, 'Moldava', 'MD', 'MDA'),
(145, 'Monaco', 'MC', 'MCO'),
(146, 'Mongolia', 'MN', 'MNG'),
(147, 'Montenegro', 'ME', 'MNE'),
(148, 'Montserrat', 'MS', 'MSR'),
(149, 'Morocco', 'MA', 'MAR'),
(150, 'Mozambique', 'MZ', 'MOZ'),
(151, 'Myanmar (Burma)', 'MM', 'MMR'),
(152, 'Namibia', 'NA', 'NAM'),
(153, 'Nauru', 'NR', 'NRU'),
(154, 'Nepal', 'NP', 'NPL'),
(155, 'Netherlands', 'NL', 'NLD'),
(156, 'New Caledonia', 'NC', 'NCL'),
(157, 'New Zealand', 'NZ', 'NZL'),
(158, 'Nicaragua', 'NI', 'NIC'),
(159, 'Niger', 'NE', 'NER'),
(160, 'Nigeria', 'NG', 'NGA'),
(161, 'Niue', 'NU', 'NIU'),
(162, 'Norfolk Island', 'NF', 'NFK'),
(163, 'North Korea', 'KP', 'PRK'),
(164, 'Northern Mariana Islands', 'MP', 'MNP'),
(165, 'Norway', 'NO', 'NOR'),
(166, 'Oman', 'OM', 'OMN'),
(167, 'Pakistan', 'PK', 'PAK'),
(168, 'Palau', 'PW', 'PLW'),
(169, 'Palestine', 'PS', 'PSE'),
(170, 'Panama', 'PA', 'PAN'),
(171, 'Papua New Guinea', 'PG', 'PNG'),
(172, 'Paraguay', 'PY', 'PRY'),
(173, 'Peru', 'PE', 'PER'),
(174, 'Phillipines', 'PH', 'PHL'),
(175, 'Pitcairn', 'PN', 'PCN'),
(176, 'Poland', 'PL', 'POL'),
(177, 'Portugal', 'PT', 'PRT'),
(178, 'Puerto Rico', 'PR', 'PRI'),
(179, 'Qatar', 'QA', 'QAT'),
(180, 'Reunion', 'RE', 'REU'),
(181, 'Romania', 'RO', 'ROU'),
(182, 'Russia', 'RU', 'RUS'),
(183, 'Rwanda', 'RW', 'RWA'),
(184, 'Saint Barthelemy', 'BL', 'BLM'),
(185, 'Saint Helena', 'SH', 'SHN'),
(186, 'Saint Kitts and Nevis', 'KN', 'KNA'),
(187, 'Saint Lucia', 'LC', 'LCA'),
(188, 'Saint Martin', 'MF', 'MAF'),
(189, 'Saint Pierre and Miquelon', 'PM', 'SPM'),
(190, 'Saint Vincent and the Grenadines', 'VC', 'VCT'),
(191, 'Samoa', 'WS', 'WSM'),
(192, 'San Marino', 'SM', 'SMR'),
(193, 'Sao Tome and Principe', 'ST', 'STP'),
(194, 'Saudi Arabia', 'SA', 'SAU'),
(195, 'Senegal', 'SN', 'SEN'),
(196, 'Serbia', 'RS', 'SRB'),
(197, 'Seychelles', 'SC', 'SYC'),
(198, 'Sierra Leone', 'SL', 'SLE'),
(199, 'Singapore', 'SG', 'SGP'),
(200, 'Sint Maarten', 'SX', 'SXM'),
(201, 'Slovakia', 'SK', 'SVK'),
(202, 'Slovenia', 'SI', 'SVN'),
(203, 'Solomon Islands', 'SB', 'SLB'),
(204, 'Somalia', 'SO', 'SOM'),
(205, 'South Africa', 'ZA', 'ZAF'),
(206, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS'),
(207, 'South Korea', 'KR', 'KOR'),
(208, 'South Sudan', 'SS', 'SSD'),
(209, 'Spain', 'ES', 'ESP'),
(210, 'Sri Lanka', 'LK', 'LKA'),
(211, 'Sudan', 'SD', 'SDN'),
(212, 'Suriname', 'SR', 'SUR'),
(213, 'Svalbard and Jan Mayen', 'SJ', 'SJM'),
(214, 'Swaziland', 'SZ', 'SWZ'),
(215, 'Sweden', 'SE', 'SWE'),
(216, 'Switzerland', 'CH', 'CHE'),
(217, 'Syria', 'SY', 'SYR'),
(218, 'Taiwan', 'TW', 'TWN'),
(219, 'Tajikistan', 'TJ', 'TJK'),
(220, 'Tanzania', 'TZ', 'TZA'),
(221, 'Thailand', 'TH', 'THA'),
(222, 'Timor-Leste (East Timor)', 'TL', 'TLS'),
(223, 'Togo', 'TG', 'TGO'),
(224, 'Tokelau', 'TK', 'TKL'),
(225, 'Tonga', 'TO', 'TON'),
(226, 'Trinidad and Tobago', 'TT', 'TTO'),
(227, 'Tunisia', 'TN', 'TUN'),
(228, 'Turkey', 'TR', 'TUR'),
(229, 'Turkmenistan', 'TM', 'TKM'),
(230, 'Turks and Caicos Islands', 'TC', 'TCA'),
(231, 'Tuvalu', 'TV', 'TUV'),
(232, 'Uganda', 'UG', 'UGA'),
(233, 'Ukraine', 'UA', 'UKR'),
(234, 'United Arab Emirates', 'AE', 'ARE'),
(235, 'United Kingdom', 'GB', 'GBR'),
(236, 'United States', 'US', 'USA'),
(237, 'United States Minor Outlying Islands', 'UM', 'UMI'),
(238, 'Uruguay', 'UY', 'URY'),
(239, 'Uzbekistan', 'UZ', 'UZB'),
(240, 'Vanuatu', 'VU', 'VUT'),
(241, 'Vatican City', 'VA', 'VAT'),
(242, 'Venezuela', 'VE', 'VEN'),
(243, 'Vietnam', 'VN', 'VNM'),
(244, 'Virgin Islands, British', 'VG', 'VGB'),
(245, 'Virgin Islands, US', 'VI', 'VIR'),
(246, 'Wallis and Futuna', 'WF', 'WLF'),
(247, 'Western Sahara', 'EH', 'ESH'),
(248, 'Yemen', 'YE', 'YEM'),
(249, 'Zambia', 'ZM', 'ZMB'),
(250, 'Zimbabwe', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Ngô Vũ', 'tuongvu@gmail.com', 'zzzz', '0354161612', 1, NULL, NULL),
(2, 'Phi Son Vo', 'hi@gmail.com', '123456', '091919123', 1, NULL, NULL),
(16, 'kadada', 'huukhang1999@gmail.com', '123', '1', 1, NULL, '2021-07-22 09:42:24'),
(18, 'dadad', 'dh51700916@student.stu.edu.vn', '1', '123', 1, NULL, '2021-07-22 09:51:28'),
(19, 'ngô vũ', 'tuongvutbtcv@gmail.com', '123', '01641612', 1, NULL, '2021-07-23 02:23:35'),
(24, 'Vũ Tường', 'tuongvutbtcvv@gmail.com', '123123', '0123456789', 0, NULL, NULL),
(25, 'Võ Hoàng Kỳ', 'vohoangky147@gmail.com', '081299vps', '0585827678', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangphim`
--

CREATE TABLE `tbl_dangphim` (
  `dangphim_id` int(10) UNSIGNED NOT NULL,
  `dangphim_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dangphim_status` int(11) NOT NULL,
  `dangphim_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangphim`
--

INSERT INTO `tbl_dangphim` (`dangphim_id`, `dangphim_name`, `dangphim_status`, `dangphim_desc`, `created_at`, `updated_at`) VALUES
(1, '2D', 0, '<p>aa</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lichchieu`
--

CREATE TABLE `tbl_lichchieu` (
  `lichchieu_id` int(10) UNSIGNED NOT NULL,
  `phim_id` int(10) UNSIGNED NOT NULL,
  `suatchieu_id` int(10) UNSIGNED NOT NULL,
  `ngaychieu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phim`
--

CREATE TABLE `tbl_phim` (
  `phim_id` int(10) UNSIGNED NOT NULL,
  `theloaiphim_id` int(11) NOT NULL,
  `phim_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phim_quocgia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_daodien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_dienvien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_thoiluong` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_rated` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_trailer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `phim_status` int(11) NOT NULL,
  `phim_oldnew` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phim`
--

INSERT INTO `tbl_phim` (`phim_id`, `theloaiphim_id`, `phim_name`, `phim_noidung`, `phim_image`, `phim_quocgia`, `phim_daodien`, `phim_dienvien`, `phim_thoiluong`, `phim_rated`, `phim_trailer`, `ngaybatdau`, `ngayketthuc`, `phim_status`, `phim_oldnew`, `created_at`, `updated_at`) VALUES
(11, 4, 'Chị trợ lý của anh', '<p>haa</p>', '258.jpg', 'Miến điện', 'vũ', 'ngưu lang, chức nữ', '180 phút', 'tất cả', 'https://www.youtube.com/embed/oCBGTCNJW2g', '2021-08-18', '2021-09-08', 0, 0, NULL, NULL),
(12, 7, 'Không thấy đường về', '<p>một cuộc h&agrave;nh tr&igrave;nh</p>', '352.jpg', 'Mỹ', 'Victor Vũ', 'lương sơn bá, chúc anh đài', '60 phút', 'C18 - PHIM CẤM KHÁN GIẢ DƯỚI 18 TUỔI', 'https://www.youtube.com/embed/oCBGTCNJW2g', '2021-08-22', '2021-10-28', 0, 0, NULL, NULL),
(13, 7, 'Diệp vấn', '<p>Diệp Vấn l&agrave; một v&otilde; sư nổi tiếng người Hồng K&ocirc;ng, được xem l&agrave; người c&oacute; c&ocirc;ng lớn trong việc h&igrave;nh th&agrave;nh v&agrave; quảng b&aacute; hệ ph&aacute;i Vịnh Xu&acirc;n quyền ở Hồng K&ocirc;ng. Một trong những đệ tử th&agrave;nh danh của &ocirc;ng l&agrave; minh tinh m&agrave;n bạc L&yacute; Tiểu Long trong những năm đầu đời khi họ L&yacute; mới tập t&agrave;nh học v&otilde; thuật.</p>', 'ipman81.jpg', 'Trung Quốc', 'Victor Vũ', 'vũ thần tông', '100 phút', 'tất cả', 'https://www.youtube.com/embed/oCBGTCNJW2g', '2021-08-11', '2021-08-25', 0, 0, NULL, NULL),
(14, 10, 'Người Tình Ánh Trăng', '<p>Hae Soo l&agrave; một c&ocirc; g&aacute;i thời hiện đại.C&ocirc; nhảy ra giữa d&ograve;ng s&ocirc;ng để cứu đứa b&eacute; nhưng kh&ocirc;ng kịp leo l&ecirc;n thuyền khi xảy ra nguyệt thực v&agrave; bị xuy&ecirc;n kh&ocirc;ng về thời Cao Ly v&agrave; gặp được c&aacute;c vương tử Wang So, Wang Wook, Wang Jung c&ugrave;ng một số vương tử kh&aacute;c. T&igrave;nh y&ecirc;u, t&igrave;nh bạn v&agrave; sự tranh quyền đoạt vị cũng diễn ra rất nhanh ch&oacute;ng. C&acirc;u chuyện kết th&uacute;c trong nước mắt, theo đ&uacute;ng nguy&ecirc;n t&aacute;c.</p>', 'MLOVER56.jpg', 'Hàn Quốc', 'Kim Kyu-tae', 'Lee Joon-gi, Lee Ji-eun, Kang Ha-neul', '126 phút', 'C18 - PHIM CẤM KHÁN GIẢ DƯỚI 18 TUỔI', 'https://www.youtube.com/embed/o7mYYXToqmw', '2021-07-28', '2021-09-15', 0, 1, NULL, NULL),
(15, 11, 'Khu Vườn Trên Mây', '<p>Akizuki Takao l&agrave; một học sinh 15 tuổi, sống với mẹ v&agrave; anh trai, cậu tin rằng &quot;chỉ c&oacute; đ&oacute;ng gi&agrave;y mới mang cậu tho&aacute;t khỏi nơi n&agrave;y&quot;.Một buổi s&aacute;ng m&ugrave;a mưa, tr&ecirc;n đường đến trường, cậu đ&atilde; c&uacute;p tiết lang thang đến một khu vườn để ph&aacute;c thảo mẫu gi&agrave;y v&agrave; bắt gặp một c&ocirc; g&aacute;i quyến rũ t&ecirc;n Yukino Yukari đang ngồi uống bia ngắm mưa rơi. Họ kh&ocirc;ng n&oacute;i nhau lời n&agrave;o, nhưng khi trời tạnh mưa, c&ocirc; g&aacute;i từ biệt cậu bằng một b&agrave;i tanka khiến cậu bối rối. Tiếp tục những buổi s&aacute;ng trời mưa tiếp theo, họ lại gặp nhau v&agrave;...?</p>', 'khu vườn ngôn từ37.jpg', 'Nhật Bản', 'Makoto Shinkai', 'Miyu Irino, Kana Hanazawa, Fumi Hirano', '94 Phút', 'P - PHIM DÀNH CHO MỌI ĐỐI TƯỢNG', 'https://www.youtube.com/embed/xnLaOqqtCKs', '2021-07-28', '2021-08-28', 0, 1, NULL, NULL),
(16, 9, 'AVENGERS: ENDGAME', '<p>Sau những sự kiện t&agrave;n khốc trong Avengers: Infinity War, vũ trụ bị hủy hoại do những nỗ lực của Thanos. Với sự gi&uacute;p đỡ của c&aacute;c đồng minh c&ograve;n lại, Avengers phải tập hợp lại một lần nữa để đảo ngược h&agrave;nh động của Thanos v&agrave; kh&ocirc;i phục trật tự cho vũ trụ vĩnh viễn, bất kể hậu quả c&oacute; thể xảy ra.</p>', 'endgame79.jpg', 'Mỹ', 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Benedict Cumberbatch,...', '182 Phút', 'C13 - PHIM CẤM KHÁN GIẢ DƯỚI 13 TUỔII', 'https://www.youtube.com/embed/TcMBFSGVi1c', '2021-07-28', '2021-08-29', 0, 1, NULL, NULL),
(75, 4, 'BỐ GIÀ', '<p style=\"text-align:justify\">Phim sẽ xoay quanh lối sống thường nhật của một x&oacute;m lao động ngh&egrave;o, ở đ&oacute; c&oacute; bộ tứ anh em Gi&agrave;u - Sang - Ph&uacute; - Qu&yacute; với Ba Sang sẽ l&agrave; nh&acirc;n vật ch&iacute;nh, hay lo chuyện bao đồng nhưng v&ocirc; c&ugrave;ng thương con c&aacute;i. C&acirc;u chuyện phim tập trung về hai cha con Ba Sang (Trấn Th&agrave;nh) v&agrave; Quắn (Tuấn Trần). D&ugrave; y&ecirc;u thương nhau nhưng khoảng c&aacute;ch thế hệ đ&atilde; đem đến những bất đồng lớn giữa hai cha con. Liệu cả hai c&oacute; thể cho nhau cơ hội thấu hiểu đối phương, thu hẹp khoảng c&aacute;ch v&agrave; tạo n&ecirc;n hạnh ph&uacute;c từ sự kh&aacute;c biệt?</p>', 'Bố già4.jpg', 'Việt Nam', 'Vũ Ngọc Đãng & Trấn Thành', 'Trấn Thành, Tuấn Trần, Ngân Chi, NSND Ngọc Giàu, Lê Giang, Lan Phương, Hoàng Mèo, La Thành, Quốc Khánh, Lê Trang, A Quay, Bảo Phúc', '128 phút', 'C13 - PHIM CẤM KHÁN GIẢ DƯỚI 13 TUỔI', 'https://youtu.be/uVa1lTvmVhs', '2021-08-02', '2021-10-31', 0, 1, NULL, NULL),
(76, 7, 'ngay 3', '<p>abc</p>', 'điệp viên siêu lầy54.jpg', 'Việt Nam', 'Vũ Ngọc Đãng & Trấn Thành', 'aaa', '128 phút', 'C16 - PHIM CẤM KHÁN GIẢ DƯỚI 16 TUỔI', 'https://www.youtube.com/watch?v=uqJ9u7GSaYM', '2021-08-03', '2021-08-30', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phong`
--

CREATE TABLE `tbl_phong` (
  `phong_id` int(10) UNSIGNED NOT NULL,
  `rap_id` int(11) NOT NULL,
  `phong_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phong_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cot` int(10) NOT NULL,
  `hang` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phong`
--

INSERT INTO `tbl_phong` (`phong_id`, `rap_id`, `phong_name`, `phong_desc`, `cot`, `hang`, `created_at`, `updated_at`) VALUES
(14, 29, 'Phòng 01 TP. HCM', 'ở sài gòn', 10, 10, NULL, NULL),
(15, 29, 'Phòng 02 TP HCM', 'ở sài gònn', 8, 10, NULL, NULL),
(20, 27, 'Phòng 01 Đà Nẵng', 'ở đà nẵng', 10, 10, NULL, NULL),
(21, 27, 'Phòng 02 Đà Nẵng', 'ở đà nẵng', 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_rap`
--

CREATE TABLE `tbl_rap` (
  `rap_id` int(10) UNSIGNED NOT NULL,
  `thanhpho_id` int(11) NOT NULL,
  `rap_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rap_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_rap`
--

INSERT INTO `tbl_rap` (`rap_id`, `thanhpho_id`, `rap_name`, `rap_desc`, `created_at`, `updated_at`) VALUES
(26, 5, 'Tiki Lazada Cần Thơ', '178 Phan Đăng Lưu - TP. Cần Thơ', NULL, NULL),
(27, 3, 'Tiki Lazada Đà Nẵng', '02 Lê Duẩn - TP. Đà Nẵng', NULL, NULL),
(28, 2, 'Tiki Lazada Hà Nội', '109 Hoàng Hoa Thám - TP. Hà Nội', NULL, NULL),
(29, 1, 'Tiki Lazada TP. HCM', '35 Phạm Thế Hiển - TP. HCM.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_suatchieu`
--

CREATE TABLE `tbl_suatchieu` (
  `suatchieu_id` int(10) UNSIGNED NOT NULL,
  `phong_id` int(11) NOT NULL,
  `phim_id` int(11) NOT NULL,
  `dangphim_id` int(11) NOT NULL,
  `suatchieu_date` date NOT NULL,
  `suatchieu_time` time NOT NULL,
  `suatchieu_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_suatchieu`
--

INSERT INTO `tbl_suatchieu` (`suatchieu_id`, `phong_id`, `phim_id`, `dangphim_id`, `suatchieu_date`, `suatchieu_time`, `suatchieu_gia`, `created_at`, `updated_at`) VALUES
(53, 14, 16, 1, '2021-07-31', '00:43:00', '90000', NULL, NULL),
(54, 14, 15, 1, '2021-07-31', '02:45:00', '100000', NULL, NULL),
(55, 21, 16, 1, '2021-07-30', '15:53:00', '120000', NULL, NULL),
(56, 21, 15, 1, '2021-07-30', '17:14:00', '110000', NULL, NULL),
(57, 20, 16, 1, '2021-08-02', '07:12:00', '80000', NULL, NULL),
(58, 14, 13, 1, '2021-08-20', '14:24:00', '49000', NULL, NULL),
(59, 14, 11, 1, '2021-08-08', '19:00:00', '49000', NULL, NULL),
(61, 21, 16, 1, '2021-08-01', '23:15:00', '49000', NULL, NULL),
(63, 14, 16, 1, '2021-08-02', '15:20:00', '49000', NULL, NULL),
(64, 20, 75, 1, '2021-08-02', '20:00:00', '79000', NULL, NULL),
(65, 21, 75, 1, '2021-08-02', '22:00:00', '49000', NULL, NULL),
(66, 14, 75, 1, '2021-08-02', '20:00:00', '79000', NULL, NULL),
(67, 15, 75, 1, '2021-08-02', '22:00:00', '49000', NULL, NULL),
(68, 14, 75, 1, '2021-08-03', '17:30:00', '79000', NULL, NULL),
(69, 20, 75, 1, '2021-08-03', '17:50:00', '79000', NULL, NULL),
(70, 14, 76, 1, '2021-08-03', '19:10:00', '49000', NULL, NULL),
(71, 20, 76, 1, '2021-08-03', '20:00:00', '49000', NULL, NULL),
(72, 21, 76, 1, '2021-08-03', '23:00:00', '49000', NULL, NULL),
(73, 14, 75, 1, '2021-08-04', '17:50:00', '79000', NULL, NULL),
(74, 20, 76, 1, '2021-08-05', '23:45:00', '49000', NULL, NULL),
(75, 14, 76, 1, '2021-08-05', '11:49:00', '79000', NULL, NULL),
(76, 20, 76, 1, '2021-08-05', '11:49:00', '500000', NULL, NULL),
(77, 14, 16, 1, '2021-08-04', '22:30:00', '79000', NULL, NULL),
(78, 20, 16, 1, '2021-08-04', '22:00:00', '49000', NULL, NULL),
(79, 14, 75, 1, '2021-08-06', '13:30:00', '100000', NULL, NULL),
(80, 21, 76, 1, '2021-08-06', '15:00:00', '100000', NULL, NULL),
(81, 15, 75, 1, '2021-08-06', '13:30:00', '100000', NULL, NULL),
(82, 20, 75, 1, '2021-08-06', '11:30:00', '100000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thanhpho`
--

CREATE TABLE `tbl_thanhpho` (
  `thanhpho_id` int(10) UNSIGNED NOT NULL,
  `thanhpho_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thanhpho_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thanhpho`
--

INSERT INTO `tbl_thanhpho` (`thanhpho_id`, `thanhpho_name`, `thanhpho_status`, `created_at`, `updated_at`) VALUES
(1, 'Tp. Hồ Chí Minh', 0, NULL, NULL),
(2, 'Hà Nội', 0, NULL, NULL),
(3, 'Đà Nẵng', 0, NULL, NULL),
(5, 'Cần Thơ', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_theloaiphim`
--

CREATE TABLE `tbl_theloaiphim` (
  `theloaiphim_id` int(10) UNSIGNED NOT NULL,
  `theloaiphim_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theloaiphim_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theloaiphim_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_theloaiphim`
--

INSERT INTO `tbl_theloaiphim` (`theloaiphim_id`, `theloaiphim_name`, `theloaiphim_desc`, `theloaiphim_status`, `created_at`, `updated_at`) VALUES
(4, 'Tình cảm', 'Tình cảm là những thái độ thể hiện sự rung cảm ổn định của con người đối với sự vật hiện tượng có liên quan đến nhu cầu và động cơ của họ.', 0, NULL, NULL),
(7, 'Hành động', 'Phim hành động cũng gọi là phim hoạt động là một thể loại điện ảnh trong đó một hoặc nhiều nhân vật anh hùng bị đẩy vào một loạt những thử thách, thường bao gồm những kì công vật lý, các cảnh hành động kéo dài, yếu tố bạo lực và những cuộc rượt đuổi điên cuồng.', 0, NULL, NULL),
(9, 'Khoa Học Viễn Tưởng', 'Bối cảnh phim có xuất hiện những công nghệ, kỹ thuật hiện đại chưa hoặc không có thật trong thực tế (như du hành thời gian,...), thời gian của phim thường được đặt ở tương lai', 0, NULL, NULL),
(10, 'Kiếm hiệp', 'Phim đặc trưng của châu Á, thường có bối cảnh là thời phong kiến và có rất nhiều cuộc giao tranh bằng vũ khí lạnh (kiếm, đao,...). Nếu có các yếu tố phi thực tế, phim kiếm hiệp còn có thể xếp vào loại phim giả tưởng hoặc phim thần bí.', 0, NULL, NULL),
(11, 'Hoạt Hình, Anime', 'Phim hoạt hình hay phim hoạt họa là một hình thức sử dụng ảo ảnh quang học về sự chuyển động do nhiều hình ảnh tĩnh được chiếu tiếp diễn liên tục.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `tintuc_id` int(10) UNSIGNED NOT NULL,
  `tintuc_tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tintuc_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tintuc_noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tintuc_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`tintuc_id`, `tintuc_tieude`, `tintuc_image`, `tintuc_noidung`, `tintuc_status`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam chung tay đánh bại covid', '240x201-562.jpg', 'Để thể hiện tình đoàn kếtt', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ve`
--

CREATE TABLE `tbl_ve` (
  `ve_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `suatchieu_id` int(10) UNSIGNED NOT NULL,
  `phim_id` int(10) UNSIGNED NOT NULL,
  `dangphim_id` int(10) UNSIGNED DEFAULT NULL,
  `rap_id` int(10) UNSIGNED NOT NULL,
  `phong_id` int(10) UNSIGNED NOT NULL,
  `ve_gia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ve_ngay` date NOT NULL,
  `vitrighe` int(10) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `chontt` int(10) DEFAULT NULL,
  `ve_gio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ve`
--

INSERT INTO `tbl_ve` (`ve_id`, `customer_id`, `suatchieu_id`, `phim_id`, `dangphim_id`, `rap_id`, `phong_id`, `ve_gia`, `ve_ngay`, `vitrighe`, `trangthai`, `chontt`, `ve_gio`, `created_at`, `updated_at`) VALUES
(113, 2, 79, 75, NULL, 29, 14, '100000', '2021-08-06', NULL, 0, 1, '2021-08-05 10:51:49', NULL, NULL),
(114, 2, 74, 76, NULL, 27, 20, '49000', '2021-08-05', NULL, NULL, 1, '2021-08-05 10:30:31', NULL, NULL),
(117, 2, 80, 76, NULL, 27, 21, '100000', '2021-08-06', NULL, NULL, 2, '2021-08-05 11:40:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietve`
--
ALTER TABLE `chitietve`
  ADD KEY `tbl_ve` (`ve_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_dangphim`
--
ALTER TABLE `tbl_dangphim`
  ADD PRIMARY KEY (`dangphim_id`);

--
-- Chỉ mục cho bảng `tbl_lichchieu`
--
ALTER TABLE `tbl_lichchieu`
  ADD PRIMARY KEY (`lichchieu_id`),
  ADD KEY `tbl_lichchieu` (`phim_id`),
  ADD KEY `tbl_lichchieuu` (`suatchieu_id`);

--
-- Chỉ mục cho bảng `tbl_phim`
--
ALTER TABLE `tbl_phim`
  ADD PRIMARY KEY (`phim_id`);

--
-- Chỉ mục cho bảng `tbl_phong`
--
ALTER TABLE `tbl_phong`
  ADD PRIMARY KEY (`phong_id`);

--
-- Chỉ mục cho bảng `tbl_rap`
--
ALTER TABLE `tbl_rap`
  ADD PRIMARY KEY (`rap_id`);

--
-- Chỉ mục cho bảng `tbl_suatchieu`
--
ALTER TABLE `tbl_suatchieu`
  ADD PRIMARY KEY (`suatchieu_id`);

--
-- Chỉ mục cho bảng `tbl_thanhpho`
--
ALTER TABLE `tbl_thanhpho`
  ADD PRIMARY KEY (`thanhpho_id`);

--
-- Chỉ mục cho bảng `tbl_theloaiphim`
--
ALTER TABLE `tbl_theloaiphim`
  ADD PRIMARY KEY (`theloaiphim_id`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`tintuc_id`);

--
-- Chỉ mục cho bảng `tbl_ve`
--
ALTER TABLE `tbl_ve`
  ADD PRIMARY KEY (`ve_id`),
  ADD KEY `suatchieu_ve` (`suatchieu_id`),
  ADD KEY `khachhang_ve` (`customer_id`),
  ADD KEY `phim_ve` (`phim_id`),
  ADD KEY `rap_ve` (`rap_id`),
  ADD KEY `phong_ve` (`phong_id`),
  ADD KEY `dangphim_ve` (`dangphim_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_dangphim`
--
ALTER TABLE `tbl_dangphim`
  MODIFY `dangphim_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `tbl_lichchieu`
--
ALTER TABLE `tbl_lichchieu`
  MODIFY `lichchieu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_phim`
--
ALTER TABLE `tbl_phim`
  MODIFY `phim_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `tbl_phong`
--
ALTER TABLE `tbl_phong`
  MODIFY `phong_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_rap`
--
ALTER TABLE `tbl_rap`
  MODIFY `rap_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_suatchieu`
--
ALTER TABLE `tbl_suatchieu`
  MODIFY `suatchieu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `tbl_thanhpho`
--
ALTER TABLE `tbl_thanhpho`
  MODIFY `thanhpho_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_theloaiphim`
--
ALTER TABLE `tbl_theloaiphim`
  MODIFY `theloaiphim_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  MODIFY `tintuc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_ve`
--
ALTER TABLE `tbl_ve`
  MODIFY `ve_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietve`
--
ALTER TABLE `chitietve`
  ADD CONSTRAINT `tbl_ve` FOREIGN KEY (`ve_id`) REFERENCES `tbl_ve` (`ve_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_lichchieu`
--
ALTER TABLE `tbl_lichchieu`
  ADD CONSTRAINT `tbl_lichchieu` FOREIGN KEY (`phim_id`) REFERENCES `tbl_phim` (`phim_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_lichchieuu` FOREIGN KEY (`suatchieu_id`) REFERENCES `tbl_suatchieu` (`suatchieu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_ve`
--
ALTER TABLE `tbl_ve`
  ADD CONSTRAINT `dangphim_ve` FOREIGN KEY (`dangphim_id`) REFERENCES `tbl_dangphim` (`dangphim_id`),
  ADD CONSTRAINT `khachhang_ve` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`customer_id`),
  ADD CONSTRAINT `phim_ve` FOREIGN KEY (`phim_id`) REFERENCES `tbl_phim` (`phim_id`),
  ADD CONSTRAINT `phong_ve` FOREIGN KEY (`phong_id`) REFERENCES `tbl_phong` (`phong_id`),
  ADD CONSTRAINT `rap_ve` FOREIGN KEY (`rap_id`) REFERENCES `tbl_rap` (`rap_id`),
  ADD CONSTRAINT `suatchieu_ve` FOREIGN KEY (`suatchieu_id`) REFERENCES `tbl_suatchieu` (`suatchieu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
