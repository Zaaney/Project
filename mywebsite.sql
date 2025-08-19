-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 02:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `computerlist`
--

CREATE TABLE `computerlist` (
  `id` int(11) NOT NULL,
  `computer_name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `processor` varchar(255) NOT NULL,
  `operating_system` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `screen` varchar(255) NOT NULL,
  `graphics` varchar(255) NOT NULL,
  `keyboard` varchar(255) NOT NULL,
  `mouse` varchar(255) NOT NULL,
  `headphone` varchar(255) NOT NULL,
  `features` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `computerlist`
--

INSERT INTO `computerlist` (`id`, `computer_name`, `brand`, `processor`, `operating_system`, `ram`, `storage`, `screen`, `graphics`, `keyboard`, `mouse`, `headphone`, `features`, `created_at`, `image`) VALUES
(5, 'adf', 'asfd', 'asfd', 'asfd', 'asdf', 'sadf', 'sadf', 'asdf', 'sadf', 'asdf', 'sdaf', 'Mic, Discord, Steam, Epic Games, Team Speak, Google Chrome, Firefox', '2025-08-18 07:13:58', '1755502748_WhatsApp Image 2025-08-13 at 10.37.39_1db0a4ad.jpg'),
(8, 'asd', 'sa', 's', 'asfd', 'asdf', 'sadf', 'sadf', 'asdf', 'asdf', 'asdf', 'sadf', 'Mic', '2025-08-18 07:20:11', NULL),
(11, 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 'Mic, Discord, Steam, Team Speak', '2025-08-18 07:28:11', '1755510017_WhatsApp Image 2025-08-13 at 10.37.39_1db0a4ad.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `deletedcomputers`
--

CREATE TABLE `deletedcomputers` (
  `id` int(11) NOT NULL,
  `computer_name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `processor` varchar(255) DEFAULT NULL,
  `operating_system` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `graphics` varchar(255) DEFAULT NULL,
  `keyboard` varchar(255) DEFAULT NULL,
  `mouse` varchar(255) DEFAULT NULL,
  `headphone` varchar(255) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deletedcomputers`
--

INSERT INTO `deletedcomputers` (`id`, `computer_name`, `brand`, `processor`, `operating_system`, `ram`, `storage`, `screen`, `graphics`, `keyboard`, `mouse`, `headphone`, `features`, `deleted_at`, `image`) VALUES
(7, 'as sa', 'sagd', 'sgd', 'sgd', 'sgd', 'sgd', 'sgd', 'sgd', 'sgd', 'sgd', 'sgd', 'Mic, Discord, Steam, Epic Games, Team Speak, Google Chrome, Firefox', '2025-08-18 07:23:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `computerlist`
--
ALTER TABLE `computerlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deletedcomputers`
--
ALTER TABLE `deletedcomputers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `computerlist`
--
ALTER TABLE `computerlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deletedcomputers`
--
ALTER TABLE `deletedcomputers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
