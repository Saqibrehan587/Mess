-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 08:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj`
--
CREATE DATABASE IF NOT EXISTS `proj` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proj`;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `meal_name` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `meal_name`, `category`, `price`, `status`, `created_by`, `created_at`) VALUES
(1, 'dfd', 'breakfast', 213213, 'active', 'rehan', '2020-06-19 01:55:26'),
(2, 'hjkhjk', 'lunch', 213, 'active', 'rehan', '2020-06-19 01:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `std_name` varchar(150) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `roll_no` varchar(150) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `std_name`, `father_name`, `roll_no`, `mobile_no`, `dob`, `gender`, `cnic`, `status`, `created_by`, `created_at`) VALUES
(1, '111111111', '21321321', '123123123', '213213123', '2232-02-13', 'male', '2312312', 'inactive', 'rehan', '2020-06-18 00:37:41'),
(2, 'saqqq', 'sadsadsa', '1223', '+923126232587', '0222-12-22', 'female', '1232132132131', 'active', 'rehan', '2020-06-18 00:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `dob`, `gender`, `user_type`, `user_role`, `created_at`, `created_by`) VALUES
(1, 'Super', 'superadmin', 'superadmin@gmail.com', '123456', '2000-12-09', 'Male', 'superadmin', 'Administrator', '0000-00-00 00:00:00', ''),
(13, 'Kashif Ali', 'Adminasdsa', 'kashifsahil622@gmail.com', '', '0000-00-00', 'on', 'admin', 'sadsad', '2020-06-17 02:31:54', 'rehan'),
(14, 'dasdsa', 'Admin', 'asdsad@dsad', '', '0031-03-21', 'on', 'admin', 'sadsadsa', '2020-06-17 02:33:01', 'rehan'),
(15, 'saqib Rehan', 'Admin', 'saqibrehan587@gmail.com', '', '2323-12-31', 'male', 'admin', 'fsdfdsf', '2020-06-17 02:34:01', 'rehan'),
(16, 'asdsadsadsa', 'Admin', 'zzdsadss#@gdsf', '', '3231-12-21', 'male', 'admin', 'sadsadsa', '2020-06-17 02:35:01', 'rehan'),
(17, 'saqib rehan', '', '', '', '1322-02-12', 'male', 'admin', '', '2020-06-18 00:21:33', 'rehan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
