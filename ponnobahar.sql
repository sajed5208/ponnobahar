-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2017 at 09:43 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ponnobahar`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Rang', 'Well', 1, '2017-08-24 04:21:07', '2017-08-24 04:29:53'),
(2, 'Arang', 'Well', 1, '2017-08-24 04:25:39', '2017-08-24 04:46:02'),
(3, 'Yellow', 'Well', 1, '2017-08-24 04:28:28', '2017-08-24 04:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Health and Beauty', 'Well', 1, '2017-08-24 04:05:13', '2017-08-24 04:10:04'),
(2, 'Clothing', 'Well', 1, '2017-08-24 04:08:25', '2017-08-24 04:08:25'),
(3, 'Footwear', 'Well', 1, '2017-08-24 04:08:35', '2017-08-24 04:08:35'),
(4, 'Jewelry', 'Well', 1, '2017-08-24 04:08:44', '2017-08-24 04:08:44'),
(5, 'Life Style', 'Well', 1, '2017-08-24 04:08:53', '2017-08-24 04:08:53'),
(6, 'Islamic Collection', 'Well', 1, '2017-08-24 04:09:05', '2017-08-24 04:09:05'),
(7, 'Gift items', 'Well', 1, '2017-08-24 04:09:13', '2017-08-25 23:30:55'),
(8, 'Food', 'Well', 1, '2017-08-24 04:09:24', '2017-08-24 04:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `mobile_number`, `date_of_birth`, `address`, `national_id`, `district_name`, `country_name`, `created_at`, `updated_at`) VALUES
(2, 'Mosiur', 'Rahman', 'mosiur@gmail.com', '$2y$10$F6GEVO4/Igd4/bQu3UdDSu70ignml0Sg6PRdV/zHg/pAsL2hGFp1O', '111111', '2017-08-28', 'Mirpur', '123123', 'Manikgonj', 'Bangladesh', '2017-08-28 04:32:48', '2017-08-28 04:32:48'),
(8, 'Sajid', 'Kumar', 'sajid@gmail.com', '$2y$10$p5d/eN4Vxn8wNQWzywgaeOGJiNYt0RljIoV/9uRk2LiC/dC6zA16a', '01715141214', '2017-08-07', 'Farmgate', '452345', 'Dhaka', 'Bangladesh', '2017-08-29 02:25:29', '2017-08-29 02:25:29'),
(9, 'Sagor', 'Khan', 'sagor@gmail.com', '$2y$10$iNXVdoaeZr3PdSgPkjx5bO9sfbeskAAjg5Buj3lmr3gUGyKglCNpy', '312312', '2017-08-07', 'casas', '5423423', 'Dhaka', 'Bangladesh', '2017-08-29 04:24:58', '2017-08-29 04:24:58'),
(10, 'Rubel', 'Ahammed', 'rubel@gmail.com', '$2y$10$8Xrty2gnon5BlsHPrQOkUeeUTS7udLoQWXRGD2nPBZxtHysxnqcRK', '01714121514', '2017-08-31', 'Mirpur', '123123', 'Dhaka', 'Bangladesh', '2017-08-30 04:37:53', '2017-08-30 04:37:53'),
(11, 'asdas', 'asdasd', 'admin@gmail.com', '$2y$10$iPIQFbQeAnChk286GfzDEOkmIsSFp6tiweoOpmWQ4WdAoynmxIMvK', '12312321', NULL, NULL, NULL, NULL, NULL, '2017-09-05 04:42:54', '2017-09-05 04:42:54'),
(12, 'asdas', 'asdasd', 'habib@gmail.com', '$2y$10$7/y3uCLsZQQWl3o6VDz4Ae/hHtTfRz2d4LpXrktwrwO3qCNcCUVcy', '123123', NULL, 'ZXZXZX', NULL, NULL, NULL, '2017-09-05 04:57:01', '2017-09-05 04:57:01'),
(13, 'Mehedi', 'Hasan', 'mehedi@gmail.com', '$2y$10$e2PlSdlVaY9yW.jkSuKpzOtn.6WMFO461jE58OYgjzn6ejAYgMDbC', '01715141313', '2017-09-19', 'House No: 330,\r\nRoad No: 01\r\nWest Bandutia,\r\nManikgonj, Dhaka, Bangladesh.', '1254124125452', 'Manikgonj', 'Bangladesh', '2017-09-05 06:04:01', '2017-09-05 06:04:01');

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
(3, '2017_08_21_063930_create_categories_table', 1),
(4, '2017_08_21_110351_create_brands_table', 1),
(5, '2017_08_23_051859_create_products_table', 1),
(6, '2017_08_26_031723_create_sub_categories_table', 2),
(7, '2017_08_26_081835_create_product_sub_images_table', 3),
(8, '2017_08_26_104733_create_sliders_table', 4),
(9, '2017_08_28_095538_create_customers_table', 5),
(10, '2017_08_28_110506_create_shippings_table', 6),
(11, '2017_08_29_063538_create_orders_table', 7),
(12, '2017_08_29_063556_create_payments_table', 7),
(13, '2017_08_29_063631_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `order_date`, `created_at`, `updated_at`) VALUES
(1, 7, 4, 300.00, 'pending', '2017-08-29 08:23:41', '2017-08-29 02:23:41', '2017-08-29 02:23:41'),
(4, 8, 7, 300.00, 'pending', '2017-08-29 10:37:55', '2017-08-29 04:37:55', '2017-08-29 04:37:55'),
(5, 8, 8, 600.00, 'Complete', '2017-08-30 09:44:18', '2017-08-29 05:00:51', '2017-08-30 03:44:18'),
(6, 11, 10, 258.00, 'pending', '2017-09-05 10:44:45', '2017-09-05 04:44:45', '2017-09-05 04:44:45'),
(7, 12, 11, 1073.00, 'pending', '2017-09-05 10:57:17', '2017-09-05 04:57:17', '2017-09-05 04:57:17'),
(8, 12, 11, 1073.00, 'pending', '2017-09-05 11:03:31', '2017-09-05 05:03:31', '2017-09-05 05:03:31'),
(9, 12, 12, 1331.00, 'pending', '2017-09-05 11:03:53', '2017-09-05 05:03:53', '2017-09-05 05:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_code`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 'New Product Three', 'NP003', 300.00, 1, '2017-08-29 02:23:41', '2017-08-29 02:23:41'),
(6, 4, 9, 'New Product Three', 'NP003', 300.00, 1, '2017-08-29 04:37:55', '2017-08-29 04:37:55'),
(7, 5, 9, 'New Product Three', 'NP003', 300.00, 2, '2017-08-29 05:00:51', '2017-08-29 05:00:51'),
(8, 6, 7, 'New Product One', 'NP001', 258.00, 1, '2017-09-05 04:44:46', '2017-09-05 04:44:46'),
(9, 7, 7, 'New Product One', 'NP001', 258.00, 3, '2017-09-05 04:57:17', '2017-09-05 04:57:17'),
(10, 7, 8, 'New Product Two', 'NP002', 299.00, 1, '2017-09-05 04:57:17', '2017-09-05 04:57:17'),
(11, 8, 7, 'New Product One', 'NP001', 258.00, 3, '2017-09-05 05:03:31', '2017-09-05 05:03:31'),
(12, 8, 8, 'New Product Two', 'NP002', 299.00, 1, '2017-09-05 05:03:31', '2017-09-05 05:03:31'),
(13, 9, 7, 'New Product One', 'NP001', 258.00, 4, '2017-09-05 05:03:54', '2017-09-05 05:03:54'),
(14, 9, 8, 'New Product Two', 'NP002', 299.00, 1, '2017-09-05 05:03:54', '2017-09-05 05:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'pcash', 'pending', '2017-08-29 02:23:41', '2017-08-29 02:23:41'),
(4, 4, 'pvisa', 'pending', '2017-08-29 04:37:55', '2017-08-29 04:37:55'),
(5, 5, 'pnexus', 'Complete', '2017-08-29 05:00:51', '2017-08-30 03:44:18'),
(6, 6, 'pcash', 'pending', '2017-09-05 04:44:45', '2017-09-05 04:44:45'),
(7, 7, 'procket', 'pending', '2017-09-05 04:57:17', '2017-09-05 04:57:17'),
(8, 8, 'pbkash', 'pending', '2017-09-05 05:03:31', '2017-09-05 05:03:31'),
(9, 9, 'pnexus', 'pending', '2017-09-05 05:03:53', '2017-09-05 05:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `top_left_one` tinyint(1) NOT NULL,
  `top_left_two` tinyint(1) NOT NULL,
  `top_right_one` tinyint(1) NOT NULL,
  `top_right_two` tinyint(1) NOT NULL,
  `carousel_slider` tinyint(1) NOT NULL,
  `top_product_status` tinyint(1) NOT NULL,
  `product_short_description` text COLLATE utf8mb4_unicode_ci,
  `product_long_description` text COLLATE utf8mb4_unicode_ci,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `product_name`, `product_code`, `product_size`, `product_color`, `product_sku`, `product_price`, `top_left_one`, `top_left_two`, `top_right_one`, `top_right_two`, `carousel_slider`, `top_product_status`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 1, 'New Product One', 'NP001', 'Small', 'Black', '96', 258.00, 1, 0, 0, 0, 1, 1, 'Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.', '<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>', 'product-images/1.jpg', 1, '2017-08-27 06:36:39', '2017-08-30 04:40:44'),
(8, 1, 1, 1, 'New Product Two', 'NP002', 'Small', 'Black', '196', 299.00, 0, 1, 0, 0, 1, 1, 'Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.', '<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>', 'product-images/2.jpg', 1, '2017-08-27 06:37:32', '2017-08-30 04:40:44'),
(9, 2, 12, 2, 'New Product Three', 'NP003', 'Large', 'Pink', '298', 300.00, 0, 0, 1, 0, 1, 1, 'Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.', '<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>', 'product-images/3.jpg', 1, '2017-08-27 06:38:49', '2017-08-30 03:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_images`
--

CREATE TABLE `product_sub_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_sub_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_images`
--

INSERT INTO `product_sub_images` (`id`, `product_id`, `product_sub_image`, `created_at`, `updated_at`) VALUES
(18, 7, 'product-sub-images/download.jpg', '2017-08-27 06:36:39', '2017-08-27 06:36:39'),
(19, 7, 'product-sub-images/google-home.jpg', '2017-08-27 06:36:40', '2017-08-27 06:36:40'),
(20, 7, 'product-sub-images/images (1).jpg', '2017-08-27 06:36:40', '2017-08-27 06:36:40'),
(21, 7, 'product-sub-images/images (2).jpg', '2017-08-27 06:36:40', '2017-08-27 06:36:40'),
(22, 8, 'product-sub-images/images (3).jpg', '2017-08-27 06:37:32', '2017-08-27 06:37:32'),
(23, 8, 'product-sub-images/images (4).jpg', '2017-08-27 06:37:32', '2017-08-27 06:37:32'),
(24, 8, 'product-sub-images/images (5).jpg', '2017-08-27 06:37:32', '2017-08-27 06:37:32'),
(25, 8, 'product-sub-images/images (6).jpg', '2017-08-27 06:37:32', '2017-08-27 06:37:32'),
(26, 8, 'product-sub-images/images (7).jpg', '2017-08-27 06:37:32', '2017-08-27 06:37:32'),
(27, 9, 'product-sub-images/16.jpg', '2017-08-27 06:38:49', '2017-08-27 06:38:49'),
(28, 9, 'product-sub-images/17.jpg', '2017-08-27 06:38:49', '2017-08-27 06:38:49'),
(29, 9, 'product-sub-images/18.jpg', '2017-08-27 06:38:49', '2017-08-27 06:38:49'),
(30, 9, 'product-sub-images/18.png', '2017-08-27 06:38:49', '2017-08-27 06:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `mobile_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Rohim Khan', '1234567', 'dsfsdfsd', '2017-08-28 05:16:25', '2017-08-28 05:16:25'),
(2, 'asd asdsf', '12', 'ass', '2017-08-28 05:21:20', '2017-08-28 05:21:20'),
(3, 'Mosiur Rahman', '123456789', 'Mirpur', '2017-08-28 21:33:40', '2017-08-28 21:33:40'),
(4, 'Mosiur Rahman', '01715141512', 'Mirpur', '2017-08-29 02:23:37', '2017-08-29 02:23:37'),
(5, 'Sajid Kumar', '01715141214', 'Farmgate', '2017-08-29 02:25:35', '2017-08-29 02:25:35'),
(6, 'Sagor Khan', '312312', 'casas', '2017-08-29 04:35:42', '2017-08-29 04:35:42'),
(7, 'Sajid Kumar', '01715141214', 'Farmgate', '2017-08-29 04:37:52', '2017-08-29 04:37:52'),
(8, 'Sajid Kumar', '01715141214', 'Farmgate', '2017-08-29 05:00:48', '2017-08-29 05:00:48'),
(9, 'Rubel Ahammed', '01714121514', 'Mirpur', '2017-08-30 04:38:10', '2017-08-30 04:38:10'),
(10, 'asdas asdasd', '12312321', 'sdasdas', '2017-09-05 04:44:31', '2017-09-05 04:44:31'),
(11, 'asdas asdasd', '123123', 'ascasascas', '2017-09-05 04:57:13', '2017-09-05 04:57:13'),
(12, 'asdas asdasd', '123123', 'ZXZXZX', '2017-09-05 05:03:47', '2017-09-05 05:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `slider_main_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_sub_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `category_id`, `sub_category_id`, `slider_main_image`, `slider_sub_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 'slider-images/01.jpg', 'slider-images/thumb-01.jpg', 1, '2017-08-27 05:48:05', '2017-08-27 05:54:18'),
(8, 2, 2, 'slider-images/02.jpg', 'slider-images/thumb-02.jpg', 1, '2017-08-27 05:53:51', '2017-08-27 05:54:21'),
(9, 1, 1, 'slider-images/03.jpg', 'slider-images/thumb-03.jpg', 1, '2017-08-27 05:54:39', '2017-08-27 05:54:39'),
(10, 3, 3, 'slider-images/04.jpg', 'slider-images/thumb-04.jpg', 1, '2017-08-27 05:55:02', '2017-08-27 05:55:02'),
(11, 1, 1, 'slider-images/05.jpg', 'slider-images/thumb-05.jpg', 1, '2017-08-27 05:56:59', '2017-08-27 05:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `sub_category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Body Care', 'Well', 1, '2017-08-25 21:30:20', '2017-08-27 03:07:24'),
(2, 1, 'Kids Care', 'Well', 1, '2017-08-25 21:30:57', '2017-08-25 21:30:57'),
(3, 1, 'Perfume & Spray', 'Well', 1, '2017-08-25 21:31:20', '2017-08-25 21:31:20'),
(4, 1, 'Hair Care', 'Well', 1, '2017-08-25 21:31:30', '2017-08-25 21:31:30'),
(5, 1, 'Face Care', 'Well', 1, '2017-08-25 21:31:41', '2017-08-25 21:31:41'),
(6, 1, 'Lips Care', 'Well', 1, '2017-08-25 21:31:51', '2017-08-25 21:31:51'),
(7, 1, 'Eye Care', 'Well', 1, '2017-08-25 21:32:17', '2017-08-25 21:32:17'),
(8, 1, 'Nails Care', 'Well', 1, '2017-08-25 21:32:26', '2017-08-25 21:32:26'),
(9, 1, 'Dental Care', 'Well', 1, '2017-08-25 21:32:35', '2017-08-25 21:32:35'),
(10, 1, 'Baby Care', 'Well', 1, '2017-08-25 21:32:44', '2017-08-25 21:32:44'),
(11, 1, 'Gym & Exercise', 'Well', 1, '2017-08-25 21:32:54', '2017-08-25 21:32:54'),
(12, 2, 'T-Shirt', 'Well', 1, '2017-08-25 22:29:20', '2017-08-25 22:29:20'),
(13, 2, 'Shirt', 'WELL', 1, '2017-08-25 22:29:33', '2017-08-25 22:29:33'),
(14, 2, 'Punjabi Pajama', 'wELL', 1, '2017-08-25 22:29:45', '2017-08-25 22:29:45'),
(15, 2, 'Pant', 'Well', 1, '2017-08-25 22:29:55', '2017-08-25 22:29:55'),
(16, 2, 'Winter Collection', 'Well', 1, '2017-08-25 22:30:47', '2017-08-25 22:30:47'),
(17, 2, 'Others', 'Well', 1, '2017-08-25 22:31:00', '2017-08-25 22:31:00'),
(18, 2, 'Salowar Kamiz', 'Well', 1, '2017-08-25 22:31:13', '2017-08-25 22:31:13'),
(19, 2, 'Sharee', 'Well', 1, '2017-08-25 22:31:25', '2017-08-25 22:31:25'),
(20, 2, 'Kurti Tops & Gown', 'Well', 1, '2017-08-25 22:32:28', '2017-08-25 22:32:28'),
(21, 2, 'Womens Accesories', 'Well', 1, '2017-08-25 22:32:40', '2017-08-25 22:32:40'),
(22, 2, 'Winter Cullection', 'Well', 1, '2017-08-25 22:32:56', '2017-08-25 22:32:56'),
(23, 3, 'Mens', 'Well', 1, '2017-08-25 23:04:28', '2017-08-25 23:04:28'),
(24, 3, 'Womens', 'Well', 1, '2017-08-25 23:04:40', '2017-08-25 23:04:40'),
(25, 4, 'Ear Ring', 'Well', 1, '2017-08-25 23:06:19', '2017-08-25 23:06:19'),
(26, 4, 'Finger Ring', 'Well', 1, '2017-08-25 23:06:29', '2017-08-25 23:06:29'),
(27, 4, 'Bracelet', 'Well', 1, '2017-08-25 23:06:39', '2017-08-25 23:06:39'),
(28, 4, 'Locket', 'Well', 1, '2017-08-25 23:06:51', '2017-08-25 23:06:51'),
(29, 4, 'Pendant', 'Well', 1, '2017-08-25 23:07:00', '2017-08-25 23:07:00'),
(30, 4, 'Others', 'Well', 1, '2017-08-25 23:07:11', '2017-08-25 23:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Emmitt Russel', 'fhills@example.com', '$2y$10$SaNcgkm7MrY0.1Jj8/HaHufo/D33EOpA/EfcclMPiaZRtgttHCwN2', '4PwV3HnfnUi2sIh8JSMLzn89qBFT1NiQ9HgsjJPdbYOkSoBNTEDtFEEi4ktW', '2017-08-23 02:40:39', '2017-08-23 02:40:39'),
(2, 'Moses Cronin', 'morissette.luciano@example.com', '$2y$10$SaNcgkm7MrY0.1Jj8/HaHufo/D33EOpA/EfcclMPiaZRtgttHCwN2', 'rpbkuR7sMU', '2017-08-23 02:40:39', '2017-08-23 02:40:39'),
(3, 'Mr. Nathanael Ruecker', 'ukuphal@example.net', '$2y$10$SaNcgkm7MrY0.1Jj8/HaHufo/D33EOpA/EfcclMPiaZRtgttHCwN2', '0M9Bi9BO9M', '2017-08-23 02:40:39', '2017-08-23 02:40:39'),
(4, 'Noelia Wyman', 'smith.ignatius@example.org', '$2y$10$SaNcgkm7MrY0.1Jj8/HaHufo/D33EOpA/EfcclMPiaZRtgttHCwN2', '0ZUUlHLYEy', '2017-08-23 02:40:39', '2017-08-23 02:40:39'),
(5, 'Sunny Turcotte', 'pkonopelski@example.net', '$2y$10$SaNcgkm7MrY0.1Jj8/HaHufo/D33EOpA/EfcclMPiaZRtgttHCwN2', 'e2oRHLsay6', '2017-08-23 02:40:39', '2017-08-23 02:40:39');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
