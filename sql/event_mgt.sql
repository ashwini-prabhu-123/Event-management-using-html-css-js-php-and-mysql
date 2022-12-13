-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 05:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_mgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_date` date NOT NULL,
  `event_price` int(5) NOT NULL,
  `event_details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_date`, `event_price`, `event_details`) VALUES
(1, 'Invencia', '2022-12-01', 500, 'jhgajdgkjaldhlkahlkdhlkah'),
(2, 'meraki', '2022-12-08', 566, 'dadafagafga'),
(3, 'Under25Summit', '2022-12-23', 700, 'The Under 25 Summit is the world\'s leading youth f');

-- --------------------------------------------------------

--
-- Table structure for table `invencia`
--

CREATE TABLE `invencia` (
  `subev_id` int(10) NOT NULL,
  `subev_name` varchar(100) NOT NULL,
  `subev_details` varchar(100) NOT NULL,
  `subev_price` int(5) NOT NULL,
  `subev_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invencia`
--

INSERT INTO `invencia` (`subev_id`, `subev_name`, `subev_details`, `subev_price`, `subev_date`) VALUES
(1, 'BGMI', 'gotilla sumne game adu', 75, '2022-12-15'),
(2, 'Dance', 'sumne kuni', 20, '2022-12-16'),
(3, 'Singing', 'song adu', 50, '2022-12-10'),
(4, 'Treasure Hunt', 'en bekadru udku', 50, '2022-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `subev_reg`
--

CREATE TABLE `subev_reg` (
  `subev_reg_id` int(50) NOT NULL,
  `subev_reg_eventname` varchar(100) NOT NULL,
  `subev_name` varchar(100) NOT NULL,
  `subev_reg_uname` varchar(100) NOT NULL,
  `subev_reg_uemail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subev_reg`
--

INSERT INTO `subev_reg` (`subev_reg_id`, `subev_reg_eventname`, `subev_name`, `subev_reg_uname`, `subev_reg_uemail`) VALUES
(1, 'Invencia', 'BGMI', 'uname', 'abcd@gmail.com'),
(2, 'Invencia', 'Dance', 'abcd', 'abcd@gmail.com'),
(3, 'Invencia', 'Singing', 'abcd', 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pno` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pno`, `user_password`) VALUES
(0, 'chiranthsh', 'abcd@gmail.com', '986894698629472', 'abcd1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `invencia`
--
ALTER TABLE `invencia`
  ADD PRIMARY KEY (`subev_id`);

--
-- Indexes for table `subev_reg`
--
ALTER TABLE `subev_reg`
  ADD PRIMARY KEY (`subev_reg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invencia`
--
ALTER TABLE `invencia`
  MODIFY `subev_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subev_reg`
--
ALTER TABLE `subev_reg`
  MODIFY `subev_reg_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
