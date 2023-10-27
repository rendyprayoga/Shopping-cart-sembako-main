-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2023 pada 06.44
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
-- Database: `wkmysql`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wk`
--

CREATE TABLE `wk` (
  `no` int(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(25) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;


INSERT INTO `wk` (`id`, `nama`, `harga`, `ketersediaan`) VALUES
(1, 1, 'Beras 5 kg', 65000, 'tersedia'),
(2, 1, 'Telur 1 kg', 26000, 'tersedia'),
(3, 1, 'Bimoli 2 lt', 28000 , 'tersedia'),
(4, 1, 'Gulaku 1 kg', 28000, 'tersedia'),
(5, 2, 'Segitiga Biru 1 kg', 22000, 'tersedia'),
(6, 2, 'Mamy Poko', 80000, 'tersedia');
(7, 2, 'Jasmine Tea', 8000, 'tersedia')
(8, 2, 'Molto', 21000, 'tersedia')

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
