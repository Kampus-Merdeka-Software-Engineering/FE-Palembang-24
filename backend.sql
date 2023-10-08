-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 06:40 PM
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
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `regis`
--

CREATE TABLE `regis` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regis`
--

INSERT INTO `regis` (`id`, `name`, `phone`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'badar', '123', 'badar1@gmail.com', '2134', '2023-10-01 23:40:59', '2023-10-02 04:41:15', NULL),
(13, 'badar', '231920', '32918@gmail.com', '213', '2023-10-02 20:30:43', '2023-10-02 20:30:43', NULL),
(14, 'wdqhj', '2913', 'wjhbad@gmail.com', 'wjdna2', '2023-10-02 20:42:15', '2023-10-02 20:42:15', NULL),
(15, 'badar', '0821301', 'badar12345@gmail.com', '98231391', '2023-10-04 19:28:59', '2023-10-04 19:28:59', NULL),
(16, 'grup24', '242424', '24@gmail.com', 'grup24', '2023-10-04 20:17:39', '2023-10-04 20:17:39', NULL),
(17, 'grup24', '242424', '24@gmail.com', 'grup24', '2023-10-04 20:20:05', '2023-10-04 20:20:05', NULL),
(18, 'grouprevou24', '291837192', 'grup24@gmail.com', '29184712', '2023-10-04 20:50:43', '2023-10-04 20:50:43', NULL),
(19, '2131', '21312', 'wbad@gmail.com', '2131', '2023-10-04 20:52:08', '2023-10-04 20:52:08', NULL),
(20, 'sabda', '081', 'sabda@gmail.com', 'sabda28', '2023-10-06 09:59:27', '2023-10-06 09:59:27', NULL),
(23, '24newrevou', '242424', '24newrevou@gmail.com', '2424', '2023-10-06 16:40:00', '2023-10-06 16:40:00', NULL),
(24, 'badar', '2231', 'dalam@gmail.com', '123', '2023-10-06 18:49:11', '2023-10-06 18:49:11', NULL),
(25, 'pitching', '123', 'pith@gmail.com', '123123', '2023-10-06 19:26:20', '2023-10-06 19:26:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resi_s`
--

CREATE TABLE `resi_s` (
  `id` int(15) NOT NULL,
  `resi` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resi_s`
--

INSERT INTO `resi_s` (`id`, `resi`, `penerima`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1010', 'badar', 'dalam perjalanan', '2023-10-02 02:41:06', '2023-10-02 02:41:06', NULL),
(2, '1011', 'bopak', 'diterima', '2023-10-02 02:43:07', '2023-10-02 02:43:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tarifs`
--

CREATE TABLE `tarifs` (
  `id` int(15) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `ck_tarif` varchar(100) NOT NULL,
  `su_tarif` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tarifs`
--

INSERT INTO `tarifs` (`id`, `asal`, `tujuan`, `ck_tarif`, `su_tarif`, `created_at`, `updated_at`) VALUES
(1, 'JAKARTA', 'PALEMBANG', '75000', '15000', '2023-10-06 11:26:17', '2023-10-06 16:26:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regis`
--
ALTER TABLE `regis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resi_s`
--
ALTER TABLE `resi_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regis`
--
ALTER TABLE `regis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `resi_s`
--
ALTER TABLE `resi_s`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
