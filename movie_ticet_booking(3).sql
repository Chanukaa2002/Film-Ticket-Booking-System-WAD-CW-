-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2024 at 08:38 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_ticet_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `User_Id` varchar(20) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`User_Id`) VALUES
('A001');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` varchar(20) NOT NULL,
  `schedule_id` varchar(20) NOT NULL,
  `viwer_id` varchar(20) NOT NULL,
  `Date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Seat_No` varchar(5) DEFAULT NULL,
  `Time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `fk_schedule_schedule_id` (`schedule_id`),
  KEY `fk_schedule_viwer_id` (`viwer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `schedule_id`, `viwer_id`, `Date`, `Seat_No`, `Time`) VALUES
('B001', 'S001', 'A001', '2024-07-19', 'B2', '01.00PM'),
('B002', 'S001', 'A001', '2024-07-19', 'C2', '10.00A.M'),
('B003', 'S001', 'A001', '2024-07-19', 'C7', '10.00A.M'),
('B004', 'S001', 'A001', '2024-07-19', 'A1', '10.00A.M'),
('B005', 'S001', 'A001', '2024-07-19', 'H1', '10.00A.M'),
('B006', 'S001', 'A001', '2024-07-19', 'C8', '10.00A.M'),
('B007', 'S001', 'A001', '2024-07-19', 'G3', '10.00A.M'),
('B008', 'S001', 'A001', '2024-07-19', 'A0', '10.00A.M'),
('B009', 'S001', 'A001', '2024-07-19', 'G1', '10.00A.M'),
('B010', 'S001', 'A001', '2024-07-19', 'E1', '10.00A.M'),
('B011', 'S002', 'A001', '2024-7-19', 'H1', '01.00P.M'),
('B012', 'S001', 'A001', '2024-7-19', 'C2', '10.00A.M'),
('B013', 'S001', 'A001', '2024-07-19', 'A0', '10.00A.M'),
('B014', 'S002', 'A001', '2024-07-19', 'B1', '1.00P.M'),
('B015', 'S001', 'A001', '2024-07-19', 'G3', '10.00A.M'),
('B016', 'S001', 'A001', '2024-07-19', 'D8', '10.00A.M'),
('B017', 'S002', 'A001', '2024-07-19', 'J2', '1.00P.M'),
('B018', 'S001', 'A001', '2024-07-19', 'I1', '10.00A.M'),
('B019', 'S001', 'A001', '2024-07-19', 'A4', '10.00A.M'),
('B020', 'S001', 'A001', '2024-07-19', 'I3', '10.00A.M'),
('B021', 'S001', 'A001', '2024-07-19', 'J1', '10.00A.M'),
('B022', 'S001', 'A001', '2024-07-19', 'I3', '10.00A.M'),
('B023', 'S001', 'A001', '2024-07-19', 'J2', '10.00A.M'),
('B024', 'S001', 'A001', '2024-07-19', 'H2', '10.00A.M'),
('B025', 'S001', 'A001', '2024-07-19', 'I1', '10.00A.M'),
('B026', 'S001', 'A001', '2024-07-19', 'J3', '10.00A.M'),
('B027', 'S003', 'V001', '2024-07-18', 'J1', '10.00A.M');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `F_Id` varchar(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Relese_Year` varchar(20) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Language` varchar(50) NOT NULL,
  `Ticket_Price` float NOT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `banner` varchar(250) DEFAULT NULL,
  `Genre` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`F_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`F_Id`, `Name`, `Relese_Year`, `Description`, `Language`, `Ticket_Price`, `poster`, `banner`, `Genre`) VALUES
('F002', 'Shutter Island', '2010', 'This is the Sci-Fi movie direct by Martin Scorsese', 'English', 750, 'shutter islang poster.jpg', 'shutter island banner.jpg', 'Sci-Fi'),
('F003', 'Nun II', '2023', 'Nun II is the horro movie relese in 2023', 'English', 650, 'nun 2 poster.jpg', 'nun2 banner.jpg', 'Horror/Mistory'),
('F004', 'interstellar', '2014', 'Set in a dystopian future where Earth is suffering from catastrophic blight and famine, the film follows a group of astronauts who travel through a wormhole near Saturn in search of a new home for humankind', 'English', 500, 'interstaller poster.jpg', 'interstellar banner.jpg', 'Sci-fi');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `schedule_id` varchar(20) NOT NULL,
  `film_id` varchar(20) NOT NULL,
  `admin_id` varchar(20) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `fk_schedule_film_id` (`film_id`),
  KEY `fk_schedule_admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `film_id`, `admin_id`, `Date`, `Time`) VALUES
('S001', 'F001', 'A001', '2024-07-19', '10.00A.M'),
('S002', 'F001', 'A001', '2024-07-19', '1.00P.M'),
('S003', 'F002', 'A001', '2024-07-18', '10.00A.M'),
('S004', 'F002', 'A001', '2024-07-18', '1.00P.M'),
('S005', 'F002', 'A001', '2024-07-18', '4.00P.M'),
('S006', 'F002', 'A001', '2024-07-18', '7.00P.M'),
('S007', 'F004', 'A001', '2024-07-19', '7.00P.M');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `User_Id` varchar(20) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL,
  UNIQUE KEY `reset_token_hash` (`reset_token_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Id`, `UserName`, `Password`, `Email`, `reset_token_hash`, `reset_token_expires_at`) VALUES
('V001', 'Chanuka2002', 'Chanuka@20021004', 'mchanuka72@gmail.com', 'b770cb6d3f4d88ee0cff2ded732e6b04f4d346e5082944001469c24c117ca738', '2024-07-17 13:27:29'),
('A001', 'kalindu@123', 'kalindu@123', 'mksuraj@gmail.com', 'f507af7e206c380a0eed4d6befa28c2350dbc42b7c76be93b5f85d3073cc8f3a', '2024-07-17 12:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `viewer`
--

DROP TABLE IF EXISTS `viewer`;
CREATE TABLE IF NOT EXISTS `viewer` (
  `User_Id` varchar(20) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `contact_No` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `viewer`
--

INSERT INTO `viewer` (`User_Id`, `Name`, `contact_No`) VALUES
('V001', 'Chanuka dilshan', '0702140396'),
('V004', 'Shan Indeewa', '8765781'),
('V003', 'amri haneef', '1234567890');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
