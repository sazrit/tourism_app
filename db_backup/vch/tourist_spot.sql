-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2015 at 03:06 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`id`, `place_name`, `city`, `state`, `destination_id`, `historical_value`, `cultural_value`, `natural_value`, `description`, `image`, `rating_id`, `comment_id`) VALUES
(8, 'Dhaka', 'Dhaka', 'Dhaka', 1, 1, 1, 1, 'Dhaka is the capital of Bangladesh', '60-Dome-Mosque-61-1140x760_c.jpg', 0, 0),
(11, 'Lalbagh Fort', 'Dhaka', 'Dhaka', 0, 3, 1, 1, 'Lalbagh Fort is an incomplete 17th century Mughal fort complex in Dhaka, Bangladesh', 'lal1.jpg', 0, 0),
(12, 'Ahsan Manzil', 'Dhaka', 'Dhaka', 0, 3, 1, 1, 'Ahsan Manzil (Bengali: ????? ?????, Ahsan Manzil) is a wonderful ancient building, located on the bank of the river Buriganga', 'ahsan.jpg', 0, 0),
(13, 'Shaheed Minar', 'Dhaka', 'Dhaka', 0, 4, 1, 1, 'The Shaheed Minar (English:Martyr Monument) is a national monument in Dhaka, Bangladesh', 'shahid.jpg', 0, 0),
(14, 'Jatiyo Smriti Soudho', 'Dhaka', 'Dhaka', 0, 3, 1, 1, 'Jatiyo Sriti Shoudho (Bengali: ?????? ?????? ??? Jatio Sriti Shoudho) or National Martyrs'' Memorial is the national monument of Bangladesh', 'sriti.jpg', 0, 0),
(17, 'Cox''s Bazar', 'Cox''s Bazar', 'chittagong', 0, 2, 2, 5, 'Cox''s Bazar (Bengali: ????????? Kaksbajar) is a seaside town, a fishing port and district headquarters in Bangladesh.', 'index.jpg', 0, 0),
(18, 'Cox''s Bazar', '', '', 0, 0, 0, 0, '', 'Coxsbazar_sun_2003.jpg', 0, 0),
(19, 'St. Martin''s Island', '', 'Chittagong', 0, 1, 1, 5, '', 'Saint_Martin_Island.jpg', 0, 0),
(20, 'St. Martin''s Island', '', '', 0, 0, 0, 0, '', 'Beauty-Saint-Martins-Island-A-Tropical-Cliché-Laid-Back-Island-in-Bangladesh.jpg', 0, 0),
(21, 'St. Martin''s Island', '', '', 0, 0, 0, 0, '', 'images.jpg', 0, 0),
(22, 'Bandarban District', '', 'chittagong', 0, 1, 3, 5, 'Bandarban (Bengali: ?????????) is a district in South-Eastern Bangladesh , and a part of the Chittagong Division and Chittagong Hill Tracts. Bandarban is regarded as one of the most attractive travel destinations in Bangladesh.', 'Budha-Dhatu-Jadi.jpg', 0, 0),
(23, 'Bandarban District', '', '', 0, 0, 0, 0, '', 'Keokradong-Bandarban.jpg', 0, 0),
(24, 'Bandarban District', '', '', 0, 0, 0, 0, '', 'nafakhum.jpg', 0, 0),
(25, 'Rangamati', 'Rangamati', 'Chittagong', 0, 2, 4, 5, 'Rangamati (Bengali: ??????????) is the administrative headquarters of Rangamati Hil District in the Chittagong Hill Tracts of Bangladesh.', 'Hanging_bridge_in_Rangamati.jpg', 0, 0),
(26, 'Rangamati', '', '', 0, 0, 0, 0, '', 'Kaptai_lake.jpg', 0, 0),
(27, 'Rangamati', '', '', 0, 0, 0, 0, '', 'Kaptai-national-park.jpg', 0, 0),
(28, 'Khagrachari District', 'khagrachari', 'Chittagong', 0, 2, 3, 4, 'Khagrachari (Bengali: ??????????) is a district in south-eastern Bangladesh. It is a part of the Chittagong Division and the Chittagong Hill Tracts', 'Alutila-Mysterious-Cave.jpg', 0, 0),
(29, 'Khagrachari District', '', '', 0, 0, 0, 0, '', 'Richhang-Waterfall-1-1393992868.jpg', 0, 0),
(30, 'Khagrachari District', '', '', 0, 0, 0, 0, '', 'Khagrachari_BangladeshInformation.Info2_.jpg', 0, 0),
(31, 'Patenga beach', 'Chittagong', 'chittagong', 0, 1, 1, 4, 'A tourist attraction near Patenga beach is the Butterfly Park', '1371134012_8073472714_6f9cea89b6_z.jpg', 0, 0),
(32, 'Patenga beach', '', '', 0, 0, 0, 0, '', 'Sunset_at_Patenga_beach.jpg', 0, 0),
(33, 'Foy''s Lake', 'Chittagong', 'Chittagong', 0, 1, 1, 4, 'Foy''s Lake is a human-made lake in Chittagong, Bangladesh.', '8325306.jpg', 0, 0),
(34, 'Foy''s Lake', '', '', 0, 0, 0, 0, '', 'Foys-Lake.jpg', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
