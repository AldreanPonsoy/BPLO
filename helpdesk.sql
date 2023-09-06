-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 08:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `fullname`, `email`, `create_datetime`, `user_type`) VALUES
(5, 'admin123', 'b59c67bf196a4758191e42f76670ceba', 'admin', 'test@admin.com', '2023-08-14 05:57:35', 'admin'),
(6, 'user123', 'b59c67bf196a4758191e42f76670ceba', 'Aldrean Ponsoy', 'aldreanponsoy11@gmail.com', '2023-08-14 08:09:17', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_temp`
--

CREATE TABLE `password_reset_temp` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_reset_temp`
--

INSERT INTO `password_reset_temp` (`email`, `key`, `expDate`) VALUES
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745cb19be27da', '2023-08-15 08:02:37'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745ee9f9d8432', '2023-08-15 08:03:04'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745060a0c7fe1', '2023-08-15 08:06:55'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745de5150b140', '2023-08-15 08:06:56'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745c34473bc4b', '2023-08-15 08:08:16'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f647456f0ea464b7', '2023-08-15 08:08:17'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f647458c15845514', '2023-08-15 08:08:18'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f647459dc4f7ab7b', '2023-08-15 08:08:18'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745f3c5da1e0b', '2023-08-15 08:08:18'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745c5f4579f3d', '2023-08-15 08:08:20'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745c2317a210a', '2023-08-15 08:08:20'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f64745abb781e7a3', '2023-08-15 08:08:22'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f6474592e579003e', '2023-08-15 08:08:23'),
('test@admin.com', '768e78024aa8fdb9b8fe87be86f6474587bfc945f6', '2023-08-15 08:08:41'),
('aldreanponsoy11@gmail.com', '768e78024aa8fdb9b8fe87be86f64745e04399c6cb', '2023-08-15 08:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `ticketing`
--

CREATE TABLE `ticketing` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `adminfix` varchar(100) NOT NULL,
  `sdate` date NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketing`
--

INSERT INTO `ticketing` (`id`, `username`, `issue`, `status`, `create_datetime`, `adminfix`, `sdate`, `feedback`, `photo`, `comment`) VALUES
(12, 'admin123', 'Software', 'Done', '2023-08-14 13:33:11', 'admin123', '2023-08-14', 'solve', 'pikachu.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketing`
--
ALTER TABLE `ticketing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticketing`
--
ALTER TABLE `ticketing`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
