-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 04:07 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mpb`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `id` int(20) NOT NULL,
  `pengiriman_barang_id` int(20) NOT NULL,
  `biaya` int(11) NOT NULL,
  `nama_barang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat_barang` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`id`, `pengiriman_barang_id`, `biaya`, `nama_barang`, `berat_barang`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 600000, 'aqua', 50, NULL, NULL, NULL);

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
-- Table structure for table `informasi_biaya`
--

CREATE TABLE `informasi_biaya` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kota_asal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_berat` int(11) NOT NULL,
  `biaya` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informasi_biaya`
--

INSERT INTO `informasi_biaya` (`id`, `kota_asal`, `kota_tujuan`, `total_berat`, `biaya`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tangerang', 'Jakarta Barat', 50, '600.000', NULL, NULL, NULL),
(2, 'Tangerang', 'Jakarta Pusat', 75, '900.000', NULL, NULL, NULL),
(3, 'Tangerang', 'Jakarta Timur', 100, '1.200.000', NULL, NULL, NULL),
(4, 'Tangerang', 'Jakarta Selatan', 150, '1.800.000', NULL, NULL, NULL);

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_08_27_082151_create_pengiriman_barang_tables', 1),
(4, '2020_08_28_064240_create_detail_pengiriman_table', 2),
(6, '2020_08_28_072007_create_informasi_biaya_table', 4),
(7, '2020_08_28_075557_create_contact_table', 5),
(8, '2020_08_28_083306_create_profile_table', 6),
(9, '2020_08_29_102524_add_roles_field_to_users_table', 7),
(10, '2014_10_12_100000_create_password_resets_table', 8),
(11, '2020_09_01_180116_create_pelanggan_table', 8),
(13, '2020_09_09_083825_create_saran_table', 10),
(17, '2020_09_01_191211_create_tracking_area_table', 13),
(18, '2020_08_28_071113_create_status_pengiriman_table', 14);

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
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(20) NOT NULL,
  `no_telpon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `no_telpon`, `jenis_kelamin`, `alamat`, `foto`, `created_at`, `updated_at`, `users_id`) VALUES
(2, '0812212091', 'Prempuan', 'Jl.Pinggir Kali Pasar Kemis Tangerang Banten', '1603249391.png', '2020-09-02 07:01:27', '2020-10-20 20:03:11', 4),
(3, '081233021810', 'Pria', 'Jl.Indah dunia Permata No.90  Tangerang Banten', '1602963394.png', '2020-09-05 05:21:17', '2020-10-17 12:36:34', 5),
(13, '089921212321', 'Pria', 'Jl.M1 Bandara Soekarno Hatta Tangerang Banten', '1599892096_Skripsi.jpeg', '2020-09-11 23:20:58', '2020-09-20 09:43:35', 13);

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman_barang`
--

CREATE TABLE `pengiriman_barang` (
  `id` int(20) NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `nama_penerima` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisasi_penerima` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_penerima` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_penerima` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya` int(11) NOT NULL,
  `berat_barang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pelanggan_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengiriman_barang`
--

INSERT INTO `pengiriman_barang` (`id`, `tanggal_pengiriman`, `nama_penerima`, `organisasi_penerima`, `alamat_penerima`, `email_penerima`, `nama_barang`, `biaya`, `berat_barang`, `created_at`, `updated_at`, `pelanggan_id`) VALUES
(18, '2020-10-17', 'Indah Purnama', 'PT.Coding Indonesia', 'Jl.Bundaran HI No.10 Jakarta Pusat', 'IndahPurnama@gmail.com', 'Sopenir', 600000, '50', '2020-09-19 08:03:15', '2020-10-16 16:22:26', 2),
(24, '2020-09-23', 'Aji wahyugi', 'PT.Sriwijaya Air', 'Jl.Marsekal Surya Darma No.47 Jakarta Pusat', 'ajiwahyugi@gmail.com', 'Sopenir', 600000, '50', '2020-09-22 11:08:54', '2020-10-16 16:29:53', 13),
(25, '2020-10-17', 'Riri rahma', 'PT.Indonesia', 'Jl.Sukamulyo Jakarta Timur', 'ririrahma@gmail.com', 'Food', 600000, '50', '2020-10-16 16:24:22', '2020-10-16 16:24:22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id` int(20) NOT NULL,
  `pesan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pelanggan_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id`, `pesan`, `created_at`, `updated_at`, `pelanggan_id`) VALUES
(1, 'ew', NULL, NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `status_pengiriman`
--

CREATE TABLE `status_pengiriman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_area_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lacak` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` datetime NOT NULL,
  `destinasi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_pengiriman`
--

INSERT INTO `status_pengiriman` (`id`, `tracking_area_id`, `lacak`, `waktu`, `destinasi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '19092020043914', '12', '1992-12-12 00:00:00', '123', NULL, '2020-09-19 09:42:02', '2020-09-19 09:42:02'),
(2, '19092020044650', '444', '2005-04-04 00:00:00', '34', NULL, '2020-09-19 09:47:17', '2020-09-19 09:47:17'),
(3, '19092020044650', '123', '2020-09-20 00:45:00', '123123', NULL, '2020-09-19 10:42:32', '2020-09-19 10:42:32'),
(4, '19092020044650', '123', '1998-12-03 00:12:00', '123', NULL, '2020-09-19 10:43:50', '2020-09-19 10:43:50'),
(5, '19092020044650', '123', '2009-12-03 07:19:00', '123', NULL, '2020-09-19 10:45:07', '2020-09-19 10:45:07'),
(6, '19092020044650', '123', '2009-12-31 11:09:00', '12', NULL, '2020-09-19 10:45:49', '2020-09-19 10:45:49'),
(7, '19092020044650', '5555', '1988-11-11 00:12:00', '12', NULL, '2020-09-19 10:49:05', '2020-09-19 10:49:05'),
(8, '19092020043914', '232', '2009-12-12 00:12:00', '12', NULL, '2020-09-19 11:02:31', '2020-09-19 11:02:31'),
(9, '20092020040326', '+', '2020-09-20 00:00:00', 'Barang diterima [Grogol] Jakarta Barat', NULL, '2020-09-20 09:04:13', '2020-09-20 09:04:13'),
(10, '20092020040326', '+', '2020-09-23 00:25:00', 'Bndara Soekarno Hatta, Tangerang', NULL, '2020-09-22 10:25:33', '2020-09-22 10:25:33'),
(11, '20092020040326', '+', '2020-09-23 00:37:00', 'Barang diterima [Bundaran HI] Jakarta Pusat', NULL, '2020-09-22 10:37:55', '2020-09-22 10:37:55'),
(12, '22092020061709', '+', '2020-09-23 00:00:00', 'Bndara Soekarno Hatta, Tangerang', NULL, '2020-09-22 11:23:00', '2020-09-22 11:23:00'),
(13, '22092020061709', '+', '2020-09-23 01:29:00', 'Barang diterima [Grogol] Jakarta Barat', NULL, '2020-09-22 11:29:39', '2020-09-22 11:29:39'),
(14, '16102020111614', '+', '2020-10-17 08:16:00', 'Bndara Soekarno Hatta, Tangerang', NULL, '2020-10-16 16:17:03', '2020-10-16 16:17:03'),
(15, '22092020061709', '+', '2020-10-22 09:56:00', 'Barang diterima [Bundaran HI] 2 Jakarta Pusat', NULL, '2020-10-21 19:56:45', '2020-10-21 19:56:45'),
(16, '22092020061709', '+', '2020-10-22 10:03:00', 'Barang diterima [Bundaran HI] 2 Jakarta Pusat [SELESAI]', NULL, '2020-10-21 20:03:59', '2020-10-21 20:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `tracking_area`
--

CREATE TABLE `tracking_area` (
  `id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_asal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengiriman_barang_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracking_area`
--

INSERT INTO `tracking_area` (`id`, `resi`, `kota_asal`, `kota_tujuan`, `alamat`, `pengiriman_barang_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
('16102020111614', 'ASCASBS212', 'Tangerang', 'Jakarta Pusat', 'Jakarta Timur', 18, NULL, '2020-10-16 16:17:03', '2020-10-16 16:17:39'),
('20092020040326', 'ASDG52161', 'Tangerang', 'Jakarta Timur', 'Jakarta Pusat Bundaran HI', 24, NULL, '2020-09-20 09:04:13', '2020-10-16 16:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$bDxgYXcRDXBd9XPAzt3AZejrjb2jyyyblciPUL/E1Vusz4.mmUyom', NULL, '2020-08-29 11:13:58', '2020-08-29 11:13:58', 'ADMIN'),
(4, 'Shopi Ramdhani', 'shopiramdhani@gmail.com', NULL, '$2y$10$9gb2UI61hUQyB7VzvwPFheC3mPSrvWl8js8c5Go1tyARhzuvbnmt6', NULL, '2020-08-29 11:14:53', '2020-09-22 06:38:56', 'USER'),
(5, 'Haqqul Anby', 'haqqulambyy@gmail.com', '2020-08-29 11:29:19', '$2y$10$qwyyw7AOheQO0AZ8hzHb9erqRyBsfLDumyTSGD2NPfKfddOLrY5ri', NULL, '2020-08-29 11:28:42', '2020-10-15 09:40:22', 'USER'),
(13, 'Arief Setiawam', 'ariefsetiawan@gmail.com', '2020-09-05 04:50:15', '$2y$10$7SzzNkbkEvmpUSlXUez/c.4cGEmca9UqPWKJn7q5Whx6T1AlZTJqa', NULL, '2020-09-05 04:49:42', '2020-09-22 06:38:33', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengiriman_barang_id` (`pengiriman_barang_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi_biaya`
--
ALTER TABLE `informasi_biaya`
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
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `pengiriman_barang`
--
ALTER TABLE `pengiriman_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indexes for table `status_pengiriman`
--
ALTER TABLE `status_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking_area`
--
ALTER TABLE `tracking_area`
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
-- AUTO_INCREMENT for table `detail_barang`
--
ALTER TABLE `detail_barang`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informasi_biaya`
--
ALTER TABLE `informasi_biaya`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pengiriman_barang`
--
ALTER TABLE `pengiriman_barang`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_pengiriman`
--
ALTER TABLE `status_pengiriman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saran`
--
ALTER TABLE `saran`
  ADD CONSTRAINT `saran_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
