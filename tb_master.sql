-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 10:15 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_master`
--
ALTER TABLE `tb_master`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_master`
--
ALTER TABLE `tb_master`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
