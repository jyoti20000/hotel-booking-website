-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 03:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hbwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'jyotisharma', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details1`
--

CREATE TABLE `booking_details1` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(50) NOT NULL,
  `room_name` varchar(150) NOT NULL,
  `price` int(200) NOT NULL,
  `total_pay` int(100) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` bigint(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `child` int(30) NOT NULL,
  `adult` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details1`
--

INSERT INTO `booking_details1` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `email`, `address`, `child`, `adult`) VALUES
(1, 1, 'Simple Rooms 3', 670, 1340, '110', 'Gaurav Vishwakarma', 8382811279, 'vishwagaurav27@gmail.com', 'Padauli Deoria\r\nGorakhpur', 1, 1),
(2, 2, 'Simple Rooms 4', 670, 5360, NULL, 'Gaurav Vishwakarma', 8382811279, 'vishwagaurav276@gmail.com', 'Padauli Deoria\r\nGorakhpur', 0, 0),
(3, 3, 'Standard Room', 770, 2310, NULL, 'Kriti Shinha', 8987890099, 'shinhakirti12@gmail.com', 'Delhi', 0, 0),
(4, 4, 'Delux Room', 2000, 10000, '112', 'Kamal Tyagi', 9878765567, 'kamaltyagi65@gmail.com', 'Mumbai', 0, 0),
(5, 5, 'Luxury Room', 670, 2680, NULL, 'Mushkan Sharma', 7766879900, 'mushu12@gmail.com', 'Rohini', 0, 0),
(6, 6, 'Simple Room', 1000, 3000, '110', 'Mushkan Sharma', 7766879900, 'mushu12@gmail.com', 'Rohini', 0, 0),
(7, 7, 'Standard Room', 770, 4620, NULL, 'Mushkan Sharma', 7766879900, 'mushu12@gmail.com', 'Rohini', 1, 1),
(8, 8, 'Simple Room', 1000, 4000, '111', 'Gaurav Vishwa', 8382811279, 'mushusharma123@gmail.com', 'Gorakhapur\r\nGorakhpur', 0, 0),
(9, 9, 'Simple Room', 1000, 4000, '100', 'Gaurav Vishwa', 8382811279, 'mushusharma123@gmail.com', 'Gorakhapur\r\nGorakhpur', 0, 0),
(10, 10, 'Standard Room', 770, 3080, '100', 'Gaurav Vishwa', 8382811279, 'mushusharma123@gmail.com', 'Gorakhapur\r\nGorakhpur', 0, 0),
(11, 11, 'Delux Room', 2000, 2000, '112', 'Gaurav Vishwa', 8382811279, 'mushusharma123@gmail.com', 'Gorakhapur\r\nGorakhpur', 0, 0),
(12, 12, 'Luxury Room', 670, 1340, '111', 'Gaurav Vishwa', 8382811279, 'mushusharma123@gmail.com', 'Gorakhapur\r\nGorakhpur', 0, 0),
(13, 13, 'Simple Room', 1000, 2000, '100', 'Gaurav Vishwa', 8382811279, 'vishwagaurav12@gmail.com', 'Gorakhapur\r\nGorakhpur', 0, 0),
(14, 14, 'Delux Room', 2000, 8000, NULL, 'Kamal Tyagi', 9878765567, 'kamaltyagi65@gmail.com', 'Mumbai', 1, 1),
(15, 15, 'Delux Room', 2000, 6000, NULL, 'Kamal Tyagi', 9878765567, 'kamaltyagi65@gmail.com', 'Mumbai', 0, 0),
(16, 16, 'Delux Room', 2000, 8000, '111', 'Kamal Tyagi', 9878765567, 'kamaltyagi65@gmail.com', 'Mumbai', 0, 0),
(17, 17, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'gjyotisharma12@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(18, 18, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'gjyotisharma12@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(19, 19, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'gjyotisharma12@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(20, 20, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'gjyotisharma12@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(21, 21, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'gjyotisharma12@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(22, 22, 'Simple Room', 1000, 1000, '110', 'Gaurav Vishwa', 8382811279, 'gjyotisharma12@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(23, 23, 'Simple Room', 1000, 2000, '112', 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(24, 24, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(25, 25, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(26, 26, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(27, 27, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(28, 28, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(29, 29, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(30, 30, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(31, 31, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(32, 32, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(33, 33, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(34, 34, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(35, 35, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(36, 36, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(37, 37, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(38, 38, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(39, 39, 'Simple Room', 1000, 1000, NULL, 'Gaurav Vishwa', 8382811279, 'kamaltyagi65@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(40, 40, 'Luxury Room', 670, 1340, NULL, 'Gaurav Vishwa', 8382811279, 'mushusharma123@gmail.com', 'Gorakhapur\r\nGorakhpur', 0, 0),
(41, 41, 'Simple Room', 1000, 2000, NULL, 'Gaurav Vishwa', 8382811279, 'gjyotisharma12@gmail.com', 'Gorakhapur\r\nGorakhpur&quot;', 1, 1),
(42, 42, 'Standard Room', 770, 1540, NULL, 'Kriti Shinha', 8987890099, 'shinhakirti12@gmail.com', 'Delhi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `room_id` int(100) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(30) NOT NULL DEFAULT 0,
  `refund` int(100) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `rate_review`, `datentime`) VALUES
(1, 2, 3, '2023-08-22', '2023-08-24', 1, NULL, 'booked', 1, '2023-08-13 16:21:16'),
(2, 2, 4, '2023-08-16', '2023-08-24', 0, 1, 'cancelled', NULL, '2023-08-13 22:36:22'),
(3, 9, 3, '2023-08-30', '2023-09-02', 0, 1, 'cancelled', NULL, '2023-08-18 16:27:25'),
(4, 8, 2, '2023-08-20', '2023-08-25', 1, NULL, 'booked', 0, '2023-08-18 16:30:04'),
(5, 10, 4, '2023-09-04', '2023-09-08', 0, 1, 'cancelled', NULL, '2023-08-18 17:17:51'),
(6, 10, 1, '2023-08-30', '2023-09-02', 1, NULL, 'booked', NULL, '2023-06-08 17:19:33'),
(7, 10, 3, '2023-08-30', '2023-09-05', 0, 0, 'cancelled', NULL, '2023-08-18 17:32:16'),
(8, 2, 1, '2023-08-21', '2023-08-25', 1, NULL, 'booked', 1, '2022-08-10 14:53:59'),
(9, 2, 1, '2023-08-22', '2023-08-26', 1, NULL, 'booked', 0, '2023-02-08 14:54:25'),
(10, 2, 3, '2023-08-29', '2023-09-02', 1, NULL, 'booked', 1, '2023-08-20 17:59:59'),
(11, 2, 2, '2023-08-22', '2023-08-23', 1, NULL, 'booked', 1, '2023-08-20 18:03:24'),
(12, 2, 4, '2023-09-07', '2023-09-09', 1, NULL, 'booked', 1, '2023-08-20 18:03:56'),
(13, 2, 1, '2023-09-04', '2023-09-06', 1, NULL, 'booked', 0, '2023-08-20 18:05:33'),
(14, 8, 2, '2023-08-27', '2023-08-31', 0, 1, 'cancelled', NULL, '2023-08-25 00:03:19'),
(15, 8, 2, '2023-08-28', '2023-08-31', 0, NULL, 'booked', NULL, '2023-08-25 00:09:20'),
(16, 8, 2, '2023-08-28', '2023-09-01', 1, NULL, 'booked', 0, '2023-08-25 00:10:28'),
(17, 2, 1, '2023-08-30', '2023-08-31', 0, NULL, 'pending', NULL, '2023-08-25 01:01:06'),
(18, 2, 1, '2023-08-30', '2023-08-31', 0, NULL, 'pending', NULL, '2023-08-25 01:02:27'),
(19, 2, 1, '2023-08-30', '2023-08-31', 0, NULL, 'pending', NULL, '2023-08-25 01:17:06'),
(20, 2, 1, '2023-08-30', '2023-08-31', 0, NULL, 'pending', NULL, '2023-08-25 01:17:43'),
(21, 2, 1, '2023-08-30', '2023-08-31', 0, NULL, 'pending', NULL, '2023-08-25 01:18:55'),
(22, 2, 1, '2023-08-30', '2023-08-31', 1, NULL, 'booked', 0, '2023-08-25 01:21:09'),
(23, 2, 1, '2023-08-30', '2023-09-01', 1, NULL, 'booked', 0, '2023-08-25 01:21:36'),
(24, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:25:29'),
(25, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:29:15'),
(26, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:37:38'),
(27, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:37:44'),
(28, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:37:55'),
(29, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:39:24'),
(30, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:48:34'),
(31, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:48:59'),
(32, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:50:28'),
(33, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:50:57'),
(34, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:52:26'),
(35, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:54:10'),
(36, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:57:05'),
(37, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 01:59:05'),
(38, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 02:00:52'),
(39, 2, 1, '2023-09-06', '2023-09-07', 0, NULL, 'booked', NULL, '2023-08-25 02:01:42'),
(40, 2, 4, '2023-08-31', '2023-09-02', 0, NULL, 'booked', NULL, '2023-08-25 02:04:40'),
(41, 2, 1, '2023-08-30', '2023-09-01', 0, NULL, 'booked', NULL, '2023-08-25 02:06:12'),
(42, 9, 3, '2023-09-07', '2023-09-09', 0, NULL, 'booked', NULL, '2023-08-26 15:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(1, 'IMG_36594.png'),
(2, 'IMG_74363.png'),
(5, 'IMG_25687.png'),
(7, 'IMG_21246.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(13) NOT NULL,
  `address` varchar(150) NOT NULL,
  `gmap` varchar(260) NOT NULL,
  `pn1` bigint(30) NOT NULL,
  `pn2` bigint(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Gollghar Gorakhpur, Uttar Pradesh', 'https://goo.gl/maps/gKcfkvXXY3Qjy1EL6', 8382811279, 8382811279, 'gjyotisharma276@gmail.com', 'facebook.com', 'instagram.com', 'tritter.coom', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14089.50360013693!2d81.08379020053256!3d28.012984616135796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3998bf5f1ccd3239%3A0x1a9f1102c8569db!2sGorkhapur%2C%20Uttar%20Pradesh%20262723!5e0!3m2!1sen!2sin!4v1684311815438!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(1, 'IMG_54328.svg', 'WiFi', 'Wi-Fi Access: WE provide complimentary or paid Wi-Fi internet access throughout their premises, including guest rooms and common areas.'),
(2, 'IMG_94709.svg', 'Spa', 'Spa: We provide fitness centers equipped with exercise machines, weights, and sometimes personal trainers. Spas offer a variety of services such as massages, facials, saunas, steam rooms, and beauty t'),
(3, 'IMG_23602.svg', 'Television', 'Room Service: We provide amenities directly to th customer rooms through room service, typically available during specific hours.'),
(4, 'IMG_11899.svg', 'geyser', 'We provide gyser facilities for guest, requires hot water, they can activate the geyser using a switch or control panel located within the bathroom. Upon activation, the geyser starts heating the wate'),
(5, 'IMG_81094.svg', 'Air conditioner', 'We provide AC system in our hotel.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(2, 'Kitchen'),
(3, 'Balcony'),
(4, 'Bedroom');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` varchar(300) NOT NULL,
  `rating` int(11) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `review`, `rating`, `seen`, `datentime`) VALUES
(4, 11, 2, 2, 'Be Specific in your Hotel Review. Telling other travelers what type of room you stayed in might help them narrow down which hotel reviews to read based on their own room preferences. ...', 5, 0, '2023-08-20 18:08:43'),
(5, 10, 3, 2, 'Good Environment.....', 4, 0, '2023-08-24 20:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'Simple Room', 454, 1000, 2, 2, 1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Perferendis rem nesciunt sapiente, porro eligendi a doloribus illum quos consectetur dicta quia fugit necessitatibus atque amet iste. Distinctio, eius atque? Optio? Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n Perferendis rem nesciunt sapiente, porro eligendi a doloribus illum', 1, 0),
(2, 'Delux Room', 333, 2000, 2, 2, 1, 'This is the second room. Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n Perferendis rem nesciunt sapiente, porro eligendi a doloribus illum quos consectetur dicta quia fugit necessitatibus atque amet iste. Distinctio, eius atque? Optio?', 1, 0),
(3, 'Standard Room', 500, 770, 5, 10, 9, 'Simple design king bedded room are well equipped with modern amenities.', 1, 0),
(4, 'Luxury Room', 500, 670, 5, 3, 1, 'Engulf yourself in the plush luxury of our premier rooms. An upgraded version of the Suite room, these rooms offer an elegant design with larger room space..', 1, 0),
(5, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 1, 1),
(6, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 1, 1),
(7, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 0, 1),
(8, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 0, 1),
(9, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 0, 1),
(10, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 0, 1),
(11, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 0, 1),
(12, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 0, 1),
(13, 'Simple Rooms 3', 500, 670, 5, 3, 1, 'This is the simple room three.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(50, 3, 1),
(51, 3, 2),
(52, 3, 3),
(53, 3, 5),
(54, 4, 1),
(55, 4, 2),
(56, 4, 3),
(57, 4, 5),
(59, 1, 1),
(60, 2, 1),
(61, 2, 2),
(62, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(47, 3, 2),
(48, 3, 3),
(49, 3, 4),
(50, 4, 2),
(51, 4, 3),
(52, 4, 4),
(54, 1, 4),
(55, 2, 2),
(56, 2, 3),
(57, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(1, 1, 'IMG_58441.jpg', 0),
(2, 1, 'IMG_78464.png', 1),
(3, 2, 'IMG_56270.png', 0),
(4, 1, 'IMG_49838.png', 0),
(5, 1, 'IMG_74851.png', 0),
(6, 2, 'IMG_54257.png', 1),
(7, 3, 'IMG_59854.png', 1),
(8, 4, 'IMG_76350.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(60) NOT NULL,
  `site_about` varchar(1000) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'StayEasy', 'Welcome to our hotel booking website, where your perfect stay is just a few clicks away. We understand that finding the right accommodation can make or break your travel experience, and that&#039;s why we&#039;re here to make it easier for you.Discover a vast selection of hotels, ranging from budget-friendly options to luxurious resorts, all handpicked to meet your specific needs and preferences. With our user-friendly interface and powerful search engine, you can effortlessly browse through various destinations, compare prices, and find the best deals that suit your budget.Our website provides detailed information about each hotel, including high-resolution photos, amenities, guest reviews, and ratings. You can rely on our reliable customer feedback to get a genuine insight into the quality of service and overall experience offered by each property.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(1, 'Ritesh', 'IMG_75155.jpg'),
(2, 'Rohit', 'IMG_23713.jpg'),
(3, 'Rahul', 'IMG_42864.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred1`
--

CREATE TABLE `user_cred1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phonenum` bigint(30) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pincode` int(100) NOT NULL,
  `dob` date NOT NULL,
  `pass` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred1`
--

INSERT INTO `user_cred1` (`id`, `name`, `email`, `phonenum`, `address`, `pincode`, `dob`, `pass`, `profile`, `status`, `datentime`) VALUES
(2, 'Gaurav Vishwa', 'mushusharma123@gmail.com', 8382811279, 'Gorakhapur\r\nGorakhpur', 274206, '1994-03-03', '12', 'IMG_54597.jpeg', 1, '2023-06-14 14:28:26'),
(8, 'Kamal Tyagi', 'kamaltyagi65@gmail.com', 9878765567, 'Mumbai', 990099, '2000-02-02', '900', 'IMG_68562.jpeg', 0, '2023-08-18 16:24:55'),
(9, 'Kriti Shinha', 'shinhakirti12@gmail.com', 8987890099, 'Delhi', 110089, '1998-07-10', '12', 'IMG_96744.jpeg', 1, '2023-08-18 16:26:39'),
(10, 'Mushkan Sharma', 'mushu12@gmail.com', 7766879900, 'Rohini', 1100098, '2001-01-01', '1234', 'IMG_89929.jpeg', 1, '2023-08-18 17:16:08'),
(11, 'Jyoti Sharma', 'gjyotisharma12@gmail.com', 8987676655, 'Delhi', 110098, '1999-06-06', '100', 'IMG_68812.jpeg', 1, '2023-08-19 00:22:14'),
(12, 'Ravi Kumar', 'ravikumar12@gmail.com', 9878678900, 'DElhi', 110078, '2002-07-19', '1000', 'IMG_39429.jpeg', 1, '2023-08-19 00:50:03'),
(13, 'Anand Kumar', 'anandkumar12@gmail.com', 9089876700, 'Mumbai', 110078, '1999-06-23', '199', 'IMG_74248.jpeg', 1, '2023-07-01 23:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(1, 'Gaurav Vishwakarma', 'vishwagaurav27@gmail.com', 'Room booking Query', 'My name is Gaurav Sharma and I am writing to inquire about room availability and make a reservation at Sevensees. I am planning to visit Gorkhapur from 23/05/23 to 27/05/23.', '2023-05-17 14:19:31', 1),
(2, 'Jyoti Sharma', 'gjyotisharma12@gmail.com', 'Rooms', 'I&#039;d like to make a reservation for a (single / double / twin) room for the night of (date), please. Do you have any double rooms left for the weekend? Do you have any double rooms available this weekend? How much is… a single room / a double room / a suite?', '2023-08-20 17:30:16', 1),
(3, 'Kamal Tyagi', 'kamaltyagi65@gmail.com', 'Food Enquiry', 'Is there any food facility...', '2023-08-20 17:48:10', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details1`
--
ALTER TABLE `booking_details1`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room id` (`room_id`),
  ADD KEY `facilities id` (`facilities_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features_id` (`features_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred1`
--
ALTER TABLE `user_cred1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details1`
--
ALTER TABLE `booking_details1`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_cred1`
--
ALTER TABLE `user_cred1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details1`
--
ALTER TABLE `booking_details1`
  ADD CONSTRAINT `booking_details1_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred1` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred1` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features_id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
