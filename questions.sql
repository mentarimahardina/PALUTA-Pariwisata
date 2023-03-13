-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 09:51 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `read` int(11) NOT NULL DEFAULT 1,
  `accept` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `type`, `nik`, `fullname`, `email`, `message`, `ip_address`, `created_at`, `read`, `accept`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(2, 'pesan', '23456789', 'tari', 'coba@gmail.com', 'pesan pertama', '192.168.0.1', '2023-01-03 10:56:41', 0, 0, '2023-01-04 17:39:46', NULL, NULL, 0, 0, 0, 0, 'false'),
(4, 'pesan', '-', 'tari', 'coba@gmail.com', 'pertamalagi', '192.168.0.1', '2023-01-04 11:19:11', 0, 0, '2023-01-04 17:19:11', NULL, NULL, 0, 0, 0, 0, 'false'),
(5, 'pesan', '-', 'tari', 'coba@gmail.com', 'pertamalagi', '192.168.0.2', '2023-01-04 11:19:15', 0, 0, '2023-01-04 17:19:15', NULL, NULL, 0, 0, 0, 0, 'false'),
(6, 'pesan', '234567890', 'taru', 'coba@gmail.com', 'satu saja', '192.168.0.4', '2023-01-04 11:51:24', 0, 0, '2023-01-04 17:51:24', NULL, NULL, 0, 0, 0, 0, 'false'),
(7, 'pesan', '6171026001960006', 'tari', 'coba@gmail.com', 'gagal aja deh, besok lagi', '::1', '2023-01-04 11:51:47', 0, 0, '2023-01-04 17:51:47', NULL, NULL, 0, 1, 0, 0, 'false'),
(8, 'pesan', '2345678787888989', 'tdrfyguh', 'coba@gmail.com', 'yui', '::1', '2023-01-04 11:52:26', 0, 0, '2023-01-04 17:52:26', NULL, NULL, 0, 1, 0, 0, 'false'),
(9, 'pesan', '2345678987656789', 'tari', 'a@gmail.com', 'sadasdsads', '::1', '2023-01-04 11:53:34', 0, 0, '2023-01-04 17:53:34', NULL, NULL, 0, 1, 0, 0, 'false'),
(10, 'pesan', '2345678787888989', 'wretyu', 'a@gmail.com', 'fghjkl', '::1', '2023-01-04 11:56:15', 0, 0, '2023-01-04 17:56:15', NULL, NULL, 1, 1, 0, 0, 'false'),
(11, 'pesan', '-', 'tari', 'coba@gmail.com', 'pertamalagi', '::1', '2023-01-04 11:57:33', 0, 0, '2023-01-04 17:57:33', NULL, NULL, 1, 1, 0, 0, 'false'),
(12, 'pesan', '2345678999999999', 'test', 'm@gmail.com', 'assaasd', '::1', '2023-01-04 12:13:05', 0, 0, '2023-01-04 18:13:05', NULL, NULL, 0, 1, 0, 0, 'false'),
(13, 'pesan', '2345678888887656', 'tet', 'm@gmail.com', 'gak tau mau chat apa', '::1', '2023-01-11 11:41:24', 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
