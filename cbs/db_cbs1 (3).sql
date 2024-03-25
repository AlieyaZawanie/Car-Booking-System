-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 06:59 PM
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
(65, '151515', 'ASS 432', '2023-01-07', '2023-01-28', '4200', 3),
(67, '020226780790', 'ABD 123 ', '2023-01-06', '2023-01-14', '960', 1),
(68, '020226780790', 'ASS 432', '2023-01-13', '2023-01-14', '200', 2),
(74, '141414', 'ABD 123', '2023-03-10', '2023-03-25', '1800', 3),
(75, '020226780790', 'ASS 432', '2023-02-04', '2023-02-09', '1000', 1),
(77, '020226780790', 'QJK 1231', '2023-02-04', '2023-03-11', '14000', 1),
(78, '020226780790', 'QJK 1231', '2023-02-17', '2023-06-23', '50383.333333333', 1),
(79, '020226780790', 'ABD 123', '2023-02-04', '2023-07-08', '18475', 1),
(80, '020226780790', 'ABD 123', '2023-02-11', '2023-08-04', '20875', 1),
(81, '020226780790', 'ASS 432', '2023-02-11', '2023-08-04', '34791.666666667', 1);

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
  `u_pwd` varchar(255) NOT NULL,
  `u_name` varchar(200) NOT NULL,
  `u_address` varchar(200) NOT NULL,
  `u_phone` varchar(15) NOT NULL,
  `u_lno` varchar(20) NOT NULL,
  `u_type` varchar(2) NOT NULL,
  `u_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`u_id`, `u_pwd`, `u_name`, `u_address`, `u_phone`, `u_lno`, `u_type`, `u_email`) VALUES
('012343129012', '$2y$10$6hjWCltfd9mKy0bGZ3Itme0S2PuQ4xbwSVvsvEKXfZqBW6hLTQwsm', 'mike mimi', 'Kuala Kangsar', '0168340978', 'Q213', '1', 'mike@gmail.com'),
('020226780790', '$2y$10$MRjloYsq7EXvP4jUgnHP6eYssI1Zjuen7oEGZy9vh5RUMHrp1aqRW', 'ALIEYA ZAWANIE BINTI A ZAINI', 'Lot 843, Persiaran Salak 2/1,\r\nRPTS Salak Baru,\r\n31050 Sg. Siput (U)', '0195530957', 'A456', '2', 'alyzwnie26@gmail.com'),
('02211', '$2y$10$V6oU2udJPT/R4cu5n.2pq.RPdwb72d8XTwk0vQLcYY6rwnEEh2jgW', 'yayahh', '12ko', '12367342', 'V672', '2', 'alyzwnie@gmail.com'),
('0345343242', '123456', 'kyunghee', 'kl', '123321', 'V665', '2', 'alyzwnie@gmail.com'),
('0452308901234', '$2y$10$3mme2APdWWqJ772B890JFuk56Po0xvxiozQAE3g03ovRcO7dfgZGq', 'zawanie', 'Ipoh,Perak', '12321654', 'a2317', '2', 'alieyazawanie@gmail.com'),
('0853329860356', '123456', 'Lily Lulu', 'Banting,Selangor', '0184580356', 'V990', '2', 'alyzwnie@gmail.com'),
('12332131', '$2y$10$SFVvm7bHJ2mCpwAXqwnkRu0WfLj/uEB7sSjsCMdeX4n0EZHawuGeW', 'ZAINI', 'Lot 843, Persiaran Salak 2/1,\r\nRPTS Salak Baru,\r\n31050 Sg. Siput (U)', '12313132', 'ASD132', '2', 'alyzwnie26@gmail.com'),
('1234321', '$2y$10$2BiReHpk0tZBy0xcaNxibe7KkQk50gxpuSZjNz8FbESBZ2vciuQ4W', 'kiko', 'Kangar', '123890541', '', '2', 'alyzwnie26@gmail.com'),
('123456', 'alie', '', 'newadd', '', 'g670', '2', 'alyzwnie26@gmail.com'),
('123456789098', '$2y$10$P18lb9oqybDz/fVGMb3oUOdu0tDFmNZVVoHY/kTha.T', 'wanie', 'kl', '12345678912', 'V88', '2', 'alyzwnie26@gmail.com'),
('141414', '$2y$10$ZHEXemR9eS7BuszwF0HYcut2LzqflYbbNde9QeRABh7sKCNayt/pu', 'alieyazawanieeeeeyeeee', '12312sadaa', '1231534534', 'V008123', '2', 'alyzwnie26@gmail.com'),
('150811', '$2y$10$GDvGQ5xzjLJU6RyfJyH7NOtr9jKPo.DyK7DYSyS6dJ/wazzQyJ.UO', 'Analuya', 'A12312', '12321564', 'A23111', '2', 'alyzwnie26@gmail.com'),
('151515', '$2y$10$gpxtoF.WvB1/YeckLDyy9eHg1FN7j.8qzHmYFMg9fG/Nm/QyAr.Nm', 'ana razali', 'asda1231', '12334567', 'A213', '2', 'alyzwnie26@gmail.com'),
('161616', '$2y$10$7n35q5rbva7Q1/PPbQy.besq5XxODGGGHRPbM8KZZoBQ8sajceAy6', 'askera', '123assa', '1233213212', 'Ana123', '2', 'alyzwnie26@gmail.com'),
('212121', '$2y$10$0t9JTbmEZr9kwcKGQzGOI.ajc47Ys2bXy3tA5hxs77nYyYZu8wRDy', 'alya', 'asda2131', '1231254541', 'assd1', '1', 'alyzwnie26@gmail.com'),
('224242', '$2y$10$BKU68qhV0VXk/3uhxFQUAO0kknqk6Ov0Z3RudcF1NhP1OYNdmKPuu', 'aweasd', '13asda', '12354123', 'A452', '2', 'alyzwnie26@gmail.com'),
('252525', '$2y$10$KKRuH5OUItLbjpAatHbWA.1/qqY1GNN09uubhoKLXBdHH880fVc66', 'ALIEYA ZAWANIE BINTI A ZAINI', 'Lot 843, Persiaran Salak 2/1,\r\nRPTS Salak Baru,\r\n31050 Sg. Siput (U)', '123131', '1321AA', '2', 'alyzwnie26@gmail.com'),
('256256', '$2y$10$T2GL9zNCDB8GAUmKXVYN.er9cWX9jGTxRfr7Y2S.F0njHk/uS6mjy', 'wanilah', 'Lot 843, Persiaran Salak 2/1,\r\nRPTS Salak Baru,\r\n31050 Sg. Siput (U)', '12331', 'C321', '2', 'wani@gamil'),
('970889091242', '$2y$10$uQo//Meq56WsbvhVYagtT.7km1Jwuvrun21ke3UDq54rl8x5/HXgm', 'Ana Aina', 'Johor Bahru', '0196678901', 'A2309', '1', 'Ana@gmail.com');

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
  `v_price` float NOT NULL,
  `v_image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_vehicle`
--

INSERT INTO `tb_vehicle` (`v_reg`, `v_type`, `v_model`, `v_year`, `v_price`, `v_image`) VALUES
('ABD 123', 'COUPE', 'PROTON SAGA', '2019', 120, 0x736167612e6a7067),
('ALJ 4433', 'SEDAN', 'X70', '2019', 300, 0x7837302e6a7067),
('ASH 7099', 'SPORT CAR', 'koenisegg', '2021', 500, 0x6b6f656e6967736567672e6a7067),
('ASS 432', 'LIFTBACK', 'PERODUA ALZA', '2019', 200, 0x616c7a612e6a7067),
('BKH 1202', '', 'XC40', '2022', 120, 0x584334302e6a7067),
('QJK 1231', 'COUPE', 'AMG GT4', '2022', 400, 0x323032322d4d657263656465732d414d472d47542d342d646f6f722d436f7570652d696e2d77686974652d7061726b65645f6f2e6a7067);

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
  MODIFY `b_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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
