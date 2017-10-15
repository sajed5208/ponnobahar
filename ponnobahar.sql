-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2017 at 10:10 AM
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
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `image`, `mission`, `vision`, `goal`, `created_at`, `updated_at`) VALUES
(9, 'new title', 'about-image/pro.jpg', 'Well', 'Well', 'Well', '2017-09-23 00:53:45', '2017-09-23 00:53:45');

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
(3, 'Yellow', 'Well', 1, '2017-08-24 04:28:28', '2017-08-24 04:28:28'),
(8, 'Ring', 'Well', 1, '2017-09-24 23:08:54', '2017-09-24 23:09:40'),
(9, 'Arang', 'Well', 0, '2017-09-24 23:12:05', '2017-09-24 23:12:05'),
(10, 'Ring', 'Well', 1, '2017-09-25 00:08:36', '2017-09-25 00:08:36');

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
  `customer_image` text COLLATE utf8mb4_unicode_ci,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `mobile_number`, `date_of_birth`, `address`, `customer_image`, `national_id`, `district_name`, `country_name`, `created_at`, `updated_at`) VALUES
(21, 'Zakir', 'Hossen', 'zakir@gmail.com', '$2y$10$716UJaxQGJdWjExWZ.r1u.uSsB4HYj3xK78efb83A2KkqV1Nv7xJu', '0198172763524', '2017-09-12', 'Dhaka', 'customer_image/profile-pics.jpg.png', '198725537622665', 'Feni', 'Bangladesh', '2017-09-22 22:21:48', '2017-09-22 22:37:02'),
(22, 'Rakib', 'Khondoker', 'rakib@gmail.com', '$2y$10$aZWAEFf/9/0dWlOBUQbaYejxEqZgl9C5UsKcJhDqgBdYhklHnlFKO', '019818377362', '1997-03-10', 'Feni,Sonagazi 210', 'customer_image/profile-pics3.jpg', '1997165255275', 'Feni', 'Bangladesh', '2017-09-22 22:39:40', '2017-09-22 22:40:33'),
(23, 'Anonna', 'Sheak', 'anonnoa@gmail.com', '$2y$10$9H4kT5apb3gxhTsavgO.cu9919JpE0rsBHPeAKdgahvApiZ5lfEGK', '019187612514', '1996-09-09', 'Dhaka, khilgaw 1205', 'customer_image/profile-pics1.jpg', '1986524344266', 'Barisal', 'Bangladesh', '2017-09-22 22:43:38', '2017-09-22 22:44:10'),
(24, 'Sajedul', 'Islam', 'sajed@gmail.com', '$2y$10$25iqN2iVxWsRRuxlqPIdj.71UBFQycW2DZnqmdHi.knPKwYAwYK/6', '01912883763', '2017-09-23', 'Dhaka', 'customer_image/pro.jpg', '1988762552233', 'Feni', 'Bangladesh', '2017-09-23 02:14:34', '2017-09-23 02:14:34'),
(25, 'Sajedul', 'Islam', 'fhills@gmail.com', '$2y$10$sGu0S3TN8eEEI7Zc4fsvyu6q.Tu0zug2aL5v8CkjJzM/QF1mKdu86', '019287266355', '2017-09-23', 'Dhaka', 'customer_image/pro.jpg', '1997', 'Feni', 'Bangladesh', '2017-09-23 02:17:34', '2017-09-23 02:17:34'),
(26, 'Sajedul', 'Islam', 'email@sajed.com', '$2y$10$/L0FAkCWdkdhAa9s/.XNeOQK1HnXAPLxZyM6ZS0sOSwAHnXbMHYxS', '0019199822', '2017-10-19', 'well', 'customer_image/img1024.jpg', NULL, NULL, NULL, '2017-10-05 05:42:13', '2017-10-05 05:42:13'),
(27, 'Sajedul', 'hossen', 'email@zakir.com', '$2y$10$qg0AkbbFFSIJw2McNe9MMOGhNG6X0VJhkT8UVa1YWqCpi1HfPjWyG', '01091991882', '2017-10-02', 'well', 'customer_image/img1024.jpg', '32456463213487', 'feni', 'bangladesh', '2017-10-05 06:23:57', '2017-10-05 06:23:57'),
(28, 'Rubel', 'hossen', 'rubel@gmail.com', '$2y$10$YFpaOZQn2ZB0OmWPEnSN3OANUN1ibuX/lagz40mtZph7nBAuYWZ56', '019287267562', '2017-10-25', 'well', 'customer_image/img1024.jpg', '098765', 'feni', 'bangladesh', '2017-10-05 06:35:43', '2017-10-05 06:35:43'),
(29, 'Hossen', 'Zakir', 'hossen@gmail.com', '$2y$10$oKYKV6hxwFEU1JX5SWGvbO2LguHoJ8GhTqX.HJSrx6EThl68UZCCC', '0109299282', '2017-10-30', 'well', 'customer_image/img1024.jpg', '3456765432', 'feni', 'bangladesh', '2017-10-05 06:44:05', '2017-10-05 06:44:05'),
(30, 'Sajedul', 'Islam', 'rihan@gmail.com', '$2y$10$rmDeMheQ7SKfpNjmkpGsYuS.makjHgb/64CFfAuCSfu2M0pgL7nMW', '01010999292', '2017-10-25', NULL, 'customer_image/0x640.jpg', NULL, NULL, NULL, '2017-10-13 22:36:16', '2017-10-13 22:36:16');

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
(13, '2017_08_29_063631_create_order_details_table', 7),
(14, '2017_09_18_091259_create_abouts_table', 8),
(15, '2017_09_20_071132_create_wishlists_table', 9),
(16, '2017_10_03_041028_create_now_orders_table', 10),
(17, '2017_10_14_093558_create_reviews_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `now_orders`
--

CREATE TABLE `now_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` float NOT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sipping_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `now_orders`
--

INSERT INTO `now_orders` (`id`, `product_id`, `product_name`, `product_quantity`, `billing_name`, `billing_email`, `billing_mobile`, `billing_address`, `sipping_name`, `sipping_email`, `sipping_mobile`, `sipping_address`, `payment_method`, `created_at`, `updated_at`) VALUES
(9, 28, 'Clothing', 1, 'Sajed', 'sajed@gmail.com', '009876765', 'well', 'Sajed', 'sajed@gmail.com', '909198891891', 'well', 'bKash', '2017-10-03 05:55:52', '2017-10-03 05:55:52'),
(10, 28, 'Clothing', 1, 'Sajed', 'sajed@gmail.com', '009876765', 'well', 'Sajed', 'sajed@gmail.com', '909198891891', 'well', 'bKash', '2017-10-03 05:57:08', '2017-10-03 05:57:08'),
(11, 25, 'Clothing', 1, 'Sajed', 'sajed@gmail.com', '0199191222222', 'well', 'Sajed', 'sajed@gmail.com', '0191908271826', 'well', 'Cash', '2017-10-03 05:59:39', '2017-10-03 05:59:39'),
(12, 25, 'Clothing', 1, 'Sajed', 'sajed@gmail.com', '0199191222222', 'well', 'Sajed', 'sajed@gmail.com', '0191908271826', 'well', 'Cash', '2017-10-03 06:01:34', '2017-10-03 06:01:34');

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
(9, 12, 12, 1331.00, 'pending', '2017-09-05 11:03:53', '2017-09-05 05:03:53', '2017-09-05 05:03:53'),
(10, 18, 13, 299.00, 'pending', '2017-09-19 07:39:02', '2017-09-19 01:39:02', '2017-09-19 01:39:02'),
(11, 18, 14, 557.00, 'pending', '2017-09-19 07:47:09', '2017-09-19 01:47:09', '2017-09-19 01:47:09'),
(12, 18, 15, 856.00, 'pending', '2017-09-19 07:55:23', '2017-09-19 01:55:23', '2017-09-19 01:55:23'),
(13, 20, 16, 1114.00, 'pending', '2017-09-19 08:01:28', '2017-09-19 02:01:28', '2017-09-19 02:01:28'),
(14, 18, 17, 1372.00, 'pending', '2017-09-19 08:07:46', '2017-09-19 02:07:46', '2017-09-19 02:07:46'),
(15, 8, 18, 1630.00, 'pending', '2017-09-19 08:13:08', '2017-09-19 02:13:08', '2017-09-19 02:13:08'),
(16, 8, 19, 1888.00, 'pending', '2017-09-19 08:15:21', '2017-09-19 02:15:21', '2017-09-19 02:15:21'),
(17, 8, 20, 2188.00, 'pending', '2017-09-19 08:16:21', '2017-09-19 02:16:21', '2017-09-19 02:16:21'),
(18, 8, 21, 2487.00, 'Complete', '2017-09-19 09:22:34', '2017-09-19 02:18:28', '2017-09-19 03:22:34'),
(19, 18, 22, 774.00, 'pending', '2017-09-20 05:43:53', '2017-09-19 23:43:53', '2017-09-19 23:43:53'),
(20, 21, 23, 598.00, 'pending', '2017-09-23 08:05:16', '2017-09-23 02:05:16', '2017-09-23 02:05:16'),
(21, 21, 24, 1114.00, 'pending', '2017-09-23 08:05:52', '2017-09-23 02:05:52', '2017-09-23 02:05:52'),
(22, 21, 25, 2872.00, 'pending', '2017-09-23 08:37:16', '2017-09-23 02:37:16', '2017-09-23 02:37:16'),
(23, 21, 28, 1000.00, 'pending', '2017-10-03 05:21:39', '2017-10-02 23:21:39', '2017-10-02 23:21:39'),
(24, 21, 30, 3000.00, 'pending', '2017-10-03 05:47:19', '2017-10-02 23:47:19', '2017-10-02 23:47:19'),
(25, 21, 31, 5000.00, 'pending', '2017-10-03 07:39:13', '2017-10-03 01:39:13', '2017-10-03 01:39:13'),
(26, 30, 32, 1000.00, 'pending', '2017-10-14 04:36:54', '2017-10-13 22:36:54', '2017-10-13 22:36:54');

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
(14, 9, 8, 'New Product Two', 'NP002', 299.00, 1, '2017-09-05 05:03:54', '2017-09-05 05:03:54'),
(15, 10, 8, 'New Product Two', 'NP002', 299.00, 1, '2017-09-19 01:39:02', '2017-09-19 01:39:02'),
(16, 11, 8, 'New Product Two', 'NP002', 299.00, 1, '2017-09-19 01:47:09', '2017-09-19 01:47:09'),
(17, 11, 7, 'New Product One', 'NP001', 258.00, 1, '2017-09-19 01:47:09', '2017-09-19 01:47:09'),
(18, 12, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-19 01:55:23', '2017-09-19 01:55:23'),
(19, 12, 7, 'New Product One', 'NP001', 258.00, 1, '2017-09-19 01:55:23', '2017-09-19 01:55:23'),
(20, 13, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-19 02:01:28', '2017-09-19 02:01:28'),
(21, 13, 7, 'New Product One', 'NP001', 258.00, 2, '2017-09-19 02:01:29', '2017-09-19 02:01:29'),
(22, 14, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-19 02:07:46', '2017-09-19 02:07:46'),
(23, 14, 7, 'New Product One', 'NP001', 258.00, 3, '2017-09-19 02:07:46', '2017-09-19 02:07:46'),
(24, 15, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-19 02:13:09', '2017-09-19 02:13:09'),
(25, 15, 7, 'New Product One', 'NP001', 258.00, 4, '2017-09-19 02:13:09', '2017-09-19 02:13:09'),
(26, 16, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-19 02:15:21', '2017-09-19 02:15:21'),
(27, 16, 7, 'New Product One', 'NP001', 258.00, 5, '2017-09-19 02:15:21', '2017-09-19 02:15:21'),
(28, 17, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-19 02:16:21', '2017-09-19 02:16:21'),
(29, 17, 7, 'New Product One', 'NP001', 258.00, 5, '2017-09-19 02:16:21', '2017-09-19 02:16:21'),
(30, 17, 9, 'New Product Three', 'NP003', 300.00, 1, '2017-09-19 02:16:21', '2017-09-19 02:16:21'),
(31, 18, 8, 'New Product Two', 'NP002', 299.00, 3, '2017-09-19 02:18:28', '2017-09-19 02:18:28'),
(32, 18, 7, 'New Product One', 'NP001', 258.00, 5, '2017-09-19 02:18:28', '2017-09-19 02:18:28'),
(33, 18, 9, 'New Product Three', 'NP003', 300.00, 1, '2017-09-19 02:18:28', '2017-09-19 02:18:28'),
(34, 19, 7, 'New Product One', 'NP001', 258.00, 3, '2017-09-19 23:43:53', '2017-09-19 23:43:53'),
(35, 20, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-23 02:05:16', '2017-09-23 02:05:16'),
(36, 21, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-23 02:05:53', '2017-09-23 02:05:53'),
(37, 21, 7, 'New Product One', 'NP001', 258.00, 2, '2017-09-23 02:05:53', '2017-09-23 02:05:53'),
(38, 22, 8, 'New Product Two', 'NP002', 299.00, 2, '2017-09-23 02:37:17', '2017-09-23 02:37:17'),
(39, 22, 7, 'New Product One', 'NP001', 258.00, 3, '2017-09-23 02:37:17', '2017-09-23 02:37:17'),
(40, 22, 9, 'New Product Three', 'NP003', 300.00, 5, '2017-09-23 02:37:17', '2017-09-23 02:37:17'),
(41, 23, 27, 'Clothing', 'N301', 1000.00, 1, '2017-10-02 23:21:39', '2017-10-02 23:21:39'),
(42, 24, 27, 'Clothing', 'N301', 1000.00, 2, '2017-10-02 23:47:19', '2017-10-02 23:47:19'),
(43, 24, 28, 'Clothing', 'FGF3', 1000.00, 1, '2017-10-02 23:47:19', '2017-10-02 23:47:19'),
(44, 25, 27, 'Clothing', 'N301', 1000.00, 3, '2017-10-03 01:39:14', '2017-10-03 01:39:14'),
(45, 25, 28, 'Clothing', 'FGF3', 1000.00, 1, '2017-10-03 01:39:14', '2017-10-03 01:39:14'),
(46, 25, 23, 'Clothing', 'N301', 1000.00, 1, '2017-10-03 01:39:14', '2017-10-03 01:39:14'),
(47, 26, 26, 'Clothing', 'N464H', 1000.00, 1, '2017-10-13 22:36:54', '2017-10-13 22:36:54');

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
(9, 9, 'pnexus', 'pending', '2017-09-05 05:03:53', '2017-09-05 05:03:53'),
(10, 10, 'pbkash', 'pending', '2017-09-19 01:39:02', '2017-09-19 01:39:02'),
(11, 11, 'procket', 'pending', '2017-09-19 01:47:09', '2017-09-19 01:47:09'),
(12, 12, 'pvisa', 'pending', '2017-09-19 01:55:23', '2017-09-19 01:55:23'),
(13, 13, 'pbkash', 'pending', '2017-09-19 02:01:28', '2017-09-19 02:01:28'),
(14, 14, 'pnexus', 'pending', '2017-09-19 02:07:46', '2017-09-19 02:07:46'),
(15, 15, 'procket', 'pending', '2017-09-19 02:13:08', '2017-09-19 02:13:08'),
(16, 16, 'procket', 'pending', '2017-09-19 02:15:21', '2017-09-19 02:15:21'),
(17, 17, 'pvisa', 'pending', '2017-09-19 02:16:21', '2017-09-19 02:16:21'),
(18, 18, 'pcash', 'Complete', '2017-09-19 02:18:28', '2017-09-19 03:22:34'),
(19, 19, 'procket', 'pending', '2017-09-19 23:43:53', '2017-09-19 23:43:53'),
(20, 20, 'pvisa', 'pending', '2017-09-23 02:05:16', '2017-09-23 02:05:16'),
(21, 21, 'pvisa', 'pending', '2017-09-23 02:05:53', '2017-09-23 02:05:53'),
(22, 22, 'pbkash', 'pending', '2017-09-23 02:37:17', '2017-09-23 02:37:17'),
(23, 23, 'procket', 'pending', '2017-10-02 23:21:39', '2017-10-02 23:21:39'),
(24, 24, 'pvisa', 'pending', '2017-10-02 23:47:19', '2017-10-02 23:47:19'),
(25, 25, 'pmaster', 'pending', '2017-10-03 01:39:14', '2017-10-03 01:39:14'),
(26, 26, 'procket', 'pending', '2017-10-13 22:36:54', '2017-10-13 22:36:54');

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
  `product_size_weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `discount_product_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `product_name`, `product_code`, `product_size_weight`, `product_color`, `product_sku`, `product_price`, `discount_product_amount`, `discount_product_price`, `top_left_one`, `top_left_two`, `top_right_one`, `top_right_two`, `carousel_slider`, `top_product_status`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 1, 'New Product One', 'NP001', 'Small', 'Black', '91', 258.00, '5', '', 1, 0, 0, 0, 1, 1, 'Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.', '<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>', 'product-images/1.jpg', 1, '2017-08-27 06:36:39', '2017-09-19 03:22:34'),
(8, 1, 1, 1, 'New Product Two', 'NP002', 'Small', 'Black', '193', 299.00, '', '', 0, 1, 0, 0, 1, 1, 'Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.', '<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>', 'product-images/2.jpg', 1, '2017-08-27 06:37:32', '2017-09-19 03:22:34'),
(9, 2, 12, 2, 'New Product Three', 'NP003', 'Large', 'Pink', '297', 300.00, '', '', 0, 0, 1, 0, 1, 1, 'Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.', '<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>\r\n\r\n<p>Seome Content goes here about product description. Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description.Seome Content goes here about product description. Seome Content goes here about product description.</p>', 'product-images/3.jpg', 1, '2017-08-27 06:38:49', '2017-09-19 03:22:34'),
(10, 1, 1, 1, 'Health and Beauty', 'N464H', 'Small', 'Black', '0', 200.00, '50', '20', 1, 1, 1, 1, 1, 1, 'Well', '<p>Well</p>', 'product-images/1 - Copy.jpg', 1, '2017-09-23 04:16:34', '2017-09-23 04:16:34'),
(11, 4, 25, 1, 'Jewelry', 'N301', 'Small', 'Black', '0', 500.00, '20', '400', 1, 1, 1, 1, 1, 1, 'Well', '<p>Well</p>', 'product-images/2 - Copy.jpg', 1, '2017-09-23 04:36:09', '2017-09-23 04:36:09'),
(12, 2, 12, 1, 'Clothing', 'N464H', 'Small', 'Black', '0', 1000.00, '20', '800', 1, 1, 1, 1, 1, 1, 'Well', '<p>Well</p>', 'product-images/414JEqVb6ML.jpg', 1, '2017-09-23 11:48:11', '2017-09-23 11:48:11'),
(13, 1, 3, 1, 'Life Style', 'N464H', 'Small', 'Black', '0', 1000.00, '30', '700', 1, 0, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/500.jpg', 1, '2017-09-26 05:47:25', '2017-09-26 05:47:25'),
(14, 1, 1, 1, 'Life Style', 'N464H', 'Small', 'Pink', '0', 500.00, '10', '450', 1, 0, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/5035.jpg', 1, '2017-09-26 05:49:18', '2017-09-26 05:49:18'),
(15, 1, 1, 1, 'Life Style', 'N4H', 'Small', 'Orange', '0', 1000.00, '0', '1000', 1, 0, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/161319-04.jpg', 1, '2017-09-26 05:51:43', '2017-09-26 05:51:43'),
(16, 1, 1, 1, 'Life Style', 'N301', '500 gm', 'White', '0', 1000.00, '20', '800', 0, 0, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/ambre-nuit-cmjn.jpg', 1, '2017-09-26 05:53:22', '2017-09-26 05:53:22'),
(17, 1, 1, 1, 'Life Style', 'FGF3', 'Mediam', 'White', '0', 500.00, '6', '470', 1, 0, 0, 0, 1, 1, 'Well', '<p>well</p>', 'product-images/aotw.jpg', 1, '2017-09-26 05:55:15', '2017-09-26 05:55:15'),
(18, 1, 1, 1, 'Life Style', 'N301', 'Mediam', 'White', '0', 1000.00, '8', '920', 1, 0, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/aotw.jpg', 1, '2017-09-26 05:58:54', '2017-09-26 05:58:54'),
(19, 2, 12, 1, 'Clothing', 'N301', '500 gm', 'Black', '0', 1000.00, '25', '750', 0, 0, 1, 0, 1, 1, 'Well', '<p>Well</p>', 'product-images/bb544b.jpg', 1, '2017-09-26 06:00:28', '2017-09-26 06:00:28'),
(20, 3, 23, 1, 'Clothing', 'FGF3', 'Mediam', 'Black', '0', 500.00, '10', '450', 0, 0, 1, 0, 1, 1, 'Well', '<p>Well</p>', 'product-images/fragrace.jpg', 1, '2017-09-26 06:18:03', '2017-09-26 06:18:03'),
(21, 1, 3, 1, 'Life Style', 'N301', 'Small', 'Black', '89', 1000.00, '9', '910', 0, 0, 1, 0, 1, 1, 'well', '<p>well</p>', 'product-images/_V280609445_.jpg', 1, '2017-09-26 23:32:22', '2017-09-26 23:32:22'),
(22, 1, 1, 1, 'Clothing', 'N464H', 'Small', 'Pink', '89', 1000.00, '10', '900', 0, 0, 0, 1, 1, 1, 'well', '<p>well</p>', 'product-images/640x640.jpg', 1, '2017-09-26 23:56:57', '2017-09-26 23:56:57'),
(23, 2, 15, 1, 'Clothing', 'N301', 'M', 'Red', '89', 1000.00, '10', '900', 1, 0, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/Toddler-Girls-Floral-Red-Long-Sleeve-Dress-Party-baby-girl-dress-1-year-girl-baby-birthday.jpg', 1, '2017-09-27 02:59:22', '2017-09-27 02:59:22'),
(24, 2, 12, 1, 'Clothing', 'N301', 'Small', 'White', '89', 1000.00, '0', '1000', 1, 1, 1, 1, 1, 1, 'well', '<p>well</p>', 'product-images/2017-S.jpg', 1, '2017-09-27 03:02:08', '2017-09-27 03:02:08'),
(25, 2, 12, 1, 'Clothing', 'N464H', 'Small', 'Orange', '89', 200.00, '20', '160', 0, 0, 1, 0, 1, 1, 'well', '<p>well</p>', 'product-images/Toddler-Girls-Floral-Red-Long-Sleeve-Dress-Party-baby-girl-dress-1-year-girl-baby-birthday.jpg', 1, '2017-09-27 04:03:51', '2017-09-27 04:03:51'),
(26, 2, 13, 2, 'Clothing', 'N464H', 'L', 'Red', '89', 1000.00, '20', '800', 0, 1, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/102719.Jpg', 1, '2017-09-27 04:09:54', '2017-09-27 04:09:54'),
(27, 2, 12, 1, 'Clothing', 'N301', 'L', 'Red', '1', 1000.00, '30', '700', 0, 0, 0, 1, 1, 1, 'well', '<p>well</p>', 'product-images/0x640.jpg', 1, '2017-09-27 04:11:59', '2017-09-27 04:11:59'),
(28, 2, 12, 1, 'Clothing', 'FGF3', 'L', 'Red', '1', 1000.00, '25', '750', 1, 0, 0, 0, 1, 1, 'well', '<p>well</p>', 'product-images/Year.jpg', 1, '2017-09-27 04:13:49', '2017-09-27 04:13:49');

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
(30, 9, 'product-sub-images/18.png', '2017-08-27 06:38:49', '2017-08-27 06:38:49'),
(31, 10, 'product-sub-images/1.jpg', '2017-09-23 04:16:34', '2017-09-23 04:16:34'),
(32, 10, 'product-sub-images/2 - Copy.jpg', '2017-09-23 04:16:34', '2017-09-23 04:16:34'),
(33, 10, 'product-sub-images/2.jpg', '2017-09-23 04:16:34', '2017-09-23 04:16:34'),
(34, 11, 'product-sub-images/1 - Copy.jpg', '2017-09-23 04:36:09', '2017-09-23 04:36:09'),
(35, 11, 'product-sub-images/1.jpg', '2017-09-23 04:36:09', '2017-09-23 04:36:09'),
(36, 11, 'product-sub-images/2.jpg', '2017-09-23 04:36:09', '2017-09-23 04:36:09'),
(37, 12, 'product-sub-images/bb544b.jpg', '2017-09-23 11:48:12', '2017-09-23 11:48:12'),
(38, 12, 'product-sub-images/zara-perfume.jpeg', '2017-09-23 11:48:12', '2017-09-23 11:48:12'),
(39, 13, 'product-sub-images/500.jpg', '2017-09-26 05:47:26', '2017-09-26 05:47:26'),
(40, 13, 'product-sub-images/cnom.jpg', '2017-09-26 05:47:26', '2017-09-26 05:47:26'),
(41, 13, 'product-sub-images/com.jpg', '2017-09-26 05:47:26', '2017-09-26 05:47:26'),
(42, 14, 'product-sub-images/500.jpg', '2017-09-26 05:49:18', '2017-09-26 05:49:18'),
(43, 14, 'product-sub-images/5035.jpg', '2017-09-26 05:49:18', '2017-09-26 05:49:18'),
(44, 14, 'product-sub-images/161319-04.jpg', '2017-09-26 05:49:18', '2017-09-26 05:49:18'),
(45, 15, 'product-sub-images/5035.jpg', '2017-09-26 05:51:43', '2017-09-26 05:51:43'),
(46, 15, 'product-sub-images/161319-04.jpg', '2017-09-26 05:51:43', '2017-09-26 05:51:43'),
(47, 15, 'product-sub-images/a99.jpeg', '2017-09-26 05:51:43', '2017-09-26 05:51:43'),
(48, 16, 'product-sub-images/ambre-nuit-cmjn.jpg', '2017-09-26 05:53:23', '2017-09-26 05:53:23'),
(49, 16, 'product-sub-images/aotw.jpg', '2017-09-26 05:53:23', '2017-09-26 05:53:23'),
(50, 16, 'product-sub-images/bb544b.jpg', '2017-09-26 05:53:23', '2017-09-26 05:53:23'),
(51, 16, 'product-sub-images/bottles.jpg', '2017-09-26 05:53:23', '2017-09-26 05:53:23'),
(52, 17, 'product-sub-images/aotw.jpg', '2017-09-26 05:55:15', '2017-09-26 05:55:15'),
(53, 17, 'product-sub-images/bb544b.jpg', '2017-09-26 05:55:15', '2017-09-26 05:55:15'),
(54, 17, 'product-sub-images/bottles.jpg', '2017-09-26 05:55:15', '2017-09-26 05:55:15'),
(55, 18, 'product-sub-images/aotw.jpg', '2017-09-26 05:58:55', '2017-09-26 05:58:55'),
(56, 18, 'product-sub-images/bb544b.jpg', '2017-09-26 05:58:55', '2017-09-26 05:58:55'),
(57, 18, 'product-sub-images/bottles.jpg', '2017-09-26 05:58:55', '2017-09-26 05:58:55'),
(58, 19, 'product-sub-images/bottles.jpg', '2017-09-26 06:00:28', '2017-09-26 06:00:28'),
(59, 19, 'product-sub-images/c763.jpg', '2017-09-26 06:00:28', '2017-09-26 06:00:28'),
(60, 19, 'product-sub-images/cnom.jpg', '2017-09-26 06:00:28', '2017-09-26 06:00:28'),
(61, 20, 'product-sub-images/fragrace.jpg', '2017-09-26 06:18:03', '2017-09-26 06:18:03'),
(62, 20, 'product-sub-images/fragrance.jpg', '2017-09-26 06:18:03', '2017-09-26 06:18:03'),
(63, 20, 'product-sub-images/granville-cmjn.jpg', '2017-09-26 06:18:03', '2017-09-26 06:18:03'),
(64, 21, 'product-sub-images/_V280609445_.jpg', '2017-09-26 23:32:22', '2017-09-26 23:32:22'),
(65, 21, 'product-sub-images/0x640.jpg', '2017-09-26 23:32:22', '2017-09-26 23:32:22'),
(66, 22, 'product-sub-images/0x640.jpg', '2017-09-26 23:56:57', '2017-09-26 23:56:57'),
(67, 22, 'product-sub-images/91iky1TA3FL._UL1500_.jpg', '2017-09-26 23:56:57', '2017-09-26 23:56:57'),
(68, 22, 'product-sub-images/640x640.jpg', '2017-09-26 23:56:57', '2017-09-26 23:56:57'),
(69, 23, 'product-sub-images/Toddler-Girls-Floral-Red-Long-Sleeve-Dress-Party-baby-girl-dress-1-year-girl-baby-birthday.jpg', '2017-09-27 02:59:22', '2017-09-27 02:59:22'),
(70, 23, 'product-sub-images/Year.jpg', '2017-09-27 02:59:22', '2017-09-27 02:59:22'),
(71, 24, 'product-sub-images/Girls-dress._V289279304_.jpg', '2017-09-27 03:02:08', '2017-09-27 03:02:08'),
(72, 24, 'product-sub-images/Year.jpg', '2017-09-27 03:02:08', '2017-09-27 03:02:08'),
(73, 25, 'product-sub-images/Toddler-Girls-Floral-Red-Long-Sleeve-Dress-Party-baby-girl-dress-1-year-girl-baby-birthday.jpg', '2017-09-27 04:03:51', '2017-09-27 04:03:51'),
(74, 25, 'product-sub-images/Year.jpg', '2017-09-27 04:03:52', '2017-09-27 04:03:52'),
(75, 26, 'product-sub-images/-dress.jpg', '2017-09-27 04:09:54', '2017-09-27 04:09:54'),
(76, 26, 'product-sub-images/Girls-dress._V289279304_.jpg', '2017-09-27 04:09:54', '2017-09-27 04:09:54'),
(77, 27, 'product-sub-images/_V280609445_.jpg', '2017-09-27 04:11:59', '2017-09-27 04:11:59'),
(78, 27, 'product-sub-images/0x640.jpg', '2017-09-27 04:11:59', '2017-09-27 04:11:59'),
(79, 27, 'product-sub-images/91iky1TA3FL._UL1500_.jpg', '2017-09-27 04:11:59', '2017-09-27 04:11:59'),
(80, 28, 'product-sub-images/Toddler-Girls-Floral-Red-Long-Sleeve-Dress-Party-baby-girl-dress-1-year-girl-baby-birthday.jpg', '2017-09-27 04:13:49', '2017-09-27 04:13:49'),
(81, 28, 'product-sub-images/Year.jpg', '2017-09-27 04:13:49', '2017-09-27 04:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `review_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer_id`, `review_product`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 26, 21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, '2017-10-14 04:41:41', '2017-10-14 23:23:25'),
(2, 27, 21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 0, '2017-10-14 04:52:04', '2017-10-15 01:24:49'),
(3, 27, 21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 0, '2017-10-14 04:53:15', '2017-10-15 02:08:28'),
(6, 27, 21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2017-10-14 23:49:19', '2017-10-15 02:08:21'),
(7, 9, 23, 'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 1, '2017-10-15 02:06:22', '2017-10-15 02:08:26');

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
(12, 'asdas asdasd', '123123', 'ZXZXZX', '2017-09-05 05:03:47', '2017-09-05 05:03:47'),
(13, 'Sajedul Islam', '019877665545', 'dhaka', '2017-09-19 01:38:54', '2017-09-19 01:38:54'),
(14, 'Sajedul Islam', '019877665545', 'dhaka', '2017-09-19 01:47:00', '2017-09-19 01:47:00'),
(15, 'Sajedul Islam', '019877665545', 'Dhaka', '2017-09-19 01:55:09', '2017-09-19 01:55:09'),
(16, 'Sajedul Islam', '019871146242', 'Dhaka', '2017-09-19 02:01:19', '2017-09-19 02:01:19'),
(17, 'Sajedul Islam', '019877665545', 'Dhaka', '2017-09-19 02:07:37', '2017-09-19 02:07:37'),
(18, 'Sajid Kumar', '01715141214', 'Farmgate', '2017-09-19 02:12:58', '2017-09-19 02:12:58'),
(19, 'Sajid Kumar', '01715141214', 'Farmgate', '2017-09-19 02:15:13', '2017-09-19 02:15:13'),
(20, 'Sajid Kumar', '01715141214', 'Farmgate', '2017-09-19 02:16:13', '2017-09-19 02:16:13'),
(21, 'Sajid Kumar', '01715141214', 'Farmgate', '2017-09-19 02:18:19', '2017-09-19 02:18:19'),
(22, 'Sajedul Islam', '019877665545', 'Dhaka', '2017-09-19 23:43:44', '2017-09-19 23:43:44'),
(23, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-09-23 02:05:10', '2017-09-23 02:05:10'),
(24, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-09-23 02:05:45', '2017-09-23 02:05:45'),
(25, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-09-23 02:37:07', '2017-09-23 02:37:07'),
(26, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-09-25 05:13:07', '2017-09-25 05:13:07'),
(27, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-10-02 21:42:36', '2017-10-02 21:42:36'),
(28, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-10-02 23:21:28', '2017-10-02 23:21:28'),
(29, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-10-02 23:24:00', '2017-10-02 23:24:00'),
(30, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-10-02 23:43:52', '2017-10-02 23:43:52'),
(31, 'Zakir Hossen', '0198172763524', 'Dhaka', '2017-10-03 01:39:08', '2017-10-03 01:39:08'),
(32, 'Sajedul Islam', '01010999292', 'dhaka', '2017-10-13 22:36:45', '2017-10-13 22:36:45');

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
(7, 1, 1, 'slider-images/01.jpg', 'slider-images/thumb-01.jpg', 0, '2017-08-27 05:48:05', '2017-09-27 05:09:05'),
(8, 2, 2, 'slider-images/02.jpg', 'slider-images/thumb-02.jpg', 0, '2017-08-27 05:53:51', '2017-09-27 05:09:08'),
(9, 1, 1, 'slider-images/03.jpg', 'slider-images/thumb-03.jpg', 0, '2017-08-27 05:54:39', '2017-09-27 05:09:11'),
(10, 3, 3, 'slider-images/04.jpg', 'slider-images/thumb-04.jpg', 0, '2017-08-27 05:55:02', '2017-09-27 05:09:13'),
(11, 1, 1, 'slider-images/05.jpg', 'slider-images/thumb-05.jpg', 0, '2017-08-27 05:56:59', '2017-09-27 05:09:16'),
(12, 2, 2, 'slider-images/.001.jpg', 'slider-images/.001.jpg', 1, '2017-09-27 05:04:21', '2017-09-27 05:04:21'),
(13, 3, 3, 'slider-images/_56_0.jpg', 'slider-images/_56_0.jpg', 1, '2017-09-27 05:04:52', '2017-09-27 05:04:52'),
(14, 3, 3, 'slider-images/8cca57b326.jpg', 'slider-images/8cca57b326.jpg', 1, '2017-09-27 05:05:18', '2017-09-27 05:05:18'),
(15, 3, 3, 'slider-images/77-1-6cf4f.jpg', 'slider-images/77-1-6cf4f.jpg', 1, '2017-09-27 05:06:06', '2017-09-27 05:06:06'),
(16, 3, 3, 'slider-images/186ff7ac1bd93.jpg', 'slider-images/186ff7ac1bd93.jpg', 1, '2017-09-27 05:06:41', '2017-09-27 05:06:41'),
(17, 3, 3, 'slider-images/186ff7ac1bd93.jpg', 'slider-images/186ff7ac1bd93.jpg', 1, '2017-09-27 05:07:04', '2017-09-27 05:07:04'),
(18, 3, 3, 'slider-images/0028357ed4.jpg', 'slider-images/0028357ed4.jpg', 1, '2017-09-27 05:07:33', '2017-09-27 05:07:33'),
(19, 3, 3, 'slider-images/82448-1.jpg', 'slider-images/82448-1.jpg', 1, '2017-09-27 05:07:58', '2017-09-27 05:07:58'),
(20, 3, 3, 'slider-images/blouse-15901.jpg', 'slider-images/blouse-15901.jpg', 1, '2017-09-27 05:08:21', '2017-09-27 05:08:21'),
(21, 3, 3, 'slider-images/get-in.jpg', 'slider-images/get-in.jpg', 1, '2017-09-27 05:08:44', '2017-09-27 05:08:44');

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
(30, 4, 'Others', 'Well', 1, '2017-08-25 23:07:11', '2017-08-25 23:07:11'),
(31, 2, 'Helth', 'Well', 1, '2017-09-21 03:35:17', '2017-09-21 03:35:17');

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

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(22, 18, 8, '2017-09-21 00:49:41', '2017-09-21 00:49:41'),
(23, 18, 9, '2017-09-21 01:13:57', '2017-09-21 01:13:57'),
(24, 8, 8, '2017-09-21 01:23:44', '2017-09-21 01:23:44'),
(25, 8, 7, '2017-09-21 01:23:48', '2017-09-21 01:23:48'),
(26, 8, 9, '2017-09-21 01:46:17', '2017-09-21 01:46:17'),
(27, 21, 9, '2017-09-23 02:04:42', '2017-09-23 02:04:42'),
(28, 21, 8, '2017-09-23 02:05:24', '2017-09-23 02:05:24'),
(29, 21, 7, '2017-09-23 02:05:27', '2017-09-23 02:05:27'),
(30, 21, 10, '2017-09-23 04:20:07', '2017-09-23 04:20:07'),
(31, 21, 12, '2017-09-24 03:33:59', '2017-09-24 03:33:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `now_orders`
--
ALTER TABLE `now_orders`
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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `now_orders`
--
ALTER TABLE `now_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
