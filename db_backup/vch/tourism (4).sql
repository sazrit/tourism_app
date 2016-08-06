-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2015 at 04:31 PM
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
  `division` varchar(32) NOT NULL,
  `description` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `name`, `country`, `continent`, `division`, `description`) VALUES
(11, 'Dhaka', 'Bangladesh', 'Asia', 'Dhaka', 'Dhaka Division is an administrative division within Bangladesh. The capital and largest city is Dhaka. '),
(13, 'Chittagong ', 'Bangladesh', 'Asia', 'Chittagong', 'Chittagong Division is geographically the l'),
(14, 'Sylhet', 'Bangladesh', 'Asia', 'Sylhet', 'Sylhet Division , also known as Greater Sy'),
(17, 'Khulna ', 'Bangladesh', 'Asia', 'Khulna ', 'Khulna Division is one of the seven divisions of Bangladesh and '),
(19, 'Rajshahi', 'Bangladesh', 'Asia', 'Rajshahi', 'Rajshahi Division is one of the seven administrative divisions o'),
(20, 'Cox''s Bazar', 'Bangladesh', 'Asia', 'Chittagong', 'Cox''s Bazar is a town, a fishing port and district headquarters '),
(22, 'Rangpur', 'Bangladesh', 'Asia', 'Rajshahi', 'Rangpur Division  was formed on 25 January 2010,as Bangladesh''s '),
(23, 'Bandarban', 'Bangladesh', 'Asia', 'Chittagong', 'Bandarban is a district in South-Eastern Bangladesh, and a part of the Chittagong Division.It is one of the three districts that'),
(24, 'Rangamati', 'Bangladesh', 'Asia', 'Chittagong', 'Rangamati is a district in South-eastern Bangladesh. It is a part of the Chittagong Hill Tracts. Kaptai has Bangladesh''s only hy'),
(25, 'Sunamganj', 'Bangladesh', 'Asia', 'Sylhet', 'Sunamganj  is a district located in north-eastern Bangladesh within the Sylhet Division'),
(26, 'Moulvibazar', 'Bangladesh', 'Asia', 'Sylhet', 'Moulvibazar, also called Maulvibazar, Moulavibazar, and Maulavibazar, is a district of Sylhet Division in North-Eastern Banglade'),
(27, 'Netrakona', 'Bangladesh', 'Asia', 'Dhaka', 'Netrakona is situated in the northern part of Bangladesh, near the Meghalayan border. There are four main rivers in Netrakona: K'),
(28, 'Kushtia', 'Bangladesh', 'Asia', 'Khulna', 'Kushtia  is a district in the Khulna administrative division of western Bangladesh. Kushtia has existed as a separate district s'),
(29, 'Comilla', 'Bangladesh', 'Asia', 'Chittagong', 'Comilla  is a district of Bangladesh located about 100 kilometers south east of Dhaka. Comilla is bordered by Brahmanbaria and N');

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
(',bangladesh', 23.685, 90.3563),
('1 minto road, shahbagh, dhaka,  bangladesh,bangladesh', 23.7423, 90.399),
('107 , kazi nazrul islam avenue  dhaka, bangladesh ,bangladesh', 23.7493, 90.3945),
('aggmeda khyang, cox''s bazar', 21.4395, 92.0077),
('aggmeda khyang, cox''s bazar,bangladesh', 21.4395, 92.0077),
('armanitola,dhaka', 23.715, 90.4029),
('bandarban,bangladesh', 22.1953, 92.2183),
('boga lake,bandarban,bangladesh', 21.9803, 92.47),
('buddha dhatu jadi , bandarban,bangladesh', 22.2227, 92.1974),
('cox''s bazar sea beach,bangladesh', 21.4648, 91.9472),
('cox''s bazar,bangladesh', 21.4395, 92.0077),
('cox''s%20bazar,bangladesh,bangladesh', 21.3925, 92.0008),
('dhaka,bangladesh', 23.8103, 90.4125),
('dhaka,bangladesh,bangladesh', 23.8103, 90.4125),
('himchari national park,bangladesh', 21.3497, 92.042),
('inani beach, cox''s bazar,bangladesh', 21.2297, 92.0475),
('inani beach,bangladesh', 21.2297, 92.0475),
('laboni beach, cox''s bazar', 21.4293, 91.9684),
('laboni beach, cox''s bazar,bangladesh', 21.442, 91.9684),
('lalbagh, dhaka', 23.719, 90.3881),
('lalbagh, dhaka,bangladesh', 23.719, 90.3881),
('maheshkhali, cox''s bazar,bangladesh', 21.5225, 91.9583),
('maheshkhali,bangladesh', 21.5192, 91.959),
('mainamati,commila,bangladesh', 23.4823, 91.1171),
('nilachal , bandarban', 22.167, 92.2131),
('nilachal ,bangladesh', 22.167, 92.2131),
('nilgiri , bandarban', 21.9924, 92.2953),
('nilgiri , bandarban,bangladesh', 21.9924, 92.2953),
('rahmatganj, dhaka', 23.7137, 90.3949),
('ramu, cox''s bazar', 21.4324, 92.1008),
('ramu,bangladesh', 21.4324, 92.1008),
('savar, bangladesh', 23.8583, 90.2667),
('shaila propat , bandarban', 22.1508, 92.2167),
('shaila propat , bandarban,bangladesh', 22.1508, 92.2167),
('shoilo propat bandarban,bangladesh', 22.1953, 92.2183);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(128) NOT NULL,
  `place_id` int(32) NOT NULL,
  `Did` int(11) NOT NULL,
  `hotel_type` varchar(32) NOT NULL,
  `hotel_owner` varchar(32) NOT NULL,
  `hotel_address` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_address` (`hotel_address`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hotel_name`, `place_id`, `Did`, `hotel_type`, `hotel_owner`, `hotel_address`, `description`) VALUES
(2, 'Pan Pacific Sonargaon Hotel, Dhaka', 0, 11, 'luxury', 'Pan Pacific', '107 , Kazi Nazrul Islam Avenue  Dhaka, Bangladesh ', 'The Pan Pacific Sonargaon Dhaka hotel is a luxurious hideaway in Dhaka’s exciting downtown, offering guests a calming respite fr'),
(3, 'Ruposhi Bangla Hotel ', 0, 11, 'luxury', 'Ruposhi Bangla Hotel ', '1 Minto Road, Shahbagh, Dhaka,  Bangladesh. ', ' Ruposhi Bangla Hotel (former Dhaka Sheraton Hotel) is in the most prestigious location; just three kilometers from the downtown'),
(4, 'The Westin Hotel', 0, 11, 'Luxury', 'The Westin', 'Main Gulshan Avenue,  Plot-01, Road 45, Gulshan-2  Dhaka-1212, Bangladesh ', ''),
(5, 'Orchard Plaza Hotel ', 0, 11, 'Cheap', 'Orchard group', '71, Nayapaltan, VIP Road  Paltan,  Dhaka 1000, Bangladesh. ', 'he hotel features all the facilities necessary to satisfy the needs of visitors and business executives. The establishment welco'),
(6, 'Hotel Washington ', 0, 11, 'moderate', 'westin group', '56, Gulshan Avenue, Road No. 132  Gulshan - 1  Dhaka - 1212, Bangladesh. ', ''),
(7, 'The Peninsula Chittagong ', 0, 13, 'luxury', 'Square BD', '"Bulbul Centre"  486/B O.R. Nizam Road, CDA Avenue, Chittagong, Bangladesh ', 'The Peninsula Chittagong Limited is a 4-star property in Port City''s upscale GEC Circle, a short 5-minute walk from Central Plaz'),
(8, 'HOTEL AGRABAD ', 0, 13, 'luxury', '', 'Agrabad Commercial Area  Chittagong, Bangladesh', 'Featuring an all year outdoor swimming pool, Aqua Blu, the 4-star Hotel Agrabad also boasts a well-equipped gym and a bar with l'),
(9, 'Four points by Sheraton ', 0, 11, 'Luxury', '', 'House - 16 B, Road –35, Gulshan – 2, Dhaka 1212, Bangladesh', ''),
(10, 'Marino Hotel', 0, 11, 'cheap', '', 'House - 46, Road – 18, Block – J, Banani, Dhaka – 1213, Bangladesh.', ''),
(11, 'Amari Dhaka', 0, 11, 'Luxury', '', '47, Road No 41, Gulshan-2, Dhaka City, Dhaka Division, Bangladesh', ''),
(12, 'Hotel Sharina', 0, 11, 'Luxury', '', 'Plot#27, Road#17, Bir Uttam Aminul Haque Sarak, Dhaka', ''),
(13, 'Lake Shore Hotel', 0, 11, 'Luxury', '', 'Road # 41, House # 46, Gulshan 2, Dhaka', ''),
(14, 'Innotel Business Boutique', 0, 11, 'Moderate', '', 'House-23, 10 Enamul Hoq Chowdhury Road, Dhaka 1213', ''),
(15, 'Radisson Blue Dhaka', 0, 11, 'Luxury', '', ' Airport Road, Dhaka Cantonment, Dhaka 1206', ''),
(16, 'Swiss Garden', 0, 11, 'Moderate', '', 'Road # 13, House # 89, Block-D, Banani, Dhaka 1213', ''),
(18, 'Hotel Civic Inn', 0, 11, 'Cheap', '', '4/B, Dhaka 1212', ''),
(20, 'Holiday Villa Gram', 0, 11, 'Moderate', '', 'Road No. # 7, House No. # SW (E) 1A/2,, Gulshan 1 Model Town,, Dhaka 1212', ''),
(21, 'Richmond Hotel', 0, 11, 'Cheap', '', ' House-02, Road-10, Sector-01, Uttara, Dhaka 1230', ''),
(22, 'Hotel Lake Castle', 0, 11, 'Luxury', '', 'Rd No 68A, Dhaka', ''),
(23, 'Purbani International', 0, 11, 'Luxury', '', '1 Dilkusha Rd, Dhaka 1000', ''),
(24, 'Platinum Suites', 0, 11, 'Luxury', '', 'Plot # 58, Road No.11, Bock-F, Banani? Dhaka 1213', ''),
(25, 'Sweet Dream', 0, 11, 'Moderate', '', '60 Kemal Ataturk Avenue Dhaka', ''),
(26, 'Grand Oriental', 0, 11, 'Moderate', '', 'Plot: 1/B, Road: 23, Gulshan-1. Dhaka-1212. Bangladesh	', ''),
(27, 'Hotel Centre Point', 0, 11, 'Cheap', '', 'House # 2/A, Road # 95, Gulshan-2, Dhaka-1212.', ''),
(28, 'Grand price Hotel', 0, 11, 'Cheap', '', 'Paradise Plaza, Com. Plot # 6 and 11,  Block-B, Mirpur-1, Dhaka-1216, Bangladesh', 'The Grand Prince Hotel is conveniently located within walking distance (less then 1 km) from Grameen Bank. Nearby attractions in'),
(29, 'Hotel Victory', 0, 11, 'Cheap', '', '30/A VIP Road, Naya Paltan, Dhaka', ''),
(30, 'The Orchard Suits LTD', 0, 11, 'Moderate', '', 'House No. 90, Rd No 13A, Dhaka 1213', ''),
(31, 'Favour Inn', 0, 13, 'Cheap', '', '69,Station Road, Chittagong 4300', ''),
(34, 'The Avenue And Suites', 0, 13, 'Cheap', '', 'Ispahani Moor, Lalkhan Bazar, Chittagong', ''),
(35, 'Hotel Tower Inn', 0, 13, 'Moderate', '', '183, Jubilee Road, Chittagong, Chittagong, Bangladesh', ''),
(36, 'Hotel Lord’s Inn', 0, 13, 'Moderate', '', 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', ''),
(37, 'Royal Perk Residential Hotel', 0, 13, 'Cheap', '', 'CDA Ave, Chittagong', ''),
(38, 'Meridian Hotel And Restaurant', 0, 13, 'Cheap', '', '1367 CDA Ave, Chittagong', ''),
(39, 'Hotel Saint Martin ltd', 0, 13, 'Moderate', '', '25,SHEIKH MUJIB ROAD, AGRABAD C/A, Chittagong, Chittagong, Bangladesh', 'Saint Martin limited is the name of a luxurious category Hotel which is located at the heart of Agrabad Commercial Area in Chitt'),
(40, 'Hotel Sea Palace Ltd', 0, 20, 'Luxury', '', 'Kalatoli Road,, Cox''s Bazar', ''),
(41, 'Hotel Sea Crown', 0, 20, 'Luxury', '', 'Plot # 11 (A), Block # C, Saikat Residential Area  Kolatali Road, Cox''s Bazar, Bangladesh', ''),
(42, 'Shahjadi Resort', 0, 20, 'Cheap', '', 'New Sea Beach, Kalatali More, Cox''s Bazar	', ''),
(43, 'Hotel Coral Reef', 0, 20, 'Moderate', '', '4700 Cox''s Bazar, Plot # 47, Block # B, Kalatali', ''),
(44, 'Hotel Mishuk', 0, 20, 'Moderate', '', 'Hotel Motel Zone, Sea Beach Road Cox’s Bazar, Bangladesh', ''),
(45, 'Seagull Hotel', 0, 20, 'Luxury', '', 'Hotel Motel Zone, Sea Beach Road Cox’s Bazar, Bangladesh', ''),
(46, 'Praasad Paradise', 0, 20, 'Luxury', '', 'Plot-9, New Beach Road, Cox''s Baazar', ''),
(47, 'Honeymoon Resort', 0, 20, 'Cheap', '', 'New Beach Rd, Cox''s Bazar', ''),
(48, 'Sugandha Guest House', 0, 20, 'Cheap', '', 'Kalatali Road, Cox''s Bazar, Bangladesh', ''),
(49, 'C.T.B Resort', 56, 20, 'Cheap', '', 'Kalatali Road, Cox''s Bazar, Bangladesh', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_image`
--

CREATE TABLE IF NOT EXISTS `hotel_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `hotel_image` varchar(128) NOT NULL,
  `image_details` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `hotel_image`
--

INSERT INTO `hotel_image` (`id`, `hotel_id`, `hotel_image`, `image_details`) VALUES
(8, 4, 'westine.jpg', 0),
(10, 9, 'four_points_by_sheraton.jpg', 0),
(14, 8, '295514_120116175528_std.jpg', 0),
(15, 8, 'Agrabad_Hotel.jpg', 0),
(16, 8, 'insite image of hotel agrabad chittagong.jpg', 0),
(17, 2, 'dhaka-city.jpg', 0),
(18, 2, 'Guestroom_property_banner.jpg', 0),
(19, 2, 'hotelview.jpg', 0),
(20, 2, 'pan-pacific-dhaka-large.jpg', 0),
(21, 3, 'leonardo-1099516-H1EI3L0U_P-image.jpg', 0),
(22, 3, 'Ruposhi_Bangla_Hotel_2.jpg', 0),
(23, 4, 'Guest_room_F_2.jpg', 0),
(24, 4, 'Hotel-The-Westin-Dhaka.jpg', 0),
(25, 4, 'prego-at-the-westin-dhaka.jpg', 0),
(26, 5, 'hotel-orchard-plaza.jpg', 0),
(27, 6, '5.jpg', 0),
(28, 6, 'getlstd-property-photo-1391598210.jpg', 0),
(29, 6, 'SAM_01631-672x372.jpg', 0),
(30, 7, '11513859_w.jpg', 0),
(31, 7, 'peninsula.jpg', 0),
(32, 7, 'the-peninsula-chittagong.jpg', 0),
(33, 9, 'four-points-by-sheraton.jpg', 0),
(34, 10, '9733112_11_z.jpg', 0),
(35, 10, '9733125_3_z.jpg', 0),
(36, 10, 'marino-hotel-uttara.jpg', 0),
(37, 11, 'amari-residences-bangkok.jpg', 0),
(38, 11, 'entrance.jpg', 0),
(39, 12, '42036013.jpg', 0),
(40, 12, 'Sarina Dhaka 2.jpg', 0),
(41, 13, '293800_Main.jpg', 0),
(42, 13, '1410948411_1390366295_4.jpg', 0),
(43, 13, 'DSC01235.jpg', 0),
(44, 13, 'lakeshore-hotel-apartments.jpg', 0),
(45, 14, '2.jpg', 0),
(46, 14, '8.jpg', 0),
(47, 14, 'ean-452927-7782501_14_b-image.jpg', 0),
(48, 15, 'BANDHAKA_Lobby_978x385.jpg', 0),
(49, 15, 'room2.jpg', 0),
(50, 16, '9845749.jpg', 0),
(51, 16, '22711597.jpg', 0),
(52, 16, 'hotel-swiss-garden.jpg', 0),
(53, 18, '37837337.jpg', 0),
(54, 20, 'images.jpg', 0),
(55, 20, 'index.2.jpg', 0),
(56, 20, 'index.jpg', 0),
(57, 21, 'getlstd-property-photo.jpg', 0),
(58, 21, 'richmond-hotel-suites.jpg', 0),
(59, 22, 'hotel-de-castle.jpg', 0),
(60, 23, 'bed-room.jpg', 0),
(61, 23, 'purbani hotel.jpg', 0),
(62, 24, '1.jpg', 0),
(63, 24, 'Platinum_hotel-Dhaka.jpg', 0),
(64, 25, '13823855.jpg', 0),
(65, 26, '31929782.jpg', 0),
(66, 26, '38484599.jpg', 0),
(67, 27, 'center-point-hotel.jpg', 0),
(68, 27, '-visit_to_Hotel_Center.jpg', 0),
(69, 28, '7676588_1_y.jpg', 0),
(70, 28, 'giant_17277.jpg', 0),
(71, 29, '19170797.jpg', 0),
(72, 29, '20366329.jpg', 0),
(73, 30, '22984173.jpg', 0),
(74, 30, 'the-orchard-suites-ltd-dhaka-image-53ab26a4e4b0710760d84f69.jpg', 0),
(75, 31, '5_12.jpg', 0),
(76, 31, '65589122.jpg', 0),
(77, 34, '191_600320_112074242320774_1357597871_na.jpg', 0),
(78, 34, 'executive-suite-room.jpg', 0),
(79, 35, 'grand-tower-inn-rama.jpg', 0),
(80, 35, 'tower_inn.jpg', 0),
(81, 35, 'tower-inn-chittagong-big1.jpg', 0),
(82, 36, '5_img.jpg', 0),
(83, 36, 'faisal.jpg', 0),
(84, 36, 'images.jpg', 0),
(85, 37, 'Royal-Park.jpg', 0),
(86, 38, '13_img.jpg', 0),
(87, 38, 'orchid-business-hotel.jpg', 0),
(88, 38, 'orig_6f7bb2ea5fc73e4cf5ea315f72c090df4d1c666d.jpg', 0),
(89, 40, 'roomandsuits_photo9.jpg', 0),
(90, 41, '18.jpg', 0),
(91, 41, '39535883.jpg', 0),
(92, 41, 'sea-view-from-the-room.jpg', 0),
(93, 43, '19171125.jpg', 0),
(94, 43, 'images.jpg', 0),
(95, 43, 'thumb.php.jpg', 0),
(96, 44, '590x2606.jpg', 0),
(97, 45, '1408964616_1379837208_6951.jpg', 0),
(98, 45, 'seagull-cox-s-bazar.jpg', 0),
(99, 45, 'seagullhotel-room.jpg', 0),
(100, 45, 'spool01 - Copy.jpg', 0),
(101, 46, '31_Jerbera-Restaurant.jpg', 0),
(102, 46, 'hotelpanorama.jpg', 0),
(103, 46, 'praasad-paradise.jpg', 0),
(104, 47, '544723_122434054578841_1584028433_n.jpg', 0),
(105, 48, '0_img.jpg', 0),
(106, 48, 'images.jpg', 0),
(107, 49, 'albatross-resort.jpg', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hotel_rating`
--

INSERT INTO `hotel_rating` (`id`, `hotel_id`, `service_quality`, `location`, `Cleanliness`, `hotel_safety`, `avarage_rating`, `rating_status`) VALUES
(1, 2, 9, 0, 9, 9, 10, 0),
(2, 3, 8, 0, 9, 8, 9, 0),
(3, 7, 9, 0, 9, 10, 10, 0),
(4, 8, 10, 9, 9, 10, 10, 0);

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
  `place_image` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `place_image`
--

INSERT INTO `place_image` (`id`, `place_id`, `place_image`) VALUES
(14, 38, '38_1.jpg'),
(15, 39, 'lal11.jpg'),
(16, 40, 'Sriti_soudho_-1.png'),
(17, 40, 'sriti2.jpg'),
(18, 41, 'star_mosque_inside.0_.jpg'),
(19, 42, '25_Bara+Katra_150913.jpg'),
(20, 43, 'stock-photo-dhaka-bangladesh-december-hussaini-dalan-on-december-in-dhaka-bangladesh-hussaini-123876601.jpg'),
(21, 43, 'Hussaini_Dalan_2010-05-09.jpg'),
(22, 44, 'Ahsan_Manjil_in_Pink.jpg'),
(23, 44, 'ahsan.jpg'),
(24, 45, 'Mainamati_Comilla_04.jpg'),
(25, 45, 'Mainamati_Comilla_01.jpg'),
(26, 46, '1.jpg'),
(27, 46, 'Main_Temple,_Jagannath_Temple,_Chennai.jpg'),
(28, 48, 'dsc00389vq.jpg'),
(29, 48, 'coxsbazar1.jpg'),
(30, 48, '400px-Sunsetatcoxsbazar.jpg'),
(31, 48, 'cox-bazar-beach.jpg'),
(32, 48, 'Cox''s_Bazar_boats.jpg'),
(33, 49, 'him1.jpg'),
(34, 49, 'him2.jpg'),
(35, 49, '800px-Himchari_1.jpg'),
(36, 50, 'Aggmeda-Khyang.jpg'),
(37, 51, 'Ramu-Coxs-Bazar.jpg'),
(38, 51, 'Ramu+2.jpg'),
(39, 51, 'arm1.JPG'),
(40, 52, 'i3.JPG'),
(41, 52, 'io2.JPG'),
(42, 53, 'Way_to_coxs_Bazar_from_Moheshkhali.JPG'),
(43, 53, 'images.jpg'),
(44, 54, 'sonadia.JPG'),
(45, 54, 'sonadia1.JPG'),
(46, 55, 'Teknaf.jpg'),
(47, 55, 'teknaf1.JPG'),
(48, 55, 'teknaf2.JPG'),
(49, 55, 'teknaf3.JPG'),
(50, 55, 'teknaf4.JPG'),
(51, 56, 'Capture1.JPG'),
(52, 56, 'Capture2.JPG'),
(53, 56, 'Capture3.JPG'),
(54, 56, 'Capture4.JPG'),
(55, 56, 'Capture5.JPG'),
(56, 56, 'Capture6.JPG'),
(57, 56, 'Capture7.JPG'),
(58, 57, 'Capture2.JPG'),
(59, 57, 'kutub1.JPG'),
(60, 58, '8181277_orig.jpg'),
(61, 58, 'rijuk-waterfall-300x239.jpg'),
(62, 58, 'Shoilo-Propat.jpg'),
(63, 59, 'Nilachal.jpg'),
(64, 59, '14903588097_3c8e0939df_b.jpg'),
(65, 59, 'nilachal1.JPG'),
(67, 60, '7950934350_11324af642_b.jpg'),
(68, 60, 'Nilgiri.jpg'),
(69, 60, 'nilgiri2.jpg'),
(70, 60, 'nilgiri-resort-bandarban-bangladesh03.jpg'),
(71, 61, '122204559.AP6Koa9c_.BuddhasonBuddhaDhatuJadi2_.jpg'),
(72, 61, 'Budha-Dhatu-Jadi.jpg'),
(73, 61, 'Budha-Dhatu-Jadi1.jpg'),
(74, 61, 'cx3.png'),
(75, 62, '8181277_orig.jpg'),
(76, 62, '8325306.jpg'),
(77, 62, 'images4.jpg'),
(78, 62, 'boga lake.JPG'),
(79, 62, 'boga_lake1.JPG'),
(80, 63, 'shaheedminer1.JPG'),
(81, 63, 'shahid.jpg'),
(82, 64, '466px-Sangshad_inside.jpg'),
(83, 64, '800px-Jatiyo_Sangsad_Bhaban_Close_view.jpg'),
(84, 64, 'newim1.JPG'),
(85, 65, 'Hanging_bridge_in_Rangamati.jpg'),
(86, 65, 'Kaptai_lake.jpg'),
(87, 65, 'Kaptai-national-park.jpg'),
(88, 66, 'alutila.jpg'),
(89, 66, 'Alutila-Mysterious-Cave.jpg'),
(90, 66, 'Khagrachari_BangladeshInformation.Info2_.jpg'),
(91, 66, 'Richhang-Waterfall-1-1393992868.jpg'),
(92, 67, 'Foys-Lake.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `place_rating`
--

CREATE TABLE IF NOT EXISTS `place_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_id` int(11) NOT NULL,
  `natural_beauty` int(32) NOT NULL,
  `cultural_beatuy` int(11) NOT NULL,
  `historical_beauty` int(32) NOT NULL,
  `avarage_rating` float NOT NULL,
  `rating_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(132) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `place_rating`
--

INSERT INTO `place_rating` (`id`, `place_id`, `natural_beauty`, `cultural_beatuy`, `historical_beauty`, `avarage_rating`, `rating_status`, `user_id`, `comment`) VALUES
(1, 47, 8, 4, 4, 6, 1, 0, ''),
(2, 39, 4, 7, 8, 6, 0, 0, ''),
(3, 40, 5, 4, 9, 6, 0, 0, ''),
(4, 41, 4, 5, 6, 5, 0, 0, ''),
(5, 48, 8, 5, 4, 7, 0, 0, ''),
(6, 52, 8, 5, 4, 8, 0, 0, ''),
(7, 53, 8, 5, 4, 7, 1, 0, ''),
(8, 54, 9, 6, 4, 8, 0, 0, ''),
(9, 56, 10, 8, 7, 9, 0, 0, ''),
(10, 59, 10, 7, 6, 9, 0, 0, ''),
(11, 53, 9, 6, 6, 0, 1, 35, 'bbjkcndsgdc xzcvbd x bdiu xbusdcchvsvhsvb ndi'),
(12, 53, 9, 6, 6, 0, 1, 35, 'bbjkcndsgdc xzcvbd x bdiu xbusdcchvsvhsvb ndi'),
(13, 53, 10, 10, 10, 0, 1, 35, 'bbjkcndsgdc xzcvbd x bdiu xbusdcchvsvhsvb ndi'),
(14, 53, 10, 10, 10, 0, 1, 35, 'bbjkcndsgdc xzcvbd x bdiu xbusdcchvsvhsvb ndi'),
(15, 53, 10, 10, 10, 0, 1, 35, 'maheskhali is beautiful');

-- --------------------------------------------------------

--
-- Table structure for table `rcommender`
--

CREATE TABLE IF NOT EXISTS `rcommender` (
  `id` int(32) NOT NULL,
  `natural_value` int(32) NOT NULL,
  `cultural_value` int(32) NOT NULL,
  `historical_value` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rcommender`
--

INSERT INTO `rcommender` (`id`, `natural_value`, `cultural_value`, `historical_value`) VALUES
(1, 5, 4, 2),
(2, 5, 3, 2),
(3, 3, 4, 2),
(4, 1, 2, 1),
(5, 5, 5, 5);

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
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(4) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(128) NOT NULL,
  `admin_email` varchar(64) NOT NULL,
  `admin_password` varchar(64) NOT NULL,
  `admin_role` int(2) NOT NULL,
  `admin_status` int(1) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_role`, `admin_status`) VALUES
(1, 'admin', 'admin', 'admin_123', 1, 0),
(13, 'super', 'super', 'super_123', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

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
(62, 23, 'Boga Lake,Bandarban', 'Boga Lake', 7000, 'Luxary', 'Bagakain Lake, also called Baga Lake or Boga Lake, is a lake located in Ruma Upazila in the hill district Bandarban, Bangladesh.It is a natural sweet and deep water lake. Its height from sea level is nearly 2,000 feet (610 m). Geologists believe that', 0),
(63, 11, 'Shaheed Minar, Dhaka', 'Shaheed Minar', 500, 'cheap', 'The Shaheed Minar  is a national monument in Dhaka, Bangladesh, established to commemorate those killed during the Bengali Language Movement demonstrations of 1952.\n\nOn February 21, 1952, dozens of students and political activists were killed when th', 0),
(64, 11, 'Mohammadpur, Dhaka', 'Jatiya Sangsad', 500, 'cheap', 'Jatiyo Sangsad Bhaban or National Parliament House,  is the house of the Parliament of Bangladesh, located at Sher-e-Bangla Nagar in the Bangladeshi capital of Dhaka. Designed by architect Louis Kahn, the complex, is one of the largest legislative co', 0),
(65, 13, 'Rangamati, Chittagong Division', 'Rangamati', 6000, 'Luxuary', 'Rangamati is a district in South-eastern Bangladesh. It is a part of the Chittagong Division and the town of Rangamati serves as the headquarters of the district. Area-wise, Rangamati is the largest district of the country.', 0),
(66, 13, 'Khagracharii,Chittagong Division', 'Khagrachari', 7000, 'Luxary', 'Khagrachhari is a district in south-eastern Bangladesh. It is a part of the Chittagong Division and the Chittagong Hill Tracts. Its local name is "Chengmi". Khagrachhari is also known as Phalang Htaung or the Mong Circle.', 0),
(67, 13, '', 'Foy''s Lake', 0, '', '', 0),
(68, 13, '', 'Heritage Park', 0, '', '', 0),
(69, 13, '', 'Ethnological Museum of Chittagon', 0, '', '', 0),
(70, 13, '', 'WWII cemetery and Circuit House', 0, '', '', 0),
(71, 19, '', 'Somapura Mahavihara', 0, '', '', 0),
(72, 19, '', 'Mahastangar', 0, '', '', 0),
(78, 19, '', 'Behula Lakshindar Basor Ghor', 0, '', '', 0),
(79, 22, '', 'Kantajew Temple', 0, '', '', 0),
(80, 19, '', 'Varendra Research Museum', 0, '', '', 0),
(81, 19, '', 'Bagha Mosque', 0, '', '', 0),
(82, 30, '', 'Kuakata Beach', 0, '', '', 0),
(83, 17, '', 'Sundarbans', 0, '', '', 0),
(86, 17, '', 'Bagerhat', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `traveler_cart`
--

CREATE TABLE IF NOT EXISTS `traveler_cart` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `center` varchar(32) NOT NULL,
  `place_id` int(32) NOT NULL,
  `hotel_id` int(32) NOT NULL,
  `journey_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=259 ;

--
-- Dumping data for table `traveler_cart`
--

INSERT INTO `traveler_cart` (`id`, `user_id`, `center`, `place_id`, `hotel_id`, `journey_name`) VALUES
(243, 35, '', 40, 2, ''),
(244, 35, '', 41, 2, ''),
(245, 35, '', 42, 2, ''),
(246, 35, '', 43, 2, ''),
(247, 35, '', 39, 2, ''),
(248, 35, '', 40, 2, ''),
(249, 35, '', 58, 0, ''),
(250, 35, '', 59, 0, ''),
(251, 35, '', 60, 0, ''),
(252, 35, '', 58, 0, ''),
(253, 35, '', 59, 0, ''),
(254, 35, '', 39, 0, ''),
(255, 35, '', 41, 0, ''),
(256, 35, '', 49, 0, ''),
(257, 35, '', 50, 0, ''),
(258, 35, '', 53, 0, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `address`, `contact_number`, `contact_email`, `password`, `category_id`, `fullName`, `current_location`) VALUES
(35, 'Rampura Banshri', 0, 'jahid.tn@gmail.com', '123123', 1, 'Jahidul Haque', 'Dhaka'),
(39, 'cbxchjbd ', 0, 'jahid.tn@yahoo.com', '123456', 1, 'jahid', 'Dhaka'),
(40, '34,scd', 0, 'kkl@gmail.com', '123456', 1, 'kll', 'Dhaka'),
(41, '34,scd', 0, 'kkl@gmail.com', '123456', 1, 'kll', 'Dhaka'),
(42, 'cbxchjbd ', 0, 'jahid.tn@gmail.com', '123456', 1, 'jahidul  haque', 'Dhaka'),
(43, 'cbxchjbd ', 0, 'jahid.tn@gmail.com', '123456', 1, 'jahidul  haque', 'Dhaka');

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
-- Constraints for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD CONSTRAINT `journey_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
