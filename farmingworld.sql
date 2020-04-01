-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2018 at 03:29 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmingworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
CREATE TABLE IF NOT EXISTS `crops` (
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `varieties` varchar(100) NOT NULL,
  `temperature` int(100) NOT NULL,
  `rainfall` varchar(100) NOT NULL,
  `soil_type` varchar(100) NOT NULL,
  `major_producers` varchar(100) NOT NULL,
  `highest_producer` varchar(100) NOT NULL,
  `research_center` varchar(100) NOT NULL,
  `highest_producing_country` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`name`, `type`, `varieties`, `temperature`, `rainfall`, `soil_type`, `major_producers`, `highest_producer`, `research_center`, `highest_producing_country`, `image`) VALUES
('Rice', 'Kharif, Rabi', 'Aman, Sali, Afghani, Aus, Boro, Palua', 24, '150 cm', 'Clay/ Loamy', ' West Bengal, Uttar Pradesh, Andhra Pradesh', 'West Bengal', 'Odisha', 'China', 'rice.jpg'),
('Wheat', 'Rabi', 'Kalyan Sona, Sonalika, Heera', 18, '20-100 cm', 'Clay loam, Sandy loam', ' Uttar Pradesh, Punjab, Madhya Pradesh, Haryana, Rajasthan', 'Uttar Pradesh', 'Karnal, Haryana', 'China', 'wheat.jpg'),
('Cotton', '.', 'Long Staple, Medium Staple, Short Staple', 25, ' 50-100 cm', 'Black soil ', 'Gujarat, Maharashtra, Andhra Pradesh, Haryana', 'Uttar Pradesh', 'Nagpur, Maharashtra', 'China', 'cotton.jpg'),
('Jute', 'Zaid', 'White Jute, Tossa Jute', 30, ' 125-200 cm', 'Sandy and Clay Loam', 'West Bengal, Bihar, Assam, Andhra Pradesh', 'West Bengal', 'Kolkata & Nilgunj, West Bengal', 'India ', 'jute.jpg'),
('Sugarcane', ' Kharif, Rabi', 'Bhima, Prabha', 26, ' 125-200 cm', 'Clayey Loamy Soil/ Black Cotton Soil', ' Uttar Pradesh, Maharashtra, Karnataka, Tamil Nadu', ' Uttar Pradesh', 'Lucknow', 'Brazil ', 'sugarcane.jpg'),
('Tea', 'plant', '.', 25, '150-300 cm', ' Loamy soil which is acidic in nature and rich in organic matter', 'Assam, Darjeeling (West Bengal), Meghalaya, Kerala', ' Assam', 'Tocklai, Assam', 'China', 'tea.jpg'),
('Coffee', '.', 'Arabica and Robusta', 20, '150-250 cm', 'Well-drained forest loam', 'Karnataka, Tamil Nadu, Kerala, Andhra Pradesh, Telangana', ' Karnataka', '.', 'Brazil', 'coffee.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
