-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 04:31 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(10) UNSIGNED DEFAULT NULL,
  `commentable_type` varchar(151) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `parent_id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(7, 8, NULL, '1st comment', 3, 'App\\Post', '2019-02-18 00:10:03', '2019-02-18 00:10:03'),
(8, 8, 7, 'yess eti e prothom', 3, 'App\\Post', '2019-02-18 00:10:18', '2019-02-18 00:10:18'),
(10, 8, 7, 'na', 3, 'App\\Post', '2019-02-18 00:10:43', '2019-02-18 00:10:43'),
(11, 8, 8, 'hmmmmmmmm', 3, 'App\\Post', '2019-02-18 00:11:31', '2019-02-18 00:11:31'),
(12, 8, 8, 'kkkk', 3, 'App\\Post', '2019-02-18 00:14:07', '2019-02-18 00:14:07'),
(13, 8, 8, 'okkk', 3, 'App\\Post', '2019-02-18 00:40:13', '2019-02-18 00:40:13'),
(14, 8, 11, 'nooo', 3, 'App\\Post', '2019-02-18 00:40:37', '2019-02-18 00:40:37'),
(15, 8, NULL, '1', 4, 'App\\Post', '2019-02-18 01:30:23', '2019-02-18 01:30:23'),
(16, 8, 15, '2', 4, 'App\\Post', '2019-02-18 01:30:33', '2019-02-18 01:30:33'),
(17, 8, 16, '3', 4, 'App\\Post', '2019-02-18 01:30:37', '2019-02-18 01:30:37'),
(18, 8, 17, '4', 4, 'App\\Post', '2019-02-18 01:30:41', '2019-02-18 01:30:41'),
(19, 8, NULL, '2', 4, 'App\\Post', '2019-02-18 01:30:49', '2019-02-18 01:30:49'),
(20, 7, NULL, '3', 4, 'App\\Post', '2019-02-18 01:31:40', '2019-02-18 01:31:40'),
(21, 7, 19, '2', 4, 'App\\Post', '2019-02-18 01:32:10', '2019-02-18 01:32:10'),
(22, 7, 21, '2', 4, 'App\\Post', '2019-02-18 01:32:16', '2019-02-18 01:32:16'),
(23, 8, NULL, 'fhsdjkfhsdjkfhjskf', 5, 'App\\Post', '2019-02-24 22:43:03', '2019-02-24 22:43:03'),
(24, 8, 23, 'sdlkfjsdljfksd', 5, 'App\\Post', '2019-02-24 22:43:09', '2019-02-24 22:43:09'),
(25, 8, NULL, 'sojol tertewrwe', 5, 'App\\Post', '2019-02-24 22:43:29', '2019-02-24 22:43:29'),
(26, 7, NULL, 'jldksjfklsdjklfjdlksjfdsf', 5, 'App\\Post', '2019-02-24 22:44:32', '2019-02-24 22:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(151) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_17_085548_create_posts_table', 2),
(4, '2019_02_17_090644_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(151) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(151) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(151) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(2, 'test', 'here is body', '2019-02-17 22:25:05', '2019-02-17 22:25:05'),
(3, 'test 2', 'here is body', '2019-02-17 22:31:44', '2019-02-17 22:31:44'),
(4, 'test 3', 'dsfsdfsdfsdfwerwerwe werwerwrwer werwerwer werwerwe', '2019-02-18 01:30:14', '2019-02-18 01:30:14'),
(5, 'laravel this is tet', 'sdfsdfsdfsdkfl;kwpouerpfokds;k cpojkfpow cmpofowekpfwer', '2019-02-24 22:42:56', '2019-02-24 22:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(151) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(151) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(151) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `isAdmin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'ramjan', 0, 'ramjan@gmail.com', NULL, '$2y$10$JT75JUoNfOg6i.EhBot3L.akqh9X9SBzYEfOKr0PPSW2jqLyVWD/e', 'k2OOPxue9IMLulqLqSYmEs2QTARySa7sNLpAv4N8t977RVoJXvTky0zX3duF', '2019-02-16 23:35:22', '2019-02-16 23:35:22'),
(8, 'arnab', 1, 'arnab@gmail.com', NULL, '$2y$10$C8uUYLyK1BVQ/8SoeFFww.KvM8KUix0dCj8DV/IAnHvuJ5hnNcCMm', 'pUPotLFFUDUAtOL930XuIYyfLZNUnJzcEYZSk5b4hFDfKPizdK5dkhEL7DXB', '2019-02-16 23:35:47', '2019-02-16 23:35:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
