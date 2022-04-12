-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 08:16 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makemytrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `h_id` varchar(20) DEFAULT NULL,
  `id` varchar(15) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `cost` int(9) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `mobile` int(12) DEFAULT NULL,
  `guest` int(10) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`h_id`, `id`, `name`, `location`, `detail`, `cost`, `email`, `mobile`, `guest`, `payment_mode`, `check_in`, `check_out`) VALUES
('15', 'vaibhav', 'Vaibhav Nagpal', 'Bangalore', 'Golden Tree Premier Hotel', 4500, 'arpitgyo@gmail.com', 2147483647, 2, 'Visa', '2018-11-01', '2018-11-03'),
('10', 'vaibhav', 'Vaibhav Nagpal', 'Bangalore', 'Royal Place Hotel ', 2500, 'avinavgupta05@gmail.com', 2147483647, 2, 'Net-Banking', '2018-11-01', '2018-11-02'),
('14', 'avinavgupta', 'Arvind Gupta', 'Bangalore', 'Golden Hotel', 7000, 'avinavgupta05@gmail.com', 2147483647, 2, 'Net-Banking', '2018-11-01', '2018-11-02'),
('7', 'pari1', 'Paritosh Yadav', 'Jaipur', 'Surya Classic Hotel ', 6500, 'yadavparitosh21@gmail.com', 2147483647, 2, 'Visa', '2018-11-01', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `f_id` varchar(7) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `depart` varchar(30) NOT NULL,
  `depart_time` time NOT NULL,
  `arrival` varchar(30) NOT NULL,
  `arrival_time` time NOT NULL,
  `duration` time NOT NULL,
  `price` int(6) NOT NULL,
  `route` varchar(20) DEFAULT NULL,
  `dat` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`f_id`, `f_name`, `depart`, `depart_time`, `arrival`, `arrival_time`, `duration`, `price`, `route`, `dat`) VALUES
('6E-606', 'IndiGo', 'jaipur', '14:05:00', 'Mumbai', '16:40:00', '02:35:00', 4950, 'Non-Stop', 1),
('6E-569', 'IndiGo', 'Delhi', '06:00:00', 'chennai', '11:00:00', '14:15:00', 5129, '1-Stop', 3),
('6E-859', 'IndiGo', 'jaipur', '06:00:00', 'chennai', '11:00:00', '05:00:00', 5120, '1-Stop', 3),
('6E-394', 'IndiGo', 'jaipur', '17:15:00', 'chennai', '23:10:00', '05:55:00', 5327, '1-Stop', 3),
('9W-2256', 'Jet Airways', 'jaipur', '19:45:00', 'chennai', '11:00:00', '15:15:00', 5434, '1-Stop', 1),
('6E-459', 'IndiGo', 'jaipur', '17:15:00', 'chennai', '23:10:00', '05:55:00', 5327, 'Non-Stop', 4),
('6E-151', 'IndiGo', 'jaipur', '06:10:00', 'chennai', '11:10:00', '05:00:00', 5437, 'Non-Stop', 3),
('A1-9644', 'Air India', 'jaipur', '19:15:00', 'chennai', '22:10:00', '02:50:00', 5471, 'Non-Stop', 4),
('6E-311', 'IndiGo', 'jaipur', '06:00:00', 'chennai', '10:20:00', '04:20:00', 5471, '1-Stop', 2),
('A1-946', 'Air India', 'jaipur', '01:15:00', 'chennai', '04:15:00', '03:00:00', 6000, 'Non-Stop', 3),
('6E-238', 'IndiGo', 'jaipur', '08:10:00', 'chennai', '12:30:00', '04:20:00', 5814, '1-Stop', 2),
('sg-842', 'Spicejet', 'jaipur', '15:20:00', 'Mumbai', '18:30:00', '03:10:00', 6295, 'Non-Stop', 2),
('sg-832', 'Spicejet', 'jaipur', '15:20:00', 'chennai', '18:30:00', '03:10:00', 7000, 'Non-Stop', 2),
('9W-2353', 'Jet Airways', 'jaipur', '10:55:00', 'chennai', '10:00:00', '23:05:00', 6442, '1-Stop', 2),
('A1-492', 'Air India', 'jaipur', '13:00:00', 'chennai', '16:30:00', '03:30:00', 12527, 'Non-Stop', 2),
('SG-888', 'Spicejet', 'jaipur', '04:00:00', 'chennai', '07:30:00', '03:30:00', 2500, 'Non-Stop', 4),
('9W-2711', 'Jet Airways', 'jaipur', '10:00:00', 'chennai', '20:00:00', '10:00:00', 6442, '1-Stop', 4),
('A1-557', 'Air India', 'jaipur', '13:00:00', 'chennai', '16:30:00', '03:30:00', 10756, 'Non-Stop', 5),
('6E-152', 'IndiGo', 'jaipur', '06:10:00', 'chennai', '11:10:00', '05:00:00', 7889, 'Non-Stop', 5),
('A1-989', 'Air India', 'jaipur', '01:15:00', 'Mumbai', '04:15:00', '03:00:00', 9982, 'Non-Stop', 5),
('6E-150', 'IndiGo', 'jaipur', '06:10:00', 'Mumbai', '11:10:00', '05:15:00', 4800, 'Non-Stop', 2),
('6E-154', 'IndiGo', 'jaipur', '06:10:00', 'Mumbai', '11:10:00', '05:15:00', 4800, 'Non-Stop', 2),
('6E-144', 'IndiGo', 'jaipur', '06:10:00', 'chennai', '11:10:00', '05:15:00', 4800, 'Non-Stop', 5),
('9W-0257', 'Jet Airways', 'jaipur', '19:45:00', 'chennai', '11:00:00', '15:15:00', 9859, '1-Stop', 4),
('6E-601', 'IndiGo', 'jaipur', '06:00:00', 'chennai', '11:15:00', '05:15:00', 4897, 'Non-Stop', 5),
('A1-777', 'Air India', 'jaipur', '13:15:00', 'chennai', '22:10:00', '09:05:00', 7471, 'Non-Stop', 5),
('6E-140', 'IndiGo', 'jaipur', '06:10:00', 'Mumbai', '11:10:00', '05:15:00', 4800, 'Non-Stop', 5),
('7E-124', 'IndiGo', 'jaipur', '06:10:00', 'Mumbai', '11:10:00', '05:15:00', 4800, 'Non-Stop', 5),
('9W-259', 'Jet Airways', 'jaipur', '19:45:00', 'Mumbai', '11:00:00', '15:15:00', 9859, '1-Stop', 5),
('6E-443', 'IndiGo', 'jaipur', '06:10:00', 'Mumbai', '11:10:00', '05:15:00', 4800, 'Non-Stop', 5),
('6E-106', 'IndiGo', 'jaipur', '14:05:00', 'Mumbai', '16:40:00', '02:35:00', 4000, 'Non-Stop', 6),
('9W-1156', 'Jet Airways', 'jaipur', '19:45:00', 'chennai', '11:00:00', '15:15:00', 5434, '1-Stop', 6),
('SG-222', 'Spicejet', 'jaipur', '15:20:00', 'chennai', '18:30:00', '03:10:00', 2555, 'Non-Stop', 6),
('6E-130', 'IndiGo', 'jaipur', '06:10:00', 'chennai', '11:10:00', '05:15:00', 4850, 'Non-Stop', 6),
('6E-254', 'IndiGo', 'jaipur', '06:10:00', 'chennai', '11:10:00', '05:15:00', 7000, 'Non-Stop', 6),
('6E-331', 'IndiGo', 'jaipur', '06:00:00', 'Mumbai', '10:20:00', '04:20:00', 5471, '1-Stop', 6),
('1E-106', 'IndiGo', 'jaipur', '14:05:00', 'chennai', '16:40:00', '02:35:00', 4000, 'Non-Stop', 6),
('2E-112', 'IndiGo', 'jaipur', '14:05:00', 'Mumbai', '16:40:00', '02:35:00', 4000, 'Non-Stop', 6),
('9W-111', 'Jet Airways', 'jaipur', '19:45:00', 'Mumbai', '11:00:00', '15:15:00', 5434, '1-Stop', 6),
('2E-2', 'IndiGo', 'jaipur', '14:05:00', 'Mumbai', '16:40:00', '02:35:00', 4000, 'Non-Stop', 6),
('6E-010', 'IndiGo', 'jaipur', '14:05:00', 'Mumbai', '16:40:00', '02:35:00', 4950, 'Non-Stop', 1),
('6E-013', 'IndiGo', 'jaipur', '06:00:00', 'Mumbai', '11:00:00', '14:15:00', 5129, '1-Stop', 1),
('6E-809', 'IndiGo', 'jaipur', '06:00:00', 'Mumbai', '11:00:00', '05:00:00', 5120, '1-Stop', 1),
('6E-309', 'IndiGo', 'jaipur', '17:15:00', 'Mumbai', '23:10:00', '05:55:00', 5327, '1-Stop', 1),
('6E-600', 'IndiGo', 'jaipur', '14:05:00', 'chennai', '16:40:00', '02:35:00', 4950, 'Non-Stop', 1),
('6E-399', 'IndiGo', 'jaipur', '17:15:00', 'chennai', '23:10:00', '05:55:00', 5327, '1-Stop', 1),
('6E-110', 'IndiGo', 'jaipur', '14:05:00', 'chennai', '16:40:00', '02:35:00', 4950, 'Non-Stop', 1),
('6E-003', 'IndiGo', 'jaipur', '06:00:00', 'chennai', '11:00:00', '14:15:00', 5129, '1-Stop', 1),
('sE-832', 'Spicejet', 'jaipur', '15:20:00', 'Mumbai', '18:30:00', '03:10:00', 7000, 'Non-Stop', 2),
('6E-434', 'IndiGo', 'jaipur', '06:00:00', 'Mumbai', '10:20:00', '04:20:00', 5471, '1-Stop', 2),
('6E-500', 'IndiGo', 'jaipur', '06:00:00', 'Mumbai', '11:00:00', '14:15:00', 5129, '1-Stop', 3),
('6E-554', 'IndiGo', 'jaipur', '06:00:00', 'Mumbai', '11:00:00', '05:00:00', 5120, '1-Stop', 3),
('5E-380', 'IndiGo', 'jaipur', '17:15:00', 'Mumbai', '23:10:00', '05:55:00', 5327, '1-Stop', 3),
('A2-996', 'Air India', 'jaipur', '01:15:00', 'Mumbai', '04:15:00', '03:00:00', 6000, 'Non-Stop', 3),
('6E-105', 'IndiGo', 'jaipur', '06:10:00', 'Mumbai', '11:10:00', '05:00:00', 5437, 'Non-Stop', 3);

-- --------------------------------------------------------

--
-- Table structure for table `flight_booking`
--

CREATE TABLE `flight_booking` (
  `id` varchar(15) DEFAULT NULL,
  `f_id` varchar(10) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `flight_name` varchar(15) DEFAULT NULL,
  `arrival` varchar(20) DEFAULT NULL,
  `arrival_time` varchar(10) DEFAULT NULL,
  `departure` varchar(20) DEFAULT NULL,
  `departure_time` varchar(20) DEFAULT NULL,
  `Charges` int(8) DEFAULT NULL,
  `date_booked` date DEFAULT NULL,
  `pay_mode` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight_booking`
--

INSERT INTO `flight_booking` (`id`, `f_id`, `name`, `email`, `flight_name`, `arrival`, `arrival_time`, `departure`, `departure_time`, `Charges`, `date_booked`, `pay_mode`) VALUES
('vaibhav', '9W-2256', 'Vaibhav Nagpal', 'avinavgupta05@gmail.com', 'Jet Airways', 'chennai', '11:00:00', 'jaipur', '19:45:00', 5434, '2019-03-01', 'Net banking'),
('vaibhav', '6E-600', 'Vaibhav Nagpal', 'avinavgupta05@gmail.com', 'IndiGo', 'chennai', '16:40:00', 'jaipur', '14:05:00', 4950, '2018-11-01', 'Net banking'),
('nsforever', '9W-2256', 'Nishant singh', 'nissac0701@gmail.com', 'Jet Airways', 'chennai', '11:00:00', 'jaipur', '19:45:00', 5434, '2018-11-01', 'Net banking'),
('avinavgupta', '6E-311', 'Arvind Gupta', 'avinavgupta05@gmail.com', 'IndiGo', 'chennai', '10:20:00', 'jaipur', '06:00:00', 5471, '2018-11-02', 'Net banking'),
('arpitgupta', '6E-394', 'Arpit Gupta', 'arpitgyo@gmail.com', 'IndiGo', 'chennai', '23:10:00', 'jaipur', '17:15:00', 5327, '2018-12-03', 'Net banking'),
('avinavgupta', '6E-151', 'Avinav Gupta', 'avinavgupta05@gmail.com', 'IndiGo', 'chennai', '11:10:00', 'jaipur', '06:10:00', 5437, '2018-11-03', 'Net banking'),
('avinavgup', '6E-311', 'Avinav Gupta', 'avinavgupta05@gmail.com', 'IndiGo', 'chennai', '10:20:00', 'jaipur', '06:00:00', 5471, '2018-09-02', 'Net banking');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(8) NOT NULL,
  `location` varchar(50) NOT NULL,
  `image` varchar(150) NOT NULL,
  `guest` int(5) NOT NULL,
  `Charges` int(6) NOT NULL,
  `detail` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `location`, `image`, `guest`, `Charges`, `detail`) VALUES
(1, 'Jaipur', 'Grand_Hyatt_Exterior.jpg', 2, 5500, 'Grand Hotel Near Railway Station'),
(2, 'Jaipur', 'hoteletq1015.jpg', 2, 3500, 'Red Fox Hotel '),
(3, 'Jaipur', 'hotel-interior-room0416.jpg', 2, 4550, 'Pride Plaza Hotel 1m form Central city'),
(4, 'Jaipur', 'interior-view.jpg', 2, 2500, 'Royal Palza'),
(5, 'Jaipur', 'maxresdefault.jpg', 2, 2550, 'Shanti Hotel'),
(6, 'Jaipur', 'Taj-Lands-End-RetailInAsia-1.jpg', 2, 4500, 'Country Inn'),
(7, 'Jaipur', 'TS_Hotel_King.jpg', 2, 6500, 'Surya Classic Hotel '),
(8, 'Jaipur', '6926_ho_00_p_2048x1536.jpg', 2, 9550, 'Welcome Hotel Dymar'),
(9, 'Jaipur', 'hotel.jpg', 2, 8850, 'Hyaat Place'),
(10, 'Bangalore', 'b.jpg', 2, 2500, 'Royal Place Hotel '),
(11, 'Bangalore', 'b2.jpg', 2, 4500, 'ANYA Hotel'),
(12, 'Bangalore', 'b3.jpg', 2, 5500, 'City INN'),
(13, 'Bangalore', 'b4.jpg', 2, 4500, 'Clarks Inn Pacific Hotel'),
(14, 'Bangalore', 'b5.jpg', 2, 7000, 'Golden Hotel'),
(15, 'Bangalore', 'b6.jpg', 2, 4500, 'Golden Tree Premier Hotel'),
(16, 'Bangalore', 'b7.jpg', 2, 6500, 'Roseate Hotel'),
(17, 'Bangalore', 'b8.jpg', 2, 7500, 'Inn'),
(18, 'Bangalore', 'b9.jpg', 2, 6000, 'Haze Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(30) DEFAULT NULL,
  `id` varchar(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `id`, `email`, `password`, `img`) VALUES
('Vaibhav Nagpal', 'vaibhav', 'vaibhav@gmail.com', 'VN', 'profile_pic.png'),
('Soumodeep Paul', 'sm21', 'soumodeep@gmail.com', 'hello', 'profile_pic.png'),
('Ayush jha', 'ayushjha1', 'ayush.jha2016@vitstudent.ac.in', 'ayush', NULL),
('Arnav Gupta', 'arnav1', 'arnav123@gmail.com', 'arnav1', 'profile_pic.png'),
('Arpit Gupta', 'arpitgupta', 'arpitgyo@gmail.com', 'asdfghjkl', NULL),
('Paritosh Yadav', 'pari1', 'yadavparitosh21@gmail.com', 'qawsed', NULL),
('Nishant singh', 'nsforever', 'nissac0701@gmail.com', 'asdfghjkl', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
