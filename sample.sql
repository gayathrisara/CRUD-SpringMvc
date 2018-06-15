-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2018 at 11:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `employ`
--

CREATE TABLE `employ` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employ`
--

INSERT INTO `employ` (`id`, `firstName`, `lastName`) VALUES
(1001, 'madhu', 'mathi'),
(1002, 'mathi', 'madhu');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `rno` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(12) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '1',
  `createAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `rno`, `name`, `dob`, `gender`, `mobile`, `status`, `createAt`) VALUES
(1, '14BCM018', 'Gayathri', '1997-06-24', 'Female', 9629332436, 1, '2018-05-10 09:22:40'),
(2, '14BCC02', 'Abdul', '1996-11-24', 'Male', 8903893243, 1, '2018-05-10 09:30:37'),
(3, '13BVC25', 'gayu', '2018-05-18', 'Female', 8989898989, 1, '2018-05-10 10:20:29'),
(4, '14BCD55', 'KUMAR', '2018-05-12', 'Male', 8528526666, 1, '2018-05-10 10:32:30'),
(5, '15BSC023', 'Marudhu', '1996-10-21', 'Male', 8238554127, 1, '2018-05-28 07:05:38'),
(6, '24BCH028', 'Guru', '1996-05-05', 'Male', 8989898989, 1, '2018-05-28 07:32:17'),
(7, '11MCA021', 'Veera', '1993-03-15', 'Male', 8787556625, 1, '2018-06-14 10:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `rno` varchar(15) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `address` varchar(35) NOT NULL,
  `mblno` bigint(10) NOT NULL,
  `mark` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `createAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `rno`, `uname`, `address`, `mblno`, `mark`, `status`, `createAt`) VALUES
(1, '14BCM018', 'Gayathri', 'Coimbatore', 9629332436, 98, 0, '2018-05-30 10:21:06'),
(2, '14BCC023', 'Srimathi', 'Coimbatore', 8903893243, 89, 1, '2018-05-31 04:37:40'),
(3, '15BSC052', 'Vijay', 'Chennai', 9665662121, 85, 1, '2018-05-31 05:03:34'),
(4, '14BCD055', 'Vimala', 'Coimbatore', 8885656222, 81, 1, '2018-05-31 05:17:57'),
(5, '16BCM018', 'Akhil', 'Palani', 9000090000, 90, 1, '2018-05-31 06:51:40'),
(6, '17LMCA08', 'Sara', 'Coimbatore', 9994693243, 87, 1, '2018-05-31 10:28:14'),
(7, '17MCA02', 'Vicky', 'Pollachi', 7878554201, 83, 1, '2018-06-01 05:20:35'),
(8, '17MCA03', 'Aravid', 'Palani', 9696969696, 90, 1, '2018-06-01 07:16:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employ`
--
ALTER TABLE `employ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
