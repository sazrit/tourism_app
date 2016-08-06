-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2015 at 12:47 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `comment` varchar(128) NOT NULL,
  `comment_type` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE IF NOT EXISTS `destination` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `country` varchar(11) NOT NULL,
  `continent` varchar(11) NOT NULL,
  `description` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `name`, `country`, `continent`, `description`) VALUES
(1, 'Dhaka', 'Bangladesh', 'Asia', 'Bangladesh, officially the People''s Republic of Bangladesh, is a'),
(2, 'Kalkata', 'India', 'Asia', 'India, officially the Republic of India, is a country in South A'),
(5, '', 'Pakistan', 'Asia', 'Pakistan, officially the Islamic Republic of Pakistan, is a sove'),
(6, '', 'China', 'Asia', 'China, officially the People''s Republic of China, is a sovereign'),
(7, '', 'Pakistan', 'Asia', 'Pakistan, officially the Islamic Republic of Pakistan, is a sove'),
(8, 'Chittagong', 'Banglaesh', 'Asia', 'Chittagong is the eastern division of Bangladesh alongside the c'),
(10, 'Rajshahi  Division', 'Bangladesh', 'Asia', 'Rajshahi is a prominent commercial hub. It has a venerable silk ');

-- --------------------------------------------------------

--
-- Table structure for table `geocoding`
--

CREATE TABLE IF NOT EXISTS `geocoding` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geocoding`
--

INSERT INTO `geocoding` (`address`, `latitude`, `longitude`) VALUES
('bangladesh', 23.685, 90.3563),
('chhattisgarh, india', 21.2787, 81.8661);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(32) NOT NULL,
  `street` varchar(32) NOT NULL,
  `place_id` int(32) NOT NULL,
  `hotel_image` varchar(32) NOT NULL,
  `image_description` varchar(32) NOT NULL,
  `hotel_type` varchar(32) NOT NULL,
  `rating_id` int(32) NOT NULL,
  `comment_id` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `journey_history`
--

CREATE TABLE IF NOT EXISTS `journey_history` (
  `id` int(32) NOT NULL,
  `journey_name` varchar(32) NOT NULL,
  `start_date` varchar(32) NOT NULL,
  `end_date` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `place_id` int(32) NOT NULL,
  `hotel_id` int(32) NOT NULL,
  `resturant_id` int(32) NOT NULL,
  `transport_id` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `rating_type` varchar(32) NOT NULL,
  `rating` int(32) NOT NULL,
  `safety_level` varchar(32) NOT NULL,
  `weather` varchar(32) NOT NULL,
  `living_condition` varchar(32) NOT NULL,
  `internet_availability` varchar(32) NOT NULL,
  `service_quality` int(32) NOT NULL,
  `interior_quality` int(32) NOT NULL,
  `outlook` int(32) NOT NULL,
  `food_quality` varchar(32) NOT NULL,
  `waiter_service` int(32) NOT NULL,
  `cleaniness` int(32) NOT NULL,
  `journey_comfort` int(32) NOT NULL,
  `lagage_safety` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `resturant`
--

CREATE TABLE IF NOT EXISTS `resturant` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `resturant_name` varchar(32) NOT NULL,
  `owner_name` varchar(32) NOT NULL,
  `street` varchar(32) NOT NULL,
  `place_id` int(32) NOT NULL,
  `resturant_image` varchar(32) NOT NULL,
  `resturant_details` varchar(32) NOT NULL,
  `minmum_price` int(32) NOT NULL,
  `maximum_price` int(32) NOT NULL,
  `returant_type` varchar(32) NOT NULL,
  `dining_option` varchar(32) NOT NULL,
  `rating_id` int(32) NOT NULL,
  `comment_id` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_details` int(11) NOT NULL,
  `room_type` int(11) NOT NULL,
  `room_rent` int(11) NOT NULL,
  `room_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tourist_spot`
--

CREATE TABLE IF NOT EXISTS `tourist_spot` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `state` varchar(32) NOT NULL,
  `destination_id` int(32) NOT NULL,
  `historical_value` int(64) NOT NULL,
  `cultural_value` int(64) NOT NULL,
  `natural_value` int(64) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `rating_id` int(32) NOT NULL,
  `comment_id` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`id`, `place_name`, `city`, `state`, `destination_id`, `historical_value`, `cultural_value`, `natural_value`, `description`, `image`, `rating_id`, `comment_id`) VALUES
(8, 'Dhaka', 'Dhaka', 'Dhaka', 1, 1, 1, 1, 'Dhaka is the capital of Bangladesh', '60-Dome-Mosque-61-1140x760_c.jpg', 0, 0),
(11, 'Lalbagh Fort', 'Dhaka', 'Dhaka', 0, 3, 1, 1, 'Lalbagh Fort is an incomplete 17th century Mughal fort complex in Dhaka, Bangladesh', 'lal1.jpg', 0, 0),
(12, 'Ahsan Manzil', 'Dhaka', 'Dhaka', 0, 3, 1, 1, 'Ahsan Manzil (Bengali: ????? ?????, Ahsan Manzil) is a wonderful ancient building, located on the bank of the river Buriganga', 'ahsan.jpg', 0, 0),
(13, 'Shaheed Minar', 'Dhaka', 'Dhaka', 0, 4, 1, 1, 'The Shaheed Minar (English:Martyr Monument) is a national monument in Dhaka, Bangladesh', 'shahid.jpg', 0, 0),
(14, 'Jatiyo Smriti Soudho', 'Dhaka', 'Dhaka', 0, 3, 1, 1, 'Jatiyo Sriti Shoudho (Bengali: ?????? ?????? ??? Jatio Sriti Shoudho) or National Martyrs'' Memorial is the national monument of Bangladesh', 'sriti.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(32) NOT NULL,
  `arrival` varchar(32) NOT NULL,
  `deperture` varchar(32) NOT NULL,
  `transport_image` varchar(32) NOT NULL,
  `image_details` varchar(32) NOT NULL,
  `ticket_price` int(32) NOT NULL,
  `rating_id` varchar(32) NOT NULL,
  `comment_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `traveler_cart`
--

CREATE TABLE IF NOT EXISTS `traveler_cart` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `cart_name` varchar(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `resturant_id` int(32) NOT NULL,
  `hotel_id` int(32) NOT NULL,
  `place_id` int(32) NOT NULL,
  `transport_id` int(32) NOT NULL,
  `map_id` int(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `occupation` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `country` varchar(32) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `contact_email` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(250) NOT NULL,
  `traveler_type` varchar(32) NOT NULL,
  `journey_book_id` int(11) NOT NULL,
  `traveler_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `occupation` (`occupation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `occupation`, `address`, `country`, `contact_number`, `contact_email`, `username`, `password`, `traveler_type`, `journey_book_id`, `traveler_name`) VALUES
(1, 'Scs', 'csc', '', 0, 'cssc', 'cssc', 'scs', '', 0, 'qsd'),
(2, 'Scs', 'csc', '', 0, 'cssc', 'cssc', 'scs', '', 0, 'qsd'),
(3, 'csv', 'svv', '', 0, 'svs', 'vsv', 'vsv', '', 0, 'bfb'),
(4, 'csv', 'svv', '', 0, 'svs', 'vsv', '', '', 0, 'bfb'),
(5, 'fsf', 'sff', '', 123, 'jahid.tn@gmail.com', 'jahid', '', '', 0, 'cdfd'),
(6, ' zmm', 'adnm', '', 1234, 'jahid@gmail.com', 'jahid', '123456', '', 0, 'cdn'),
(7, 'Student', 'mdd', '', 3344, 'jahid@gmail.com', 'tonoy230', '123456', '', 0, 'Jahidul Haque'),
(8, '', '', 'Bangladesh', 0, 'jahid230@yahoo.com', 'jahid565', '123456', '', 0, 'jahidul Haque'),
(9, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(10, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(11, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(12, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(13, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(14, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(15, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(16, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(17, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(18, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(19, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(20, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(21, '', '', 'Bangladesh', 0, 'baset365@gmail.com', 'baset123', '123456', '', 0, 'Abul Baset'),
(22, '', '', 'n', 0, 'v@gmail.com', 'n', 'va1235', '', 0, 'v'),
(23, '', '', 'n', 0, 'v@gmail.com', 'n', 'va1235', '', 0, 'v'),
(24, '', '', 'n', 0, 'v@gmail.com', 'n', 'va1235', '', 0, 'v');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `traveler_cart`
--
ALTER TABLE `traveler_cart`
  ADD CONSTRAINT `user_tr` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
