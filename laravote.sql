-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 10:43 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravote`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_ketua` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wakil` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_kerja` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_paslon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `nama_ketua`, `nama_wakil`, `visi`, `misi`, `program_kerja`, `photo_paslon`, `created_at`, `updated_at`) VALUES
(4, 'ikbar', 'irfan', '<p>Visi: Menjadikan OSIS sebagai organisasi yang SMART (Sigap, Musyawarah, Adil, Religius, dan Teliti)<br />\r\n<br />\r\n&nbsp;</p>', '<p>Meningkatkan ketaqwaan dan keimanan kepada Tuhan Yang Maha Esa<br />\r\nMengembangkan tanggung jawab, rasa sosial, dan sikap menghargai<br />\r\nMeningkatkan program kerja sekolah.<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>', '<p>menghabiskan uang</p>', 'paslon/4TtKTBFQ3amyrVRFG8SaXaI3narCUzMHdAnJLwPy.jpeg', '2022-08-22 07:10:12', '2022-08-22 08:09:14'),
(5, 'fikri', 'aseppp', '<p>asdasdsa</p>', '<p>asdasdaasdasdas</p>', '<p>adasdas</p>', 'paslon/Jbul29TWuDsbuAxVerfULlqdH62aAlaqaAYwXIrk.jpeg', '2022-08-22 07:11:09', '2022-08-22 07:11:09');

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
(3, '2019_03_03_165438_create_candidates_table', 1),
(4, '2019_03_30_172951_penyesuaian_table_users', 1),
(5, '2019_04_23_071405_add_field_socialite_to_users_table', 1),
(6, '2023_02_04_075249_add_new_fields_users', 2),
(7, '2023_02_04_075458_create_user_otps_table', 3);

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
('fikrimaulanaikhsan@gmail.com', '$2y$10$HuegletHOCIdhTEQQBwhcOBwmuaabzGVKarS65TbzpL1BLKy5zXYm', '2022-08-23 10:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `socialite_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialite_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('BELUM','SUDAH') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `socialite_id`, `socialite_name`, `photo`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `nik`, `address`, `mobile_no`, `roles`, `candidate_id`, `status`) VALUES
(1, NULL, NULL, NULL, 'admin', 'admin@admin.com', NULL, '$2y$10$YiySD.A.Ts1qMsow6/dhEOXeO9zo1S.uspTJbRbQLajFqOZV.4Jiy', NULL, '2020-11-25 10:50:29', '2020-11-25 10:50:29', '6402052908960001', 'perum abdinegara kecamatan mangkubumi', '085250708309', '[\"ADMIN\"]', NULL, 'SUDAH'),
(3, NULL, NULL, NULL, 'fikri maulana', 'fikrimaulanaikhsan@gmail.com', NULL, '$2y$10$OkgMdClxZYxWufkC.BvMs.F7mUb8osqbMmVUZI2pmTTgmnL5Nnr.e', NULL, '2022-08-22 07:13:24', '2022-08-22 07:19:17', '1234567890123456', 'mangkubumi', '085352506663', '[\"VOTER\"]', 5, 'SUDAH'),
(4, NULL, NULL, NULL, 'ikbar', 'ikbar@user', NULL, '$2y$10$27Awcr1nmwytAmujNy.vkOHkPrMuyH8VUK.HRlAzf9Q/QCcqLrTXW', NULL, '2022-08-22 07:21:29', '2022-08-22 07:21:29', '1234567890123455', 'rajapolah ciamis', '085352506664', '[\"VOTER\"]', NULL, 'BELUM'),
(5, NULL, NULL, NULL, 'Ginda  Sundara', 'ginda.sundara45@gmail.com', NULL, '$2y$10$P/q8aDWGt1Q7zJjU2jbmYOOHKUIeGA3Mezlr7E1QBmbq11.Vs9qP2', NULL, '2023-01-23 21:00:41', '2023-01-23 21:08:57', '3278065106790004', 'cibeureum tasikmalaya', '083826250261', '[\"VOTER\"]', 4, 'SUDAH');

-- --------------------------------------------------------

--
-- Table structure for table `verification_codes`
--

CREATE TABLE `verification_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verification_codes`
--

INSERT INTO `verification_codes` (`id`, `user_id`, `otp`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 3, '797284', '2023-02-04 02:16:47', '2023-02-04 02:16:39', '2023-02-04 02:16:47'),
(2, 1, '641929', '2023-02-04 02:31:28', '2023-02-04 02:31:20', '2023-02-04 02:31:28'),
(3, 3, '873918', '2023-02-04 02:32:03', '2023-02-04 02:31:57', '2023-02-04 02:32:03'),
(4, 1, '825157', '2023-02-04 02:41:37', '2023-02-04 02:41:30', '2023-02-04 02:41:37'),
(5, 1, '341348', '2023-02-04 02:41:57', '2023-02-04 02:41:48', '2023-02-04 02:41:57'),
(6, 1, '481495', '2023-02-04 03:16:03', '2023-02-04 03:15:55', '2023-02-04 03:16:03'),
(7, 1, '879001', '2023-02-04 04:45:21', '2023-02-04 04:35:21', '2023-02-04 04:35:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD KEY `users_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `verification_codes`
--
ALTER TABLE `verification_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `verification_codes`
--
ALTER TABLE `verification_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
