-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 02:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `tgl_exp` date NOT NULL,
  `barang_masuk` date DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_barang`, `stok`, `tgl_exp`, `barang_masuk`, `keterangan`) VALUES
('KB0001', 'Sampoerna Mild', 150, '2024-01-01', '2023-01-01', '16 Batang'),
('KB0002', 'Sampoerna Menthol', 200, '2025-03-01', '2023-01-02', '16 Batang'),
('KB0003', 'Esse Change', 300, '2025-01-31', '2023-01-21', '20 Batang'),
('KB0004', 'L.A ICE', 500, '2026-03-02', '2023-06-09', '16 Batang'),
('KB0005', 'Marlboro Filter Blac', 200, '2025-06-06', '2023-07-09', '12 Batang'),
('KB0006', 'Pin', 250, '2024-09-06', '2023-06-09', '20 Batang'),
('KB0007', 'Pin Bold', 100, '2024-04-07', '2023-04-13', '20 Batang');

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` varchar(6) NOT NULL,
  `barang_keluar` date NOT NULL,
  `kd_barang` varchar(6) DEFAULT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `barang_masuk` date NOT NULL,
  `jumlah_barang_keluar` int(11) NOT NULL,
  `tgl_exp` date NOT NULL,
  `keterangan_keluar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `barang_keluar`, `kd_barang`, `nama_barang`, `barang_masuk`, `jumlah_barang_keluar`, `tgl_exp`, `keterangan_keluar`) VALUES
('BK0001', '2023-07-01', 'KB0004', 'L.A ICE', '2023-06-09', 500, '2026-03-02', 'Terjual');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin'),
('Udin', 'Udin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
