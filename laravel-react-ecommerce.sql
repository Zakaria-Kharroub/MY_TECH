-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 01:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-react-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `cover`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'computer', 'computer', NULL, NULL, '2023-05-19 08:45:39', '2023-05-19 08:45:39'),
(2, 'souris', 'souris', NULL, NULL, '2023-05-19 09:40:14', '2023-05-19 09:40:14'),
(4, 'Headset', 'headset', NULL, NULL, '2023-05-19 09:40:47', '2023-05-19 09:40:47'),
(5, 'Support Ordinateur', 'support-ordinateur', NULL, NULL, '2023-05-19 09:40:57', '2023-05-19 09:40:57'),
(6, 'Tapis de souris', 'tapis-de-souris', NULL, NULL, '2023-05-19 09:41:12', '2023-05-19 09:41:12'),
(7, 'phone', 'phone', NULL, NULL, '2023-05-19 09:41:24', '2023-05-19 09:41:24'),
(8, 'casque', 'casque', NULL, NULL, '2023-05-19 10:42:52', '2023-05-19 10:42:52'),
(10, 'clavier', 'clavier', NULL, NULL, '2023-06-21 21:47:29', '2023-06-21 21:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\Category', 1, '971258f7-b01e-404e-8879-5b62f83e8d69', 'photo', '646751f960ac4_Computer', '646751f960ac4_Computer.jpeg', 'image/jpeg', 'public', 'public', 21752, '[]', '[]', '[]', '[]', 1, '2023-05-19 09:39:54', '2023-05-19 09:39:54'),
(5, 'App\\Models\\Category', 2, '977027f5-df8b-4591-917e-03843a68378a', 'photo', '6467520d737dd_ZHI BEI DDWJ WirSS Souris - 5500DPI LED USB Optique Filaire Gaming Mouse 7 Boutons Gamer Sour___', '6467520d737dd_ZHI-BEI-DDWJ-WirSS-Souris---5500DPI-LED-USB-Optique-Filaire-Gaming-Mouse-7-Boutons-Gamer-Sour___.jpeg', 'image/jpeg', 'public', 'public', 18663, '[]', '[]', '[]', '[]', 1, '2023-05-19 09:40:14', '2023-05-19 09:40:14'),
(7, 'App\\Models\\Category', 4, 'd30164ad-d089-4524-adfe-14d65b58cf71', 'photo', '6467522ee6238_Gaming Headset for $15!     Type in code; 308RNH3E  https___amzn_to_2F235ek', '6467522ee6238_Gaming-Headset-for-$15!-----Type-in-code;-308RNH3E--https___amzn_to_2F235ek.jpeg', 'image/jpeg', 'public', 'public', 110528, '[]', '[]', '[]', '[]', 1, '2023-05-19 09:40:47', '2023-05-19 09:40:47'),
(8, 'App\\Models\\Category', 5, '3c32c1dd-2927-4722-a25c-506af04aab2b', 'photo', '64675238ca784_Laptop Stand', '64675238ca784_Laptop-Stand.jpeg', 'image/jpeg', 'public', 'public', 15785, '[]', '[]', '[]', '[]', 1, '2023-05-19 09:40:57', '2023-05-19 09:40:57'),
(9, 'App\\Models\\Category', 6, '0a6388ca-1663-4ac9-b159-a6bea1001647', 'photo', '646752479b7f2_Logitech Tapis de souris LOGITECH Power Play Multicolore  Taille unique', '646752479b7f2_Logitech-Tapis-de-souris-LOGITECH-Power-Play-Multicolore--Taille-unique.jpeg', 'image/jpeg', 'public', 'public', 9847, '[]', '[]', '[]', '[]', 1, '2023-05-19 09:41:12', '2023-05-19 09:41:12'),
(10, 'App\\Models\\Category', 7, '7f446f61-e5ac-4e38-9d18-7fd00090d75b', 'photo', '646752536b535_Buy iPhone 13 and iPhone 13 mini', '646752536b535_Buy-iPhone-13-and-iPhone-13-mini.png', 'image/png', 'public', 'public', 100454, '[]', '[]', '[]', '[]', 1, '2023-05-19 09:41:24', '2023-05-19 09:41:24'),
(15, 'App\\Models\\Product', 2, 'a74d500a-e651-4482-ab41-7e8b65bdd964', 'gallery', '6467553f3716d_Anivia T90 Gaming Mouse 9200 DPI Wired USB Computer Mice for PC Mac 8 Buttons Multi-Modes LED Lights', '6467553f3716d_Anivia-T90-Gaming-Mouse-9200-DPI-Wired-USB-Computer-Mice-for-PC-Mac-8-Buttons-Multi-Modes-LED-Lights.jpg', 'image/jpeg', 'public', 'public', 10163, '[]', '[]', '[]', '[]', 1, '2023-05-19 09:53:52', '2023-05-19 09:53:52'),
(19, 'App\\Models\\Product', 4, 'e0e07079-5755-44f0-84f1-56efb3cd98ca', 'gallery', '646757f0bb64e_96c273cd-8d0f-4cb7-bd25-69d67000be57', '646757f0bb64e_96c273cd-8d0f-4cb7-bd25-69d67000be57.jpg', 'image/jpeg', 'public', 'public', 14893, '[]', '[]', '[]', '[]', 1, '2023-05-19 10:05:23', '2023-05-19 10:05:23'),
(21, 'App\\Models\\Product', 1, 'ececc3c3-fe23-4e1b-8354-95f9d01c54af', 'gallery', '6467584679826_Lenovo ThinkBook', '6467584679826_Lenovo-ThinkBook.jpg', 'image/jpeg', 'public', 'public', 12109, '[]', '[]', '[]', '[]', 1, '2023-05-19 10:06:47', '2023-05-19 10:06:47'),
(23, 'App\\Models\\Product', 6, 'a30376a1-7221-4988-ae83-8c27469ce8c6', 'gallery', '646759b56c2fe_Logitech Tapis de souris LOGITECH Power Play Multicolore  Taille unique', '646759b56c2fe_Logitech-Tapis-de-souris-LOGITECH-Power-Play-Multicolore--Taille-unique.jpg', 'image/jpeg', 'public', 'public', 7376, '[]', '[]', '[]', '[]', 1, '2023-05-19 10:12:55', '2023-05-19 10:12:55'),
(25, 'App\\Models\\Product', 5, '0d66e907-d01e-4581-93cd-055486925d07', 'gallery', '64675a5081f0a_tapis sdjs', '64675a5081f0a_tapis-sdjs.jpg', 'image/jpeg', 'public', 'public', 11243, '[]', '[]', '[]', '[]', 1, '2023-05-19 10:15:29', '2023-05-19 10:15:29'),
(26, 'App\\Models\\Product', 7, 'e2de41a3-b3be-4a33-bfe1-04f722fe0633', 'gallery', '64675a89c4e58_Apple iPhone 13 512GB in Midnight on financing with Upfront Edge', '64675a89c4e58_Apple-iPhone-13-512GB-in-Midnight-on-financing-with-Upfront-Edge.png', 'image/png', 'public', 'public', 57221, '[]', '[]', '[]', '[]', 1, '2023-05-19 10:16:27', '2023-05-19 10:16:27'),
(27, 'App\\Models\\Category', 8, '70ddb035-2fa6-489a-b0df-d72da61b09a6', 'photo', '646760b998540_96c273cd-8d0f-4cb7-bd25-69d67000be57', '646760b998540_96c273cd-8d0f-4cb7-bd25-69d67000be57.jpg', 'image/jpeg', 'public', 'public', 14893, '[]', '[]', '[]', '[]', 1, '2023-05-19 10:42:52', '2023-05-19 10:42:52'),
(29, 'App\\Models\\Product', 8, 'e17aba46-1c6b-4b0b-a7cd-949792be21fc', 'gallery', '64676168eca17_Gaming Headset for $15!     Type in code; 308RNH3E  https___amzn_to_2F235ek', '64676168eca17_Gaming-Headset-for-$15!-----Type-in-code;-308RNH3E--https___amzn_to_2F235ek.jpeg', 'image/jpeg', 'public', 'public', 110528, '[]', '[]', '[]', '[]', 1, '2023-05-19 10:45:46', '2023-05-19 10:45:46'),
(31, 'App\\Models\\Product', 10, '46f727bc-add1-44fc-a79a-c48deaddae69', 'gallery', '64694c60ec52d_Lexonelec Wireless Mouse X8 batterie 2,4 GHz Silencieux Mute 7 couleurs LED rétroéclairé Resp___', '64694c60ec52d_Lexonelec-Wireless-Mouse-X8-batterie-2,4-GHz-Silencieux-Mute-7-couleurs-LED-rétroéclairé-Resp___.jpg', 'image/jpeg', 'public', 'public', 8926, '[]', '[]', '[]', '[]', 1, '2023-05-20 21:40:34', '2023-05-20 21:40:34'),
(33, 'App\\Models\\Product', 11, '2bc02b52-e36b-4d05-8681-9dcbce15b940', 'gallery', '64694d2a08ca8_Xirfuni Souri', '64694d2a08ca8_Xirfuni-Souri.jpg', 'image/jpeg', 'public', 'public', 7272, '[]', '[]', '[]', '[]', 1, '2023-05-20 21:43:55', '2023-05-20 21:43:55'),
(35, 'App\\Models\\Product', 12, 'd5938fd6-5b53-4966-85e7-927c415cd0e5', 'gallery', '64694e19290ee_Souris de Jeu', '64694e19290ee_Souris-de-Jeu.jpg', 'image/jpeg', 'public', 'public', 12638, '[]', '[]', '[]', '[]', 1, '2023-05-20 21:47:54', '2023-05-20 21:47:54'),
(36, 'App\\Models\\Product', 13, 'd6956522-069a-4960-97ba-c81a4144405b', 'gallery', '64695a5a61ce2_Computer', '64695a5a61ce2_Computer.jpeg', 'image/jpeg', 'public', 'public', 21752, '[]', '[]', '[]', '[]', 1, '2023-05-20 22:40:21', '2023-05-20 22:40:21'),
(37, 'App\\Models\\Product', 13, '548b096b-824b-44ff-b399-98a0356bd3be', 'gallery', '64695a636a763_Lenovo ThinkBook', '64695a636a763_Lenovo-ThinkBook.jpg', 'image/jpeg', 'public', 'public', 12109, '[]', '[]', '[]', '[]', 2, '2023-05-20 22:40:21', '2023-05-20 22:40:21'),
(38, 'App\\Models\\Product', 3, '2f6a1d81-0ac6-48c9-9559-f49a83f2f608', 'gallery', '6485febf168e1_⚡️OFFERTE AMAZON_WEB', '6485febf168e1_⚡️OFFERTE-AMAZON_WEB.jpg', 'image/jpeg', 'public', 'public', 18771, '[]', '[]', '[]', '[]', 1, '2023-06-11 16:05:08', '2023-06-11 16:05:08'),
(39, 'App\\Models\\Category', 10, '856b41cd-22f8-4eac-9a7f-5297752a1ab5', 'photo', '64937dfadda7f_Dierya DK61 Programmable 60% Mechanical Gaming Keyboard _ Gadgetsin', '64937dfadda7f_Dierya-DK61-Programmable-60%-Mechanical-Gaming-Keyboard-_-Gadgetsin.jpeg', 'image/jpeg', 'public', 'public', 24273, '[]', '[]', '[]', '[]', 1, '2023-06-21 21:47:29', '2023-06-21 21:47:29'),
(40, 'App\\Models\\Product', 14, '60640d1e-2572-4e53-a2b8-fcea8acab600', 'gallery', '64937e67c8d42_⚡️OFFERTE AMAZON_WEB', '64937e67c8d42_⚡️OFFERTE-AMAZON_WEB.jpg', 'image/jpeg', 'public', 'public', 18771, '[]', '[]', '[]', '[]', 1, '2023-06-21 21:49:14', '2023-06-21 21:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_30_011648_create_categories_table', 1),
(6, '2022_04_19_071658_create_media_table', 1),
(7, '2022_04_27_063355_create_tags_table', 1),
(8, '2022_04_28_210054_create_products_table', 1),
(9, '2022_05_05_055458_create_product_tag_table', 1),
(10, '2022_08_15_055828_create_orders_table', 1),
(11, '2022_08_16_053218_create_order_items_table', 1),
(12, '2022_08_16_053450_create_shipments_table', 1),
(13, '2022_08_16_053945_create_payments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_token` varchar(255) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_address2` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_city_id` varchar(255) DEFAULT NULL,
  `customer_province_id` varchar(255) DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) DEFAULT NULL,
  `shipping_service_name` varchar(255) DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `name` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zikokh012@gmail.com', '$2y$10$tTdNXhTrfm.Bjy5liEbSPeOWgQBFg7f0weMNQSznEwgnS67qsTxKe', '2023-05-20 20:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) DEFAULT NULL,
  `va_number` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `biller_code` varchar(255) DEFAULT NULL,
  `bill_key` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `details` text NOT NULL,
  `weight` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `quantity`, `description`, `details`, `weight`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'lenovo thinkpad', 'lenovo-thinkpad', 100, 197, 'tyu', 'zxcvbnm', '28.00', 1, '2023-05-19 09:15:50', '2023-05-19 09:45:13'),
(2, 'souris lenovo', 'souris-lenovo', 10, 20, 'ertyuiop', 'xcvnjkl', '19.00', 2, '2023-05-19 09:45:55', '2023-05-19 09:45:55'),
(4, 'dellHeadset', 'dellheadset', 20, 3, 'zxcvbnm', 'qwertyuiop', '29.00', 4, '2023-05-19 10:05:23', '2023-05-19 10:05:23'),
(5, 'Support Ordinateur', 'support-ordinateur', 399, 200, 'qwertyuiop', 'xcvbnm', '99.00', 5, '2023-05-19 10:12:11', '2023-05-19 10:12:11'),
(6, 'Tapis de souris', 'tapis-de-souris', 29, 10, 'qwertyuiop', 'zxcvbnm,.', '197.00', 6, '2023-05-19 10:12:55', '2023-05-19 10:12:55'),
(7, 'iphone 13 pro', 'iphone-13-pro', 100, 17, 'qwertyuiop', 'zxcvbnm,.', '1267.00', 7, '2023-05-19 10:16:27', '2023-05-19 10:16:27'),
(8, 'dell casque', 'dell-casque', 200, 9, 'casque gaming lenovo', 'avec mic', '16.00', 8, '2023-05-19 10:44:40', '2023-05-19 10:45:46'),
(10, 'Lexonelec Wireless Mouse', 'lexonelec-wireless-mouse', 250, 999, 'Lexonelec Wireless Mouse X8 batterie 2,4 GHz Silencieux Mute 7 couleurs LED rétroéclairé Resp', 'Lexonelec Wireless Mouse X8 batterie 2,4 GHz Silencieux Mute 7 couleurs LED rétroéclairé Resp', '300.00', 2, '2023-05-20 21:40:34', '2023-05-20 21:40:34'),
(11, 'Xirfuni Souris', 'xirfuni-souris', 100, 300, 'Xirfuni Souris de Jeu, Souris D\'ordinateur Ergonomique 6400 DPI avec 6 Niveaux de DPI Réglabl', 'Xirfuni Souris de Jeu, Souris D\'ordinateur Ergonomique 6400 DPI avec 6 Niveaux de DPI Réglabl', '119.00', 2, '2023-05-20 21:41:45', '2023-05-20 21:41:45'),
(12, 'Souris de Jeu Filaire', 'souris-de-jeu-filaire', 29, 199, 'Souris de Jeu Filaire Professionnelle 6 Boutons 3200DPI LED Optique USB Souris d\'ordinateur S', 'Souris de Jeu Filaire Professionnelle 6 Boutons 3200DPI LED Optique USB Souris d\'ordinateur S', '30.00', 2, '2023-05-20 21:45:35', '2023-05-20 21:45:35'),
(13, 'hp eliteBook', 'hp-elitebook', 100, 10, 'wertyuio', 'wertyui', '30.00', 1, '2023-05-20 22:40:21', '2023-05-20 22:40:21'),
(14, 'hp clavier', 'hp-clavier', 19, 10, 'loremmm', 'loreeeem details', '50.00', 10, '2023-06-21 21:49:14', '2023-06-21 21:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 3, NULL, NULL),
(4, 4, 5, NULL, NULL),
(5, 5, 7, NULL, NULL),
(6, 6, 4, NULL, NULL),
(7, 7, 6, NULL, NULL),
(8, 8, 8, NULL, NULL),
(10, 10, 3, NULL, NULL),
(11, 11, 3, NULL, NULL),
(12, 12, 3, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `track_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `province_id` varchar(255) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'computer', 'computer', '2023-05-19 09:14:19', '2023-05-19 09:14:19'),
(2, 'clavier', 'clavier', '2023-05-19 09:41:52', '2023-05-19 09:41:52'),
(3, 'souris', 'souris', '2023-05-19 09:41:58', '2023-05-19 09:41:58'),
(4, 'Tapis de souris', 'tapis-de-souris', '2023-05-19 09:42:05', '2023-05-19 09:42:05'),
(5, 'Headset', 'headset', '2023-05-19 09:42:11', '2023-05-19 09:42:11'),
(6, 'phone', 'phone', '2023-05-19 09:42:24', '2023-05-19 09:42:24'),
(7, 'Support Ordinateur', 'support-ordinateur', '2023-05-19 09:42:41', '2023-05-19 09:42:41'),
(8, 'casque', 'casque', '2023-05-19 10:43:12', '2023-05-19 10:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `province_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `address`, `address2`, `province_id`, `city_id`, `postcode`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$llq8HbmPvknkc6jg1PQ02uWX/r/agSSfLzJM3J5GIk893tQFAV.vq', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'ghali', 'gh@gmail.com', NULL, '$2y$10$8Ez2tLYvyGo6jH2fHne.p.p8LxjoGUsr5L4Rb8QHfQSyd7TKPFJxq', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-19 10:20:17', '2023-05-19 10:20:17'),
(5, 'issam', 'issam@gmail.com', NULL, '$2y$10$ca575oHejoz77LOXDd3Dvu15L13XVrUkOCjPvZPtwfhaEXo8oOrki', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-11 13:04:02', '2023-06-11 13:04:02'),
(6, 'marouane', 'marouane@gmail.com', NULL, '$2y$10$.WWDggvYPIpglCr6/G1t7OXSWJMGLTH7Qwmr.QZtBaAdg9pBRAiKW', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 21:16:47', '2023-06-21 21:16:47'),
(7, 'zakaria', 'zakariakharroub@gmail.com', NULL, '$2y$10$KfAJYh8UpA5WmPANN6R7cOFMXis75wQA2jsUOijN/h99Dy8GnNsNm', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 21:34:31', '2023-06-21 21:34:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_payment_token_index` (`payment_token`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_name_index` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
