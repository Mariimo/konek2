-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 09:17 PM
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
(1, 'Agus Setiawan', '0811111111', 'karyawan1@example.com', 1, 1),
(2, 'Siti Rahmawati', '0822222222', 'karyawan2@example.com', 2, 2),
(3, 'Ahmad Hidayat', '0833333333', 'karyawan3@example.com', 3, 3),
(4, 'Rina Sari', '0844444444', 'karyawan4@example.com', 4, 4),
(5, 'Budi Santoso', '0855555555', 'karyawan5@example.com', 5, 5),
(6, 'Dewi Rahayu', '0866666666', 'karyawan6@example.com', 6, 1),
(7, 'Hendrik Wijaya', '0877777777', 'karyawan7@example.com', 1, 2),
(8, 'Sri Wahyuni', '0888888888', 'karyawan8@example.com', 2, 3),
(9, 'Joko Susanto', '0899999999', 'karyawan9@example.com', 3, 4),
(10, 'Maya Permata', '0810000000', 'karyawan10@example.com', 4, 5),
(11, 'Laura Smith', '1234567890', 'laurasmith@example.com', 1, 1),
(12, 'Daniel Johnson', '9876543210', 'danieljohnson@example.com', 2, 2),
(13, 'Sophia Lee', '4567890123', 'sophialee@example.com', 3, 3),
(14, 'Olivia Davis', '7890123456', 'oliviadavis@example.com', 4, 4),
(15, 'Ethan Wilson', '2345678901', 'ethanwilson@example.com', 5, 5),
(16, 'Amelia Taylor', '6789012345', 'ameliataylor@example.com', 6, 1),
(17, 'Benjamin Clark', '9012345678', 'benjaminclark@example.com', 1, 2),
(18, 'Emma Hernandez', '3456789012', 'emmahernandez@example.com', 2, 3),
(19, 'Noah Moore', '7890123456', 'noahmoore@example.com', 3, 4),
(20, 'Ava Baker', '1234567890', 'avabaker@example.com', 4, 5),
(21, 'William King', '5678901234', 'williamking@example.com', 5, 1),
(22, 'Harper Scott', '9012345678', 'harperscott@example.com', 6, 2),
(23, 'Jackson Young', '2345678901', 'jacksonyoung@example.com', 1, 3),
(24, 'Abigail Adams', '6789012345', 'abigailadams@example.com', 2, 4),
(25, 'Chloe Cox', '0123456789', 'chloecox@example.com', 3, 5),
(26, 'Samuel Turner', '4567890123', 'samuelturner@example.com', 4, 1),
(27, 'Emily Lopez', '8901234567', 'emilylopez@example.com', 5, 2),
(28, 'James Hill', '2345678901', 'jameshill@example.com', 6, 3),
(29, 'Mia Morgan', '6789012345', 'miamorgan@example.com', 1, 4),
(30, 'Alexander Bell', '0123456789', 'alexanderbell@example.com', 2, 5),
(31, 'Charlotte Ward', '4567890123', 'charlotteward@example.com', 3, 1),
(32, 'Henry Foster', '8901234567', 'henryfoster@example.com', 4, 2),
(33, 'Grace Howard', '2345678901', 'gracehoward@example.com', 5, 3),
(34, 'Daniel Price', '6789012345', 'danielprice@example.com', 6, 4),
(35, 'Lily Reed', '0123456789', 'lilyreed@example.com', 1, 5),
(36, 'Oliver Cook', '4567890123', 'olivercook@example.com', 2, 1),
(37, 'Ava James', '8901234567', 'avajames@example.com', 3, 2),
(38, 'Liam Smith', '2345678901', 'liamsmith@example.com', 4, 3),
(39, 'Mia Johnson', '6789012345', 'miajohnson@example.com', 5, 4),
(40, 'Sophia Lee', '0123456789', 'sophialee@example.com', 6, 5),
(41, 'William Wilson', '4567890123', 'williamwilson@example.com', 1, 1),
(42, 'Amelia Davis', '8901234567', 'ameliadavis@example.com', 2, 2),
(43, 'James Taylor', '2345678901', 'jamestaylor@example.com', 3, 3),
(44, 'Olivia Moore', '6789012345', 'oliviamoore@example.com', 4, 4),
(45, 'Ethan Baker', '0123456789', 'ethanbaker@example.com', 5, 5),
(46, 'Ava King', '4567890123', 'avaking@example.com', 6, 1),
(47, 'Benjamin Clark', '8901234567', 'benjaminclark@example.com', 1, 2),
(48, 'Emma Hernandez', '2345678901', 'emmahernandez@example.com', 2, 3),
(49, 'Noah Moore', '6789012345', 'noahmoore@example.com', 3, 4),
(50, 'Ava Baker', '0123456789', 'avabaker@example.com', 4, 5),
(51, 'William King', '4567890123', 'williamking@example.com', 5, 1),
(52, 'Harper Scott', '8901234567', 'harperscott@example.com', 6, 2),
(53, 'Jackson Young', '2345678901', 'jacksonyoung@example.com', 1, 3),
(54, 'Abigail Adams', '6789012345', 'abigailadams@example.com', 2, 4),
(55, 'Chloe Cox', '0123456789', 'chloecox@example.com', 3, 5),
(56, 'Samuel Turner', '4567890123', 'samuelturner@example.com', 4, 1),
(57, 'Emily Lopez', '8901234567', 'emilylopez@example.com', 5, 2),
(58, 'James Hill', '2345678901', 'jameshill@example.com', 6, 3),
(59, 'Mia Morgan', '6789012345', 'miamorgan@example.com', 1, 4),
(60, 'Alexander Bell', '0123456789', 'alexanderbell@example.com', 2, 5);

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
(20, 10, 'Hadir', '2023-07-04 08:01:00'),
(21, 25, 'Sakit', '2023-11-25 12:05:56'),
(22, 8, 'Izin', '2023-07-20 13:16:06'),
(23, 2, 'Terlambat', '2023-09-24 06:35:28'),
(24, 30, 'Hadir', '2023-05-30 05:20:55'),
(25, 44, 'Sakit', '2023-03-31 13:54:22'),
(26, 32, 'Izin', '2023-04-07 08:57:55'),
(27, 19, 'Terlambat', '2023-09-12 03:24:58'),
(28, 49, 'Terlambat', '2023-05-24 22:19:08'),
(29, 24, 'Izin', '2023-09-12 01:28:29'),
(30, 29, 'Izin', '2023-05-19 12:34:31'),
(31, 38, 'Terlambat', '2023-04-30 13:12:59'),
(32, 27, 'Izin', '2023-11-19 19:45:11'),
(33, 41, 'Hadir', '2023-07-23 19:49:03'),
(34, 29, 'Sakit', '2023-06-21 03:36:35'),
(35, 27, 'Hadir', '2023-04-17 19:08:57'),
(36, 49, 'Hadir', '2023-03-14 15:40:02'),
(37, 50, 'Terlambat', '2023-09-05 11:47:20'),
(38, 56, 'Izin', '2023-06-01 05:39:04'),
(39, 29, 'Izin', '2023-12-14 15:57:37'),
(40, 45, 'Hadir', '2023-06-22 20:32:17'),
(41, 45, 'Sakit', '2023-11-01 02:00:06'),
(42, 60, 'Hadir', '2023-08-30 14:15:50'),
(43, 22, 'Terlambat', '2023-07-18 21:58:03'),
(44, 53, 'Izin', '2023-03-07 10:39:17'),
(45, 5, 'Izin', '2023-04-09 12:18:24'),
(46, 3, 'Izin', '2023-04-22 17:23:08'),
(47, 54, 'Terlambat', '2023-01-21 22:22:34'),
(48, 16, 'Izin', '2023-11-10 10:01:19'),
(49, 32, 'Sakit', '2023-06-23 10:09:52'),
(50, 49, 'Sakit', '2023-04-09 01:57:58'),
(51, 18, 'Izin', '2023-04-20 23:52:23'),
(52, 35, 'Terlambat', '2023-02-01 18:04:46'),
(53, 35, 'Sakit', '2023-09-02 15:39:31'),
(54, 26, 'Sakit', '2023-08-23 15:03:53'),
(55, 42, 'Izin', '2023-04-19 22:43:23'),
(56, 21, 'Terlambat', '2023-12-20 08:28:54'),
(57, 18, 'Hadir', '2023-10-22 17:44:40'),
(58, 59, 'Sakit', '2023-01-26 20:54:40'),
(59, 52, 'Hadir', '2023-11-08 12:31:11'),
(60, 47, 'Sakit', '2023-09-23 00:57:05'),
(61, 42, 'Sakit', '2023-05-31 10:27:26'),
(62, 5, 'Hadir', '2023-02-20 14:10:03'),
(63, 55, 'Sakit', '2023-04-28 22:42:21'),
(64, 19, 'Izin', '2023-01-14 14:42:33'),
(65, 45, 'Hadir', '2023-08-17 08:04:31'),
(66, 46, 'Terlambat', '2023-03-23 12:46:20'),
(67, 52, 'Hadir', '2023-09-12 04:57:15'),
(68, 44, 'Izin', '2023-05-12 02:29:43'),
(69, 60, 'Sakit', '2023-03-29 21:35:37'),
(70, 6, 'Terlambat', '2023-12-14 13:59:11'),
(71, 41, 'Sakit', '2023-06-23 18:04:49'),
(72, 4, 'Izin', '2023-12-04 16:02:10'),
(73, 21, 'Terlambat', '2023-09-07 11:23:38'),
(74, 56, 'Izin', '2023-05-23 11:45:56'),
(75, 50, 'Hadir', '2023-07-18 19:37:23'),
(76, 38, 'Sakit', '2023-06-17 22:31:33'),
(77, 60, 'Sakit', '2023-06-26 12:02:52'),
(78, 58, 'Sakit', '2023-09-13 00:33:49'),
(79, 28, 'Sakit', '2023-05-22 00:50:57'),
(80, 7, 'Terlambat', '2023-05-22 23:52:09'),
(81, 16, 'Hadir', '2023-08-14 08:17:09'),
(82, 45, 'Hadir', '2023-02-26 19:06:31'),
(83, 57, 'Terlambat', '2023-05-02 03:17:59'),
(84, 37, 'Terlambat', '2023-08-19 02:35:42'),
(85, 57, 'Terlambat', '2023-06-09 14:17:05'),
(86, 54, 'Terlambat', '2023-09-21 14:30:57'),
(87, 2, 'Sakit', '2023-07-27 14:47:36'),
(88, 17, 'Terlambat', '2023-01-14 18:15:36'),
(89, 7, 'Sakit', '2023-07-11 22:36:27'),
(90, 29, 'Izin', '2023-12-16 06:22:06'),
(91, 53, 'Sakit', '2023-09-11 01:17:38'),
(92, 1, 'Hadir', '2023-12-10 02:01:24'),
(93, 17, 'Terlambat', '2023-02-22 19:43:55'),
(94, 50, 'Terlambat', '2023-03-16 14:37:23'),
(95, 9, 'Izin', '2023-09-10 11:12:51'),
(96, 46, 'Sakit', '2023-08-22 18:43:12'),
(97, 50, 'Sakit', '2023-03-31 17:26:56'),
(98, 48, 'Izin', '2023-12-20 23:08:50'),
(99, 19, 'Sakit', '2023-10-01 20:21:06'),
(100, 13, 'Izin', '2023-09-08 06:35:31'),
(101, 48, 'Izin', '2023-06-13 19:44:19'),
(102, 38, 'Hadir', '2023-11-19 21:28:27'),
(103, 9, 'Terlambat', '2023-07-01 22:31:51'),
(104, 19, 'Terlambat', '2023-04-26 09:45:51'),
(105, 18, 'Sakit', '2023-03-30 17:54:27'),
(106, 17, 'Hadir', '2023-03-21 02:29:45'),
(107, 31, 'Terlambat', '2023-10-25 21:21:19'),
(108, 30, 'Terlambat', '2023-06-07 14:36:52'),
(109, 9, 'Izin', '2023-01-28 23:43:26'),
(110, 34, 'Izin', '2023-09-14 14:53:13'),
(111, 2, 'Terlambat', '2023-04-01 02:21:21'),
(112, 21, 'Terlambat', '2023-05-27 20:19:04'),
(113, 6, 'Hadir', '2023-11-21 21:20:06'),
(114, 40, 'Sakit', '2023-03-06 16:59:56'),
(115, 47, 'Hadir', '2023-08-09 03:13:09'),
(116, 45, 'Izin', '2023-04-14 19:58:10'),
(117, 3, 'Sakit', '2023-12-03 18:56:47'),
(118, 49, 'Hadir', '2023-10-19 05:20:13'),
(119, 36, 'Hadir', '2023-12-11 14:30:49'),
(120, 26, 'Izin', '2023-01-16 04:15:36'),
(121, 28, 'Terlambat', '2023-01-23 15:37:24'),
(122, 14, 'Terlambat', '2023-04-17 16:02:57'),
(123, 17, 'Hadir', '2023-12-20 08:15:45'),
(124, 33, 'Izin', '2023-02-28 16:59:02'),
(125, 20, 'Sakit', '2023-03-21 18:13:16'),
(126, 37, 'Izin', '2023-09-29 23:38:19'),
(127, 21, 'Hadir', '2023-07-07 12:54:05'),
(128, 12, 'Hadir', '2023-11-24 20:05:01'),
(129, 10, 'Izin', '2023-05-18 01:17:46'),
(130, 27, 'Izin', '2023-01-14 07:08:03'),
(131, 31, 'Hadir', '2023-07-18 06:36:17'),
(132, 11, 'Hadir', '2023-02-01 14:26:59'),
(133, 42, 'Sakit', '2023-05-08 05:51:03'),
(134, 57, 'Hadir', '2023-08-22 06:48:18'),
(135, 3, 'Sakit', '2023-07-20 10:03:30'),
(136, 7, 'Sakit', '2023-01-09 11:14:57'),
(137, 10, 'Terlambat', '2023-09-06 14:13:31'),
(138, 41, 'Sakit', '2023-03-28 13:48:10'),
(139, 11, 'Sakit', '2023-08-23 04:42:31'),
(140, 10, 'Izin', '2023-02-14 07:26:14'),
(141, 55, 'Hadir', '2023-11-22 13:24:50'),
(142, 5, 'Izin', '2023-01-27 00:23:32'),
(143, 38, 'Izin', '2023-11-15 12:15:08'),
(144, 28, 'Terlambat', '2023-01-27 18:21:25'),
(145, 20, 'Terlambat', '2023-05-23 07:35:15'),
(146, 31, 'Terlambat', '2023-08-11 05:34:20'),
(147, 44, 'Hadir', '2023-05-31 02:53:12'),
(148, 39, 'Terlambat', '2023-12-04 07:02:28'),
(149, 47, 'Hadir', '2023-04-04 05:42:37'),
(150, 56, 'Izin', '2023-11-04 05:13:32'),
(151, 8, 'Terlambat', '2023-05-30 06:37:31'),
(152, 30, 'Hadir', '2023-10-26 01:55:28'),
(153, 1, 'Hadir', '2023-03-24 21:19:48'),
(154, 9, 'Izin', '2023-02-20 17:57:11'),
(155, 44, 'Sakit', '2023-08-30 06:32:42'),
(156, 18, 'Sakit', '2023-05-22 00:01:39'),
(157, 55, 'Terlambat', '2023-11-29 03:22:27'),
(158, 30, 'Izin', '2023-11-07 22:43:07'),
(159, 8, 'Sakit', '2023-01-01 16:00:19'),
(160, 20, 'Izin', '2023-06-17 20:59:33'),
(161, 23, 'Terlambat', '2023-12-14 05:08:27'),
(162, 35, 'Izin', '2023-10-27 13:21:13'),
(163, 13, 'Terlambat', '2023-01-13 11:10:04'),
(164, 1, 'Terlambat', '2023-06-20 03:35:20'),
(165, 14, 'Hadir', '2023-11-09 21:28:55'),
(166, 11, 'Izin', '2023-10-07 21:01:32'),
(167, 8, 'Sakit', '2023-09-07 16:35:12'),
(168, 14, 'Terlambat', '2023-11-20 05:26:58'),
(169, 46, 'Terlambat', '2023-01-10 15:56:16'),
(170, 45, 'Terlambat', '2023-06-23 19:18:36'),
(171, 25, 'Hadir', '2023-01-17 02:21:15'),
(172, 41, 'Izin', '2023-08-05 22:46:48'),
(173, 27, 'Izin', '2023-03-17 12:56:55'),
(174, 37, 'Terlambat', '2023-12-09 01:18:03'),
(175, 57, 'Hadir', '2023-02-16 09:02:19'),
(176, 38, 'Sakit', '2023-11-30 01:55:10'),
(177, 3, 'Terlambat', '2023-12-30 03:23:44'),
(178, 25, 'Izin', '2023-10-31 12:54:54'),
(179, 49, 'Sakit', '2023-03-15 05:33:08'),
(180, 53, 'Terlambat', '2023-06-16 17:10:47'),
(181, 19, 'Izin', '2023-11-02 06:17:40'),
(182, 55, 'Sakit', '2023-12-16 14:03:02'),
(183, 24, 'Sakit', '2023-05-16 16:21:40'),
(184, 34, 'Izin', '2023-10-07 03:58:09'),
(185, 52, 'Terlambat', '2023-05-13 23:34:04'),
(186, 27, 'Sakit', '2023-12-25 17:49:54'),
(187, 37, 'Terlambat', '2023-03-14 13:11:15'),
(188, 41, 'Izin', '2023-11-13 16:31:30'),
(189, 34, 'Hadir', '2023-04-15 22:46:30'),
(190, 52, 'Terlambat', '2023-12-15 19:12:29'),
(191, 58, 'Terlambat', '2023-07-27 09:33:53'),
(192, 48, 'Izin', '2023-03-22 05:33:22'),
(193, 22, 'Izin', '2023-03-15 10:39:19'),
(194, 12, 'Izin', '2023-12-20 18:40:23'),
(195, 58, 'Hadir', '2023-09-13 16:43:21'),
(196, 25, 'Izin', '2023-03-18 03:05:01'),
(197, 39, 'Izin', '2023-07-08 04:59:50'),
(198, 20, 'Hadir', '2023-06-01 03:06:26'),
(199, 53, 'Sakit', '2023-10-22 08:10:12'),
(200, 19, 'Terlambat', '2023-05-20 17:11:04'),
(201, 31, 'Sakit', '2023-11-21 15:46:23'),
(202, 36, 'Izin', '2023-12-23 05:37:36'),
(203, 35, 'Terlambat', '2023-05-29 15:02:49'),
(204, 36, 'Hadir', '2023-09-12 05:46:50'),
(205, 59, 'Hadir', '2023-10-18 06:33:21'),
(206, 47, 'Hadir', '2023-07-26 18:19:15'),
(207, 4, 'Izin', '2023-07-22 20:15:33'),
(208, 19, 'Terlambat', '2023-08-07 22:50:54'),
(209, 24, 'Terlambat', '2023-11-06 16:20:49'),
(210, 36, 'Hadir', '2023-09-22 02:41:24'),
(211, 21, 'Terlambat', '2023-10-14 17:56:39'),
(212, 14, 'Sakit', '2023-10-13 11:24:13'),
(213, 24, 'Terlambat', '2023-04-02 18:19:42'),
(214, 24, 'Hadir', '2023-09-30 12:01:51'),
(215, 43, 'Izin', '2023-10-04 04:57:51'),
(216, 6, 'Sakit', '2023-03-06 18:17:16'),
(217, 21, 'Hadir', '2023-02-20 08:44:24'),
(218, 3, 'Terlambat', '2023-03-17 07:22:46'),
(219, 20, 'Izin', '2023-05-23 19:58:52'),
(220, 51, 'Sakit', '2023-11-05 07:52:17'),
(221, 46, 'Izin', '2023-11-26 20:42:43'),
(222, 35, 'Izin', '2023-10-13 18:34:30'),
(223, 10, 'Izin', '2023-09-01 07:28:58'),
(224, 16, 'Izin', '2023-08-15 13:00:54'),
(225, 35, 'Hadir', '2023-06-18 22:15:24'),
(226, 29, 'Izin', '2023-02-23 18:00:10'),
(227, 18, 'Sakit', '2023-05-03 20:41:31'),
(228, 15, 'Sakit', '2023-04-20 06:57:16'),
(229, 32, 'Terlambat', '2023-12-13 00:40:52'),
(230, 2, 'Hadir', '2023-07-13 00:45:05'),
(231, 44, 'Sakit', '2023-07-27 04:02:54'),
(232, 33, 'Izin', '2023-01-31 13:27:55'),
(233, 46, 'Izin', '2023-10-08 02:16:03'),
(234, 1, 'Sakit', '2023-03-29 04:17:02'),
(235, 46, 'Terlambat', '2023-05-26 12:11:37'),
(236, 18, 'Izin', '2023-07-03 17:18:09'),
(237, 12, 'Terlambat', '2023-02-16 02:01:57'),
(238, 30, 'Izin', '2023-05-02 19:08:22'),
(239, 33, 'Terlambat', '2023-08-11 00:23:49'),
(240, 37, 'Sakit', '2023-06-14 17:34:29'),
(241, 47, 'Izin', '2023-03-15 02:12:17'),
(242, 44, 'Izin', '2023-05-18 10:51:27'),
(243, 48, 'Izin', '2023-02-05 20:08:48'),
(244, 45, 'Izin', '2023-12-06 16:05:21'),
(245, 56, 'Sakit', '2023-05-29 20:17:59'),
(246, 59, 'Hadir', '2023-04-18 22:45:33'),
(247, 18, 'Terlambat', '2023-02-17 16:25:06'),
(248, 27, 'Sakit', '2023-11-08 23:50:27'),
(249, 37, 'Hadir', '2023-11-16 07:21:16'),
(250, 31, 'Hadir', '2023-10-24 11:27:39'),
(251, 32, 'Izin', '2023-01-10 23:21:23'),
(252, 6, 'Izin', '2023-01-17 08:07:50'),
(253, 43, 'Sakit', '2023-09-23 20:00:18'),
(254, 1, 'Terlambat', '2023-04-13 15:13:20'),
(255, 45, 'Hadir', '2023-12-24 14:25:39'),
(256, 51, 'Terlambat', '2023-06-24 03:38:40'),
(257, 43, 'Terlambat', '2023-09-23 09:00:07'),
(258, 25, 'Izin', '2023-05-07 13:08:26'),
(259, 46, 'Terlambat', '2023-03-20 22:18:29'),
(260, 31, 'Hadir', '2023-05-13 19:12:36'),
(261, 26, 'Sakit', '2023-06-05 18:15:42'),
(262, 22, 'Izin', '2023-03-20 14:20:22'),
(263, 20, 'Sakit', '2023-03-15 23:40:06'),
(264, 32, 'Sakit', '2023-08-23 17:39:53'),
(265, 25, 'Hadir', '2023-02-16 16:54:55'),
(266, 55, 'Sakit', '2023-03-07 03:03:04'),
(267, 43, 'Izin', '2023-09-28 06:50:01'),
(268, 43, 'Izin', '2023-03-24 05:50:24'),
(269, 15, 'Sakit', '2023-08-07 13:27:12'),
(270, 31, 'Sakit', '2023-08-20 03:48:07'),
(271, 38, 'Tidak Hadir', NULL),
(272, 41, 'Tidak Hadir', NULL),
(273, 33, 'Tidak Hadir', NULL),
(274, 51, 'Tidak Hadir', NULL),
(275, 36, 'Tidak Hadir', NULL),
(276, 16, 'Tidak Hadir', NULL),
(277, 3, 'Tidak Hadir', NULL),
(278, 13, 'Tidak Hadir', NULL),
(279, 16, 'Tidak Hadir', NULL),
(280, 53, 'Tidak Hadir', NULL),
(281, 60, 'Tidak Hadir', NULL),
(282, 58, 'Tidak Hadir', NULL),
(283, 7, 'Tidak Hadir', NULL),
(284, 50, 'Tidak Hadir', NULL),
(285, 34, 'Tidak Hadir', NULL),
(286, 8, 'Tidak Hadir', NULL),
(287, 16, 'Tidak Hadir', NULL),
(288, 48, 'Tidak Hadir', NULL),
(289, 8, 'Tidak Hadir', NULL),
(290, 24, 'Tidak Hadir', NULL),
(291, 29, 'Tidak Hadir', NULL),
(292, 25, 'Tidak Hadir', NULL),
(293, 39, 'Tidak Hadir', NULL),
(294, 58, 'Tidak Hadir', NULL),
(295, 37, 'Tidak Hadir', NULL),
(296, 58, 'Tidak Hadir', NULL),
(297, 54, 'Tidak Hadir', NULL),
(298, 60, 'Tidak Hadir', NULL),
(299, 10, 'Tidak Hadir', NULL),
(300, 50, 'Tidak Hadir', NULL);

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
(0, 'Tugas 5', 1, '2023-07-18', 'Proses', '2023-07-27', NULL),
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
(26, 'Tugas Tiktok', 1, '2023-03-01', 'Proses', '2023-01-10', 'Keterangan tugas 11'),
(27, 'Nama Tugas 1', 3, '2023-08-01', 'Selesai', '2023-08-04', NULL),
(28, 'Nama Tugas 2', 5, '2023-07-14', 'Selesai', '2023-07-17', NULL),
(29, 'Nama Tugas 3', 4, '2023-08-24', 'Selesai', '2023-08-27', NULL),
(30, 'Nama Tugas 4', 3, '2023-08-23', 'Selesai', '2023-08-26', NULL),
(31, 'Nama Tugas 5', 1, '2023-04-27', 'Selesai', '2023-04-30', NULL),
(32, 'Nama Tugas 6', 4, '2023-07-24', 'Selesai', '2023-07-27', NULL),
(33, 'Nama Tugas 7', 4, '2023-04-14', 'Selesai', '2023-04-17', NULL),
(34, 'Nama Tugas 8', 3, '2023-08-10', 'Selesai', '2023-08-13', NULL),
(35, 'Nama Tugas 9', 3, '2023-10-18', 'Selesai', '2023-10-21', NULL),
(36, 'Nama Tugas 10', 6, '2023-03-12', 'Selesai', '2023-03-15', NULL),
(37, 'Nama Tugas 11', 5, '2024-01-01', 'Selesai', '2024-01-04', NULL),
(38, 'Nama Tugas 12', 5, '2023-11-30', 'Selesai', '2023-12-03', NULL),
(39, 'Nama Tugas 13', 4, '2023-04-09', 'Selesai', '2023-04-12', NULL),
(40, 'Nama Tugas 14', 5, '2023-02-06', 'Selesai', '2023-02-09', NULL),
(41, 'Nama Tugas 15', 3, '2023-11-11', 'Selesai', '2023-11-14', NULL),
(42, 'Nama Tugas 16', 5, '2023-05-21', 'Selesai', '2023-05-24', NULL),
(43, 'Nama Tugas 17', 4, '2023-03-18', 'Selesai', '2023-03-21', NULL),
(44, 'Nama Tugas 18', 1, '2023-08-22', 'Selesai', '2023-08-25', NULL),
(45, 'Nama Tugas 19', 2, '2023-04-08', 'Selesai', '2023-04-11', NULL),
(46, 'Nama Tugas 20', 6, '2023-08-20', 'Selesai', '2023-08-23', NULL),
(47, 'Nama Tugas 21', 1, '2023-04-20', 'Selesai', '2023-04-23', NULL),
(48, 'Nama Tugas 22', 1, '2023-01-06', 'Selesai', '2023-01-09', NULL),
(49, 'Nama Tugas 23', 6, '2023-10-07', 'Selesai', '2023-10-10', NULL),
(50, 'Nama Tugas 24', 3, '2023-01-30', 'Selesai', '2023-02-02', NULL),
(51, 'Nama Tugas 25', 1, '2023-07-26', 'Selesai', '2023-07-29', NULL),
(52, 'Nama Tugas 26', 5, '2023-09-15', 'Selesai', '2023-09-18', NULL),
(53, 'Nama Tugas 27', 6, '2023-09-14', 'Selesai', '2023-09-17', NULL),
(54, 'Nama Tugas 28', 1, '2023-03-07', 'Selesai', '2023-03-10', NULL),
(55, 'Nama Tugas 29', 4, '2023-06-20', 'Selesai', '2023-06-23', NULL),
(56, 'Nama Tugas 30', 5, '2023-03-11', 'Selesai', '2023-03-14', NULL),
(57, 'Nama Tugas 31', 5, '2023-06-23', 'Selesai', '2023-06-26', NULL),
(58, 'Nama Tugas 32', 6, '2023-09-08', 'Selesai', '2023-09-11', NULL),
(59, 'Nama Tugas 33', 4, '2023-08-17', 'Selesai', '2023-08-20', NULL),
(60, 'Nama Tugas 34', 5, '2023-04-15', 'Selesai', '2023-04-18', NULL),
(61, 'Nama Tugas 35', 3, '2023-03-19', 'Selesai', '2023-03-22', NULL),
(62, 'Nama Tugas 36', 6, '2023-10-15', 'Selesai', '2023-10-18', NULL),
(63, 'Nama Tugas 37', 3, '2023-01-27', 'Selesai', '2023-01-30', NULL),
(64, 'Nama Tugas 38', 3, '2023-09-24', 'Selesai', '2023-09-27', NULL),
(65, 'Nama Tugas 39', 3, '2023-12-03', 'Selesai', '2023-12-06', NULL),
(66, 'Nama Tugas 40', 3, '2023-03-08', 'Selesai', '2023-03-11', NULL),
(67, 'Nama Tugas 41', 4, '2023-10-18', 'Selesai', '2023-10-21', NULL),
(68, 'Nama Tugas 42', 2, '2023-04-20', 'Selesai', '2023-04-23', NULL),
(69, 'Nama Tugas 43', 3, '2023-07-23', 'Selesai', '2023-07-26', NULL),
(70, 'Nama Tugas 44', 3, '2023-09-05', 'Selesai', '2023-09-08', NULL),
(71, 'Nama Tugas 45', 4, '2023-10-15', 'Selesai', '2023-10-18', NULL),
(72, 'Nama Tugas 46', 1, '2023-03-08', 'Selesai', '2023-03-11', NULL),
(73, 'Nama Tugas 47', 2, '2023-02-15', 'Selesai', '2023-02-18', NULL),
(74, 'Nama Tugas 48', 3, '2023-04-05', 'Selesai', '2023-04-08', NULL),
(75, 'Nama Tugas 49', 3, '2023-12-12', 'Selesai', '2023-12-15', NULL),
(76, 'Nama Tugas 50', 4, '2023-09-12', 'Selesai', '2023-09-15', NULL),
(77, 'Nama Tugas 51', 2, '2023-11-22', 'Selesai', '2023-11-25', NULL),
(78, 'Nama Tugas 52', 5, '2023-12-24', 'Selesai', '2023-12-27', NULL),
(79, 'Nama Tugas 53', 6, '2023-07-31', 'Selesai', '2023-08-03', NULL),
(80, 'Nama Tugas 54', 6, '2023-09-06', 'Selesai', '2023-09-09', NULL),
(81, 'Nama Tugas 55', 1, '2023-07-12', 'Selesai', '2023-07-15', NULL),
(82, 'Nama Tugas 56', 5, '2023-06-22', 'Selesai', '2023-06-25', NULL),
(83, 'Nama Tugas 57', 3, '2023-08-14', 'Selesai', '2023-08-17', NULL),
(84, 'Nama Tugas 58', 1, '2023-08-28', 'Selesai', '2023-08-31', NULL),
(85, 'Nama Tugas 59', 6, '2023-08-21', 'Selesai', '2023-08-24', NULL),
(86, 'Nama Tugas 60', 2, '2023-06-21', 'Selesai', '2023-06-24', NULL),
(87, 'Nama Tugas 61', 2, '2023-10-22', 'Selesai', '2023-10-25', NULL),
(88, 'Nama Tugas 62', 4, '2023-08-20', 'Selesai', '2023-08-23', NULL),
(89, 'Nama Tugas 63', 6, '2023-12-26', 'Selesai', '2023-12-29', NULL),
(90, 'Nama Tugas 64', 4, '2023-11-25', 'Selesai', '2023-11-28', NULL),
(91, 'Nama Tugas 65', 2, '2023-01-30', 'Selesai', '2023-02-02', NULL),
(92, 'Nama Tugas 66', 6, '2023-03-06', 'Selesai', '2023-03-09', NULL),
(93, 'Nama Tugas 67', 5, '2023-03-08', 'Selesai', '2023-03-11', NULL),
(94, 'Nama Tugas 68', 1, '2023-08-24', 'Selesai', '2023-08-27', NULL),
(95, 'Nama Tugas 69', 4, '2023-11-07', 'Selesai', '2023-11-10', NULL),
(96, 'Nama Tugas 70', 6, '2023-08-04', 'Selesai', '2023-08-07', NULL),
(97, 'Nama Tugas 71', 6, '2023-02-07', 'Selesai', '2023-02-10', NULL),
(98, 'Nama Tugas 72', 4, '2023-03-06', 'Selesai', '2023-03-09', NULL),
(99, 'Nama Tugas 73', 1, '2023-01-22', 'Selesai', '2023-01-25', NULL),
(100, 'Nama Tugas 74', 4, '2023-03-17', 'Selesai', '2023-03-20', NULL),
(101, 'Nama Tugas 75', 4, '2023-02-23', 'Selesai', '2023-02-26', NULL),
(102, 'Nama Tugas 76', 6, '2023-02-03', 'Selesai', '2023-02-06', NULL),
(103, 'Nama Tugas 77', 3, '2023-04-03', 'Selesai', '2023-04-06', NULL),
(104, 'Nama Tugas 78', 1, '2023-05-15', 'Selesai', '2023-05-18', NULL),
(105, 'Nama Tugas 79', 4, '2023-10-31', 'Selesai', '2023-11-03', NULL),
(106, 'Nama Tugas 80', 3, '2023-11-28', 'Selesai', '2023-12-01', NULL),
(107, 'Nama Tugas 81', 1, '2023-11-16', 'Selesai', '2023-11-19', NULL),
(108, 'Nama Tugas 82', 1, '2023-05-14', 'Selesai', '2023-05-17', NULL),
(109, 'Nama Tugas 83', 2, '2023-04-22', 'Selesai', '2023-04-25', NULL),
(110, 'Nama Tugas 84', 2, '2023-05-24', 'Selesai', '2023-05-27', NULL),
(111, 'Nama Tugas 85', 6, '2023-10-14', 'Selesai', '2023-10-17', NULL),
(112, 'Nama Tugas 86', 6, '2023-09-13', 'Selesai', '2023-09-16', NULL),
(113, 'Nama Tugas 87', 4, '2023-07-10', 'Selesai', '2023-07-13', NULL),
(114, 'Nama Tugas 88', 4, '2023-12-14', 'Selesai', '2023-12-17', NULL),
(115, 'Nama Tugas 89', 6, '2023-09-27', 'Selesai', '2023-09-30', NULL),
(116, 'Nama Tugas 90', 6, '2023-02-14', 'Selesai', '2023-02-17', NULL),
(117, 'Nama Tugas 91', 4, '2023-10-10', 'Selesai', '2023-10-13', NULL),
(118, 'Nama Tugas 92', 6, '2023-08-08', 'Selesai', '2023-08-11', NULL),
(119, 'Nama Tugas 93', 5, '2023-12-26', 'Selesai', '2023-12-29', NULL),
(120, 'Nama Tugas 94', 5, '2023-10-19', 'Selesai', '2023-10-22', NULL),
(121, 'Nama Tugas 95', 5, '2023-10-25', 'Selesai', '2023-10-28', NULL),
(122, 'Nama Tugas 96', 1, '2023-01-06', 'Selesai', '2023-01-09', NULL),
(123, 'Nama Tugas 97', 6, '2023-07-09', 'Selesai', '2023-07-12', NULL),
(124, 'Nama Tugas 98', 6, '2023-06-25', 'Selesai', '2023-06-28', NULL),
(125, 'Nama Tugas 99', 1, '2023-10-05', 'Selesai', '2023-10-08', NULL),
(126, 'Nama Tugas 100', 2, '2023-04-24', 'Selesai', '2023-04-27', NULL),
(127, 'Nama Tugas 101', 5, '2023-04-22', 'Selesai', '2023-04-25', NULL),
(128, 'Nama Tugas 102', 5, '2023-12-23', 'Selesai', '2023-12-26', NULL),
(129, 'Nama Tugas 103', 5, '2023-09-05', 'Selesai', '2023-09-08', NULL),
(130, 'Nama Tugas 104', 5, '2023-06-05', 'Selesai', '2023-06-08', NULL),
(131, 'Nama Tugas 105', 4, '2023-02-02', 'Selesai', '2023-02-05', NULL),
(132, 'Nama Tugas 106', 3, '2023-04-01', 'Selesai', '2023-04-04', NULL),
(133, 'Nama Tugas 107', 6, '2023-12-12', 'Selesai', '2023-12-15', NULL),
(134, 'Nama Tugas 108', 2, '2023-10-28', 'Selesai', '2023-10-31', NULL),
(135, 'Nama Tugas 109', 6, '2023-06-08', 'Selesai', '2023-06-11', NULL),
(136, 'Nama Tugas 110', 6, '2023-06-21', 'Selesai', '2023-06-24', NULL),
(137, 'Nama Tugas 111', 5, '2023-01-04', 'Selesai', '2023-01-07', NULL),
(138, 'Nama Tugas 112', 6, '2023-04-05', 'Selesai', '2023-04-08', NULL),
(139, 'Nama Tugas 113', 3, '2023-04-16', 'Selesai', '2023-04-19', NULL),
(140, 'Nama Tugas 114', 2, '2023-07-14', 'Selesai', '2023-07-17', NULL),
(141, 'Nama Tugas 115', 6, '2023-09-21', 'Selesai', '2023-09-24', NULL),
(142, 'Nama Tugas 116', 3, '2023-02-21', 'Selesai', '2023-02-24', NULL),
(143, 'Nama Tugas 117', 4, '2023-10-19', 'Selesai', '2023-10-22', NULL),
(144, 'Nama Tugas 118', 5, '2023-03-25', 'Selesai', '2023-03-28', NULL),
(145, 'Nama Tugas 119', 5, '2023-01-20', 'Selesai', '2023-01-23', NULL),
(146, 'Nama Tugas 120', 4, '2023-10-13', 'Selesai', '2023-10-16', NULL),
(147, 'Nama Tugas 121', 2, '2023-07-08', 'Selesai', '2023-07-11', NULL),
(148, 'Nama Tugas 122', 6, '2023-01-24', 'Selesai', '2023-01-27', NULL),
(149, 'Nama Tugas 123', 3, '2023-06-08', 'Selesai', '2023-06-11', NULL),
(150, 'Nama Tugas 124', 6, '2023-03-10', 'Selesai', '2023-03-13', NULL),
(151, 'Nama Tugas 125', 3, '2023-07-25', 'Selesai', '2023-07-28', NULL),
(152, 'Nama Tugas 126', 2, '2023-04-23', 'Selesai', '2023-04-26', NULL),
(153, 'Nama Tugas 127', 1, '2023-09-15', 'Selesai', '2023-09-18', NULL),
(154, 'Nama Tugas 128', 3, '2023-09-23', 'Selesai', '2023-09-26', NULL),
(155, 'Nama Tugas 129', 2, '2023-02-27', 'Selesai', '2023-03-02', NULL),
(156, 'Nama Tugas 130', 3, '2023-10-19', 'Selesai', '2023-10-22', NULL),
(157, 'Nama Tugas 131', 5, '2023-04-20', 'Selesai', '2023-04-23', NULL),
(158, 'Nama Tugas 132', 6, '2023-11-23', 'Selesai', '2023-11-26', NULL),
(159, 'Nama Tugas 133', 4, '2023-06-30', 'Selesai', '2023-07-03', NULL),
(160, 'Nama Tugas 134', 2, '2023-07-16', 'Selesai', '2023-07-19', NULL),
(161, 'Nama Tugas 135', 5, '2023-01-06', 'Selesai', '2023-01-09', NULL),
(162, 'Nama Tugas 136', 5, '2023-08-22', 'Selesai', '2023-08-25', NULL),
(163, 'Nama Tugas 137', 1, '2023-04-11', 'Selesai', '2023-04-14', NULL),
(164, 'Nama Tugas 138', 2, '2023-06-01', 'Selesai', '2023-06-04', NULL),
(165, 'Nama Tugas 139', 6, '2023-01-20', 'Selesai', '2023-01-23', NULL),
(166, 'Nama Tugas 140', 1, '2023-05-27', 'Selesai', '2023-05-30', NULL),
(167, 'Nama Tugas 141', 4, '2023-07-26', 'Selesai', '2023-07-29', NULL),
(168, 'Nama Tugas 142', 1, '2023-09-01', 'Selesai', '2023-09-04', NULL),
(169, 'Nama Tugas 143', 1, '2023-06-04', 'Selesai', '2023-06-07', NULL),
(170, 'Nama Tugas 144', 4, '2023-05-01', 'Selesai', '2023-05-04', NULL),
(171, 'Nama Tugas 145', 5, '2023-02-26', 'Selesai', '2023-03-01', NULL),
(172, 'Nama Tugas 146', 3, '2023-11-07', 'Selesai', '2023-11-10', NULL),
(173, 'Nama Tugas 147', 5, '2023-05-19', 'Selesai', '2023-05-22', NULL),
(174, 'Nama Tugas 148', 1, '2023-02-25', 'Selesai', '2023-02-28', NULL),
(175, 'Nama Tugas 149', 2, '2023-11-29', 'Selesai', '2023-12-02', NULL),
(176, 'Nama Tugas 150', 3, '2023-12-05', 'Selesai', '2023-12-08', NULL),
(177, 'Nama Tugas 151', 5, '2023-10-07', 'Selesai', '2023-10-10', NULL),
(178, 'Nama Tugas 152', 4, '2023-06-23', 'Selesai', '2023-06-26', NULL),
(179, 'Nama Tugas 153', 6, '2023-05-09', 'Selesai', '2023-05-12', NULL),
(180, 'Nama Tugas 154', 2, '2023-07-12', 'Selesai', '2023-07-15', NULL),
(181, 'Nama Tugas 155', 1, '2023-03-08', 'Selesai', '2023-03-11', NULL),
(182, 'Nama Tugas 156', 2, '2023-10-15', 'Selesai', '2023-10-18', NULL),
(183, 'Nama Tugas 157', 2, '2023-11-18', 'Selesai', '2023-11-21', NULL),
(184, 'Nama Tugas 158', 6, '2023-03-01', 'Selesai', '2023-03-04', NULL),
(185, 'Nama Tugas 159', 1, '2023-02-06', 'Selesai', '2023-02-09', NULL),
(186, 'Nama Tugas 160', 3, '2023-07-13', 'Selesai', '2023-07-16', NULL),
(187, 'Nama Tugas 161', 6, '2023-05-12', 'Selesai', '2023-05-15', NULL),
(188, 'Nama Tugas 162', 1, '2023-02-04', 'Selesai', '2023-02-07', NULL),
(189, 'Nama Tugas 163', 1, '2023-05-30', 'Selesai', '2023-06-02', NULL),
(190, 'Nama Tugas 164', 3, '2023-04-25', 'Selesai', '2023-04-28', NULL),
(191, 'Nama Tugas 165', 3, '2023-10-08', 'Selesai', '2023-10-11', NULL),
(192, 'Nama Tugas 166', 5, '2023-01-02', 'Selesai', '2023-01-05', NULL),
(193, 'Nama Tugas 167', 3, '2023-11-23', 'Selesai', '2023-11-26', NULL),
(194, 'Nama Tugas 168', 2, '2023-03-24', 'Selesai', '2023-03-27', NULL),
(195, 'Nama Tugas 169', 3, '2023-04-21', 'Selesai', '2023-04-24', NULL),
(196, 'Nama Tugas 170', 2, '2023-06-17', 'Selesai', '2023-06-20', NULL),
(197, 'Nama Tugas 171', 6, '2023-06-06', 'Selesai', '2023-06-09', NULL),
(198, 'Nama Tugas 172', 1, '2023-04-18', 'Selesai', '2023-04-21', NULL),
(199, 'Nama Tugas 173', 1, '2023-09-20', 'Selesai', '2023-09-23', NULL),
(200, 'Nama Tugas 174', 3, '2023-06-29', 'Selesai', '2023-07-02', NULL),
(201, 'Nama Tugas 175', 6, '2023-12-18', 'Selesai', '2023-12-21', NULL),
(202, 'Nama Tugas 176', 4, '2023-02-14', 'Selesai', '2023-02-17', NULL),
(203, 'Nama Tugas 177', 5, '2023-07-06', 'Selesai', '2023-07-09', NULL),
(204, 'Nama Tugas 178', 4, '2023-06-25', 'Selesai', '2023-06-28', NULL),
(205, 'Nama Tugas 179', 4, '2023-05-09', 'Selesai', '2023-05-12', NULL),
(206, 'Nama Tugas 180', 1, '2023-07-25', 'Selesai', '2023-07-28', NULL),
(207, 'Nama Tugas 181', 6, '2023-04-03', 'Selesai', '2023-04-06', NULL),
(208, 'Nama Tugas 182', 6, '2023-06-18', 'Selesai', '2023-06-21', NULL),
(209, 'Nama Tugas 183', 3, '2023-10-25', 'Selesai', '2023-10-28', NULL),
(210, 'Nama Tugas 184', 2, '2023-03-10', 'Selesai', '2023-03-13', NULL),
(211, 'Nama Tugas 185', 2, '2024-01-01', 'Selesai', '2024-01-04', NULL),
(212, 'Nama Tugas 186', 3, '2023-02-11', 'Selesai', '2023-02-14', NULL),
(213, 'Nama Tugas 187', 4, '2023-03-06', 'Selesai', '2023-03-09', NULL),
(214, 'Nama Tugas 188', 6, '2023-06-10', 'Selesai', '2023-06-13', NULL),
(215, 'Nama Tugas 189', 2, '2023-09-18', 'Selesai', '2023-09-21', NULL),
(216, 'Nama Tugas 190', 4, '2023-08-27', 'Selesai', '2023-08-30', NULL),
(217, 'Nama Tugas 191', 2, '2023-04-14', 'Selesai', '2023-04-17', NULL),
(218, 'Nama Tugas 192', 4, '2023-11-06', 'Selesai', '2023-11-09', NULL),
(219, 'Nama Tugas 193', 5, '2023-12-08', 'Selesai', '2023-12-11', NULL),
(220, 'Nama Tugas 194', 1, '2023-07-26', 'Selesai', '2023-07-29', NULL),
(221, 'Nama Tugas 195', 3, '2023-05-03', 'Selesai', '2023-05-06', NULL),
(222, 'Nama Tugas 196', 4, '2023-10-29', 'Selesai', '2023-11-01', NULL),
(223, 'Nama Tugas 197', 3, '2023-10-13', 'Selesai', '2023-10-16', NULL),
(224, 'Nama Tugas 198', 2, '2023-10-15', 'Selesai', '2023-10-18', NULL),
(225, 'Nama Tugas 199', 4, '2023-06-28', 'Selesai', '2023-07-01', NULL),
(226, 'Nama Tugas 200', 6, '2023-08-14', 'Selesai', '2023-08-17', NULL),
(227, 'Nama Tugas 201', 3, '2023-08-11', 'Selesai', '2023-08-14', NULL),
(228, 'Nama Tugas 202', 4, '2023-08-17', 'Selesai', '2023-08-20', NULL),
(229, 'Nama Tugas 203', 2, '2023-03-09', 'Selesai', '2023-03-12', NULL),
(230, 'Nama Tugas 204', 4, '2023-01-06', 'Selesai', '2023-01-09', NULL),
(231, 'Nama Tugas 205', 6, '2023-08-03', 'Selesai', '2023-08-06', NULL),
(232, 'Nama Tugas 206', 3, '2023-07-04', 'Selesai', '2023-07-07', NULL),
(233, 'Nama Tugas 207', 5, '2023-10-10', 'Selesai', '2023-10-13', NULL),
(234, 'Nama Tugas 208', 1, '2023-10-19', 'Selesai', '2023-10-22', NULL),
(235, 'Nama Tugas 209', 3, '2023-05-29', 'Selesai', '2023-06-01', NULL),
(236, 'Nama Tugas 210', 2, '2023-09-17', 'Selesai', '2023-09-20', NULL),
(237, 'Nama Tugas 211', 6, '2023-09-13', 'Selesai', '2023-09-16', NULL),
(238, 'Nama Tugas 212', 6, '2023-08-03', 'Selesai', '2023-08-06', NULL),
(239, 'Nama Tugas 213', 3, '2023-06-01', 'Selesai', '2023-06-04', NULL),
(240, 'Nama Tugas 214', 6, '2023-10-07', 'Selesai', '2023-10-10', NULL),
(241, 'Nama Tugas 215', 5, '2023-04-13', 'Selesai', '2023-04-16', NULL),
(242, 'Nama Tugas 216', 6, '2023-12-31', 'Selesai', '2024-01-03', NULL),
(243, 'Nama Tugas 217', 1, '2023-11-08', 'Selesai', '2023-11-11', NULL),
(244, 'Nama Tugas 218', 4, '2023-10-28', 'Selesai', '2023-10-31', NULL),
(245, 'Nama Tugas 219', 3, '2023-09-10', 'Selesai', '2023-09-13', NULL),
(246, 'Nama Tugas 220', 1, '2023-10-01', 'Selesai', '2023-10-04', NULL),
(247, 'Nama Tugas 221', 5, '2023-02-04', 'Selesai', '2023-02-07', NULL),
(248, 'Nama Tugas 222', 5, '2023-03-15', 'Selesai', '2023-03-18', NULL),
(249, 'Nama Tugas 223', 2, '2023-07-18', 'Selesai', '2023-07-21', NULL),
(250, 'Nama Tugas 224', 6, '2023-07-25', 'Selesai', '2023-07-28', NULL),
(251, 'Nama Tugas 225', 5, '2023-06-08', 'Selesai', '2023-06-11', NULL),
(252, 'Nama Tugas 226', 6, '2023-06-26', 'Selesai', '2023-06-29', NULL),
(253, 'Nama Tugas 227', 6, '2023-01-14', 'Selesai', '2023-01-17', NULL),
(254, 'Nama Tugas 228', 4, '2023-10-07', 'Selesai', '2023-10-10', NULL),
(255, 'Nama Tugas 229', 3, '2023-10-26', 'Selesai', '2023-10-29', NULL),
(256, 'Nama Tugas 230', 6, '2023-01-11', 'Selesai', '2023-01-14', NULL),
(257, 'Nama Tugas 231', 2, '2023-07-09', 'Selesai', '2023-07-12', NULL),
(258, 'Nama Tugas 232', 5, '2023-04-21', 'Selesai', '2023-04-24', NULL),
(259, 'Nama Tugas 233', 2, '2023-11-03', 'Selesai', '2023-11-06', NULL),
(260, 'Nama Tugas 234', 3, '2023-11-27', 'Selesai', '2023-11-30', NULL),
(261, 'Nama Tugas 235', 1, '2023-06-22', 'Selesai', '2023-06-25', NULL),
(262, 'Nama Tugas 236', 6, '2023-08-02', 'Selesai', '2023-08-05', NULL),
(263, 'Nama Tugas 237', 2, '2023-03-12', 'Selesai', '2023-03-15', NULL),
(264, 'Nama Tugas 238', 6, '2023-04-01', 'Selesai', '2023-04-04', NULL),
(265, 'Nama Tugas 239', 6, '2023-10-25', 'Selesai', '2023-10-28', NULL),
(266, 'Nama Tugas 240', 2, '2023-08-01', 'Selesai', '2023-08-04', NULL),
(267, 'Nama Tugas 241', 5, '2023-12-17', 'Selesai', '2023-12-20', NULL),
(268, 'Nama Tugas 242', 6, '2023-05-20', 'Selesai', '2023-05-23', NULL),
(269, 'Nama Tugas 243', 6, '2023-10-17', 'Selesai', '2023-10-20', NULL),
(270, 'Nama Tugas 244', 1, '2023-04-22', 'Selesai', '2023-04-25', NULL),
(271, 'Nama Tugas 245', 4, '2023-12-04', 'Selesai', '2023-12-07', NULL),
(272, 'Nama Tugas 246', 2, '2023-11-09', 'Selesai', '2023-11-12', NULL),
(273, 'Nama Tugas 247', 6, '2023-09-23', 'Selesai', '2023-09-26', NULL),
(274, 'Nama Tugas 248', 3, '2023-08-09', 'Selesai', '2023-08-12', NULL),
(275, 'Nama Tugas 249', 6, '2023-02-07', 'Selesai', '2023-02-10', NULL),
(276, 'Nama Tugas 250', 4, '2023-05-27', 'Selesai', '2023-05-30', NULL),
(277, 'Nama Tugas 251', 1, '2023-08-10', 'Selesai', '2023-08-13', NULL),
(278, 'Nama Tugas 252', 3, '2023-03-22', 'Selesai', '2023-03-25', NULL),
(279, 'Nama Tugas 253', 4, '2023-04-08', 'Selesai', '2023-04-11', NULL),
(280, 'Nama Tugas 254', 2, '2023-06-07', 'Selesai', '2023-06-10', NULL),
(281, 'Nama Tugas 255', 4, '2023-06-27', 'Selesai', '2023-06-30', NULL),
(282, 'Nama Tugas 256', 6, '2023-02-19', 'Selesai', '2023-02-22', NULL),
(283, 'Nama Tugas 257', 3, '2023-09-01', 'Selesai', '2023-09-04', NULL),
(284, 'Nama Tugas 258', 4, '2023-12-27', 'Selesai', '2023-12-30', NULL),
(285, 'Nama Tugas 259', 6, '2023-08-19', 'Selesai', '2023-08-22', NULL),
(286, 'Nama Tugas 260', 6, '2023-01-24', 'Selesai', '2023-01-27', NULL),
(287, 'Nama Tugas 261', 1, '2023-05-01', 'Selesai', '2023-05-04', NULL),
(288, 'Nama Tugas 262', 5, '2023-01-29', 'Selesai', '2023-02-01', NULL),
(289, 'Nama Tugas 263', 3, '2023-08-06', 'Selesai', '2023-08-09', NULL),
(290, 'Nama Tugas 264', 2, '2023-03-16', 'Selesai', '2023-03-19', NULL),
(291, 'Nama Tugas 265', 5, '2023-09-15', 'Selesai', '2023-09-18', NULL),
(292, 'Nama Tugas 266', 2, '2023-05-30', 'Selesai', '2023-06-02', NULL),
(293, 'Nama Tugas 267', 4, '2023-11-07', 'Selesai', '2023-11-10', NULL),
(294, 'Nama Tugas 268', 2, '2023-11-06', 'Selesai', '2023-11-09', NULL),
(295, 'Nama Tugas 269', 1, '2023-06-26', 'Selesai', '2023-06-29', NULL),
(296, 'Nama Tugas 270', 4, '2023-06-22', 'Selesai', '2023-06-25', NULL),
(297, 'Nama Tugas 271', 2, '2023-06-06', 'Selesai', '2023-06-09', NULL),
(298, 'Nama Tugas 272', 4, '2023-01-14', 'Selesai', '2023-01-17', NULL),
(299, 'Nama Tugas 273', 6, '2023-01-19', 'Selesai', '2023-01-22', NULL),
(300, 'Nama Tugas 274', 2, '2023-05-19', 'Selesai', '2023-05-22', NULL),
(301, 'Nama Tugas 275', 4, '2023-10-22', 'Selesai', '2023-10-25', NULL),
(302, 'Nama Tugas 276', 1, '2023-09-15', 'Selesai', '2023-09-18', NULL),
(303, 'Nama Tugas 277', 5, '2023-10-26', 'Selesai', '2023-10-29', NULL),
(304, 'Nama Tugas 278', 3, '2023-08-25', 'Selesai', '2023-08-28', NULL),
(305, 'Nama Tugas 279', 4, '2023-06-26', 'Selesai', '2023-06-29', NULL),
(306, 'Nama Tugas 280', 1, '2023-09-10', 'Selesai', '2023-09-13', NULL),
(307, 'Nama Tugas 281', 1, '2023-05-28', 'Selesai', '2023-05-31', NULL),
(308, 'Nama Tugas 282', 6, '2023-02-26', 'Selesai', '2023-03-01', NULL),
(309, 'Nama Tugas 283', 1, '2023-07-21', 'Selesai', '2023-07-24', NULL),
(310, 'Nama Tugas 284', 3, '2023-04-05', 'Selesai', '2023-04-08', NULL),
(311, 'Nama Tugas 285', 2, '2023-10-01', 'Selesai', '2023-10-04', NULL),
(312, 'Nama Tugas 286', 3, '2023-08-02', 'Selesai', '2023-08-05', NULL),
(313, 'Nama Tugas 287', 6, '2023-11-19', 'Selesai', '2023-11-22', NULL),
(314, 'Nama Tugas 288', 5, '2023-09-07', 'Selesai', '2023-09-10', NULL),
(315, 'Nama Tugas 289', 3, '2023-10-24', 'Selesai', '2023-10-27', NULL),
(316, 'Nama Tugas 290', 1, '2023-09-16', 'Selesai', '2023-09-19', NULL),
(317, 'Nama Tugas 291', 5, '2023-01-22', 'Selesai', '2023-01-25', NULL),
(318, 'Nama Tugas 292', 1, '2023-01-01', 'Selesai', '2023-01-04', NULL),
(319, 'Nama Tugas 293', 2, '2023-09-30', 'Selesai', '2023-10-03', NULL),
(320, 'Nama Tugas 294', 4, '2023-08-18', 'Selesai', '2023-08-21', NULL),
(321, 'Nama Tugas 295', 2, '2023-05-23', 'Selesai', '2023-05-26', NULL),
(322, 'Nama Tugas 296', 4, '2023-11-14', 'Selesai', '2023-11-17', NULL),
(323, 'Nama Tugas 297', 5, '2023-04-06', 'Selesai', '2023-04-09', NULL),
(324, 'Nama Tugas 298', 1, '2023-12-16', 'Selesai', '2023-12-19', NULL),
(325, 'Nama Tugas 299', 5, '2023-04-23', 'Selesai', '2023-04-26', NULL),
(326, 'Nama Tugas 300', 4, '2023-11-11', 'Selesai', '2023-11-14', NULL),
(327, 'Nama Tugas 1', 2, '2023-08-30', 'Proses', '2023-09-02', NULL),
(328, 'Nama Tugas 2', 2, '2023-05-10', 'Proses', '2023-05-13', NULL),
(329, 'Nama Tugas 3', 3, '2023-06-14', 'Proses', '2023-06-17', NULL),
(330, 'Nama Tugas 4', 4, '2023-07-06', 'Proses', '2023-07-09', NULL),
(331, 'Nama Tugas 5', 6, '2023-11-29', 'Proses', '2023-12-02', NULL),
(332, 'Nama Tugas 6', 3, '2023-04-26', 'Proses', '2023-04-29', NULL),
(333, 'Nama Tugas 7', 5, '2023-12-31', 'Proses', '2024-01-03', NULL),
(334, 'Nama Tugas 8', 6, '2023-09-04', 'Proses', '2023-09-07', NULL),
(335, 'Nama Tugas 9', 3, '2023-11-20', 'Proses', '2023-11-23', NULL),
(336, 'Nama Tugas 10', 3, '2023-02-20', 'Proses', '2023-02-23', NULL),
(337, 'Nama Tugas 11', 4, '2023-11-24', 'Proses', '2023-11-27', NULL),
(338, 'Nama Tugas 12', 5, '2023-10-27', 'Proses', '2023-10-30', NULL),
(339, 'Nama Tugas 13', 4, '2023-06-24', 'Proses', '2023-06-27', NULL),
(340, 'Nama Tugas 14', 3, '2023-08-10', 'Proses', '2023-08-13', NULL),
(341, 'Nama Tugas 15', 2, '2023-11-16', 'Proses', '2023-11-19', NULL),
(342, 'Nama Tugas 16', 2, '2023-08-09', 'Proses', '2023-08-12', NULL),
(343, 'Nama Tugas 17', 3, '2023-08-19', 'Proses', '2023-08-22', NULL),
(344, 'Nama Tugas 18', 5, '2023-03-21', 'Proses', '2023-03-24', NULL),
(345, 'Nama Tugas 19', 6, '2023-01-31', 'Proses', '2023-02-03', NULL),
(346, 'Nama Tugas 20', 5, '2023-01-09', 'Proses', '2023-01-12', NULL),
(347, 'Nama Tugas 21', 6, '2023-05-28', 'Proses', '2023-05-31', NULL),
(348, 'Nama Tugas 22', 2, '2023-09-20', 'Proses', '2023-09-23', NULL),
(349, 'Nama Tugas 23', 6, '2023-12-24', 'Proses', '2023-12-27', NULL),
(350, 'Nama Tugas 24', 2, '2023-12-23', 'Proses', '2023-12-26', NULL),
(351, 'Nama Tugas 25', 5, '2023-09-10', 'Proses', '2023-09-13', NULL),
(352, 'Nama Tugas 26', 4, '2023-09-12', 'Proses', '2023-09-15', NULL),
(353, 'Nama Tugas 27', 3, '2023-10-06', 'Proses', '2023-10-09', NULL),
(354, 'Nama Tugas 28', 5, '2023-03-14', 'Proses', '2023-03-17', NULL),
(355, 'Nama Tugas 29', 6, '2023-09-24', 'Proses', '2023-09-27', NULL),
(356, 'Nama Tugas 30', 4, '2023-08-28', 'Proses', '2023-08-31', NULL),
(357, 'Nama Tugas 31', 6, '2023-02-15', 'Proses', '2023-02-18', NULL),
(358, 'Nama Tugas 32', 4, '2023-09-03', 'Proses', '2023-09-06', NULL),
(359, 'Nama Tugas 33', 3, '2023-07-17', 'Proses', '2023-07-20', NULL),
(360, 'Nama Tugas 34', 3, '2023-12-09', 'Proses', '2023-12-12', NULL),
(361, 'Nama Tugas 35', 4, '2023-01-18', 'Proses', '2023-01-21', NULL),
(362, 'Nama Tugas 36', 2, '2023-08-17', 'Proses', '2023-08-20', NULL),
(363, 'Nama Tugas 37', 3, '2023-05-29', 'Proses', '2023-06-01', NULL),
(364, 'Nama Tugas 38', 3, '2023-07-24', 'Proses', '2023-07-27', NULL),
(365, 'Nama Tugas 39', 4, '2023-02-10', 'Proses', '2023-02-13', NULL),
(366, 'Nama Tugas 40', 3, '2023-09-30', 'Proses', '2023-10-03', NULL),
(367, 'Nama Tugas 41', 6, '2023-10-23', 'Proses', '2023-10-26', NULL),
(368, 'Nama Tugas 42', 6, '2023-09-19', 'Proses', '2023-09-22', NULL),
(369, 'Nama Tugas 43', 2, '2023-07-18', 'Proses', '2023-07-21', NULL),
(370, 'Nama Tugas 44', 2, '2023-04-07', 'Proses', '2023-04-10', NULL),
(371, 'Nama Tugas 45', 4, '2023-07-28', 'Proses', '2023-07-31', NULL),
(372, 'Nama Tugas 46', 5, '2023-09-27', 'Proses', '2023-09-30', NULL),
(373, 'Nama Tugas 47', 6, '2023-05-06', 'Proses', '2023-05-09', NULL),
(374, 'Nama Tugas 48', 5, '2023-05-20', 'Proses', '2023-05-23', NULL),
(375, 'Nama Tugas 49', 6, '2023-01-12', 'Proses', '2023-01-15', NULL),
(376, 'Nama Tugas 50', 6, '2023-12-29', 'Proses', '2024-01-01', NULL),
(377, 'Nama Tugas 51', 5, '2023-07-20', 'Proses', '2023-07-23', NULL),
(378, 'Nama Tugas 52', 5, '2023-11-23', 'Proses', '2023-11-26', NULL),
(379, 'Nama Tugas 53', 6, '2023-12-19', 'Proses', '2023-12-22', NULL),
(380, 'Nama Tugas 54', 3, '2023-02-25', 'Proses', '2023-02-28', NULL),
(381, 'Nama Tugas 55', 5, '2023-03-07', 'Proses', '2023-03-10', NULL),
(382, 'Nama Tugas 56', 2, '2023-10-22', 'Proses', '2023-10-25', NULL),
(383, 'Nama Tugas 57', 3, '2023-12-13', 'Proses', '2023-12-16', NULL),
(384, 'Nama Tugas 58', 6, '2023-06-05', 'Proses', '2023-06-08', NULL),
(385, 'Nama Tugas 59', 6, '2023-08-10', 'Proses', '2023-08-13', NULL),
(386, 'Nama Tugas 60', 5, '2023-04-15', 'Proses', '2023-04-18', NULL),
(387, 'Nama Tugas 61', 4, '2023-11-22', 'Proses', '2023-11-25', NULL),
(388, 'Nama Tugas 62', 5, '2023-07-27', 'Proses', '2023-07-30', NULL),
(389, 'Nama Tugas 63', 3, '2023-09-18', 'Proses', '2023-09-21', NULL),
(390, 'Nama Tugas 64', 5, '2023-03-31', 'Proses', '2023-04-03', NULL),
(391, 'Nama Tugas 65', 5, '2023-03-19', 'Proses', '2023-03-22', NULL),
(392, 'Nama Tugas 66', 4, '2023-02-14', 'Proses', '2023-02-17', NULL),
(393, 'Nama Tugas 67', 6, '2023-12-14', 'Proses', '2023-12-17', NULL),
(394, 'Nama Tugas 68', 4, '2023-02-11', 'Proses', '2023-02-14', NULL),
(395, 'Nama Tugas 69', 4, '2023-04-03', 'Proses', '2023-04-06', NULL),
(396, 'Nama Tugas 70', 6, '2023-05-01', 'Proses', '2023-05-04', NULL),
(397, 'Nama Tugas 71', 5, '2023-02-05', 'Proses', '2023-02-08', NULL),
(398, 'Nama Tugas 72', 6, '2023-06-08', 'Proses', '2023-06-11', NULL),
(399, 'Nama Tugas 73', 6, '2023-08-16', 'Proses', '2023-08-19', NULL),
(400, 'Nama Tugas 74', 2, '2023-01-12', 'Proses', '2023-01-15', NULL),
(401, 'Nama Tugas 75', 2, '2023-10-12', 'Proses', '2023-10-15', NULL),
(402, 'Nama Tugas 76', 2, '2023-08-01', 'Proses', '2023-08-04', NULL),
(403, 'Nama Tugas 77', 5, '2023-01-28', 'Proses', '2023-01-31', NULL),
(404, 'Nama Tugas 78', 4, '2023-09-24', 'Proses', '2023-09-27', NULL),
(405, 'Nama Tugas 79', 6, '2023-11-26', 'Proses', '2023-11-29', NULL),
(406, 'Nama Tugas 80', 2, '2023-08-07', 'Proses', '2023-08-10', NULL),
(407, 'Nama Tugas 81', 3, '2023-10-26', 'Proses', '2023-10-29', NULL),
(408, 'Nama Tugas 82', 4, '2023-04-19', 'Proses', '2023-04-22', NULL),
(409, 'Nama Tugas 83', 2, '2023-05-28', 'Proses', '2023-05-31', NULL),
(410, 'Nama Tugas 84', 4, '2023-07-01', 'Proses', '2023-07-04', NULL),
(411, 'Nama Tugas 85', 5, '2023-04-21', 'Proses', '2023-04-24', NULL),
(412, 'Nama Tugas 86', 6, '2023-06-02', 'Proses', '2023-06-05', NULL),
(413, 'Nama Tugas 87', 5, '2023-07-14', 'Proses', '2023-07-17', NULL),
(414, 'Nama Tugas 88', 6, '2023-10-05', 'Proses', '2023-10-08', NULL),
(415, 'Nama Tugas 89', 2, '2023-01-17', 'Proses', '2023-01-20', NULL),
(416, 'Nama Tugas 90', 3, '2023-09-15', 'Proses', '2023-09-18', NULL),
(417, 'Nama Tugas 91', 5, '2023-05-07', 'Proses', '2023-05-10', NULL),
(418, 'Nama Tugas 92', 3, '2023-02-13', 'Proses', '2023-02-16', NULL),
(419, 'Nama Tugas 93', 4, '2023-03-01', 'Proses', '2023-03-04', NULL),
(420, 'Nama Tugas 94', 2, '2023-08-23', 'Proses', '2023-08-26', NULL),
(421, 'Nama Tugas 95', 3, '2023-11-30', 'Proses', '2023-12-03', NULL),
(422, 'Nama Tugas 96', 2, '2023-05-15', 'Proses', '2023-05-18', NULL),
(423, 'Nama Tugas 97', 6, '2023-04-02', 'Proses', '2023-04-05', NULL),
(424, 'Nama Tugas 98', 3, '2023-10-14', 'Proses', '2023-10-17', NULL),
(425, 'Nama Tugas 99', 4, '2023-06-02', 'Proses', '2023-06-05', NULL),
(426, 'Nama Tugas 100', 2, '2023-07-28', 'Proses', '2023-07-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `jabatan_id`, `email`, `password`) VALUES
(1, 'Mello', 1, 'mello@gmail.com', 'mello'),
(2, 'Fathi Melondre', 1, 'fathi@admin', 'admin');

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
  MODIFY `presensi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

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
