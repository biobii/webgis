-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 06, 2019 at 04:15 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.3.5-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgis`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(21, '1503248427885_user', 1, '2019-05-05 21:12:49'),
(22, '1503248427886_token', 1, '2019-05-05 21:12:51'),
(23, '1554178283903_type_schema', 1, '2019-05-05 21:12:51'),
(24, '1554178380940_places_schema', 1, '2019-05-05 21:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `bangunan` int(11) DEFAULT NULL,
  `jarak_sungai` int(10) UNSIGNED DEFAULT NULL,
  `latitude` double(8,6) DEFAULT NULL,
  `longitude` double(200,6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sungai_latitude` double(8,6) DEFAULT NULL,
  `sungai_longitude` double(200,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `type_id`, `nama`, `bangunan`, `jarak_sungai`, `latitude`, `longitude`, `status`, `sungai_latitude`, `sungai_longitude`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mall Dinoyo City', 5, 290, -7.937758, 112.607045, 'Rawan', -7.936657, 112.609471, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(2, 1, 'Malang Town Square', 4, 439, -7.956777, 112.618582, 'Sedang', -7.954269, 112.621802, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(3, 1, 'Mall Olympic Garden', 4, 298, -7.976067, 112.623951, 'Sedang', -7.977904, 112.622013, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(4, 1, 'Malang City Point Hotel Apartment', 19, 192, -7.973917, 112.611774, 'Rawan', -7.975245, 112.610735, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(5, 1, 'Soekarno Hatta Apartment', 17, 83, -7.949267, 112.616719, 'Rawan', -7.949796, 112.616196, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(6, 1, 'Swiss-Belinn Malang', 12, 295, -7.955258, 112.618922, 'Rawan', -7.953721, 112.621136, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(7, 1, 'Aria Gajayana Hotel', 12, 270, -7.976849, 112.624177, 'Rawan', -7.978091, 112.622068, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(8, 1, 'The 101 Malang OJ', 12, 509, -7.967743, 112.635484, 'Rawan', -7.968163, 112.630861, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(9, 1, 'Ijen Suites Hotel', 12, 251, -7.980524, 112.615435, 'Rawan', -7.979472, 112.617473, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(10, 2, 'SDN Merjosari 1', 2, 363, -7.943150, 112.603555, 'Rendah', -7.942997, 112.600229, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(11, 2, 'SDN Merjosari 2', 2, 346, -7.943702, 112.603305, 'Rendah', -7.943595, 112.600134, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(12, 2, 'SD Islam Surya Buana', 3, 111, -7.944270, 112.607136, 'Sedang', -7.943792, 112.607984, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(13, 2, 'SMAS Katolik Cor Jesu', 2, 181, -7.967923, 112.632624, 'Rendah', -7.967923, 112.632624, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(14, 2, 'Sekolah Menengah Atas Muhammadiyah I Malang', 2, 50, -7.964855, 112.627996, 'Rendah', -7.964515, 112.628441, '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(15, 1, 'Alfamart BS Riadi 150', 1, 23, -7.963705, 112.627464, 'Rendah', -7.963583, 112.627648, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(16, 2, 'Pendidikan Vokasi LP3I Malang', 2, 18, -7.961074, 112.626015, 'Rendah', -7.961024, 112.626184, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(17, 1, 'PT PLN (Persero) Dinoyo', 2, 58, -7.947831, 112.614146, 'Rendah', -7.947703, 112.614700, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(18, 1, 'Sardo Swalayan', 3, 37, -7.946784, 112.608730, 'Sedang', -7.947007, 112.608504, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(19, 2, 'UIN Malang', 5, 200, -7.951391, 112.607378, 'Rawan', -7.953761, 112.602871, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(20, 2, 'Universitas Brawijaya', 11, 382, -7.952122, 112.613936, 'Rawan', -7.950432, 112.616768, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(21, 2, 'Universitas Islam Malang', 6, 291, -7.936474, 112.606756, 'Rawan', -7.935857, 112.609234, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(22, 1, 'Pemerintah Kota Malang', 2, 161, -7.977788, 112.633911, 'Rendah', -7.979467, 112.634104, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(23, 1, 'Hotel Savana', 7, 178, -7.962199, 112.636138, 'Rawan', -7.960892, 112.637146, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(24, 1, 'Transmart', 7, 178, -7.962199, 112.636138, 'Rawan', -7.960892, 112.637146, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(25, 2, 'Universitas Negeri Malang', 11, 41, -7.960961, 112.617435, 'Rawan', -7.960845, 112.617703, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(26, 1, 'Rumah Sakit UB', 10, 304, -7.940856, 112.621601, 'Rawan', -7.943130, 112.620034, '2019-05-06 04:12:54', '2019-05-06 04:12:54'),
(27, 2, 'Politeknik Negeri Malang', 10, 120, -7.946180, 112.615506, 'Rawan', -7.947296, 112.614605, '2019-05-06 04:12:54', '2019-05-06 04:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Bisnis', '2019-05-06 04:12:53', '2019-05-06 04:12:53'),
(2, 'Pendidikan', '2019-05-06 04:12:53', '2019-05-06 04:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_type_id_index` (`type_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
