-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 11:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deliver now', 'lorem-ipsum-is', '/storage/photos/1/Banner/banner-08.jpg', '<h2><span style=\"font-weight: bold; color: rgb(99, 99, 99);\">Up to 10%</span></h2>', 'active', '2020-08-13 19:47:38', '2024-01-10 09:12:32'),
(2, 'Big sale', 'lorem-ipsum', '/storage/photos/1/Banner/banner-06.jpg', '<p>Up to 90%</p>', 'active', '2020-08-13 19:50:23', '2024-01-10 09:11:42'),
(4, 'Get now', 'banner', '/storage/photos/1/beautiful-online-shop-banner-with-cute-background-free-vector.jpg', NULL, 'active', '2020-08-17 14:46:59', '2024-01-11 04:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'adidas', 'active', '2020-08-13 22:23:00', '2020-08-13 22:23:00'),
(2, 'Nike', 'nike', 'active', '2020-08-13 22:23:08', '2020-08-13 22:23:08'),
(3, 'Kappa', 'kappa', 'active', '2020-08-13 22:23:48', '2020-08-13 22:23:48'),
(4, 'Prada', 'prada', 'active', '2020-08-13 22:24:08', '2020-08-13 22:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 3, 200.00, 'new', 2, 400.00, '2020-08-14 01:15:45', '2020-08-14 01:20:45'),
(2, 7, NULL, 3, 1939.03, 'new', 1, 1999.00, '2020-08-14 01:15:59', '2020-08-14 01:20:45'),
(3, 5, NULL, 3, 3600.00, 'new', 3, 12000.00, '2020-08-14 01:16:12', '2020-08-14 01:20:45'),
(5, 8, NULL, 3, 200.00, 'new', 1, 200.00, '2020-08-15 00:39:59', '2020-08-15 00:41:00'),
(8, 9, NULL, 3, 190.00, 'new', 2, 380.00, '2020-08-15 01:44:53', '2020-08-15 01:54:53'),
(10, 10, NULL, 2, 270.00, 'new', 1, 270.00, '2020-08-17 15:07:33', '2023-12-15 00:58:22'),
(14, 11, NULL, 2, 246.60, 'new', 1, 274.00, '2023-12-15 00:56:19', '2023-12-15 00:58:22'),
(16, 10, NULL, 2, 270.00, 'new', 1, 300.00, '2023-12-15 02:02:26', '2023-12-15 02:03:06'),
(17, 11, NULL, 1, 246.60, 'new', 1, 246.60, '2023-12-15 02:37:39', '2024-01-13 06:33:07'),
(19, 9, NULL, 2, 190.00, 'new', 1, 190.00, '2023-12-24 05:06:40', '2024-01-05 05:11:15'),
(22, 26, 14, 2, 1840.00, 'new', 1, 736.00, '2024-01-11 04:17:57', '2024-01-17 05:30:57'),
(24, 28, 14, 2, 2100.00, 'new', 1, 2100.00, '2024-01-17 05:00:26', '2024-01-17 05:30:57'),
(25, 29, 15, 2, 97.50, 'new', 1, 150.00, '2024-01-17 06:17:15', '2024-01-17 06:17:43'),
(26, 28, 16, 2, 2100.00, 'new', 1, 2100.00, '2024-01-24 01:50:22', '2024-01-24 01:52:10'),
(31, 25, 21, 61, 510.00, 'new', 1, 1500.00, '2024-02-08 08:25:18', '2024-02-09 01:13:15'),
(32, 28, 20, 61, 2100.00, 'new', 1, 3000.00, '2024-02-08 08:50:51', '2024-02-08 08:53:23'),
(33, 31, 21, 61, 50.00, 'new', 1, 200.00, '2024-02-08 23:44:37', '2024-02-09 01:13:15'),
(34, 29, 21, 61, 97.50, 'new', 2, 300.00, '2024-02-09 01:11:49', '2024-02-09 01:13:15'),
(35, 20, 22, 61, 291.00, 'new', 1, 300.00, '2024-02-15 04:27:09', '2024-02-15 04:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_info` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`, `cat_info`) VALUES
(1, 'Men\'s Fashion', 'mens-fashion', NULL, '/storage/photos/1/Category/mini-banner1.jpg', 1, NULL, NULL, 'active', '2020-08-13 22:26:15', '2020-08-13 22:26:15', 'male'),
(2, 'Women\'s Fashion', 'womens-fashion', NULL, '/storage/photos/1/Category/mini-banner2.jpg', 1, NULL, NULL, 'active', '2020-08-13 22:26:40', '2020-08-13 22:26:40', 'female'),
(3, 'Kid\'s', 'kids', NULL, '/storage/photos/1/Category/mini-banner3.jpg', 1, NULL, NULL, 'active', '2020-08-13 22:27:10', '2024-01-11 00:54:44', ''),
(4, 'T-shirt\'s', 't-shirts', NULL, '/storage/photos/1/jersey.jpeg', 0, 1, NULL, 'active', '2020-08-13 22:32:14', '2023-12-15 00:39:34', 'male'),
(5, 'Jeans pants', 'jeans-pants', NULL, '/storage/photos/1/download.jpeg', 0, 1, NULL, 'active', '2020-08-13 22:32:49', '2023-12-15 00:40:22', 'male'),
(6, 'Sweater & Jackets', 'sweater-jackets', NULL, '/storage/photos/1/OIP.jpeg', 0, 1, NULL, 'active', '2020-08-13 22:33:37', '2023-12-15 00:42:52', 'male'),
(7, 'Rain Coats & Trenches', 'rain-coats-trenches', NULL, '/storage/photos/1/download (1).jpeg', 0, 2, NULL, 'active', '2020-08-13 22:34:04', '2023-12-15 00:44:11', 'male'),
(12, 'girls', 'girls', '<p><br></p>', NULL, 0, 3, NULL, 'active', '2024-01-11 00:55:59', '2024-01-11 00:55:59', 'female'),
(13, 'boys', 'boys', NULL, NULL, 0, 3, NULL, 'active', '2024-01-11 00:57:52', '2024-01-11 00:57:52', 'male'),
(14, 'shoes', 'shoes', NULL, NULL, 0, 1, NULL, 'active', '2024-01-11 02:28:45', '2024-01-11 02:28:45', 'female'),
(15, 'shoes', 'shoes-2401112918-346', NULL, NULL, 0, 2, NULL, 'active', '2024-01-11 02:29:18', '2024-01-11 02:29:18', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', '300.00', 'active', NULL, NULL),
(2, '111111', 'percent', '10.00', 'active', NULL, NULL),
(5, 'abcd', 'fixed', '250.00', 'active', '2020-08-17 14:54:58', '2020-08-17 14:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'mohamed', 'About price', 'mohamed@gmail.com', NULL, '9807009999', 'Hello sir i am from somalia.', '2020-08-14 02:25:46', '2020-08-14 02:00:01', '2020-08-14 02:25:46'),
(2, 'zayid', 'About Price', 'zayid@gmail.com', NULL, '9800099000', 'Hello i am zayid ', '2020-08-17 21:04:15', '2020-08-15 01:52:39', '2020-08-17 21:04:16'),
(3, 'abdirahman', 'lorem ipsum', 'abdirahman@gmail.com', NULL, '1200990009', 'Hello', NULL, '2020-08-17 15:15:12', '2020-08-17 15:15:12'),
(4, 'Mohamed Abdullahi Hassanc', 'order track problem', 'sayidka843@gmail.com', NULL, '01928681906', 'hello sir my order number is not working on my track search button', '2024-01-11 02:19:29', '2024-01-11 00:16:25', '2024-01-11 02:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(22, '2023_06_21_164432_create_jobs_table', 2),
(23, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(24, '2024_02_07_172349_add_phone_number_and_id_number_to_users_table', 4),
(25, '2024_02_14_180620_create_sales_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('152a566a-1b9e-4da4-ae7c-d1a39fc4f1ad', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/18\",\"fas\":\"fa-file-alt\"}', NULL, '2024-02-08 08:15:48', '2024-02-08 08:15:48'),
('1c43676b-4f8d-4db6-8e9d-5a9b4dca970e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/22\",\"fas\":\"fa-file-alt\"}', NULL, '2024-02-15 04:27:34', '2024-02-15 04:27:34'),
('20200999-6739-4b1e-9ff2-6877480cc6f8', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/9\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-10 08:47:50', '2024-01-10 08:47:50'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 01:31:21', '2020-08-15 01:31:21'),
('2e94e624-a9cc-47ae-8e74-60e402c3b883', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/15\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-17 06:17:43', '2024-01-17 06:17:43'),
('2f5171c1-405a-466a-86a0-fa49dcb906f2', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/14\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-17 05:30:56', '2024-01-17 05:30:56'),
('36cff291-538e-4423-9954-c90afa009671', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/ladies-cotton-kurti-sha\",\"fas\":\"fa-star\"}', NULL, '2023-12-15 02:29:46', '2023-12-15 02:29:46'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 01:54:52', '2020-08-15 01:54:52'),
('3f1a120a-b0d6-47ee-9631-3737e98efad1', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', NULL, '2023-12-15 00:58:22', '2023-12-15 00:58:22'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 15:13:51', '2020-08-17 15:13:51'),
('4e29193e-8f2b-458f-9d22-e0b2b9c281b6', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-11 04:22:33', '2024-01-11 04:22:33'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 01:30:44', '2020-08-14 01:12:28', '2020-08-15 01:30:44'),
('56c30279-3b63-43d3-b9c2-e2e5bc0a3c5a', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/11\",\"fas\":\"fa-file-alt\"}', '2024-01-11 04:19:32', '2024-01-11 04:18:45', '2024-01-11 04:19:32'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 01:51:02', '2020-08-15 01:51:02'),
('5da2713d-2a38-4ad1-bddc-c3c714d9559f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/17\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-24 03:12:31', '2024-01-24 03:12:31'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 01:44:07', '2020-08-15 01:44:07'),
('610d67f2-a204-4e95-98c4-959732312695', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/10\",\"fas\":\"fa-file-alt\"}', '2024-01-11 04:15:54', '2024-01-11 04:15:22', '2024-01-11 04:15:54'),
('6256ce8a-afb1-4b2b-bb83-da2aae302a9a', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/21\",\"fas\":\"fa-file-alt\"}', NULL, '2024-02-09 01:13:15', '2024-02-09 01:13:15'),
('6ab8f76f-15b8-407b-bd88-3c6b20d016fb', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/melange-casual-black\",\"fas\":\"fa-star\"}', NULL, '2023-12-10 14:25:22', '2023-12-10 14:25:22'),
('6b181103-1647-4e5f-b15f-c01361904070', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/20\",\"fas\":\"fa-file-alt\"}', NULL, '2024-02-08 08:53:23', '2024-02-08 08:53:23'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 01:11:03', '2020-08-14 01:11:03'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 01:20:44', '2020-08-14 01:20:44'),
('89ecc987-86f8-4bfc-8b3b-3d78bbe8fb4e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/8\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-05 05:11:13', '2024-01-05 05:11:13'),
('9a5c1994-a706-44f4-b39e-aff5168c5895', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2024-01-11 00:13:06', '2024-01-11 00:13:06'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', '2023-12-10 14:14:24', '2020-08-17 15:17:03', '2023-12-10 14:14:24'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-14 22:17:24', '2020-08-14 16:14:55', '2020-08-14 22:17:24'),
('b36b7a00-55d6-4d67-b43b-fdc04483a2bf', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/16\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-24 01:52:09', '2024-01-24 01:52:09'),
('b46ccd53-b245-443e-b9e7-77f135b4b385', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2024-01-11 00:11:21', '2024-01-11 00:11:21'),
('bfb14cd8-cafc-4299-8f53-f835ea73784d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', '2023-12-15 02:05:39', '2023-12-15 02:03:06', '2023-12-15 02:05:39'),
('c224c570-aa53-4a43-b6e1-72865e66bd98', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/13\",\"fas\":\"fa-file-alt\"}', NULL, '2024-01-13 06:33:06', '2024-01-13 06:33:06'),
('c99a7ec3-2e3c-493f-b755-71aeddf688cc', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/19\",\"fas\":\"fa-file-alt\"}', NULL, '2024-02-08 08:25:48', '2024-02-08 08:25:48'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 01:08:50', '2020-08-14 01:08:50'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 00:40:54', '2020-08-15 00:40:54'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 15:08:16', '2020-08-17 15:08:16'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 15:13:29', '2020-08-17 15:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` enum('cod','paypal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `status`, `first_name`, `last_name`, `email`, `phone`, `country`, `post_code`, `address1`, `address2`, `created_at`, `updated_at`) VALUES
(14, 'ORD-CXJOGCJBQ2', 2, 5176.00, NULL, NULL, 5176.00, 8, 'paypal', 'paid', 'delivered', 'Mohamed Abdullahi', 'Hassan', 'sayidka843@gmail.com', '01928681906', 'BD', '1212', 'H22 R11 sayednagor block A', NULL, '2024-01-17 05:30:55', '2024-01-24 13:19:58'),
(15, 'ORD-VRXGBXUMBW', 2, 150.00, NULL, NULL, 150.00, 1, 'cod', 'unpaid', 'new', 'Mohamed', 'Hassanc', 'sayidka843@gmail.com', '01928681906', 'BD', '1207', 'Chadudan 1', 'Gjft', '2024-01-17 06:17:43', '2024-01-17 06:17:43'),
(16, 'ORD-QK7KDMHL7S', 2, 2100.00, 3, NULL, 2140.00, 1, 'paypal', 'paid', 'new', 'Mohamed', 'Hassan', 'sayidka843@gmail.com', '01621304640', 'BD', '1212', 'sayednagor dhaka', 'fefessd', '2024-01-24 01:52:08', '2024-01-24 01:52:08'),
(17, 'ORD-EML1RBDOMT', 2, 1164.00, 3, NULL, 1204.00, 1, 'paypal', 'paid', 'new', 'Mohamed', 'Hassan', 'sayidka843@gmail.com', '01621304640', 'BD', '1212', 'sayednagor dhaka', 'fefessd', '2024-01-24 03:12:30', '2024-01-24 03:12:30'),
(20, 'ORD-AWI5FICQYN', 61, 3000.00, 3, NULL, 3040.00, 1, 'cod', 'unpaid', 'new', 'Mohamed', 'Hassanc', 'sayidka843@gmail.com', '01928681906', 'BD', '1207', 'Chadudan 1', 'Gjft', '2024-02-08 08:53:23', '2024-02-08 08:53:23'),
(21, 'ORD-6OKISJBMT4', 61, 8000.00, 4, NULL, 8050.00, 5, 'cod', 'unpaid', 'new', 'Mohamed', 'Hassanc', 'sayidka843@gmail.com', '01928681906', 'BD', '1207', 'Chadudan 1', 'Gjft', '2024-02-09 01:13:15', '2024-02-09 01:13:15'),
(22, 'ORD-ACMVXF0AV1', 61, 300.00, 4, NULL, 350.00, 1, 'cod', 'unpaid', 'new', 'Mohamed', 'Hassanc', 'sayidka843@gmail.com', '01928681906', 'BD', '1207', 'Chadudan 1', 'Gjft', '2024-02-15 04:27:34', '2024-02-15 04:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sayidka843@gmail.com', '$2y$10$Hfwe9sNJs359V2qCzAfcW.UujRtLxuDl4jpv/ffZ0i12C9sZHvanm', '2024-02-05 05:19:45'),
('diu56day@gmail.com', '$2y$10$oo2Deb6AkDxjazbwE9PLIu.SLMoftCg8k44abwaOB0D.svc1tPPD2', '2024-02-07 06:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Style Resolutions: 13 Ways To Look & Dress Better In 2024', 'the-standard-lorem-ipsum-passage-used-since-the-1500s', '<p style=\"text-align: justify; \">style</p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-weight: 400; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">As we turn the page on a rather turbulent year, there’s never been a better time for a personal overhaul. A new year means a clean slate, and a valuable opportunity to put past mistakes behind you and form better habits.</p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-weight: 400; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">In our humble opinion, your wardrobe and personal care habits are good places to start. Which is why we’ve pulled together a handy list of style and grooming resolutions that every man can benefit from. Thank us on 31 December.</p></h3><h2 style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">Out With The Old…</h2><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">The beginning of a new year is the perfect time to take a deep dive into your wardrobe (not literally) and have a proper clear-out. And we mean proper. Be brutal. If there are garments in there that haven’t been worn since this time last year, get rid of them to make room for things you will wear. Your local charity shop, clothing recycling service or even someone on eBay will be able to put the stuff you aren’t using to good use, and you’ll feel better for it.</p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">If you can’t face the challenge just yet, try this handy trick: turn all of the hangers in your wardrobe the same way round; after you wear something, put it back in your wardrobe with the hanger the opposite way around. After a few months, you’ll be able to see which clothes aren’t being worn as they’ll be the only ones that won’t have been turned.</p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">While the beginning of the year is a good time to rid yourself of old things, it’s also the perfect time to update, upgrade and reinvent. Now that you have some extra space in your wardrobe, it’s time to fill it with some new clothes and start your year off on the right track, from a style standpoint at least.</p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">The January sales are great for picking up premium pieces at bargain prices but put some real thought in before buying. Impulse purchases (see below) tend to be the things that get worn least, so have a think and shop for timeless garments that you know you’re going to get a lot of use out of. It’s good for your wallet, and for the planet too.</p><h2 style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">Avoid Impulse Buys</h2><div><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">Anyone who has walked along their local high street (or has an email address) will have noticed that the ‘January Sales’ are anything but these days. There were November sales. December sales. Boxing Day sales (which started Christmas Eve). And now, January clearance sales. All of these events provide an extremely tantalising opportunity to splash out on what in the moment feels like a bargain. However, this year, make an effort to really consider your purchases before splashing out.</p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; font-size: 1.3rem; line-height: 1.6; font-family: minion-pro, serif; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\">Does it honestly fit? Do you really love it? Are you only buying it because you like other pieces by the brand? A good rule of thumb is to contemplate whether you would buy the item at full price. If so, you’re getting a genuine bargain; if not, you’ve likely just talked yourself into the purchase</p></div><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p><p style=\"border-width: 0px; border-style: solid; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-border-opacity: 1; --tw-shadow: 0 0 #0000; --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; margin-right: 0px; margin-bottom: 1.8rem; margin-left: 0px; font-size: 2.6rem; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; clear: both; text-transform: capitalize; font-family: minion-pro, serif; padding-top: 0.75rem; text-rendering: optimizelegibility !important; -webkit-font-smoothing: antialiased !important;\"><br></p>', NULL, '/storage/photos/1/brock-mcgoff.jpg', '', 3, NULL, 3, 'active', '2024-01-04 20:59:33', '2024-01-10 23:45:22'),
(5, 'Travel Outfits: How to Look Chic When You’re Flying', 'the-standard-lorem-ipsum-passage', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;travel outfits and Quides</span></font></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p class=\"has-text-align-left\" style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">Listen—I’m all about rocking a&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/best-tote-bags-for-travel/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">cute travel outfit</a>&nbsp;when I’m&nbsp;<a href=\"https://www.lindsaysilberman.com/what-to-pack-for-beach-vacation/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">heading out of town</a>…but I wouldn’t be caught dead wearing heels&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/best-tote-bags-for-travel/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">to the airport</a>.</p><p class=\"has-text-align-left\" style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">To be honest, I don’t even like wearing jeans on a plane (although I’ll occasionally make an exception if they’re&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/most-flattering-jeans-for-women/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">REALLY comfortable jeans</a>, or if my flight is under three hours.)</p><p style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">Usually you’ll find me rocking a head-to-toe set of my&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/naadam-cashmere-review/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">favorite affordable cashmere</a>&nbsp;during the winter, and&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/most-comfortable-loungewear/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">a lightweight loungewear set</a>&nbsp;during the summer.</p><p class=\"has-text-align-left\" style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">I often see pictures of bloggers at the airport posing next to their&nbsp;<a href=\"https://www.lindsaysilberman.com/travel/best-carry-on-luggage/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">cute pink luggage</a>&nbsp;wearing like…wedges and a mini-dress. HARD PASS. How is that even comfortable? When you’re en route to the airport (and your final destination) it’s all about feeling comfortable.</p><p style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">For this reason, I decided to put together&nbsp;<span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-weight: 700;\">a little guide to cute travel outfits…featuring things that you’ll actually want to travel in</span>, whether you’re heading out for&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/what-to-wear-in-aspen/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">a winter getaway</a>&nbsp;or&nbsp;<a href=\"https://www.lindsaysilberman.com/travel/best-girls-trip-destinations/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">a girls trip</a>.</p><p style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">Because believe it or not, it’s possible to rock&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/most-comfortable-loungewear/\" target=\"_blank\" rel=\"noopener noreferrer follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">comfy loungewear</a>,&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/what-to-wear-with-leather-leggings/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">leggings</a>, or a jumpsuit and still look SUPER chic, as long as you style them properly (especially my favorite&nbsp;<a href=\"https://www.lindsaysilberman.com/lifestyle/what-to-wear-with-leather-leggings/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">faux leather leggings</a>.)</p><p class=\"has-text-align-left\" style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">Below are a handful of great travel outfits I found while trolling IG—and the exact things you can buy to replicate them.</p><p class=\"has-text-align-left\" style=\"margin-right: 0px; margin-bottom: 1.65em; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 18px; line-height: 1.8; font-family: Karla; font-weight: 400; color: rgb(31, 32, 37);\">(Also: if you’re also on the hunt for&nbsp;<a href=\"https://www.lindsaysilberman.com/travel/best-carry-on-luggage/\" target=\"_blank\" rel=\"noopener noreferrer follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">stylish carry-on luggage</a>&nbsp;or if you need some good&nbsp;<a href=\"https://www.lindsaysilberman.com/travel/best-amazon-travel-items/\" target=\"_blank\" rel=\"noreferrer noopener follow\" data-wpel-link=\"internal\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: rgb(31, 180, 176); box-shadow: rgb(31, 180, 176) 0px -1px 0px inset;\">go-to travel toiletries</a>…I got you covered.)</p></h3>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p>', '/storage/photos/1/Blog/blog2.jpg', 'Enjoy,2024,', 1, NULL, 31, 'active', '2024-01-11 00:58:45', '2024-01-10 23:30:02'),
(6, 'E-commerce is Dead, Digital Commerce is Here to Stay!', 'lorem-ipsum-is-simply', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>E commerce</b></span></font></p>', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">E- commerce “the King” of online business is considered to be dead today. Once revolutionized the whole online platform is now on the verge of being obsolete. Technologies follow the trend of change and development, since decades. Once reaches its peak and just in a few years gets obsolete. From the past three decades, E-commerce has m</span><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">﻿</span><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">etamorphosized the whole market scenario.</span></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">Whether its sales and purchase, money transaction, inventory management or marketing. It has been responsible for market globalization and helped companies like- Amazon, Alibaba and e-bay to reach its pinnacle and become global leaders. But as the market changes, customer behavior and response also change, completion comes into force resulting into technological shift and exactly what has happened with E-Commerce.</span></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">It needed some revamp and digital commerce is born, popular as D- Commerce. It has been a technological as well as alphabetical shift in the online format; E- commerce to D-commerce.</span></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><b><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">What is Digital Commerce (D- Commerce)?</span></b></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">Like e- commerce, D-commerce is also an online format for selling, delivering and purchasing goods online but the difference is D- commerce deals with digital goods only, it doesn’t include tangible goods and its services. Digital commerce products include; digital assets, learning courses, e-books, online audio and videos, web development and mobile application development etc. D-commerce is popular with the companies involved in selling news, documents, software etc. It also includes online payment collections, handling customer refunds and billing of products.</span></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">Why shift has initiated?</span></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">Consumer is the reason this shift has initiated, today consumers have the taken driver’s seat in the market. Now each consumer is smarter, analytical and expect seamless services online as well as offline. With hands on technologies at their disposal, most of the purchase and product analysis before purchase is done on their smartphone. It has been found that around one in four product purchase is done by consumers through smartphones. Smarter customer and enormous market competition have led companies to drive their business according to the needs and demands of the modern buyer.</span></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><span style=\"font-family: &quot;Segoe UI Symbol&quot;;\">If you want to be ahead, you will have to analyze, what services a consumer wants from you? even before they ask for and this trend is on the rise. By 2020 it has been reported that 70 million households will add up in online consumer list and most of them will be under 30 years of age.</span><br>In this paradigm the e-commerce is lagging to analyze consumer demands and solving problems of each consumer with varied approach.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\"><b>E- commerce vs D- commerce</b></p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">Although, working pattern of D-commerce sounds similar to its predecessor E-commerce but it has many significant differences.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">o E- commerce includes both tangible and non- tangible products ranging from clothes to software. Whereas, D-commerce deals only with tangible products like- mobile app development, selling of software, online learning solution etc.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">o Unlike e-commerce digital commerce offers passive income in a lower overhead expenditure.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">o Marketing patterns for the digital products is pretty much different from that of products of e-commerce, as target audiences are different.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">o Payment mode of D-commerce products is either advance or online. Hence, transaction issues fall almost null.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">Digital Commerce and Its Edge Over E-commerce</p></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><ul></ul><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">Summing Up</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">D-commerce needs meaningful engagement for consumers in every mode. Analyse straight or cross channel leads to enhance customers understanding about products and services. D-commerce platform develops and serve right content at the right time enhancing brand image and awareness.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">D-commerce’s advantage and problem-solving approach has made it as a replacement of E-commerce in digital format, and surely its needed looking into changing customer behavior and response. In today’s market scenario, where customer is the king its vital to fulfill customer’s demand and to stay ahead.</p><p style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">Syncrasy is a Global IT Solutions company with major competence on Pimcore Digital Experience Platform. We are a Pimcore Gold Partner with one of the largest and most experienced development teams that has delivered multiple projects on the Pimcore ecosystem including PIM, DAM, CMS and E-commerce for businesses across industry verticals.</p><p style=\"margin-bottom: 0px; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">We also work on cutting-edge technologies including Blockchain and Salesforce.</p></p><ul><li style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">Digital commerce possesses unique functionality and due to a customized format, it surpasses e- commerce in many ways.</li><li style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">With only non- tangible goods included, issues like – product damage, wears &amp; tears and other similar issues are eliminated.</li><li style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">&nbsp;D- commerce marketing is done in digital format which is a low risk offering providing easy refund and other payment related issues.</li><li style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">&nbsp;Automation of selling process can be done very easily on D-commerce sites and easy expansion is possible on its affiliate sites.</li><li style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">&nbsp;D- commerce products are free from physical storage issues like warehouse, inventory and shipping management which is troublesome task for any e-commerce sites.</li><li style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">&nbsp;Delivery related issues are nullified as online delivery system is adopted.</li><li style=\"margin: 0 0 var(--content-rhythm) 0; color: rgb(23, 23, 23); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">&nbsp;Payments for the purchase of D-commerce products are made online or in advance so payment related issues minimize.</li></ul>', NULL, '/storage/photos/1/ecommerce3-1.jpg', '', 6, NULL, 33, 'active', '2024-01-13 14:54:19', '2024-01-24 13:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Travel', 'contrary', 'active', '2020-08-13 19:51:03', '2020-08-13 19:51:39'),
(2, 'Electronics', 'richard', 'active', '2020-08-13 19:51:22', '2020-08-13 19:52:00'),
(3, 'Cloths', 'cloths', 'active', '2020-08-13 19:52:22', '2020-08-13 19:52:22'),
(4, 'enjoy', 'enjoy', 'active', '2020-08-13 21:16:10', '2020-08-13 21:16:10'),
(5, 'Post Category', 'post-category', 'active', '2020-08-15 00:59:04', '2020-08-15 00:59:04'),
(6, 'development', 'developement', 'active', '2024-01-10 23:31:32', '2024-01-10 23:49:51'),
(7, 'Bangladesh', 'bangladesh', 'active', '2024-01-10 23:50:04', '2024-01-10 23:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `status`, `replied_comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Testing comment edited', 'active', NULL, NULL, '2020-08-14 01:08:42', '2020-08-15 00:59:58'),
(2, 3, NULL, 'testing 2', 'active', NULL, 1, '2020-08-14 01:11:03', '2020-08-14 01:11:03'),
(3, 2, NULL, 'That\'s cool', 'active', NULL, 2, '2020-08-14 01:12:27', '2020-08-14 01:12:27'),
(4, 1, NULL, 'nice', 'active', NULL, NULL, '2020-08-15 01:31:19', '2020-08-15 01:31:19'),
(5, 3, 5, 'nice blog', 'active', NULL, NULL, '2020-08-15 01:51:01', '2020-08-15 01:51:01'),
(6, 2, 3, 'nice', 'active', NULL, NULL, '2020-08-17 15:13:29', '2020-08-17 15:13:29'),
(8, NULL, 5, 'woow great post', 'active', NULL, NULL, '2024-01-11 00:11:20', '2024-01-11 00:11:20'),
(9, NULL, 3, 'what a meaningful post', 'active', NULL, NULL, '2024-01-11 00:13:06', '2024-01-11 00:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Enjoy', 'enjoy', 'active', '0000-00-00 00:00:00', '2024-01-13 19:53:52'),
(2, '2024', '2024', 'active', '2024-01-13 19:54:09', '2024-01-13 19:54:09'),
(3, '', 'visit-nepal-2020', 'active', '2024-01-13 19:54:33', '2024-01-13 19:54:33'),
(4, 'Tag', 'tag', 'active', '2020-08-15 00:59:31', '2020-08-15 00:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender_info` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`, `gender_info`) VALUES
(5, 'Cotton High Quality Kurt', 'cotton-high-quality-kurt', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', '/storage/photos/1/Products/0455e-c1.jpg,/storage/photos/1/Products/04ec4-pmtk001t.jpg,/storage/photos/1/Products/086c2-a1.jpg,/storage/photos/1/Products/09a16-mpd000t_6.jpg,/storage/photos/1/Products/0c2d2-wbk012c-royal-blue.jpg', 0, 'M,XL', 'new', 'active', 4000.00, 10.00, 1, 3, NULL, 3, '2020-08-14 00:10:52', '2020-08-14 03:37:36', 'male'),
(7, 'GRAY BABY ROMPERS', 'gray-baby-rompers', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their du</p>', '/storage/photos/1/Products/08ec9-n3.jpg,/storage/photos/1/Products/07e30-mtk006b.jpg,/storage/photos/1/Products/18b18-wbk003b.jpg', 0, 'L', 'hot', 'active', 400.00, 3.00, 0, 3, NULL, 1, '2020-08-14 00:23:33', '2024-01-10 22:33:53', 'male'),
(8, 'Baby Girls\' 2-Piece Yell', 'baby-girls-2-piece-yell', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their du</p>', '/storage/photos/1/Products/calvin-klein.jpg,/storage/photos/1/Products/calvin.jpg,/storage/photos/1/Products/d3fdb-image2xxl-4-.jpg', 1, 'S', 'hot', 'active', 200.00, 0.00, 0, 3, 12, 2, '2020-08-14 00:25:42', '2024-01-16 03:28:35', 'female'),
(9, 'Green hodie', 'lorem-ipsum-is-simply', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">orem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">orem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">orem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '/storage/photos/1/Products/2f92d-green.jpg', 3, 'S,M,XL', 'hot', 'active', 200.00, 5.00, 0, 1, NULL, 3, '2020-08-15 00:52:44', '2024-01-17 12:10:59', 'male'),
(10, 'Abaya', 'lorem-ipsum-is-simply-2008183507-655', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '/storage/photos/1/Products/01f42-pwt004b.jpg,/storage/photos/1/Products/02090-pms003a.jpg,/storage/photos/1/Products/032f0-image3xxl-1-.jpeg', 2, 'L,XL', 'hot', 'active', 299.00, 10.00, 1, 2, NULL, 3, '2020-08-17 14:50:07', '2024-02-08 09:13:45', 'female'),
(11, 'new full sleeve jersey men', 'new-full-sleeve-jersey-men', '<p>it is good</p>', '<p><span style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: 15.84px;\">Cool Spring mornings and crisp Fall days need that right balance between breathability and warmth. This is where our Long Sleeve jersey’s Thermal Tech comes into it’s own. Details like compression cuffs and full length hidden zipper bring our long sleeve to the front of the pack.</span><br></p>', '/storage/photos/1/jersey.jpeg', 6, 'S,M,L,XL', 'hot', 'active', 274.00, 10.00, 1, 1, NULL, NULL, '2023-12-15 00:37:52', '2024-01-17 12:58:47', 'male'),
(13, 'gray shoes adidas model', 'gray-shoes-adidas-model', '<p>its well and decorated shoes</p>', '<p>&nbsp;</p>', '/storage/photos/1/Products/4319c-image4xxl-1-.jpg', 20, '', 'new', 'active', 1800.00, 5.00, 1, 1, NULL, 1, '2024-01-10 22:37:26', '2024-01-10 22:37:26', 'male'),
(14, 'girl baby dress', 'girl-baby-dress', '<p>baby girls top</p>', NULL, '/storage/photos/1/kid/d8746bba36a950af9a9720f919d87c87.jpg', 50, '', 'hot', 'active', 320.00, 5.00, 1, 3, 12, NULL, '2024-01-11 00:42:41', '2024-01-16 03:28:59', 'female'),
(20, 'baby boy\'s sweater', 'baby-boys-sweater', 'it is styled baby boy\'s sweater&nbsp;', NULL, '/storage/photos/1/kid/ca0ad8ed1d4f8c246a12d74fd9c64d46.jpg', 30, '', 'hot', 'active', 300.00, 3.00, 1, 3, 13, NULL, '2024-01-11 01:05:44', '2024-01-16 03:26:29', 'male'),
(25, 'sandal shoes', 'sandal-shoes', '<p>absolute traditional sandal shoes<br></p>', NULL, '/storage/photos/1/mens/shoes5.jpg', 30, '', 'hot', 'active', 1500.00, 66.00, 1, 1, NULL, NULL, '2024-01-11 02:38:04', '2024-01-17 02:53:54', 'male'),
(26, 'adidas white shoes', 'adidas-white-shoes', '<p>adidas white shoes</p>', NULL, '/storage/photos/1/mens/sh2.jpg', 16, '', 'hot', 'active', 2300.00, 68.00, 1, 1, NULL, 1, '2024-01-11 02:40:26', '2024-02-08 08:57:46', 'male'),
(28, 'NIKE Air jordan', 'nike-air-jordan', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 12px;\">The Nike SB x Air Jordan 4 Retro SP \'Pine Green\' offers a skateboarding-inspired take on the iconic silhouette. The shoe\'s leather upper in off-white is complemented by a forefoot overlay light grey suede for added durability. Hits of green can be found on the molded eyelets and heel tab, which displays Nike SB branding. The Flight tongue tag provides a striking pop of color with a crimson Jumpman. The sneaker\'s foam midsole incorporates an exposed Air-sole unit in the heel and rides on a gum outsole.</span><br></p>', NULL, '/storage/photos/1/shoes11.jpg', 27, 'S,M,L,XL', 'hot', 'active', 3000.00, 30.00, 1, 1, NULL, 2, '2024-01-11 02:28:12', '2024-02-08 08:57:46', 'male'),
(29, 'baby boy shirt', 'baby-boy-shirt', '<p>its cool shirts</p>', NULL, '/storage/photos/1/kid/9e2ee40dd797e1fda0aebff67f729ee1.jpg', 20, 'S,M,L,XL', 'hot', 'active', 150.00, 35.00, 1, 3, 13, NULL, '2024-01-11 01:00:12', '2024-01-17 02:52:41', 'male'),
(30, 'Newborn Toddler Baby Boys Girls Kids', 'newborn-toddler-baby-boys-girls-kids', '<p><span style=\"color: rgb(70, 71, 74); font-family: Bogle, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 700;\">As The Picture ShowNew in Fashion,&nbsp;</span><font color=\"#46474a\" face=\"Bogle, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Newborn Toddler Baby Boys Girls Kids</b></span></font><br></p>', NULL, '/storage/photos/1/kid/Newborn Toddler.jpeg', 20, '', 'hot', 'active', 120.00, 65.00, 1, 3, 12, NULL, '2024-01-11 00:53:32', '2024-01-17 02:52:29', 'female'),
(31, 'BUBBLE GUMMERS SOFTY Baby Shoe', 'bubble-gummers-softy-baby-shoe', '<p><span style=\"color: rgb(45, 45, 45); font-family: Montserrat-Regular; font-size: 14px; letter-spacing: 0.28px;\">These durable shoes are part of the Bubblegummers\' slip-on collection to keep your kids\' rapidly growing feet well cared for &amp; stylish. Whether it\'s for playtime, gym class...</span><br></p>', NULL, '/storage/photos/1/kid/baby shoes.jpeg', 40, '', 'hot', 'active', 200.00, 75.00, 1, 3, NULL, NULL, '2024-01-11 00:47:56', '2024-01-17 03:00:04', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT 0,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, NULL, 5, 'nice', 'active', '2023-12-10 14:25:22', '2023-12-10 14:25:22'),
(4, 1, NULL, 5, 'nbviusbpgv  uobpyqu;fj[bpv7g [8ug y[fu357 ygu', 'active', '2023-12-15 02:29:46', '2023-12-15 02:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Eshop   your go-to destination for premium men\'s and women\'s fashion and unbeatable shopping experiences. Explore a curated selection in Eshop that combines style, quality, and affordability. At  Eshop , we believe in making every purchase memorable, offering a seamless online shopping journey from browse to doorstep.', 'Welcome to E commerce your go-to destination for premium men\'s and women\'s fashion and unbeatable shopping experiences. Explore a curated selection in E commerce that combines style, quality, and affordability. At  E commerce , we believe in making every purchase memorable, offering a seamless online shopping journey from browse to doorstep.', '/storage/photos/1/logo.png', '/storage/photos/1/blog3.jpg', 'Sayednagor , Block A ,East Vatara  ,Dhaka-1212', '+8801621304640', 'ecommercekaizen@gmail.com', NULL, '2024-09-10 02:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dhanmondi', '100.00', 'active', '2020-08-13 22:22:17', '2023-12-24 05:30:58'),
(2, 'Gazipur', '200.00', 'active', '2020-08-13 22:22:41', '2023-12-24 05:31:14'),
(3, 'Gulshan', '40.00', 'active', '2020-08-15 00:54:04', '2024-01-17 13:00:31'),
(4, 'mirpur', '50.00', 'active', '2020-08-17 14:50:48', '2023-12-24 05:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male',
  `id_number` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`, `gender`, `id_number`, `phone_number`) VALUES
(1, 'Admin', 'admin@gmail.com', '2024-09-10 02:26:14', '$2y$10$GOGIJdzJydYJ5nAZ42iZNO3IL1fdvXoSPdUOH3Ajy5hRmi0xBmTzm', NULL, NULL, '/storage/photos/1/admin.png', 'admin', NULL, NULL, 'active', 'k1O71be0CajTBbmEVn5LK7EUC8N7MgwUdGmZsTJXpqqE9UchP6pK0ITpOii9', NULL, '2024-09-10 02:26:14', 'male', NULL, NULL),
(2, 'User', 'user@gmail.com', '2024-02-16 12:12:47', '$2y$10$10jB2lupSfvAUfocjguzSeN95LkwgZJUM7aQBdb2Op7XzJ.BhNoHq', NULL, NULL, '/storage/photos/1/admin.png', 'user', NULL, NULL, 'active', NULL, NULL, '2024-02-16 12:12:47', 'female', NULL, NULL),
(3, 'abdirahman', 'abdirahman@gmail.com', '0000-00-00 00:00:00', '$2y$10$15ZVMgH040v4Ukf9KSAFiucPJcfDwmeRKCaguVJBXplTs93m48F1G', NULL, NULL, '/storage/photos/1/abdi.JPG', 'user', NULL, NULL, 'active', NULL, '2020-08-10 22:20:58', '2023-12-15 00:47:10', 'male', NULL, NULL),
(31, 'Safiyo Mohamed Sharif', 'safiyo@gmail.com', NULL, '', NULL, NULL, NULL, 'user', NULL, NULL, 'active', NULL, '2024-01-10 22:51:57', '2024-01-10 22:51:57', 'female', NULL, NULL),
(33, 'mohamed abdirahman adam', 'shifo@gmail.com', NULL, '$2y$10$hXxEVJXGc1Ymec4ILcv6L.IiqyKhgNtt09lh.WIKBPzpiLPh7.5tS', NULL, NULL, NULL, 'user', NULL, NULL, 'active', NULL, '2024-01-24 13:26:14', '2024-01-24 13:26:14', 'male', NULL, NULL),
(42, 'Mohamed Abdullahi Hassan', 'zayidka843@gmail.com', NULL, '$2y$10$i096wfbdD2sCDPCAMoqZRu.3UuwrlLdx835ugEltAba4duqPvEqZa', NULL, NULL, NULL, 'user', NULL, NULL, 'active', NULL, '2024-02-05 05:22:46', '2024-02-05 05:22:46', 'male', NULL, NULL),
(58, 'Mohamed Abdullahi Hassan', 'diu56day@gmail.com', NULL, '$2y$10$nsGS2of.R87Qu1NNZq7vv.HUf5bh7ohyeNByr0ATqqWxTLRIVqb.y', NULL, NULL, NULL, 'user', NULL, NULL, 'active', NULL, '2024-02-07 11:33:36', '2024-02-08 07:48:04', 'male', NULL, NULL),
(60, 'Mohamed Abdullahi Hassan', 'sayidka111@gmail.com', NULL, '$2y$10$K9FlJ.oj99LRvAQrwSZb8O1Ic2spKeL.dRRF8DRvWPz13uMX1pR2S', NULL, NULL, NULL, 'user', NULL, NULL, 'active', NULL, '2024-02-07 23:45:57', '2024-02-07 23:45:57', 'male', NULL, NULL),
(61, 'Mohamed Abdullahi Hassan', 'sayidka843@gmail.com', '2024-02-15 04:26:47', '$2y$10$KecFIfqt9rNJUCVyq0gV2OEMXO3KAt3BvyIjM/KzGriJEKgVeMVMy', NULL, NULL, NULL, 'user', NULL, NULL, 'active', NULL, '2024-02-08 07:49:47', '2024-02-15 04:26:47', 'male', NULL, NULL),
(62, 'Shariful Islam', 'sharifulfall@gmail.com', NULL, '$2y$10$A7gKVqRBBSSr7Yypy2WsWeDMrBU4AdWqX/LLUWVyoaR0aGYHwerom', NULL, NULL, NULL, 'user', NULL, NULL, 'active', NULL, '2024-02-09 03:07:17', '2024-02-09 03:14:35', 'male', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `cart_id`, `user_id`, `price`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(4, 10, 19, 2, 270.00, 1, 270.00, '2023-12-15 02:02:18', '2023-12-24 05:06:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
