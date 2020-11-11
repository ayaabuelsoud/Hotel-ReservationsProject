-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 11:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelproject`
--

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
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Passport` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `Name`, `Email`, `Phone`, `Address`, `country`, `Passport`, `created_at`, `updated_at`) VALUES
(1, 'Audreanne Keebler', 'ewald35@example.org', '868-356-3315', '6q05TfExOb', 'fuvarMu7MT', '0', '2020-11-06 13:10:56', '2020-11-06 13:10:56'),
(2, 'Lavina Reichert V', 'pouros.nikolas@example.net', '392.497.5244 x65900', '3mfWthnMoz', 'wBLByIM7bf', '5', '2020-11-06 13:10:56', '2020-11-06 13:10:56'),
(3, 'Samanta Schiller', 'derick.hegmann@example.com', '(649) 786-2968', '9PUCM4uPnX', '0iehlxvyig', '29837', '2020-11-06 13:10:56', '2020-11-06 13:10:56'),
(4, 'Mr. Jayde Nienow', 'myrl25@example.net', '203-220-6875', 'x4e8raYksr', 'r406lUtRYI', '244', '2020-11-06 13:11:48', '2020-11-06 13:11:48'),
(5, 'Mr. Jarod Franecki Jr.', 'mmohr@example.com', '806.368.4909 x173', 'bpFlmp9X7I', 'RSbHSuZWq4', '14356', '2020-11-06 13:11:48', '2020-11-06 13:11:48'),
(6, 'Vena Murpy', 'rath.grayce@example.com', '337.788.3146', 'LgJlfWyvTi', 'k5a3o7ru9J', '464565656y6y76y', '2020-11-06 13:11:48', '2020-11-07 07:19:34'),
(16, 'ayoya', 'erferf@jije.com', '83475834658', 'mansoura', 'Egypt', 'iergierjfgierjfierjfg', '2020-11-07 07:19:56', '2020-11-07 07:19:56');

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_11_05_181225_create_guests_table', 1),
(11, '2020_11_05_181445_create_rooms_table', 1),
(12, '2020_11_05_181746_create_reservations_table', 1);

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
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` date NOT NULL,
  `RoomId` bigint(20) UNSIGNED NOT NULL,
  `Guestsid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `CheckIn`, `CheckOut`, `RoomId`, `Guestsid`, `created_at`, `updated_at`) VALUES
(1, '2003-04-26', '1970-04-14', 4, 4, '2020-11-06 13:11:48', '2020-11-06 13:11:48'),
(2, '1979-09-08', '1979-10-30', 5, 5, '2020-11-06 13:11:49', '2020-11-06 13:11:49'),
(3, '1978-01-11', '2020-01-19', 6, 6, '2020-11-06 13:11:49', '2020-11-06 13:11:49'),
(5, '2020-11-07', '2020-11-14', 5, 16, '2020-11-07 07:44:15', '2020-11-07 07:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Level` int(11) NOT NULL,
  `State` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `View` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Floor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `Level`, `State`, `View`, `Floor`, `created_at`, `updated_at`) VALUES
(1, 2, 'empty', '76KzyYZUSd', 6, '2020-11-06 13:11:41', '2020-11-07 07:14:34'),
(2, 9, 'empty', 'Tx7Pj9Qxo4', 4, '2020-11-06 13:11:41', '2020-11-07 07:03:22'),
(3, 4, 'Full', 'aCuV6hIUJ7', 8, '2020-11-06 13:11:41', '2020-11-07 07:03:09'),
(4, 3, 'Full', 'aeciAwHeq0', 7, '2020-11-06 13:11:48', '2020-11-07 07:03:50'),
(5, 7, 'empty', 'eYQisTxDyF', 5, '2020-11-06 13:11:48', '2020-11-07 07:04:12'),
(6, 5, 'Full', 'CgnLaXknhC', 9, '2020-11-06 13:11:48', '2020-11-07 07:04:00');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ayaabuelsoud', 'ayaabuelsoud98@gmail.com', NULL, '$2y$10$I.Kfwr3oeMpdOICQQZ9Gbu5XqQLzhLmOOMDI3dghy2fdkt3y7SQrW', NULL, '2020-11-06 14:01:00', '2020-11-06 14:01:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
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
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_roomid_foreign` (`RoomId`),
  ADD KEY `reservations_guestsid_foreign` (`Guestsid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_guestsid_foreign` FOREIGN KEY (`Guestsid`) REFERENCES `guests` (`id`),
  ADD CONSTRAINT `reservations_roomid_foreign` FOREIGN KEY (`RoomId`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
