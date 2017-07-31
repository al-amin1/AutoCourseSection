-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2017 at 12:32 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_distribution`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cor_id` int(10) NOT NULL,
  `co_name` varchar(30) NOT NULL,
  `co_code` varchar(30) NOT NULL,
  `cradit` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cor_id`, `co_name`, `co_code`, `cradit`) VALUES
(1, 'Visual Programming', 'CSC 439', 3),
(2, 'Graphics', 'CSC 455', 3),
(3, 'OS', 'CSC 307', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` varchar(11) NOT NULL,
  `dept_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`) VALUES
('01', 'BCSE'),
('2', 'BSCE'),
('3', 'BSME'),
('4', 'CAAS');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `f_id` int(10) NOT NULL,
  `f_name` text NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_id`, `f_name`, `address`, `phone`) VALUES
(1, 'Md. Akmal', '12,Uttara', 1211),
(2, 'Rashedul Islam', 'Airport', 123456),
(3, 'Uttpol Kanti Das', 'Uttara', 12345),
(4, 'Saidul Islam', 'Tongi', 164565),
(5, 'Aminur Rashid', 'Motijhil', 13256);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_dept`
--

CREATE TABLE `faculty_dept` (
  `f_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_dept`
--

INSERT INTO `faculty_dept` (`f_id`, `dept_id`) VALUES
(1, 1),
(2, 1),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room_time`
--

CREATE TABLE `room_time` (
  `room_time_id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `day` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_time`
--

INSERT INTO `room_time` (`room_time_id`, `room_no`, `day`, `time`) VALUES
(1, 201, 'SunDay', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `room_time_course_section`
--

CREATE TABLE `room_time_course_section` (
  `room_time_id` int(11) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `co_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_time_course_section`
--

INSERT INTO `room_time_course_section` (`room_time_id`, `sec_id`, `co_id`, `dept_id`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sec_id` int(11) NOT NULL,
  `sec_name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sec_id`, `sec_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'EVE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '12345', 'admin@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cor_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `room_time`
--
ALTER TABLE `room_time`
  ADD PRIMARY KEY (`room_time_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sec_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
