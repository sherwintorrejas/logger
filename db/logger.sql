-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 03:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logger`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_books`
--

CREATE TABLE `tbl_books` (
  `ISBN` int(20) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `b_author` varchar(100) NOT NULL,
  `b_quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_books`
--

INSERT INTO `tbl_books` (`ISBN`, `b_name`, `b_author`, `b_quantity`) VALUES
(1, 'cress', 'hii', 5),
(2, 'crt1', 'resd', 12),
(6, 'dsadasd', 'adsada', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `l_id` int(50) NOT NULL,
  `st_id` int(50) NOT NULL,
  `ISBN` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`l_id`, `st_id`, `ISBN`) VALUES
(1, 54564, 1),
(2, 12345440, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `st_id` int(10) NOT NULL,
  `st_name` varchar(50) NOT NULL,
  `st_address` varchar(100) NOT NULL,
  `st_contact` varchar(20) NOT NULL,
  `st_gender` varchar(10) NOT NULL,
  `st_in` varchar(10) NOT NULL,
  `st_out` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`st_id`, `st_name`, `st_address`, `st_contact`, `st_gender`, `st_in`, `st_out`) VALUES
(54564, 'Creshell Mae Albiso', 'Brgy. Bairan City of Naga, Cebu', '097525646651', 'Female', '12:30 Pm', '3:30 Pm'),
(12345440, 'NIEL', 'SITIO.SAMBAG', '0975268206', 'Male', '9:30 AM  ', '10:30PM '),
(12345442, 'Rico Requinto', 'Naga', '09356177614', 'Male', '12', '13 ');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int(11) NOT NULL,
  `U_fname` varchar(50) NOT NULL,
  `U_lname` varchar(50) NOT NULL,
  `U_address` varchar(100) NOT NULL,
  `U_username` varchar(50) NOT NULL,
  `U_gender` varchar(50) NOT NULL,
  `U_img` varchar(500) NOT NULL,
  `U_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `U_fname`, `U_lname`, `U_address`, `U_username`, `U_gender`, `U_img`, `U_pass`) VALUES
(60, 'a', 'a', 'a', 'a', 'Male', 'Pepsi-Logo-1965.png', '$2a$10$TDCIzp7jwqbmMF54oj3.2.epi6qipD0SFp/puGS.fsz272/8BOC3W'),
(63, 's', 's', 's', 's', 'female', '1.jpg', '$2a$10$SfIJBwOkdOFwqaOfdOf3m.jk90toojfqSXYxyXh./g2qNa0fCFOte'),
(64, 'f', 'f', 'f', 'f', 'female', '4.jpg', '$2a$10$YgtVFE94aLcw4L1zXdMP9uwmYwhAWOWpFSVbpyFyF12wdcPrU7Dna'),
(65, 'Rico', 'Requinto', 'Minglanilla', 'rico', 'Male', 'Screenshot (1).png', '$2a$10$ZVnaxyiNACgkvcHWrDhjtu1FLEw.H..pXjA7C7/feMBqJOGiLq1wO'),
(67, 'ana', 'ana', 'ana', 'ana', 'female', '12.png', '$2a$10$q0hDsA1qLm.xBtYFAWtK8ejKX6smpvdZa.77Sxe316gFXNk613RY2'),
(68, 'Michael John', 'Bustamante', 'Linao-Lipata Minglanilla, Cebu', 'Mike', 'Male', '3.jpg', '$2a$10$q3BW9bKOdl0esp530IliBuM9GRKqvZbukfEkQ01tz8E/JCiqc0502');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_books`
--
ALTER TABLE `tbl_books`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `st_id` (`st_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_books`
--
ALTER TABLE `tbl_books`
  MODIFY `ISBN` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `l_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `st_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345452;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD CONSTRAINT `tbl_logs_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `tbl_books` (`ISBN`),
  ADD CONSTRAINT `tbl_logs_ibfk_2` FOREIGN KEY (`st_id`) REFERENCES `tbl_student` (`st_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
