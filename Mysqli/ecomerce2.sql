-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2021 at 03:58 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomerce2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Adidas', 'Good', 1, '2021-03-10 03:23:36', '2021-03-10 03:23:36'),
(7, 'ASICS', 'well', 1, '2021-03-10 03:24:18', '2021-03-10 03:24:18'),
(8, 'Samsung', 'well', 1, '2021-03-10 03:24:42', '2021-03-10 03:24:42'),
(9, 'Nokia', 'well', 1, '2021-03-10 03:24:57', '2021-03-10 03:24:57'),
(10, 'Xiaomi', 'well', 1, '2021-03-10 03:25:07', '2021-03-10 03:25:07'),
(11, 'Saymphoni', 'well', 1, '2021-03-10 03:25:29', '2021-03-10 03:25:29'),
(12, 'I-phone', 'well', 1, '2021-03-10 03:25:51', '2021-03-10 03:25:51'),
(13, 'Dorothy Perkins', 'well', 1, '2021-03-10 03:26:40', '2021-03-10 03:26:40'),
(14, 'Arong', 'well', 1, '2021-03-10 03:26:57', '2021-03-10 03:26:57'),
(15, 'Local Product', 'well', 1, '2021-03-10 03:27:09', '2021-03-10 03:27:09'),
(16, 'Dorjibari', 'Well', 1, '2021-03-10 03:27:55', '2021-03-10 03:27:55'),
(17, 'Kay Kraft', 'Well', 1, '2021-03-10 03:28:07', '2021-03-10 03:28:07'),
(18, 'Yellow', 'Well', 1, '2021-03-10 03:28:25', '2021-03-10 03:28:25'),
(19, 'Richman', 'Well', 1, '2021-03-10 03:28:37', '2021-03-10 03:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Sports', 'No Warrenty Avaliable', 1, '2021-03-10 03:20:30', '2021-03-10 03:20:30'),
(11, 'Mobile Cover', 'No Warrenty Avalivalle', 1, '2021-03-10 03:21:10', '2021-03-10 03:21:10'),
(12, 'Women-Dress', 'No Warrenty Avalivalle', 1, '2021-03-10 03:21:30', '2021-03-10 03:21:30'),
(13, 'Headfone', 'No Warrenty Avalivalle', 1, '2021-03-10 03:21:50', '2021-03-10 03:21:50'),
(14, 'Mobile', 'Warrenty Avalivalle', 1, '2021-03-10 03:22:09', '2021-03-10 03:22:09'),
(15, 'Man Collection', 'No Warrenty Avalivalle', 1, '2021-03-10 03:22:25', '2021-03-10 04:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `created_at`, `updated_at`) VALUES
(6, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', '$2y$10$/GZA5ooHSuRzNFNahzqcX.aErYT.5HiP8Ydic7CogtpDw6HMUJQxi', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 12:52:50', '2021-03-02 12:52:50'),
(7, 'Rakib', 'spider29@gmail.com', '018736256', '$2y$10$zKpA/ouXe.oJuUBjXeSThOX7atynrwaiX0x5HnvZgeS8gUJfEvTXm', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 06:35:21', '2021-03-03 06:35:21'),
(8, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', '$2y$10$FhVvgjF/iPBcnn2vZnAIOOYT2K41bIzA1vsBNvj1gIE9V271aW10e', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 13:40:00', '2021-03-03 13:40:00'),
(9, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', '$2y$10$yNqMAl9m0EAX6kHvSBfLK.6tzLQ.8Mm1tnuVDY39kclhh80xm4nvK', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 14:05:13', '2021-03-03 14:05:13'),
(10, 'Rajib', 'rajib@gmail.com', '01878597384', '$2y$10$9TdFobHtpPEPMrE96KfujeQZn4zzHGhZ6xXyPFliFXiNz1Ue0hrXe', 'Dhaka', '2021-03-03 19:08:15', '2021-03-03 19:08:15'),
(11, 'Rajnto', 'sabbir29@gmail.com', '01706735774', '$2y$10$eFeEU/ziH9VoOazGkzkoqOEzCyF68Af1UcJNIlrO7Li8lshXfgSBy', 'Dhaka, Bangladesh', '2021-03-04 05:32:00', '2021-03-04 05:32:00'),
(12, 'Bangladesh', 'sabbir249@gmail.com', '01706735774', '$2y$10$JaHyDwKIgMiOQKUq2yPQBe/OlPB6kZboOhgbBqniI9gZz2V8jgmGK', 'Dhaka', '2021-03-05 07:20:08', '2021-03-05 07:20:08'),
(13, 'Md Sabbir Hossain', 'sabbir295@gmail.com', '01878597384', '$2y$10$4N6fx6JQTluaDzUPdZk0cuQ9GkT7Owbc5CPWS1mCl7Hmy7yHk5Fg2', 'Dhaka', '2021-03-05 08:11:12', '2021-03-05 08:11:12'),
(14, 'Local Product', 'superadmin@gmail.com', '01706735774', '$2y$10$bGE0KuyjuRmLk9qF08RysupWHJk6XVYm.kmO/L8M6adu85kZpV5Nu', 'dhaka', '2021-03-10 05:49:07', '2021-03-10 05:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_20_133753_create_sessions_table', 1),
(7, '2021_02_22_123615_create_categories_table', 2),
(8, '2021_02_22_124006_create_brands_table', 2),
(9, '2021_02_23_110338_create_products_table', 3),
(10, '2021_02_23_110615_create_sub_images_table', 3),
(11, '2021_03_01_185914_create_customers_table', 4),
(12, '2021_03_01_194237_create_shippings_table', 5),
(13, '2021_03_02_145613_create_orders_table', 6),
(14, '2021_03_02_145803_create_order_details_table', 6),
(15, '2021_03_02_145922_create_payments_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_date`, `payment_type`, `payment_status`, `order_status`, `created_at`, `updated_at`) VALUES
(9, 6, 10, 525.00, '2021-03-02', 'Cash', 'Pending', 'Pending', '2021-03-02 12:52:58', '2021-03-02 12:52:58'),
(11, 6, 12, 525.00, '2021-03-02', NULL, 'Pending', 'Pending', '2021-03-02 12:58:56', '2021-03-02 12:58:56'),
(12, 6, 12, 525.00, '2021-03-02', NULL, 'Pending', 'Pending', '2021-03-02 12:59:54', '2021-03-02 12:59:54'),
(13, 6, 12, 525.00, '2021-03-02', NULL, 'Pending', 'Pending', '2021-03-02 13:03:39', '2021-03-02 13:03:39'),
(14, 6, 12, 525.00, '2021-03-02', NULL, 'Pending', 'Pending', '2021-03-02 13:04:35', '2021-03-02 13:04:35'),
(15, 6, 12, 525.00, '2021-03-02', NULL, 'Pending', 'Pending', '2021-03-02 13:05:49', '2021-03-02 13:05:49'),
(16, 6, 12, 525.00, '2021-03-02', NULL, 'Pending', 'Pending', '2021-03-02 13:06:00', '2021-03-02 13:06:00'),
(17, 7, 13, 7001272.00, '2021-03-03', NULL, 'Pending', 'Pending', '2021-03-03 06:35:33', '2021-03-03 06:35:33'),
(18, 7, 13, 7001272.00, '2021-03-03', NULL, 'Pending', 'Pending', '2021-03-03 06:37:26', '2021-03-03 06:37:26'),
(20, 7, 13, 7001272.00, '2021-03-03', NULL, 'Cancel', 'Pending', '2021-03-03 06:52:34', '2021-03-04 13:21:18'),
(28, 11, 26, 639.00, '2021-03-04', 'cash', 'Pending', 'Pending', '2021-03-04 05:37:08', '2021-03-04 05:37:08'),
(29, 11, 26, 0.00, '2021-03-04', 'cash', 'Cancel', 'Pending', '2021-03-04 05:39:56', '2021-03-04 13:17:09'),
(30, 11, 26, 0.00, '2021-03-04', 'cash', 'Cancel', 'Cancel', '2021-03-04 05:40:53', '2021-03-04 13:16:49'),
(31, 11, 27, 5780.00, '2021-03-04', 'cash', 'Complete', 'Complete', '2021-03-04 05:41:41', '2021-03-04 13:16:29'),
(32, 13, 28, 525.00, '2021-03-05', 'cash', 'Complete', 'Complete', '2021-03-05 08:12:23', '2021-03-05 08:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(3, 9, 12, 'net-flix', 'product-images/Xiaomi-Mi-A2-1-526x526.jpg', 500.00, 1, '2021-03-02 12:52:58', '2021-03-02 12:52:58'),
(4, 17, 7, 'Xiaomi', 'product-images/w_long_dress_b.jpg', 6667878.00, 1, '2021-03-03 06:35:33', '2021-03-03 06:35:33'),
(5, 23, 9, 'Shirt', 'product-images/Autumn-New-Fashion-Men-s-Slim-Fit-Men-s-Long-Sleeve-Shirt-Casual-Shirt.jpg', 1160.00, 1, '2021-03-03 07:58:27', '2021-03-03 07:58:27'),
(6, 23, 10, 'Pocco p6', 'product-images/Reconnect-Disney-Metal-Heads-DBTH302-Nonfoldable-Headphone-491600568-i-1-1200Wx1200H-300Wx300H.jpg', 609.00, 1, '2021-03-03 07:58:27', '2021-03-03 07:58:27'),
(7, 25, 9, 'Shirt', 'product-images/Autumn-New-Fashion-Men-s-Slim-Fit-Men-s-Long-Sleeve-Shirt-Casual-Shirt.jpg', 1160.00, 1, '2021-03-03 10:36:13', '2021-03-03 10:36:13'),
(8, 26, 10, 'Pocco p6', 'product-images/Reconnect-Disney-Metal-Heads-DBTH302-Nonfoldable-Headphone-491600568-i-1-1200Wx1200H-300Wx300H.jpg', 609.00, 1, '2021-03-03 10:41:30', '2021-03-03 10:41:30'),
(9, 28, 10, 'Pocco p6', 'product-images/Reconnect-Disney-Metal-Heads-DBTH302-Nonfoldable-Headphone-491600568-i-1-1200Wx1200H-300Wx300H.jpg', 609.00, 1, '2021-03-04 05:37:08', '2021-03-04 05:37:08'),
(10, 31, 8, 'Three-piece', 'product-images/18151053_0_ladies-dress.jpg', 5505.00, 1, '2021-03-04 05:41:41', '2021-03-04 05:41:41'),
(11, 32, 12, 'net-flix', 'product-images/Xiaomi-Mi-A2-1-526x526.jpg', 500.00, 1, '2021-03-05 08:12:23', '2021-03-05 08:12:23'),
(12, 33, 37, 'Panjabi', 'product-images/download (1).jpg', 1500.00, 3, '2021-03-10 05:49:52', '2021-03-10 05:49:52'),
(13, 33, 35, 'Polo-shart', 'product-images/0b7b1d8b250cece5d8079c7129f0f703.jpg', 800.00, 1, '2021-03-10 05:49:52', '2021-03-10 05:49:52'),
(14, 33, 19, 'Saymphoni p6', 'product-images/101a05cbe6f62748fdf5c6512ccbfaf0.jpg', 100.00, 1, '2021-03-10 05:49:52', '2021-03-10 05:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `payment_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_method`, `payment_amount`, `payment_date`, `created_at`, `updated_at`) VALUES
(9, 9, 'cash', 0, '2021-03-02', '2021-03-02 12:52:58', '2021-03-02 12:52:58'),
(10, 10, 'cash', 0, '2021-03-02', '2021-03-02 12:53:49', '2021-03-02 12:53:49'),
(11, 11, 'cash', 0, '2021-03-02', '2021-03-02 12:58:57', '2021-03-02 12:58:57'),
(12, 12, 'cash', 0, '2021-03-02', '2021-03-02 12:59:54', '2021-03-02 12:59:54'),
(13, 14, 'cash', 0, '2021-03-02', '2021-03-02 13:04:35', '2021-03-02 13:04:35'),
(14, 15, 'cash', 0, '2021-03-02', '2021-03-02 13:05:49', '2021-03-02 13:05:49'),
(15, 16, 'cash', 0, '2021-03-02', '2021-03-02 13:06:00', '2021-03-02 13:06:00'),
(16, 17, 'cash', 0, '2021-03-03', '2021-03-03 06:35:33', '2021-03-03 06:35:33'),
(17, 18, 'cash', 0, '2021-03-03', '2021-03-03 06:37:26', '2021-03-03 06:37:26'),
(18, 19, 'cash', 0, '2021-03-03', '2021-03-03 06:49:32', '2021-03-03 06:49:32'),
(19, 20, 'cash', 0, '2021-03-03', '2021-03-03 06:52:34', '2021-03-03 06:52:34'),
(20, 21, 'cash', 0, '2021-03-03', '2021-03-03 06:52:50', '2021-03-03 06:52:50'),
(21, 22, 'cash', 0, '2021-03-03', '2021-03-03 06:56:35', '2021-03-03 06:56:35'),
(22, 23, 'cash', 0, '2021-03-03', '2021-03-03 07:58:27', '2021-03-03 07:58:27'),
(23, 24, 'cash', 0, '2021-03-03', '2021-03-03 08:00:03', '2021-03-03 08:00:03'),
(24, 25, 'cash', 0, '2021-03-03', '2021-03-03 10:36:13', '2021-03-03 10:36:13'),
(25, 26, 'cash', 0, '2021-03-03', '2021-03-03 10:41:30', '2021-03-03 10:41:30'),
(26, 27, 'cash', 0, '2021-03-03', '2021-03-03 10:41:47', '2021-03-03 10:41:47'),
(27, 28, 'cash', 0, '2021-03-04', '2021-03-04 05:37:08', '2021-03-04 05:37:08'),
(28, 29, 'cash', 0, '2021-03-04', '2021-03-04 05:39:56', '2021-03-04 05:39:56'),
(29, 30, 'cash', 0, '2021-03-04', '2021-03-04 05:40:53', '2021-03-04 05:40:53'),
(30, 31, 'cash', 5780, '2021-03-04', '2021-03-04 05:41:41', '2021-03-04 13:16:29'),
(31, 32, 'cash', 525, '2021-03-05', '2021-03-05 08:12:24', '2021-03-05 08:20:24'),
(32, 33, 'cash', 5670, '2021-03-10', '2021-03-10 05:49:52', '2021-03-10 05:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `code`, `price`, `stock_amount`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(13, 10, 6, 'Cricket Bat', 'Bat309', 999.00, 50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum dui id lacus sollicitudin aliquam. Morbi a dignissim erat, ac eleifend velit. Fusce dapibus mollis ante eu rhoncus. Nulla facilisi. Donec nec tincidunt arcu. Nullam viverra ante sit amet auctor hendrerit. Pellentesque porta lorem vel purus condimentum rhoncus. Quisque commodo interdum elementum. Aenean vitae elementum est. Mauris dolor magna, venenatis tristique velit non, malesuada blandit odio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum dui id lacus sollicitudin aliquam. Morbi a dignissim erat, ac eleifend velit. Fusce dapibus mollis ante eu rhoncus. Nulla facilisi. Donec nec tincidunt arcu. Nullam viverra ante sit amet auctor hendrerit. Pellentesque porta lorem vel purus condimentum rhoncus. Quisque commodo interdum elementum. Aenean vitae elementum est. Mauris dolor magna, venenatis tristique velit non, malesuada blandit odioLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum dui id lacus sollicitudin aliquam. Morbi a dignissim erat, ac eleifend velit. Fusce dapibus mollis ante eu rhoncus. Nulla facilisi. Donec nec tincidunt arcu. Nullam viverra ante sit amet auctor hendrerit. Pellentesque porta lorem vel purus condimentum rhoncus. Quisque commodo interdum elementum. Aenean vitae elementum est. Mauris dolor magna, venenatis tristique velit non, malesuada blandit odio', 'product-images/212943_Main_Thumb_0632982.jpg', 1, '2021-03-10 03:32:01', '2021-03-10 03:32:01'),
(14, 10, 7, 'Bat', 'P609', 9990.00, 50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'product-images/1a05aa7243d677371ff1c1f71ed1225b.jpg', 1, '2021-03-10 03:37:48', '2021-03-10 03:37:48'),
(15, 10, 7, 'Hand Bat', 'Han409', 7770.00, 50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'product-images/61DNTu4vBeL._AC_SS450_.jpg', 1, '2021-03-10 03:38:56', '2021-03-10 03:38:56'),
(16, 11, 8, 'Samsung V9', 'v-009', 99.00, 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'product-images/hipster-realme-6-mobile-cover-realme-6-mobile-covers-274748-1597731331.jpg', 1, '2021-03-10 03:40:46', '2021-03-10 03:40:46'),
(17, 11, 9, 'Mobile Cover Nokia', 'Ani709', 500.00, 30, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'product-images/6108i3s9YJL._SL1000_.jpg', 1, '2021-03-10 03:42:51', '2021-03-10 03:42:51'),
(18, 11, 10, 'Xiaomi A2', 'xia-09', 199.00, 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'product-images/xiaomi_mi_a3_premium_protection_red_sunset_01_l.jpg', 1, '2021-03-10 03:45:14', '2021-03-10 03:45:14'),
(19, 11, 11, 'Saymphoni p6', 'p--006', 100.00, 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'product-images/101a05cbe6f62748fdf5c6512ccbfaf0.jpg', 1, '2021-03-10 03:47:47', '2021-03-10 05:49:52'),
(20, 12, 14, 'Bangladesh Dress', 'thr-9085', 999.00, 60, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ullamcorper risus at tristique porta. Vivamus ultrices, quam nec porttitor molestie, massa lorem volutpat neque, id pretium elit purus et est. Vestibulum semper, enim id euismod consectetur, leo nunc sagittis risus, quis convallis augue eros vitae quam. Maecenas auctor, tellus at suscipit rhoncus, risus lacus fringilla metus, in congue arcu orci at tortor. Nulla porta, erat in tempus porttitor, ex arcu volutpat augue, in maximus odio augue quis dolor. Nullam quis enim eu urna venenatis sodales. Vivamus non vulputate ligula, sed ornare ante. Sed quis est quis ante tincidunt suscipit ut ac lacus. Aenean efficitur vitae risus a eleifend.', 'product-images/18151053_0_ladies-dress.jpg', 1, '2021-03-10 03:57:19', '2021-03-10 03:57:19'),
(21, 12, 15, 'Casual Dresses', 'c-009', 9970.00, 77, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/s-maxy-dress-196-black-daevish-original-imafnxw5wwtgjp3q.jpeg', 1, '2021-03-10 04:01:10', '2021-03-10 04:01:10'),
(22, 12, 16, 'Cation Cotton Tunics', 'cat-0097', 700.00, 50, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/81RNQ8104HL._UY550_.jpg', 1, '2021-03-10 04:03:40', '2021-03-10 04:03:40'),
(23, 12, 17, 'Italian dress', 'wom-007', 6000.00, 50, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/61A3RrcOfFL._AC_SX522_.jpg', 1, '2021-03-10 04:06:32', '2021-03-10 04:06:32'),
(24, 13, 8, 'Samsung V9', 'v-03', 500.00, 50, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/0053442_original-samsung-in-ear-headphones-joyroom_550.jpeg', 1, '2021-03-10 04:09:28', '2021-03-10 04:09:28'),
(25, 13, 10, 'Blutettoth Headphone', 'blu-3', 999.00, 50, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/Reconnect-Disney-Metal-Heads-DBTH302-Nonfoldable-Headphone-491600568-i-1-1200Wx1200H-300Wx300H.jpg', 1, '2021-03-10 04:10:35', '2021-03-10 04:10:35'),
(26, 13, 9, 'Headfone Nokia', 'No-4', 777.00, 50, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/14484.jpg', 1, '2021-03-10 04:13:16', '2021-03-10 04:13:16'),
(27, 13, 11, 'Symphoni p6', 'P609', 500.00, 20, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/6009704132356_imageoutofpack.jpg', 1, '2021-03-10 04:15:12', '2021-03-10 04:15:12'),
(28, 13, 12, 'Headfone I-phone', 'I-4', 5999.00, 10, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/images.jpg', 1, '2021-03-10 04:17:53', '2021-03-10 04:17:53'),
(29, 14, 10, 'Xiaomi A2', 'A-002', 22220.00, 10, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/Xiaomi-Mi-A2-1-526x526.jpg', 1, '2021-03-10 04:26:27', '2021-03-10 04:26:27'),
(30, 14, 8, 'Galexy A-20', 'A-6', 25000.00, 50, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/galaxy-s20-5g.jpg', 1, '2021-03-10 04:27:43', '2021-03-10 04:27:43'),
(31, 14, 12, 'I-phon -6', '7889', 690000.00, 10, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/img-3.jpg', 1, '2021-03-10 04:29:05', '2021-03-10 04:29:05'),
(32, 14, 9, 'Nokia-3310', 'N-33', 1825.00, 40, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/Nokia_130-beauty.jpg', 1, '2021-03-10 04:30:41', '2021-03-10 04:30:41'),
(33, 15, 14, 'Shart Silk', 'Ani709', 5009.00, 50, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/Autumn-New-Fashion-Men-s-Slim-Fit-Men-s-Long-Sleeve-Shirt-Casual-Shirt.jpg', 1, '2021-03-10 04:41:58', '2021-03-10 04:41:58'),
(34, 15, 15, 'T-shart', 'T-009', 500.00, 500, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/71JeEP63a0L._UL1500_.jpg', 1, '2021-03-10 04:42:45', '2021-03-10 04:42:45'),
(35, 15, 13, 'Polo-shart', 'p-04', 800.00, 19, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/0b7b1d8b250cece5d8079c7129f0f703.jpg', 1, '2021-03-10 04:44:33', '2021-03-10 05:49:52'),
(36, 15, 19, 'Shart', 'Ri-005', 7000.00, 40, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/DoAVyc_XgAE-3RM.jpg', 1, '2021-03-10 04:53:05', '2021-03-10 04:53:05'),
(37, 15, 14, 'Panjabi', 'P-56', 1500.00, 47, 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'Donec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.\r\n\r\nDonec magna orci, posuere eu augue sit amet, molestie consectetur nisi. Quisque eget auctor diam. Aliquam erat volutpat. Nunc feugiat est in orci ullamcorper, vitae fringilla ipsum varius. Morbi tellus leo, malesuada sit amet risus eu, porttitor mattis velit. Fusce convallis fringilla lectus, nec viverra felis pulvinar id. Quisque tristique arcu id lorem vehicula, id fermentum dui laoreet. Sed tempor, mi vitae dapibus posuere, lacus justo porttitor orci, eget aliquam magna augue convallis arcu.', 'product-images/download (1).jpg', 1, '2021-03-10 04:56:47', '2021-03-10 05:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ITKaBorGcNKF0wclevhNItQVmeLbXZD6XUlKK1KC', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IkIydzNnQ0RmVTQ1VUN1N0ZvT05sdG1NbDV5NUsya1RJSXdPN21kWHkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vbG9jYWxob3N0L2Vjb21lcmNlMi9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFg0dVBtRjhlNlhxeU1ZbVBHU3NxSWVzZU5lQWZENVJZYi9lTllwY055S3dpM0JOTU16aWRDIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRYNHVQbUY4ZTZYcXlNWW1QR1NzcUllc2VOZUFmRDVSWWIvZU5ZcGNOeUt3aTNCTk1NemlkQyI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX19czoxMToiZ3JhbmRfdG90YWwiO2k6MDtzOjExOiJzaGlwcGluZ19pZCI7aTozMDt9', 1615377059),
('wkixSD4uq4GTgXeqZsEc9J6rsmY63zkeIETxdUv3', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVzNFT2Y0c3BkODlwb2xoV2pXNkw3a3hiQjJRMEpuNHZ5bmVTRURxRiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MzoiaHR0cDovL2xvY2FsaG9zdC9lY29tZXJjZTIvcHVibGljL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vbG9jYWxob3N0L2Vjb21lcmNlMi9wdWJsaWMvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1615377115);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `name`, `email`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Md Sabbir Hossain', 'super@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-01 13:57:58', '2021-03-01 13:57:58'),
(2, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-01 16:19:35', '2021-03-01 16:19:35'),
(3, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-01 16:23:44', '2021-03-01 16:23:44'),
(4, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-01 16:36:50', '2021-03-01 16:36:50'),
(5, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 05:27:07', '2021-03-02 05:27:07'),
(6, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 07:50:19', '2021-03-02 07:50:19'),
(7, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 12:26:25', '2021-03-02 12:26:25'),
(8, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 12:26:46', '2021-03-02 12:26:46'),
(9, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 12:31:37', '2021-03-02 12:31:37'),
(10, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 12:52:54', '2021-03-02 12:52:54'),
(11, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 12:57:31', '2021-03-02 12:57:31'),
(12, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-02 12:58:43', '2021-03-02 12:58:43'),
(13, 'Rakib', 'spider29@gmail.com', '018736256', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 06:35:26', '2021-03-03 06:35:26'),
(14, 'Rakib', 'spider29@gmail.com', '018736256', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 06:52:46', '2021-03-03 06:52:46'),
(15, 'Rakib', 'spider29@gmail.com', '018736256', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 07:30:55', '2021-03-03 07:30:55'),
(16, 'Rakib', 'spider29@gmail.com', '018736256', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 07:58:22', '2021-03-03 07:58:22'),
(17, 'Rakib', 'spider29@gmail.com', '018736256', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 10:36:07', '2021-03-03 10:36:07'),
(18, 'Rakib', 'spider29@gmail.com', '018736256', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 10:38:38', '2021-03-03 10:38:38'),
(19, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 13:40:07', '2021-03-03 13:40:07'),
(20, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 14:05:16', '2021-03-03 14:05:16'),
(21, 'Md Sabbir Hossain', 'sabbir29@gmail.com', '01706735774', 'Division : Rajshahi , Dist:Naogaon , P.S:Badalgachhi , P.o : Newrosulpur , Village: Kartikaher', '2021-03-03 14:07:01', '2021-03-03 14:07:01'),
(22, 'Rajib', 'rajib@gmail.com', '01878597384', 'Dhaka', '2021-03-03 19:08:22', '2021-03-03 19:08:22'),
(23, 'Rajib', 'rajib@gmail.com', '01878597384', 'Dhaka', '2021-03-03 19:10:25', '2021-03-03 19:10:25'),
(24, 'Muktadir', 'rajib@gmail.com', '01878597384', 'Dhaka', '2021-03-03 23:44:38', '2021-03-03 23:44:38'),
(25, 'Rajib', 'rajib@gmail.com', '01878597384', 'Dhaka', '2021-03-03 23:48:20', '2021-03-03 23:48:20'),
(26, 'Rajnto', 'sabbir29@gmail.com', '01706735774', 'Dhaka, Bangladesh', '2021-03-04 05:32:08', '2021-03-04 05:32:08'),
(27, 'Sabbir', 'sabbir29@gmail.com', '01706735774', 'Dhaka, Bangladesh', '2021-03-04 05:41:36', '2021-03-04 05:41:36'),
(28, 'Torikhul', 'torikhul295@gmail.com', '01878597384', 'Dhaka', '2021-03-05 08:12:11', '2021-03-05 08:12:11'),
(29, 'Md Sabbir Hossain', 'sabbir295@gmail.com', '01878597384', 'Dhaka', '2021-03-05 08:12:53', '2021-03-05 08:12:53'),
(30, 'Local Product', 'superadmin@gmail.com', '01706735774', 'dhaka', '2021-03-10 05:49:10', '2021-03-10 05:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_Image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_images`
--

INSERT INTO `sub_images` (`id`, `product_id`, `sub_Image`, `created_at`, `updated_at`) VALUES
(10, 4, 'product-sub-images/61AJIIJy2sL._SL1200_.jpg', '2021-02-27 08:15:25', '2021-02-27 08:15:25'),
(11, 4, 'product-sub-images/hipster-realme-6-mobile-cover-realme-6-mobile-covers-274748-1597731331.jpg', '2021-02-27 08:15:25', '2021-02-27 08:15:25'),
(12, 4, 'product-sub-images/pulse-realme-6-mobile-cover-realme-6-mobile-covers-291691-1601967623.jpg', '2021-02-27 08:15:25', '2021-02-27 08:15:25'),
(13, 5, 'product-sub-images/Art-Activity-Books-for-Kids-Featured-Image-800x600.jpg', '2021-02-27 09:32:09', '2021-02-27 09:32:09'),
(14, 5, 'product-sub-images/download (1).jpg', '2021-02-27 09:32:09', '2021-02-27 09:32:09'),
(15, 5, 'product-sub-images/images.jpg', '2021-02-27 09:32:09', '2021-02-27 09:32:09'),
(16, 5, 'product-sub-images/lostbook.jpg', '2021-02-27 09:32:09', '2021-02-27 09:32:09'),
(17, 6, 'product-sub-images/18151053_0_ladies-dress.jpg', '2021-02-27 09:49:48', '2021-02-27 09:49:48'),
(18, 6, 'product-sub-images/19163898_0_ladies-designer-dresses.jpg', '2021-02-27 09:49:48', '2021-02-27 09:49:48'),
(19, 6, 'product-sub-images/download.jpg', '2021-02-27 09:49:48', '2021-02-27 09:49:48'),
(20, 6, 'product-sub-images/w_long_dress_b.jpg', '2021-02-27 09:49:48', '2021-02-27 09:49:48'),
(21, 7, 'product-sub-images/18151053_0_ladies-dress.jpg', '2021-02-27 09:50:43', '2021-02-27 09:50:43'),
(22, 7, 'product-sub-images/19163898_0_ladies-designer-dresses.jpg', '2021-02-27 09:50:43', '2021-02-27 09:50:43'),
(23, 7, 'product-sub-images/download.jpg', '2021-02-27 09:50:44', '2021-02-27 09:50:44'),
(24, 8, 'product-sub-images/19163898_0_ladies-designer-dresses.jpg', '2021-02-27 10:50:51', '2021-02-27 10:50:51'),
(25, 8, 'product-sub-images/download.jpg', '2021-02-27 10:50:51', '2021-02-27 10:50:51'),
(26, 8, 'product-sub-images/w_long_dress_b.jpg', '2021-02-27 10:50:51', '2021-02-27 10:50:51'),
(27, 9, 'product-sub-images/download.jpg', '2021-02-27 10:55:04', '2021-02-27 10:55:04'),
(28, 9, 'product-sub-images/Gents--Shart-available-total-peace-20-000-wholesale-prise-130--No-1-good-qulity-VB201705171774173-ak_WBP1587490260-1505300215.jpeg', '2021-02-27 10:55:04', '2021-02-27 10:55:04'),
(29, 9, 'product-sub-images/images.jpg', '2021-02-27 10:55:04', '2021-02-27 10:55:04'),
(30, 10, 'product-sub-images/download (1).jpg', '2021-02-27 10:58:13', '2021-02-27 10:58:13'),
(31, 10, 'product-sub-images/download.jpg', '2021-02-27 10:58:13', '2021-02-27 10:58:13'),
(32, 10, 'product-sub-images/tree-736885__340.jpg', '2021-02-27 10:58:14', '2021-02-27 10:58:14'),
(33, 11, 'product-sub-images/71JeEP63a0L._UL1500_.jpg', '2021-02-28 08:07:16', '2021-02-28 08:07:16'),
(34, 11, 'product-sub-images/0127053_dhele-dei-t-shirt-for-men_550.jpeg', '2021-02-28 08:07:16', '2021-02-28 08:07:16'),
(35, 11, 'product-sub-images/tshirt-types-252.png', '2021-02-28 08:07:16', '2021-02-28 08:07:16'),
(36, 12, 'product-sub-images/2018021001622521ms4y8d6-500x500.jpg', '2021-02-28 13:44:23', '2021-02-28 13:44:23'),
(37, 12, 'product-sub-images/download (1).jpg', '2021-02-28 13:44:23', '2021-02-28 13:44:23'),
(38, 12, 'product-sub-images/download.jpg', '2021-02-28 13:44:23', '2021-02-28 13:44:23'),
(39, 13, 'product-sub-images/71qjE2I+O7L._SL1500_.jpg', '2021-03-10 03:32:01', '2021-03-10 03:32:01'),
(40, 13, 'product-sub-images/cricket-bat-500x500.jpg', '2021-03-10 03:32:02', '2021-03-10 03:32:02'),
(41, 13, 'product-sub-images/download.jpg', '2021-03-10 03:32:02', '2021-03-10 03:32:02'),
(42, 14, 'product-sub-images/download.jpg', '2021-03-10 03:37:48', '2021-03-10 03:37:48'),
(43, 14, 'product-sub-images/kookaburra-rapid-pro-81-cricket-bat-1545-600.jpg', '2021-03-10 03:37:48', '2021-03-10 03:37:48'),
(44, 15, 'product-sub-images/images.png', '2021-03-10 03:38:56', '2021-03-10 03:38:56'),
(45, 15, 'product-sub-images/s-l640.jpg', '2021-03-10 03:38:56', '2021-03-10 03:38:56'),
(46, 16, 'product-sub-images/61AJIIJy2sL._SL1200_.jpg', '2021-03-10 03:40:46', '2021-03-10 03:40:46'),
(47, 16, 'product-sub-images/download.jpg', '2021-03-10 03:40:46', '2021-03-10 03:40:46'),
(48, 16, 'product-sub-images/pulse-realme-6-mobile-cover-realme-6-mobile-covers-291691-1601967623.jpg', '2021-03-10 03:40:46', '2021-03-10 03:40:46'),
(49, 17, 'product-sub-images/download.jpg', '2021-03-10 03:42:51', '2021-03-10 03:42:51'),
(50, 17, 'product-sub-images/morenzoprint-printedn2-3covermr48444-original-imafn3fhqhagftx5.jpeg', '2021-03-10 03:42:51', '2021-03-10 03:42:51'),
(51, 17, 'product-sub-images/nokia-3-1-plus-3d-soft-mobile-back-cover-500x500.jpg', '2021-03-10 03:42:51', '2021-03-10 03:42:51'),
(52, 18, 'product-sub-images/download.jpg', '2021-03-10 03:45:15', '2021-03-10 03:45:15'),
(53, 18, 'product-sub-images/funda_libro_xiaomi_mi_10_original_02_naranja_ad_l.jpg', '2021-03-10 03:45:15', '2021-03-10 03:45:15'),
(54, 18, 'product-sub-images/xiaomi_redmi_note_5_hard_pc_case-.jpg', '2021-03-10 03:45:15', '2021-03-10 03:45:15'),
(55, 19, 'product-sub-images/8bb09edc8eda6bafafd188376e976078.jpg', '2021-03-10 03:47:47', '2021-03-10 03:47:47'),
(56, 19, 'product-sub-images/download (1).jpg', '2021-03-10 03:47:48', '2021-03-10 03:47:48'),
(57, 19, 'product-sub-images/images.jpg', '2021-03-10 03:47:48', '2021-03-10 03:47:48'),
(58, 20, 'product-sub-images/19163898_0_ladies-designer-dresses.jpg', '2021-03-10 03:57:19', '2021-03-10 03:57:19'),
(59, 20, 'product-sub-images/download.jpg', '2021-03-10 03:57:19', '2021-03-10 03:57:19'),
(60, 20, 'product-sub-images/w_long_dress_b.jpg', '2021-03-10 03:57:19', '2021-03-10 03:57:19'),
(61, 21, 'product-sub-images/905624df66d6f013d9f859e112730d9d.jpg', '2021-03-10 04:01:10', '2021-03-10 04:01:10'),
(62, 21, 'product-sub-images/casual-dresses-73713.jpg', '2021-03-10 04:01:10', '2021-03-10 04:01:10'),
(63, 22, 'product-sub-images/images.jpg', '2021-03-10 04:03:40', '2021-03-10 04:03:40'),
(64, 22, 'product-sub-images/xl-top-sk-cat-1-scorpius-original-imaejqwge6guusmy.jpeg', '2021-03-10 04:03:40', '2021-03-10 04:03:40'),
(65, 23, 'product-sub-images/images (1).jpg', '2021-03-10 04:06:32', '2021-03-10 04:06:32'),
(66, 23, 'product-sub-images/images.jpg', '2021-03-10 04:06:32', '2021-03-10 04:06:32'),
(67, 23, 'product-sub-images/unnamed.jpg', '2021-03-10 04:06:32', '2021-03-10 04:06:32'),
(68, 24, 'product-sub-images/genuine-akg-type-c-earphones-for-galaxy-note-10-plus-2.jpg', '2021-03-10 04:09:28', '2021-03-10 04:09:28'),
(69, 24, 'product-sub-images/item_XL_5047910_1716509.jpg', '2021-03-10 04:09:28', '2021-03-10 04:09:28'),
(70, 25, 'product-sub-images/download (1).jpg', '2021-03-10 04:10:35', '2021-03-10 04:10:35'),
(71, 25, 'product-sub-images/download.jpg', '2021-03-10 04:10:35', '2021-03-10 04:10:35'),
(72, 25, 'product-sub-images/tree-736885__340.jpg', '2021-03-10 04:10:35', '2021-03-10 04:10:35'),
(73, 26, 'product-sub-images/14484.jpg', '2021-03-10 04:13:16', '2021-03-10 04:13:16'),
(74, 26, 'product-sub-images/download.jpg', '2021-03-10 04:13:16', '2021-03-10 04:13:16'),
(75, 26, 'product-sub-images/nokia_com-gallery-Headphones-1.jpg', '2021-03-10 04:13:17', '2021-03-10 04:13:17'),
(76, 27, 'product-sub-images/a6381c678d1f47ef2d183be6649e7e89.jpg', '2021-03-10 04:15:12', '2021-03-10 04:15:12'),
(77, 27, 'product-sub-images/download.jpg', '2021-03-10 04:15:12', '2021-03-10 04:15:12'),
(78, 28, 'product-sub-images/ca74cfce-581b-4d78-aa23-f16fe92a3de0.jpg', '2021-03-10 04:17:53', '2021-03-10 04:17:53'),
(79, 28, 'product-sub-images/headphones-edit-1.jpg', '2021-03-10 04:17:53', '2021-03-10 04:17:53'),
(80, 28, 'product-sub-images/images (1).jpg', '2021-03-10 04:17:53', '2021-03-10 04:17:53'),
(81, 29, 'product-sub-images/download (1).jpg', '2021-03-10 04:26:27', '2021-03-10 04:26:27'),
(82, 29, 'product-sub-images/download.jpg', '2021-03-10 04:26:27', '2021-03-10 04:26:27'),
(83, 30, 'product-sub-images/Galaxy-A51A71_mainA71.jpg', '2021-03-10 04:27:43', '2021-03-10 04:27:43'),
(84, 30, 'product-sub-images/galaxy-s20-5g.jpg', '2021-03-10 04:27:43', '2021-03-10 04:27:43'),
(85, 30, 'product-sub-images/samsung-galaxy-m20-m205f-1.jpg', '2021-03-10 04:27:43', '2021-03-10 04:27:43'),
(86, 31, 'product-sub-images/download.jpg', '2021-03-10 04:29:05', '2021-03-10 04:29:05'),
(87, 31, 'product-sub-images/images.jpg', '2021-03-10 04:29:05', '2021-03-10 04:29:05'),
(88, 31, 'product-sub-images/img-3.jpg', '2021-03-10 04:29:05', '2021-03-10 04:29:05'),
(89, 32, 'product-sub-images/nokia_106-product_page-design-desktop.jpg', '2021-03-10 04:30:41', '2021-03-10 04:30:41'),
(90, 32, 'product-sub-images/Nokia_130-beauty.jpg', '2021-03-10 04:30:41', '2021-03-10 04:30:41'),
(91, 32, 'product-sub-images/Nokia-3310-BeautyShot.jpg', '2021-03-10 04:30:41', '2021-03-10 04:30:41'),
(92, 33, 'product-sub-images/download.jpg', '2021-03-10 04:41:58', '2021-03-10 04:41:58'),
(93, 33, 'product-sub-images/Gents--Shart-available-total-peace-20-000-wholesale-prise-130--No-1-good-qulity-VB201705171774173-ak_WBP1587490260-1505300215.jpeg', '2021-03-10 04:41:58', '2021-03-10 04:41:58'),
(94, 33, 'product-sub-images/images.jpg', '2021-03-10 04:41:58', '2021-03-10 04:41:58'),
(95, 34, 'product-sub-images/0127053_dhele-dei-t-shirt-for-men_550.jpeg', '2021-03-10 04:42:45', '2021-03-10 04:42:45'),
(96, 34, 'product-sub-images/tshirt-types-252.png', '2021-03-10 04:42:45', '2021-03-10 04:42:45'),
(97, 35, 'product-sub-images/9c4598e741fca30f9dd83dc31fc9f560.png', '2021-03-10 04:44:33', '2021-03-10 04:44:33'),
(98, 35, 'product-sub-images/download.jpg', '2021-03-10 04:44:33', '2021-03-10 04:44:33'),
(99, 36, 'product-sub-images/DjvTgHDVAAA8xLU.jpg', '2021-03-10 04:53:05', '2021-03-10 04:53:05'),
(100, 36, 'product-sub-images/DqLHU3mVYAAmWTF.jpg', '2021-03-10 04:53:05', '2021-03-10 04:53:05'),
(101, 36, 'product-sub-images/edea9c5b238fa05349348c1508e80fcf.jpg', '2021-03-10 04:53:05', '2021-03-10 04:53:05'),
(102, 37, 'product-sub-images/download (1).jpg', '2021-03-10 04:56:47', '2021-03-10 04:56:47'),
(103, 37, 'product-sub-images/panjabi_01_0.jpg', '2021-03-10 04:56:47', '2021-03-10 04:56:47'),
(104, 37, 'product-sub-images/panjabi_03.jpg', '2021-03-10 04:56:47', '2021-03-10 04:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_label` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `access_label`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', NULL, '$2y$10$X4uPmF8e6XqyMYmPGSsqIeseNeAfD5RYb/eNYpcNyKwi3BNMMzidC', 1, NULL, NULL, NULL, NULL, NULL, '2021-02-20 08:48:59', '2021-02-20 08:48:59'),
(3, 'Sumon', 'sumon@gmail.com', NULL, '$2y$10$a0OpWgKEtSdqWq6OkBWMiuJeo0NYd4r6Vq8y.U1Ls4iFcgNtI6J82', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 09:16:33', '2021-03-06 08:15:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_images`
--
ALTER TABLE `sub_images`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
