-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 10:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ukkwebputri`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_master`
--

CREATE TABLE `tb_master` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `harga_jual` int(20) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_master`
--

INSERT INTO `tb_master` (`id_barang`, `nama_barang`, `harga_jual`, `harga_beli`, `satuan`, `kategori`) VALUES
(1, 'rf', 9, 3, 'g', 'g'),
(3, 'f', 1, 1, '1', '1'),
(4, 'cf', 2, 2, '2', '2'),
(5, 'f', 2, 1, '1', '1'),
(6, 'd', 1, 22, '2', '2'),
(7, 'd', 2, 2, '2', '2'),
(8, 'v ', 3, 3, '3', '3'),
(11, 'f', 2, 2, '2', '2'),
(12, 'ee', 2, 2, '1', '1'),
(13, 'ghgh', 45, 4, '3', '3'),
(14, 'ef', 2, 2, 'df', 'fddf'),
(15, 'd', 3, 1, 'hg', 'gh'),
(16, 'sd', 1, 1, 'dffd', 'dd'),
(17, 'fgb', 3, 3, 'fgr', 'fg'),
(18, 'g', 1, 1, 'gfr', 'gf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id_penjualan` int(10) NOT NULL,
  `no_faktur` int(100) NOT NULL,
  `nama_konsumen` varchar(100) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `id_barang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id_penjualan`, `no_faktur`, `nama_konsumen`, `jumlah`, `harga_satuan`, `harga_total`, `id_barang`) VALUES
(4, 2, 'g', 5, 5, 5, 1),
(6, 1, 'd', 1, 1, 0, 14),
(7, 4, 't', 4, 5, 0, 15),
(8, 1, 'd', 1, 1, 1, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_master`
--
ALTER TABLE `tb_master`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_barang` (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_master`
--
ALTER TABLE `tb_master`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  MODIFY `id_penjualan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD CONSTRAINT `tb_penjualan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_master` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
