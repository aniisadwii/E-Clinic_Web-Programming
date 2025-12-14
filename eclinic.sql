-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2025 at 07:32 AM
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
-- Database: `eclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `specialization_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_name`, `photo_url`, `description`, `specialization_id`, `location_id`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Endah Pratiwi S.IP', 'https://thispersondoesnotexist.com/', 'Laboriosam reiciendis dolores tempore ratione et culpa.', 2, 2, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(2, 'Dr. Dono Wage Mangunsong S.I.Kom', 'https://thispersondoesnotexist.com/', 'Voluptatem laboriosam expedita rerum quia eligendi officia eos atque.', 4, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(3, 'Dr. Zahra Mandasari S.Gz', 'https://thispersondoesnotexist.com/', 'Et aut aut rerum aliquam illo ut culpa temporibus consectetur repellat voluptatibus.', 6, 1, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(4, 'Dr. Siti Kusmawati S.Pt', 'https://thispersondoesnotexist.com/', 'Tempore aspernatur optio nihil omnis est enim eligendi quas.', 5, 1, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(5, 'Dr. Cindy Rahmawati', 'https://thispersondoesnotexist.com/', 'Repellendus dolores eligendi quia sunt corporis quae mollitia maiores id explicabo.', 4, 1, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(6, 'Dr. Juli Mandasari', 'https://thispersondoesnotexist.com/', 'Aut necessitatibus suscipit dolorem ex in maiores ipsa cum aspernatur qui id dolorem commodi.', 8, 2, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(7, 'Dr. Salimah Puspasari', 'https://thispersondoesnotexist.com/', 'Natus eaque sit doloremque quos molestias tempora quidem quod recusandae.', 1, 2, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(8, 'Dr. Jumadi Pranata Pangestu', 'https://thispersondoesnotexist.com/', 'Harum impedit et illum excepturi architecto facilis sed nostrum iusto.', 5, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(9, 'Dr. Artawan Rajasa', 'https://thispersondoesnotexist.com/', 'Minima et magnam sint et nulla ut voluptatibus molestiae voluptas aut explicabo.', 9, 1, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(10, 'Dr. Tasdik Harsana Maryadi', 'https://thispersondoesnotexist.com/', 'Natus quo incidunt occaecati eaque unde consequatur ut atque ut necessitatibus unde enim reiciendis.', 7, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(11, 'Dr. Erik Wibowo', 'https://thispersondoesnotexist.com/', 'Quibusdam ut quaerat repellat veniam enim ut laudantium blanditiis tempora.', 10, 2, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(12, 'Dr. Ophelia Permata S.IP', 'https://thispersondoesnotexist.com/', 'Sunt aut quia saepe repellendus illo qui reprehenderit aut.', 2, 1, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(13, 'Dr. Gadang Kadir Wibowo M.M.', 'https://thispersondoesnotexist.com/', 'Pariatur sit est soluta deleniti dolor quia et.', 8, 2, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(14, 'Dr. Raditya Jailani', 'https://thispersondoesnotexist.com/', 'Voluptas mollitia ipsam corporis temporibus fugit et magnam qui ad.', 5, 1, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(15, 'Dr. Kamila Mulyani', 'https://thispersondoesnotexist.com/', 'Sunt et non velit impedit nobis et.', 10, 1, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(16, 'Dr. Ifa Hariyah S.Sos', 'https://thispersondoesnotexist.com/', 'Quod velit molestiae et harum velit aut.', 10, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(17, 'Dr. Genta Wahyuni', 'https://thispersondoesnotexist.com/', 'Culpa ipsa deleniti ut aliquid nihil dolor reprehenderit quis debitis quidem dolorem neque quibusdam.', 2, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(18, 'Dr. Luthfi Laswi Dabukke', 'https://thispersondoesnotexist.com/', 'Voluptatem tenetur quis culpa maiores sed eveniet sunt id nihil eius.', 7, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(19, 'Dr. Vivi Halimah', 'https://thispersondoesnotexist.com/', 'Nihil consequuntur iusto et hic corrupti possimus.', 1, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(20, 'Dr. Marwata Pratama', 'https://thispersondoesnotexist.com/', 'Nesciunt explicabo voluptas et iure eos est necessitatibus illo.', 3, 3, '2025-12-13 21:54:09', '2025-12-13 21:54:09');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `created_at`, `updated_at`) VALUES
(1, 'Tangerang', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(2, 'Jakarta', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(3, 'BSD', '2025-12-13 21:54:09', '2025-12-13 21:54:09');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_13_043800_create_locations_table', 1),
(5, '2025_12_13_043810_create_specializations_table', 1),
(6, '2025_12_13_043820_create_doctors_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GD88YbEXxDskTAyshbtO3up7tLzgIpqF2zTg8Tmw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWl3SE9RbU1jbXl4cGFvWXlFcGpIcEZiT3BJOFJaOWs3Z0E2YXJuUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dCI7czo1OiJyb3V0ZSI7czo1OiJhYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765692263);

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `specialization_id` bigint(20) UNSIGNED NOT NULL,
  `specialization_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`specialization_id`, `specialization_name`, `created_at`, `updated_at`) VALUES
(1, 'General Practitioner', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(2, 'ENT Specialist', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(3, 'Dentist', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(4, 'Pediatrician', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(5, 'Internal Medicine Specialist', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(6, 'Dermatologist', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(7, 'Cardiologist', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(8, 'Neurologist', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(9, 'Obstetrician & Gynecologist', '2025-12-13 21:54:09', '2025-12-13 21:54:09'),
(10, 'Ophthalmologist', '2025-12-13 21:54:09', '2025-12-13 21:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `doctors_specialization_id_foreign` (`specialization_id`),
  ADD KEY `doctors_location_id_foreign` (`location_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`specialization_id`);

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
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `specialization_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctors_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`specialization_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
