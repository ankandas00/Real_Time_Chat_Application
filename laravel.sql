-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2025 at 08:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `msg_id` bigint(20) UNSIGNED NOT NULL,
  `msg` varchar(255) NOT NULL,
  `snd_id` varchar(255) NOT NULL,
  `rcv_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`msg_id`, `msg`, `snd_id`, `rcv_id`, `created_at`, `updated_at`) VALUES
(12, 'hey apu9!', '13', '8', '2025-12-02 02:29:37', '2025-12-02 02:29:37'),
(13, 'hey apu14!', '8', '13', '2025-12-02 02:30:31', '2025-12-02 02:30:31'),
(14, 'how r uh ?', '8', '13', '2025-12-02 02:33:08', '2025-12-02 02:33:08'),
(15, 'apu11!', '8', '10', '2025-12-02 03:00:04', '2025-12-02 03:00:04'),
(16, 'apu9!', '10', '8', '2025-12-02 03:01:30', '2025-12-02 03:01:30'),
(17, 'apu12!', '10', '11', '2025-12-02 03:01:55', '2025-12-02 03:01:55'),
(18, 'apu13', '10', '12', '2025-12-02 03:02:04', '2025-12-02 03:02:04'),
(19, 'apu14', '10', '13', '2025-12-02 03:02:11', '2025-12-02 03:02:11'),
(20, 'apu15', '10', '14', '2025-12-02 03:02:22', '2025-12-02 03:02:22'),
(21, 'apu10', '10', '9', '2025-12-02 03:02:40', '2025-12-02 03:02:40'),
(22, 'hi', '10', '8', '2025-12-02 03:04:34', '2025-12-02 03:04:34'),
(23, 'helo', '8', '10', '2025-12-02 03:05:08', '2025-12-02 03:05:08'),
(24, 'hey apu9!', '10', '8', '2025-12-04 15:02:07', '2025-12-04 15:02:07'),
(25, 'hey psu11!', '8', '10', '2025-12-04 15:03:10', '2025-12-04 15:03:10');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_11_26_091634_chat', 2),
(6, '2025_11_28_192542_abc', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uimg` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `uimg`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'apu9', 'a9@gmail.com', '$2y$12$MRPJKCDSIPsCwWeLJMG5kOluC4TUqjOGsH3x2uGN/RlVKGxfyf.B2', '1763462172beet.jpg', NULL, '2025-11-18 18:36:12', '2025-11-18 18:36:12'),
(9, 'apu10', 'a10@gmail.com', '$2y$12$Gp8aLmCQRKA.aFC/ojH1LOhpju93KCHORNMyTdoAyRL9df63n1/Oa', '1763462193carrot.jpg', NULL, '2025-11-18 18:36:33', '2025-11-18 18:36:33'),
(10, 'apu11', 'a11@gmail.com', '$2y$12$5sXrZzxWiJTZjMrMDHZhM.DI11yl8wENPYz4S0mU5cnBfUQQj5rrG', '1763462380fruits.jpg', NULL, '2025-11-18 18:39:40', '2025-11-18 18:39:40'),
(11, 'apu12', 'a12@gmail.com', '$2y$12$OD6wHUGMCDk7IM9ctnPwUu3O2TtcO4bBRbGEUgQSO7q5gxAUI9o2O', '1763462406green-chili.jpg', NULL, '2025-11-18 18:40:06', '2025-11-18 18:40:06'),
(12, 'apu13', 'a13@gmail.com', '$2y$12$cU8DiWVTBy5i3wKY6bysKOq0HI2WLjRxcqUcl712MLROsl9LstCyK', '1763462436red-chili.jpg', NULL, '2025-11-18 18:40:36', '2025-11-18 18:40:36'),
(13, 'apu14', 'a14@gmail.com', '$2y$12$FxccgDcULufvWL/v8hT7puJl8Wuzw6xJkN/6D4bkiLNDpwOptkfIa', '1763462458lemons.jpg', NULL, '2025-11-18 18:40:58', '2025-11-18 18:40:58'),
(14, 'apu15', 'a15@gmail.com', '$2y$12$JrcRgkArDCqSWVmJPM6T5.mHlyCfC4e9whrOVci2mNoNB/NbCYYt6', '1763462483orange-lemon.jpg', NULL, '2025-11-18 18:41:23', '2025-11-18 18:41:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`msg_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `msg_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
