-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2022 at 04:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `jumlah_barang`, `harga_beli`, `harga_jual`, `tanggal_masuk`) VALUES
('B0006', 'Celana Panjang', 20, 190000, 225000, '2022-06-16'),
('B0007', 'Kaos', 23, 90000, 110000, '2022-06-16'),
('B0008', 'Kemeja', 50, 170000, 200000, '2022-06-16'),
('B0009', 'Topi', 20, 60000, 80000, '2022-06-16'),
('B0010', 'Kaos Kaki', 10, 20000, 30000, '2022-06-16'),
('B0011', 'Jaket', 10, 220000, 250000, '2022-06-16'),
('B0012', 'Sepatu', 10, 450000, 500000, '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `nofaktur` varchar(11) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `hsatuan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli`
--

INSERT INTO `tbl_beli` (`nofaktur`, `kd_barang`, `nama_barang`, `hsatuan`, `jumlah_beli`, `harga`, `bayar`, `kembalian`, `tanggal`) VALUES
('F0001', 'B0002', 'setrika', 670000, 1, 670000, 6000000, 730000, '2018-05-15'),
('F0001', 'B0003', 'televisi', 2300000, 2, 4600000, 6000000, 730000, '2018-05-15'),
('F0002', 'B0005', 'mesin cuci', 5780000, 2, 11560000, 20000000, 40000, '2018-05-15'),
('F0002', 'B0001', 'kulkas', 1500000, 1, 1500000, 20000000, 40000, '2018-05-15'),
('F0002', 'B0003', 'televisi', 2300000, 3, 6900000, 20000000, 40000, '2018-05-15'),
('F0003', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 2300000, 50000, '2022-06-16'),
('F0003', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 2300000, 50000, '2022-06-16'),
('F0004', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 2500000, 250000, '2022-06-16'),
('F0005', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 2500000, 250000, '2022-06-16'),
('F0005', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 2500000, 250000, '2022-06-16'),
('F0006', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 5500000, 250000, '2022-06-16'),
('F0006', 'B0001', 'kulkas', 1500000, 2, 3000000, 5500000, 250000, '2022-06-16'),
('F0006', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 5500000, 250000, '2022-06-16'),
('F0006', 'B0001', 'kulkas', 1500000, 2, 3000000, 5500000, 250000, '2022-06-16'),
('F0007', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 5500000, 250000, '2022-06-16'),
('F0007', 'B0001', 'kulkas', 1500000, 2, 3000000, 5500000, 250000, '2022-06-16'),
('F0008', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 5500000, 250000, '2022-06-16'),
('F0008', 'B0001', 'kulkas', 1500000, 2, 3000000, 5500000, 250000, '2022-06-16'),
('F0009', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 5500000, 250000, '2022-06-16'),
('F0009', 'B0001', 'kulkas', 1500000, 2, 3000000, 5500000, 250000, '2022-06-16'),
('F0010', 'B0006', 'Celana Panjang', 225000, 10, 2250000, 17000000, 250000, '2022-06-16'),
('F0010', 'B0001', 'kulkas', 1500000, 2, 3000000, 17000000, 250000, '2022-06-16'),
('F0010', 'B0003', 'televisi', 2300000, 5, 11500000, 17000000, 250000, '2022-06-16'),
('F0011', 'B0006', 'Celana Panjang', 225000, 1, 225000, 550000, 25000, '2022-06-16'),
('F0011', 'B0007', 'Kaos', 110000, 2, 220000, 550000, 25000, '2022-06-16'),
('F0011', 'B0009', 'Topi', 80000, 1, 80000, 550000, 25000, '2022-06-16'),
('F0011', 'B0006', 'Celana Panjang', 225000, 1, 225000, 550000, 25000, '2022-06-16'),
('F0011', 'B0007', 'Kaos', 110000, 2, 220000, 550000, 25000, '2022-06-16'),
('F0011', 'B0009', 'Topi', 80000, 1, 80000, 550000, 25000, '2022-06-16'),
('F0012', 'B0006', 'Celana Panjang', 225000, 1, 225000, 530000, 5000, '2022-06-16'),
('F0012', 'B0007', 'Kaos', 110000, 2, 220000, 530000, 5000, '2022-06-16'),
('F0012', 'B0009', 'Topi', 80000, 1, 80000, 530000, 5000, '2022-06-16'),
('F0012', 'B0006', 'Celana Panjang', 225000, 1, 225000, 530000, 5000, '2022-06-16'),
('F0012', 'B0007', 'Kaos', 110000, 2, 220000, 530000, 5000, '2022-06-16'),
('F0012', 'B0009', 'Topi', 80000, 1, 80000, 530000, 5000, '2022-06-16'),
('F0013', 'B0012', 'Sepatu', 500000, 1, 500000, 500000, 0, '2022-06-16'),
('F0014', 'B0006', 'Celana Panjang', 225000, 1, 225000, 340000, 5000, '2022-06-16'),
('F0014', 'B0007', 'Kaos', 110000, 1, 110000, 340000, 5000, '2022-06-16'),
('F0015', 'B0006', 'Celana Panjang', 225000, 1, 225000, 340000, 5000, '2022-06-16'),
('F0015', 'B0007', 'Kaos', 110000, 1, 110000, 340000, 5000, '2022-06-16'),
('F0016', 'B0006', 'Celana Panjang', 225000, 15, 3375000, 3400000, 25000, '2022-06-16'),
('F0017', 'B0007', 'Kaos', 110000, 2, 220000, 230000, 10000, '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` int(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`, `jenis_kelamin`, `email`, `no_telp`, `agama`, `alamat`) VALUES
('admin', 'admin', 'Laki-Laki', 'admin@gmail.com', 12345, 'Islam', 'Bandung'),
('miftah', 'miftah', 'Laki-Laki', '1eafaefae@gmail.com', 134134134, 'Islam', 'aefaef');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tmp_beli`
--

CREATE TABLE `tbl_tmp_beli` (
  `id_tmp` int(11) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `hsatuan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tmp_beli`
--

INSERT INTO `tbl_tmp_beli` (`id_tmp`, `kd_barang`, `nama_barang`, `hsatuan`, `jumlah_beli`, `harga`) VALUES
(13, 'B0007', 'Kaos', 110000, 2, 220000);

--
-- Triggers `tbl_tmp_beli`
--
DELIMITER $$
CREATE TRIGGER `batal` AFTER DELETE ON `tbl_tmp_beli` FOR EACH ROW BEGIN
UPDATE tbl_barang SET jumlah_barang = jumlah_barang + OLD.jumlah_beli
WHERE kd_barang = OLD.kd_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `beli` AFTER INSERT ON `tbl_tmp_beli` FOR EACH ROW BEGIN 
UPDATE tbl_barang SET jumlah_barang = jumlah_barang - new.jumlah_beli 
WHERE kd_barang = new.`kd_barang`; 
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_tmp_beli`
--
ALTER TABLE `tbl_tmp_beli`
  ADD PRIMARY KEY (`id_tmp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_tmp_beli`
--
ALTER TABLE `tbl_tmp_beli`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
