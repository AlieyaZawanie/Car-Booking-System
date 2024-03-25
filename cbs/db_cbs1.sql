-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 05:26 AM
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
-- Database: `db_cbs1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking`
--

CREATE TABLE `tb_booking` (
  `b_id` int(15) NOT NULL,
  `b_customer` varchar(100) NOT NULL,
  `b_vehicle` varchar(200) NOT NULL,
  `b_pickupdate` varchar(10) NOT NULL,
  `b_returndate` varchar(10) NOT NULL,
  `b_totalprice` longtext NOT NULL,
  `b_status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_booking`
--

INSERT INTO `tb_booking` (`b_id`, `b_customer`, `b_vehicle`, `b_pickupdate`, `b_returndate`, `b_totalprice`, `b_status`) VALUES
(2, '62622282', 'FA2222', '2022-11-23', '2022-11-24', '200', 2),
(3, '333', 'FA2222 ', '2023-01-27', '2023-01-28', '200', 3),
(5, '333', 'VGH 2195', '2022-11-23', '2022-12-03', '1500', 2),
(6, '333', 'VBH3441', '2022-11-26', '2022-12-08', '1440', 2),
(8, '333', 'FA2222', '2022-11-10', '2022-11-19', '1800', 2),
(9, '333', 'FA2222 ', '2022-11-12', '2022-11-15', '600', 4),
(10, '029876090647', 'FA2222', '2022-12-17', '2022-12-20', '600', 2),
(11, '0853329860356', 'VGH 2195', '2022-12-30', '2023-01-02', '450', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `s_id` int(5) NOT NULL,
  `s_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`s_id`, `s_desc`) VALUES
(1, 'Received'),
(2, 'Approved'),
(3, 'Rejected'),
(4, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `u_id` varchar(15) NOT NULL,
  `u_pwd` varchar(50) NOT NULL,
  `u_name` varchar(200) NOT NULL,
  `u_address` varchar(200) NOT NULL,
  `u_phone` varchar(15) NOT NULL,
  `u_lno` varchar(20) NOT NULL,
  `u_type` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`u_id`, `u_pwd`, `u_name`, `u_address`, `u_phone`, `u_lno`, `u_type`) VALUES
('0202260678', '123456', 'Alieya Zawanie', 'Kuala Kangsar', '0195530656', 'B0012', '1'),
('021003010144', 'alya2131', 'ALYA DAMIA BINTI HUZAIMY', 'jscdcnkunke', '0125254205', 'B3333333', '1'),
('029876090647', '123456', 'Zawiyah Zawanie', 'Kuala Lumpur', '0168340978', 'B008', '2'),
('0853329860356', '123456', 'Lily Lulu', 'Banting,Selangor', '0184580356', 'V990', '2'),
('333', '33333333', '33333', '333', '33333333333', '333333333', '2'),
('62622282', '222222', 'LEE  Min ho', 'jscdcnkunke', '0125254205', 'B3333333', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertype`
--

CREATE TABLE `tb_usertype` (
  `ut_id` varchar(15) NOT NULL,
  `ut_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_usertype`
--

INSERT INTO `tb_usertype` (`ut_id`, `ut_desc`) VALUES
('1', 'Admin'),
('2', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vehicle`
--

CREATE TABLE `tb_vehicle` (
  `v_reg` varchar(50) NOT NULL,
  `v_type` varchar(50) NOT NULL,
  `v_model` varchar(50) NOT NULL,
  `v_year` varchar(5) NOT NULL,
  `v_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_vehicle`
--

INSERT INTO `tb_vehicle` (`v_reg`, `v_type`, `v_model`, `v_year`, `v_price`) VALUES
('FA2222', 'SUV', 'Proton X70', '2022', 200),
('SMG 5542', 'MPV', 'Vellfire', '2021', 300),
('VBH3441', 'SUV', 'Perodua Alza', '2020', 120),
('VGH 2195', 'Sedan', 'Honda City', '2022', 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `b_customer` (`b_customer`),
  ADD KEY `b_vehicle` (`b_vehicle`),
  ADD KEY `b_status` (`b_status`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `u_type` (`u_type`);

--
-- Indexes for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  ADD PRIMARY KEY (`ut_id`);

--
-- Indexes for table `tb_vehicle`
--
ALTER TABLE `tb_vehicle`
  ADD PRIMARY KEY (`v_reg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_booking`
--
ALTER TABLE `tb_booking`
  MODIFY `b_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD CONSTRAINT `tb_booking_ibfk_1` FOREIGN KEY (`b_customer`) REFERENCES `tb_user` (`u_id`),
  ADD CONSTRAINT `tb_booking_ibfk_2` FOREIGN KEY (`b_vehicle`) REFERENCES `tb_vehicle` (`v_reg`),
  ADD CONSTRAINT `tb_booking_ibfk_3` FOREIGN KEY (`b_status`) REFERENCES `tb_status` (`s_id`);

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`u_type`) REFERENCES `tb_usertype` (`ut_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
