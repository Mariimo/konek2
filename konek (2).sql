-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 03:49 PM
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
-- Database: `konek`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `divisi_id` int(11) NOT NULL,
  `divisi_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`divisi_id`, `divisi_nama`) VALUES
(0, NULL),
(1, 'Divisi Marketing'),
(2, 'Divisi Produksi'),
(3, 'Divisi Admin'),
(4, 'Divisi Desain'),
(5, 'Divisi Penyimpanan'),
(6, 'Divisi Perbaikan');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `jabatan_id` int(11) NOT NULL,
  `jabatan_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`jabatan_id`, `jabatan_nama`) VALUES
(1, 'Manager'),
(2, 'Head Marketing'),
(3, 'Head Warehouse'),
(4, 'Head Maintenance'),
(5, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `karyawan_id` int(11) NOT NULL,
  `karyawan_nama` varchar(50) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `divisi_id` int(11) DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`karyawan_id`, `karyawan_nama`, `no_telp`, `email`, `divisi_id`, `jabatan_id`) VALUES
(1, 'Karyawan 1', '0811111111', 'karyawan1@example.com', 1, 1),
(2, 'Karyawan 2', '0822222222', 'karyawan2@example.com', 2, 2),
(3, 'Karyawan 3', '0833333333', 'karyawan3@example.com', 3, 3),
(4, 'Karyawan 4', '0844444444', 'karyawan4@example.com', 4, 4),
(5, 'Karyawan 5', '0855555555', 'karyawan5@example.com', 5, 5),
(6, 'Karyawan 6', '0866666666', 'karyawan6@example.com', 6, 1),
(7, 'Karyawan 7', '0877777777', 'karyawan7@example.com', 1, 2),
(8, 'Karyawan 8', '0888888888', 'karyawan8@example.com', 2, 3),
(9, 'Karyawan 9', '0899999999', 'karyawan9@example.com', 3, 4),
(10, 'Karyawan 10', '0810000000', 'karyawan10@example.com', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `presensi_id` int(11) NOT NULL,
  `karyawan_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `jam` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`presensi_id`, `karyawan_id`, `status`, `jam`) VALUES
(1, 1, 'Hadir', '2023-07-03 08:00:00'),
(2, 2, 'Terlambat', '2023-07-03 08:15:00'),
(3, 3, 'Hadir', '2023-07-03 08:05:00'),
(4, 4, 'Tidak Hadir', NULL),
(5, 5, 'Hadir', '2023-07-03 08:10:00'),
(6, 6, 'Hadir', '2023-07-03 08:03:00'),
(7, 7, 'Terlambat', '2023-07-03 08:20:00'),
(8, 8, 'Hadir', '2023-07-03 08:01:00'),
(9, 9, 'Hadir', '2023-07-03 08:08:00'),
(10, 10, 'Hadir', '2023-07-03 08:07:00'),
(11, 1, 'Hadir', '2023-07-04 08:00:00'),
(12, 2, 'Hadir', '2023-07-04 08:00:00'),
(13, 3, 'Hadir', '2023-07-04 08:05:00'),
(14, 4, 'Tidak Hadir', NULL),
(15, 5, 'Hadir', '2023-07-04 08:10:00'),
(16, 6, 'Tidak Hadir', NULL),
(17, 7, 'Terlambat', '2023-07-04 08:20:00'),
(18, 8, 'Hadir', '2023-07-04 08:01:00'),
(19, 9, 'Tidak Hadir', NULL),
(20, 10, 'Hadir', '2023-07-04 08:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `tugas_id` int(11) NOT NULL,
  `tugas_nama` varchar(100) DEFAULT NULL,
  `divisi_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`tugas_id`, `tugas_nama`, `divisi_id`, `tanggal`, `status`, `deadline`, `keterangan`) VALUES
(1, 'Marketing Instagram', 1, '2023-04-04', 'Proses', '2023-07-01', NULL),
(2, 'Marketing Tiktok', 1, '2023-06-01', 'Proses', '2023-06-11', NULL),
(3, 'Marketing Facebook', 1, '2023-06-12', 'Proses', '2023-07-01', NULL),
(4, 'Pemotongan Bahan', 1, '2023-07-13', 'Selesai', '2023-06-14', NULL),
(5, 'Pengemasan', 1, '2023-03-13', 'Proses', '2023-06-25', NULL),
(6, 'Produksi Dress', 1, '2023-01-01', 'Proses', '2023-07-01', NULL),
(7, 'Produksi Jeans', 1, '2023-01-10', 'Proses', '2023-07-01', NULL),
(8, 'Produksi Jaket', 2, '2023-06-01', 'Proses', '2023-07-01', NULL),
(9, 'Produksi Piyama', 2, '2023-06-01', 'Proses', '2023-07-01', NULL),
(10, 'Produksi Kaos Panjang', 2, '2023-06-01', 'Proses', '2023-07-01', NULL),
(11, 'Tugas Tiktok', 1, '2023-01-01', 'Proses', '2023-01-10', 'Keterangan tugas 11'),
(12, 'Tugas Instagram', 1, '2023-01-02', 'Proses', '2023-01-11', 'Keterangan tugas 12'),
(13, 'Tugas FB Ads', 1, '2023-02-03', 'Proses', '2023-01-12', 'Keterangan tugas 13'),
(14, 'Tugas Tiktok', 1, '2023-02-01', 'Proses', '2023-01-10', 'Keterangan tugas 11'),
(15, 'Tugas Instagram', 1, '2023-04-02', 'Proses', '2023-01-11', 'Keterangan tugas 12'),
(16, 'Tugas FB Ads', 1, '2023-04-03', 'Proses', '2023-01-12', 'Keterangan tugas 13'),
(17, 'Tugas Tiktok', 1, '2023-06-01', 'Proses', '2023-01-10', 'Keterangan tugas 11'),
(18, 'Tugas Instagram', 1, '2023-06-02', 'Proses', '2023-01-11', 'Keterangan tugas 12'),
(19, 'Tugas FB Ads', 1, '2023-07-03', 'Proses', '2023-01-12', 'Keterangan tugas 13'),
(20, 'Tugas Tiktok', 1, '2023-02-01', 'Proses', '2023-01-10', 'Keterangan tugas 11'),
(21, 'Tugas Instagram', 1, '2023-04-02', 'Proses', '2023-01-11', 'Keterangan tugas 12'),
(22, 'Tugas FB Ads', 1, '2023-04-03', 'Proses', '2023-01-12', 'Keterangan tugas 13'),
(23, 'Tugas Tiktok', 1, '2023-06-01', 'Proses', '2023-01-10', 'Keterangan tugas 11'),
(24, 'Tugas Instagram', 1, '2023-06-02', 'Proses', '2023-01-11', 'Keterangan tugas 12'),
(25, 'Tugas FB Ads', 1, '2023-07-03', 'Proses', '2023-01-12', 'Keterangan tugas 13'),
(26, 'Tugas Tiktok', 1, '2023-03-01', 'Proses', '2023-01-10', 'Keterangan tugas 11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `jabatan_id`, `email`) VALUES
(1, 'Mello', 1, 'mello@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`divisi_id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`jabatan_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`karyawan_id`),
  ADD KEY `divisi_id` (`divisi_id`),
  ADD KEY `jabatan_id` (`jabatan_id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`presensi_id`),
  ADD KEY `karyawan_id` (`karyawan_id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`tugas_id`),
  ADD KEY `divisi_id` (`divisi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `jabatan_id` (`jabatan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `presensi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`divisi_id`),
  ADD CONSTRAINT `karyawan_ibfk_2` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`jabatan_id`);

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`karyawan_id`);

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`divisi_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`jabatan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
