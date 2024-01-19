-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2024 pada 04.10
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_covid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` enum('positive','negative','recovered','dead') NOT NULL,
  `in_date_at` date NOT NULL,
  `out_date_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `patients`
--

INSERT INTO `patients` (`id`, `name`, `phone`, `address`, `status`, `in_date_at`, `out_date_at`, `created_at`, `updated_at`) VALUES
(1, 'Antoni ', '081234564629', 'Jl. Lebak Bulus', 'positive', '2021-01-01', '2021-01-10', NULL, NULL),
(2, 'Azka', '081234568294', 'Jl. Sawangan', 'negative', '2022-01-01', '2022-01-11', NULL, NULL),
(3, 'Salman', '081234561111', 'Jl. Bojong gede', 'recovered', '2021-02-01', '2021-03-10', NULL, NULL),
(4, 'Molly', '081234568551', 'Jl. Grand kahuripan', 'dead', '2020-01-01', '2021-01-10', NULL, NULL),
(5, 'Bubri', '081234566666', 'Jl. Cileungsi', 'positive', '2021-01-12', '2021-02-10', NULL, NULL),
(6, 'Jokowi', '08123456777', 'Jl. Merdeka Selatan', 'negative', '2023-01-01', '2024-01-10', NULL, NULL),
(7, 'Mikky', '081234561111', 'Jl. Petakuran', 'recovered', '2022-01-11', '2023-01-11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
