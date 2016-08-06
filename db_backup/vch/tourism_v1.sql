-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2015 at 05:51 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

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
-- Table structure for table `cart_place`
--

CREATE TABLE IF NOT EXISTS `cart_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `cart_place`
--

INSERT INTO `cart_place` (`id`, `cart_id`, `place_id`, `hotel_id`) VALUES
(17, 20, 39, 0),
(18, 20, 40, 0),
(19, 20, 41, 0),
(20, 20, 39, 0),
(21, 20, 40, 0),
(22, 20, 41, 0),
(23, 20, 39, 0),
(24, 20, 40, 0),
(25, 20, 41, 0),
(26, 20, 39, 0),
(27, 20, 40, 0),
(28, 20, 41, 0),
(29, 20, 39, 0),
(30, 20, 40, 0),
(31, 20, 41, 0),
(32, 20, 39, 0),
(33, 20, 40, 0),
(34, 20, 41, 0),
(35, 20, 39, 0),
(36, 20, 40, 0),
(37, 20, 41, 0),
(38, 20, 39, 0),
(39, 20, 40, 0),
(40, 20, 41, 0),
(41, 20, 39, 0),
(42, 20, 40, 0),
(43, 20, 41, 0),
(44, 20, 39, 0),
(45, 20, 40, 0),
(46, 20, 41, 0),
(47, 20, 39, 0),
(48, 20, 40, 0),
(49, 20, 41, 0),
(50, 20, 39, 0),
(51, 20, 40, 0),
(52, 20, 41, 0),
(53, 20, 39, 0),
(54, 20, 40, 0),
(55, 20, 41, 0),
(56, 20, 39, 0),
(57, 20, 40, 0),
(58, 20, 41, 0),
(59, 20, 48, 0),
(60, 20, 49, 0),
(61, 20, 48, 0),
(62, 20, 49, 0),
(63, 20, 50, 0),
(64, 20, 51, 0),
(65, 20, 39, 0),
(66, 20, 40, 0),
(67, 20, 39, 0),
(68, 20, 40, 0),
(69, 20, 39, 0),
(70, 20, 40, 0),
(71, 20, 39, 0),
(72, 20, 40, 0),
(73, 20, 48, 0),
(74, 20, 49, 0),
(75, 20, 50, 0),
(76, 20, 39, 0),
(77, 20, 40, 0),
(78, 20, 41, 0),
(79, 20, 39, 0),
(80, 20, 40, 0),
(81, 20, 41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `place_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(128) NOT NULL,
  `comment_type` varchar(32) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
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
  `description` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `name`, `country`, `continent`, `description`) VALUES
(11, 'Dhaka', 'Bangladesh', 'Asia', 'Dhaka Division is an administrative division within Bangladesh. The capital and largest city is Dhaka. '),
(13, 'Chittagong ', 'Bangladesh', 'Asia', 'Chittagong Division is geographically the l'),
(14, 'Sylhet', 'Bangladesh', 'Asia', 'Sylhet Division , also known as Greater Sy'),
(17, 'Khulna ', 'Bangladesh', 'Asia', 'Khulna Division is one of the seven divisions of Bangladesh and '),
(19, 'Rajshahi', 'Bangladesh', 'Asia', 'Rajshahi Division is one of the seven administrative divisions o'),
(20, 'Cox''s Bazar', 'Bangladesh', 'Asia', 'Cox''s Bazar is a town, a fishing port and district headquarters '),
(22, 'Rangpur', 'Bangladesh', 'Asia', 'Rangpur Division  was formed on 25 January 2010,as Bangladesh''s '),
(23, 'Bandarban', 'Bangladesh', 'Asia', 'Bandarban is a district in South-Eastern Bangladesh, and a part of the Chittagong Division.It is one of the three districts that'),
(24, 'Rangamati', 'Bangladesh', 'Asia', 'Rangamati is a district in South-eastern Bangladesh. It is a part of the Chittagong Hill Tracts. Kaptai has Bangladesh''s only hy'),
(25, 'Sunamganj', 'Bangladesh', 'Asia', 'Sunamganj  is a district located in north-eastern Bangladesh within the Sylhet Division'),
(26, 'Moulvibazar', 'Bangladesh', 'Asia', 'Moulvibazar, also called Maulvibazar, Moulavibazar, and Maulavibazar, is a district of Sylhet Division in North-Eastern Banglade'),
(27, 'Netrakona', 'Bangladesh', 'Asia', 'Netrakona is situated in the northern part of Bangladesh, near the Meghalayan border. There are four main rivers in Netrakona: K'),
(28, 'Kushtia', 'Bangladesh', 'Asia', 'Kushtia  is a district in the Khulna administrative division of western Bangladesh. Kushtia has existed as a separate district s'),
(29, 'Comilla', 'Bangladesh', 'Asia', 'Comilla  is a district of Bangladesh located about 100 kilometers south east of Dhaka. Comilla is bordered by Brahmanbaria and N');

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
('$lat . "," . $long', 13.45, 100.15),
('aggmeda khyang, cox''s bazar', 21.4395, 92.0077),
('armanitola,dhaka', 23.715, 90.4029),
('bandarban,bangladesh', 22.1953, 92.2183),
('cox''s bazar sea beach,bangladesh', 21.4648, 91.9472),
('cox''s bazar,bangladesh', 21.4395, 92.0077),
('dhaka,bangladesh', 23.8103, 90.4125),
('himchari national park,bangladesh', 21.3497, 92.042),
('inani beach,bangladesh', 21.2297, 92.0475),
('laboni beach, cox''s bazar', 21.4293, 91.9684),
('lalbagh, dhaka', 23.719, 90.3881),
('maheshkhali,bangladesh', 21.5192, 91.959),
('nilachal ,bangladesh', 22.167, 92.2131),
('ramu, cox''s bazar', 21.4324, 92.1008),
('ramu,bangladesh', 21.4324, 92.1008),
('savar, bangladesh', 23.8583, 90.2667),
('shoilo propat bandarban,bangladesh', 22.1953, 92.2183);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(32) NOT NULL,
  `place_id` int(32) NOT NULL,
  `hotel_type` varchar(32) NOT NULL,
  `hotel_owner` varchar(32) NOT NULL,
  `hotel_address` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_address` (`hotel_address`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hotel_name`, `place_id`, `hotel_type`, `hotel_owner`, `hotel_address`, `description`) VALUES
(2, 'Pan Pacific Sonargaon Hotel, Dha', 11, 'luxury', 'Pan Pacific', '107 , Kazi Nazrul Islam Avenue  Dhaka, Bangladesh ', 'The Pan Pacific Sonargaon Dhaka hotel is a luxurious hideaway in Dhaka’s exciting downtown, offering guests a calming respite fr'),
(3, 'Ruposhi Bangla Hotel ', 11, 'luxury', 'Ruposhi Bangla Hotel ', '1 Minto Road, Shahbagh, Dhaka,  Bangladesh. ', ' Ruposhi Bangla Hotel (former Dhaka Sheraton Hotel) is in the most prestigious location; just three kilometers from the downtown'),
(4, 'The Westin Hotel', 11, 'moderate', 'The Westin', 'Main Gulshan Avenue,  Plot-01, Road 45, Gulshan-2  Dhaka-1212, Bangladesh ', ''),
(5, 'Orchard Plaza Hotel ', 11, 'Cheap', 'Orchard group', '71, Nayapaltan, VIP Road  Paltan,  Dhaka 1000, Bangladesh. ', 'he hotel features all the facilities necessary to satisfy the needs of visitors and business executives. The establishment welco'),
(6, 'Hotel Washington ', 11, 'moderate', 'westin group', '56, Gulshan Avenue, Road No. 132  Gulshan - 1  Dhaka - 1212, Bangladesh. ', ''),
(7, 'The Peninsula Chittagong ', 13, 'luxury', 'Square BD', '"Bulbul Centre"  486/B O.R. Nizam Road, CDA Avenue, Chittagong, Bangladesh ', 'The Peninsula Chittagong Limited is a 4-star property in Port City''s upscale GEC Circle, a short 5-minute walk from Central Plaz'),
(8, 'HOTEL AGRABAD ', 13, 'luxury', '', 'Agrabad Commercial Area  Chittagong, Bangladesh', 'Featuring an all year outdoor swimming pool, Aqua Blu, the 4-star Hotel Agrabad also boasts a well-equipped gym and a bar with l');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_image`
--

CREATE TABLE IF NOT EXISTS `hotel_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `hotel_image` varchar(32) NOT NULL,
  `image_details` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hotel_image`
--

INSERT INTO `hotel_image` (`id`, `hotel_id`, `hotel_image`, `image_details`) VALUES
(1, 2, 'download.jpg', 0),
(2, 2, 'download.jpg', 0),
(3, 2, 'lal1.jpg', 34),
(4, 2, 'background_new.jpg', 0),
(5, 2, 'sriti.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rating`
--

CREATE TABLE IF NOT EXISTS `hotel_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `service_quality` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `Cleanliness` int(11) NOT NULL,
  `hotel_safety` int(11) NOT NULL,
  `avarage_rating` int(11) NOT NULL,
  `rating_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `journey_history`
--

CREATE TABLE IF NOT EXISTS `journey_history` (
  `id` int(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `journey_name` varchar(32) NOT NULL,
  `start_date` varchar(32) NOT NULL,
  `end_date` varchar(32) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place_image`
--

CREATE TABLE IF NOT EXISTS `place_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_id` int(11) NOT NULL,
  `place_image` varchar(32) NOT NULL,
  `image_details` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `place_image`
--

INSERT INTO `place_image` (`id`, `place_id`, `place_image`, `image_details`) VALUES
(1, 39, 'ppt.png', ''),
(2, 61, 'Budha-Dhatu-Jadi.jpg', ''),
(3, 58, 'Shoilo-Propat.jpg', ''),
(4, 59, 'Nilachal.jpg', ''),
(5, 60, 'Nilgiri.jpg', ''),
(6, 62, 'bogalake.jpg', ''),
(7, 58, 'rijuk-waterfall-300x239.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `place_rating`
--

CREATE TABLE IF NOT EXISTS `place_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_id` int(11) NOT NULL,
  `natural_beauty` int(11) NOT NULL,
  `cultural_beatuy` int(11) NOT NULL,
  `historical_beauty` int(11) NOT NULL,
  `avarage_rating` float NOT NULL,
  `rating_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `resturant`
--

CREATE TABLE IF NOT EXISTS `resturant` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `resturant_address` varchar(32) NOT NULL,
  `resturant_name` varchar(32) NOT NULL,
  `owner_name` varchar(32) NOT NULL,
  `place_id` int(32) NOT NULL,
  `resturant_image` varchar(32) NOT NULL,
  `resturant_details` varchar(32) NOT NULL,
  `minmum_price` int(32) NOT NULL,
  `maximum_price` int(32) NOT NULL,
  `returant_type` varchar(32) NOT NULL,
  `dining_option` varchar(32) NOT NULL,
  `rating_id` int(32) NOT NULL,
  `comment_id` int(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resturant_address` (`resturant_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tourist_spot`
--

CREATE TABLE IF NOT EXISTS `tourist_spot` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `place_address` varchar(32) NOT NULL,
  `place_name` varchar(32) NOT NULL,
  `cost_of_visit` int(11) NOT NULL,
  `cost_type` varchar(32) NOT NULL,
  `description` varchar(250) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `place_address` (`place_address`),
  KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`id`, `did`, `place_address`, `place_name`, `cost_of_visit`, `cost_type`, `description`, `comment_id`) VALUES
(38, 13, 'chitagong', 'Patenga beach', 120, 'cheap', 'A tourist attraction near Patenga beach is the Butterfly Park', 0),
(39, 11, 'Lalbagh, Dhaka', 'Lalbagh Fort', 500, 'cheap', 'Built in 1678 by the Viceroy of Bengal, it contains a three-domed mosque, the tomb of Pari Bibi, the reputed daughter of Nawab Shaista Khan, the Audience Hall and the hammam of the Governor. Four Kilometres from the hotel. Ahsan Manzil Palace Museum ', 0),
(40, 11, 'Savar, Bangladesh', 'Jatiyo Sriti Shoudho', 600, 'cheap', 'Jatiyo Sriti Shoudho or National Martyrs'' Memorial is the national monument of Bangladesh is the symbol in the memory of the valour and the sacrifice of all those who gave their lives in the Bangladesh ', 0),
(41, 11, 'Armanitola,Dhaka', 'Star Mosque', 500, 'cheap', 'Star Mosque, is a mosque located in Armanitola area, Dhaka, Bangladesh. The mosque has ornate designs and is decorated with motifs of blue stars. It was built in the first half of the 19th century by Mirza Golam Pir.', 0),
(42, 11, 'Rahmatganj, Dhaka', 'Bara Katra', 600, 'cheap', 'Bara Katra is a historical and architectural monument located in the city of Dhaka, Bangladesh.‘Katra/ katara’ in Arabic and Persian means ‘Caravan Sarai’ or simply a ‘Sarai’', 0),
(43, 11, 'Bakshi Bazar, Dhaka', 'Hussaini Dalan', 400, 'cheap', 'The Hussaini Dalan was originally built during the later half of the Mughal rule in Dhaka. It was built as the Imambara or house of the imam of the Shia community.', 0),
(44, 11, 'Kumartoli,Dhaka ', 'Ahsan Manzil', 600, 'cheap', 'Ahsan Manzil was the official residential palace and seat of the Dhaka Nawab Family. This magnificent building is situated at Kumartoli along the banks of the Buriganga River in Dhaka, Bangladesh.', 0),
(45, 29, 'Mainamati,Commila', 'Mainamati', 1500, 'cheap', 'Mainamati  is an isolated low, dimpled range of hills, dotted -with more than 50 ancient Buddhist settlements of the 8th to 12th century A.D. It is extended through the centre of the district of Comilla. Mainamati is located almost 8 miles from the t', 0),
(46, 29, ' East Bibirbazar Road,Comilla', 'Comilla Jagannath Temple', 1000, 'cheap', 'Comilla Jagannath Temple, also known as "Saptaratna Mandir", is a temple dedicated to the Hindu God Jagannath in Comilla, Bangladesh. It dates back to the 16th century, and was built by Sree Sreejoktou Moharaja Rada Kishor Manikuo Bahadur, who was th', 0),
(47, 13, 'Patenga,Chittagong', 'Patenga', 2000, 'Moderate', 'Patenga is a sea beach located 14 kilometres south of the port city of Chittagong, Bangladesh. It is near the mouth of the Karnaphuli River.', 0),
(48, 20, 'laboni beach, cox''s bazar', 'Cox''s Bazar sea beach', 3000, 'Moderate', 'The beach is the main attraction of the Cox''s Bazar. Larger hotels provide exclusive beachside area with accessories for the hotel guests. Visitors in other hotels visit the Laboni beach which is the area of the beach closest to the town.', 0),
(49, 20, 'Himchari National Park, cox''s ba', 'Himchari National Park', 3000, 'Moderate', 'Himchari is located just south of the Cox’s Bazar town. It consists of lush tropical rain forest, grasslands and trees, and features a number of waterfalls, the biggest of which cascades down toward the sandy, sun-drenched beach. The National Park wa', 0),
(50, 20, 'Aggmeda Khyang, cox''s bazar', 'Aggmeda Khyang', 3000, 'Moderate', 'Aggmeda Khyang: a large Buddhist monastery, and a place revered by around 400,000 Buddhist people of Cox’s Bazar; and the Chittagong Hill Tracts. The main sanctuary is posted on a series of round timber columns. It has a prayer chamber and an assembl', 0),
(51, 20, 'Ramu, cox''s bazar', 'Ramu', 3000, 'Moderate', 'Ramu is about 10 km from Cox’s Bazar, is a village with a sizeable Buddhist population. The village is famous for its handicrafts and homemade cigars. There are monasteries, khyangs and pagodas containing images of Buddha in bronze, gold and other me', 0),
(52, 20, 'Inani Beach, cox''s bazar', 'Inani Beach', 3500, 'Moderate', 'Inani Beach is another magnificent place to see. Inani is full of stony beach and the calmness and serenity of Inani is mind blowing. Don''t miss the chance to visit Inani while going to Cox''s Bazar.', 0),
(53, 20, 'Maheshkhali, cox''s bazar', 'Maheshkhali', 4000, 'Moderate', 'Maheshkhali is a small island (268 square kilometres) off the Cox’s Bazar coast. The island offers panoramic scenic beauty and is covered by a range of low hills, about 300 feet (91 m) high, streatches through the center of the island and along its e', 0),
(54, 20, 'Sonadia Island, cox''s bazar', 'Sonadia Island', 4500, 'Moderate', 'Sonadia Island, a small crescent shaped island of only 9 square kilometres, it is 7-km north-west of Cox''s Bazar. The western side of the island is sandy and different kinds of shells are found on the beach. Off the northern part of the island, there', 0),
(55, 20, 'Teknaf, cox''s bazar', 'Teknaf', 5000, 'Moderate', 'Teknaf, a place situated by the side of Naf river is the southernmost part of mainland Bangladesh. This also marks the end point of Cox''s Bazar beach. Tourists usually come here to have a river cruise along beautiful Naf river, which flows between Ba', 0),
(56, 20, 'St. Martin''s Island , cox''s baza', 'St. Martin''s Island ', 7000, 'Luxury', 'St. Martin''s Island is a small island in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox''s Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh', 0),
(57, 20, 'Kutubdia, cox''s bazar', 'Kutubdia', 5000, 'Moderate', 'Kutubdia is an Upazila of Cox''s Bazar District in the Division of Chittagong, Bangladesh. The upazila consists of an island in the Bay of Bengal, off the coast near Chakaria, Cox''s Bazar', 0),
(58, 23, 'Shaila Propat , Bandarban', 'Shoilo Propat Bandarban', 7000, 'luxury', 'Shoilo Propat:the waterfall named Shoilo Propat at Milanchari, It is a excellent site maintained by Bangladesh Parjatan, the national tourism promotion corporation.It is 8km away from Bandarban town on the Bandarban Ruma road. This is one of the most', 0),
(59, 23, 'Nilachal , Bandarban', 'Nilachal ', 7000, 'Luxary', 'Nilachal is the nearest tourist spot from Bandarban. It is situated at Tigerpara. It is near about 2000 feet above of sea level and 5 kilometer away from the Bandarban town. From here visitor can see the total glance of Bandarban town and a vast land', 0),
(60, 23, 'Nilgiri , Bandarban', 'Nilgiri ', 6000, 'Moderate', 'Nilgiri or Nil Giri is one of the tallest peaks and beautiful tourist spot in Bangladesh. It is about 3500 feet high and situated at Thanci Thana. It is about 46 km south of Bandarban on the Bandarban-Chimbuk-Thanchi road.', 0),
(61, 23, 'Buddha Dhatu Jadi , Bandarban', 'Buddha Dhatu Jadi(Golden Temple)', 6000, 'Moderate', 'The Buddha Dhatu Jadi (also known as the Bandarban Golden Temple) is located close to Balaghata town, in Bandarban City, in Bangladesh. Dhatu are the material remains of a holy person, and in this temple the relics belong to Buddha. It is the largest', 0),
(62, 23, 'Boga Lake,Bandarban', 'Boga Lake', 7000, 'Luxary', 'Bagakain Lake, also called Baga Lake or Boga Lake, is a lake located in Ruma Upazila in the hill district Bandarban, Bangladesh.It is a natural sweet and deep water lake. Its height from sea level is nearly 2,000 feet (610 m). Geologists believe that', 0);

-- --------------------------------------------------------

--
-- Table structure for table `traveler_cart`
--

CREATE TABLE IF NOT EXISTS `traveler_cart` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `center` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `traveler_cart`
--

INSERT INTO `traveler_cart` (`id`, `user_id`, `center`) VALUES
(20, 35, 'Dhaka,Bangladesh'),
(21, 35, 'Dhaka,Bangladesh'),
(22, 35, 'Dhaka,Bangladesh'),
(23, 35, 'Dhaka,Bangladesh'),
(24, 35, 'Dhaka,Bangladesh'),
(25, 35, 'Dhaka,Bangladesh'),
(26, 35, 'Dhaka,Bangladesh'),
(27, 35, 'Dhaka,Bangladesh'),
(28, 35, 'Dhaka,Bangladesh'),
(29, 35, 'Dhaka,Bangladesh'),
(30, 35, 'Dhaka,Bangladesh'),
(31, 35, 'Dhaka,Bangladesh'),
(32, 35, 'Dhaka,Bangladesh'),
(33, 35, 'Dhaka,Bangladesh'),
(34, 35, 'Dhaka,Bangladesh'),
(35, 35, 'Cox''s Bazar,Bangladesh'),
(36, 35, 'Cox''s Bazar,Bangladesh'),
(37, 35, 'Cox''s Bazar,Bangladesh'),
(38, 35, 'Dhaka,Bangladesh'),
(39, 35, 'Dhaka,Bangladesh'),
(40, 35, 'Dhaka,Bangladesh'),
(41, 35, 'Dhaka,Bangladesh'),
(42, 35, 'Cox''s Bazar,Bangladesh'),
(43, 35, 'Dhaka,Bangladesh'),
(44, 35, 'Dhaka,Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(32) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `contact_email` varchar(32) NOT NULL,
  `password` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL,
  `fullName` varchar(32) NOT NULL,
  `current_location` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `current_location` (`current_location`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `address`, `contact_number`, `contact_email`, `password`, `category_id`, `fullName`, `current_location`) VALUES
(35, 'Rampura Banshri', 0, 'jahid.tn@gmail.com', '123123', 1, 'Jahidul Haque', 'Dhaka'),
(39, 'cbxchjbd ', 0, 'jahid.tn@yahoo.com', '123456', 1, 'jahid', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE IF NOT EXISTS `user_category` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(132) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user_category`
--

INSERT INTO `user_category` (`id`, `category_name`) VALUES
(1, 'Adventurus Traveler'),
(2, 'Coast & Island Lover'),
(3, 'art & design lover'),
(4, 'Budget Traveler'),
(5, 'Business Traveler'),
(6, 'Family Traveler'),
(7, 'Foodies'),
(8, 'Natural Beauty & Wildlife Lover'),
(9, 'History Lover'),
(10, 'Luxury Traveler'),
(11, 'Spiritual Seeker'),
(12, 'Student');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_place`
--
ALTER TABLE `cart_place`
  ADD CONSTRAINT `cart_place_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `traveler_cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel_image`
--
ALTER TABLE `hotel_image`
  ADD CONSTRAINT `hotel_image_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD CONSTRAINT `journey_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `place_image`
--
ALTER TABLE `place_image`
  ADD CONSTRAINT `place_image_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `tourist_spot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  ADD CONSTRAINT `tourist_spot_ibfk_1` FOREIGN KEY (`did`) REFERENCES `destination` (`id`);

--
-- Constraints for table `traveler_cart`
--
ALTER TABLE `traveler_cart`
  ADD CONSTRAINT `traveler_cart_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `user_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
