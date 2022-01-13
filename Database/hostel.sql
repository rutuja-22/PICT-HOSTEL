-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Jan 13, 2022 at 01:56 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--
use hostel;
CREATE TABLE `bookings` (
  `id` int(25) NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `regid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `details` varchar(250) NOT NULL,
  `booked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel_req` varchar(255) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `ref_id`, `regid`, `name`, `city`, `room_no`, `status`, `details`, `booked_at`, `cancel_req`) VALUES
(72, 55, 'C2K12345678', 'Jagruti Kad', 'Pune', '101A', 'Occupied', 'It is having indoor toilet & contain AC', '2022-01-04 15:15:36', 'No'),
(73, NULL, '', '', '', '101B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:32:28', 'No'),
(75, NULL, '', '', '', '102A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:38:24', 'No'),
(76, NULL, '', '', '', '102B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:38:58', 'No'),
(77, NULL, '', '', '', '103A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:49:02', 'No'),
(78, NULL, '', '', '', '103B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:49:08', 'No'),
(79, NULL, '', '', '', '104A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:49:13', 'No'),
(80, NULL, '', '', '', '104B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:49:20', 'No'),
(81, NULL, '', '', '', '105A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:49:38', 'No'),
(82, NULL, '', '', '', '105B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:49:44', 'No'),
(83, NULL, '', '', '', '106A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:50:25', 'No'),
(84, NULL, '', '', '', '106B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:50:31', 'No'),
(85, NULL, '', '', '', '107A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:50:36', 'No'),
(86, NULL, '', '', '', '107B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:50:42', 'No'),
(87, NULL, '', '', '', '108A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:50:47', 'No'),
(88, NULL, '', '', '', '108B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:50:55', 'No'),
(89, NULL, '', '', '', '109A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:51:01', 'No'),
(90, NULL, '', '', '', '109B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:51:06', 'No'),
(91, NULL, '', '', '', '110A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:51:12', 'No'),
(92, NULL, '', '', '', '110B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:51:23', 'No'),
(93, NULL, '', '', '', '111A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:53:48', 'No'),
(94, NULL, '', '', '', '111B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:53:57', 'No'),
(95, NULL, '', '', '', '112A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-04 15:54:06', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `bookings2`
--

CREATE TABLE `bookings2` (
  `id` int(25) NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `regid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `details` varchar(400) NOT NULL,
  `booked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel_req` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings2`
--

INSERT INTO `bookings2` (`id`, `ref_id`, `regid`, `name`, `city`, `room_no`, `status`, `details`, `booked_at`, `cancel_req`) VALUES
(26, NULL, '', '', '', '101A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:37:47', 'No'),
(27, NULL, '', '', '', '101B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:08', 'No'),
(28, NULL, '', '', '', '102A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:13', 'No'),
(29, NULL, '', '', '', '102B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:18', 'No'),
(30, NULL, '', '', '', '103A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:23', 'No'),
(31, NULL, '', '', '', '103B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:28', 'No'),
(32, NULL, '', '', '', '104A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:35', 'No'),
(33, NULL, '', '', '', '104B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:40', 'No'),
(34, NULL, '', '', '', '105A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:45', 'No'),
(35, NULL, '', '', '', '105B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:38:51', 'No'),
(36, NULL, '', '', '', '106A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:39:12', 'No'),
(37, NULL, '', '', '', '106B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:39:17', 'No'),
(38, NULL, '', '', '', '107A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:39:24', 'No'),
(39, NULL, '', '', '', '107B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:39:40', 'No'),
(40, NULL, '', '', '', '108A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:39:51', 'No'),
(41, NULL, '', '', '', '108B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:39:59', 'No'),
(42, NULL, '', '', '', '109A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:40:05', 'No'),
(43, NULL, '', '', '', '109B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:40:09', 'No'),
(44, NULL, '', '', '', '110A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:40:18', 'No'),
(45, NULL, '', '', '', '110B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:40:25', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `leave_details`
--

CREATE TABLE `leave_details` (
  `sr_no` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `studname` varchar(250) NOT NULL,
  `outime` datetime NOT NULL,
  `intime` datetime NOT NULL,
  `reason` mediumtext NOT NULL,
  `mess` varchar(500) NOT NULL,
  `status` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_details`
--

INSERT INTO `leave_details` (`sr_no`, `id`, `studname`, `outime`, `intime`, `reason`, `mess`, `status`, `created_at`) VALUES
(20, 57, 'Dhananjay Thosar', '2022-01-14 15:23:00', '2022-01-14 15:23:00', 'Wedding', 'lunch before leaving,lunch after arriving,', 'Approved', '2022-01-13 15:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(25) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`, `category`) VALUES
(1, 'idli sambhar', 'breakfast'),
(2, 'Misal', 'Lunch'),
(3, 'Paneer Tikka', 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`) VALUES
(1, 'Fees', 'Pay Fees ....'),
(3, 'Exam Form', 'Deadline is 13th of dec'),
(4, 'VACATIONS', 'FROM 10 JAN O 15 FEB');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` int(11) NOT NULL,
  `pincode` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`id`, `pincode`) VALUES
(1, '111045'),
(2, '410038'),
(3, '411000'),
(4, '411001'),
(5, '411002'),
(6, '411003'),
(7, '411004'),
(8, '411005'),
(9, '411006'),
(10, '411007'),
(11, '411008'),
(12, '411009'),
(13, '411011'),
(14, '411012'),
(15, '411013'),
(16, '411014'),
(17, '411015'),
(18, '411016'),
(19, '411020'),
(20, '411021'),
(21, '411022'),
(22, '411023'),
(23, '411024'),
(24, '411025'),
(25, '411028'),
(26, '411029'),
(27, '411030'),
(28, '411031'),
(29, '411032'),
(30, '411036'),
(31, '411037'),
(32, '411038'),
(33, '411040'),
(34, '411041'),
(35, '411042'),
(36, '411043'),
(37, '411045'),
(38, '411046'),
(39, '411047'),
(40, '411048'),
(41, '411051'),
(42, '411052'),
(43, '411053'),
(44, '411055'),
(45, '411058'),
(46, '411060'),
(47, '411066'),
(48, '411067'),
(49, '411068'),
(50, '411078'),
(51, '411230'),
(52, '412029'),
(53, '412047'),
(54, '412047'),
(55, '412105'),
(56, '412115'),
(57, '412207'),
(58, '412307'),
(59, '412308'),
(60, '412337');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `F_name` varchar(250) NOT NULL,
  `L_name` varchar(250) NOT NULL,
  `reg_no` varchar(11) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `Father_name` varchar(255) NOT NULL,
  `Father_no` varchar(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `year` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `Nationality` varchar(250) NOT NULL,
  `State` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `pincode` int(11) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `valid` varchar(25) NOT NULL,
  `cat_id` int(25) NOT NULL,
  `token` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `typedoc` varchar(255) NOT NULL,
  `address_doc` varchar(250) NOT NULL,
  `fee_doc` varchar(255) NOT NULL,
  `hostel_fee` varchar(250) NOT NULL,
  `feespaid` varchar(10) NOT NULL DEFAULT 'No',
  `rooms_booked` varchar(250) NOT NULL,
  `roomtype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `F_name`, `L_name`, `reg_no`, `mobile_no`, `Father_name`, `Father_no`, `gender`, `email`, `year`, `branch`, `Nationality`, `State`, `city`, `pincode`, `pass`, `valid`, `cat_id`, `token`, `created_at`, `typedoc`, `address_doc`, `fee_doc`, `hostel_fee`, `feespaid`, `rooms_booked`, `roomtype`) VALUES
(1, '', 'Sapkal', '', '', '', '', 'male', 'officer@pict.edu', '', '', '', '', '', 0, '11eabe874b5cc4af388b3b6f5444d120', 'Yes', 1, '679210', '2022-01-01 18:56:52', '', '', '', '', 'No', '', ''),
(44, '', 'Kadam', '', '', '', '', 'female', 'kadam@pict.edu', '', '', '', '', '', 0, '5495e94cdb9b777577bf96cf91783c18', 'Yes', 2, '335463', '2022-01-01 18:58:40', '', '', '', '', 'No', '', ''),
(45, '', 'Gaikwad', '', '', '', '', 'female', 'gaikwad@pict.edu', '', '', '', '', '', 0, 'c6449a83aa32873ef6632048f8b049e3', 'Yes', 2, '759790', '2022-01-01 18:59:30', '', '', '', '', 'No', '', ''),
(46, '', 'Barse', '', '', '', '', 'female', 'barse@pict.edu', '', '', '', '', '', 0, '9f409df01405d8c9c210ba8466cc51b5', 'Yes', 2, '269014', '2022-01-01 19:00:10', '', '', '', '', 'No', '', ''),
(47, '', 'Diwakar', '', '', '', '', 'male', 'diwakar@pict.edu', '', '', '', '', '', 0, 'b35685c07eed70ebfcb21c6ec8e4ca22', 'Yes', 2, '338104', '2022-01-01 19:01:45', '', '', '', '', 'No', '', ''),
(48, '', 'Aurange', '', '', '', '', 'male', 'aurange@oict.edu', '', '', '', '', '', 0, '25e2375e63f1b7982b4aac7a5752888c', 'Yes', 2, '321172', '2022-01-01 19:02:43', '', '', '', '', 'No', '', ''),
(49, '', 'Bahirat', '', '', '', '', 'male', 'bahirat@pict.edu', '', '', '', '', '', 0, '3831927d37915c7499dd18d393bb87d3', 'Yes', 2, '606638', '2022-01-01 19:03:57', '', '', '', '', 'No', '', ''),
(54, 'Urmi', 'Matade', 'C2k20209888', '9370330480', 'Changdeo', '9988776655', 'female', 'urmicm07@gmail.com', 'FE', 'COMP', 'Indian', 'MAHARASHTRA', 'Aurangabad', 423701, 'bb58171d73b97512d6a672298a8a5859', 'Yes', 3, '895606', '2022-01-06 14:37:46', 'Adhar card', 'js_report.pdf', 'js_report-1641460066.pdf', '', 'No', '112A', ''),
(55, 'Jagruti', 'Kad', 'C2K12345678', '1234567890', 'Dipak', '1234567890', 'male', 'sakshikad25@gmail.com', 'FE', 'COMP', 'Indian', 'Maharashtra', 'Pune', 440001, 'd6b9f1424dbc3edb76f4bcd99965e0eb', 'Yes', 3, '412666', '2022-01-10 20:11:04', 'Adhar card', 'SWOT.pdf', 'SWOT.pdf', '', 'No', '101A', ''),
(56, 'Sakshi', 'Kad', 'E2k19103676', '1234567890', 'Dipak', '1234567890', 'female', 'sakshikad51@gmail.com', 'FE', 'ENTC', 'Indian', 'Maharashtra', 'Pune', 440001, 'f08d753ba0ae5e4afbd83cd9a7b502e1', 'Yes', 3, '579939', '2022-01-11 18:12:51', 'Adhar card', 'SWOT.pdf', 'SWOT.pdf', '', 'No', '', ''),
(57, 'Dhananjay', 'Thosar', 'C2K19106306', '8390833406', 'Kamlakar', '9604029326', 'male', 'dhananjaythosar2002@gmail.com', 'FE', 'COMP', 'Indian', 'Maharashtra', 'Pune', 440001, '051ff33015a1bfa27aef002344e4410b', 'Yes', 3, '651236', '2022-01-12 18:50:45', 'Adhar card', 'Dhananjay Thosar-Resume.pdf', 'generateReport (1).pdf', '', 'No', '', ''),
(59, 'Dhananjay', 'Thosar', 'E2K19630610', '8390833406', 'Kamlakar', '9604029326', 'male', 'mess@gmail.com', 'FE', 'COMP', 'Indian', 'Maharashtra', 'Pune', 440001, '3aec5b3bc2bc68ac1938d596f667381a', 'Yes', 4, '249588', '2022-01-13 15:40:54', 'Adhar card', '', '', '', 'No', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `roomchange`
--

CREATE TABLE `roomchange` (
  `id` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `regid` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `cgpa` varchar(50) NOT NULL,
  `room1` varchar(50) NOT NULL,
  `room2` varchar(50) NOT NULL,
  `room3` varchar(50) NOT NULL,
  `req_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomchange`
--

INSERT INTO `roomchange` (`id`, `name`, `regid`, `city`, `cgpa`, `room1`, `room2`, `room3`, `req_at`) VALUES
(1, 'Abhishek Thosar', 'C2K19106309', '9.02', 'Pune', '201B', '202A', '202B', '2021-12-11 16:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `year` varchar(250) DEFAULT NULL,
  `rooms_booked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`year`, `rooms_booked`) VALUES
('FE', NULL),
('SE', NULL),
('TE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sebookings`
--

CREATE TABLE `sebookings` (
  `id` int(25) NOT NULL,
  `ref_id` int(250) DEFAULT NULL,
  `regid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `details` varchar(400) NOT NULL,
  `booked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel_req` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sebookings`
--

INSERT INTO `sebookings` (`id`, `ref_id`, `regid`, `name`, `city`, `room_no`, `status`, `details`, `booked_at`, `cancel_req`) VALUES
(41, NULL, '', '', '', '101A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:45:26', 'No'),
(42, NULL, '', '', '', '101B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:45:32', 'No'),
(43, NULL, '', '', '', '102A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:45:38', 'No'),
(44, NULL, '', '', '', '102B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:00', 'No'),
(45, NULL, '', '', '', '103A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:06', 'No'),
(46, NULL, '', '', '', '103B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:21', 'No'),
(47, NULL, '', '', '', '104A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:26', 'No'),
(48, NULL, '', '', '', '104B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:34', 'No'),
(49, NULL, '', '', '', '105A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:39', 'No'),
(50, NULL, '', '', '', '105B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:45', 'No'),
(51, NULL, '', '', '', '106A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:50', 'No'),
(52, NULL, '', '', '', '106B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:46:55', 'No'),
(53, NULL, '', '', '', '107A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:01', 'No'),
(54, NULL, '', '', '', '107B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:06', 'No'),
(55, NULL, '', '', '', '108A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:11', 'No'),
(56, NULL, '', '', '', '108B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:15', 'No'),
(57, NULL, '', '', '', '109A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:20', 'No'),
(58, NULL, '', '', '', '109B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:24', 'No'),
(59, NULL, '', '', '', '110A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:28', 'No'),
(60, NULL, '', '', '', '110B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:47:33', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `sebookings2`
--

CREATE TABLE `sebookings2` (
  `id` int(25) NOT NULL,
  `ref_id` int(250) DEFAULT NULL,
  `regid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `details` varchar(400) NOT NULL,
  `booked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel_req` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sebookings2`
--

INSERT INTO `sebookings2` (`id`, `ref_id`, `regid`, `name`, `city`, `room_no`, `status`, `details`, `booked_at`, `cancel_req`) VALUES
(1, NULL, '', '', '', '101A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:48:20', 'No'),
(2, NULL, '', '', '', '101B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:48:27', 'No'),
(3, NULL, '', '', '', '102A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:48:33', 'No'),
(4, NULL, '', '', '', '102B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:48:37', 'No'),
(5, NULL, '', '', '', '103A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:48:43', 'No'),
(6, NULL, '', '', '', '103B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:48:57', 'No'),
(7, NULL, '', '', '', '104A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:49:04', 'No'),
(8, NULL, '', '', '', '104B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:49:09', 'No'),
(9, NULL, '', '', '', '105A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:49:15', 'No'),
(10, NULL, '', '', '', '105B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:49:22', 'No'),
(11, NULL, '', '', '', '106A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:49:52', 'No'),
(12, NULL, '', '', '', '106B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:49:57', 'No'),
(13, NULL, '', '', '', '107A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:03', 'No'),
(14, NULL, '', '', '', '107B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:09', 'No'),
(15, NULL, '', '', '', '108A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:15', 'No'),
(16, NULL, '', '', '', '108B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:21', 'No'),
(17, NULL, '', '', '', '109A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:27', 'No'),
(18, NULL, '', '', '', '109B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:31', 'No'),
(19, NULL, '', '', '', '110A', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:36', 'No'),
(20, NULL, '', '', '', '110B', 'Available', 'It is having indoor toilet & contain AC', '2022-01-07 21:50:41', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tebookings`
--

CREATE TABLE `tebookings` (
  `id` int(25) NOT NULL,
  `ref_id` int(250) DEFAULT NULL,
  `regid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `details` varchar(400) NOT NULL,
  `booked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel_req` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tebookings2`
--

CREATE TABLE `tebookings2` (
  `id` int(25) NOT NULL,
  `ref_id` int(250) DEFAULT NULL,
  `regid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `details` varchar(400) NOT NULL,
  `booked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel_req` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`ref_id`);

--
-- Indexes for table `bookings2`
--
ALTER TABLE `bookings2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`ref_id`);

--
-- Indexes for table `leave_details`
--
ALTER TABLE `leave_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `fk2` (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomchange`
--
ALTER TABLE `roomchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `sebookings`
--
ALTER TABLE `sebookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk3` (`ref_id`);

--
-- Indexes for table `sebookings2`
--
ALTER TABLE `sebookings2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk4` (`ref_id`);

--
-- Indexes for table `tebookings`
--
ALTER TABLE `tebookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk5` (`ref_id`);

--
-- Indexes for table `tebookings2`
--
ALTER TABLE `tebookings2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk6` (`ref_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `bookings2`
--
ALTER TABLE `bookings2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `leave_details`
--
ALTER TABLE `leave_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `roomchange`
--
ALTER TABLE `roomchange`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sebookings`
--
ALTER TABLE `sebookings`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `sebookings2`
--
ALTER TABLE `sebookings2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tebookings`
--
ALTER TABLE `tebookings`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tebookings2`
--
ALTER TABLE `tebookings2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk` FOREIGN KEY (`ref_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookings2`
--
ALTER TABLE `bookings2`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`ref_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leave_details`
--
ALTER TABLE `leave_details`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`id`) REFERENCES `registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sebookings`
--
ALTER TABLE `sebookings`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`ref_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sebookings2`
--
ALTER TABLE `sebookings2`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`ref_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tebookings`
--
ALTER TABLE `tebookings`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`ref_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tebookings2`
--
ALTER TABLE `tebookings2`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`ref_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
