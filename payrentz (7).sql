-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2017 at 12:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrentz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `city` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`id`, `user_name`, `password`, `city`) VALUES
(1, 'super_admin', 'su123', '1'),
(2, 'admin', 'ad123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `zone_id`, `name`, `description`, `status`) VALUES
(1, 1, 'Kalaignar Nagar', 'dd', 1),
(2, 1, 'Shanmugapuram', '', 1),
(3, 1, 'Manikkam Nagar', '', 1),
(4, 1, 'Nehru Nagar', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `status`) VALUES
(2, 'Videocon', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `description`, `status`) VALUES
(1, 1, 'Chennai', '', 1),
(2, 1, 'Coimbatore', '', 1),
(3, 2, 'Hyderabad ', '', 1),
(4, 2, 'Secunderabad ', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zone` int(11) NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`id`, `customer_id`, `enquiry_id`, `type`, `state`, `city`, `address`, `zone`, `area`) VALUES
(2, 'PR0002', '', '', 0, 0, 'No : 14, Sivan koil street, Puliyur 2nd lane, Kodambakkam, Chennai - 600 024', 0, 0),
(3, 'PR0003', '', '', 0, 0, 'No : 20 ,Third floor, Meenaktchi Amman nagar,Thiruvallur salai, Alwarthirunagar, Chennai - 600 087', 0, 0),
(4, 'PR0007', '', '', 0, 0, 'Plot 1, 1st avenue, St Anthony nagar, Perumbakkam, Chennai - 600 100', 0, 0),
(5, 'PR0011', '', '', 0, 0, 'No : 4/14, first floor , 2nd street,tansi nagar, Ishwarya apartment, Velachery, Chennai - 600 042', 0, 0),
(6, 'PR0016', '', '', 0, 0, 'Pallikaranai', 0, 0),
(7, 'PR0017', '', '', 0, 0, '39/9, Geetha Apartments, II Floor, Appar Street, Besent Nagar, Chennai', 0, 0),
(8, 'PR0018', '', '', 0, 0, 'B-21, Anand Apartment, Old.No.7, New.No.13, Venkatraman Street, T.Nagar, Chennai - 600 017', 0, 0),
(9, 'PR0019', '', '', 0, 0, 'Coral 11B, Olympia Opaline, Navallur, Chennai - 603 103', 0, 0),
(10, 'PR0021', '', '', 0, 0, '1st Floor, Block Nelson Court, Flat No.28, 117 Nelson Manikkam Road, Chennai', 0, 0),
(11, 'PR0023', '', '', 0, 0, 'Flat C-6, Dev Apartments, 77/32 Kolokshetra Road, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(12, 'PR0030', '', '', 0, 0, 'No.62, 3rd Cross Street, CBI Colony, Perungudi, Chennai - 600 096', 0, 0),
(13, 'PR0032', '', '', 0, 0, 'Flat No.8306, 3rd floor, Block No-8, TVH Appartments, Navalur, Chennai', 0, 0),
(14, 'PR0034', '', '', 0, 0, '7, Shree Sakthi Homes, 1st Cross Street, Elim Nagar, Perungudi - 600 096', 0, 0),
(15, 'PR0035', '', '', 0, 0, '218, Nakkeeran Street, Krishnamachari Nagar, Valasaravakkam, Near Devi Academy School, Chennai.', 0, 0),
(16, 'PR0036', '', '', 0, 0, '305, 3rd Floor, D-Block, TVH Emerald Green Homes, Perungulathur, Chennai', 0, 0),
(17, 'PR0038', '', '', 0, 0, 'No 33, Godavari Street, Gomathy Nagar, Chitlapakkam Main Road, Chennai-73 near Reliance Fresh', 0, 0),
(18, 'PR0042', '', '', 0, 0, 'No.706 Tower A1, Adora Apartments, Akshaya, OMR Road, Kazhipattur, Chennai', 0, 0),
(19, 'PR0043', '', '', 0, 0, 'House No. AG, Buliding No 129, Alsa Claremont, St. Mary''s Road, Alwarpet, Chennai', 0, 0),
(20, 'PR0044', '', '', 0, 0, '2nd Floor, A-Block, Door No-5, Sakshi Apartment, Pillayar Kovil Street, Okkiyampet, OMR, Chennai', 0, 0),
(21, 'PR0046', '', '', 0, 0, 'S1, 2nd Floor, Alba Sharon Appartments, 5/11 TNGO Colony, 2nd Street, Adambakkam, Chennai - 600 088', 0, 0),
(22, 'PR0048', '', '', 0, 0, 'Flat 1B, Deepalakshmi Appartments, 614, 5th Street, Nandanam Extension, Chennai - 600 035.', 0, 0),
(23, 'PR0049', '', '', 0, 0, 'Ceebros Boulevard, 906, Block 1, Rajiv Gandhi Salai, OMR, Thoraipakkam, Chennai - 600 097', 0, 0),
(24, 'PR0053', '', '', 0, 0, 'Old.No:3/8, New No:7/8, Champak Makal, 3rd floor, 4th Street, Abhiramapuram, Chennai - 600 018', 0, 0),
(25, 'PR0055', '', '', 0, 0, 'Flat 8E, 8th Floor, Ramaniyam Gallery, Old No.18/1, New No.63, East Coast Road, Thiruvanmiyur, Chenn', 0, 0),
(26, 'PR0056', '', '', 0, 0, 'Flat No 12D1, Amber Block, Olympia Opaline Apartment, #33, Navalur, OLD Mahabalipuram Road, Chennai', 0, 0),
(27, 'PR0061', '', '', 0, 0, 'H96/S3, 1st Sea Ward Road, Valmiki Nagar, Thiruvanmayur, Chennai - 600 041', 0, 0),
(28, 'PR0063', '', '', 0, 0, 'Milea Spa, Flat No: 1A, First Floor, Bajaj Manor, Old No 31, New No14, College Road, Nungambakkam, C', 0, 0),
(29, 'PR0071', '', '', 0, 0, 'S1, Plot 75, VGP Selva Nagar, Velachery, Chennai - 600 042', 0, 0),
(30, 'PR0072', '', '', 0, 0, 'CF-2, Ambrosia Apartments, 63, Ganapathy Nagar, Chemmencherry, Chennai - 600 119', 0, 0),
(31, 'PR0074', '', '', 0, 0, 'No.11, venkateswara flats,Venkateswara Nagar first Street,Adyar', 0, 0),
(32, 'PR0075', '', '', 0, 0, 'FB, Block 7, Jain Pebble Brook Apts Phase I, Thoraipakkam, Chennai - 600 097', 0, 0),
(33, 'PR0085', '', '', 0, 0, 'No.38, Village High Road, Sholinganalur, Chennai - 600 119. Near Cockraco resturant', 0, 0),
(34, 'PR0089', '', '', 0, 0, 'D-601, Purva Swan Lake, OMR, Kelambakkam, Chennai - 600 103', 0, 0),
(35, 'PR0092', '', '', 0, 0, '3E, Kgeyes Carolinoa, Bharani Street, Bharathi Nagar, Velachery, Chennai - 600 042', 0, 0),
(36, 'PR0093', '', '', 0, 0, 'Block2, S4, Ganesh Apartments, Kadaperi, Thomas Street, Tambaram Santoruim, Chennai - 600 047', 0, 0),
(37, 'PR0094', '', '', 0, 0, 'F4, Udhayam Apt,Plot no 1,Ganapathy Nagar, Periyar Nagar Main Road, Urapakkam - 603 202', 0, 0),
(38, 'PR0095', '', '', 0, 0, 'S2, Rajini Enclaves, Five Furlong Road, Guindy Race Course, Chennai - 600 038', 0, 0),
(39, 'PR0097', '', '', 0, 0, 'D-309, Aashrita Society, Telephone Nagar, Perungudi, Chennai - 600 096', 0, 0),
(40, 'PR0101', '', '', 0, 0, 'E2, Oakwood Apt, Anderson Road, Near British Council, Opp to Sasthri Bhavan, Chennai - 600 008', 0, 0),
(41, 'PR0106', '', '', 0, 0, 'No.9, 2nd Cross Street, Dhandeeswaran Nagar, Velachery, Chennai - 600 042', 0, 0),
(42, 'PR0109', '', '', 0, 0, '#31/32, Lakshmi Nagar Extn, Nehru Street, Main Road, Shollinganallur, Opp PayPal, Chennai - 600 119', 0, 0),
(43, 'PR0113', '', '', 0, 0, 'Flat No.R2, Ocktree Apartment, Kazhipattur, Siruseri (OMR), Chennai - 603 103', 0, 0),
(44, 'PR0122', '', '', 0, 0, 'T22, Arihant Escapade, Arihant Road, Okkiyam, Thoraipakkam', 0, 0),
(45, 'PR0123', '', '', 0, 0, 'F401, Ceebros Belvedere, Sholinganallur, Chennai - 600 119', 0, 0),
(46, 'PR0124', '', '', 0, 0, 'Flat 12, Rams Appartement, Bhakthavachalam 1st Main Road, Adyar', 0, 0),
(47, 'PR0126', '', '', 0, 0, '1A, 15/7 Abhiramapuram 1st Street, 1st Floor, Chennai - 600 018', 0, 0),
(48, 'PR0129', '', '', 0, 0, 'Flat No 4A, Padmavathi Main Road, VOC Nagar, Near San Acadamy School, Velachery, Chennai - 600 042', 0, 0),
(49, 'PR0133', '', '', 0, 0, 'Flat 7,1st Floor, Sri Ragh Apts, Temple Avenue, Srinagar Colony, Saidapet, Chennai - 600 015', 0, 0),
(50, 'PR0134', '', '', 0, 0, 'K13, Baba''s Garden, Sastri Street, Tansi Nagar, Velachery, Chennai - 600 042', 0, 0),
(51, 'PR0135', '', '', 0, 0, 'B.K. Gopal, E2G, Cee Dee Yes Apartments, Regal Palmgardens, Velachery, Chennai - 600 042', 0, 0),
(52, 'PR0138', '', '', 0, 0, '9B, Sai Sananda Apartments, 57 Velachery Main Road, Velachery, Chennai - 600 042', 0, 0),
(53, 'PR0139', '', '', 0, 0, 'No.2/257 Vijayaganapathy Nagar, Navalur 2nd Street, Chennai - 600 103', 0, 0),
(54, 'PR0140', '', '', 0, 0, 'P-19, First Street, Cosmo City, Pudhupakkam, Kelambakkam, Chenna - 603 103', 0, 0),
(55, 'PR0141', '', '', 0, 0, 'G2, C Block, Senator Enclave, Ayodhya Colony, Velachery, Chennai - 600 042', 0, 0),
(56, 'PR0142', '', '', 0, 0, 'Flat No. L-S5, Naveen Jayaram Garden, River View Road, Manapakkam, Chennai - 600 125', 0, 0),
(57, 'PR0143', '', '', 0, 0, 'JK-2, AJAB Apartment, Shanti Colony, Jeevarathinam Nagar, Adyar, Chennai - 600 020', 0, 0),
(58, 'PR0145', '', '', 0, 0, 'Plot No 7, Color Homes, Flat No F1, Thiruvengadam Nagar 1st Street, Kandanchavadi', 0, 0),
(59, 'PR0147', '', '', 0, 0, '75 E, 2nd Floor, AA''s Ark, RiverView Residency, 6th Street, Karapakkam', 0, 0),
(60, 'PR0148', '', '', 0, 0, 'E2B, CEEDEEYES Apartements, VijayaNagar, Velachery, Chennai - 42, behind Adyar Ananda Bhavan', 0, 0),
(61, 'PR0151', '', '', 0, 0, 'No 10, Jayamangala Nagar, Agaramthen Village, Kanchipuram Dist, Chennai', 0, 0),
(62, 'PR0154', '', '', 0, 0, 'Prestige Bella Vista, No.1801, 13th Block, 18th Floor, Mount Poonamalle High Road, Govindaraj Nagur,', 0, 0),
(63, 'PR0155', '', '', 0, 0, 'No. 1/1 , Ground Floor, "Ashlar Place", New no 1/1, and old no (9/1) Kottur Garden IVth Main Road Ex', 0, 0),
(64, 'PR0158', '', '', 0, 0, '12/680, Plot No.D2, Pathanjali Garderns, 7th Street, Veerabadhra Nagar, Medavakkam, Chennai ? 600 10', 0, 0),
(65, 'PR0159', '', '', 0, 0, 'C-203, Lancon Lake Front, Sholinganallur, Chennai - 600 119', 0, 0),
(66, 'PR0169', '', '', 0, 0, 'Flot: F1, Plot No:33, Ayyangaran Associates, Lotus Homes, Nehru Nagar, Thoraipakkam, Chennai - 600 0', 0, 0),
(67, 'PR0052', '', '', 0, 0, 'DLF Gardencity, Tower-2, Flat 204, Semanchery, Chennai - 600 119.', 0, 0),
(68, 'PR0174', '', '', 0, 0, 'G-43, Stearling Ganges Appartment, Kattupakkam, Chennai - 600 056', 0, 0),
(69, 'PR0178', '', '', 0, 0, 'No 5, Rapas Flats, Tiger Vardacharya Road, Besant Nagar, opposite Naturally Auroville', 0, 0),
(70, 'PR0040', '', '', 0, 0, 'G-44, Canopy, Arihant Escapade, Okkiyam Thoraipakkam, Chennai - 600 097', 0, 0),
(71, 'PR0180', '', '', 0, 0, 'Pallikaranai (New.No, 21/2, Old.No.11/2, 5th Cross Street, 2nd Main Road, C I T Colony, Mylapore, Ch', 0, 0),
(72, 'PR0180A', '', '', 0, 0, 'Koyambedu (No.15 Bhagyalakshmi Nagar, Ramapuram, \nChennai 600089)', 0, 0),
(73, 'PR0187', '', '', 0, 0, '307, 4C, Doshi Apartments, Ethopiha 2, 3rd Link, Panchayat Main Road, Perungudi, Chennai - 600 097', 0, 0),
(74, 'PR0190', '', '', 0, 0, 'M175, 9th Cross Street, Thiruvalluvar Nagar, Thiruvanmiyr, Chennai - 600 041', 0, 0),
(75, 'PR0039', '', '', 0, 0, 'Flat 7,10th Floor, A Block, XS Real Symphony, Padur, Chennai - 603 103', 0, 0),
(76, 'PR0194', '', '', 0, 0, 'Flat No.422, Block 1, Ceebros Boulevard, Thuraipakkam, Chennai - 600 097', 0, 0),
(77, 'PR0196', '', '', 0, 0, 'FOB, 4th Floor, Block 12, Jain Pebble Brook, Okkiyum Pet, Chennai - 600 097', 0, 0),
(78, 'PR0198', '', '', 0, 0, 'Flat No. P2C2B, La Celeste, Rajarajeswari Nagar, Madanandapuram, Porur, Chennai - 600 125', 0, 0),
(79, 'PR0200', '', '', 0, 0, 'F-102, Central Park West, Elcot Avenue, Shollinganallur, Chennai - 600 119', 0, 0),
(80, 'PR0201', '', '', 0, 0, 'Flat No.10, Adigamanor, C.P.R Road, Abhiramapuram, Chennai - 600 018', 0, 0),
(81, 'PR0202', '', '', 0, 0, '5/156, Veeramani Salai, Kandanchavadi - 600 096', 0, 0),
(82, 'PR0203', '', '', 0, 0, 'A5, 9C, Olimpia Grand, GST Road, Pallavaram, Chennai - 600 117', 0, 0),
(83, 'PR0205', '', '', 0, 0, '127, Casa Grande Pavilion, Thalambur, Madavakam, OMR, Chennai 603 103.', 0, 0),
(84, 'PR0206', '', '', 0, 0, 'Unit No.1088, Tower 1 B, Prestige Bella Vista, Mount Ponnamalee High Road, Porur, Chennai - 600 056.', 0, 0),
(85, 'PR0207', '', '', 0, 0, 'Wing - 01 3B Kgeyes Samyvktha, Thiruvanchery, Madambakkam, Chennai - 600 126', 0, 0),
(86, 'PR0208', '', '', 0, 0, 'A-1, Aksa Deer Park, 108, Velachery Main Road, Guindy, Chennai - 600 032', 0, 0),
(87, 'PR0209', '', '', 0, 0, '29B, Mount Battan 1st Cross Street, Radha Krishna Avenue, Mettukuppam, Chennai - 600 096', 0, 0),
(88, 'PR0212', '', '', 0, 0, '12/53, Sri Sai Flats1, AG1, Indra Gandhi Street, Ramaiah Nagar, Medavakkam, Chennai - 600 100', 0, 0),
(89, 'PR0214', '', '', 0, 0, 'Block 2, Apartment 6K, Ceebros Boulevard, Thoraipakkam, Chennai - 600 096', 0, 0),
(90, 'PR0217', '', '', 0, 0, 'G44, Canopy, Arihant Escaspade, Thoraipakkam, Chennai - 600 097', 0, 0),
(91, 'PR0218', '', '', 0, 0, 'Flat 5-1, Plot - 10A, Sai Ayush Pooja Avenue, Thiruvalluvar Street, Perungudi, Chennai - 600 096', 0, 0),
(92, 'PR0219', '', '', 0, 0, 'No.13, 4th Street, Bharathi Nagar, North Usman Road, T.Nagar, Chennai - 600 017', 0, 0),
(93, 'PR0221', '', '', 0, 0, '260, Pharalakshmi Timber depot, Thiruvalluvar Street, Tambaram Sanatorium, Chennai', 0, 0),
(94, 'PR0224', '', '', 0, 0, 'Olympia Opaline, Eitrine Tower, House No: 3C, Navalur, Chennai - 603 103', 0, 0),
(95, 'PR0225', '', '', 0, 0, 'K-404, Central Park South, Elcot Avenvue, Sholinganallur, Chennai', 0, 0),
(96, 'PR0226', '', '', 0, 0, 'Block-2, Flat-3R, TVH Swasthi Apts, Eswaran Koil Street, Thoraipakkam, Chennai - 600 097', 0, 0),
(97, 'PR0227', '', '', 0, 0, 'Trinity Park (MGI), Flat No, Ground Floor, Thoraipakkam, Chennai - 600 097, Yoga Sadhana', 0, 0),
(98, 'PR0229', '', '', 0, 0, '11G, Ramaniyam Auroville, 11th Floor, 200 Ft Road, Thoraipakkam, Chennai - 600 097', 0, 0),
(99, 'PR0230', '', '', 0, 0, 'HNO 325, Block 1, Ceebros Boulevard Apartment, OMR, Metukuppam, Thoraipakkam, Chennai - 600 097', 0, 0),
(100, 'PR0231', '', '', 0, 0, '36183, DLF Gorden City, Chemmenchery - 600 119', 0, 0),
(101, 'PR0234', '', '', 0, 0, 'E403, Central Park South, Elcot Avenvue, Shollinganallur, Chennai - 600 119', 0, 0),
(102, 'PR0235', '', '', 0, 0, 'G1, Plot No.3, Crr Puram, Mugalivakkam, Chennai - 600 125', 0, 0),
(103, 'PR0237', '', '', 0, 0, 'F-402, TVH Park Villa, Near Chennai One Toll Plaza, Thoraipakkam, Chennai', 0, 0),
(104, 'PR0238', '', '', 0, 0, 'No.218, B-Block, Naksthara Appartment, Okkiyam Thoraipakkam, Chennai - 600 097', 0, 0),
(105, 'PR0240', '', '', 0, 0, 'No 10, Plot 26A, Andal Avenue, Gandhi Road, Velachery', 0, 0),
(106, 'PR0248', '', '', 0, 0, '62, G1 Kurinji Flats, Thiruvalluvaar Nagar, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(107, 'PR0249', '', '', 0, 0, 'C7, Triumph Appartments, 114, Jawaharlal Nehru Salai, Arumbakkam, Chennai', 0, 0),
(108, 'PR0252', '', '', 0, 0, 'A2/789, Veerthika, Kazura Garden, 2st Main road, palavakkam, Chennai. opp to Hot Chips restaurant', 0, 0),
(109, 'PR0255', '', '', 0, 0, 'Block A 304, Ses Solitaire Apts, Mount Poonamalle Road, Porur, Chennai', 0, 0),
(110, 'PR0256', '', '', 0, 0, '170, Bhuvaneshwari Nagar, 2nd Main Road, Velachery, Chennai', 0, 0),
(111, 'PR0263', '', '', 0, 0, 'Aishwaryam, A73, TVS Green Hills, 7th Avenue, TVS Emarald Enclave, Nedungundram, Chennai - 600 003', 0, 0),
(112, 'PR0268', '', '', 0, 0, '64A, Kamarajor Salai, Ramalingam Nagar, ECR, Chennai - 600 041', 0, 0),
(113, 'PR0270', '', '', 0, 0, '08084, DLF Garden City, Thalambur, Semmenchery, OMR, Chennai', 0, 0),
(114, 'PR0271', '', '', 0, 0, 'Shangri La, Apsrtment, Flat #GB, No.34, Thanikachallam Road, T.Nagar, Chennai', 0, 0),
(115, 'PR0273', '', '', 0, 0, 'Flat no.1, Ground Floor, #G, BT Nagar, Avenvue - II, Shine Shetters, Phase - II, Annamalaiyar Street', 0, 0),
(116, 'PR0274', '', '', 0, 0, '#66, F1, J K V Apt, Lakshimi Nagar 1st Street, Gangai Nagar I Main Road, Velachery - 600 042', 0, 0),
(117, 'PR0275', '', '', 0, 0, 'Flat No.151, 1st Floor, PARAS Apt, Panchayat Main Road, thirumalai Nagar, Perungudi - 600 096', 0, 0),
(118, 'PR0277', '', '', 0, 0, 'A-1, Vishnoo Kadambari Apartments, Rajagopalan 1st Street, Valmiki Nagar, Thiruvanmiyur, Chennai - 6', 0, 0),
(119, 'PR0278', '', '', 0, 0, 'Shanmugapriya flats, F3, tansi nagar 3 main road, Velachery, Chennai - 600 042', 0, 0),
(120, 'PR0283', '', '', 0, 0, 'A-3, Subikesha Apartment, Babu Rajendra Prasad First Street, West Mambalam, Chennai - 600 033', 0, 0),
(121, 'PR0288', '', '', 0, 0, 'T2, Silver line Appartment, No:17, Selvanagar Velacherry, Chennai', 0, 0),
(122, 'PR0293', '', '', 0, 0, 'Flat No.C-104, TVH Park Villa, Near Chennai One Toll Gate, MCN Nagar, Thoraipakkam,Chennai - 600 097', 0, 0),
(123, 'PR0297', '', '', 0, 0, '35/3, 4th Cross Street, Teachers Colony, Jairam Nagar, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(124, 'PR0301', '', '', 0, 0, 'C-11, BL-C, Safaa Apts, GST Road, Urapakkam, Kanchi - 603 210', 0, 0),
(125, 'PR0302', '', '', 0, 0, 'House No.134, Pachaiyappan Street,PNagar, Mugalivakkam, Chennai - 600 125', 0, 0),
(126, 'PR0303', '', '', 0, 0, 'D28-203, Provident Cosmo City, Pudupakkam, Chennai - 603 103', 0, 0),
(127, 'PR0305', '', '', 0, 0, 'E60, 7th West Street, Kamaraj Nagar, Thiruvanmur, Chennai - 600 041', 0, 0),
(128, 'PR0306', '', '', 0, 0, '21/53, Balaji Singh Street, East Jonse Road, Saidapet, Chennai', 0, 0),
(129, 'PR0309', '', '', 0, 0, 'Door No.3/1, B-1, Vasist, New Beach Road, Thiruvalluvar Nagar, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(130, 'PR0310', '', '', 0, 0, 'T-13, Income tax Tracrrit Quarters, M G Road, Nungambakkam, Chennai', 0, 0),
(131, 'PR0311', '', '', 0, 0, '98, Hansa Chitra Individual Township, Dharga Road, Zamin Pallavaram, Chennai - 600 043', 0, 0),
(132, 'PR0315', '', '', 0, 0, 'Ceebros Boleveard, 1113, 11th floor, thoraipakkam, Near AKDR, OMR, Chennai - 600 096', 0, 0),
(133, 'PR0316', '', '', 0, 0, 'S-3, Rajparris Villa, 1st Street, Janakpuri, Velachery, Chennai - 600 042', 0, 0),
(134, 'PR0325', '', '', 0, 0, 'Jains Pebble Brook, Block - 4, 5G, Thoraipakkam, Chennai - 600 097', 0, 0),
(135, 'PR0326', '', '', 0, 0, 'Flat 32A, Block A, 4th Floor, Rams Habitat, between Tecci Park and Paypal Office, OMR Road, Sholling', 0, 0),
(136, 'PR0327', '', '', 0, 0, 'No: 18, Kokilambal Nagar, Eswaran Koil Street, Thoraipakkam, Chennai 600 097.', 0, 0),
(137, 'PR0344', '', '', 0, 0, 'JF-2, Ambrosia Apartments, 63, Ganapathy Nagar, Chemmencherry, Chennai - 600 119', 0, 0),
(138, 'PR0328', '', '', 0, 0, 'RK Clasic, 1st Street, Andal Avenvu, North Peravalur, Chennai - 600 082', 0, 0),
(139, 'PR0329', '', '', 0, 0, 'F3, #32, Arunagiri Flats, Ganesh Avenvu Extn, 1st main road, Sakthi Nagar, Porur, Chennai', 0, 0),
(140, 'PR0331', '', '', 0, 0, 'Amber 11D2, Olympia Opaline, Oppocit to AGS, Navalur, Chennai', 0, 0),
(141, 'PR0333', '', '', 0, 0, 'Block 8, Flat 2A Aswini Amrisa, 77 Kalasathamman Koil Street, Chennai - 600 089', 0, 0),
(142, 'PR0334', '', '', 0, 0, 'B2, Ansary Flats, No.53, South West Boag Road, T Nagar, Chennai - 600 017', 0, 0),
(143, 'PR0335', '', '', 0, 0, 'A39, Sivagami Apartments, A Block, Sivagamipuram, 1st Cross Street, Adyar, Chennai', 0, 0),
(144, 'PR0341', '', '', 0, 0, '#451B, 10th Street, Kamakotti Nagar, Sahishahi Apartment, Pallikaranai - 600 100', 0, 0),
(145, 'PR0342', '', '', 0, 0, '3, 1st Floor, Padavatha Amman koil, Main Street, Sholinganallur, Chennai - 600 119, Near Infosys', 0, 0),
(146, 'PR0347', '', '', 0, 0, 'No.10/8, Shanthi Nagar, 1st Street, Adambakkam, Chennai - 600 088', 0, 0),
(147, 'PR0350', '', '', 0, 0, '17,F2, 10th Avenue, Harrington Road, Chetpet, Chennai 600 030', 0, 0),
(148, 'PR0351', '', '', 0, 0, 'House no 4, VV Kovil Street, Postal Nagar, Chrompet, Chennai 600 044', 0, 0),
(149, 'PR0355', '', '', 0, 0, '9/E60, 7th West Street, Kamaraj Nagar, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(150, 'PR0356', '', '', 0, 0, 'A/5, Anandam Flats, Anandan Street, opp to Murugan Idlly Shop, Phanagal Park, T Nagar', 0, 0),
(151, 'PR0357', '', '', 0, 0, '8B, Chaand Towers, 128, L B Road, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(152, 'PR0358', '', '', 0, 0, '2A, Samudra Duger, 4th Seaward Road, Valmiki Nagar, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(153, 'PR0360', '', '', 0, 0, 'F1, Lakshmi Enclave, Annai Indira Nagar, Kambar Street, Velachery, Chennai - 600 042', 0, 0),
(154, 'PR0361', '', '', 0, 0, 'S & P Living Spaces, C Block, C-104, Mogappair West Extn, Chennai', 0, 0),
(155, 'PR0362', '', '', 0, 0, 'Flat no 4, 1B, Periyar Salai, Krishna Nagar, Manapakkam, Chennai 600 125', 0, 0),
(156, 'PR0364', '', '', 0, 0, 'C103, TVH Park Villa, Vinayaga Nagar, Thoraipakkam, Chennai - 600 097', 0, 0),
(157, 'PR0365', '', '', 0, 0, 'D-3, G01, Ground Floor, Phase - 1, Nova Mahindra World City, New Chennai - 603 004', 0, 0),
(158, 'PR0368', '', '', 0, 0, 'D1, Sakthi Mennakshi, No 86, MCN Nagar, 4th Cross Street, Thoraipakkam', 0, 0),
(159, 'PR0369', '', '', 0, 0, '15/2, Vikrama Complex, 4th Street, Railway Colony, Aminjikarai, Chennai', 0, 0),
(160, 'PR0370', '', '', 0, 0, '14025J, 4th Block,2nd Prestige Bella Vista, Kattupakkam, Chennai - 600 056', 0, 0),
(161, 'PR0371', '', '', 0, 0, 'No.17, F1, Subam Shelters, 2nd Cross Street, Baghyalakshmi Nagar, S Kolathur, Chennai - 600 117', 0, 0),
(162, 'PR0372', '', '', 0, 0, '3041, Tower 3(A), Prestige Bella Vista, Iyyapanthangal, Chennai', 0, 0),
(163, 'PR0376', '', '', 0, 0, 'S6, 2nd floor, 2, 1st Street, Sivagamipuram, Thiruvanmiyur', 0, 0),
(164, 'PR0377', '', '', 0, 0, 'A 26, Shakthi Majestic Apartment, Pillaiyar Koil Street, Thoraipakkam', 0, 0),
(165, 'PR0378', '', '', 0, 0, 'Virat Spring Apartment, B Block, S2 Kambar Street,Annai Indira Nagar, Velachery', 0, 0),
(166, 'PR0379', '', '', 0, 0, 'Sowmiya Saishree, Brindavanam Street, 2/1(55D), Balaiya Garden, Madipakkam, Chennai - 600 097', 0, 0),
(167, 'PR0381', '', '', 0, 0, 'W 1/10, North Main Road, Anna Nagar west Extension, near SBOA School, Chennai', 0, 0),
(168, 'PR0383', '', '', 0, 0, 'Flat 4G, Block 3, Asvini-Amarisa Apartment, 77, Kalasathamman Koil Street, Ramapuram', 0, 0),
(169, 'PR0386', '', '', 0, 0, 'Block 1, F6, Appasamy Cityside, 4/361, Kandanchavadi, Rajiv Gandhi Salai (OMR), Chennai - 600 096', 0, 0),
(170, 'PR0387', '', '', 0, 0, 'M S K Foundation, Plot 10, R E Nagar, Opp to TVH Villa, Chennai One Thoraipakkam, Chennai - 600 097', 0, 0),
(171, 'PR0388', '', '', 0, 0, 'Flat-5/15, Home Finder Estate, Thiruvalluvar Salai, Ramapuram, Chennai.', 0, 0),
(172, 'PR0389', '', '', 0, 0, 'A4, 5th Floor, Jain Green Acres, Zameen Pallavaram, Dargah Road', 0, 0),
(173, 'PR0390', '', '', 0, 0, '5/2, Magalakshmi Nagar Annexe, Ramapuram, Chennai - 600 059', 0, 0),
(174, 'PR0391', '', '', 0, 0, '22D, Block 2, Indus Anantya Apartment, Natham Link Road, Egattur(near Toll Gate)', 0, 0),
(175, 'PR0392', '', '', 0, 0, 'Flat 15B, Citrine Block, Olympia Opaline, Navalur, Chennai - 603 103', 0, 0),
(176, 'PR0393', '', '', 0, 0, 'G3, Sundeep Neelambari Apts, 42nd street,6th Avenue, Ashok Nagar, Chennai - 600 083', 0, 0),
(177, 'PR0394', '', '', 0, 0, 'Block 1, Flat FOF, 4th floor, Jains Pebble Brook, Sakthi Garden Road, Madhakoil Street, Okkiyampet, ', 0, 0),
(178, 'PR0396', '', '', 0, 0, '10SE 10th Block Jains Pebble Brook, Madha Koil Street, Thoraipakkam', 0, 0),
(179, 'PR0397', '', '', 0, 0, '2, 1st floor, Century Habitat, no 9/4, 4th main road, Gandhi Nagar, Adyar, Chennai - 600 020', 0, 0),
(180, 'PR0401', '', '', 0, 0, 'Sriji Apartment, Flat No D1, Manapakkam, Chennai - 600 089', 0, 0),
(181, 'PR0403', '', '', 0, 0, 'Venkateshwara 2nd Street, Velachery 100 Feet Road, Near Simran Appakadai, Velachery, Chennai - 600 0', 0, 0),
(182, 'PR0404', '', '', 0, 0, '4C-103, Hansa Chitra Apartment, Dargah Road, Zamin Pallavaram, Chennai', 0, 0),
(183, 'PR0405', '', '', 0, 0, 'BLOCK - 2, E4, Raj Paris Harmony, Surya Nagar, Medavakkam, Chennai - 600 100', 0, 0),
(184, 'PR0406', '', '', 0, 0, 'No.79, Babu Nagar, Second Street, Medavakkam, Chennai - 600 100', 0, 0),
(185, 'PR0407', '', '', 0, 0, 'J303, TVS Green Hills Apartment, Nedungundram, Perungalathur, Chennai - 600 063', 0, 0),
(186, 'PR0411', '', '', 0, 0, 'Flat No. E-206, Radiance Shine, Kazhipattur, OMR, Chennai', 0, 0),
(187, 'PR0414', '', '', 0, 0, 'Flat SG, Block 9, Jains Pebble Brook, Thoraipakkam', 0, 0),
(188, 'PR0416', '', '', 0, 0, '1/265B, 4th Kalathumettu Street, Kottivakkam, Chennai - 600 041', 0, 0),
(189, 'PR0423', '', '', 0, 0, '142, Floor 14, Tower 27, DLF Garden City, Thalambur, Semencheri', 0, 0),
(190, 'PR0424', '', '', 0, 0, 'D9, Casa Grande Aldea, Bharathiyar Street, near Seccratriat Colony, Mettukuppam', 0, 0),
(191, 'PR0426', '', '', 0, 0, 'No 1, Kasturibai 1st Street, Shrinivas Nagar, New Perungalathur', 0, 0),
(192, 'PR0428', '', '', 0, 0, 'Plot 75, 6th Main Road, Jayachandra Nagar, Jaladianpet', 0, 0),
(193, 'PR0429', '', '', 0, 0, 'S2, Keerthi Manos Building, 7th Street Anna Nagar West, S Kolathur Main Road, Pallikaranai', 0, 0),
(194, 'PR0430', '', '', 0, 0, 'Ground Floor, KC Enclave, Sathyamoorthy Street, Lakshmanan Nagar,(opp Saravanabhavan Hotel), Perungu', 0, 0),
(195, 'PR0431', '', '', 0, 0, '8D, Citrine Block, Opaline Apartments, Navalur', 0, 0),
(196, 'PR0432', '', '', 0, 0, 'D4, Block L, Kochar Panchasheel Homes, #129, CTH Road, Ambattur Industrial Estate', 0, 0),
(197, 'PR0435', '', '', 0, 0, 'A6 121, AR Samriddhi Apartments, Bharathiyar Nagar, Thoraipakkam', 0, 0),
(198, 'PR0103', '', '', 0, 0, '890B, 8th Main Road, Ram Nagar South Extn, Madipakkam', 0, 0),
(199, 'PR0437', '', '', 0, 0, 'Flat no 61, 4th Floor, D-Block, Anand Apartment, LB Road, Tiruvanmiyur', 0, 0),
(200, 'PR0444', '', '', 0, 0, 'No.10/21, 3rd Floor, 5th Street, Indra Gandhi Nagar, Adambakkam, Chennai - 600 088', 0, 0),
(201, 'PR0445', '', '', 0, 0, 'C21 Brook, Arihant Escapade, Thoraipakkam, Chennai - 600 097', 0, 0),
(202, 'PR0447', '', '', 0, 0, '402/5, Manasa Apartments, 2nd Avenue, Anna Nagar, Chennai - 600 040', 0, 0),
(203, 'PR0448', '', '', 0, 0, 'Flat 3B, Ramaniyam Gaurav, Block 3, Model School Road, Sholinganallur', 0, 0),
(204, 'PR0449', '', '', 0, 0, '145/76, Mahalakshmi Enclave, F12 1st Floor, Pillayar Kovil Street, Ashok Nagar', 0, 0),
(205, 'PR0450', '', '', 0, 0, '201, Santosh Apartments, #4, Ranganathan Avenue, Kilpauk', 0, 0),
(206, 'PR0452', '', '', 0, 0, 'New No. 126, Onld No.64, 5th Street, Padmanabha Nagar, Adyar Chennai - 600 020', 0, 0),
(207, 'PR0233', '', '', 0, 0, 'C3, Second Floor, Skyline Apartment, Plot No 4, Old Door No 45, New Door No 2, Venkatarathnam Nagar,', 0, 0),
(208, 'PR0453', '', '', 0, 0, 'A-304, Lancor Apts, Central Park South, Elcot Avenue, Sholinganallur', 0, 0),
(209, 'PR0455', '', '', 0, 0, 'New no 51, Old No 64, 53rd Street, 9th Avenue, Ashok Nagar', 0, 0),
(210, 'PR0456', '', '', 0, 0, 'Flat No.141/32, Sai Darshan Apartments, MN Builders, 6th Street, Kamakoti Nagar, Pallikaranai, Chenn', 0, 0),
(211, 'PR0462', '', '', 0, 0, 'A4, Chesterfield Villas, Opp DLF IT Park, Ramapuram', 0, 0),
(212, 'PR0463', '', '', 0, 0, 'Sri Balaji House, Plot No: 40B, 4th Cross Street, Kumaran Kovil Street, Sakthi Srinivasan Salai, Okk', 0, 0),
(213, 'PR0464', '', '', 0, 0, '23/10a, Sri Jevanthi Flats, Lakshmi Street, Kilpauk', 0, 0),
(214, 'PR0467', '', '', 0, 0, 'No.2/1, Rasi Apartments, Vandikaran Street, Velachery - 600 042', 0, 0),
(215, 'PR0470', '', '', 0, 0, 'Pudupakkam Vandalur Kelambakkam Road, Near Chettinad Health City OMR', 0, 0),
(216, 'PR0471', '', '', 0, 0, 'C-433, SIS Danub, Jayachandran Nagar, Pallikaranai, Chennai', 0, 0),
(217, 'PR0472', '', '', 0, 0, '8, SNR Latha Homes, Panchayat Main Road near Govt School, Perungudi', 0, 0),
(218, 'PR0473', '', '', 0, 0, 'Kalpana, Plot no 41, Sea View Avenue, 2nd cross street, Neelankarai, Chennai - 600 041', 0, 0),
(219, 'PR0475', '', '', 0, 0, 'Room 4104, Block 4, TVH TAUS, Navalur', 0, 0),
(220, 'PR0476', '', '', 0, 0, 'Sobha Meritta, 9031 Tower no 9, 3rd floor, Pudupakkam', 0, 0),
(221, 'PR0477', '', '', 0, 0, '34063, DLF Garden City', 0, 0),
(222, 'PR0478', '', '', 0, 0, 'A4, Sathiyasraya Apartment, LB Road, Thiruvanmiyur', 0, 0),
(223, 'PR0479', '', '', 0, 0, '103, Rajalakshmi Appartment, Cresent Park Street, Thanikachalam Road, Pondy Bazzar', 0, 0),
(224, 'PR0481', '', '', 0, 0, '2/106, F2, Periyar Street, Palavakkam, Chennai - 600 041', 0, 0),
(225, 'PR0482', '', '', 0, 0, 'Flat 18C1 Amber Block, Olympia Opaline, Navalur', 0, 0),
(226, 'PR0483', '', '', 0, 0, '31, 3rd Street, Ganapathipuram, Pallikaranai, Chennai - 600 100', 0, 0),
(227, 'PR0485', '', '', 0, 0, 'Hiranandhani Apts, Flat No. 1403, 14th Floor, Egattur, Chennai', 0, 0),
(228, 'PR0487', '', '', 0, 0, '58, Isha Signature Villa, Perumbakkam, Chennai - 600 100', 0, 0),
(229, 'PR0489', '', '', 0, 0, 'I-204, MantiNavratna Appartment, NGR Street, Chrompet, Chennai - 600 044', 0, 0),
(230, 'PR0491', '', '', 0, 0, 'Flat 207, Tower 21, Bollineni Hillside Apartments, Perumbakkam Main Road, Sithalapakkam', 0, 0),
(231, 'PR0495', '', '', 0, 0, 'F31, 3rd floor, Sterling Ganges Apartments, Mount Poonamalle Road, Kattupakkam, Chennai - 600 056', 0, 0),
(232, 'PR0496', '', '', 0, 0, '9, Ananda Saras Apts, TTK Road, Alwarpet', 0, 0),
(233, 'PR0497', '', '', 0, 0, 'no 7, 3rd Floor, Dev Apartments, 17th Cross Street, Besant Nagar, Chennai - 600 090', 0, 0),
(234, 'PR0100', '', '', 0, 0, 'No.5, Riya Flats, 2nd Cross Street, Ramappa Nagar, Kandanchavadi, Perungudi, Chennai - 600 096', 0, 0),
(235, 'PR0498', '', '', 0, 0, 'Falt No.21, 8/1 Star City Service Apartment (Rajalaxmi Apartment), Crescent park street, T.Nagar, Ch', 0, 0),
(236, 'PR0500', '', '', 0, 0, 'Flat No - 304, GG2, Block - G, Ground Floor, Trinity Park, Bharathiyar Nagar, Thoraipakkam, Chennai', 0, 0),
(237, 'PR0501', '', '', 0, 0, '#18, Poondi Madha Street, Lakshmi Amman Nagar, Kodungaiyur, Chennai - 600 0118', 0, 0),
(238, 'PR0502', '', '', 0, 0, 'Flat 10, Block No. 13, EAT Globevill, Opp SainkGobain, Sipcok Industrial Area, Sriperambadur', 0, 0),
(239, 'PR0503', '', '', 0, 0, 'B112, TVH Park Villa, Thoraipakkam', 0, 0),
(240, 'PR0504', '', '', 0, 0, '81 C, Sundar Nagar 4th Avenue, Ekkatuthangal', 0, 0),
(241, 'PR0505', '', '', 0, 0, 'Flat 603, H Block, Victoria Towers, OMR, Kazhipattur, Chennai - 603 103', 0, 0),
(242, 'PR0506', '', '', 0, 0, 'P. No 2,A - (F3), CBIOA Colony Extn, RB Construction Gowri Apartments, Medavakkam', 0, 0),
(243, 'PR0507', '', '', 0, 0, 'G1, SaiGanesh Flats, Naidu Shop Road, Radhanagar, Chrompet', 0, 0),
(244, 'PR0508', '', '', 0, 0, 'Flat No F5, Kumaran Constructions, Opp TVH Park Rozilla, 9th Street, Anand Nagar, Thoraipakkam', 0, 0),
(245, 'PR0509', '', '', 0, 0, '13B, Ganga Flats, Kariyan Ponnan Street, Puzhuthivakkam, Chennai - 600 091', 0, 0),
(246, 'PR0510', '', '', 0, 0, '1/419, 2nd Main Road, Sri Sai Nagar, Chennai 79', 0, 0),
(247, 'PR0511', '', '', 0, 0, 'D-103, AKSHAYA METRPOLIS, GST ROAD, M.M. NAGAR, CHENNAI', 0, 0),
(248, 'PR0513', '', '', 0, 0, '282/681, Thousand Lights, Mount Road, Chennai - 600 006', 0, 0),
(249, 'PR0514', '', '', 0, 0, '36, Vaidyanath Mudali Street, Sevenwells, opp Appollo Hospital Mint, Chennai - 600 079', 0, 0),
(250, 'PR0515', '', '', 0, 0, '5903, 5th Block, 9th Floor, Embassy Residancy, Cheran Nagar, Perumbakkam, Chennai - 600 100', 0, 0),
(251, 'PR0516', '', '', 0, 0, 'F No, 3, Sai Tratiba Residency, Beside Amma Kalyanamandapam, Navallur', 0, 0),
(252, 'PR0062', '', '', 0, 0, 'Shiksha PG, G-17, Second Foor, Veerapuram, Mahindra World City, Kanchipuram-603002.Landmark: Take Le', 0, 0),
(253, 'PR0517', '', '', 0, 0, 'No.48 (Old No. 113), Lotus Orchid Villa, Vanniar Street, Choolaimedu, Chennai - 600 094', 0, 0),
(254, 'PR0518', '', '', 0, 0, '4/2, Balaji Avenue 2nd St, Thirumalai Pillai Road, T Nagar', 0, 0),
(255, 'PR0519', '', '', 0, 0, '93, 3rd main road, VGP Selva Nagar Extn, Velachery', 0, 0),
(256, 'PR0520', '', '', 0, 0, '5, 2nd floor, Sandhya Apartments, Vasudev Gardens, Nethaji Nagar Main Road, Thiruvanmiyur', 0, 0),
(257, 'PR0522', '', '', 0, 0, 'Plot 16A, 1st floor, Arunai Paradise Ranganagar, Mudichur, Chennai - 600 048', 0, 0),
(258, 'PR0523', '', '', 0, 0, '16, YamunaKalyani, Ragamallika Apts, Medavakkam Koot Road', 0, 0),
(259, 'PR0524', '', '', 0, 0, '19/1, Rukmani Street, Krishnapuram, Ambattur OT - 600 053', 0, 0),
(260, 'PR0526', '', '', 0, 0, 'I2, I Block, Perfect Park, Keelkatalai, near Maruti Service Center', 0, 0),
(261, 'PR0527', '', '', 0, 0, 'Flat T1, Old #3, New #12, Jeyammal Street, Shenoy Nagar, Chennai - 600 030', 0, 0),
(262, 'PR0528', '', '', 0, 0, '12, Anandhapuram Street, MGR Street, Bethelpuram, East Tambaram, Chennai - 600 059', 0, 0),
(263, 'PR0529', '', '', 0, 0, '216, Infinity by Urban Tree, Porur Gardens, Phase 2, 600 095', 0, 0),
(264, 'PR0530', '', '', 0, 0, 'H8/11, Sunrise Apartments, 2nd Floor, 2nd Main Road, Thiruvalluvar Nagar, Tiruvanmiyur', 0, 0),
(265, 'PR0531', '', '', 0, 0, 'No 9, Ground Floor, Poongavanam Street, VGN Brindavan Garden Extn, Mugalivakkam - 600 125', 0, 0),
(266, 'PR0532', '', '', 0, 0, '2Q, Saphire1, Opaline Apartments, Navalur', 0, 0),
(267, 'PR0533', '', '', 0, 0, 'H56, Marutham Appartments, Flat no: T4, Thiruvalluvar Nagar, Thiruvanmiyur, Chennai', 0, 0),
(268, 'PR0534', '', '', 0, 0, 'Flat Number - A 101, S.I.S Marakesh, 4/7A, Karanai Puduchery Main Road, Off GST Road, Urapakkam, Che', 0, 0),
(269, 'PR0535', '', '', 0, 0, 'Maple 402, L&T Eden Park, Pudupakkam, Siruseri Sipcot', 0, 0),
(270, 'PR0536', '', '', 0, 0, '15E, Jasper, Olympia Opaline, Navallur, Chennai', 0, 0),
(271, 'PR0537', '', '', 0, 0, 'C8, Block 2, Appaswamy Cityside Appartments, no:4/361, Perungudi, OMR, Next to Max Showroom', 0, 0),
(272, 'PR0538', '', '', 0, 0, 'Old no: 10/2, New no:3/2, Saradhambal street, Gokulam colony, opp to HDFC bank- Habibullah road, T.N', 0, 0),
(273, 'PR0539', '', '', 0, 0, 'No: 21, First Floor, Magalalakshmi Nagar, Mugilavakkam Main Road, Mugilavakkam, near Hriday dental h', 0, 0),
(274, 'PR0540', '', '', 0, 0, 'Accord ventura, B2, 1st Floor, Ram Nagar South 10th Main Road, Pallikarnai', 0, 0),
(275, 'PR0541', '', '', 0, 0, '12, Old 53/1, Kalakshetra Road, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(276, 'PR0542', '', '', 0, 0, 'Flat 7, Block 2, Home Finders Estate, Valluvar Salai, Ramapuram, Chennai - 600 089', 0, 0),
(277, 'PR0543', '', '', 0, 0, '14155, Prestige Bella Vista', 0, 0),
(278, 'PR0544', '', '', 0, 0, 'A1, Lakshmi Apartments, Karnan Street, JJ Nagar, Mogappiar West, Chennai 600 037', 0, 0),
(279, 'PR0545', '', '', 0, 0, '10/35, Vadivelpuram Street, West Mambalam, Chennai - 600 033', 0, 0),
(280, 'PR0546', '', '', 0, 0, 'D-2111, Vaikund Sundaram Apartment, Ven Rasiamman Koil, Southern Extension, Karapakkam - 600 097', 0, 0),
(281, 'PR0547', '', '', 0, 0, 'Wipro CDC-5, Ellot SE2, Shollinganallur, Chennai - 600 119', 0, 0),
(282, 'PR0548', '', '', 0, 0, '583, LIG E43, TNHB Link Road, Shollinganallur, Kancheepuram - 600 119', 0, 0),
(283, 'PR0549', '', '', 0, 0, 'Flat No - 14, B Block, Balaji Apartment, South Avenue, Sri Nagar Colony, Behind Saidapet Court', 0, 0),
(284, 'PR0550', '', '', 0, 0, 'E-10, Lake View Appartment, Perungudi Lake, Chennai - 600 096', 0, 0),
(285, 'PR0551', '', '', 0, 0, 'Flat 305, Block A1, in the third floor of Akshaya Adena Apartments, Annai Theresa Road, Kazhipattur,', 0, 0),
(286, 'PR0552', '', '', 0, 0, 'D-108, Southern Avenue, Witt Street, Kattankolathur, Tamil Nadu - 603 203', 0, 0),
(287, 'PR0553', '', '', 0, 0, 'Flat No. 70809, Shoba Merrita, Kelambakkam,', 0, 0),
(288, 'PR0554', '', '', 0, 0, 'ICF Railway Quarters, Sarayu block, flat no: 304-A, Ground floor, Ayanavaram. Near Bhramaputra Quart', 0, 0),
(289, 'PR0555', '', '', 0, 0, 'F5, Mahalakshmi Flats, 80/82 Nattu Subaraya Street, Mylapore.', 0, 0),
(290, 'PR0556', '', '', 0, 0, 'No : 05 , Thirumurugan Nagar,, Madhavaram , Chennai - 600 060 - Land Mark - Opposite to Karur Vysya ', 0, 0),
(291, 'PR0557', '', '', 0, 0, 'Plot No.57, Sri Saraswathi Nagar, Thirumalai Nagar North Extn, Hastinapuram, Chennai - 600 064', 0, 0),
(292, 'PR0558', '', '', 0, 0, 'Flat #902, Ninth Floor, Block 2, Imperial Towers, Next to Hiranandani Upscale, OMR, Chennai - 600 11', 0, 0),
(293, 'PR0559', '', '', 0, 0, '3168, Kumarankudil Main Road, 2nd Cross Street, Thoraipakkam, Chennai - 600 097', 0, 0),
(294, 'PR0560', '', '', 0, 0, 'F2 Shelters Nakshatra, Ramakrishnaraj Nagar Main Road, Ram Nagar North, Madipakkam, Chennai - 600 09', 0, 0),
(295, 'PR0561', '', '', 0, 0, 'No.235/5, Door No.6, Vinayagar Koil Street.VPG Avenue, Thoraipakkam, Chennai - 600 097', 0, 0),
(296, 'PR0562', '', '', 0, 0, 'B107, Aakruthi Serenity Appartments, Chettipunniyam Village, opp to Mahindra City', 0, 0),
(297, 'PR0563', '', '', 0, 0, 'B4, B Block, 1st Floor, No:119, Apollo Twins, Periyar Pathai, Choolaimedu. Before Aries mahal(Honda ', 0, 0),
(298, 'PR0564', '', '', 0, 0, 'A104, Lancor South Apartments, Elcot Avenue, Sholinganallur - 600 119', 0, 0),
(299, 'PR0565', '', '', 0, 0, 'L-301, Lancor South Apartments, Elcot Avenue, Sholinganallur - 600 119', 0, 0),
(300, 'PR0566', '', '', 0, 0, 'A-201, Lancor East Apartment, Elcot Avenue, Sholinganallur, Chennai - 600 119', 0, 0),
(301, 'PR0567', '', '', 0, 0, '53/102, Govindan Street, Collectorate Colony, Aminjikarai, Chennai - 600 029', 0, 0),
(302, 'PR0568', '', '', 0, 0, 'F3, S2, Harsham Apartments, Palar Street, Thiruthani Nagar, Zamin Pallavaram, Chennai', 0, 0),
(303, 'PR0569', '', '', 0, 0, 'No.14, Main Road, Thiruvalluvar Nagar, Kilkattalai, Chennai - 600 117', 0, 0),
(304, 'PR0570', '', '', 0, 0, 'Villa 19, Block S2, Bollineri Hillside, Sithalapakkam', 0, 0),
(305, 'PR0571', '', '', 0, 0, '123/5, Trustpuram 10th Cross Street (Vanniar Street), Trustpuram, Kodambakkam, Chennai - 600 024', 0, 0),
(306, 'PR0572', '', '', 0, 0, 'Flat :12L, Indus Anantya, Appartments, Natham Link road, Egattur, OMR, Chennai. Take right after Nav', 0, 0),
(307, 'PR0573', '', '', 0, 0, 'Flat 3, Block 2, Sterling Chaturbuja Apartments, Riverview Enclave, Manapakkam, Chennai - 600 125', 0, 0),
(308, 'PR0574', '', '', 0, 0, 'H.No.436, 17th Cross Street, Village main road, Sholinganallur, Chennai - 600 119', 0, 0),
(309, 'PR0575', '', '', 0, 0, 'A47, Arcot Terrace, NSK Salai, No.160, Arcot Road, (Opp to Vijaya Hospital), Vadapalani, Chennai', 0, 0),
(310, 'PR0576', '', '', 0, 0, 'Plot No.37, Door No.5, Kamakoti Nagar, Pallikaranai, Chennai', 0, 0),
(311, 'PR0577', '', '', 0, 0, 'E14, CASA Grand Riviera, Medavakkam, Chennai - 600 100', 0, 0),
(312, 'PR0579', '', '', 0, 0, 'Block B, Flat no:?707, Radiance Shine, kazhipattur, OMR, Chennai', 0, 0),
(313, 'PR0580', '', '', 0, 0, 'No:77 & 78, Block C19, Queens park Apartment, Tambaram- velacherry main road, Gowrivakkam, Chennai. ', 0, 0),
(314, 'PR0581', '', '', 0, 0, 'B25, 15th Cross Street, Hindu Colony, Nanganallur, Chennai - 600 061. Near Nanganallur Bus Depot', 0, 0),
(315, 'PR0582', '', '', 0, 0, 'Flat no: 12, Narayanan Homes, Karpagambal Nagar, Enfield Avenue, Madipakkam, Chennai. Landmark: Dr.A', 0, 0),
(316, 'PR0583', '', '', 0, 0, 'Flat No: A3, Plot No:175, Sai Srivari Nagar, Part 1, Singaperumal Koil, Chengalpattu, Chennai - 603 ', 0, 0),
(317, 'PR0584', '', '', 0, 0, 'Annai Arul Flats Block A-F2, Mudichur Road, Parvathy Nagar, Nehru Street, Pld Perungalathur, West Ta', 0, 0),
(318, 'PR0585', '', '', 0, 0, 'Plot 85 & Plot 102, Kumarasamy Nagar, 2nd Street, Sholinganallur - 600 119', 0, 0),
(319, 'PR0586', '', '', 0, 0, 'Flat 1C, No.28, First Floor, Cenatoph Court, Cenatoph Road, Teynampet, Chennai - 600 018', 0, 0),
(320, 'PR0588', '', '', 0, 0, 'Flat no: 1606, Embassy residency, Cheran Nagar, Perumbakkam, Chennai, Near Global Hospital', 0, 0),
(321, 'PR0589', '', '', 0, 0, 'A8/4, Green Acres, Phase 1, Green Acres Road, Kamaraj Nagar, Perungudi, Chennai - 600 096', 0, 0),
(322, 'PR0590', '', '', 0, 0, 'Arihanta Pragipani Apartments, F:303, MS Radha Main road, Inside Siruseri IT Park, Pudupakkam, Chenn', 0, 0),
(323, 'PR0591', '', '', 0, 0, 'Flat G2, sanjay Opera Homes, South East Wing, Bharathidasan Street, ESIC Nagar, Thiruvanchery, selai', 0, 0),
(324, 'PR0592', '', '', 0, 0, 'B 25/9, Shivalaya Apt, Kupusamy Nair Colony, Alandur, Chennai', 0, 0),
(325, 'PR0593', '', '', 0, 0, 'No: 10, Coats Road, SPL Gandharva Court, Flat No: GE, T.Nagar. Landmark: near New GRT', 0, 0),
(326, 'PR0594', '', '', 0, 0, '118/B4-23 (159/B4-23), Strahans Road, Pattalam, Otteri, Chennai - 600 012', 0, 0),
(327, 'PR0595', '', '', 0, 0, '#13, Prabhu Nagar, Neelankarai Link Road, Thoripakkam, Chennai - 600 097', 0, 0),
(328, 'PR0596', '', '', 0, 0, 'Flat No. 4D1, Amber, Olympia Opaline, 4th Floor, Navallur, Chennai - 603 103', 0, 0),
(329, 'PR0110', '', '', 0, 0, 'New no 4, Gandhi Street, Taramani, Chennai - 600 113 near Taramani Depot', 0, 0),
(330, 'PR0598', '', '', 0, 0, 'Flat No: F2, Block No: 104, Sukh Sagar Appartments, 3 seaward road, Valmiki Nagar, Thiruvanmiyur, Ch', 0, 0),
(331, 'PR0599', '', '', 0, 0, 'Plot No.3, 4th Main Road, Teachers Colony (Near Bhavani Amman Koil), Lakshmipuram, Kolathur, Chennai', 0, 0),
(332, 'PR0601', '', '', 0, 0, 'Harmony Homes Plot No.10-15, (ICICI Bank) Indhira Priyadharshini Nagar, Perumbakkam, Chennai', 0, 0),
(333, 'PR0602', '', '', 0, 0, 'Flat FF, Block 2, Jains Pebble Brook, Thoraipakkam, Madha Koil Street, Chennai', 0, 0),
(334, 'PR0603', '', '', 0, 0, 'Plot no: 18, flat no:G2, VGN Avenue, Eri Scheme Road, Mogappair West, Chennai. Near Banyan Foundatio', 0, 0),
(335, 'PR0604', '', '', 0, 0, 'No:2/410, Ambedkar Nagar, Manapakkam, 2st Main road, Manapakkam, Chennai.', 0, 0),
(336, 'PR0605', '', '', 0, 0, 'No:48/109, St.Marys road, Abhiramapuram, Chennai. Near st.Marys Church', 0, 0),
(337, 'PR0606', '', '', 0, 0, 'No.11 E, Olimpia Opaline, Rajeev Gandhi Salai, Navalur, Chennai', 0, 0),
(338, 'PR0607', '', '', 0, 0, 'A Block Flat No. A-801, Mantry Synirgy, Padur, Next to Hindustan University', 0, 0),
(339, 'PR0608', '', '', 0, 0, 'E2-12, Plaza Verdant Acres, P-1 gandhinagar Society, Noorkampalayam road, Perumbakkam, Chennai', 0, 0),
(340, 'PR0609', '', '', 0, 0, '4A, Jasper, Olympia Opaline Appartment, Navalur, Chennai - 603 103', 0, 0),
(341, 'PR0610', '', '', 0, 0, 'N Block, f4, Vatsa stepstone Appartments, Vasanthapuram Main road, Mangadu, Chennai', 0, 0),
(342, 'PR0611', '', '', 0, 0, 'No:76, VGP Babu Nagar, 2nd street, Medavakkam, Chennai.', 0, 0),
(343, 'PR0612', '', '', 0, 0, 'No:51, Annai Velankanni Nagar, PH-2, 2nd Avenue, Mugilavakkam, Chennai - 600 125', 0, 0),
(344, 'PR0613', '', '', 0, 0, 'A2, Block 4, Spring Appartments, No:85/5, Rajaji Nagar Main Road, Aibea nagar, Thiruvanmiyur', 0, 0),
(390, 'PR0614', '', 'Communication', 1, 1, '1B 405, Imperial Towers(Srinivasan Construction), opp to HDFC bank, Near SIPCOT IT Park Entrance, Si', 1, 2),
(391, 'PR0615', '', 'Permanent', 1, 1, 'A402, Palmera Garden, Sakthi Srinivasan Saalai, Mettukuppam, Thoraipakkam, Chennai - 600 097', 1, 2),
(392, 'PR0616', '310825', 'Permanent', 1, 1, 'No: D 23, Brooks Block, Arihant escapade, Thoraipakkam, Chennai', 1, 1),
(401, 'PR0617', '', '', 0, 0, '1A, A9 Olympia Grande, Pallavaram, GST Road, Chennai', 0, 0),
(402, 'PR0618', '', '', 0, 0, 'H.No. L-52, West Kamaraj Nagar, 2nd Main Street, Thiruvanmiyur, Chennai - 600 041', 0, 0),
(403, 'PR0619', '', '', 0, 0, 'No.G1, Indrapriyatharini Nagar, Perumbakkam, Chennai - 600 100, Near Global Hospital Road', 0, 0),
(404, 'PR0620', '', '', 0, 0, 'Flat A5, Shantikunj Apartment, Gopalakrishnan Road, T Nagar, Chennai - 600 017', 0, 0),
(405, 'PR0621', '', '', 0, 0, 'B404, Radiarce Shine Apartment, OMR Road, Kazhipathur, Chennai - 603 103', 0, 0),
(406, 'PR0622', '', '', 0, 0, 'Flat No. 044, Tower 39, DLF Garden City, Semmancheri, Thalambur Chennai', 0, 0),
(407, 'EV0020', '', '', 0, 0, 'Flat no: T1, Third Floor, AKS Venkatesh Appartments, AG 128, 7th Main Road, Shanthi Colony, Anna Nag', 0, 0),
(408, '', '806364', 'Permanent', 1, 1, '123,asd', 1, 1),
(409, 'PR0623', '', 'Permanent', 1, 1, '123', 1, 2),
(410, 'PR0624', '', 'Permanent', 1, 1, '123', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_bank_account_details`
--

CREATE TABLE `customer_bank_account_details` (
  `id` int(30) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `account_holder_name` varchar(30) NOT NULL,
  `account_number` varchar(30) NOT NULL,
  `ifsc_code` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `account_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_contact`
--

CREATE TABLE `customer_contact` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_contact`
--

INSERT INTO `customer_contact` (`id`, `customer_id`, `enquiry_id`, `mobile`, `type`) VALUES
(2, 'EV0020', '', '9840231554', ''),
(3, 'EV0020', '', '9840031555', ''),
(4, 'PR0002', '', '9176687871', ''),
(5, 'PR0003', '', '9840175301', ''),
(6, 'PR0003', '', '9445978123', ''),
(7, 'PR0007', '', '9677676492', ''),
(8, 'PR0011', '', '9790554929', ''),
(9, 'PR0011', '', '9840143578', ''),
(10, 'PR0016', '', '9629404306', ''),
(11, 'PR0016', '', '8695564584', ''),
(12, 'PR0017', '', '9066339547', ''),
(13, 'PR0017', '', '8050503353', ''),
(14, 'PR0018', '', '7358789327', ''),
(15, 'PR0019', '', '9500180798', ''),
(16, 'PR0019', '', '9884836495, 8871761173', ''),
(17, 'PR0021', '', '9831069783', ''),
(18, 'PR0023', '', '9789390871', ''),
(19, 'PR0023', '', '9443375092', ''),
(20, 'PR0030', '', '8148839328', ''),
(21, 'PR0030', '', '9750659847', ''),
(22, 'PR0032', '', '9962155388', ''),
(23, 'PR0032', '', '9463836692', ''),
(24, 'PR0034', '', '9677718528', ''),
(25, 'PR0035', '', '9094588822', ''),
(26, 'PR0036', '', '9840120270', ''),
(27, 'PR0036', '', '9845558149', ''),
(28, 'PR0038', '', '7358073733', ''),
(29, 'PR0038', '', '9791576567', ''),
(30, 'PR0039', '', '7658979017', ''),
(31, 'PR0039', '', '9493530224', ''),
(32, 'PR0040', '', '9830705211', ''),
(33, 'PR0042', '', '7696474732', ''),
(34, 'PR0042', '', '9779391930', ''),
(35, 'PR0043', '', '9007063763', ''),
(36, 'PR0043', '', '7358792006', ''),
(37, 'PR0044', '', '8939715202', ''),
(38, 'PR0044', '', '9176535670', ''),
(39, 'PR0046', '', '9599153774', ''),
(40, 'PR0046', '', '9940385774', ''),
(41, 'PR0048', '', '8608304209', ''),
(42, 'PR0048', '', '7401541006', ''),
(43, 'PR0049', '', '9843167889, 8056123074', ''),
(44, 'PR0049', '', '9789973923', ''),
(45, 'PR0052', '', '9962858555', ''),
(46, 'PR0052', '', '7358089001', ''),
(47, 'PR0053', '', '9884320554', ''),
(48, 'PR0053', '', '9884122259', ''),
(49, 'PR0055', '', '9910200540', ''),
(50, 'PR0055', '', '9830435004', ''),
(51, 'PR0056', '', '9176161980', ''),
(52, 'PR0061', '', '9955790023', ''),
(53, 'PR0062', '', '9976424223', ''),
(54, 'PR0062', '', '8883819198', ''),
(55, 'PR0063', '', '9940078896', ''),
(56, 'PR0063', '', '9500100445', ''),
(57, 'PR0071', '', '9786427884', ''),
(58, 'PR0071', '', '9791150721', ''),
(59, 'PR0072', '', '9500345775', ''),
(60, 'PR0072', '', '9789554168', ''),
(61, 'PR0074', '', '9994591149', ''),
(62, 'PR0075', '', '9686311583', ''),
(63, 'PR0075', '', '9500081830', ''),
(64, 'PR0085', '', '9952592624', ''),
(65, 'PR0085', '', '9043424196', ''),
(66, 'PR0089', '', '9500041032', ''),
(67, 'PR0089', '', '9840353333', ''),
(68, 'PR0092', '', '9677796466', ''),
(69, 'PR0092', '', '9789783150', ''),
(70, 'PR0093', '', '9962772055', ''),
(71, 'PR0093', '', '9441230757', ''),
(72, 'PR0094', '', '9751859667', ''),
(73, 'PR0094', '', '8122211810', ''),
(74, 'PR0095', '', '9959571633, 7550210840', ''),
(75, 'PR0095', '', '7795823224', ''),
(76, 'PR0097', '', '9765447276', ''),
(77, 'PR0097', '', '7798886848', ''),
(78, 'PR0100', '', '9942989552', ''),
(79, 'PR0100', '', '9952612373', ''),
(80, 'PR0101', '', '9952404002', ''),
(81, 'PR0101', '', '9994680002', ''),
(82, 'PR0103', '', '9489832243', ''),
(83, 'PR0103', '', '9894742180', ''),
(84, 'PR0106', '', '8122860628', ''),
(85, 'PR0109', '', '9003414347', ''),
(86, 'PR0109', '', '7904360269', ''),
(87, 'PR0110', '', '9980309439', ''),
(88, 'PR0110', '', '9962684797', ''),
(89, 'PR0113', '', '9500174632', ''),
(90, 'PR0122', '', '8884537537', ''),
(91, 'PR0122', '', '8884899473', ''),
(92, 'PR0123', '', '9811812323', ''),
(93, 'PR0123', '', '9884824272', ''),
(94, 'PR0124', '', '9944581818', ''),
(95, 'PR0124', '', '9566546646', ''),
(96, 'PR0126', '', '9980033990', ''),
(97, 'PR0126', '', '9916909933', ''),
(98, 'PR0129', '', '9894863237', ''),
(99, 'PR0129', '', '9176743434', ''),
(100, 'PR0133', '', '8056192471', ''),
(101, 'PR0134', '', '9500038364', ''),
(102, 'PR0134', '', '9908178687', ''),
(103, 'PR0135', '', '9652346139', ''),
(104, 'PR0135', '', '9940166493', ''),
(105, 'PR0138', '', '9840460891', ''),
(106, 'PR0138', '', '9095323653', ''),
(107, 'PR0139', '', '9940255820, 9791986492', ''),
(108, 'PR0139', '', '9500354571', ''),
(109, 'PR0140', '', '9894946491', ''),
(110, 'PR0141', '', '9962284273', ''),
(111, 'PR0142', '', '9745913100', ''),
(112, 'PR0142', '', '9746889022', ''),
(113, 'PR0143', '', '9884278484', ''),
(114, 'PR0145', '', '9434359075, 9840204841', ''),
(115, 'PR0145', '', '8148839328', ''),
(116, 'PR0147', '', '8056127094', ''),
(117, 'PR0147', '', '8939389246', ''),
(118, 'PR0148', '', '8939703255', ''),
(119, 'PR0148', '', '9952725549', ''),
(120, 'PR0151', '', '9700739447', ''),
(121, 'PR0154', '', '9176682636', ''),
(122, 'PR0154', '', '9618889950', ''),
(123, 'PR0155', '', '9953607133', ''),
(124, 'PR0158', '', '9940338682', ''),
(125, 'PR0159', '', '7024120050', ''),
(126, 'PR0169', '', '9042521346', ''),
(127, 'PR0169', '', '9941652580', ''),
(128, 'PR0174', '', '9830712493', ''),
(129, 'PR0174', '', '9205103327', ''),
(130, 'PR0178', '', '9901877520', ''),
(131, 'PR0180', '', '9444082470', ''),
(132, 'PR0180A', '', '9940050387', ''),
(133, 'PR0180A', '', '9444082470', ''),
(134, 'PR0187', '', '9600363810', ''),
(135, 'PR0187', '', '8861879891', ''),
(136, 'PR0190', '', '9790201819', ''),
(137, 'PR0190', '', '7639239026', ''),
(138, 'PR0194', '', '9167572428', ''),
(139, 'PR0194', '', '9885412221', ''),
(140, 'PR0196', '', '9407132250', ''),
(141, 'PR0198', '', '7358570949', ''),
(142, 'PR0198', '', '7358570959', ''),
(143, 'PR0200', '', '9486160699', ''),
(144, 'PR0200', '', '7533903140', ''),
(145, 'PR0201', '', '9920611775', ''),
(146, 'PR0202', '', '9659435274', ''),
(147, 'PR0202', '', '9944006801', ''),
(148, 'PR0203', '', '9880963945', ''),
(149, 'PR0205', '', '9591422277', ''),
(150, 'PR0206', '', '8056894362', ''),
(151, 'PR0206', '', '8193982405', ''),
(152, 'PR0207', '', '9843430777', ''),
(153, 'PR0207', '', '9962992584', ''),
(154, 'PR0208', '', '9962554567', ''),
(155, 'PR0209', '', '9491841844, 9642437007', ''),
(156, 'PR0209', '', '9885261271', ''),
(157, 'PR0212', '', '9003064464', ''),
(158, 'PR0212', '', '9884445626', ''),
(159, 'PR0214', '', '9971595829', ''),
(160, 'PR0214', '', '7087781659', ''),
(161, 'PR0217', '', '7838967479', ''),
(162, 'PR0218', '', '9894588199', ''),
(163, 'PR0219', '', '8985970199', ''),
(164, 'PR0219', '', '8985970192', ''),
(165, 'PR0221', '', '9491081634, 7358358273', ''),
(166, 'PR0221', '', '9573103481', ''),
(167, 'PR0224', '', '8056752126', ''),
(168, 'PR0225', '', '9805504173', ''),
(169, 'PR0225', '', '9837842008', ''),
(170, 'PR0226', '', '9999339436', ''),
(171, 'PR0227', '', '7358504004', ''),
(172, 'PR0227', '', '9042723931', ''),
(173, 'PR0229', '', '9600100744', ''),
(174, 'PR0230', '', '9849409227', ''),
(175, 'PR0230', '', '9652413006', ''),
(176, 'PR0231', '', '8266800570', ''),
(177, 'PR0231', '', '9460636327', ''),
(178, 'PR0233', '', '9846019611', ''),
(179, 'PR0234', '', '7338898600', ''),
(180, 'PR0235', '', '9495800089', ''),
(181, 'PR0237', '', '9865902159', ''),
(182, 'PR0237', '', '9442387757', ''),
(183, 'PR0238', '', '9952486220', ''),
(184, 'PR0240', '', '8587818797', ''),
(185, 'PR0240', '', '9003137226', ''),
(186, 'PR0248', '', '9790750957', ''),
(187, 'PR0248', '', '9962144884', ''),
(188, 'PR0249', '', '8800421770', ''),
(189, 'PR0249', '', '8008483754', ''),
(190, 'PR0252', '', '8056247624', ''),
(191, 'PR0252', '', '9861432026', ''),
(192, 'PR0255', '', '8939983908', ''),
(193, 'PR0256', '', '7036815307', ''),
(194, 'PR0263', '', '9619706809', ''),
(195, 'PR0263', '', '9020143578', ''),
(196, 'PR0268', '', '9940351982', ''),
(197, 'PR0268', '', '9994261119', ''),
(198, 'PR0270', '', '8749898644', ''),
(199, 'PR0270', '', '9791991704', ''),
(200, 'PR0271', '', '9810516603', ''),
(201, 'PR0273', '', '7373634763', ''),
(202, 'PR0273', '', '7373736631', ''),
(203, 'PR0274', '', '9362102202', ''),
(204, 'PR0274', '', '9344772172', ''),
(205, 'PR0275', '', '9790070070', ''),
(206, 'PR0275', '', '9791561123', ''),
(207, 'PR0277', '', '9894621006', ''),
(208, 'PR0277', '', '9710576696', ''),
(209, 'PR0278', '', '9894016543', ''),
(210, 'PR0283', '', '9952785522', ''),
(211, 'PR0288', '', '9629876744', ''),
(212, 'PR0288', '', '9159888281', ''),
(213, 'PR0293', '', '8096237668', ''),
(214, 'PR0293', '', '9042651654', ''),
(215, 'PR0297', '', '9597433551', ''),
(216, 'PR0301', '', '9940102740', ''),
(217, 'PR0301', '', '8056907901', ''),
(218, 'PR0302', '', '8939735588', ''),
(219, 'PR0302', '', '9176500835', ''),
(220, 'PR0303', '', '9840404134', ''),
(221, 'PR0305', '', '9438344849', ''),
(222, 'PR0306', '', '9944588844', ''),
(223, 'PR0306', '', '9553531717', ''),
(224, 'PR0309', '', '7338528832', ''),
(225, 'PR0310', '', '8985970204', ''),
(226, 'PR0310', '', '9848785480', ''),
(227, 'PR0311', '', '9003499282', ''),
(228, 'PR0311', '', '9003496768', ''),
(229, 'PR0315', '', '9805221622', ''),
(230, 'PR0316', '', '9450504633', ''),
(231, 'PR0316', '', '7092188718', ''),
(232, 'PR0325', '', '9663381867', ''),
(233, 'PR0325', '', '9003221835', ''),
(234, 'PR0326', '', '7550247929', ''),
(235, 'PR0327', '', '9566457215', ''),
(236, 'PR0327', '', '7418315274', ''),
(237, 'PR0328', '', '9840243477', ''),
(238, 'PR0329', '', '8008469866', ''),
(239, 'PR0329', '', '8754458750', ''),
(240, 'PR0331', '', '9467708586', ''),
(241, 'PR0331', '', '9884524206', ''),
(242, 'PR0333', '', '9176643148', ''),
(243, 'PR0333', '', '9962316162', ''),
(244, 'PR0334', '', '9920925652', ''),
(245, 'PR0335', '', '9894630161', ''),
(246, 'PR0341', '', '9962906433', ''),
(247, 'PR0341', '', '8754424013', ''),
(248, 'PR0342', '', '9176412226', ''),
(249, 'PR0344', '', '7381012767', ''),
(250, 'PR0347', '', '9080027143', ''),
(251, 'PR0347', '', '9962934009', ''),
(252, 'PR0350', '', '9840584553', ''),
(253, 'PR0351', '', '7200779582', ''),
(254, 'PR0355', '', '9940433848', ''),
(255, 'PR0355', '', '9618033444', ''),
(256, 'PR0356', '', '9652623741', ''),
(257, 'PR0356', '', '8106166283', ''),
(258, 'PR0357', '', '9940410807', ''),
(259, 'PR0358', '', '9958067666', ''),
(260, 'PR0360', '', '9442028368', ''),
(261, 'PR0361', '', '8800535398', ''),
(262, 'PR0362', '', '7358260590', ''),
(263, 'PR0364', '', '9159814713', ''),
(264, 'PR0364', '', '9597363811', ''),
(265, 'PR0365', '', '8148516928', ''),
(266, 'PR0368', '', '8098733361', ''),
(267, 'PR0368', '', '9795363657', ''),
(268, 'PR0369', '', '9599518007', ''),
(269, 'PR0370', '', '9966154151', ''),
(270, 'PR0371', '', '7776062447', ''),
(271, 'PR0372', '', '9176558736', ''),
(272, 'PR0372', '', '9547058736', ''),
(273, 'PR0376', '', '7200141414', ''),
(274, 'PR0376', '', '7010008161', ''),
(275, 'PR0377', '', '7358634887', ''),
(276, 'PR0377', '', '9816077984', ''),
(277, 'PR0378', '', '9442288466', ''),
(278, 'PR0378', '', '9442216000', ''),
(279, 'PR0379', '', '7022281110', ''),
(280, 'PR0379', '', '7030197471', ''),
(281, 'PR0381', '', '9791177652', ''),
(282, 'PR0383', '', '8050616666', ''),
(283, 'PR0386', '', '8978669720', ''),
(284, 'PR0386', '', '9840708384', ''),
(285, 'PR0387', '', '9952076711', ''),
(286, 'PR0387', '', '9761625499', ''),
(287, 'PR0388', '', '9981406130', ''),
(288, 'PR0388', '', '9438066616', ''),
(289, 'PR0389', '', '9962927711', ''),
(290, 'PR0390', '', '7338994840', ''),
(291, 'PR0390', '', '9087867791', ''),
(292, 'PR0391', '', '9962090211', ''),
(293, 'PR0392', '', '9455714473', ''),
(294, 'PR0392', '', '9962310536, 7276004562', ''),
(295, 'PR0393', '', '9789993384', ''),
(296, 'PR0393', '', '9894406598', ''),
(297, 'PR0394', '', '8186937947', ''),
(298, 'PR0394', '', '9346556593', ''),
(299, 'PR0396', '', '8281870664', ''),
(300, 'PR0396', '', '9496674160', ''),
(301, 'PR0397', '', '9884001616', ''),
(302, 'PR0397', '', '9884001919', ''),
(303, 'PR0401', '', '8266805457', ''),
(304, 'PR0401', '', '8175942959', ''),
(305, 'PR0403', '', '8220656249', ''),
(306, 'PR0403', '', '9443519830', ''),
(307, 'PR0404', '', '9176378688', ''),
(308, 'PR0404', '', '9600194703', ''),
(309, 'PR0405', '', '9715881458', ''),
(310, 'PR0406', '', '9884227975', ''),
(311, 'PR0406', '', '9677795957', ''),
(312, 'PR0407', '', '9884872062', ''),
(313, 'PR0411', '', '8861138787', ''),
(314, 'PR0411', '', '9323524303', ''),
(315, 'PR0414', '', '7799445256', ''),
(316, 'PR0416', '', '9940293620', ''),
(317, 'PR0416', '', '9940642560', ''),
(318, 'PR0423', '', '8879437575', ''),
(319, 'PR0424', '', '9488977992', ''),
(320, 'PR0424', '', '9994760578', ''),
(321, 'PR0426', '', '9094980674', ''),
(322, 'PR0426', '', '9488166440', ''),
(323, 'PR0428', '', '9840015930, 8375041981', ''),
(324, 'PR0428', '', '8373936856', ''),
(325, 'PR0429', '', '9940004897', ''),
(326, 'PR0429', '', '9840707326', ''),
(327, 'PR0430', '', '8056790207', ''),
(328, 'PR0430', '', '9443499886', ''),
(329, 'PR0431', '', '7842531149', ''),
(330, 'PR0431', '', '8686536631', ''),
(331, 'PR0432', '', '7397344328', ''),
(332, 'PR0432', '', '9910225220', ''),
(333, 'PR0435', '', '9629523677', ''),
(334, 'PR0437', '', '9176759429', ''),
(335, 'PR0444', '', '7299011229', ''),
(336, 'PR0444', '', '9003150649', ''),
(337, 'PR0445', '', '9819699956', ''),
(338, 'PR0445', '', '8888851452', ''),
(339, 'PR0447', '', '9892152027', ''),
(340, 'PR0447', '', '9962585147', ''),
(341, 'PR0448', '', '9840158084', ''),
(342, 'PR0448', '', '7358234084', ''),
(343, 'PR0449', '', '9629277487', ''),
(344, 'PR0450', '', '9176578400', ''),
(345, 'PR0450', '', '9381574555', ''),
(346, 'PR0452', '', '9970177864', ''),
(347, 'PR0453', '', '8220151846', ''),
(348, 'PR0455', '', '8903471252', ''),
(349, 'PR0456', '', '9894023367', ''),
(350, 'PR0456', '', '9874377264', ''),
(351, 'PR0462', '', '9911138699', ''),
(352, 'PR0463', '', '9632261841', ''),
(353, 'PR0463', '', '8050231884', ''),
(354, 'PR0464', '', '9790535797', ''),
(355, 'PR0467', '', '9481778845', ''),
(356, 'PR0467', '', '8940495888', ''),
(357, 'PR0470', '', '7339666161', ''),
(358, 'PR0471', '', '7303509087', ''),
(359, 'PR0472', '', '9632388990', ''),
(360, 'PR0472', '', '9884632512', ''),
(361, 'PR0473', '', '9840018564', ''),
(362, 'PR0473', '', '9840710027', ''),
(363, 'PR0475', '', '9940056014', ''),
(364, 'PR0475', '', '8883997290', ''),
(365, 'PR0476', '', '9962248218', ''),
(366, 'PR0477', '', '9840101382', ''),
(367, 'PR0477', '', '9840101390', ''),
(368, 'PR0478', '', '9488177823', ''),
(369, 'PR0478', '', '7338942139', ''),
(370, 'PR0479', '', '9176707565', ''),
(371, 'PR0479', '', '9941007565', ''),
(372, 'PR0481', '', '9894928647', ''),
(373, 'PR0482', '', '9176743446', ''),
(374, 'PR0482', '', '8939844408', ''),
(375, 'PR0483', '', '9952826838', ''),
(376, 'PR0483', '', '9597011310', ''),
(377, 'PR0485', '', '9444615976', ''),
(378, 'PR0487', '', '8754414635', ''),
(379, 'PR0489', '', '8870701702', ''),
(380, 'PR0489', '', '9943034973', ''),
(381, 'PR0491', '', '9884848942', ''),
(382, 'PR0491', '', '9895497213', ''),
(383, 'PR0495', '', '9894338089', ''),
(384, 'PR0496', '', '8861561854', ''),
(385, 'PR0496', '', '9650030501', ''),
(386, 'PR0497', '', '7338834999', ''),
(387, 'PR0497', '', '9840777976', ''),
(388, 'PR0498', '', '9819229317', ''),
(389, 'PR0498', '', '9881736063', ''),
(390, 'PR0500', '', '7382047976', ''),
(391, 'PR0500', '', '8939483625', ''),
(392, 'PR0501', '', '9952097962', ''),
(393, 'PR0501', '', '7904033387', ''),
(394, 'PR0502', '', '9890972656', ''),
(395, 'PR0502', '', '0721-2590293', ''),
(396, 'PR0503', '', '7057811764', ''),
(397, 'PR0504', '', '9500044014', ''),
(398, 'PR0505', '', '9885186187', ''),
(399, 'PR0506', '', '9003770303', ''),
(400, 'PR0507', '', '7034857972', ''),
(401, 'PR0508', '', '9443030222', ''),
(402, 'PR0508', '', '9597876210', ''),
(403, 'PR0509', '', '9543686495', ''),
(404, 'PR0509', '', '9791305091', ''),
(405, 'PR0510', '', '8754582569', ''),
(406, 'PR0511', '', '9909972771', ''),
(407, 'PR0513', '', '9790705949', ''),
(408, 'PR0513', '', '8807380658', ''),
(409, 'PR0514', '', '8151910607', ''),
(410, 'PR0514', '', '7904025646', ''),
(411, 'PR0515', '', '8675664707', ''),
(412, 'PR0515', '', '9676179515', ''),
(413, 'PR0516', '', '9701955561', ''),
(414, 'PR0517', '', '9962015730', ''),
(415, 'PR0518', '', '9962087723', ''),
(416, 'PR0519', '', '9940998596', ''),
(417, 'PR0520', '', '9500194425', ''),
(418, 'PR0520', '', '9600044076', ''),
(419, 'PR0522', '', '8185833292', ''),
(420, 'PR0523', '', '7868014352', ''),
(421, 'PR0524', '', '9962013834', ''),
(422, 'PR0524', '', '7358700174', ''),
(423, 'PR0526', '', '8800860302', ''),
(424, 'PR0527', '', '9677041415', ''),
(425, 'PR0527', '', '9962132773', ''),
(426, 'PR0528', '', '9940768976', ''),
(427, 'PR0528', '', '8754451774', ''),
(428, 'PR0529', '', '9962757744', ''),
(429, 'PR0529', '', '9003243011', ''),
(430, 'PR0530', '', '9962500980', ''),
(431, 'PR0531', '', '8892275830', ''),
(432, 'PR0532', '', '7358779292', ''),
(433, 'PR0532', '', '9789318003', ''),
(434, 'PR0533', '', '9884884348', ''),
(435, 'PR0533', '', '9500105101', ''),
(436, 'PR0534', '', '9164849011', ''),
(437, 'PR0535', '', '9884268371', ''),
(438, 'PR0535', '', '9884660420', ''),
(439, 'PR0536', '', '8939280912', ''),
(440, 'PR0536', '', '8939416215', ''),
(441, 'PR0537', '', '9867656743', ''),
(442, 'PR0538', '', '9921072357', ''),
(443, 'PR0539', '', '7373004398', ''),
(444, 'PR0540', '', '9894358270', ''),
(445, 'PR0541', '', '9444046027', ''),
(446, 'PR0542', '', '7358584391', ''),
(447, 'PR0543', '', '7358628628', ''),
(448, 'PR0544', '', '9629555275', ''),
(449, 'PR0545', '', '9899704732', ''),
(450, 'PR0546', '', '9600065087', ''),
(451, 'PR0546', '', '9840412239', ''),
(452, 'PR0547', '', '7358705020', ''),
(453, 'PR0547', '', '7358705010', ''),
(454, 'PR0548', '', '8089072100', ''),
(455, 'PR0548', '', '8893336768', ''),
(456, 'PR0549', '', '9748946014', ''),
(457, 'PR0550', '', '8825764192', ''),
(458, 'PR0550', '', '9917222785', ''),
(459, 'PR0551', '', '9840932374', ''),
(460, 'PR0551', '', '9962239141', ''),
(461, 'PR0552', '', '9444424440', ''),
(462, 'PR0552', '', '9176666042', ''),
(463, 'PR0553', '', '9789742019', ''),
(464, 'PR0554', '', '9003160329', ''),
(465, 'PR0555', '', '8135064891', ''),
(466, 'PR0555', '', '9435715997', ''),
(467, 'PR0556', '', '7667401152', ''),
(468, 'PR0557', '', '8286043222', ''),
(469, 'PR0558', '', '9600982570', ''),
(470, 'PR0558', '', '9789007079', ''),
(471, 'PR0559', '', '9597155387', ''),
(472, 'PR0560', '', '9769534141', ''),
(473, 'PR0560', '', '8169325969', ''),
(474, 'PR0561', '', '7358574191', ''),
(475, 'PR0561', '', '9790604778', ''),
(476, 'PR0562', '', '8754961422', ''),
(477, 'PR0562', '', '9042715205', ''),
(478, 'PR0563', '', '9600219182', ''),
(479, 'PR0563', '', '9003036264', ''),
(480, 'PR0564', '', '8939612282', ''),
(481, 'PR0565', '', '9003142781', ''),
(482, 'PR0565', '', '8939612282', ''),
(483, 'PR0566', '', '9176835544', ''),
(484, 'PR0567', '', '9791472198', ''),
(485, 'PR0568', '', '9567696257', ''),
(486, 'PR0569', '', '9840239737', ''),
(487, 'PR0570', '', '7338883969', ''),
(488, 'PR0571', '', '9790737520', ''),
(489, 'PR0572', '', '9940354691', ''),
(490, 'PR0572', '', '9952036041', ''),
(491, 'PR0573', '', '9703000927', ''),
(492, 'PR0574', '', '9941213269', ''),
(493, 'PR0574', '', '8056250743', ''),
(494, 'PR0575', '', '9841335104', ''),
(495, 'PR0575', '', '7598600101', ''),
(496, 'PR0576', '', '9884262950', ''),
(497, 'PR0576', '', '9043692450', ''),
(498, 'PR0577', '', '9176654165', ''),
(499, 'PR0579', '', '9629941542', ''),
(500, 'PR0579', '', '9629148960', ''),
(501, 'PR0580', '', '9051225525', ''),
(502, 'PR0580', '', '9884382470', ''),
(503, 'PR0581', '', '9791104052', ''),
(504, 'PR0582', '', '9965609094', ''),
(505, 'PR0582', '', '8778094387', ''),
(506, 'PR0583', '', '9790498976', ''),
(507, 'PR0584', '', '9600178010', ''),
(508, 'PR0585', '', '9176835544', ''),
(509, 'PR0585', '', '9003142781', ''),
(510, 'PR0586', '', '9962670815', ''),
(511, 'PR0588', '', '7397456335', ''),
(512, 'PR0589', '', '9867394878', ''),
(513, 'PR0590', '', '9884916159', ''),
(514, 'PR0591', '', '9894135386', ''),
(515, 'PR0591', '', '8919869547, 8121191888', ''),
(516, 'PR0592', '', '9962656630', ''),
(517, 'PR0593', '', '7871382500', ''),
(518, 'PR0593', '', '8056159920', ''),
(519, 'PR0594', '', '9600000727', ''),
(520, 'PR0594', '', '9952179966', ''),
(521, 'PR0595', '', '9944182315', ''),
(522, 'PR0595', '', '9488055550', ''),
(523, 'PR0596', '', '7259960047', ''),
(524, 'PR0596', '', '7019352733', ''),
(525, 'PR0598', '', '9789802824', ''),
(526, 'PR0598', '', '9789984235', ''),
(527, 'PR0599', '', '7506732551', ''),
(528, 'PR0601', '', '9832046595', ''),
(529, 'PR0601', '', '9434000745', ''),
(530, 'PR0602', '', '7358793259', ''),
(531, 'PR0603', '', '9791094337', ''),
(532, 'PR0604', '', '8056184938', ''),
(533, 'PR0605', '', '9841058485', ''),
(534, 'PR0606', '', '9962745280', ''),
(535, 'PR0606', '', '7358411947', ''),
(536, 'PR0607', '', '9654555269', ''),
(537, 'PR0607', '', '9884422055, 7737252704', ''),
(538, 'PR0608', '', '9581348401', ''),
(539, 'PR0609', '', '9566053874', ''),
(540, 'PR0609', '', '8121635185', ''),
(541, 'PR0610', '', '9840771446', ''),
(542, 'PR0610', '', '9500071446', ''),
(543, 'PR0611', '', '9500536154', ''),
(544, 'PR0612', '', '9994240824', ''),
(545, 'PR0613', '', '9820292950', ''),
(546, 'PR0614', '', '7358668614', ''),
(547, 'PR0614', '', '9555559095', ''),
(548, 'PR0615', '', '8754392112', ''),
(549, 'PR0616', '', '9791446304', ''),
(550, 'PR0616', '', '9540729210', ''),
(551, 'PR0617', '', '8527640840', ''),
(604, 'PR0617', '', '9582600189', 'Secondary'),
(605, 'PR0618', '', '9952925541', 'Primary'),
(610, 'PR0619', '0', '9831724744', 'Primary'),
(611, 'PR0619', '310825', '9804221772', 'Primary'),
(621, 'PR0620', '', '9840118403', ''),
(622, 'PR0621', '', '9886753369', ''),
(623, 'PR0622', '', '8939000499', ''),
(624, 'PR0622', '', '9198719335, 9176033255', ''),
(625, 'PR0600', '', '9007106177', ''),
(626, '', '806364', '9786706043', 'Primary'),
(627, '0', 'ENQ000002', '7655677655', 'primary'),
(628, '0', 'ENQ000003', '', 'primary'),
(629, '0', 'ENQ000004', '', 'primary'),
(630, '0', 'ENQ000008', '', 'primary'),
(631, 'PR0623', '', '8768768790', 'Primary'),
(632, 'PR0624', '', '8768768790', 'Primary'),
(633, '0', 'ENQ000004', '', 'primary'),
(634, '0', 'ENQ000003', '8531075313', 'primary');

-- --------------------------------------------------------

--
-- Table structure for table `customer_general_detail`
--

CREATE TABLE `customer_general_detail` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_type_id` int(30) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `age` int(4) NOT NULL,
  `dob` date NOT NULL,
  `nativity` varchar(30) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `marital_status` tinyint(4) NOT NULL,
  `residential_status` tinyint(4) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `photo_path` varchar(400) NOT NULL,
  `customer_status` tinyint(4) NOT NULL,
  `remove_type` tinyint(4) NOT NULL,
  `kyc_status` tinyint(4) NOT NULL,
  `prepared_by` varchar(30) NOT NULL,
  `prepared_at` datetime NOT NULL,
  `kyc_verified_by` varchar(30) NOT NULL,
  `kyc_verified_at` datetime NOT NULL,
  `done_by` varchar(30) NOT NULL,
  `done_at` datetime NOT NULL,
  `referal_bonus` float(11,2) NOT NULL,
  `extra_amount` float(11,2) NOT NULL,
  `pending_cost` float(11,2) NOT NULL,
  `state_id` int(5) NOT NULL,
  `city_id` int(5) NOT NULL,
  `zone_id` int(4) NOT NULL DEFAULT '0',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `close_month` int(11) NOT NULL DEFAULT '0',
  `close_year` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_general_detail`
--

INSERT INTO `customer_general_detail` (`id`, `customer_id`, `enquiry_id`, `customer_type_id`, `customer_name`, `email`, `age`, `dob`, `nativity`, `gender`, `marital_status`, `residential_status`, `payment_status`, `photo_path`, `customer_status`, `remove_type`, `kyc_status`, `prepared_by`, `prepared_at`, `kyc_verified_by`, `kyc_verified_at`, `done_by`, `done_at`, `referal_bonus`, `extra_amount`, `pending_cost`, `state_id`, `city_id`, `zone_id`, `area_id`, `month`, `year`, `close_month`, `close_year`) VALUES
(2, 'PR0002', '', 0, 'Amit Pathak', 'amitpathak@cholams.murugappa.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(3, 'PR0003', '', 0, 'Judy Roche', 'judyroche01@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 2250.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(4, 'PR0007', '', 0, 'Sathiyaseelan. T.S', 'sathiyaseelan.ts@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(5, 'PR0011', '', 0, 'Arun. K', 'arunaiarun1409@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(6, 'PR0016', '', 0, 'Jenith.P', 'jenithkvp@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(7, 'PR0017', '', 0, 'Lokabhirama Raju K', 'rajuyelkay@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(9, 'PR0018', '', 0, 'Kunwarjeet Singh Grover', 'kunwarjeet@cavinkare.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(12, 'PR0019', '', 0, 'Ankit Arya', 'iankitarya@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(14, 'PR0021', '', 0, 'Chandrakant Minz', 'chandrakant.minz@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(18, 'PR0023', '', 0, 'Vijay Venkatesvar K P', 'vijay.idol@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(20, 'PR0030', '', 0, 'Srinija Ammapalli', 'asrinija@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(21, 'PR0032', '', 0, 'Atul Jaswal', 'atul.jaswal4@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(22, 'PR0034', '', 0, 'Chockalingam (MUHAMMED)', 'cuteandsmartlingam@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(23, 'PR0035', '', 0, 'Krishnaveni', 'drveni74@gmail.com', 0, '0000-00-00', '', 3, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(25, 'PR0036', '', 0, 'Biju Mathew, Praveen K', 'championmathew@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(29, 'PR0038', '', 0, 'Ankur Bhusan Saikia', 'ankursaikia14@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(30, 'PR0042', '', 0, 'Mohit Taneja/Bikramjeet Singh', 'mohittangaldh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(31, 'PR0043', '', 0, 'Snigdha Sunil Kumar<>Nikita Bhushan', 'snigdha11@micamail.in', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(33, 'PR0044', '', 0, 'Kailash/Nilesh Choubisa', 'nileshnsnnc2311@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(34, 'PR0046', '', 0, 'Preethy Murugiah', 'mpreethy@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(35, 'PR0048', '', 0, 'Prashant Kumar, Goteti Bangarar', 'gbpk46@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(36, 'PR0049', '', 0, 'Hemapriya/Vipuna Vijayan', 'hemapriya@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(39, 'PR0053', '', 0, 'Nabeela Nudrath', 'nabeela.collage@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(41, 'PR0055', '', 0, 'Barnomoy Saha', 'barnomoy.saha@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(42, 'PR0056', '', 0, 'Gantimahapatruni Surya Prakash Rao', 'suryagm@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 22500.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(43, 'PR0061', '', 0, 'Pankaj Mishra', 'mishra_1_pankaj@yahoo.co.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(49, 'PR0063', '', 0, 'Muthukumaran', 'muthu2011cs@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 750.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(50, 'PR0071', '', 0, 'Fazil Nadeem Hussain/ Adil', 'fazil.hussain1994@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(53, 'PR0072', '', 0, 'Aswin S', 'aswa93@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(55, 'PR0074', '', 0, 'Ram.M (Mythili Viswanathan)', 'vmyth93@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(57, 'PR0075', '', 0, 'Evelyn Joseph', 'evelynjx@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(59, 'PR0085', '', 0, 'Sathya Narayanan Anbu (Bharath)', 'asn.tech@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(61, 'PR0089', '', 0, 'Amit Kurian Issac/Janani', 'aki.amit@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(62, 'PR0092', '', 0, 'Seyed Ahamed Kabeer S H/ Sai Krishna', 'kabasha922@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(63, 'PR0093', '', 0, 'Priyanka B/Shivani', 'b.priyanka576@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(65, 'PR0095', '', 0, 'Lahari Meda', 'mslaharimedame@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(67, 'PR0101', '', 0, 'Seshadri C S', 'seshpaa@yahoo.co.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(68, 'PR0106', '', 0, 'Bunty Babu', 'buntybabu89@gmail.com/ayushjain101993@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(69, 'PR0109', '', 0, 'Tagore Nayak Tejavath', 'ru4tagore93@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(71, 'PR0113', '', 0, 'Mohit Rathor', 'mohitece247@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(72, 'PR0122', '', 0, 'JESWIN / Ezhil Nichilan C', 'ezhil.nichilan@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(73, 'PR0123', '', 0, 'Ayush Sachdev', 'sachdev.ayush@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(74, 'PR0124', '', 0, 'Praveen N M', 'nm.praveen.vceg@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 60.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(76, 'PR0126', '', 0, 'Siddharth Rajsekar', 'sidz@me.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(77, 'PR0129', '', 0, 'Vigneshwara (Janaki Raman)', 'little.jani.little@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(78, 'PR0133', '', 0, 'Ramesh Kumar Nair', 'bluepetabinc@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(79, 'PR0134', '', 0, 'Naresh Jawni', 'nareshjawni@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(82, 'PR0135', '', 0, 'Nagavani (Suguna Kurma)', 'vanismart@gmail.com, konldaveti_nagavani@cat.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(83, 'PR0138', '', 0, 'S Mahesh Kumar', 'maheshshankar1976@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(86, 'PR0139', '', 0, 'Balasivakami/Sindhuja', 'krbalavidhya@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(87, 'PR0140', '', 0, 'Ilakkiaselvan S', 'intelswebmaster@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(88, 'PR0141', '', 0, 'Meenusree R', 'meenu.shreeji@googlemail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(90, 'PR0142', '', 0, 'Aswathy Mary Mathew', 'aswathymarymathew@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(91, 'PR0143', '', 0, 'Janani Rangamani', 'janani.rangamani@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(92, 'PR0145', '', 0, 'Ashok Krishna/ Ashish', 'ashokvurukooti@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(93, 'PR0147', '', 0, 'Abhijeet Mishra', 'dsisavi@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(95, 'PR0148', '', 0, 'R S Sriram', 'sriram.minam@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(96, 'PR0151', '', 0, 'Naresh V', 'vepula.naresh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(98, 'PR0154', '', 0, 'Vundavalli Koteswara Rao', 'kurankoteswar@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(100, 'PR0155', '', 0, 'Krishnan V Nair', 'krishnanvnair@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(101, 'PR0158', '', 0, 'Arun Nair', 'arunnairhcl@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(102, 'PR0159', '', 0, 'Swapnil Singh', 'swapnilsingh080@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(103, 'PR0169', '', 0, 'Chakravarthi Sara', 'chakri0685@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(104, 'PR0052', '', 0, 'Chetan Dasgupta/Lohit', 'chetandasgupta@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(105, 'PR0174', '', 0, 'Piyali Biswas', 'tinabiswass@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(110, 'PR0178', '', 0, 'Rhea Issac', 'rhea.leo.3@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(111, 'PR0040', '', 0, 'Siddhartha Ghosh', 'siddharthaghosh1513@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(112, 'PR0180', '', 0, 'Opulent Auto Care Pvt Ltd', 'rajan@opulentindia.com, accountschennai@opulentindia.com', 0, '0000-00-00', '', 2, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(115, 'PR0180A', '', 0, 'Premium Car Care', 'pccchennai2004@gmail.com', 0, '0000-00-00', '', 2, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(116, 'PR0187', '', 0, 'V Melvin Roy', 'melvinroy.victor@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(117, 'PR0190', '', 0, 'K N Gowri Shankaran', 'gowrishankaran1987@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(120, 'PR0194', '', 0, 'Shweta Agarwal', 'shweta.agrwl1990@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(122, 'PR0196', '', 0, 'Rishi Patidar', 'rishipatidar2008@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(124, 'PR0198', '', 0, 'Subrata Dash', 'subrata2612@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(129, 'PR0200', '', 0, 'Rishank Gupta/ Mritunjay', 'rishank.gupta11@gmail.com, mrityubabu@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(130, 'PR0201', '', 0, 'Archana Venkatesh', 'a.venkatesh@accenture.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(132, 'PR0202', '', 0, 'S Sujitha', 'suji6dec@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(134, 'PR0203', '', 0, 'Malini Ashok', 'vmbrijith@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(135, 'PR0205', '', 0, 'Imran', 'imranaiesec@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(136, 'PR0206', '', 0, 'Abhishek Lamba', 'abhisheklamba13@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(138, 'PR0207', '', 0, 'Pradeep Samuel', 'pradee.samuel@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(141, 'PR0208', '', 0, 'Muthu Ganesh I', 'muthuganeshi@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(143, 'PR0209', '', 0, 'Rallapalli Ramesh', 'rrramesh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(144, 'PR0212', '', 0, 'Dileepkumar Nalluri', 'dileep.nalluri@outlook.com, dileep.nalluri@outlook.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(145, 'PR0214', '', 0, 'Anirudh Singh / Anoop Kamboj', 'anirudhsk2006@gmail.com, anoop.kamboj87@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(148, 'PR0217', '', 0, 'Abhishek Goyal', 'abhishekgoyal0611@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(152, 'PR0218', '', 0, 'Gowtham S', 'sgow0204@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(154, 'PR0219', '', 0, 'G Suresh', 'sureshg702@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(162, 'PR0224', '', 0, 'Darshika Sharma', 'sharmadarshika1@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(163, 'PR0225', '', 0, 'Shagun Garg', 'shagungarg03@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(164, 'PR0226', '', 0, 'Keshav Dewan', 'dewan.keshav@gmail.com, prateek1606@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(165, 'PR0227', '', 0, 'T Kuldeep', 'kuldeep.sunny@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(167, 'PR0229', '', 0, 'Pawan Anand', 'pawananand81@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(168, 'PR0230', '', 0, 'Tapan Sabharwal', 'tapan.sabharwal@autherlandglobal.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(174, 'PR0231', '', 0, 'Apoorv Agrawal', 'apoorv10.agrawal@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(175, 'PR0234', '', 0, 'Anubhav Srivastava', 'anubhavsrivastava93@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(177, 'PR0235', '', 0, 'Antony Pius', 'antony.pius93@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(180, 'PR0237', '', 0, 'Varun Krishnan R', 'varun161093@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(182, 'PR0240', '', 0, 'Andreena Sung', 'andreenasung94@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(183, 'PR0248', '', 0, 'Alwyno Martin', 'onywlanitram@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(184, 'PR0249', '', 0, 'Renu Venugopal', 'renuvngpl@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(186, 'PR0252', '', 0, 'Durgesh Nayak', 'nayak.durgesh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 1703.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(187, 'PR0255', '', 0, 'Sunarto Jie', 'sunarto.jie@barclays.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(188, 'PR0256', '', 0, 'Chaithanya', '', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 65400.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(189, 'PR0263', '', 0, 'Arun B', 'arunb.onl@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(190, 'PR0268', '', 0, 'Kishore Kanth', 'kishore@bensherman.co.uk, kk72765@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(191, 'PR0270', '', 0, 'Ankur Gupta', 'ankur2012iitg@gmail.com, ankur2012iitg@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(194, 'PR0271', '', 0, 'Sharad Goklani', 'sgoklani@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(195, 'PR0273', '', 0, 'Uma Bharathi M', 'umasapabathy@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(198, 'PR0274', '', 0, 'V V Bhaskar', 'enterprisessalem@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(205, 'PR0275', '', 0, 'Sivakumar S', 'srinivasjan19@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(206, 'PR0277', '', 0, 'Ashwin Ganapathy', 'mr.winash@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(207, 'PR0278', '', 0, 'U. Nilofer', 'nilofereee90@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(208, 'PR0283', '', 0, 'Nishanthee K', 'nishu.kannan@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(209, 'PR0288', '', 0, 'Rakshita Raghuwanshi', 'rakshita27_gr8@yahoo.co.in', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 60.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(210, 'PR0293', '', 0, 'Karthikeya Yuv', 'kkeya4848@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(219, 'PR0297', '', 0, 'Ashish Tiwari', 'tiwariashish2001@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(223, 'PR0302', '', 0, 'Mayank Mani', 'mayankmani2701@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(224, 'PR0303', '', 0, 'Thirumalaiselvan A', 'thiru1984@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(226, 'PR0305', '', 0, 'Smruti Bikash Panda', 'smrutibikash.panda@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 258.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(227, 'PR0306', '', 0, 'CH.Sai Bharadwaj', 'sbharadwaj.c@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(228, 'PR0309', '', 0, 'Sudha Balasubramanyam', 'sudha.balasubramanyam@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 3251.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(230, 'PR0310', '', 0, 'T Mythili', 'tmythili.hyd@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(232, 'PR0311', '', 0, 'Nethaji', 'raj.nethaji171@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(233, 'PR0315', '', 0, 'Bijon Kowstik Paul', 'mystry444@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(234, 'PR0316', '', 0, 'Ankit Sharma', 'as260491@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(235, 'PR0325', '', 0, 'Vijay Babu', 'vijay@flinto.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 1300.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(236, 'PR0326', '', 0, 'Arunabh Sinha', 'arunabhsinha@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(240, 'PR0327', '', 0, 'Ravi Kanchan Bhengra', 'ravi25jun@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(241, 'PR0344', '', 0, 'Subrat Kumar Harrichandran', 'subrat.harichandan@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(243, 'PR0328', '', 0, 'Venkataraman', 'venkataramanan@tafe.com, ramanan66mcp@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(244, 'PR0329', '', 0, 'Puranam Harish', 'harishpuranam95@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(245, 'PR0331', '', 0, 'Mahima Kashyap', 'mahi2482@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(250, 'PR0333', '', 0, 'Nitish Tiwari', '14.nitish@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(252, 'PR0334', '', 0, 'C Viswadeep', 'cviswadeep@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 542.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(253, 'PR0335', '', 0, 'Jeswin Prince J', 'princejeswin44@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(254, 'PR0341', '', 0, 'Harsh Pandya', 'harshpandiya.8@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 200.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(255, 'PR0342', '', 0, 'D Vignesh Kumar', 'vigneshsvseee@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(257, 'PR0347', '', 0, 'G Gopinath', 'gopi.karem@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(259, 'PR0350', '', 0, 'Kala Ravishanker', 'ivedaz@yahoo.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(261, 'PR0351', '', 0, 'Rateesh Venugopal', 'rateesh.venugopal@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(263, 'PR0355', '', 0, 'Siva Sankar Varaprasad B', 'sankarprasad948@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(264, 'PR0356', '', 0, 'T A S Srilatha', 'susan.srilatha@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(265, 'PR0357', '', 0, 'Bhakyaram S M', 'bhagyaram@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(266, 'PR0358', '', 0, 'Ajay S', 'ajax.sk@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(267, 'PR0360', '', 0, 'Jegaveerpandian R', 'jegaveerpandian16@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(270, 'PR0361', '', 0, 'Nipun Sharma', 'nipun-windos@live.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(272, 'PR0362', '', 0, 'Vinoth A', 'avinoth@outlook.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 283.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(274, 'PR0364', '', 0, 'Dharmika Choudhary', 'cdharmika07@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(276, 'PR0365', '', 0, 'Akshit Nandi', 'akshit.nandi@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(277, 'PR0368', '', 0, 'Yash Sehgal', 'yash.sehgal04@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(278, 'PR0369', '', 0, 'Sabyasachi Mohanty', 'sabya@live.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(279, 'PR0370', '', 0, 'B M S Akshitha Akula', 'akshitha.bhavya@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(280, 'PR0371', '', 0, 'Nishant Das', 'nishant.das.708@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(281, 'PR0372', '', 0, 'Shoaib Shariff', 'shoaib.alc@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(283, 'PR0376', '', 0, 'Varun', 'annevarun.84@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(285, 'PR0377', '', 0, 'Sajal Anand', 'sajalanand7@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(294, 'PR0378', '', 0, 'Krishna Kumar', 'krishnakumarlatha@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(295, 'PR0379', '', 0, 'Kiran Bhaskar Nayak', 'kiran.b.nayak@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 6100.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(296, 'PR0381', '', 0, 'Prashanth Swami', 'swamiprashant.1991@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(297, 'PR0383', '', 0, 'Sai Sandeep', 'saisidhu2@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(299, 'PR0386', '', 0, 'Santhoshitha G', 's.gokulavasan@gmail.com, ramanr@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(300, 'PR0387', '', 0, 'Pranit Chauhan', 'chauhanpranit@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 250.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(305, 'PR0388', '', 0, 'D Sundar Sharma', 'dibya007@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(306, 'PR0389', '', 0, 'Sneha V', 'sneha.27vir@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(307, 'PR0390', '', 0, 'Vinay Anuragh', 'vangh5464@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(308, 'PR0391', '', 0, 'Chanchal Daksh', 'chanchaldaksh3091@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(317, 'PR0392', '', 0, 'Tushar Verma', 'asksumit2singh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(319, 'PR0393', '', 0, 'Srinath Padman', 'srinathpadman@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(321, 'PR0394', '', 0, 'Matta Santosh', 'santoshmatta89@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(322, 'PR0396', '', 0, 'Vinay R', 'vinay.reachme@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(323, 'PR0397', '', 0, 'Williams', 'awilliam27@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 600.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(330, 'PR0401', '', 0, 'Abhilash Ranjan', 'rajanabhilash111@gmail.com, bivs06@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(333, 'PR0403', '', 0, 'Aparna S', 'aparna.saparna@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 1211.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(334, 'PR0404', '', 0, 'Sarmed Noor', 'sarmod11july@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 377.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(335, 'PR0405', '', 0, 'Sivakarthik P', 'sivakarthik.psk@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(337, 'PR0406', '', 0, 'Amala R', 'amala2892@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(338, 'PR0407', '', 0, 'Martin Surendran', '6stringod@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(342, 'PR0411', '', 0, 'Satyabrata Tripathy', 'sb_tripathi@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(346, 'PR0414', '', 0, 'Nikita Aurora', 'auroranikita@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(349, 'PR0416', '', 0, 'Alice Iyapillai', 'hemandrews@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(350, 'PR0423', '', 0, 'Mayank Kumar Agrawal', 'marutsuki97@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(352, 'PR0424', '', 0, 'Sundarrajan G', 'sundarg41995@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(356, 'PR0426', '', 0, 'Vishalkumar Goyal', 'vishalgoyal12594@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(359, 'PR0428', '', 0, 'Anupam Tripathi', 'anupam_tripathi@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 7060.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(361, 'PR0429', '', 0, 'Vani Nizhawan', 'vaninijhawan08@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(363, 'PR0431', '', 0, 'Naveen Reddy', 'naveen.naveen.vancha@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(369, 'PR0432', '', 0, 'Saurabk Kumar Chandra', 'er.skchandra@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 4471.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(371, 'PR0435', '', 0, 'Harikishore SVS', 'kishorehari92@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(372, 'PR0103', '', 0, 'Arun Prasanna', 'arunprasanna008@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(373, 'PR0437', '', 0, 'Srabasti Dey', 'srabastidey18@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(377, 'PR0444', '', 0, 'T Kavitha', 'kavinilamba@yahoo.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(385, 'PR0445', '', 0, 'Mitav Kulshrestha', 'er.mitav@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(386, 'PR0447', '', 0, 'Glenn Soans', 'glenn.soans@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(387, 'PR0448', '', 0, 'Rajendra Kumar Sharma', 'rajendrak.s@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(388, 'PR0449', '', 0, 'Meiyanantham P', 'meiyece@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(393, 'PR0450', '', 0, 'Preksha', 'prekajmera.in@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(398, 'PR0452', '', 0, 'Nida I Shaikh', 'sallushaikh@hotmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(399, 'PR0233', '', 0, 'Avinash Krishnan', 'aukrishnan@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(410, 'PR0453', '', 0, 'Vaibhav Jha', 'vaibhav.loyola@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(411, 'PR0455', '', 0, 'Kavin Prasad T', 'kavinprasad1993@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(412, 'PR0456', '', 0, 'Tora Bhadra / Shareef', 'shareefbinmohammed@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(420, 'PR0463', '', 0, 'Jaikanna R', 'jaikanna82@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(421, 'PR0464', '', 0, 'Anurag Mishra', 'anurag933103@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 372.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(424, 'PR0467', '', 0, 'Ajankya Deshpande', 'ajinkyanil@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0);
INSERT INTO `customer_general_detail` (`id`, `customer_id`, `enquiry_id`, `customer_type_id`, `customer_name`, `email`, `age`, `dob`, `nativity`, `gender`, `marital_status`, `residential_status`, `payment_status`, `photo_path`, `customer_status`, `remove_type`, `kyc_status`, `prepared_by`, `prepared_at`, `kyc_verified_by`, `kyc_verified_at`, `done_by`, `done_at`, `referal_bonus`, `extra_amount`, `pending_cost`, `state_id`, `city_id`, `zone_id`, `area_id`, `month`, `year`, `close_month`, `close_year`) VALUES
(425, 'PR0470', '', 0, 'Nachiayappan - Portiqo', 'bharath@portiqo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(429, 'PR0471', '', 0, 'Abhilash Chakraborty', 'abhilashchakraborthy06@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(430, 'PR0472', '', 0, 'Vidhyapriya', 'tcvidhya@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(431, 'PR0473', '', 0, 'Sumati Rekhi', 'sumati.bedi@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(432, 'PR0475', '', 0, 'Silambarasan', 'silambuoracle@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(435, 'PR0476', '', 0, 'Calvin Jeremiah', 'meetcalvin@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(437, 'PR0477', '', 0, 'Ghanshyam Shivnani', 'ghanshyamshivani@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 55.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(439, 'PR0478', '', 0, 'Betciya Angelin', 'ctbaba@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(440, 'PR0479', '', 0, 'Christopher', 'chrisjai2012@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(441, 'PR0481', '', 0, 'G Premkumar', 'prem.kumarg@tcs.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(444, 'PR0482', '', 0, 'Moushami Ash', 'moushami96@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(445, 'PR0483', '', 0, 'Balaji Prasath M', 'balambp@hotmail.com, keerthanadoit@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(446, 'PR0485', '', 0, 'K S Rajaraman (Deepa)', 'deepasudhakar@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 700.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(450, 'PR0487', '', 0, 'Kennady', 'kennvk@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(451, 'PR0489', '', 0, 'Praveen S V', 'praveenkrazy@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(454, 'PR0491', '', 0, 'Shaheer', 'shaheer.6289@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(456, 'PR0495', '', 0, 'Deepakarockia Raj', 'deepak.cat.7@gmail.com, deepak.cat.7@gmail.com4', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(459, 'PR0496', '', 0, 'Shriya Srinagesh', 'shriya.n@hotmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(460, 'PR0497', '', 0, 'Hema Das', 'hemadas85@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(462, 'PR0100', '', 0, 'Prajeesh. C/Adithya', 'adhityarajkumar@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 650.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(468, 'PR0498', '', 0, 'Neeraj Deshpande', 'reach_neeraj@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(469, 'PR0500', '', 0, 'T Sailesh', 'saileshthammana@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(470, 'PR0501', '', 0, 'J Jagadesh', 'ckprohitham@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 48.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(471, 'PR0502', '', 0, 'Samit Singhai', 'samit@durafloor.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(472, 'PR0503', '', 0, 'Akshit Goyal', 'akshitgoyal2810@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(475, 'PR0504', '', 0, 'B Janarthanam', 'jana_lexcity@yahoo.co.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(476, 'PR0505', '', 0, 'D Rahul', 'dharamrahul21@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(477, 'PR0506', '', 0, 'Bharath Venkatesh', 'bharathvenkatesh@yahoo.co.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(478, 'PR0507', '', 0, 'Justin Jose', 'mj.justin@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(479, 'PR0508', '', 0, 'Alex Vivin', 'alexvivin.p@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(482, 'PR0509', '', 0, 'Thivakar K', 'thivakarsivan93@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(484, 'PR0510', '', 0, 'P Suganya', 'suganyaraj.paulraj@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 162.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(486, 'PR0511', '', 0, 'SAMPOORNA HOSPITALITY SERVICES', 'sampoornahospitalityservices@gmail.com', 0, '0000-00-00', '', 2, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(487, 'PR0513', '', 0, 'Gayathri', 'gayas_sasi88@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(488, 'PR0514', '', 0, 'Ankit Daga', 'dagaankit.7@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(490, 'PR0515', '', 0, 'K Praveen Kumar', 'pravinkumar.883@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 47.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(491, 'PR0516', '', 0, 'Raghava Y', 'yrsprasad@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(492, 'PR0062', '', 0, 'Duraisamy', 'mailfordurai@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(494, 'PR0517', '', 0, 'Guruprasad S', 'guruprasad1988@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(495, 'PR0518', '', 0, 'Deepak Suresh', 'deepak2u2@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(498, 'PR0519', '', 0, 'Nithin Raj', 'nithin153@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(501, 'PR0520', '', 0, 'Raghunathan', 'raghunbaplayer@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(502, 'PR0522', '', 0, 'K Manoj', 'kunamanoj05@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(503, 'PR0523', '', 0, 'Michael Allen', 'michaelallen123@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(504, 'PR0524', '', 0, 'Rejisha', 'rejisha.damodaran@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(505, 'PR0526', '', 0, 'Vidya Nair', 'vidyanair799@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(506, 'PR0527', '', 0, 'Vivek Khandelwal', 'vivkhandu@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(507, 'PR0528', '', 0, 'Poorani G', 'poorani.sha@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(508, 'PR0529', '', 0, 'Akash Govind', 'akash.govind95@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(517, 'PR0530', '', 0, 'Dorai Raju', 'raju.dorai@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(519, 'PR0531', '', 0, 'Amarjeet Satapathy', 'amarjeet.dikkant@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 174.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(520, 'PR0532', '', 0, 'Shalini / Selva Ajitha', 'sskshalu@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(522, 'PR0533', '', 0, 'Rohit C S', 'rohith@ideamaginative.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(524, 'PR0534', '', 0, 'Inderjit Singh / Shekar', 'rathore0068@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 377.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(525, 'PR0535', '', 0, 'B Murugadoss', 'hdoss_hdoss@hotmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 90.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(528, 'PR0537', '', 0, 'Sushil Kumar', 'su7445@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 1600.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(530, 'PR0538', '', 0, 'Kalpak D Rao Valaulikar', 'kalpakv@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(532, 'PR0539', '', 0, 'Atul', 'virmaniatulo@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 81.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(534, 'PR0540', '', 0, 'Prabhu', 'prabhu.jeyachandran@capgemini.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(539, 'PR0541', '', 0, 'Girija Balaji', 'girija_balaji@yahoo.co.in', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(540, 'PR0542', '', 0, 'Shivam Gupta / Nirvana', 'timepass.niru@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(541, 'PR0543', '', 0, 'Fiazuddin', 'zainfiaz@hotmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 600.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(542, 'PR0544', '', 0, 'Chandrika R', 'prasath.dhananjayan@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(543, 'PR0545', '', 0, 'Shashi Kant Upadhyay', 'sasiphn@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(544, 'PR0546', '', 0, 'Gurualok N', 'alok.guru273@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 667.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(545, 'PR0547', '', 0, 'Nitesh Thakur', 'niteshjee2009@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 540.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(546, 'PR0548', '', 0, 'Himanshu Shekhar', 'himanshu0887@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 200.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(547, 'PR0549', '', 0, 'Raktim Saha', 'raktimsaha2@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(548, 'PR0550', '', 0, 'Hemant Kumar Dhiman', 'hem_kmr@outlook.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(549, 'PR0551', '', 0, 'Sreerag M R', 'sreerag521@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(550, 'PR0552', '', 0, 'Ashwanth Gnanavelu', 'ashwanth.g@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(551, 'PR0553', '', 0, 'Ajai Ram Charan Kattoju', 'ajaykattoju@gmail.com', 0, '0000-00-00', '', 3, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(552, 'PR0554', '', 0, 'Tapendra Meena', 'tapendra88dash@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(553, 'PR0555', '', 0, 'Radhika Kabilan', 'radhika.kabilan@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(554, 'PR0556', '', 0, 'Arun Zebronics', 'arun.k@zebcare.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 9200.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(555, 'PR0557', '', 0, 'Sameer sethi', 'sethi.sameer3@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(556, 'PR0558', '', 0, 'Harish Kumar P V', 'revathy.sathiamoorthy@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 210.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(557, 'PR0559', '', 0, 'Srinivasan T S', 'srinivasants114@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(559, 'PR0560', '', 0, 'Aushim Nawdeep Mishra', 'aushim31@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(560, 'PR0561', '', 0, 'G Jayalalitha', 'pavi16194@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(561, 'PR0562', '', 0, 'Jayaprakash', 'jpkr5@yahoo.co.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(564, 'PR0563', '', 0, 'Ganapathy Anand', 'rganand@gmail.com, rgaditya@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(565, 'PR0564', '', 0, 'Vishal Singh', 'vishal62890@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(566, 'PR0565', '', 0, 'Kumar Ritesh', 'riteshicfaitech@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(568, 'PR0566', '', 0, 'Amit Saurav', 'sauravaa161224@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(569, 'PR0567', '', 0, 'Robert R', 'dom-maa@ith.co.in', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(570, 'PR0568', '', 0, 'Ray Karan Jesudhasan', 'ray.karan@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 510.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(571, 'PR0569', '', 0, 'S V Lalitha / V Vetrivel', 'vvetrivell@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 1302.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(572, 'PR0570', '', 0, 'Raghu Vamsi', 'raghuvamsi.saripalli@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(573, 'PR0571', '', 0, 'Pranav Narayan', 'pranav.narayan93@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(574, 'PR0572', '', 0, 'Suraj Nair', 'surajnair2000@hotmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 600.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(575, 'PR0573', '', 0, 'Maninder Singh', 'maninder928@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 600.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(576, 'PR0574', '', 0, 'Suman Kumar Chakraborty', 'madhujami9@gmail.com, sumanchakraborty159@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(577, 'PR0575', '', 0, 'S Balakrishnan', 'balakrish_1948@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(578, 'PR0576', '', 0, 'Abhijit Dev', 'abhijitdebrajaa@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(579, 'PR0577', '', 0, 'Sasank Babu S', 's.sasankbabu@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 737.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(580, 'PR0579', '', 0, 'G S Vaibhav', 'gs.vaibhav@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(584, 'PR0580', '', 0, 'Tanima Chowdhury', 'tani.chowdhury@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(586, 'PR0581', '', 0, 'Ravindra Kumar M', 'ravindrakumar.m@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(587, 'PR0582', '', 0, 'Karthick', 'karthiisin@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 1500.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(593, 'PR0583', '', 0, 'Vishnu', 'starreach28@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(596, 'PR0584', '', 0, 'Pinky Yadav', 'pinksmil2@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(597, 'PR0585', '', 0, 'Amit', '', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(599, 'PR0586', '', 0, 'Sakthi Priyadarsani K A', 'sakthipd_16@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 60.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(600, 'PR0588', '', 0, 'Sudhanshu', 'er.sudhanshu984@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 1120.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(601, 'PR0589', '', 0, 'Nitin Harlalka', 'nitin.harlalka@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(602, 'PR0590', '', 0, 'Swapna Poddi', 'pswapna40@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 100.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(609, 'PR0591', '', 0, 'Chaitanya AVSGS', 'ashwinirmsh@gmail.com, chaitu435@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 800.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(610, 'PR0592', '', 0, 'Divian Jegam', 'divianjeam.civil@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(612, 'PR0593', '', 0, 'Sudha. G', 'kanni2610@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 340.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(613, 'PR0594', '', 0, 'Azhar Basha O', 'azharbasha.o@hotmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(614, 'PR0595', '', 0, 'Sasikumar Murugan', 'sasii1410@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(617, 'PR0596', '', 0, 'Kalidashan', 'kalidashan@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(637, 'PR0110', '', 0, 'Krishna/ Nimiya', 'kumariarci@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(638, 'PR0598', '', 0, 'Venkatesan .P', 'enjoyvenkat@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(639, 'PR0599', '', 0, 'Iyappan Iyer Raman', 'iyappan.iyer1985@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(640, 'PR0601', '', 0, 'Rajesh Agarwal', 'rajrim.slg@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(641, 'PR0602', '', 0, 'Narayan Mishra', 'narayanmishra@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(642, 'PR0603', '', 0, 'Ashwin. K G', 'ashuammu01@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(646, 'PR0604', '', 0, 'Arun Joseph', 'arunjoseph925@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(647, 'PR0605', '', 0, 'Kaleeswaran', 'kalees.santhosh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(649, 'PR0606', '', 0, 'Monika Manjaree', 'm.manjaree4@gmail.com', 0, '0000-00-00', '', 1, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(650, 'PR0607', '', 0, 'Prakash Kumar Chaudhary', 'prc.2271992@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(652, 'PR0608', '', 0, 'Maravoni mahesh Yadav', 'maravonimahesh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(653, 'PR0609', '', 0, 'Andhavarapu Varun Kumar', 'varunkumar23293@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(654, 'PR0610', '', 0, 'Ashok Kumar Balasubramaniam', 'abalaucf@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(655, 'PR0611', '', 0, 'Srikanth S A', 'srikanth.alagappan@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(656, 'PR0612', '', 0, 'Sriram.S', 'sriram.ciet@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(657, 'PR0613', '', 0, 'Jyotindra Prasad Sinha', 'j.p.sinha@citi.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(663, 'PR0614', '', 0, 'Nishanth Mittal', 'nishantmittal98@yahoo.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 6, 2016, 0, 0),
(669, 'PR0615', '', 1, 'Savitha S', 'savisaravanan@gmail.com', 23, '0000-00-00', '2', 1, 1, 1, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 2, 6, 2016, 0, 0),
(696, 'PR0616', '', 0, 'Saurabh Bose', 'bosesaurabh492@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(697, 'PR0617', '', 0, 'Ritesh Thakur', 'reet.ritesh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(698, 'PR0618', '', 0, 'M C Pavankumar', 'pavan1622@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(699, 'PR0619', '', 0, 'Raj Kumar Gupta', 'rajgupta8990@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(700, 'PR0620', '', 0, 'Vignesh V P', 'vp.vignesh@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(701, 'PR0621', '', 0, 'Ramanathan S', 'ram2409@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(702, 'PR0622', '', 0, 'Aditya Vikram', 'advk@gmx.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(703, 'EV0020', '', 0, 'Anand.V', 'ashvinanand@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 2359.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(704, 'PR0600', '', 0, 'Rudrajit Sinha', 'dr.rudrajitsinha@gmail.com', 0, '0000-00-00', '', 3, 0, 0, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 327.00, 0, 0, 0, 0, 6, 2016, 0, 0),
(708, 'PR0623', '', 2, 'simbu', 'simbu@gmail.com', 0, '1993-05-19', '24', 0, 0, 2, 0, '', 1, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 2, 7, 2017, 11, 2017),
(709, 'PR0624', '', 2, 'simb', 'simbu@gmail.com', 0, '2017-06-14', '1', 0, 0, 2, 0, '', 1, 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 8, 2017, 12, 2017),
(710, '0', 'ENQ000004', 1, '', '', 0, '0000-00-00', '', 0, 0, 0, 0, '', 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 0, 0, 0, 0),
(711, '0', 'ENQ000003', 1, 'simbu', 'sim9786706043@gmail.com', 0, '0000-00-00', '', 0, 0, 0, 0, '', 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0.00, 0.00, 0.00, 1, 1, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_professional`
--

CREATE TABLE `customer_professional` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_address` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alternative_email` varchar(30) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zone` int(11) NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_professional`
--

INSERT INTO `customer_professional` (`id`, `customer_id`, `enquiry_id`, `company_name`, `company_address`, `designation`, `department`, `email`, `alternative_email`, `state`, `city`, `zone`, `area`) VALUES
(31, '', '967523', '', '', '', '', 'a@gmail.com', '', 1, 1, 1, 1),
(48, 'PR0586', '', 'deponds', '', 'developers', 'its', 'simb143123s@gmail.com', 'sis@gmail.com', 1, 1, 1, 2),
(53, 'PR0587', '0', 'dewpon', '', 'asd', 'asdf', 'sim1232@gmail.com', 'a@email.com', 1, 1, 1, 1),
(54, '', '310825', '', '', '', '', 'asd@gmail.com', '', 1, 1, 1, 1),
(56, '', 'ENQ000002', 'dewpond', '', '', '', 'aswin@gmail.com', '', 1, 1, 1, 2),
(57, '0', 'ENQ000003', 'dewpond', '', '', '', '', '', 0, 0, 0, 0),
(58, '', '806364', '', '', '', '', 'simbu@gmail.com', '', 1, 1, 1, 1),
(59, '0', 'ENQ000002', 'dewpond', '', '', '', '', '', 0, 0, 0, 0),
(60, '0', 'ENQ000003', '', '', '', '', '', '', 0, 0, 0, 0),
(61, '0', 'ENQ000004', '', '', '', '', '', '', 0, 0, 0, 0),
(62, '0', 'ENQ000008', '', '', '', '', '', '', 0, 0, 0, 0),
(63, 'PR0623', '', '11', '', '111', '1222', 'simbu@gmail.com', 'simb143123@gmail.com', 1, 1, 1, 2),
(64, 'PR0624', '', '11', '', '111', '1222', 'simbu@gmail.com', 'simb143123@gmail.com', 1, 1, 1, 1),
(65, '0', 'ENQ000004', '', '', '', '', '', '', 0, 0, 0, 0),
(66, '0', 'ENQ000003', 'asd', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_reference_detail`
--

CREATE TABLE `customer_reference_detail` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` int(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zone` int(11) NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_reference_detail`
--

INSERT INTO `customer_reference_detail` (`id`, `enquiry_id`, `customer_id`, `name`, `email`, `mobile`, `address`, `state`, `city`, `zone`, `area`) VALUES
(1, '971399', '', '', '', 0, '', 0, 0, 0, 0),
(2, '971399', '', '', '', 0, '', 0, 0, 0, 0),
(3, '107250', '', '', '', 0, '', 0, 0, 0, 0),
(4, '107250', '', '', '', 0, '', 0, 0, 0, 0),
(5, '473144', '', '', '', 0, '', 0, 0, 0, 0),
(6, '473144', '', '', '', 0, '', 0, 0, 0, 0),
(7, '638443', '', '', '', 0, '', 0, 0, 0, 0),
(8, '638443', '', '', '', 0, '', 0, 0, 0, 0),
(9, '988420', '', '', '', 0, '', 0, 0, 0, 0),
(10, '988420', '', '', '', 0, '', 0, 0, 0, 0),
(11, '493852', '', '', '', 0, '', 0, 0, 0, 0),
(12, '493852', '', '', '', 0, '', 0, 0, 0, 0),
(13, '191470', '', '', '', 0, '', 0, 0, 0, 0),
(14, '191470', '', '', '', 0, '', 0, 0, 0, 0),
(15, '702880', '', '', '', 0, '', 0, 0, 0, 0),
(16, '702880', '', '', '', 0, '', 0, 0, 0, 0),
(17, '957745', '', '', '', 0, '', 0, 0, 0, 0),
(18, '957745', '', '', '', 0, '', 0, 0, 0, 0),
(19, '697920', '', '', '', 0, '', 0, 0, 0, 0),
(20, '697920', '', '', '', 0, '', 0, 0, 0, 0),
(21, '987672', '', '', '', 0, '', 0, 0, 0, 0),
(22, '987672', '', '', '', 0, '', 0, 0, 0, 0),
(23, '996473', '', '', '', 0, '', 0, 0, 0, 0),
(24, '996473', '', '', '', 0, '', 0, 0, 0, 0),
(25, '812456', '', '', '', 0, '', 0, 0, 0, 0),
(26, '812456', '', '', '', 0, '', 0, 0, 0, 0),
(27, '850085', '', '', '', 0, '', 0, 0, 0, 0),
(28, '850085', '', '', '', 0, '', 0, 0, 0, 0),
(29, '933397', '', '', '', 0, '', 0, 0, 0, 0),
(30, '933397', '', '', '', 0, '', 0, 0, 0, 0),
(31, '443069', '', '', '', 0, '', 0, 0, 0, 0),
(32, '443069', '', '', '', 0, '', 0, 0, 0, 0),
(33, '918019', '', '', '', 0, '', 0, 0, 0, 0),
(34, '918019', '', '', '', 0, '', 0, 0, 0, 0),
(35, '489113', '', '', '', 0, '', 0, 0, 0, 0),
(36, '489113', '', '', '', 0, '', 0, 0, 0, 0),
(37, '762573', '', '', '', 0, '', 0, 0, 0, 0),
(38, '762573', '', '', '', 0, '', 0, 0, 0, 0),
(39, '125342', '', '', '', 0, '', 0, 0, 0, 0),
(40, '125342', '', '', '', 0, '', 0, 0, 0, 0),
(41, '279899', '', '', '', 0, '', 0, 0, 0, 0),
(42, '279899', '', '', '', 0, '', 0, 0, 0, 0),
(43, '662826', '', '', '', 0, '', 0, 0, 0, 0),
(44, '662826', '', '', '', 0, '', 0, 0, 0, 0),
(45, '177869', '', '', '', 0, '', 0, 0, 0, 0),
(46, '177869', '', '', '', 0, '', 0, 0, 0, 0),
(47, '949894', '', '', '', 0, '', 0, 0, 0, 0),
(48, '949894', '', '', '', 0, '', 0, 0, 0, 0),
(51, '168778', '', '', '', 0, '', 0, 0, 0, 0),
(52, '168778', '', '', '', 0, '', 0, 0, 0, 0),
(53, '338146', '', '', '', 0, '', 0, 0, 0, 0),
(54, '338146', '', '', '', 0, '', 0, 0, 0, 0),
(55, '192703', '', '', '', 0, '', 0, 0, 0, 0),
(56, '192703', '', '', '', 0, '', 0, 0, 0, 0),
(59, '967523', '', '', '', 0, '', 0, 0, 0, 0),
(60, '967523', '', '', '', 0, '', 0, 0, 0, 0),
(83, '', 'PR0586', 'nairs', 'nair@gmail.com', 2147483647, '123', 0, 0, 0, 0),
(84, '', 'PR0586', 'sathishss', 'sathish@gmail.com', 2147483647, '1234', 0, 0, 0, 0),
(93, '0', 'PR0587', 'dewpon', 'a@email.com', 2147483647, 'asdf1', 0, 0, 0, 0),
(94, '0', 'PR0587', 'dewpon', 'a@email.com', 2147483647, 'asdf1', 0, 0, 0, 0),
(95, '310825', '', '', '', 0, '', 0, 0, 0, 0),
(96, '310825', '', '', '', 0, '', 0, 0, 0, 0),
(97, 'ENQ000002', '', '', '', 0, '', 0, 0, 0, 0),
(98, 'ENQ000002', '', '', '', 0, '', 0, 0, 0, 0),
(99, '806364', '', '', '', 0, '', 0, 0, 0, 0),
(100, '806364', '', '', '', 0, '', 0, 0, 0, 0),
(101, '', 'PR0623', 'a', 'simb143123@gmail.com', 1111111111, '111111111111', 0, 0, 0, 0),
(102, '', 'PR0623', 'a', 'simb143123@gmail.com', 1111111111, '111111111111', 0, 0, 0, 0),
(103, '', 'PR0624', 'a', 'simb143123@gmail.com', 1111111111, '111111111111', 0, 0, 0, 0),
(104, '', 'PR0624', 'a', 'simb143123@gmail.com', 1111111111, '111111111111', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`id`, `name`, `description`, `status`) VALUES
(1, 'Individual', '', 1),
(2, 'Corporate', '', 1),
(3, 'Event', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposit_money_transaction`
--

CREATE TABLE `deposit_money_transaction` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `reiceved_amount` float(11,2) NOT NULL,
  `amount_reiceved_on` varchar(15) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `collected_on` varchar(15) NOT NULL,
  `collected_by` varchar(30) NOT NULL,
  `deposit_by` varchar(30) NOT NULL,
  `deposit_on` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit_money_transaction`
--

INSERT INTO `deposit_money_transaction` (`id`, `enquiry_id`, `customer_id`, `reiceved_amount`, `amount_reiceved_on`, `payment_mode`, `collected_on`, `collected_by`, `deposit_by`, `deposit_on`) VALUES
(1, 'ENQ000003', 'Non Customer', 1500.00, '2017-06-16', '1', '2017-06-13', '1', '1', '2017-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `customer_status` tinyint(4) NOT NULL DEFAULT '0',
  `enquiry_date` varchar(20) NOT NULL,
  `mode` int(10) NOT NULL,
  `referred_by` int(30) NOT NULL,
  `attended_by` int(30) NOT NULL,
  `assigned_to` int(30) NOT NULL,
  `followup_date` varchar(20) NOT NULL,
  `followup_remarks` varchar(200) NOT NULL,
  `enquiry_status` int(4) NOT NULL,
  `is_closed` int(4) NOT NULL,
  `closed_reason` varchar(100) NOT NULL,
  `is_terminate` tinyint(4) NOT NULL,
  `terminate_reason` varchar(100) NOT NULL,
  `total_security_amount` float(11,2) NOT NULL,
  `total_processing_fee` float(11,2) NOT NULL,
  `t_installation_fee` float(11,2) NOT NULL,
  `total_other_fee` float(11,2) NOT NULL,
  `total_rent` float(11,2) NOT NULL,
  `total_amount` float(11,2) NOT NULL,
  `amount_received_from_customer` float(11,2) NOT NULL,
  `amount_pennding_from_customer` float(11,2) NOT NULL,
  `is_mapped` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `enquiry_id`, `customer_id`, `customer_status`, `enquiry_date`, `mode`, `referred_by`, `attended_by`, `assigned_to`, `followup_date`, `followup_remarks`, `enquiry_status`, `is_closed`, `closed_reason`, `is_terminate`, `terminate_reason`, `total_security_amount`, `total_processing_fee`, `t_installation_fee`, `total_other_fee`, `total_rent`, `total_amount`, `amount_received_from_customer`, `amount_pennding_from_customer`, `is_mapped`) VALUES
(21, 'ENQ000001', 'PR0256', 0, '2017-06-12', 0, 0, 1, 1, '2017-06-15', 'asdf', 1, 0, '', 0, '', 14400.00, 3000.00, 0.00, 0.00, 0.00, 17400.00, 0.00, 0.00, 1),
(22, 'ENQ000002', 'PR0556', 0, '2017-06-13', 0, 0, 1, 1, '2017-06-15', 'ass', 1, 0, '', 0, '', 7200.00, 2000.00, 0.00, 0.00, 0.00, 9200.00, 0.00, 0.00, 0),
(25, 'ENQ000003', '0', 1, '2017-06-16', 1, 0, 1, 1, '2017-06-13', 'asdf', 0, 0, '', 0, '', 15000.00, 3000.00, 0.00, 0.00, 0.00, 18000.00, 1500.00, 0.00, 0),
(26, 'ENQ000004', 'PR0256', 0, '2017-06-20', 0, 0, 1, 1, '2017-06-19', 'asd', 1, 0, '', 0, '', 10800.00, 3000.00, 0.00, 0.00, 0.00, 13800.00, 0.00, 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_products`
--

CREATE TABLE `enquiry_products` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `ptdvar_id` varchar(30) NOT NULL,
  `rent_months_count` varchar(4) NOT NULL,
  `tenure` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `expecting_delivery_date` date NOT NULL,
  `rent_per_month` float(11,2) NOT NULL,
  `security_deposit_amount` float(11,2) NOT NULL,
  `processing_fee` float(11,2) NOT NULL,
  `ins_fee` float(11,2) NOT NULL,
  `other_fee` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_products`
--

INSERT INTO `enquiry_products` (`id`, `enquiry_id`, `customer_id`, `ptdvar_id`, `rent_months_count`, `tenure`, `quantity`, `expecting_delivery_date`, `rent_per_month`, `security_deposit_amount`, `processing_fee`, `ins_fee`, `other_fee`) VALUES
(31, 'ENQ000001', 'PR0256', '1', '5', '5', 6, '0000-00-00', 1400.00, 2400.00, 500.00, 0.00, 0.00),
(32, 'ENQ000002', 'PR0556', '1', '3', '3', 4, '2017-06-13', 1800.00, 1800.00, 500.00, 0.00, 0.00),
(35, 'ENQ000003', '0', '1', '6', '5', 4, '2017-06-14', 1400.00, 2400.00, 500.00, 0.00, 0.00),
(36, 'ENQ000003', '0', '2', '3', '3', 2, '2017-06-16', 2700.00, 2700.00, 500.00, 0.00, 0.00),
(37, 'ENQ000004', 'PR0256', '1', '3', '3', 6, '2017-06-16', 1800.00, 1800.00, 500.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `general_expenses`
--

CREATE TABLE `general_expenses` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `g_e__date` date NOT NULL,
  `person` varchar(30) NOT NULL,
  `amount_spent` float(11,2) NOT NULL,
  `pay` float(11,2) NOT NULL,
  `remarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `idtimes`
--

CREATE TABLE `idtimes` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idtimes`
--

INSERT INTO `idtimes` (`id`, `time`) VALUES
(11, 900),
(11, 1000),
(11, 1100),
(11, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `bill_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `invoice_date` varchar(10) NOT NULL,
  `year` int(8) NOT NULL,
  `month` varchar(6) NOT NULL,
  `total_rent_cost` float(11,2) NOT NULL,
  `received_total_rent_cost` float(11,2) NOT NULL,
  `pending_rent_cost` float(11,2) NOT NULL,
  `actual_total_security_deposit_amount` float(11,2) NOT NULL,
  `received_total_security_deposit_amount` float(11,2) NOT NULL,
  `pending_security_amount` float NOT NULL,
  `received_total_processing_fee` float(11,2) NOT NULL,
  `received__total_installation_fee` float(11,2) NOT NULL,
  `followup_status` varchar(30) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `is_paid_total_amount` tinyint(4) NOT NULL,
  `invoice_status` varchar(30) NOT NULL,
  `due_date` varchar(10) NOT NULL,
  `tax` float(11,2) NOT NULL,
  `discount_amount` int(250) NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `discount_reason` varchar(30) NOT NULL,
  `Late Payment Charge` float(11,2) NOT NULL,
  `invoice_mail_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `bill_id`, `customer_id`, `invoice_date`, `year`, `month`, `total_rent_cost`, `received_total_rent_cost`, `pending_rent_cost`, `actual_total_security_deposit_amount`, `received_total_security_deposit_amount`, `pending_security_amount`, `received_total_processing_fee`, `received__total_installation_fee`, `followup_status`, `remarks`, `is_paid_total_amount`, `invoice_status`, `due_date`, `tax`, `discount_amount`, `discount_type`, `discount_reason`, `Late Payment Charge`, `invoice_mail_status`) VALUES
(5028, '', 'EV0020', '', 2017, 'May', 1600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5029, '', 'PR0003', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5030, '', 'PR0007', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5031, '', 'PR0011', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5032, '', 'PR0016', '', 2017, 'May', 500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5033, '', 'PR0017', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5034, '', 'PR0018', '', 2017, 'May', 2000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5035, '', 'PR0019', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5036, '', 'PR0021', '', 2017, 'May', 2900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5037, '', 'PR0023', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5038, '', 'PR0030', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5039, '', 'PR0032', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5040, '', 'PR0034', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5041, '', 'PR0035', '', 2017, 'May', 2400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5042, '', 'PR0036', '', 2017, 'May', 2600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5043, '', 'PR0038', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5044, '', 'PR0040', '', 2017, 'May', 1800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5045, '', 'PR0042', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5046, '', 'PR0043', '', 2017, 'May', 1400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5047, '', 'PR0044', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5048, '', 'PR0046', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5049, '', 'PR0048', '', 2017, 'May', 2200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5050, '', 'PR0049', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5051, '', 'PR0052', '', 2017, 'May', 1400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5052, '', 'PR0053', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5053, '', 'PR0055', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5054, '', 'PR0056', '', 2017, 'May', 5100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5055, '', 'PR0061', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5056, '', 'PR0062', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5057, '', 'PR0063', '', 2017, 'May', 4300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5058, '', 'PR0071', '', 2017, 'May', 2100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5059, '', 'PR0072', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5060, '', 'PR0074', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5061, '', 'PR0075', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5062, '', 'PR0085', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5063, '', 'PR0089', '', 2017, 'May', 500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5064, '', 'PR0092', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5065, '', 'PR0093', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5066, '', 'PR0095', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5067, '', 'PR0100', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5068, '', 'PR0101', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5069, '', 'PR0103', '', 2017, 'May', 2100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5070, '', 'PR0106', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5071, '', 'PR0109', '', 2017, 'May', 400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5072, '', 'PR0110', '', 2017, 'May', 2516.12, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5073, '', 'PR0113', '', 2017, 'May', 500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5074, '', 'PR0122', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5075, '', 'PR0123', '', 2017, 'May', 3600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5076, '', 'PR0124', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5077, '', 'PR0126', '', 2017, 'May', 5000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5078, '', 'PR0129', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5079, '', 'PR0133', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5080, '', 'PR0134', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5081, '', 'PR0135', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5082, '', 'PR0138', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5083, '', 'PR0139', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5084, '', 'PR0140', '', 2017, 'May', 2100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5085, '', 'PR0141', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5086, '', 'PR0142', '', 2017, 'May', 2800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5087, '', 'PR0143', '', 2017, 'May', 1645.16, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5088, '', 'PR0145', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5089, '', 'PR0147', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5090, '', 'PR0148', '', 2017, 'May', 1200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5091, '', 'PR0151', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5092, '', 'PR0154', '', 2017, 'May', 4000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5093, '', 'PR0155', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5094, '', 'PR0158', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5095, '', 'PR0159', '', 2017, 'May', 2500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5096, '', 'PR0169', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5097, '', 'PR0174', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5098, '', 'PR0178', '', 2017, 'May', 1400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5099, '', 'PR0180', '', 2017, 'May', 6000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5100, '', 'PR0180A', '', 2017, 'May', 4000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5101, '', 'PR0187', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5102, '', 'PR0190', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5103, '', 'PR0194', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5104, '', 'PR0196', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5105, '', 'PR0198', '', 2017, 'May', 2000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5106, '', 'PR0200', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5107, '', 'PR0201', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5108, '', 'PR0202', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5109, '', 'PR0203', '', 2017, 'May', 2800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5110, '', 'PR0205', '', 2017, 'May', 3400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5111, '', 'PR0206', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5112, '', 'PR0207', '', 2017, 'May', 3200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 0),
(5113, '', 'PR0208', '', 2017, 'May', 2200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5114, '', 'PR0209', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5115, '', 'PR0212', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5116, '', 'PR0214', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5117, '', 'PR0217', '', 2017, 'May', 1900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5118, '', 'PR0218', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5119, '', 'PR0219', '', 2017, 'May', 4800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5120, '', 'PR0224', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5121, '', 'PR0225', '', 2017, 'May', 2100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5122, '', 'PR0226', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5123, '', 'PR0227', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5124, '', 'PR0229', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5125, '', 'PR0230', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5126, '', 'PR0231', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5127, '', 'PR0233', '', 2017, 'May', 2100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5128, '', 'PR0234', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5129, '', 'PR0235', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5130, '', 'PR0237', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5131, '', 'PR0240', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5132, '', 'PR0248', '', 2017, 'May', 3800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5133, '', 'PR0249', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5134, '', 'PR0252', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5135, '', 'PR0255', '', 2017, 'May', 4600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5136, '', 'PR0256', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5137, '', 'PR0263', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5138, '', 'PR0268', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5139, '', 'PR0270', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5140, '', 'PR0271', '', 2017, 'May', 5700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5141, '', 'PR0273', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5142, '', 'PR0274', '', 2017, 'May', 2900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5143, '', 'PR0275', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5144, '', 'PR0277', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5145, '', 'PR0278', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5146, '', 'PR0283', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5147, '', 'PR0288', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5148, '', 'PR0293', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5149, '', 'PR0297', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5150, '', 'PR0302', '', 2017, 'May', 3700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5151, '', 'PR0303', '', 2017, 'May', 1000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5152, '', 'PR0305', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5153, '', 'PR0306', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5154, '', 'PR0309', '', 2017, 'May', 2200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5155, '', 'PR0310', '', 2017, 'May', 1400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5156, '', 'PR0311', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5157, '', 'PR0315', '', 2017, 'May', 1000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5158, '', 'PR0316', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5159, '', 'PR0325', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5160, '', 'PR0326', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5161, '', 'PR0327', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5162, '', 'PR0328', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5163, '', 'PR0329', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5164, '', 'PR0331', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5165, '', 'PR0333', '', 2017, 'May', 3600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5166, '', 'PR0334', '', 2017, 'May', 1200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5167, '', 'PR0335', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5168, '', 'PR0341', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5169, '', 'PR0342', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5170, '', 'PR0344', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5171, '', 'PR0347', '', 2017, 'May', 500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5172, '', 'PR0350', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5173, '', 'PR0351', '', 2017, 'May', 300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5174, '', 'PR0355', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5175, '', 'PR0356', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5176, '', 'PR0357', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5177, '', 'PR0358', '', 2017, 'May', 7600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5178, '', 'PR0360', '', 2017, 'May', 400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5179, '', 'PR0361', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5180, '', 'PR0362', '', 2017, 'May', 500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5181, '', 'PR0364', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5182, '', 'PR0365', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5183, '', 'PR0368', '', 2017, 'May', 4900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5184, '', 'PR0369', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5185, '', 'PR0370', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5186, '', 'PR0371', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5187, '', 'PR0372', '', 2017, 'May', 7700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5188, '', 'PR0376', '', 2017, 'May', 1100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5189, '', 'PR0377', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5190, '', 'PR0378', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5191, '', 'PR0379', '', 2017, 'May', 6100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5192, '', 'PR0381', '', 2017, 'May', 2800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5193, '', 'PR0383', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5194, '', 'PR0386', '', 2017, 'May', 1600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5195, '', 'PR0387', '', 2017, 'May', 2100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5196, '', 'PR0388', '', 2017, 'May', 2600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5197, '', 'PR0389', '', 2017, 'May', 2900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5198, '', 'PR0390', '', 2017, 'May', 2635.48, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5199, '', 'PR0391', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5200, '', 'PR0392', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5201, '', 'PR0393', '', 2017, 'May', 2600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5202, '', 'PR0394', '', 2017, 'May', 2800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5203, '', 'PR0396', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5204, '', 'PR0397', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5205, '', 'PR0401', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5206, '', 'PR0403', '', 2017, 'May', 4400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5207, '', 'PR0404', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5208, '', 'PR0405', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5209, '', 'PR0406', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5210, '', 'PR0407', '', 2017, 'May', 2800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5211, '', 'PR0411', '', 2017, 'May', 5400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5212, '', 'PR0414', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5213, '', 'PR0416', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5214, '', 'PR0423', '', 2017, 'May', 3800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5215, '', 'PR0424', '', 2017, 'May', 2700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5216, '', 'PR0426', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5217, '', 'PR0428', '', 2017, 'May', 6500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5218, '', 'PR0429', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5219, '', 'PR0431', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5220, '', 'PR0432', '', 2017, 'May', 2100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5221, '', 'PR0435', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5222, '', 'PR0437', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5223, '', 'PR0444', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5224, '', 'PR0445', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5225, '', 'PR0447', '', 2017, 'May', 1800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5226, '', 'PR0448', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5227, '', 'PR0449', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5228, '', 'PR0450', '', 2017, 'May', 500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5229, '', 'PR0452', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5230, '', 'PR0453', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5231, '', 'PR0455', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5232, '', 'PR0456', '', 2017, 'May', 3400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5233, '', 'PR0463', '', 2017, 'May', 1900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5234, '', 'PR0464', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5235, '', 'PR0467', '', 2017, 'May', 1200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5236, '', 'PR0470', '', 2017, 'May', 4600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5237, '', 'PR0471', '', 2017, 'May', 400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5238, '', 'PR0472', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5239, '', 'PR0473', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5240, '', 'PR0475', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5241, '', 'PR0476', '', 2017, 'May', 2600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5242, '', 'PR0477', '', 2017, 'May', 1200.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5243, '', 'PR0478', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5244, '', 'PR0479', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5245, '', 'PR0481', '', 2017, 'May', 2500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5246, '', 'PR0482', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5247, '', 'PR0483', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5248, '', 'PR0485', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5249, '', 'PR0487', '', 2017, 'May', 900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5250, '', 'PR0489', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5251, '', 'PR0491', '', 2017, 'May', 1400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5252, '', 'PR0495', '', 2017, 'May', 2000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5253, '', 'PR0496', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5254, '', 'PR0497', '', 2017, 'May', 1000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5255, '', 'PR0498', '', 2017, 'May', 900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5256, '', 'PR0500', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5257, '', 'PR0501', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5258, '', 'PR0502', '', 2017, 'May', 7800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5259, '', 'PR0503', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5260, '', 'PR0504', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5261, '', 'PR0505', '', 2017, 'May', 1400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5262, '', 'PR0506', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5263, '', 'PR0507', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5264, '', 'PR0508', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5265, '', 'PR0509', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5266, '', 'PR0510', '', 2017, 'May', 1000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5267, '', 'PR0511', '', 2017, 'May', 1600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5268, '', 'PR0513', '', 2017, 'May', 1600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5269, '', 'PR0514', '', 2017, 'May', 2800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5270, '', 'PR0515', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5271, '', 'PR0516', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5272, '', 'PR0517', '', 2017, 'May', 1100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5273, '', 'PR0518', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5274, '', 'PR0519', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5275, '', 'PR0520', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5276, '', 'PR0522', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5277, '', 'PR0523', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5278, '', 'PR0524', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5279, '', 'PR0526', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5280, '', 'PR0527', '', 2017, 'May', 2000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5281, '', 'PR0528', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5282, '', 'PR0529', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5283, '', 'PR0530', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5284, '', 'PR0531', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5285, '', 'PR0532', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5286, '', 'PR0533', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5287, '', 'PR0534', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5288, '', 'PR0535', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5289, '', 'PR0537', '', 2017, 'May', 2480.64, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5290, '', 'PR0538', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5291, '', 'PR0539', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5292, '', 'PR0540', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5293, '', 'PR0541', '', 2017, 'May', 900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5294, '', 'PR0542', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5295, '', 'PR0543', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5296, '', 'PR0544', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5297, '', 'PR0545', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5298, '', 'PR0546', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5299, '', 'PR0547', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5300, '', 'PR0548', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5301, '', 'PR0549', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5302, '', 'PR0550', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5303, '', 'PR0551', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5304, '', 'PR0552', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5305, '', 'PR0553', '', 2017, 'May', 2700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5306, '', 'PR0554', '', 2017, 'May', 1400.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5307, '', 'PR0555', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5308, '', 'PR0556', '', 2017, 'May', 6000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5309, '', 'PR0557', '', 2017, 'May', 2000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5310, '', 'PR0558', '', 2017, 'May', 700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5311, '', 'PR0559', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5312, '', 'PR0560', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5313, '', 'PR0561', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5314, '', 'PR0562', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5315, '', 'PR0563', '', 2017, 'May', 4600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5316, '', 'PR0564', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5317, '', 'PR0565', '', 2017, 'May', 1600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5318, '', 'PR0566', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5319, '', 'PR0567', '', 2017, 'May', 2000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5320, '', 'PR0568', '', 2017, 'May', 1700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5321, '', 'PR0569', '', 2017, 'May', 21100.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5322, '', 'PR0570', '', 2017, 'May', 800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5323, '', 'PR0571', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5324, '', 'PR0572', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5325, '', 'PR0573', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5326, '', 'PR0574', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5327, '', 'PR0575', '', 2017, 'May', 2180.64, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5328, '', 'PR0576', '', 2017, 'May', 909.68, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5329, '', 'PR0577', '', 2017, 'May', 1300.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5330, '', 'PR0579', '', 2017, 'May', 3000.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5331, '', 'PR0580', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5332, '', 'PR0581', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5333, '', 'PR0582', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5334, '', 'PR0583', '', 2017, 'May', 1500.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5335, '', 'PR0584', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5336, '', 'PR0585', '', 2017, 'May', 1600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5337, '', 'PR0586', '', 2017, 'May', 900.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5338, '', 'PR0588', '', 2017, 'May', 4800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5339, '', 'PR0589', '', 2017, 'May', 445.16, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5340, '', 'PR0590', '', 2017, 'May', 600.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5341, '', 'PR0591', '', 2017, 'May', 4800.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5342, '', 'PR0592', '', 2017, 'May', 1258.06, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5343, '', 'PR0593', '', 2017, 'May', 5700.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5344, '', 'PR0594', '', 2017, 'May', 2612.90, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5345, '', 'PR0595', '', 2017, 'May', 1354.84, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5346, '', 'PR0596', '', 2017, 'May', 1258.07, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5347, '', 'PR0598', '', 2017, 'May', 670.97, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5348, '', 'PR0599', '', 2017, 'May', 609.68, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5349, '', 'PR0600', '', 2017, 'May', 5238.71, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5350, '', 'PR0601', '', 2017, 'May', 4967.76, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5351, '', 'PR0602', '', 2017, 'May', 3967.76, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5352, '', 'PR0603', '', 2017, 'May', 1483.87, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5353, '', 'PR0604', '', 2017, 'May', 1064.52, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5354, '', 'PR0605', '', 2017, 'May', 445.16, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5355, '', 'PR0606', '', 2017, 'May', 387.10, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5356, '', 'PR0607', '', 2017, 'May', 387.10, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5357, '', 'PR0608', '', 2017, 'May', 348.39, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5358, '', 'PR0609', '', 2017, 'May', 412.90, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5359, '', 'PR0610', '', 2017, 'May', 1274.19, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5360, '', 'PR0611', '', 2017, 'May', 290.32, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5361, '', 'PR0612', '', 2017, 'May', 412.90, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5362, '', 'PR0613', '', 2017, 'May', 838.72, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5363, '', 'PR0614', '', 2017, 'May', 1303.23, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5364, '', 'PR0615', '', 2017, 'May', 316.13, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5365, '', 'PR0616', '', 2017, 'May', 587.10, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5366, '', 'PR0617', '', 2017, 'May', 212.90, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5367, '', 'PR0618', '', 2017, 'May', 212.90, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5368, '', 'PR0619', '', 2017, 'May', 3164.52, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5369, '', 'PR0620', '', 2017, 'May', 154.84, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5370, '', 'PR0621', '', 2017, 'May', 774.19, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1),
(5371, '', 'PR0622', '', 2017, 'May', 748.39, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, '', '', 0, '', '', 0.00, 0, 0, '', 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `path` varchar(500) NOT NULL,
  `proof_type` varchar(30) NOT NULL,
  `remarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `customer_id`, `enquiry_id`, `path`, `proof_type`, `remarks`) VALUES
(151, 'PR0586', '', 'Tulips.jpg', 'image', ''),
(152, 'PR0586', '', 'Penguins.jpg', 'Company Id', ''),
(153, 'PR0586', '', 'Lighthouse.jpg', 'Canceled Cheque', ''),
(154, 'PR0586', '', 'Jellyfish.jpg', 'Id Proof', ''),
(155, 'PR0586', '', 'Tulips.jpg', 'Address Proof', ''),
(161, '', '310825', 'Desert.jpg', 'image', ''),
(162, '', '310825', 'Chrysanthemum.jpg', 'Company Id', ''),
(163, '', '310825', 'Desert.jpg', 'Canceled Cheque', ''),
(164, '', '310825', '', 'Id Proof', ''),
(165, '', '310825', '', 'Address Proof', ''),
(166, 'PR0587', '0', 'Desert.jpg', 'image', ''),
(167, 'PR0587', '0', 'Chrysanthemum.jpg', 'Company Id', ''),
(168, 'PR0587', '0', 'Desert.jpg', 'Canceled Cheque', ''),
(169, 'PR0587', '0', 'Jellyfish.jpg', 'Id Proof', ''),
(170, 'PR0587', '0', 'Tulips.jpg', 'Address Proof', ''),
(171, '', 'ENQ000002', '', 'image', ''),
(172, '', 'ENQ000002', '', 'Company Id', ''),
(173, '', 'ENQ000002', '', 'Canceled Cheque', ''),
(174, '', 'ENQ000002', '', 'Id Proof', ''),
(175, '', 'ENQ000002', '', 'Address Proof', ''),
(176, '', '806364', '', 'image', ''),
(177, '', '806364', '', 'Company Id', ''),
(178, '', '806364', '', 'Canceled Cheque', ''),
(179, '', '806364', '', 'Id Proof', ''),
(180, '', '806364', '', 'Address Proof', ''),
(181, 'PR0623', '', 'Desert.jpg', 'image', ''),
(182, 'PR0623', '', 'Desert.jpg', 'Company Id', ''),
(183, 'PR0623', '', 'Jellyfish.jpg', 'Canceled Cheque', ''),
(184, 'PR0623', '', 'Lighthouse.jpg', 'Id Proof', ''),
(185, 'PR0623', '', 'Tulips.jpg', 'Address Proof', ''),
(186, 'PR0624', '', 'Tulips.jpg', 'image', ''),
(187, 'PR0624', '', 'Jellyfish.jpg', 'Company Id', ''),
(188, 'PR0624', '', 'Penguins.jpg', 'Canceled Cheque', ''),
(189, 'PR0624', '', 'Koala.jpg', 'Id Proof', ''),
(190, 'PR0624', '', 'Desert.jpg', 'Address Proof', '');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_proof_type`
--

CREATE TABLE `kyc_proof_type` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapping_table`
--

CREATE TABLE `mapping_table` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `delivery_status` tinyint(4) NOT NULL,
  `delivery_date` varchar(10) NOT NULL,
  `installation_date` varchar(30) NOT NULL,
  `rent_on_date` varchar(30) NOT NULL,
  `return_date` varchar(30) NOT NULL,
  `delivered_by` varchar(30) NOT NULL,
  `delivered_at` varchar(30) NOT NULL,
  `rent_per_month` float(11,2) NOT NULL,
  `rent_cost` float(11,2) NOT NULL,
  `received_total_rent_cost` float(11,2) NOT NULL,
  `pending_rent_amount` float(11,2) NOT NULL,
  `actual_security_deposit_amount` float(11,2) NOT NULL,
  `actual_processing_fee` float(11,2) NOT NULL,
  `actual_installation_fee` float(11,2) NOT NULL,
  `actual_other_fee` float(11,2) NOT NULL,
  `reiceved_total_security_deposit_amount` float(11,2) NOT NULL,
  `reiceved_total_processing_fee` float(11,2) NOT NULL,
  `reiceved_total_installation_fee` float(11,2) NOT NULL,
  `reiceved_total_other_fee` float(11,2) NOT NULL,
  `enq_product_pending_amount` float(11,2) NOT NULL,
  `is_closure` tinyint(4) NOT NULL,
  `closure_date` varchar(10) NOT NULL DEFAULT '0',
  `service_status` tinyint(4) NOT NULL,
  `invoice_status` tinyint(4) NOT NULL DEFAULT '0',
  `mapped_status` tinyint(4) NOT NULL DEFAULT '0',
  `refund_status` tinyint(4) NOT NULL DEFAULT '0',
  `refund_amount` varchar(10) NOT NULL,
  `pending_minus` varchar(10) NOT NULL,
  `refund_remark` varchar(300) NOT NULL,
  `removed_status` tinyint(4) NOT NULL DEFAULT '0',
  `closure_remark` varchar(300) NOT NULL,
  `month` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `c_month` int(11) NOT NULL DEFAULT '0',
  `c_year` int(11) NOT NULL DEFAULT '0',
  `r_month` int(11) NOT NULL DEFAULT '0',
  `r_year` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapping_table`
--

INSERT INTO `mapping_table` (`id`, `enquiry_id`, `customer_id`, `product_id`, `delivery_status`, `delivery_date`, `installation_date`, `rent_on_date`, `return_date`, `delivered_by`, `delivered_at`, `rent_per_month`, `rent_cost`, `received_total_rent_cost`, `pending_rent_amount`, `actual_security_deposit_amount`, `actual_processing_fee`, `actual_installation_fee`, `actual_other_fee`, `reiceved_total_security_deposit_amount`, `reiceved_total_processing_fee`, `reiceved_total_installation_fee`, `reiceved_total_other_fee`, `enq_product_pending_amount`, `is_closure`, `closure_date`, `service_status`, `invoice_status`, `mapped_status`, `refund_status`, `refund_amount`, `pending_minus`, `refund_remark`, `removed_status`, `closure_remark`, `month`, `year`, `c_month`, `c_year`, `r_month`, `r_year`) VALUES
(1, '', 'PR0003', 'WM1002060VICT25D151008', 1, '25-Dec-15', '29-Dec-15', '29-Dec-15', '', '', '', 700.00, 350.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 1, '2017-06-14', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 9, 2017, 0, 0),
(2, '', 'PR0007', 'WM1004060WPCT081161013', 1, '8-Jan-16', '10-Jan-16', '10-Jan-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(3, '', 'PR0011', 'WM1101060WPTE139161428', 1, '10-Jan-16', '10-Jan-16', '10-Jan-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(4, '', 'PR0016', 'IC1001ICDSSSS31D151137', 1, '29-Jan-16', '29-Jan-16', '29-Jan-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(5, '', 'PR0017', 'WM1006060WPCT081161015', 1, '31-Jan-16', '31-Jan-16', '31-Jan-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(6, '', 'PR0017', 'RE1064190WPTE276161271', 1, '30-Jul-16', '30-Jul-16', '30-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(7, '', 'PR0018', 'TV1003032ZBZB022161023', 1, '3-Feb-16', '3-Feb-16', '3-Feb-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(8, '', 'PR0018', 'SO1003003SSSS042161063', 1, '7-Feb-16', '7-Feb-16', '7-Feb-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(9, '', 'PR0018', 'RE1005192SSCT022161026', 1, '4-Feb-16', '7-Feb-16', '7-Feb-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(10, '', 'PR0019', 'TV1004032ZBZB022161024', 1, '4-Feb-16', '4-Feb-16', '4-Feb-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(11, '', 'PR0019', 'WM1056060WPTE047161272', 1, '30-Sep-16', '1-Oct-16', '1-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(12, '', 'PR0021', 'MW1002020IFCT072161034', 1, '7-Feb-16', '7-Feb-16', '7-Feb-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(13, '', 'PR0021', 'RE1009240WPCT072161033', 1, '7-Feb-16', '7-Feb-16', '7-Feb-16', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(14, '', 'PR0021', 'AC1001010CMAE092161037', 1, '7-Feb-16', '7-Feb-16', '7-Feb-16', '', '', '', 1500.00, 750.00, 0.00, 0.00, 4500.00, 500.00, 0.00, 0.00, 4500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '3750.00', '0', 'asd', 0, '', 6, 2016, 0, 0, 0, 0),
(15, '', 'PR0023', 'WM1010060VICT092161029', 1, '9-Feb-16', '9-Feb-16', '9-Feb-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(16, '', 'PR0023', 'RE1006192SSCT092161028', 1, '9-Feb-16', '9-Feb-16', '9-Feb-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(17, '', 'PR0030', 'WM1014060WPCT232161048', 1, '24-Feb-16', '24-Feb-16', '24-Feb-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(18, '', 'PR0032', 'TV1009032ZBZB272161068', 1, '29-Feb-16', '1-Mar-16', '1-Mar-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(19, '', 'PR0034', 'WM1009060WPCT101161018', 1, '27-Feb-16', '27-Feb-16', '27-Feb-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(20, '', 'PR0035', 'HT1002051SOBH093161059', 1, '28-Feb-16', '28-Feb-16', '28-Feb-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(21, '', 'PR0035', 'TV1007040LDCT282161058', 1, '9-Mar-16', '9-Mar-16', '9-Mar-16', '', '', '', 1700.00, 1700.00, 0.00, 0.00, 5100.00, 500.00, 0.00, 0.00, 5100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(22, '', 'PR0036', 'WM1016060VICT023161051', 1, '3-Mar-16', '8-Mar-16', '8-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(23, '', 'PR0036', 'RE1015190SSCT073161061', 1, '8-Mar-16', '8-Mar-16', '8-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(24, '', 'PR0036', 'SO1004003SSSS013161065', 1, '4-Mar-16', '4-Mar-16', '4-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(25, '', 'PR0036', 'WC1002WDCSSSS013161064', 1, '2-Mar-16', '2-Mar-16', '2-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(26, '', 'PR0038', 'WM1015060VICT023161049', 1, '3-Mar-16', '4-Mar-16', '4-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(27, '', 'PR0042', 'WM1018060VICT043161053', 1, '6-Mar-16', '7-Mar-16', '7-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(28, '', 'PR0043', 'RE1013190SSCT073161054', 1, '7-Mar-16', '7-Mar-16', '7-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(29, '', 'PR0043', 'TV1021032ZBZB263161126', 1, '25-Jun-16', '25-Jun-16', '25-Jun-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(30, '', 'PR0044', 'RE1014190SSCT073161055', 1, '8-Mar-16', '8-Mar-16', '8-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(31, '', 'PR0046', 'WM1021060VICT083161081', 1, '17-Mar-16', '18-Mar-16', '18-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(32, '', 'PR0048', 'WM1022060VICT103161083', 1, '10-Mar-16', '12-Mar-16', '12-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(33, '', 'PR0048', 'TV1040032ZBZB036161134', 1, '6-Jun-16', '6-Jun-16', '6-Jun-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(34, '', 'PR0048', 'WM1012065WPBH241161041', 1, '1-Dec-16', '2-Dec-16', '2-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(35, '', 'PR0049', 'WMXXX2065WPBHXXXXXXXX2', 1, '12-Mar-16', '14-Mar-16', '14-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(36, '', 'PR0049', 'RE1018190SSCT123161086', 1, '12-Mar-16', '12-Mar-16', '12-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(37, '', 'PR0053', 'TV1013032ZBZB143161073', 1, '15-Mar-16', '15-Mar-16', '15-Mar-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(38, '', 'PR0055', 'RE1021190SSCT173161089', 1, '17-Mar-16', '17-Mar-16', '17-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(39, '', 'PR0056', 'TV1002032ZBZB31D151011', 1, '19-Mar-16', '19-Mar-16', '19-Mar-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 1, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(40, '', 'PR0056', 'WM1024060VICT193161091', 1, '20-Mar-16', '20-Mar-16', '20-Mar-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(41, '', 'PR0056', 'RE1022190SSCT193161090', 1, '20-Mar-16', '20-Mar-16', '20-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(42, '', 'PR0056', 'WC1001DWCXXBH183161139', 1, '19-Mar-16', '19-Mar-16', '19-Mar-16', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(43, '', 'PR0056', 'TU1001WTVYHYH25D151005', 1, '19-Mar-16', '19-Mar-16', '19-Mar-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(44, '', 'PR0056', 'AC1030010LDAE264161162', 1, '26-Apr-16', '30-Apr-16', '30-Apr-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(45, '', 'PR0061', 'AC1012010LDAE243161100', 1, '24-Mar-16', '26-Mar-16', '26-Mar-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 0.00, 0.00, 4500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(46, '', 'PR0063', 'TV1017032ZBZB223161077', 1, '26-Mar-16', '28-Mar-16', '28-Mar-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(47, '', 'PR0063', 'AC1016015LDAE283161104', 1, '28-Mar-16', '30-Mar-16', '30-Mar-16', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 0.00, 0.00, 6000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(48, '', 'PR0063', 'AC1015010LDAE283161103', 1, '28-Mar-16', '30-Mar-16', '30-Mar-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 0.00, 0.00, 4500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(49, '', 'PR0071', 'RE1027190SSCT303161113', 1, '30-Mar-16', '30-Mar-16', '30-Mar-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(50, '', 'PR0071', 'ACXXX3010LDAEXXXXXXXX3', 1, '8-Apr-17', '9-Apr-17', '9-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(51, '', 'PR0072', 'WM1013060WPCT232161047', 1, '1-Apr-16', '1-Apr-16', '1-Apr-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(52, '', 'PR0072', 'RE1004192SSCT191161021', 1, '1-May-16', '1-May-16', '1-May-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(53, '', 'PR0074', 'RE1030190SSCT313161117', 1, '1-Apr-16', '1-Apr-16', '1-Apr-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(54, '', 'PR0075', 'WM1027060VICT042161118', 1, '4-Apr-16', '6-Apr-16', '6-Apr-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(55, '', 'PR0085', 'AC1004010LDAE292161044', 1, '13-Apr-16', '15-Apr-16', '15-Apr-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 1500.00, 0.00, 0.00, 4500.00, 1500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(56, '', 'PR0089', 'MW1006020IFCT127161287', 1, '15-Jul-16', '15-Jul-16', '15-Jul-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 1500.00, 0.00, 1500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(57, '', 'PR0092', 'RE1036190SSCT124161066', 1, '12-Apr-16', '12-Apr-16', '12-Apr-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(58, '', 'PR0093', 'RE1037190SSCT164161149', 1, '16-Apr-16', '17-Apr-16', '17-Apr-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(59, '', 'PR0095', 'WM1029060VICT134161069', 1, '13-Apr-16', '16-Apr-16', '16-Apr-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(60, '', 'PR0101', 'TV1025032ZBZB214161147', 1, '25-Apr-16', '25-Apr-16', '25-Apr-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(61, '', 'PR0106', 'AC1034010VIAE294161166', 1, '30-Apr-16', '1-May-16', '1-May-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(62, '', 'PR0109', 'IC1002ICSXXBH204151141', 1, '16-Jan-17', '16-Jan-17', '16-Jan-17', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(63, '', 'PR0113', 'MW1011020IFCT227161442', 1, '6-May-16', '6-May-16', '6-May-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(64, '', 'PR0122', 'RE1043190SSCT085161188', 1, '9-May-16', '9-May-16', '9-May-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(65, '', 'PR0123', 'WC1004DWDSSSS135161199', 1, '14-May-16', '14-May-16', '14-May-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(66, '', 'PR0123', 'WC1002WDCSSSS013161110', 1, '10-Jan-17', '10-Jan-17', '10-Jan-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(67, '', 'PR0123', 'WC1005DWDSSSS135161133', 1, '1-Apr-17', '1-Apr-17', '1-Apr-17', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 1500.00, 0.00, 3900.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(68, '', 'PR0124', 'WM1036060VICT075161187', 1, '11-May-16', '13-May-16', '13-May-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(69, '', 'PR0124', 'REXX60190SSCTXXXXXXX60', 1, '28-Apr-17', '28-Apr-17', '28-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(70, '', 'PR0126', 'AC1045010VIAE175161202', 1, '17-May-16', '18-May-16', '18-May-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(71, '', 'PR0126', 'AC1046010VIAE175161203', 1, '17-May-16', '18-May-16', '18-May-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(72, '', 'PR0126', 'AC1047015VIAE175161204', 1, '17-May-16', '18-May-16', '18-May-16', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(73, '', 'PR0129', 'WM1036060VICT075161187', 1, '11-May-16', '13-May-16', '13-May-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(74, '', 'PR0133', 'TV1032032ZBZB075161184', 1, '16-May-16', '16-May-16', '16-May-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(75, '', 'PR0134', 'RE1050190SSCT165161215', 1, '16-May-16', '16-May-16', '16-May-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(76, '', 'PR0134', 'WM1038060VICT165161216', 1, '16-May-16', '17-May-16', '17-May-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(77, '', 'PR0135', 'WM1039060VICT195161218', 1, '19-May-16', '20-May-16', '20-May-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(78, '', 'PR0138', 'TV1033032ZBZB205161209', 1, '22-May-16', '22-May-16', '22-May-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(79, '', 'PR0139', 'AC1048010VIAE245161205', 1, '25-May-16', '28-May-16', '28-May-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(80, '', 'PR0140', 'AC1049010VIAE245161206', 1, '25-May-16', '30-May-16', '30-May-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(81, '', 'PR0140', 'RE1066190WPCT127161286', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(82, '', 'PR0141', 'RE1053190SSCT245161221', 1, '24-May-16', '24-May-16', '24-May-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(83, '', 'PR0142', 'AC1050010VIAE255161207', 1, '25-May-16', '26-May-16', '26-May-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(84, '', 'PR0142', 'WC1013DWDSSSS255161228', 1, '26-May-16', '26-May-16', '26-May-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(85, '', 'PR0143', 'TV1034032ZBZB205161210', 1, '25-May-16', '25-May-16', '25-May-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(86, '', 'PR0143', 'WM1042060WPCT255161240', 1, '25-May-16', '26-May-16', '26-May-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(87, '', 'PR0143', 'ACXX24010LDAEXXXXXXX24', 1, '', '', '5/29/2017', '', '', '', 1500.00, 145.16, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(88, '', 'PR0145', 'WM1043060VICT295161242', 1, '30-May-16', '1-Jun-16', '1-Jun-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(89, '', 'PR0147', 'AC1055010VIAE315161238', 1, '1-Jun-16', '2-Jun-16', '2-Jun-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(90, '', 'PR0148', 'TV1036040ZBZB285161212', 1, '28-May-16', '28-May-16', '28-May-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(91, '', 'PR0151', 'RE1055190SSCT295161243', 1, '31-May-16', '31-May-16', '31-May-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(92, '', 'PR0154', 'SOXXX5003SSSSXXXXXXXX5', 1, '6-Jun-16', '6-Jun-16', '6-Jun-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(93, '', 'PR0154', 'TV1038032ZBZB036161225', 1, '6-Jun-16', '6-Jun-16', '6-Jun-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(94, '', 'PR0154', 'WC1002WDCSSSS013161074', 1, '6-Jun-16', '6-Jun-16', '6-Jun-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(95, '', 'PR0154', 'RE1057190SSCT036161247', 1, '6-Jun-16', '6-Jun-16', '6-Jun-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(96, '', 'PR0154', 'WM1065060VICT016161248', 1, '6-Jun-16', '6-Jun-16', '6-Jun-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(97, '', 'PR0155', 'WM1045060VICT046161251', 1, '4-Jun-16', '6-Jun-16', '6-Jun-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(98, '', 'PR0158', 'AC1056010VIAE036161278', 1, '4-Jun-16', '7-Jun-16', '7-Jun-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(99, '', 'PR0159', 'WM1019060VICT114161060', 1, '8-Jun-16', '8-Jun-16', '8-Jun-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(100, '', 'PR0159', 'RE1035190SSCT114161057', 1, '8-Jun-16', '8-Jun-16', '8-Jun-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(101, '', 'PR0159', 'TV1045040ZBZB066161277', 1, '7-Jun-16', '8-Jun-16', '8-Jun-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(102, '', 'PR0169', 'WM1053060WPCT136161264', 1, '14-Jun-16', '15-Jun-16', '15-Jun-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(103, '', 'PR0052', 'WM1052060WPCT136161263', 1, '16-Jun-16', '16-Jun-16', '16-Jun-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(104, '', 'PR0052', 'WC1003DWCSSSS124161131', 1, '24-Jul-16', '24-Jul-16', '24-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(105, '', 'PR0174', 'AC1003010LDAE292161043', 1, '2-Jul-16', '2-Jul-16', '2-Jul-16', '', '', '', 1500.00, 800.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '3700.00', '0', 'asd', 0, '', 6, 2016, 0, 0, 0, 0),
(106, '', 'PR0178', 'RE1063190WPTE276161269', 1, '27-Jun-16', '27-Jun-16', '27-Jun-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(107, '', 'PR0178', 'TV1024032ZBZB214161146', 1, '2-Jul-16', '2-Jul-16', '2-Jul-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(108, '', 'PR0040', 'TV1043032ZBZB276161275', 1, '29-Jun-16', '29-Jun-16', '29-Jun-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(109, '', 'PR0040', 'RE1061240WPCT236161267', 1, '29-Jun-16', '29-Jun-16', '29-Jun-16', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(110, '', 'PR0180', 'TV1064040ZBZB199161423', 1, '20-Sep-16', '20-Sep-16', '20-Sep-16', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(111, '', 'PR0180', 'TV1065040ZBZB20O161495', 1, '19-Oct-16', '19-Oct-16', '19-Oct-16', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(112, '', 'PR0180', 'TV1066040ZBZB22O161496', 1, '21-Oct-16', '21-Oct-16', '21-Oct-16', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(113, '', 'PR0180A', 'TV1001040ZBZB23D151006', 1, '1-Jul-16', '1-Jul-16', '1-Jul-16', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(114, '', 'PR0180A', 'TV1076040VUTE051171567', 1, '26-Jan-17', '26-Jan-17', '26-Jan-17', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(115, '', 'PR0187', 'WM1051060WPCT116161262', 1, '7-Jul-16', '7-Jul-16', '7-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(116, '', 'PR0187', 'RE1062190WPTE076161268', 1, '4-Nov-16', '4-Nov-16', '4-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(117, '', 'PR0190', 'WM1057060WPCT037161279', 1, '3-Jul-16', '3-Jul-16', '3-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(118, '', 'PR0194', 'WM1061060WPCT097161283', 1, '9-Jul-16', '10-Jul-16', '10-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(119, '', 'PR0196', 'WM1062060WPCT127161284', 1, '12-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(120, '', 'PR0196', 'RE1001190VICT13N151001', 1, '11-Jul-16', '11-Jul-16', '11-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(121, '', 'PR0198', 'MW1008020WPTE147161308', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(122, '', 'PR0198', 'WM1066062WPTE147161307', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(123, '', 'PR0198', 'TV1030032ZBZB075161182', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(124, '', 'PR0200', 'WM1064060WPCT147161290', 1, '15-Jul-16', '16-Jul-16', '16-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(125, '', 'PR0200', 'RE1067190WPCT127161291', 1, '15-Jul-16', '15-Jul-16', '15-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(126, '', 'PR0201', 'SO1001003SSSS21D151004', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(127, '', 'PR0202', 'WM1071062WPCT197161319', 1, '20-Jul-16', '21-Jul-16', '21-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(128, '', 'PR0203', 'WM1069062WPCT167161313', 1, '17-Jul-16', '18-Jul-16', '18-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(129, '', 'PR0203', 'RE1072190WPCT167161314', 1, '17-Jul-16', '17-Jul-16', '17-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(130, '', 'PR0203', 'AC1031010LDAE264161163', 1, '12-Nov-16', '12-Nov-16', '12-Nov-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(131, '', 'PR0205', 'WC1002WDCSSSS013161111', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 1100.00, 1100.00, 0.00, 0.00, 3300.00, 500.00, 0.00, 0.00, 3300.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(132, '', 'PR0205', 'WC1002WDCSSSS013161112', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 1100.00, 1100.00, 0.00, 0.00, 3300.00, 500.00, 0.00, 0.00, 3300.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(133, '', 'PR0205', 'WM1063060WPCT137161289', 1, '14-Jul-16', '15-Jul-16', '15-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(134, '', 'PR0205', 'MW1007020IFCT127161288', 1, '14-Jul-16', '14-Jul-16', '14-Jul-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(135, '', 'PR0206', 'WM1067062WPTE197161309', 1, '20-Jul-16', '23-Jul-16', '23-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(136, '', 'PR0206', 'RE1080190WPTE197161310', 1, '20-Jul-16', '20-Jul-16', '20-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(137, '', 'PR0207', 'WM1072062WPCT187161320', 1, '20-Jul-16', '20-Jul-16', '20-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(138, '', 'PR0207', 'RE1076190WPCT187161321', 1, '20-Jul-16', '20-Jul-16', '20-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(139, '', 'PR0207', 'SO1011003SSSS187161338', 1, '22-Jul-16', '22-Jul-16', '22-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(140, '', 'PR0207', 'WC1017DWDSSSS197161333', 1, '19-Jul-16', '19-Jul-16', '19-Jul-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(141, '', 'PR0208', 'WC1006DWCSSSS187161332', 1, '19-Jul-16', '20-Jul-16', '20-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(142, '', 'PR0208', 'SO1007003SSSS215161230', 1, '19-Jul-16', '19-Jul-16', '19-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(143, '', 'PR0208', 'CT1001XXXSSSS124161136', 1, '19-Jul-16', '19-Jul-16', '19-Jul-16', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(144, '', 'PR0208', 'RE1074190WPCT187161316', 1, '18-Jul-16', '18-Jul-16', '18-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(145, '', 'PR0209', 'WM1070062WPCT177161317', 1, '17-Jul-16', '18-Jul-16', '18-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(146, '', 'PR0212', 'RE1075190WPCT217161318', 1, '21-Jul-16', '21-Jul-16', '21-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(147, '', 'PR0214', 'WM1028060VICT062161122', 1, '24-Jul-16', '24-Jul-16', '24-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(148, '', 'PR0217', 'WM1077062WPCT257161330', 1, '25-Jul-16', '26-Jul-16', '26-Jul-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(149, '', 'PR0217', 'TV1077040VUTE071171568', 1, '7-Jan-17', '7-Jan-17', '7-Jan-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(150, '', 'PR0218', 'AC1002010CMAE062161038', 1, '26-Jul-16', '27-Jul-16', '27-Jul-16', '', '', '', 1500.00, 800.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '3700.00', '0', 'asd', 0, '', 6, 2016, 0, 0, 0, 0),
(151, '', 'PR0219', 'AC1009010LDAE213161097', 1, '30-Jul-16', '1-Aug-16', '1-Aug-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(152, '', 'PR0219', 'WC1009SWCSSSS307161343', 1, '30-Jul-16', '1-Aug-16', '1-Aug-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(153, '', 'PR0219', 'WC1007SWCSSSS307161336', 1, '30-Jul-16', '1-Aug-16', '1-Aug-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(154, '', 'PR0219', 'TV1014032ZBZB143161074', 1, '30-Jul-16', '4-Aug-16', '4-Aug-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(155, '', 'PR0219', 'DT1002D5SXXYH154161180', 1, '30-Jul-16', '1-Aug-16', '1-Aug-16', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(156, '', 'PR0219', 'SO1010003SSSS297161337', 1, '30-Jul-16', '30-Jul-16', '30-Jul-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(157, '', 'PR0224', 'WM1076062WPCT028161327', 1, '2-Aug-16', '6-Aug-16', '6-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(158, '', 'PR0224', 'RE1079190WPCT028161328', 1, '2-Aug-16', '2-Aug-16', '2-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(159, '', 'PR0225', 'WM1075062WPCT028161325', 1, '2-Aug-16', '3-Aug-16', '3-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(160, '', 'PR0225', 'RE1078190WPCT028161326', 1, '2-Aug-16', '2-Aug-16', '2-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(161, '', 'PR0225', 'TV1042032ZBZB276161274', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(162, '', 'PR0226', 'TV1062032ZBZB308161369', 1, '4-Aug-16', '6-Aug-16', '6-Aug-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(163, '', 'PR0227', 'WM1086062WPCT028161370', 1, '3-Aug-16', '5-Aug-16', '5-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(164, '', 'PR0229', 'WC1008DWCSSSS058161342', 1, '7-Aug-16', '7-Aug-16', '7-Aug-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(165, '', 'PR0230', 'RE1087185WPCT048161371', 1, '5-Aug-16', '5-Aug-16', '5-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(166, '', 'PR0231', 'RE1003192SSCT141161020', 1, '4-Aug-16', '4-Aug-16', '4-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(167, '', 'PR0231', 'WM1033060WPCT015161178', 1, '4-Aug-16', '7-Aug-16', '7-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(168, '', 'PR0234', 'RE1088185WPCT058161374', 1, '6-Aug-16', '6-Aug-16', '6-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(169, '', 'PR0235', 'RE1082190WPCT068161375', 1, '6-Aug-16', '6-Aug-16', '6-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(170, '', 'PR0237', 'WM1087062WPCT068161376', 1, '7-Aug-16', '10-Aug-16', '10-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(171, '', 'PR0240', 'RE1090185WPCT108161377', 1, '12-Aug-16', '12-Aug-16', '12-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(172, '', 'PR0248', 'RE1091185WPCT148161381', 1, '14-Aug-16', '14-Aug-16', '14-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(173, '', 'PR0248', 'TV1060040ZBZB168161351', 1, '19-Aug-16', '19-Aug-16', '19-Aug-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(174, '', 'PR0248', 'AC1022015LDAE114161112', 1, '17-Aug-16', '19-Aug-16', '19-Aug-16', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(175, '', 'PR0249', 'RE1084190WPCT178161382', 1, '17-Aug-16', '17-Aug-16', '17-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(176, '', 'PR0252', 'WM1090062WPCT218161384', 1, '21-Aug-16', '23-Aug-16', '23-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(177, '', 'PR0252', 'RE1138190SSCT142171621', 1, '15-Feb-17', '15-Feb-17', '15-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(178, '', 'PR0255', 'SO1014003SSSS238161360', 1, '23-Aug-16', '23-Aug-16', '23-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(179, '', 'PR0255', 'RE1085190WPCT218161387', 1, '23-Aug-16', '23-Aug-16', '23-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(180, '', 'PR0255', 'TV1031032ZBZB075161183', 1, '23-Aug-16', '23-Aug-16', '23-Aug-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(181, '', 'PR0255', 'WM1081062WPCT238161388', 1, '23-Aug-16', '23-Aug-16', '23-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(182, '', 'PR0255', 'WC1011DWCSSSS238161358', 1, '23-Aug-16', '23-Aug-16', '23-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(183, '', 'PR0255', 'DT1005D4SSSSS088161359', 1, '27-Aug-16', '29-Aug-16', '29-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(184, '', 'PR0255', 'MW1015020IFCT308161501', 1, '23-Aug-16', '23-Aug-16', '23-Aug-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 1500.00, 0.00, 1500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(185, '', 'PR0256', 'RE1092185WPCT208161390', 1, '20-Aug-16', '20-Aug-16', '20-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(186, '', 'PR0263', 'WM1085062WPCT278161398', 1, '27-Aug-16', '28-Aug-16', '28-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(187, '', 'PR0268', 'TV1061032ZBZB278161395', 1, '27-Aug-16', '27-Aug-16', '27-Aug-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(188, '', 'PR0270', 'WM1040060VICT205161219', 1, '29-Aug-16', '1-Sep-16', '1-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(189, '', 'PR0271', 'MT1002QSMSSSS308161406', 1, '30-Aug-16', '30-Aug-16', '30-Aug-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(190, '', 'PR0271', 'SO1016003SSSS298161403', 1, '5-Sep-16', '5-Sep-16', '5-Sep-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(191, '', 'PR0271', 'CT1006XXXSSSS308161405', 1, '30-Aug-16', '30-Aug-16', '30-Aug-16', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(192, '', 'PR0271', 'DT1006D4SSSSS298161402', 1, '31-Aug-16', '1-Sep-16', '1-Sep-16', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(193, '', 'PR0271', 'RE1083190WPCT128161379', 1, '30-Aug-16', '30-Aug-16', '30-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(194, '', 'PR0271', 'MW1010020WPCT278161400', 1, '30-Aug-16', '30-Aug-16', '30-Aug-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(195, '', 'PR0271', 'WM1102060WPTE159161429', 1, '15-Sep-16', '17-Sep-16', '17-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(196, '', 'PR0271', 'MT1003SSMSSSS159161433', 1, '15-Sep-16', '15-Sep-16', '15-Sep-16', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0);
INSERT INTO `mapping_table` (`id`, `enquiry_id`, `customer_id`, `product_id`, `delivery_status`, `delivery_date`, `installation_date`, `rent_on_date`, `return_date`, `delivered_by`, `delivered_at`, `rent_per_month`, `rent_cost`, `received_total_rent_cost`, `pending_rent_amount`, `actual_security_deposit_amount`, `actual_processing_fee`, `actual_installation_fee`, `actual_other_fee`, `reiceved_total_security_deposit_amount`, `reiceved_total_processing_fee`, `reiceved_total_installation_fee`, `reiceved_total_other_fee`, `enq_product_pending_amount`, `is_closure`, `closure_date`, `service_status`, `invoice_status`, `mapped_status`, `refund_status`, `refund_amount`, `pending_minus`, `refund_remark`, `removed_status`, `closure_remark`, `month`, `year`, `c_month`, `c_year`, `r_month`, `r_year`) VALUES
(197, '', 'PR0271', 'MT1004SSMSSSS149161434', 1, '15-Sep-16', '15-Sep-16', '15-Sep-16', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 0.00, 0.00, 0.00, 1200.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(198, '', 'PR0273', 'RE1086190WPCT318161399', 1, '31-Aug-16', '31-Aug-16', '1-Sep-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(199, '', 'PR0274', 'AC1042010VIAE065161174', 1, '27-Aug-16', '28-Aug-16', '28-Aug-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(200, '', 'PR0274', 'RE1069190WPTE157161306', 1, '27-Aug-16', '27-Aug-16', '27-Aug-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(201, '', 'PR0274', 'TV1059032ZBZB108161350', 1, '27-Aug-16', '27-Aug-16', '27-Aug-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(202, '', 'PR0275', 'WM1059060WPCT077161281', 1, '27-Aug-16', '27-Aug-16', '27-Aug-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(203, '', 'PR0277', 'RE1093185WPCT029161410', 1, '3-Sep-16', '3-Sep-16', '3-Sep-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(204, '', 'PR0277', 'WM1093062WPCT029161409', 1, '3-Sep-16', '3-Sep-16', '3-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(205, '', 'PR0278', 'RE1095185WPCT069161413', 1, '6-Sep-16', '6-Sep-16', '6-Sep-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(206, '', 'PR0283', 'RE1097190WPTE119161425', 1, '11-Sep-16', '11-Sep-16', '11-Sep-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(207, '', 'PR0288', 'WM1099060WPCT129161419', 1, '12-Sep-16', '14-Sep-16', '14-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(208, '', 'PR0288', 'RE1031190SSCT054161119', 1, '4-Apr-17', '4-Apr-17', '4-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(209, '', 'PR0293', 'TV1008032ZBZB272161067', 1, '18-Sep-16', '18-Sep-16', '18-Sep-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(210, '', 'PR0297', 'TV1063032ZBZB199161396', 1, '21-Sep-16', '21-Sep-16', '21-Sep-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(211, '', 'PR0302', 'WC1022DWDSSSS279161436', 1, '27-Sep-16', '27-Sep-16', '27-Sep-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(212, '', 'PR0302', 'TV1005040ZBZB092161027', 1, '24-Sep-16', '24-Sep-16', '24-Sep-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(213, '', 'PR0302', 'TU1003WTVSSSS279161437', 1, '27-Sep-16', '27-Sep-16', '27-Sep-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(214, '', 'PR0302', 'WM1104062WPTE249161431', 1, '24-Sep-16', '24-Sep-16', '24-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(215, '', 'PR0303', 'RE1052240WPCT245161220', 1, '26-Sep-16', '26-Sep-16', '26-Sep-16', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(216, '', 'PR0305', 'WM1107062WPCT249161441', 1, '25-Sep-16', '26-Sep-16', '26-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(217, '', 'PR0305', 'RE1065190WPCT137161285', 1, '8-Oct-16', '8-Oct-16', '8-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(218, '', 'PR0306', 'WM1105062WPTE249161432', 1, '24-Sep-16', '26-Sep-16', '26-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(219, '', 'PR0309', 'TV1055032ZBZB068161304', 1, '27-Sep-16', '27-Sep-16', '27-Sep-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(220, '', 'PR0309', 'RE1007192SSCT092161030', 1, '27-Sep-16', '27-Sep-16', '27-Sep-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(221, '', 'PR0309', 'DT1007D4SSSSS279161438', 1, '29-Sep-16', '30-Sep-16', '30-Sep-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(222, '', 'PR0310', 'TV1006032ZBZB132161035', 1, '3-Oct-16', '3-Oct-16', '3-Oct-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(223, '', 'PR0310', 'RE1012190SSCT023161050', 1, '3-Oct-16', '3-Oct-16', '3-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(224, '', 'PR0311', 'WM1046060WPCT096161252', 1, '1-Oct-16', '1-Oct-16', '1-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(225, '', 'PR0315', 'ICXX26ICDXXBHXXXXXXX27', 1, '2-Oct-16', '2-Oct-16', '3-Oct-16', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(226, '', 'PR0316', 'WM1109060WPCT04O161362', 1, '6-Oct-16', '7-Oct-16', '7-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(227, '', 'PR0325', 'RE1100185WPCT12O161365', 1, '13-Oct-16', '13-Oct-16', '13-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(228, '', 'PR0325', 'WM1111060WPCT12O161364', 1, '13-Oct-16', '13-Oct-16', '13-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(229, '', 'PR0326', 'RE1101185WPCT12O161366', 1, '13-Oct-16', '13-Oct-16', '13-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(230, '', 'PR0326', 'WM1112060WPCT12O161367', 1, '13-Oct-16', '14-Oct-16', '14-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(231, '', 'PR0327', 'RE1033190SSCT064161121', 1, '8-Oct-16', '8-Oct-16', '8-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(232, '', 'PR0327', 'WM1054060WPCT286161266', 1, '8-Oct-16', '8-Oct-16', '8-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(233, '', 'PR0344', 'RE1102185WPCT13O161385', 1, '14-Oct-16', '14-Oct-16', '14-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(234, '', 'PR0344', 'WM1113060WPCT13O161368', 1, '14-Oct-16', '14-Oct-16', '14-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(235, '', 'PR0328', 'RE1108190WPTE14O161460', 1, '14-Oct-16', '14-Oct-16', '14-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(236, '', 'PR0329', 'AC1013010LDAE243161101', 1, '15-Oct-16', '16-Oct-16', '16-Oct-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(237, '', 'PR0331', 'WM1114060WPCT13O161389', 1, '15-Oct-16', '15-Oct-16', '15-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(238, '', 'PR0333', 'AC1023010LDAE114161123', 1, '15-Oct-16', '15-Oct-16', '15-Oct-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(239, '', 'PR0333', 'AC1007010LDAE023161062', 1, '15-Oct-16', '15-Oct-16', '15-Oct-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(240, '', 'PR0333', 'AC1014010LDAE253161102', 1, '15-Oct-16', '15-Oct-16', '15-Oct-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(241, '', 'PR0334', 'WC1012DWCSSSS15O161469', 1, '15-Oct-16', '15-Oct-16', '15-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(242, '', 'PR0334', 'MW1012020IFCT15O161256', 1, '15-Oct-16', '15-Oct-16', '15-Oct-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(243, '', 'PR0335', 'RE1109190WPTE17O161462', 1, '17-Oct-16', '17-Oct-16', '17-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(244, '', 'PR0335', 'WM1106060WPCT239161440', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(245, '', 'PR0341', 'RE1103185WPCT13O161378', 1, '28-Oct-16', '28-Oct-16', '28-Oct-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(246, '', 'PR0341', 'WM1115060WPCT13O161444', 1, '28-Oct-16', '29-Oct-16', '29-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(247, '', 'PR0342', 'WM1020060VICT203161079', 1, '22-Oct-16', '22-Oct-16', '22-Oct-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(248, '', 'PR0347', 'CY1013HKBHSBC278161478', 1, '28-Oct-16', '28-Oct-16', '28-Oct-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(249, '', 'PR0350', 'WM1129060WPTE02N161467', 1, '2-Nov-16', '3-Nov-16', '3-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(250, '', 'PR0351', 'CT1004XXXSSSS028161341', 1, '1-Nov-16', '1-Nov-16', '1-Nov-16', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(251, '', 'PR0355', 'WM1117060WPCT13O161446', 1, '3-Nov-16', '3-Nov-16', '3-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(252, '', 'PR0356', 'WM1130060WPTE04N161490', 1, '4-Nov-16', '4-Nov-16', '4-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(253, '', 'PR0356', 'RE1024190SSCT253161094', 1, '9-Nov-16', '9-Nov-16', '9-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(254, '', 'PR0357', 'WM1118060WPCT13O161447', 1, '5-Nov-16', '7-Nov-16', '7-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(255, '', 'PR0357', 'RE1104185WPCT13O161448', 1, '5-Nov-16', '5-Nov-16', '5-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(256, '', 'PR0358', 'WC1025DWCSSSS05N161481', 1, '6-Nov-16', '6-Nov-16', '6-Nov-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 3900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(257, '', 'PR0358', 'WC1026DWCSSSS05N161482', 1, '6-Nov-16', '6-Nov-16', '6-Nov-16', '', '', '', 1300.00, 1300.00, 0.00, 0.00, 3900.00, 500.00, 1500.00, 0.00, 3900.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(258, '', 'PR0358', 'SO1017003SSSS265161485', 1, '8-Nov-16', '8-Nov-16', '8-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(259, '', 'PR0358', 'SO1018002SSSS265161486', 1, '8-Nov-16', '8-Nov-16', '8-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(260, '', 'PR0358', 'DT1009D4SSSSS05N161484', 1, '8-Nov-16', '9-Nov-16', '9-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(261, '', 'PR0358', 'CT1008XXXSSSS05N161483', 1, '8-Nov-16', '9-Nov-16', '9-Nov-16', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(262, '', 'PR0358', 'RE1105185WPCT13O161449', 1, '6-Nov-16', '6-Nov-16', '6-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(263, '', 'PR0358', 'TV1067040ZBZB04N161497', 1, '6-Nov-16', '7-Nov-16', '7-Nov-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 0.00, 0.00, 0.00, 3600.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(264, '', 'PR0358', 'WM1119060WPCT13O161450', 1, '6-Nov-16', '7-Nov-16', '7-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(265, '', 'PR0360', 'IC1004ICSSSSS07N161487', 1, '4-Mar-17', '4-Mar-17', '4-Mar-17', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(266, '', 'PR0361', 'RE1039190SSCT184161151', 1, '9-Nov-16', '9-Nov-16', '9-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(267, '', 'PR0362', 'CY1008HKBHSBC11N161468', 1, '14-Nov-16', '14-Nov-16', '14-Nov-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(268, '', 'PR0364', 'RE1107185WPCT05N161454', 1, '9-Nov-16', '9-Nov-16', '9-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(269, '', 'PR0364', 'WM1121060WPCT07N161453', 1, '9-Nov-16', '9-Nov-16', '9-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(270, '', 'PR0365', 'WC1001WDCXXPH052161039', 1, '11-Nov-16', '11-Nov-16', '11-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 1000.00, 0.00, 0.00, 2100.00, 1000.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(271, '', 'PR0368', 'RE1046190SSCT075161191', 1, '12-Nov-16', '12-Nov-16', '12-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(272, '', 'PR0368', 'WM1020060VICT203161079', 1, '12-Nov-16', '12-Nov-16', '12-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(273, '', 'PR0368', 'AC1051010VIAE255161208', 1, '12-Nov-16', '12-Nov-16', '12-Nov-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(274, '', 'PR0368', 'AC1033010VIAE294161165', 1, '12-Nov-16', '12-Nov-16', '12-Nov-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(275, '', 'PR0368', 'AC1032010LDAE264161164', 1, '12-Nov-16', '12-Nov-16', '12-Nov-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 3600.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(276, '', 'PR0369', 'RE1111190WPTE06N161491', 1, '7-Nov-16', '7-Nov-16', '7-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(277, '', 'PR0370', 'WM1133060WPTE15N161494', 1, '16-Nov-16', '16-Nov-16', '17-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(278, '', 'PR0371', 'WM1074062WPCT038161324', 1, '19-Sep-16', '19-Sep-16', '19-Sep-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(279, '', 'PR0372', 'WC1002WDCSSSS013161101', 1, '19-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(280, '', 'PR0372', 'SO1020003SSSS24N161521', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(281, '', 'PR0372', 'SO1021002SSSS24N161522', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(282, '', 'PR0372', 'DT1009D6SSSSS24N161520', 1, '19-Nov-16', '21-Nov-16', '21-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(283, '', 'PR0372', 'RE1054190SSCT295161241', 1, '19-Nov-16', '19-Nov-16', '19-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(284, '', 'PR0372', 'TV1015032ZBZB213161075', 1, '19-Nov-16', '19-Nov-16', '19-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(285, '', 'PR0372', 'WM1082062WPCT258161392', 1, '19-Nov-16', '19-Nov-16', '19-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(286, '', 'PR0372', 'AC1005010LDAE292161045', 1, '19-Nov-16', '19-Nov-16', '19-Nov-16', '', '', '', 1500.00, 1200.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(287, '', 'PR0372', 'AC1020010LDAE114161107', 1, '19-Nov-16', '19-Nov-16', '19-Nov-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(288, '', 'PR0376', 'RE1112185WPCT20N161503', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(289, '', 'PR0376', 'MW1016020WPCT20N161502', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(290, '', 'PR0377', 'WM1134060WPCT20N161504', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(291, '', 'PR0378', 'RE1025190SSCT283161095', 1, '19-Nov-16', '19-Nov-16', '19-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(292, '', 'PR0379', 'WCXX13DWCSSSSXXXXXXX13', 1, '23-Nov-16', '23-Nov-16', '23-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(293, '', 'PR0379', 'MTXX45QSMSSSSXXXXXXX78', 1, '23-Nov-16', '23-Nov-16', '23-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(294, '', 'PR0379', 'RE1115185WPCT23N161511', 1, '23-Nov-16', '23-Nov-16', '23-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(295, '', 'PR0379', 'TV1071040ZBZB22N161506', 1, '23-Nov-16', '23-Nov-16', '23-Nov-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(296, '', 'PR0379', 'WM1011060VICT092161032', 1, '5-Dec-16', '5-Dec-16', '5-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(297, '', 'PR0379', 'AC1062010LDTE153171658', 1, '14-Mar-17', '15-Mar-17', '15-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(298, '', 'PR0379', 'TV1093032ZBZB163171661', 1, '16-Mar-17', '16-Mar-17', '16-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(299, '', 'PR0381', 'RE1113185WPCT21N161509', 1, '21-Nov-16', '22-Nov-16', '22-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(300, '', 'PR0381', 'AC1027010LDAE234161159', 1, '21-Nov-16', '22-Nov-16', '22-Nov-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(301, '', 'PR0381', 'WM1146060WPCT101171546', 1, '20-Apr-17', '20-Apr-17', '20-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(302, '', 'PR0383', 'WM1136060WPTE22N161514', 1, '22-Nov-16', '23-Nov-16', '23-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(303, '', 'PR0386', 'SO1019003SSSS24N161519', 1, '29-Nov-16', '29-Nov-16', '29-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(304, '', 'PR0386', 'DTXX15D4SSSSSXXXXXXX15', 1, '25-Nov-16', '25-Nov-16', '25-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(305, '', 'PR0387', 'RE1028190SSCT303161114', 1, '26-Nov-16', '26-Nov-16', '26-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(306, '', 'PR0387', 'AC1019010LDAE094161106', 1, '25-Apr-17', '26-Apr-17', '26-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(307, '', 'PR0388', 'TV1026032ZBZB274161155', 1, '20-Nov-16', '21-Nov-16', '21-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(308, '', 'PR0388', 'RE1041190SSCT274161175', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(309, '', 'PR0388', 'WM1032065WPCT274161176', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(310, '', 'PR0388', 'MW1001020IFCT241161022', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(311, '', 'PR0389', 'TV1072040ZBZB24N161513', 1, '26-Nov-16', '26-Nov-16', '26-Nov-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(312, '', 'PR0389', 'CT1002XXXXXBH204161144', 1, '26-Nov-16', '26-Nov-16', '26-Nov-16', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 200.00, 0.00, 0.00, 900.00, 200.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(313, '', 'PR0389', 'SO1008003SSSS264161231', 1, '24-Nov-16', '24-Nov-16', '24-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(314, '', 'PR0389', 'SO1009002SSSS264161232', 1, '24-Nov-16', '24-Nov-16', '24-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(315, '', 'PR0390', 'TV1039032ZBZB036161226', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(316, '', 'PR0390', 'SO1002003SSBH241161040', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(317, '', 'PR0390', 'RE1081190WPCT287161329', 1, '20-Nov-16', '20-Nov-16', '20-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(318, '', 'PR0390', 'ACXX30010LDAEXXXXXXX30', 1, '23-May-17', '23-May-17', '23-May-17', '', '', '', 1500.00, 435.48, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(319, '', 'PR0391', 'WM1135060WPCT25N161512', 1, '26-Nov-16', '26-Nov-16', '26-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(320, '', 'PR0392', 'WM1017060VICT023161052', 1, '26-Nov-16', '26-Nov-16', '26-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(321, '', 'PR0392', 'RE1026190SSCT283161096', 1, '26-Nov-16', '26-Nov-16', '26-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(322, '', 'PR0393', 'WM1139060WPTE30N161533', 1, '30-Nov-16', '30-Nov-16', '30-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(323, '', 'PR0393', 'RE1119190WPTE30N161532', 1, '30-Nov-16', '30-Nov-16', '30-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(324, '', 'PR0393', 'WC1037DWCSSSS28N161580', 1, '30-Nov-16', '30-Nov-16', '30-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(325, '', 'PR0393', 'MTXX45QSMSSSSXXXXXXX79', 1, '30-Nov-16', '30-Nov-16', '30-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(326, '', 'PR0394', 'RE1120185WPCT27N161536', 1, '27-Nov-16', '27-Nov-16', '27-Nov-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(327, '', 'PR0394', 'WM1141060WPCT27N161535', 1, '27-Nov-16', '28-Nov-16', '28-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(328, '', 'PR0394', 'AC1061010LDTE093171657', 1, '8-Mar-17', '8-Mar-17', '8-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(329, '', 'PR0396', 'WM1084062WPCT278161397', 1, '29-Nov-16', '29-Nov-16', '29-Nov-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(330, '', 'PR0396', 'TV1047032ZBZB307161296', 1, '28-Dec-16', '28-Dec-16', '28-Dec-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(331, '', 'PR0397', 'CY1016HKBHSBC03D161550', 1, '2-Dec-16', '2-Dec-16', '2-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(332, '', 'PR0401', 'WM1140060WPTE02D161534', 1, '3-Dec-16', '4-Dec-16', '4-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(333, '', 'PR0403', 'RE1122185WPCT02D161540', 1, '4-Dec-16', '4-Dec-16', '4-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(334, '', 'PR0403', 'WM1137060WPCT04D161261', 1, '4-Dec-16', '7-Dec-16', '7-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(335, '', 'PR0403', 'AC1025010LDAE154161125', 1, '5-Dec-16', '7-Dec-16', '7-Dec-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(336, '', 'PR0403', 'WC1023DWCSSSS01N161471', 1, '5-Dec-16', '7-Dec-16', '7-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(337, '', 'PR0403', 'EB1004FUBHSOZ057161547', 1, '10-Jan-17', '10-Jan-17', '10-Jan-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(338, '', 'PR0404', 'RE1008192SSCT092161031', 1, '10-Dec-16', '10-Dec-16', '10-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(339, '', 'PR0404', 'WM1143060WPCT02D161539', 1, '10-Dec-16', '10-Dec-16', '10-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(340, '', 'PR0405', 'WM1116060WPCT13O161445', 1, '7-Dec-16', '7-Dec-16', '7-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(341, '', 'PR0406', 'RE1056190SSCT016161245', 1, '7-Dec-16', '7-Dec-16', '7-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(342, '', 'PR0407', 'WM1089062WPCT138161380', 1, '17-Dec-16', '17-Dec-16', '17-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(343, '', 'PR0407', 'TVXXX9032ZBZBXXXXXXXX9', 1, '22-Dec-16', '22-Dec-16', '22-Dec-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 2400.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(344, '', 'PR0407', 'WC1030DWCSSSS16D161529', 1, '17-Dec-16', '17-Dec-16', '17-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(345, '', 'PR0407', 'MTXX45QSMSSSSXXXXXXX80', 1, '17-Dec-16', '17-Dec-16', '17-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(346, '', 'PR0411', 'RE1118190SSCT19D161526', 1, '19-Dec-16', '19-Dec-16', '19-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(347, '', 'PR0411', 'MWXX19020IFCTXXXXXXX19', 1, '19-Dec-16', '19-Dec-16', '19-Dec-16', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(348, '', 'PR0411', 'WM1138060WPCT19D161527', 1, '19-Dec-16', '19-Dec-16', '19-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(349, '', 'PR0411', 'SO1025003SSSS29N161581', 1, '22-Dec-16', '22-Dec-16', '22-Dec-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(350, '', 'PR0411', 'IC1008ICSSSSS17D161531', 1, '19-Dec-16', '19-Dec-16', '19-Dec-16', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(351, '', 'PR0411', 'MTXX45QSMSSSSXXXXXXX81', 1, '19-Dec-16', '19-Dec-16', '19-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(352, '', 'PR0411', 'CT1012XXXSSSS25N161575', 1, '19-Dec-16', '19-Dec-16', '19-Dec-16', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 0.00, 0.00, 0.00, 900.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(353, '', 'PR0411', 'AC1021010LDAE114161108', 1, '19-Dec-16', '19-Dec-16', '19-Dec-16', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(354, '', 'PR0414', 'WM1095062WPCT069161415', 1, '22-Dec-16', '22-Dec-16', '22-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(355, '', 'PR0416', 'RE1116185WPCT17D161524', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(356, '', 'PR0423', 'WM1147060WPCT30D161587', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(357, '', 'PR0423', 'RE1048190WPTE065161194', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(358, '', 'PR0423', 'TV1078040VUTE30D161586', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(359, '', 'PR0423', 'WC1019DWDSSSS028161340', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(360, '', 'PR0423', 'MTXX45QSMSSSSXXXXXXX82', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(361, '', 'PR0424', 'WM1144060WPCT30D161541', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(362, '', 'PR0424', 'TV1074032ZBZB29D161549', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(363, '', 'PR0424', 'IC1010ICSSSSS21D161570', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(364, '', 'PR0424', 'IC1011ICSSSSS21D161571', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(365, '', 'PR0424', 'IC1012ICSSSSS21D161572', 1, '31-Dec-16', '31-Dec-16', '31-Dec-16', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(366, '', 'PR0426', 'RE1110190WPTE20O161463', 1, '4-Jan-17', '4-Jan-17', '4-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(367, '', 'PR0428', 'SO1023003SSSS061171556', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(368, '', 'PR0428', 'SO1024002SSSS061171557', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(369, '', 'PR0428', 'CT1009XXXSSSS051171551', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(370, '', 'PR0428', 'WC1031DWCSSSS061171558', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(371, '', 'PR0428', 'MTXX45QSMSSSSXXXXXXX83', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(372, '', 'PR0428', 'WC1032DWCSSSS061171559', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 0.00, 0.00, 0.00, 2100.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(373, '', 'PR0428', 'MT1005QSMSSSS239161435', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(374, '', 'PR0428', 'RE1070240SSTE047161273', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(375, '', 'PR0428', 'WM1100062WPCT129161420', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(376, '', 'PR0428', 'MW1017020IFCT131171588', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 200.00, 0.00, 0.00, 1500.00, 200.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(377, '', 'PR0429', 'WM1091062WPCT318161407', 1, '7-Jan-17', '7-Jan-17', '7-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(378, '', 'PR0431', 'WM1031060VICT224161153', 1, '8-Jan-17', '8-Jan-17', '8-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(379, '', 'PR0431', 'RE1131190SSCT080117608', 1, '8-Jan-17', '8-Jan-17', '8-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(380, '', 'PR0432', 'RE1114185WPCT21N161510', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(381, '', 'PR0432', 'AC1037010VIAE025161169', 1, '6-Jan-17', '6-Jan-17', '6-Jan-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(382, '', 'PR0435', 'RE1124190SSCT091171544', 1, '9-Jan-17', '9-Jan-17', '9-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(383, '', 'PR0103', 'CY1019HKBHSBC121171593', 1, '17-Jan-17', '17-Jan-17', '17-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(384, '', 'PR0103', 'ACXX31010LDAEXXXXXXX31', 1, '2-Mar-17', '3-Mar-17', '3-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(385, '', 'PR0437', 'RE1132190SSCT121171609', 1, '12-Jan-17', '12-Jan-17', '12-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(386, '', 'PR0444', 'RE1094185WPCT059161412', 1, '20-Jan-17', '20-Jan-17', '20-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(387, '', 'PR0445', 'WM1154060WPCT211171607', 1, '22-Jan-17', '22-Jan-17', '22-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(388, '', 'PR0447', 'RE1126190SSCT241171591', 1, '24-Jan-17', '24-Jan-17', '24-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(389, '', 'PR0447', 'MW1009020WPTE278161394', 1, '24-Jan-17', '24-Jan-17', '24-Jan-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(390, '', 'PR0447', 'WM1041060WPCT195161239', 1, '25-Mar-17', '25-Mar-17', '25-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(391, '', 'PR0448', 'RE1089185WPCT108161372', 1, '24-Jan-17', '24-Jan-17', '24-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(392, '', 'PR0448', 'WM1088062WPCT108161373', 1, '24-Jan-17', '24-Jan-17', '24-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0);
INSERT INTO `mapping_table` (`id`, `enquiry_id`, `customer_id`, `product_id`, `delivery_status`, `delivery_date`, `installation_date`, `rent_on_date`, `return_date`, `delivered_by`, `delivered_at`, `rent_per_month`, `rent_cost`, `received_total_rent_cost`, `pending_rent_amount`, `actual_security_deposit_amount`, `actual_processing_fee`, `actual_installation_fee`, `actual_other_fee`, `reiceved_total_security_deposit_amount`, `reiceved_total_processing_fee`, `reiceved_total_installation_fee`, `reiceved_total_other_fee`, `enq_product_pending_amount`, `is_closure`, `closure_date`, `service_status`, `invoice_status`, `mapped_status`, `refund_status`, `refund_amount`, `pending_minus`, `refund_remark`, `removed_status`, `closure_remark`, `month`, `year`, `c_month`, `c_year`, `r_month`, `r_year`) VALUES
(393, '', 'PR0449', 'WM1007060WPCT091161016', 1, '24-Jan-17', '24-Jan-17', '24-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(394, '', 'PR0449', 'RE1121185WPCT29N161537', 1, '14-Mar-17', '14-Mar-17', '14-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(395, '', 'PR0450', 'CY1004HSKHSCY198161383', 1, '24-Jan-17', '24-Jan-17', '24-Jan-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 1500.00, 0.00, 1500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(396, '', 'PR0452', 'RE1058190SSCT046161250', 1, '26-Jan-17', '26-Jan-17', '26-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(397, '', 'PR0233', 'TV1012032ZBZB143161072', 1, '1-Feb-17', '1-Feb-17', '1-Feb-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(398, '', 'PR0233', 'RE1071190WPTE317161311', 1, '1-Feb-17', '1-Feb-17', '1-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(399, '', 'PR0233', 'WM1092062WPCT019161408', 1, '1-Feb-17', '1-Feb-17', '1-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(400, '', 'PR0453', 'WC1005DWCSSSS135161229', 1, '28-Jan-17', '28-Jan-17', '28-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(401, '', 'PR0455', 'WM1008060WPCT101161017', 1, '28-Jan-17', '28-Jan-17', '28-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(402, '', 'PR0456', 'WC1020DWDSSSS108161354', 1, '28-Jan-17', '28-Jan-17', '28-Jan-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(403, '', 'PR0456', 'MTXX45QSMSSSSXXXXXXX84', 1, '28-Jan-17', '28-Jan-17', '28-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(404, '', 'PR0456', 'AC1041010VIAE065161173', 1, '28-Jan-17', '28-Jan-17', '28-Jan-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(405, '', 'PR0456', 'RE1128190SSCT281171595', 1, '28-Jan-17', '28-Jan-17', '28-Jan-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(406, '', 'PR0463', 'TV1070032ZBZB13O161500', 1, '1-Feb-17', '1-Feb-17', '1-Feb-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(407, '', 'PR0463', 'RE1042190SSCT224161177', 1, '1-Feb-17', '1-Feb-17', '1-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(408, '', 'PR0463', 'TU1009WTVSSSS012171604', 1, '3-Feb-17', '3-Feb-17', '3-Feb-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(409, '', 'PR0464', 'WM1155060WPTE052171612', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(410, '', 'PR0464', 'RE1133190WPTE052171613', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(411, '', 'PR0467', 'TV1080040VUTE052171614', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(412, '', 'PR0470', 'WM1153060WPCT032171602', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(413, '', 'PR0470', 'TV1079040VUTE032171603', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(414, '', 'PR0470', 'RE1130190SSCT032171600', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(415, '', 'PR0470', 'WC1016DWDSSSS315161257', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(416, '', 'PR0470', 'MT1011QSMSSSS032171606', 1, '5-Feb-17', '5-Feb-17', '5-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 772.00, 0.00, 0.00, 0.00, 772.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(417, '', 'PR0470', 'SO1015003SSSS298161401', 1, '9-Feb-17', '9-Feb-17', '9-Feb-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(418, '', 'PR0471', 'ICXX26ICDXXBHXXXXXXX26', 1, '13-Feb-17', '13-Feb-17', '13-Feb-17', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(419, '', 'PR0472', 'AC1052010VIAE275161235', 1, '9-Feb-17', '10-Feb-17', '10-Feb-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(420, '', 'PR0473', 'TV1049032ZBZB307161298', 1, '11-Feb-17', '11-Feb-17', '11-Feb-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(421, '', 'PR0475', 'RE1134190SSCT092171616', 1, '9-Feb-17', '9-Feb-17', '9-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(422, '', 'PR0476', 'RE1135190SSCT092171617', 1, '9-Feb-17', '9-Feb-17', '9-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(423, '', 'PR0476', 'TV1068040ZBZB07N161498', 1, '21-Feb-17', '21-Feb-17', '21-Feb-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(424, '', 'PR0476', 'SO1028003IDIF212171627', 1, '21-Feb-17', '21-Feb-17', '21-Feb-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(425, '', 'PR0477', 'TVXX27040VUTEXXXXXXX27', 1, '5-Mar-17', '5-Mar-17', '5-Mar-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(426, '', 'PR0478', 'WM1048060WPCT096161259', 1, '11-Feb-17', '11-Feb-17', '11-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(427, '', 'PR0479', 'WM1132060WPTE11N161493', 1, '11-Feb-17', '11-Feb-17', '11-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(428, '', 'PR0481', 'WM1156060WPCT142171624', 1, '15-Feb-17', '15-Feb-17', '15-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(429, '', 'PR0481', 'RE1139190SSCT142171622', 1, '15-Feb-17', '15-Feb-17', '15-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(430, '', 'PR0481', 'TV1081040VUTE082171615', 1, '15-Feb-17', '15-Feb-17', '15-Feb-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 3600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(431, '', 'PR0482', 'WM1124060WPTE169161458', 1, '15-Feb-17', '15-Feb-17', '15-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(432, '', 'PR0482', 'RE1077190WPCT028161322', 1, '15-Feb-17', '15-Feb-17', '15-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(433, '', 'PR0483', 'RE1136190SSCT122171619', 1, '12-Feb-17', '12-Feb-17', '12-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(434, '', 'PR0483', 'WM1047060WPCT096161254', 1, '25-Feb-17', '25-Feb-17', '25-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(435, '', 'PR0485', 'WM1157060WPCT142171625', 1, '15-Feb-17', '15-Feb-17', '15-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(436, '', 'PR0487', 'EB1002FUBATAFXXXXXXX80', 1, '18-Feb-17', '18-Feb-17', '18-Feb-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(437, '', 'PR0489', 'WM1123060WPCT10N161456', 1, '19-Feb-17', '19-Feb-17', '19-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(438, '', 'PR0491', 'RE1016190SSCT083161080', 1, '18-Feb-17', '18-Feb-17', '18-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(439, '', 'PR0491', 'TV1048032ZBZB307161297', 1, '18-Feb-17', '18-Feb-17', '18-Feb-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(440, '', 'PR0495', 'TV1084032VUCT212171629', 1, '21-Feb-17', '21-Feb-17', '21-Feb-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(441, '', 'PR0495', 'WM1003060WPCT29D151012', 1, '21-Feb-17', '21-Feb-17', '21-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(442, '', 'PR0495', 'WC1010DWCSSSS208161357', 1, '21-Feb-17', '21-Feb-17', '21-Feb-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(443, '', 'PR0496', 'CY1014HKBHSBC18N161505', 1, '22-Feb-17', '22-Feb-17', '22-Feb-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(444, '', 'PR0497', 'RE1125240WPCT101171545', 1, '19-Feb-17', '19-Feb-17', '19-Feb-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(445, '', 'PR0100', 'WM1078062WPCT267161331', 1, '26-Feb-17', '26-Feb-17', '26-Feb-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(446, '', 'PR0498', 'WM1035060VICT075161186', 1, '28-Feb-17', '28-Feb-17', '28-Feb-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(447, '', 'PR0500', 'WM1005060WPCT081161014', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(448, '', 'PR0501', 'AC1028010LDAE234161160', 1, '1-Mar-17', '2-Mar-17', '2-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(449, '', 'PR0502', 'WC1039SWCSSSS013171633', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(450, '', 'PR0502', 'WC1040SWCSSSS013171634', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(451, '', 'PR0502', 'WC1034SWCSSSS101171561', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(452, '', 'PR0502', 'MT1013SSMSSSS013171635', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(453, '', 'PR0502', 'MT1014SSMSSSS013171636', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(454, '', 'PR0502', 'MT1015SSMSSSS013171637', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(455, '', 'PR0502', 'AC1039010VIAE045161171', 1, '1-Mar-17', '3-Mar-17', '3-Mar-17', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(456, '', 'PR0502', 'RE1019190SSCT123161087', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(457, '', 'PR0502', 'SO1026003SSSS08D161584', 1, '1-Mar-17', '1-Mar-17', '1-Mar-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(458, '', 'PR0503', 'WC1006DWDSSSS135161224', 1, '4-Mar-17', '4-Mar-17', '4-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(459, '', 'PR0503', 'MTXX45QSMSSSSXXXXXXX85', 1, '4-Mar-17', '4-Mar-17', '4-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(460, '', 'PR0504', 'AC1040010VIAE065161172', 1, '4-Mar-17', '4-Mar-17', '4-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(461, '', 'PR0505', 'RE1129190SSCT281171596', 1, '4-Mar-17', '4-Mar-17', '4-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(462, '', 'PR0505', 'TV1090032ZBZB093171652', 1, '11-Mar-17', '11-Mar-17', '11-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(463, '', 'PR0506', 'WM1110060WPCT07O161363', 1, '4-Mar-17', '4-Mar-17', '4-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(464, '', 'PR0506', 'TV1086032VUTE063171640', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(465, '', 'PR0507', 'WM1098062WPCT119161418', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(466, '', 'PR0508', 'WM1159060WPCT063171643', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(467, '', 'PR0508', 'RE1029190SSCT313161115', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(468, '', 'PR0509', 'WM1097062WPCT099161417', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(469, '', 'PR0510', 'WC1041SWCTETE063171638', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(470, '', 'PR0510', 'WC1042SWCTETE063171639', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(471, '', 'PR0511', 'TV1087032VUTE063171641', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(472, '', 'PR0511', 'TV1088032VUTE063171642', 1, '6-Mar-17', '6-Mar-17', '6-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(473, '', 'PR0513', 'RE1143190SSTE083171646', 1, '8-Mar-17', '8-Mar-17', '8-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(474, '', 'PR0513', 'RE1106240WPCT07N161452', 1, '8-Mar-17', '8-Mar-17', '8-Mar-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 1500.00, 0.00, 3000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(475, '', 'PR0514', 'IC1005ICSSSSS07N161488', 1, '9-Mar-17', '9-Mar-17', '9-Mar-17', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(476, '', 'PR0514', 'IC1006ICSSSSS07N161489', 1, '9-Mar-17', '9-Mar-17', '9-Mar-17', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(477, '', 'PR0514', 'MT1016QSMKLTE093171649', 1, '9-Mar-17', '9-Mar-17', '9-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(478, '', 'PR0514', 'RE1144190SSTE093171647', 1, '9-Mar-17', '9-Mar-17', '9-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(479, '', 'PR0514', 'TV1089032VUTE093171648', 1, '9-Mar-17', '9-Mar-17', '9-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(480, '', 'PR0515', 'WM1160060WPCT093171644', 1, '9-Mar-17', '10-Mar-17', '10-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(481, '', 'PR0516', 'AC1059010LDTE083171650', 1, '10-Mar-17', '11-Mar-17', '11-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(482, '', 'PR0062', 'AC1060010LDTE083171651', 1, '10-Mar-17', '12-Mar-17', '12-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(483, '', 'PR0517', 'CY1012HKBHSBC278161477', 1, '13-Mar-17', '13-Mar-17', '13-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(484, '', 'PR0517', 'CY1005HSKHSBC298161421', 1, '13-Mar-17', '13-Mar-17', '13-Mar-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(485, '', 'PR0518', 'AC1064010LDTE173171662', 1, '18-Mar-17', '18-Mar-17', '18-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(486, '', 'PR0519', 'AC1063010LDTE153171659', 1, '14-Mar-17', '15-Mar-17', '15-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(487, '', 'PR0520', 'WM1142060WPCT29N161538', 1, '14-Mar-17', '14-Mar-17', '14-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(488, '', 'PR0522', 'TV1092032ZBZB163171660', 1, '16-Mar-17', '16-Mar-17', '16-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(489, '', 'PR0523', 'WM1149060WPCT281171597', 1, '17-Mar-17', '17-Mar-17', '17-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(490, '', 'PR0524', 'WC1036DWCSSSS29N161577', 1, '18-Mar-17', '18-Mar-17', '18-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(491, '', 'PR0526', 'AC1036010VIAE025161168', 1, '17-Mar-17', '17-Mar-17', '17-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(492, '', 'PR0527', 'AC1057015LDAE08N161479', 1, '20-Mar-17', '20-Mar-17', '20-Mar-17', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(493, '', 'PR0528', 'AC1065010LDTE193171663', 1, '19-Mar-17', '21-Mar-17', '21-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(494, '', 'PR0529', 'RE1034190SSCT094161056', 1, '19-Mar-17', '19-Mar-17', '19-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(495, '', 'PR0530', 'AC1066010LDTE213171664', 1, '21-Mar-17', '21-Mar-17', '21-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(496, '', 'PR0531', 'RE1123190SSCT091171543', 1, '23-Mar-17', '23-Mar-17', '23-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(497, '', 'PR0532', 'RE1032190SSCT064161120', 1, '23-Mar-17', '23-Mar-17', '23-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(498, '', 'PR0533', 'WM1161062WPTE212171665', 1, '21-Mar-17', '21-Mar-17', '21-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 1400.00, 500.00, 1500.00, 0.00, 1400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(499, '', 'PR0534', 'RE1051190SSCT165161217', 1, '23-Mar-17', '23-Mar-17', '23-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(500, '', 'PR0534', 'WM1044060VICT016161246', 1, '23-Mar-17', '23-Mar-17', '23-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(501, '', 'PR0535', 'WM1151060WPCT032171599', 1, '28-Mar-17', '28-Mar-17', '28-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(502, '', 'PR0537', 'RE1010190SSCT162161036', 1, '26-Mar-17', '26-Mar-17', '26-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(503, '', 'PR0537', 'WM1055060WPTE276161270', 1, '25-Mar-17', '25-Mar-17', '25-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(504, '', 'PR0537', 'CT1007XXXSSSS01N161473', 1, '25-Mar-17', '25-Mar-17', '25-Mar-17', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(505, '', 'PR0537', 'WCXX35DWCSSSSXXXXXXX35', 1, '11-May-17', '11-May-17', '11-May-17', '', '', '', 700.00, 474.19, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(506, '', 'PR0537', 'MTXX45QSMSSSSXXXXXXX86', 1, '11-May-17', '11-May-17', '11-May-17', '', '', '', 600.00, 406.45, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(507, '', 'PR0538', 'AC1067010LDTE253171666', 1, '26-Mar-17', '26-Mar-17', '26-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(508, '', 'PR0539', 'TV1010032ZBZB292161070', 1, '25-Mar-17', '25-Mar-17', '25-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(509, '', 'PR0540', 'TV1028032ZBZB274161157', 1, '28-Mar-17', '28-Mar-17', '28-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 1900.00, 500.00, 0.00, 0.00, 1900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(510, '', 'PR0540', 'WM1026060VICT313161116', 1, '28-Mar-17', '28-Mar-17', '28-Mar-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 1600.00, 500.00, 0.00, 0.00, 1600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(511, '', 'PR0541', 'New Optimal fitness solutions', 1, '31-Mar-17', '31-Mar-17', '31-Mar-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(512, '', 'PR0542', 'AC1068010LDCT273171667', 1, '27-Mar-17', '29-Mar-17', '29-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(513, '', 'PR0543', 'RE1044190SSCT075161189', 1, '29-Mar-17', '29-Mar-17', '29-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(514, '', 'PR0544', 'ACXX32010LDAEXXXXXXX32', 1, '31-Mar-17', '31-Mar-17', '31-Mar-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(515, '', 'PR0545', 'TV1069032ZBZB219161499', 1, '30-Mar-17', '30-Mar-17', '30-Mar-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(516, '', 'PR0546', 'TV1073032ZBZB29N161515', 1, '6-Apr-17', '6-Apr-17', '6-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(517, '', 'PR0547', 'CY1014HKBHSBC18N161505', 1, '4-Apr-17', '4-Apr-17', '4-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(518, '', 'PR0548', 'AC1069010VSCT044171671', 1, '4-Apr-17', '5-Apr-17', '5-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(519, '', 'PR0549', 'AC1070010VSCT044171672', 1, '4-Apr-17', '4-Apr-17', '4-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(520, '', 'PR0550', 'WM1060060WPCT097161282', 1, '9-Jul-16', '10-Jul-16', '1-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 0.00, 0.00, 0.00, 2100.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(521, '', 'PR0551', 'AC1071010VSCT064171673', 1, '8-Apr-17', '8-Apr-17', '8-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(522, '', 'PR0552', 'AC1072010VSCT074171674', 1, '7-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(523, '', 'PR0553', 'SO1012003SSSS018161339', 1, '5-Apr-17', '5-Apr-17', '5-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(524, '', 'PR0553', 'RE1002192SSCT101161019', 1, '5-Apr-17', '5-Apr-17', '5-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(525, '', 'PR0553', 'WCXX42DWCSSSSXXXXXXX42', 1, '5-Apr-17', '5-Apr-17', '5-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(526, '', 'PR0553', 'MTXX45QSMSSSSXXXXXXX87', 1, '5-Apr-17', '5-Apr-17', '5-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(527, '', 'PR0554', 'TV1011032ZBZB292161071', 1, '6-Apr-17', '6-Apr-17', '6-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(528, '', 'PR0554', 'RE1068190WPCT197161294', 1, '6-Apr-17', '6-Apr-17', '6-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(529, '', 'PR0555', 'AC1008010LDAE213161082', 1, '6-Apr-17', '6-Apr-17', '6-Apr-17', '', '', '', 1500.00, 800.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(530, '', 'PR0556', 'AC1074010VSCT074171676', 1, '7-Apr-17', '7-Apr-17', '7-Apr-17', '', '', '', 2500.00, 2500.00, 0.00, 0.00, 7500.00, 500.00, 1500.00, 0.00, 7500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(531, '', 'PR0556', 'WC1002WDCSSSS013161104', 1, '7-Apr-17', '7-Apr-17', '7-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(532, '', 'PR0556', 'WC1002WDCSSSS013161105', 1, '8-Apr-17', '8-Apr-17', '8-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(533, '', 'PR0556', 'MTXX45QSMSSSSXXXXXX104', 1, '7-Apr-17', '7-Apr-17', '7-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(534, '', 'PR0556', 'MTXX45QSMSSSSXXXXXX105', 1, '7-Apr-17', '7-Apr-17', '7-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(535, '', 'PR0556', 'RE1096185WPCT069161414', 1, '7-Apr-17', '7-Apr-17', '7-Apr-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(536, '', 'PR0557', 'RE1049190SSCT135161214', 1, '17-Apr-17', '17-Apr-17', '17-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(537, '', 'PR0557', 'WM1132060WPTE11N161493', 1, '17-Apr-17', '17-Apr-17', '17-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(538, '', 'PR0557', 'WCXX44DWCSSSSXXXXXXX43', 1, '17-Apr-17', '17-Apr-17', '17-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(539, '', 'PR0558', 'WM1145060WPCT091171542', 1, '10-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(540, '', 'PR0559', 'WM1150060WPCT271171598', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(541, '', 'PR0559', 'RE1117185WPCT17D161525', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(542, '', 'PR0560', 'TV1058032ZBZB108161349', 1, '8-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(543, '', 'PR0561', 'AC1075010VSCT114171677', 1, '11-Apr-17', '12-Apr-17', '12-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(544, '', 'PR0562', 'AC1073010VSCT074171675', 1, '7-Apr-17', '11-Apr-17', '11-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(545, '', 'PR0563', 'TV1082032VUCT092171618', 1, '13-Apr-17', '13-Apr-17', '13-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(546, '', 'PR0563', 'SO1027002SSSS08D161585', 1, '9-Apr-17', '9-Apr-17', '9-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(547, '', 'PR0563', 'RE1023190SSCT233161092', 1, '9-Apr-17', '9-Apr-17', '9-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(548, '', 'PR0563', 'TU1006WTVSSSS101171562', 1, '9-Apr-17', '9-Apr-17', '9-Apr-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(549, '', 'PR0563', 'DT1011D4SSSSS09D161582', 1, '9-Apr-17', '9-Apr-17', '9-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(550, '', 'PR0563', 'WC1001WDCXXPH052161039', 1, '9-Apr-17', '9-Apr-17', '9-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(551, '', 'PR0563', 'MTXX45QSMSSSSXXXXXXX88', 1, '9-Apr-17', '9-Apr-17', '9-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(552, '', 'PR0564', 'TV1022032ZBZB263161127', 1, '10-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(553, '', 'PR0565', 'TV1056032ZBZB068161305', 1, '10-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(554, '', 'PR0565', 'TV1057032ZBZB108161348', 1, '13-Apr-17', '13-Apr-17', '13-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(555, '', 'PR0566', 'TV1035032ZBZB205161211', 1, '10-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(556, '', 'PR0567', 'ACXX40015LDAEXXXXXXX40', 1, '9-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(557, '', 'PR0568', 'IC1013ICSSSSS032171605', 1, '10-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 400.00, 400.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 1200.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(558, '', 'PR0568', 'MTXX45QSMSSSSXXXXXXX89', 1, '10-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(559, '', 'PR0568', 'WM1152060WPCT032171601', 1, '10-Apr-17', '10-Apr-17', '10-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(560, '', 'PR0569', 'WC1002WDCSSSS013161073', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(561, '', 'PR0569', 'WC1002WDCSSSS013161074', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 1500.00, 0.00, 2700.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(562, '', 'PR0569', 'MTXX45QSMSSSSXXXXXX102', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(563, '', 'PR0569', 'MTXX45QSMSSSSXXXXXX103', 1, '14-Apr-17', '14-Apr-17', '14-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(564, '', 'PR0569', 'WC1002WDCSSSS013161106', 1, '14-Apr-17', '14-Apr-17', '14-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(565, '', 'PR0569', 'WC1002WDCSSSS013161107', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(566, '', 'PR0569', 'WC1002WDCSSSS013161108', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(567, '', 'PR0569', 'WC1002WDCSSSS013161109', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(568, '', 'PR0569', 'MTXX45QSMSSSSXXXXXX106', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(569, '', 'PR0569', 'MTXX45QSMSSSSXXXXXX107', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(570, '', 'PR0569', 'MTXX45QSMSSSSXXXXXX108', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(571, '', 'PR0569', 'MTXX45QSMSSSSXXXXXX109', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(572, '', 'PR0569', 'TV1054032ZBZB068161303', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(573, '', 'PR0569', 'TV1046032ZBZB187161292', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(574, '', 'PR0569', 'TV1052032ZBZB307161301', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(575, '', 'PR0569', 'TV1050032ZBZB307161299', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 1000.00, 1000.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 3000.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(576, '', 'PR0569', 'ACXX33010LDAEXXXXXXX33', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(577, '', 'PR0569', 'ACXX34010LDAEXXXXXXX34', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(578, '', 'PR0569', 'AC1044010VIAE145161201', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 2000.00, 2000.00, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(579, '', 'PR0569', 'AC1010015LDAE243161098', 1, '15-Apr-17', '15-Apr-17', '15-Apr-17', '', '', '', 2500.00, 2500.00, 0.00, 0.00, 7500.00, 500.00, 1500.00, 0.00, 7500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(580, '', 'PR0570', 'TV1051032ZBZB307161300', 1, '13-Apr-17', '13-Apr-17', '13-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(581, '', 'PR0571', 'CY1018HKBHSBC121171592', 1, '11-Apr-17', '11-Apr-17', '11-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(582, '', 'PR0572', 'ACXX54010LDAEXXXXXXX54', 1, '13-Apr-17', '13-Apr-17', '13-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(583, '', 'PR0573', 'RE1142190SSTE083171645', 1, '13-Apr-17', '13-Apr-17', '13-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(584, '', 'PR0574', 'AC1076010VSCT114171678', 1, '11-Apr-17', '12-Apr-17', '12-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(585, '', 'PR0575', 'WCXX58DWDXXYHXXXXXXX73', 1, '21-Apr-17', '21-Apr-17', '21-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(586, '', 'PR0575', 'MTXX45QSMSSSSXXXXXXX90', 1, '21-Apr-17', '21-Apr-17', '21-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(587, '', 'PR0575', 'RE1141190SSTE212171631', 1, '11-May-17', '11-May-17', '11-May-17', '', '', '', 600.00, 406.45, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0);
INSERT INTO `mapping_table` (`id`, `enquiry_id`, `customer_id`, `product_id`, `delivery_status`, `delivery_date`, `installation_date`, `rent_on_date`, `return_date`, `delivered_by`, `delivered_at`, `rent_per_month`, `rent_cost`, `received_total_rent_cost`, `pending_rent_amount`, `actual_security_deposit_amount`, `actual_processing_fee`, `actual_installation_fee`, `actual_other_fee`, `reiceved_total_security_deposit_amount`, `reiceved_total_processing_fee`, `reiceved_total_installation_fee`, `reiceved_total_other_fee`, `enq_product_pending_amount`, `is_closure`, `closure_date`, `service_status`, `invoice_status`, `mapped_status`, `refund_status`, `refund_amount`, `pending_minus`, `refund_remark`, `removed_status`, `closure_remark`, `month`, `year`, `c_month`, `c_year`, `r_month`, `r_year`) VALUES
(588, '', 'PR0575', 'WM1158060WPTE212171632', 1, '11-May-17', '11-May-17', '11-May-17', '', '', '', 700.00, 474.19, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(589, '', 'PR0576', 'WCXX58DWDXXYHXXXXXXX77', 1, '17-Apr-17', '17-Apr-17', '17-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(590, '', 'PR0576', 'WC1002WDCSSSS013161102', 1, '19-May-17', '19-May-17', '19-May-17', '', '', '', 500.00, 209.68, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(591, '', 'PR0577', 'RE1147190SSCT184171680', 1, '18-Apr-17', '18-Apr-17', '18-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(592, '', 'PR0577', 'WMXXX2065WPBHXXXXXXX71', 1, '18-Apr-17', '18-Apr-17', '18-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(593, '', 'PR0579', 'AC1077010VSCT194171682', 1, '19-Apr-17', '19-Apr-17', '19-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(594, '', 'PR0579', 'AC1078010VSCT194171683', 1, '19-Apr-17', '19-Apr-17', '19-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(595, '', 'PR0580', 'AC1079010VSCT204171685', 1, '20-Apr-17', '21-Apr-17', '21-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(596, '', 'PR0581', 'AC1080010VSCT204171686', 1, '20-Apr-17', '20-Apr-17', '20-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(597, '', 'PR0582', 'AC1081010VSCT204171687', 1, '20-Apr-17', '21-Apr-17', '21-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(598, '', 'PR0583', 'AC1043010VIAE145161200', 1, '18-Apr-17', '18-Apr-17', '18-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(599, '', 'PR0584', 'RE1146190SSCT174171679', 1, '22-Apr-17', '22-Apr-17', '22-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(600, '', 'PR0585', 'TVXX11032ZBZBXXXXXXX11', 1, '25-Apr-17', '25-Apr-17', '25-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(601, '', 'PR0585', 'TVXX17032ZBZBXXXXXXX17', 1, '25-Apr-17', '25-Apr-17', '25-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(602, '', 'PR0586', 'EB1002FUBATAFXXXXXXX81', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 900.00, 900.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 2700.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(603, '', 'PR0588', 'WCXX58DWCXXYHXXXXXXX73', 1, '24-Apr-17', '24-Apr-17', '24-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(604, '', 'PR0588', 'WCXX42DWCSSSSXXXXXXX70', 1, '24-Apr-17', '24-Apr-17', '24-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(605, '', 'PR0588', 'MTXX45QSMSSSSXXXXXXX91', 1, '24-Apr-17', '24-Apr-17', '24-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(606, '', 'PR0588', 'MTXX45QSMSSSSXXXXXXX92', 1, '24-Apr-17', '24-Apr-17', '24-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(607, '', 'PR0588', 'REXX66190SSCTXXXXXXX66', 1, '24-Apr-17', '24-Apr-17', '24-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(608, '', 'PR0588', 'TVXX17032ZBZBXXXXXXX18', 1, '24-Apr-17', '24-Apr-17', '24-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(609, '', 'PR0588', 'SOXXX5003SSSSXXXXXXXX6', 1, '24-Apr-17', '24-Apr-17', '24-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(610, '', 'PR0589', 'REXX66190SSCTXXXXXXX67', 1, '9-May-17', '9-May-17', '9-May-17', '', '', '', 600.00, 445.16, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(611, '', 'PR0590', 'REXX66190SSCTXXXXXXX68', 1, '26-Apr-17', '26-Apr-17', '26-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(612, '', 'PR0591', 'RE1150190SSCT254171689', 1, '26-Apr-17', '26-Apr-17', '26-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(613, '', 'PR0591', 'WM1049060WPCT254171690', 1, '26-Apr-17', '26-Apr-17', '26-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(614, '', 'PR0591', 'AC1082010VSCT204171688', 1, '26-Apr-17', '26-Apr-17', '26-Apr-17', '', '', '', 1500.00, 1500.00, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(615, '', 'PR0591', 'TVXX67040VUTEXXXXXXX67', 1, '26-Apr-17', '26-Apr-17', '26-Apr-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 900.00, 0.00, 0.00, 3600.00, 900.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(616, '', 'PR0591', 'DTXX15D4SSSSSXXXXXXX16', 1, '26-Apr-17', '26-Apr-17', '26-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 800.00, 0.00, 0.00, 2400.00, 800.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(617, '', 'PR0592', 'ACXX55010LDAEXXXXXXX55', 1, '2-May-17', '6-May-17', '6-May-17', '', '', '', 1500.00, 1258.06, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(618, '', 'PR0593', 'REXX66190SSCTXXXXXXX69', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 1800.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(619, '', 'PR0593', 'WC1002WDCSSSS013161064', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(620, '', 'PR0593', 'MTXX45QSMSSSSXXXXXXX93', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(621, '', 'PR0593', 'WC1002WDCSSSS013161065', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(622, '', 'PR0593', 'MTXX45QSMSSSSXXXXXXX94', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(623, '', 'PR0593', 'WC1002WDCSSSS013161066', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 700.00, 700.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(624, '', 'PR0593', 'MTXX45QSMSSSSXXXXXXX95', 1, '1-May-17', '1-May-17', '1-May-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 1800.00, 0.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(625, '', 'PR0593', 'TVXX68040VUTEXXXXXXX68', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 1200.00, 1200.00, 0.00, 0.00, 3600.00, 400.00, 0.00, 0.00, 3600.00, 400.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(626, '', 'PR0594', 'CTXX12XXXSSSS25N161575', 1, '17-May-17', '17-May-17', '17-May-17', '', '', '', 900.00, 435.48, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(627, '', 'PR0594', 'SOXXX5003SSSSXXXXXXXX7', 1, '17-May-17', '17-May-17', '17-May-17', '', '', '', 2400.00, 1161.29, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(628, '', 'PR0594', 'WMXXX2065WPBHXXXXXXX72', 1, '17-May-17', '17-May-17', '17-May-17', '', '', '', 2100.00, 1016.13, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(629, '', 'PR0595', 'ACXX56010LDAEXXXXXXX56', 1, '2-May-17', '4-May-17', '4-May-17', '', '', '', 1500.00, 1354.84, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(630, '', 'PR0596', 'REXX66190SSCTXXXXXXX70', 1, '2-May-17', '2-May-17', '2-May-17', '', '', '', 600.00, 580.65, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(631, '', 'PR0596', 'WMXXX2065WPBHXXXXXXX73', 1, '2-May-17', '2-May-17', '2-May-17', '', '', '', 700.00, 677.42, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(632, '', 'PR0110', 'AC1026015VICT224161154', 1, '6-May-17', '6-May-17', '6-May-17', '', '', '', 1500.00, 1258.06, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(633, '', 'PR0110', 'AC1054010VIAE315161237', 1, '6-May-17', '6-May-17', '6-May-17', '', '', '', 1500.00, 1258.06, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(634, '', 'PR0598', 'TVXX17032ZBZBXXXXXXX26', 1, '6-May-17', '6-May-17', '6-May-17', '', '', '', 800.00, 670.97, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(635, '', 'PR0599', 'WMXXX2065WPBHXXXXXXX74', 1, '5-May-17', '5-May-17', '5-May-17', '', '', '', 700.00, 609.68, 0.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 2100.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(636, '', 'PR0601', 'DTXX15D4SSSSSXXXXXXX17', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 800.00, 722.58, 0.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 2400.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(637, '', 'PR0601', 'REXX66190SSCTXXXXXXX71', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 600.00, 541.94, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(638, '', 'PR0601', 'TVXX17032ZBZBXXXXXXX19', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 800.00, 722.58, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(639, '', 'PR0601', 'WC1002WDCSSSS013161067', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 700.00, 632.26, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(640, '', 'PR0601', 'MTXX45QSMSSSSXXXXXXX96', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 600.00, 541.94, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(641, '', 'PR0601', 'WC1002WDCSSSS013161068', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 700.00, 632.26, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(642, '', 'PR0601', 'MTXX45QSMSSSSXXXXXXX97', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 600.00, 541.94, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(643, '', 'PR0601', 'WMXXX2065WPBHXXXXXXX75', 1, '4-May-17', '4-May-17', '4-May-17', '', '', '', 700.00, 632.26, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(644, '', 'PR0602', 'REXX66190SSCTXXXXXXX72', 1, '6-May-17', '6-May-17', '6-May-17', '', '', '', 600.00, 503.23, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(645, '', 'PR0602', 'TVXX17032ZBZBXXXXXXX20', 1, '6-May-17', '11-May-17', '11-May-17', '', '', '', 800.00, 541.94, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(646, '', 'PR0602', 'WMXXX2065WPBHXXXXXXX76', 1, '6-May-17', '6-May-17', '6-May-17', '', '', '', 700.00, 587.10, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(647, '', 'PR0602', 'SOXXX5003SSSSXXXXXXXX8', 1, '6-May-17', '6-May-17', '6-May-17', '', '', '', 800.00, 670.97, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(648, '', 'PR0602', 'SOXXX5003SSSSXXXXXXXX5', 1, '6-May-17', '6-May-17', '6-May-17', '', '', '', 600.00, 503.23, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(649, '', 'PR0602', 'AC1038010VIAE045161170', 1, '6-May-17', '8-May-17', '8-May-17', '', '', '', 1500.00, 1161.29, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(650, '', 'PR0603', 'AC1018015LDAE313161110', 1, '9-May-17', '9-May-17', '9-May-17', '', '', '', 2000.00, 1483.87, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(651, '', 'PR0604', 'AC1083010VSCT115171691', 1, '10-May-17', '10-May-17', '10-May-17', '', '', '', 1500.00, 1064.52, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(652, '', 'PR0605', 'REXX66190SSCTXXXXXXX73', 1, '9-May-17', '9-May-17', '9-May-17', '', '', '', 600.00, 445.16, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(653, '', 'PR0606', 'REXX66190SSCTXXXXXXX74', 1, '12-May-17', '12-May-17', '12-May-17', '', '', '', 600.00, 387.10, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(654, '', 'PR0607', 'REXX66190SSCTXXXXXXX75', 1, '12-May-17', '12-May-17', '12-May-17', '', '', '', 600.00, 387.10, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(655, '', 'PR0608', 'CYXX23HSKHSBCXXXXXXX25', 1, '14-May-17', '14-May-17', '14-May-17', '', '', '', 600.00, 348.39, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(656, '', 'PR0609', 'TVXX17032ZBZBXXXXXXX21', 1, '16-May-17', '16-May-17', '16-May-17', '', '', '', 800.00, 412.90, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(657, '', 'PR0610', 'TVXX17032ZBZBXXXXXXX22', 1, '16-May-17', '16-May-17', '16-May-17', '', '', '', 800.00, 412.90, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(658, '', 'PR0610', 'REXX66190SSCTXXXXXXX76', 1, '16-May-17', '16-May-17', '16-May-17', '', '', '', 600.00, 309.68, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(659, '', 'PR0610', 'WMXXX2065WPBHXXXXXXX77', 1, '19-May-17', '19-May-17', '19-May-17', '', '', '', 700.00, 293.55, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(660, '', 'PR0610', 'TU1001WTVYHYH25D151205', 1, '16-May-17', '16-May-17', '16-May-17', '', '', '', 500.00, 258.06, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(661, '', 'PR0611', 'ACXX57010LDAEXXXXXXX57', 1, '25-May-17', '26-May-17', '26-May-17', '', '', '', 1500.00, 290.32, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(662, '', 'PR0612', 'TVXX17032ZBZBXXXXXXX23', 1, '16-May-17', '16-May-17', '16-May-17', '', '', '', 800.00, 412.90, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(663, '', 'PR0613', 'WC1002WDCSSSS013161069', 1, '22-May-17', '22-May-17', '22-May-17', '', '', '', 700.00, 225.81, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(664, '', 'PR0613', 'MTXX45QSMSSSSXXXXXXX98', 1, '22-May-17', '22-May-17', '22-May-17', '', '', '', 600.00, 193.55, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(665, '', 'PR0613', 'WC1002WDCSSSS013161070', 1, '22-May-17', '22-May-17', '22-May-17', '', '', '', 700.00, 225.81, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(666, '', 'PR0613', 'MTXX45QSMSSSSXXXXXXX99', 1, '22-May-17', '22-May-17', '22-May-17', '', '', '', 600.00, 193.55, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(667, '', 'PR0614', 'REXX66190SSCTXXXXXXX77', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 600.00, 270.97, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(668, '', 'PR0614', 'ACXX64015LDAEXXXXXXX88', 1, '16-May-17', '16-May-17', '16-May-17', '', '', '', 2000.00, 1032.26, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(669, '', 'PR0615', 'WMXXX2065WPBHXXXXXXX78', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 700.00, 316.13, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(670, '', 'PR0616', 'REXX66190SSCTXXXXXXX78', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 600.00, 270.97, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(671, '', 'PR0616', 'WMXXX2065WPBHXXXXXXX79', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 700.00, 316.13, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(672, '', 'PR0617', 'REXX66190SSCTXXXXXXX79', 1, '21-May-17', '21-May-17', '21-May-17', '', '', '', 600.00, 212.90, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(673, '', 'PR0618', 'CYXX23HSKHSBCXXXXXXX24', 1, '21-May-17', '21-May-17', '21-May-17', '', '', '', 600.00, 212.90, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(674, '', 'PR0619', 'WC1002WDCSSSS013161071', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 700.00, 316.13, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(675, '', 'PR0619', 'WC1002WDCSSSS013161072', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 700.00, 316.13, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(676, '', 'PR0619', 'MTXX45QSMSSSSXXXXXX100', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 600.00, 270.97, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(677, '', 'PR0619', 'MTXX45QSMSSSSXXXXXX101', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 600.00, 270.97, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(678, '', 'PR0619', 'SOXXX5003SSSSXXXXXXXX9', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 800.00, 361.29, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(679, '', 'PR0619', 'MWXX19020IFCTXXXXXXX20', 1, '19-May-17', '19-May-17', '19-May-17', '', '', '', 500.00, 209.68, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(680, '', 'PR0619', 'REXX66190SSCTXXXXXXX80', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 600.00, 270.97, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(681, '', 'PR0619', 'WMXXX2065WPBHXXXXXXX80', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 700.00, 316.13, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 2100.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(682, '', 'PR0619', 'TVXX17032ZBZBXXXXXXX24', 1, '19-May-17', '19-May-17', '19-May-17', '', '', '', 800.00, 335.48, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(683, '', 'PR0619', 'CTXX13XXXSSSS25N161575', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 300.00, 135.48, 0.00, 0.00, 900.00, 0.00, 0.00, 0.00, 900.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(684, '', 'PR0619', 'DTXX15D4SSSSSXXXXXXX18', 1, '18-May-17', '18-May-17', '18-May-17', '', '', '', 800.00, 361.29, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(685, '', 'PR0620', 'REXX66190SSCTXXXXXXX81', 1, '24-May-17', '24-May-17', '24-May-17', '', '', '', 600.00, 154.84, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(686, '', 'PR0621', 'ACXX37015LDAEXXXXXXX37', 1, '18-May-17', '20-May-17', '20-May-17', '', '', '', 2000.00, 774.19, 0.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 6000.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(687, '', 'PR0622', 'DTXX15D4SSSSSXXXXXXX19', 1, '23-May-17', '24-May-17', '24-May-17', '', '', '', 800.00, 206.45, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(688, '', 'PR0622', 'TVXX17032ZBZBXXXXXXX25', 1, '26-May-17', '26-May-17', '26-May-17', '', '', '', 800.00, 154.84, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(689, '', 'PR0622', 'ACXX61010LDAEXXXXXXX61', 1, '23-May-17', '24-May-17', '24-May-17', '', '', '', 1500.00, 387.10, 0.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 4500.00, 500.00, 1500.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(690, '', 'EV0020', 'RE1145190SSCT273171668', 1, '27-Mar-17', '27-Mar-17', '27-Mar-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(691, '', 'EV0020', 'WC1045SWCSSSS273171669', 1, '27-Mar-17', '27-Mar-17', '27-Mar-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(692, '', 'EV0020', 'MT1018SSMSSSS273171670', 1, '27-Mar-17', '27-Mar-17', '27-Mar-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(693, '', 'PR0600', 'WC1002WDCSSSS013161103', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(694, '', 'PR0600', 'SOXXX5003SSSSXXXXXXX10', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 800.00, 800.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(695, '', 'PR0600', 'TU1001WTVYHYH25D151206', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(696, '', 'PR0600', 'CTXX14XXXSSSS25N161575', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 300.00, 300.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 900.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(697, '', 'PR0600', 'TVXX17050ZBZBXXXXXXX26', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 2200.00, 2200.00, 0.00, 0.00, 6600.00, 500.00, 0.00, 0.00, 6600.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(698, '', 'PR0600', 'MWXX19020IFCTXXXXXXX21', 1, '11-May-17', '11-May-17', '11-May-17', '', '', '', 500.00, 338.71, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 1500.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(699, '', 'PR0600', 'REXX66190SSCTXXXXXXX82', 1, '29-Apr-17', '29-Apr-17', '29-Apr-17', '', '', '', 600.00, 600.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0, '0', 0, 1, 0, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(706, 'ENQ000001', 'PR0256', 'RE1002192SSCT101161019', 1, '2017-06-11', '2017-06-12', '2017-06-12', '', '', '2017-06-11', 1400.00, 0.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 1, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(707, 'ENQ000001', 'PR0256', 'RE1003192SSCT141161020', 1, '2017-03-11', '2017-06-12', '2017-06-12', '', '', '2017-03-11', 1400.00, 0.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 1, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(708, 'ENQ000001', 'PR0256', 'RE1004192SSCT191161021', 1, '2017-06-11', '2017-06-12', '2017-06-12', '', '', '2017-06-11', 1400.00, 0.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 1, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(709, 'ENQ000001', 'PR0256', 'RE1005192SSCT022161026', 1, '2017-06-11', '2017-06-12', '2017-06-12', '', '', '2017-06-11', 1400.00, 0.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 1, 0, '', '', '', 0, '', 6, 2016, 0, 0, 0, 0),
(710, 'ENQ000001', 'PR0256', 'RE1006192SSCT092161028', 1, '2017-06-11', '2017-06-12', '2017-06-12', '', '', '2017-06-11', 1400.00, 0.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 1, 0, '', '', '', 0, '', 6, 2016, 0, 0, 6, 2017),
(711, 'ENQ000001', 'PR0256', 'RE1007192SSCT092161030', 1, '2017-06-11', '2017-06-12', '2017-06-12', '', '', '2017-06-11', 1400.00, 0.00, 0.00, 0.00, 2400.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 1, 0, '', '', '', 0, '', 6, 2016, 6, 2017, 6, 2017),
(724, 'ENQ000004', 'PR0256', 'RE1003192SSCT141161020', 0, '2017-06-16', '2017-06-16', '2017-06-17', '', '', '2017-06-16', 1800.00, 0.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 1, 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0),
(725, 'ENQ000004', 'PR0256', '11aaa', 0, '', '', '', '', '', '', 1800.00, 0.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 0, 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0),
(726, 'ENQ000004', 'PR0256', '11aaa', 0, '', '', '', '', '', '', 1800.00, 0.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 0, 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0),
(727, 'ENQ000004', 'PR0256', '11aaa', 0, '', '', '', '', '', '', 1800.00, 0.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 0, 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0),
(728, 'ENQ000004', 'PR0256', '11aaa', 0, '', '', '', '', '', '', 1800.00, 0.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 0, 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0),
(729, 'ENQ000004', 'PR0256', '11aaa', 0, '', '', '', '', '', '', 1800.00, 0.00, 0.00, 0.00, 1800.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '0', 0, 0, 0, 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `month_invoice`
--

CREATE TABLE `month_invoice` (
  `id` int(11) NOT NULL,
  `month` varchar(3) NOT NULL DEFAULT '0',
  `year` varchar(4) NOT NULL DEFAULT '00',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month_invoice`
--

INSERT INTO `month_invoice` (`id`, `month`, `year`, `status`) VALUES
(1, '02', '17', 1),
(2, '03', '17', 1),
(13, '04', '17', 1),
(23, '05', '17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nativity`
--

CREATE TABLE `nativity` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nativity`
--

INSERT INTO `nativity` (`id`, `name`, `description`, `status`) VALUES
(1, 'Tamil', 'gha', 1),
(2, 'Malayalee', '', 1),
(3, 'aa', 'aa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payrentz_employees`
--

CREATE TABLE `payrentz_employees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `designation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrentz_employees`
--

INSERT INTO `payrentz_employees` (`id`, `name`, `mobile`, `email`, `designation`) VALUES
(1, 'Simbu', '8531075313', 'simb1431232gmail.com', 'emp1'),
(2, 'Ashwin', '9786706043', 'ashwin123@gmail.com', 'emp2'),
(3, 'Ananth', '7551075434', 'ananth@gmail.com', 'emp3'),
(4, 'Jaya krishnan', '7871282829', 'jk@gmail.com', 'emp4');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `ptdvar_id` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `purchase_type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `prtd_location` tinyint(4) NOT NULL,
  `in_service` tinyint(4) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `sl_no` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_cost` float(11,2) NOT NULL,
  `expenses` float(11,2) NOT NULL,
  `rent_vendor` varchar(30) NOT NULL,
  `rent_purchase_date` date NOT NULL,
  `rent_to_vendor_cost` float(11,2) NOT NULL,
  `bill_no` varchar(80) NOT NULL,
  `warranty_end_date` varchar(40) NOT NULL,
  `warranty_status` tinyint(4) NOT NULL DEFAULT '0',
  `product_owned_type` tinyint(4) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `ptdvar_id`, `brand`, `purchase_type`, `status`, `prtd_location`, `in_service`, `vendor`, `sl_no`, `purchase_date`, `purchase_cost`, `expenses`, `rent_vendor`, `rent_purchase_date`, `rent_to_vendor_cost`, `bill_no`, `warranty_end_date`, `warranty_status`, `product_owned_type`, `month`, `year`) VALUES
(1, 'AC1001010CMAE092161037', 7, 2, 1, 1, 1, 0, '', '123456', '0000-00-00', 27000.00, 0.00, '0', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(2, 'AC1002010CMAE062161038', 7, 13, 1, 1, 1, 0, '', '2314567', '0000-00-00', 27000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(3, 'MW1009020WPTE278161394', 9, 6, 1, 1, 1, 0, '', '1234543234', '0000-00-00', 8850.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(4, 'MW1001020IFCT241161022', 9, 12, 1, 1, 1, 0, '', '8767855345', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(5, 'MW1002020IFCT072161034', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(6, 'MW1003020IFCT085161195', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(7, 'MW1004020IFCT085161244', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(8, 'MW1005020IFCT206161255', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(9, 'MW1006020IFCT127161287', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(10, 'MW1007020IFCT127161288', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(11, 'MW1011020IFCT227161442', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(12, 'MW1012020IFCT15O161256', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(13, 'MW1013020IFVC02N161457', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(14, 'MW1015020IFCT308161501', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(15, 'MW1016020IFCT02N161507', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(16, 'MW1017020IFCT131171588', 9, 12, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(17, 'MW1010020WPCT278161400', 9, 6, 0, 0, 0, 0, '', '', '0000-00-00', 9500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(18, 'FP1003000KSCT02N161508', 30, 17, 0, 0, 0, 0, '', '', '0000-00-00', 3800.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(19, 'AC1003010LDAE292161043', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(20, 'AC1004010LDAE292161044', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(21, 'AC1005010LDAE292161045', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(22, 'AC1006010LDAE083161046', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(23, 'TV1007040LDCT282161058', 11, 14, 0, 0, 0, 0, '', '', '0000-00-00', 33500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(24, 'AC1007010LDAE023161062', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(25, 'AC1008010LDAE213161082', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(26, 'AC1009010LDAE213161097', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(27, 'AC1010015LDAE243161098', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 27000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(28, 'AC1011015LDAE243161099', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 27000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(29, 'AC1012010LDAE243161100', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(30, 'AC1013010LDAE243161101', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(31, 'AC1014010LDAE253161102', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(32, 'AC1015010LDAE283161103', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(33, 'AC1016015LDAE283161104', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(34, 'AC1017015LDAE283161105', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(35, 'AC1018015LDAE313161110', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(36, 'AC1019010LDAE094161106', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(37, 'AC1020010LDAE114161107', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(38, 'AC1021010LDAE114161108', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(39, 'AC1022015LDAE114161112', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(40, 'AC1023010LDAE114161123', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(41, 'AC1024010LDAE154161124', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(42, 'AC1025010LDAE154161125', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(43, 'AC1027010LDAE234161159', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(44, 'AC1028010LDAE234161160', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(45, 'AC1030010LDAE264161162', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(46, 'AC1031010LDAE264161163', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(47, 'AC1032010LDAE264161164', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(48, 'AC1057015LDAE08N161479', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 29000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(49, 'AC1058015LDAE08N161480', 8, 14, 0, 0, 0, 0, '', '', '0000-00-00', 29000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(50, 'AC1059010LDTE083171650', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(51, 'AC1060010LDTE083171651', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(52, 'AC1061010LDTE093171657', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(53, 'AC1062010LDTE153171658', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(54, 'AC1063010LDTE153171659', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(55, 'AC1064010LDTE173171662', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(56, 'AC1065010LDTE193171663', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(57, 'AC1066010LDTE213171664', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(58, 'AC1067010LDTE253171666', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 22000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(59, 'AC1068010LDCT273171667', 7, 14, 0, 0, 0, 0, '', '', '0000-00-00', 23000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(60, 'FP1001000PHCT036161249', 30, 20, 0, 0, 0, 0, '', '', '0000-00-00', 3700.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(61, 'FP1002000PHCT266161265', 30, 20, 0, 0, 0, 0, '', '', '0000-00-00', 3700.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(62, 'RE1002192SSCT101161019', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(63, 'RE1003192SSCT141161020', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(64, 'RE1004192SSCT191161021', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(65, 'RE1005192SSCT022161026', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(66, 'RE1006192SSCT092161028', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(67, 'RE1007192SSCT092161030', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(68, 'RE1008192SSCT092161031', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(69, 'RE1010190SSCT162161036', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(70, 'RE1011320LGBH241161042', 3, 2, 0, 0, 0, 0, '', '', '0000-00-00', 3000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(71, 'RE1012190SSCT023161050', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(72, 'RE1013190SSCT073161054', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(73, 'RE1014190SSCT073161055', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(74, 'RE1015190SSCT073161061', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(75, 'RE1016190SSCT083161080', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(76, 'RE1017190SSCT113161084', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(77, 'RE1018190SSCT123161086', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(78, 'RE1019190SSCT123161087', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(79, 'RE1020190SSCT143161088', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(80, 'RE1021190SSCT173161089', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(81, 'RE1022190SSCT193161090', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(82, 'RE1023190SSCT233161092', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(83, 'RE1024190SSCT253161094', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(84, 'RE1025190SSCT283161095', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(85, 'RE1026190SSCT283161096', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(86, 'RE1027190SSCT303161113', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(87, 'RE1028190SSCT303161114', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(88, 'RE1029190SSCT313161115', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(89, 'RE1030190SSCT313161117', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(90, 'RE1031190SSCT054161119', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(91, 'RE1032190SSCT064161120', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(92, 'RE1033190SSCT064161121', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(93, 'RE1034190SSCT094161056', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(94, 'RE1035190SSCT114161057', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(95, 'RE1036190SSCT124161066', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(96, 'RE1037190SSCT164161149', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(97, 'RE1038190SSCT184161150', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(98, 'RE1039190SSCT184161151', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(99, 'RE1040190SSCT224161152', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(100, 'RE1041190SSCT274161175', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(101, 'RE1042190SSCT224161177', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(102, 'RE1043190SSCT085161188', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(103, 'RE1044190SSCT075161189', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(104, 'RE1045190SSCT075161190', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(105, 'RE1046190SSCT075161191', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(106, 'RE1049190SSCT135161214', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(107, 'RE1050190SSCT165161215', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(108, 'RE1051190SSCT165161217', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(109, 'RE1053190SSCT245161221', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(110, 'RE1054190SSCT295161241', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(111, 'RE1055190SSCT295161243', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(112, 'RE1056190SSCT016161245', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(113, 'RE1057190SSCT036161247', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(114, 'RE1058190SSCT046161250', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(115, 'RE1118190SSCT19D161526', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(116, 'RE1123190SSCT091171543', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(117, 'RE1124190SSCT091171544', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(118, 'RE1126190SSCT241171591', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(119, 'RE1128190SSCT281171595', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(120, 'RE1129190SSCT281171596', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(121, 'RE1130190SSCT032171600', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11800.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(122, 'RE1131190SSCT080117608', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(123, 'RE1132190SSCT121171609', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(124, 'RE1134190SSCT092171616', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(125, 'RE1135190SSCT092171617', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(126, 'RE1136190SSCT122171619', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(127, 'RE1137190SSCT142171620', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(128, 'RE1138190SSCT142171621', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(129, 'RE1139190SSCT142171622', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(130, 'RE1140190SSCT142171623', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(131, 'RE1145190SSCT273171668', 1, 2, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(132, 'RE1001190VICT13N151001', 1, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(133, 'WM1002060VICT25D151008', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(134, 'WM1010060VICT092161029', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(135, 'WM1011060VICT092161032', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(136, 'WM1015060VICT023161049', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(137, 'WM1016060VICT023161051', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(138, 'WM1017060VICT023161052', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(139, 'WM1018060VICT043161053', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(140, 'WM1020060VICT203161079', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(141, 'WM1021060VICT083161081', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(142, 'WM1022060VICT103161083', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(143, 'WM1023060VICT123161085', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(144, 'WM1024060VICT193161091', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(145, 'WM1025060VICT233161093', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(146, 'WM1026060VICT313161116', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(147, 'WM1027060VICT042161118', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(148, 'WM1028060VICT062161122', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(149, 'WM1019060VICT114161060', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(150, 'WM1029060VICT134161069', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(151, 'WM1030060VICT134161148', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(152, 'WM1031060VICT224161153', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(153, 'AC1026015VICT224161154', 8, 5, 0, 0, 0, 0, '', '', '0000-00-00', 27000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(154, 'AC1029015VIAE234161161', 8, 5, 0, 0, 0, 0, '', '', '0000-00-00', 26500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(155, 'AC1033010VIAE294161165', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(156, 'AC1034010VIAE294161166', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(157, 'AC1035010VIAE294161167', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(158, 'AC1036010VIAE025161168', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 23500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(159, 'AC1037010VIAE025161169', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 23500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(160, 'AC1038010VIAE045161170', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(161, 'AC1039010VIAE045161171', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(162, 'AC1040010VIAE065161172', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(163, 'AC1041010VIAE065161173', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(164, 'AC1042010VIAE065161174', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(165, 'WM1035060VICT075161186', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(166, 'WM1036060VICT075161187', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(167, 'WM1037060VICT115161192', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(168, 'AC1043010VIAE145161200', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(169, 'AC1044010VIAE145161201', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(170, 'AC1045010VIAE175161202', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(171, 'AC1046010VIAE175161203', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(172, 'AC1047015VIAE175161204', 8, 5, 0, 0, 0, 0, '', '', '0000-00-00', 26500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(173, 'AC1048010VIAE245161205', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(174, 'AC1049010VIAE245161206', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(175, 'AC1050010VIAE255161207', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(176, 'AC1051010VIAE255161208', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(177, 'WM1038060VICT165161216', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(178, 'WM1039060VICT195161218', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(179, 'WM1040060VICT205161219', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(180, 'AC1052010VIAE275161235', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(181, 'AC1053010VIAE275161236', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(182, 'AC1054010VIAE315161237', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(183, 'AC1055010VIAE315161238', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(184, 'WM1043060VICT295161242', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(185, 'WM1044060VICT016161246', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(186, 'WM1065060VICT016161248', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(187, 'WM1045060VICT046161251', 4, 5, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(188, 'AC1056010VIAE036161278', 7, 5, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(189, 'RE1127320VTTE281171594', 3, 19, 0, 0, 0, 0, '', '', '0000-00-00', 30400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(190, 'WM1001060WPCT12D151002', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(191, 'WM1003060WPCT29D151012', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(192, 'WM1004060WPCT081161013', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(193, 'WM1005060WPCT081161014', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(194, 'WM1006060WPCT081161015', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(195, 'WM1007060WPCT091161016', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(196, 'WM1008060WPCT101161017', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(197, 'WM1009060WPCT101161018', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(198, 'RE1009240WPCT072161033', 2, 6, 0, 0, 0, 0, '', '', '0000-00-00', 20500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(199, 'WM1012065WPBH241161041', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 2000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(200, 'WM1013060WPCT232161047', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(201, 'WM1014060WPCT232161048', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(202, 'WM1032065WPCT274161176', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 16900.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(203, 'WM1033060WPCT015161178', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 12300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(204, 'WM1034060WPCT075161185', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 14400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(205, 'RE1047190WPTE065161193', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(206, 'RE1048190WPTE065161194', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(207, 'RE1052240WPCT245161220', 2, 6, 0, 0, 0, 0, '', '', '0000-00-00', 18900.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(208, 'WM1041060WPCT195161239', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(209, 'WM1042060WPCT255161240', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(210, 'WM1046060WPCT096161252', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(211, 'RE1059190WPCT096161253', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(212, 'WM1047060WPCT096161254', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(213, 'RE1060190WPCT096161258', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(214, 'WM1048060WPCT096161259', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(215, 'WM1051060WPCT116161262', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(216, 'WM1052060WPCT136161263', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(217, 'WM1053060WPCT136161264', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(218, 'WM1054060WPCT286161266', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(219, 'RE1061240WPCT236161267', 2, 6, 0, 0, 0, 0, '', '', '0000-00-00', 18600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(220, 'RE1062190WPTE076161268', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11350.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(221, 'RE1063190WPTE276161269', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11350.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(222, 'WM1055060WPTE276161270', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 12700.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(223, 'RE1064190WPTE276161271', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(224, 'WM1056060WPTE047161272', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 12700.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(225, 'RE1070240SSTE047161273', 2, 6, 0, 0, 0, 0, '', '', '0000-00-00', 18850.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(226, 'WM1057060WPCT037161279', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(227, 'WM1058060WPCT057161280', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(228, 'WM1059060WPCT077161281', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(229, 'WM1060060WPCT097161282', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(230, 'WM1061060WPCT097161283', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(231, 'WM1062060WPCT127161284', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(232, 'RE1065190WPCT137161285', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(233, 'RE1066190WPCT127161286', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(234, 'WM1063060WPCT137161289', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(235, 'WM1064060WPCT147161290', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(236, 'RE1067190WPCT127161291', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(237, 'RE1068190WPCT197161294', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(238, 'RE1069190WPTE157161306', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11350.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(239, 'WM1066062WPTE147161307', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(240, 'MW1008020WPTE147161308', 9, 6, 0, 0, 0, 0, '', '', '0000-00-00', 8650.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(241, 'WM1067062WPTE197161309', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(242, 'RE1080190WPTE197161310', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(243, 'RE1071190WPTE317161311', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(244, 'WM1068062WPTE307161312', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(245, 'WM1069062WPCT167161313', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(246, 'RE1072190WPCT167161314', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(247, 'RE1073190WPCT167161315', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(248, 'RE1074190WPCT187161316', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(249, 'WM1070062WPCT177161317', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(250, 'RE1075190WPCT217161318', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(251, 'WM1071062WPCT197161319', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(252, 'WM1072062WPCT187161320', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(253, 'RE1076190WPCT187161321', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(254, 'RE1077190WPCT028161322', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(255, 'WM1073062WPCT028161323', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(256, 'WM1074062WPCT038161324', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(257, 'WM1075062WPCT028161325', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(258, 'RE1078190WPCT028161326', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(259, 'WM1076062WPCT028161327', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(260, 'RE1079190WPCT028161328', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(261, 'RE1081190WPCT287161329', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(262, 'WM1077062WPCT257161330', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(263, 'WM1078062WPCT267161331', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(264, 'RE1082190WPCT068161375', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(265, 'RE1083190WPCT128161379', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(266, 'RE1084190WPCT178161382', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11350.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(267, 'WM1079062WPCT218161424', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(268, 'WM1080062WPCT218161386', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(269, 'RE1085190WPCT218161387', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11350.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(270, 'WM1081062WPCT238161388', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 12900.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(271, 'WM1082062WPCT258161392', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13050.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(272, 'WM1083062WPCT258161393', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13050.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(273, 'WM1084062WPCT278161397', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 12900.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(274, 'WM1085062WPCT278161398', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13550.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(275, 'RE1086190WPCT318161399', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(276, 'WM1086062WPCT028161370', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(277, 'RE1087185WPCT048161371', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(278, 'RE1088185WPCT058161374', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(279, 'WM1087062WPCT068161376', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(280, 'WM1088062WPCT108161373', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(281, 'RE1089185WPCT108161372', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(282, 'RE1090185WPCT108161377', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(283, 'WM1089062WPCT138161380', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(284, 'RE1091185WPCT148161381', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(285, 'RE1092185WPCT208161390', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(286, 'WM1090062WPCT218161384', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(287, 'WM1091062WPCT318161407', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(288, 'WM1092062WPCT019161408', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(289, 'WM1093062WPCT029161409', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(290, 'RE1093185WPCT029161410', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(291, 'WM1094062WPCT049161411', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(292, 'RE1094185WPCT059161412', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(293, 'RE1095185WPCT069161413', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(294, 'RE1096185WPCT069161414', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(295, 'WM1095062WPCT069161415', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(296, 'WM1096062WPCT099161416', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(297, 'WM1097062WPCT099161417', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(298, 'WM1098062WPCT119161418', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(299, 'WM1099060WPCT129161419', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(300, 'WM1100062WPCT129161420', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(301, 'RE1097190WPTE119161425', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(302, 'RE1098190WPTE119161426', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11150.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(303, 'RE1099190WPTE139161427', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(304, 'WM1101060WPTE139161428', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(305, 'WM1102060WPTE159161429', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(306, 'WM1103060WPTE179161430', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(307, 'WM1104062WPTE249161431', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(308, 'WM1105062WPTE249161432', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13150.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(309, 'WM1106060WPCT239161440', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(310, 'WM1107062WPCT249161441', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(311, 'WM1108060WPCT02O161361', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(312, 'WM1109060WPCT04O161362', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(313, 'WM1110060WPCT07O161363', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(314, 'WM1111060WPCT12O161364', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(315, 'RE1100185WPCT12O161365', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(316, 'RE1101185WPCT12O161366', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(317, 'WM1112060WPCT12O161367', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(318, 'WM1113060WPCT13O161368', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(319, 'RE1102185WPCT13O161385', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(320, 'WM1114060WPCT13O161389', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(321, 'RE1103185WPCT23O161378', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(322, 'WM1115060WPCT23O161444', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(323, 'WM1116060WPCT01N161445', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(324, 'WM1117060WPCT03N161446', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(325, 'WM1118060WPCT04N161447', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(326, 'RE1104185WPCT04N161448', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(327, 'RE1105185WPCT05N161449', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(328, 'WM1119060WPCT05N161450', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(329, 'WM1120060WPCT07N161451', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(330, 'RE1106240WPCT07N161452', 2, 6, 0, 0, 0, 0, '', '', '0000-00-00', 19000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(331, 'WM1121060WPCT09N161453', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(332, 'RE1107185WPCT09N161454', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(333, 'WM1122060WPCT09N161455', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(334, 'WM1123060WPCT10N161456', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(335, 'WM1124060WPTE269161458', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(336, 'WM1125060WPTE269161459', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(337, 'RE1108190WPTE14O161460', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11800.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(338, 'WM1126060WPTE14O161461', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(339, 'RE1109190WPTE17O161462', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(340, 'RE1110190WPTE20O161463', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(341, 'WM1127060WPTE20O161464', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(342, 'WM1128060WPTE02N161465', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(343, 'MW1014020WPTE02N161466', 9, 6, 0, 0, 0, 0, '', '', '0000-00-00', 8900.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(344, 'WM1129060WPTE02N161467', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(345, 'WM1130060WPTE04N161490', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13350.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(346, 'RE1111190WPTE06N161491', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(347, 'WM1131060WPTE11N161492', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(348, 'WM1132060WPTE11N161493', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(349, 'WM1133060WPTE15N161494', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(350, 'MW1016020WPCT20N161502', 9, 6, 0, 0, 0, 0, '', '', '0000-00-00', 8500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(351, 'RE1112185WPCT20N161503', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(352, 'WM1134060WPCT20N161504', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(353, 'RE1113185WPCT21N161509', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(354, 'RE1114185WPCT21N161510', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(355, 'RE1115185WPCT23N161511', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(356, 'WM1135060WPCT25N161512', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(357, 'WM1136060WPTE22N161514', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(358, 'WM1137060WPCT04D161261', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(359, 'RE1116185WPCT17D161524', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(360, 'RE1117185WPCT17D161525', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(361, 'WM1138060WPCT19D161527', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(362, 'RE1119190WPTE30N161532', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(363, 'WM1139060WPTE30N161533', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(364, 'WM1140060WPTE02D161534', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13300.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(365, 'WM1141060WPCT27N161535', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(366, 'RE1120185WPCT27N161536', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(367, 'RE1121185WPCT29N161537', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(368, 'WM1142060WPCT29N161538', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016);
INSERT INTO `product` (`id`, `product_id`, `ptdvar_id`, `brand`, `purchase_type`, `status`, `prtd_location`, `in_service`, `vendor`, `sl_no`, `purchase_date`, `purchase_cost`, `expenses`, `rent_vendor`, `rent_purchase_date`, `rent_to_vendor_cost`, `bill_no`, `warranty_end_date`, `warranty_status`, `product_owned_type`, `month`, `year`) VALUES
(369, 'WM1143060WPCT02D161539', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(370, 'RE1122185WPCT02D161540', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(371, 'WM1144060WPCT30D161541', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(372, 'WM1145060WPCT091171542', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(373, 'RE1125240WPCT101171545', 2, 6, 0, 0, 0, 0, '', '', '0000-00-00', 19000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(374, 'WM1146060WPCT101171546', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(375, 'WM1147060WPCT30D161587', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(376, 'WM1148060WPCT171171589', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(377, 'WM1149060WPCT281171597', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(378, 'WM1150060WPCT271171598', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(379, 'WM1151060WPCT032171599', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(380, 'WM1152060WPCT032171601', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(381, 'WM1153060WPCT032171602', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(382, 'WM1154060WPCT211171607', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(383, 'WM1155060WPTE052171612', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(384, 'RE1133190WPTE052171613', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11100.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(385, 'WM1156060WPCT142171624', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(386, 'WM1157060WPCT142171625', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(387, 'RE1141190SSTE212171631', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(388, 'WM1158060WPTE212171632', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(389, 'WM1159060WPCT063171643', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(390, 'WM1160060WPCT093171644', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(391, 'RE1142190SSTE083171645', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(392, 'RE1143190SSTE083171646', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(393, 'RE1144190SSTE093171647', 1, 6, 0, 0, 0, 0, '', '', '0000-00-00', 11500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(394, 'WM1161062WPTE212171665', 4, 6, 0, 0, 0, 0, '', '', '0000-00-00', 13450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(395, 'TV1001040ZBZB23D151006', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24617.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(396, 'MS1001S21ZBZB23D151007', 0, 3, 0, 0, 0, 0, '', '', '0000-00-00', 1339.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(397, 'TV1002032ZBZB31D151011', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(398, 'TV1003032ZBZB022161023', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(399, 'TV1004032ZBZB022161024', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(400, 'TV1005040ZBZB092161027', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24617.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(401, 'TV1006032ZBZB132161035', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 14000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(402, 'TV1008032ZBZB272161067', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(403, 'TV1009032ZBZB272161068', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(404, 'TV1010032ZBZB292161070', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(405, 'TV1011032ZBZB292161071', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(406, 'TV1012032ZBZB143161072', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(407, 'TV1013032ZBZB143161073', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(408, 'TV1014032ZBZB143161074', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(409, 'TV1015032ZBZB213161075', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(410, 'TV1016032ZBZB223161076', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(411, 'TV1017032ZBZB223161077', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(412, 'TV1018040ZBZB243161078', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24617.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(413, 'TV1019040ZBZB293161109', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24617.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(414, 'TV1020032ZBZB263161111', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(415, 'TV1021032ZBZB263161126', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(416, 'TV1022032ZBZB263161127', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(417, 'TV1023032ZBZB094161128', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(418, 'TV1024032ZBZB214161146', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(419, 'TV1025032ZBZB214161147', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(420, 'TV1026032ZBZB274161155', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(421, 'TV1027032ZBZB274161156', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(422, 'TV1028032ZBZB274161157', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(423, 'TV1029032ZBZB274161158', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(424, 'TV1030032ZBZB075161182', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(425, 'TV1031032ZBZB075161183', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(426, 'TV1032032ZBZB075161184', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(427, 'TV1033032ZBZB205161209', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(428, 'TV1034032ZBZB205161210', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(429, 'TV1035032ZBZB205161211', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(430, 'TV1036040ZBZB285161212', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(431, 'TV1037040ZBZB285161213', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(432, 'TV1038032ZBZB036161225', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(433, 'TV1039032ZBZB036161226', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(434, 'TV1040032ZBZB036161134', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(435, 'TV1041040ZBZB046161404', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(436, 'TV1042032ZBZB276161274', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(437, 'TV1043032ZBZB276161275', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(438, 'TV1044032ZBZB276161276', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(439, 'TV1045040ZBZB066161277', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(440, 'TV1046032ZBZB187161292', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(441, 'TV1047032ZBZB307161296', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(442, 'TV1048032ZBZB307161297', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(443, 'TV1049032ZBZB307161298', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(444, 'TV1050032ZBZB307161299', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(445, 'TV1051032ZBZB307161300', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(446, 'TV1052032ZBZB307161301', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(447, 'TV1053032ZBZB018161302', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(448, 'TV1054032ZBZB068161303', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(449, 'TV1055032ZBZB068161304', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(450, 'TV1056032ZBZB068161305', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(451, 'TV1057032ZBZB108161348', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(452, 'TV1058032ZBZB108161349', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(453, 'TV1059032ZBZB108161350', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(454, 'TV1060040ZBZB168161351', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(455, 'TV1061032ZBZB278161395', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(456, 'TV1062032ZBZB308161369', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(457, 'TV1063032ZBZB199161396', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(458, 'TV1064040ZBZB199161423', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(459, 'TV1065040ZBZB20O161495', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(460, 'TV1066040ZBZB22O161496', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(461, 'TV1067040ZBZB04N161497', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(462, 'TV1068040ZBZB07N161498', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(463, 'TV1069032ZBZB13O161499', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(464, 'TV1070032ZBZB13O161500', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(465, 'TV1071040ZBZB22N161506', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(466, 'TV1072040ZBZB24N161513', 11, 3, 0, 0, 0, 0, '', '', '0000-00-00', 24618.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(467, 'TV1073032ZBZB29N161515', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(468, 'TV1074032ZBZB29D161549', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(469, 'TV1090032ZBZB093171652', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(470, 'TV1091032ZBZB093171653', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(471, 'TV1092032ZBZB163171660', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(472, 'TV1093032ZBZB163171661', 10, 3, 0, 0, 0, 0, '', '', '0000-00-00', 13500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(473, 'HT1001051SOSS20D151003', 12, 10, 0, 0, 0, 0, '', '', '0000-00-00', 8900.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(474, 'HT1002051SOBH093161059', 12, 10, 0, 0, 0, 0, '', '', '0000-00-00', 5000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(475, 'TV1075040VUTE051171566', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 23450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(476, 'TV1076040VUTE051171567', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 23450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(477, 'TV1077040VUTE071171568', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 23450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(478, 'TV1078040VUTE30D161586', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 24400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(479, 'TV1079040VUTE032171603', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 24500.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(480, 'TV1080040VUTE052171614', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 24850.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(481, 'TV1081040VUTE082171615', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 24550.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(482, 'TV1082032VUCT092171618', 10, 21, 0, 0, 0, 0, '', '', '0000-00-00', 14700.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(483, 'TV1083032VUCT212171628', 10, 21, 0, 0, 0, 0, '', '', '0000-00-00', 14700.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(484, 'TV1084032VUCT212171629', 10, 21, 0, 0, 0, 0, '', '', '0000-00-00', 14700.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(485, 'TV1085040VUTE212171630', 11, 21, 0, 0, 0, 0, '', '', '0000-00-00', 24550.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(486, 'TV1086032VUTE063171640', 10, 21, 0, 0, 0, 0, '', '', '0000-00-00', 14850.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(487, 'TV1087032VUTE063171641', 10, 21, 0, 0, 0, 0, '', '', '0000-00-00', 14850.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(488, 'TV1088032VUTE063171642', 10, 21, 0, 0, 0, 0, '', '', '0000-00-00', 14850.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(489, 'TV1089032VUTE093171648', 10, 21, 0, 0, 0, 0, '', '', '0000-00-00', 14850.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(490, 'EB1001FUBATAF112161140', 16, 16, 0, 0, 0, 0, '', '', '0000-00-00', 15000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(491, 'EB1002FUBATAF304161293', 16, 16, 0, 0, 0, 0, '', '', '0000-00-00', 15000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(492, 'EB1003FUBATAF164161295', 16, 16, 0, 0, 0, 0, '', '', '0000-00-00', 15000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(493, 'CY1003HMOCYCY301161025', 15, 11, 0, 0, 0, 0, '', '', '0000-00-00', 30000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(494, 'CY1007HMOCYCY019161391', 15, 11, 0, 0, 0, 0, '', '', '0000-00-00', 30000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(495, 'CY1004HSKHSCY198161383', 17, 18, 0, 0, 0, 0, '', '', '0000-00-00', 14839.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(496, 'CY1005HSKHSBC298161421', 17, 18, 0, 0, 0, 0, '', '', '0000-00-00', 18600.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(497, 'CY1006HSKHSBC298161422', 17, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7440.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(498, 'CY1008HKBHSBC11N161468', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 6200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(499, 'CY1009HKBHSBC148161474', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 6200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(500, 'CY1010HKBHSBC148161475', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(501, 'CY1011HKBHSBC148161476', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(502, 'CY1012HKBHSBC278161477', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(503, 'CY1013HKBHSBC278161478', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7200.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(504, 'CY1014HKBHSBC18N161505', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(505, 'CY1015HKBHSBC15D161260', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(506, 'EB1004FUBHSOZ057161547', 16, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(507, 'EB1005FUBHSOZ057161548', 16, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(508, 'CY1016HKBHSBC03D161550', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 14000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(509, 'CY1017HKBHSBC08N161569', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 14000.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(510, 'CY1018HKBHSBC121171592', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(511, 'CY1019HKBHSBC121171593', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(512, 'CY1020HKBHSBC21N171626', 19, 18, 0, 0, 0, 0, '', '', '0000-00-00', 7400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(513, 'CY1001HCACYCY28D151009', 13, 11, 0, 0, 0, 0, '', '', '0000-00-00', 7400.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(514, 'CY1002HSCCYCY31D151010', 14, 11, 0, 0, 0, 0, '', '', '0000-00-00', 7450.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(515, 'SO1028003IDIF212171627', 25, 22, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(516, 'WC1043DWCIFIF093171655', 28, 22, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(517, 'WC1044DWCIFIF093171656', 28, 22, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(518, 'MT1012QSMKLTE052171610', 31, 15, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(519, 'MT1016QSMKLTE093171649', 31, 15, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(520, 'MT1017QSMKLTE093171654', 31, 15, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(521, 'WC1001DWCXXPH052161039', 28, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(522, 'WC1001DWCXXBH183161139', 28, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(523, 'IC1002ICSXXBH204151141', 34, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(524, 'MT1001SSMXXSN204161142', 32, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(525, 'DT1001D5SXXBH204161143', 21, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(526, 'CT1002XXXXXBH204161144', 24, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(527, 'SR1001SRKXXBH204161145', 0, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(528, 'SO1006003XXYH154161179', 25, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(529, 'DT1002D5SXXYH154161180', 21, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(530, 'WC1003SWDXXYH024161181', 29, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(531, 'IC1003ICSXXVI178151443', 29, 4, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(532, 'SO1001003SSSS21D151004', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(533, 'SO1002003SSBH241161040', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(534, 'SO1003003SSSS042161063', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(535, 'WC1002DWCSSSS013161064', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(536, 'SO1004003SSSS013161065', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(537, 'WC1001SWDSSSS253161129', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(538, 'WC1003SWDSSSS253161130', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(539, 'WC1003DWCSSSS124161131', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(540, 'WC1004DWCSSSS124161132', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(541, 'TU1002WTVSSSS124161135', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(542, 'CT1001XXXSSSS124161136', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(543, 'IC1001ICDSSSS31D151137', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(544, 'SO1005003SSSS114161138', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(545, 'WC1002DWDSSSS045161196', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(546, 'WC1003DWDSSSS045161197', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(547, 'CT1003XXXSSSS045161198', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(548, 'WC1004DWDSSSS135161199', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(549, 'WC1005DWDSSSS135161133', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(550, 'WC1006DWDSSSS135161224', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(551, 'WC1007DWDSSSS045161222', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(552, 'WC1008DWDSSSS045161223', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(553, 'WC1012DWDSSSS185161227', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(554, 'WC1013DWDSSSS255161228', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(555, 'WC1005DWCSSSS135161229', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(556, 'SO1007003SSSS215161230', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(557, 'SO1008003SSSS264161231', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(558, 'SO1009002SSSS264161232', 26, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(559, 'WC1014DWDSSSS184161233', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(560, 'WC1015DWDSSSS184161234', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(561, 'WC1016DWDSSSS315161257', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(562, 'WC1006DWCSSSS187161332', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(563, 'WC1017DWDSSSS197161333', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(564, 'WC1018DWDSSSS197161334', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(565, 'DT1003D6SSSSS277161335', 22, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(566, 'WC1007SWCSSSS307161336', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(567, 'SO1010003SSSS297161337', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(568, 'SO1011003SSSS187161338', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(569, 'SO1012003SSSS018161339', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(570, 'WC1019DWDSSSS028161340', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(571, 'CT1004XXXSSSS028161341', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(572, 'WC1008DWCSSSS058161342', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(573, 'WC1009SWCSSSS307161343', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(574, 'DT1004D4SSSSS088161352', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(575, 'SO1013003SSSS088161353', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(576, 'WC1020DWDSSSS108161354', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(577, 'WC1021DWDSSSS108161355', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(578, 'CT1005XXXSSSS108161356', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(579, 'WC1010DWCSSSS208161357', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(580, 'WC1011DWCSSSS238161358', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(581, 'DT1005D4SSSSS088161359', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(582, 'SO1014003SSSS238161360', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(583, 'SO1015003SSSS298161401', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(584, 'DT1006D4SSSSS298161402', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(585, 'SO1016003SSSS298161403', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(586, 'CT1006XXXSSSS308161405', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(587, 'MT1002QSMSSSS308161406', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(588, 'MT1003SSMSSSS159161433', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(589, 'MT1004SSMSSSS149161434', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(590, 'MT1005QSMSSSS239161435', 31, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(591, 'WC1022DWDSSSS279161436', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(592, 'TU1003WTVSSSS279161437', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(593, 'DT1007D4SSSSS279161438', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(594, 'TU1004WTVSSSS289161439', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(595, 'WC1012DWCSSSS15O161469', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(596, 'WC1022DWDSSSS01N161470', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(597, 'WC1023DWCSSSS01N161471', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(598, 'WC1024DWCSSSS01N161472', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(599, 'CT1007XXXSSSS01N161473', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(600, 'WC1025DWCSSSS05N161481', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(601, 'WC1026DWCSSSS05N161482', 36, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(602, 'CT1008XXXSSSS05N161483', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(603, 'DT1008D4SSSSS05N161484', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(604, 'SO1017003SSSS265161485', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(605, 'SO1018002SSSS265161486', 26, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(606, 'IC1004ICSSSSS07N161487', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(607, 'IC1005ICSSSSS07N161488', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(608, 'IC1006ICSSSSS07N161489', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(609, 'WC1027SWCSSSS22N161516', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(610, 'MT1006SSMSSSS22N161517', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(611, 'WC1028DWCSSSS25N161518', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(612, 'SO1019003SSSS24N161519', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(613, 'DT1009D6SSSSS24N161520', 22, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(614, 'SO1020003SSSS24N161521', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(615, 'SO1021002SSSS24N161522', 26, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(616, 'SO1022003SSSS24N161523', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(617, 'WC1029SWCSSSS13D161528', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(618, 'WC1030DWCSSSS16D161529', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(619, 'IC1007ICSSSSS16D161530', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(620, 'IC1008ICSSSSS17D161531', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(621, 'CT1009XXXSSSS051171551', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(622, 'TU1005WTVSSSS061171552', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(623, 'CT1010XXXSSSS061171553', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(624, 'MT1007QSMSSSS061171554', 31, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(625, 'IC1009ICSSSSS061171555', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(626, 'SO1023003SSSS061171556', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(627, 'SO1024002SSSS061171557', 26, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(628, 'WC1031DWCSSSS061171558', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(629, 'WC1032DWCSSSS061171559', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(630, 'WC1033SWCSSSS101171560', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(631, 'WC1034SWCSSSS101171561', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(632, 'TU1006WTVSSSS101171562', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(633, 'MT1007SSMSSSS101171563', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(634, 'DT1009D4SSSSS101171564', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(635, 'CT1011XXXSSSS101171565', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(636, 'IC1010ICSSSSS21D161570', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(637, 'IC1011ICSSSSS21D161571', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(638, 'IC1012ICSSSSS21D161572', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(639, 'MT1008QSMSSSS04D161573', 31, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(640, 'WC1035DWCSSSS04D161574', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(641, 'CT1012XXXSSSS25N161575', 24, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(642, 'MT1009QSMSSSS29N161576', 31, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(643, 'WC1036DWCSSSS29N161577', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(644, 'TU1007WTVSSSS28N161578', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(645, 'DT1010D4SSSSS28N161579', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(646, 'WC1037DWCSSSS28N161580', 28, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(647, 'SO1025003SSSS29N161581', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(648, 'DT1011D4SSSSS09D161582', 20, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(649, 'TU1008WTVSSSS09D161583', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(650, 'SO1026003SSSS08D161584', 25, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(651, 'SO1027002SSSS08D161585', 26, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(652, 'MT1010SSMSSSS171171590', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(653, 'TU1009WTVSSSS012171604', 27, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(654, 'IC1013ICSSSSS032171605', 34, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(655, 'MT1011QSMSSSS032171606', 31, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(656, 'WC1039SWCSSSS013171633', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(657, 'WC1040SWCSSSS013171634', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(658, 'MT1013SSMSSSS013171635', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(659, 'MT1014SSMSSSS013171636', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(660, 'MT1015SSMSSSS013171637', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(661, 'WC1045SWCSSSS273171669', 29, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(662, 'MT1018SSMSSSS273171670', 32, 7, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(663, 'WC1038DWCTETE052171611', 28, 23, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(664, 'WC1041SWCTETE063171638', 29, 23, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(665, 'WC1042SWCTETE063171639', 29, 23, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(666, 'TU1001WTVYHYH25D151005', 27, 8, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(667, 'EBXXX1FUBATAFXXXXXXXX1', 16, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(668, 'WMXXX2065WPBHXXXXXXXX2', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(669, 'ACXXX3010LDAEXXXXXXXX3', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(670, 'WCXXX4SWDXXYHXXXXXXXX4', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(671, 'SOXXX5003SSSSXXXXXXXX5', 25, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(672, 'WCXXX6DWDSSSSXXXXXXXX6', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(673, 'WCXXX7SWDXXYHXXXXXXXX7', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(674, 'WCXXX8SWDXXYHXXXXXXXX8', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(675, 'TVXXX9032ZBZBXXXXXXXX9', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(676, 'ICXX10ICDXXBHXXXXXXX10', 34, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(677, 'TVXX11032ZBZBXXXXXXX11', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(678, 'WCXX12SWDXXYHXXXXXXX12', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(679, 'WCXX13DWCSSSSXXXXXXX13', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(680, 'MTXX14QSMSSSSXXXXXXX14', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(681, 'DTXX15D4SSSSSXXXXXXX15', 20, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(682, 'MTXX16QSMSSSSXXXXXXX16', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(683, 'TVXX17032ZBZBXXXXXXX17', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(684, 'MTXX18QSMSSSSXXXXXXX18', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(685, 'MWXX19020IFCTXXXXXXX19', 9, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(686, 'MTXX20QSMSSSSXXXXXXX20', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(687, 'MTXX21QSMSSSSXXXXXXX21', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(688, 'MTXX22QSMSSSSXXXXXXX22', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(689, 'CYXX23HSKHSBCXXXXXXX23', 19, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(690, 'ACXX24010LDAEXXXXXXX24', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(691, 'MTXX25QSMSSSSXXXXXXX25', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(692, 'ICXX26ICDXXBHXXXXXXX26', 34, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(693, 'TVXX27040VUTEXXXXXXX27', 11, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(694, 'MTXX28QSMSSSSXXXXXXX28', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(695, 'EBXX29FUBATAFXXXXXXX29', 16, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(696, 'ACXX30010LDAEXXXXXXX30', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(697, 'ACXX31010LDAEXXXXXXX31', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(698, 'ACXX32010LDAEXXXXXXX32', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(699, 'ACXX33010LDAEXXXXXXX33', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(700, 'ACXX34010LDAEXXXXXXX34', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(701, 'WCXX35DWCSSSSXXXXXXX35', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(702, 'MTXX36QSMSSSSXXXXXXX36', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(703, 'ACXX37015LDAEXXXXXXX37', 8, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(704, 'ACXX38010LDAEXXXXXXX38', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(705, 'ACXX39010LDAEXXXXXXX39', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(706, 'ACXX40015LDAEXXXXXXX40', 8, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(707, 'MTXX41QSMSSSSXXXXXXX41', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(708, 'WCXX42DWCSSSSXXXXXXX42', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(709, 'WCXX44DWCSSSSXXXXXXX43', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(710, 'MTXX44QSMSSSSXXXXXXX44', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(711, 'MTXX45QSMSSSSXXXXXXX45', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(712, 'WCXX46SWDXXYHXXXXXXX46', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(713, 'WCXX47SWDXXYHXXXXXXX47', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(714, 'WCXX48SWDXXYHXXXXXXX48', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(715, 'WCXX49SWDXXYHXXXXXXX49', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(716, 'MTXX50SSMSSSSXXXXXXX50', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(717, 'MTXX51SSMSSSSXXXXXXX51', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(718, 'MTXX52SSMSSSSXXXXXXX52', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(719, 'MTXX53SSMSSSSXXXXXXX53', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(720, 'ACXX54010LDAEXXXXXXX54', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(721, 'ACXX55010LDAEXXXXXXX55', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(722, 'ACXX56010LDAEXXXXXXX56', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(723, 'ACXX57010LDAEXXXXXXX57', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(724, 'WCXX58SWDXXYHXXXXXXX58', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(725, 'MTXX59SSMSSSSXXXXXXX59', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(726, 'REXX60190SSCTXXXXXXX60', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(727, 'ACXX61010LDAEXXXXXXX61', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(728, 'ACXX62010LDAEXXXXXXX62', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(729, 'ACXX63010LDAEXXXXXXX63', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(730, 'ACXX64010LDAEXXXXXXX64', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(731, 'ACXX65010LDAEXXXXXXX65', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(732, 'REXX66190SSCTXXXXXXX66', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(733, 'TVXX67040VUTEXXXXXXX67', 11, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(734, 'TVXX68040VUTEXXXXXXX68', 11, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(735, 'product_id', 0, 0, 0, 0, 0, 0, 'vendor', 'sl_no', '0000-00-00', 0.00, 0.00, 'rent_vendor', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(736, 'WMXXX2065WPBHXXXXXXX71', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(737, 'WMXXX2065WPBHXXXXXXX72', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(738, 'product_id', 0, 0, 0, 0, 0, 0, 'vendor', 'sl_no', '0000-00-00', 0.00, 0.00, 'rent_vendor', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(739, 'RE1103185WPCT13O161378', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016);
INSERT INTO `product` (`id`, `product_id`, `ptdvar_id`, `brand`, `purchase_type`, `status`, `prtd_location`, `in_service`, `vendor`, `sl_no`, `purchase_date`, `purchase_cost`, `expenses`, `rent_vendor`, `rent_purchase_date`, `rent_to_vendor_cost`, `bill_no`, `warranty_end_date`, `warranty_status`, `product_owned_type`, `month`, `year`) VALUES
(740, 'WM1115060WPCT13O161444', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(741, 'WM1117060WPCT13O161446', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(742, 'WM1118060WPCT13O161447', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(743, 'RE1104185WPCT13O161448', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(744, 'DT1009D4SSSSS05N161484', 20, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(745, 'RE1105185WPCT13O161449', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(746, 'WM1119060WPCT13O161450', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(747, 'RE1107185WPCT05N161454', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(748, 'WM1121060WPCT07N161453', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(749, 'WC1001WDCXXPH052161039', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(750, 'WCXX58DWDXXYHXXXXXXX73', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(751, 'WCXX58SWDXXYHXXXXXXX74', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(752, 'WCXX58SWDXXYHXXXXXXX75', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(753, 'MTXX59SSMSSSSXXXXXXX75', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(754, 'MTXX59SSMSSSSXXXXXXX76', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(755, 'WCXX58DWDXXYHXXXXXXX77', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(756, 'MTXX45QSMSSSSXXXXXXX78', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(757, 'ACXX64010LDAEXXXXXXX78', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(758, 'TV1069032ZBZB219161499', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(759, 'WM1124060WPTE169161458', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(760, 'EB1002FUBATAFXXXXXXX79', 16, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(761, 'SO1028003IFIF212171627', 25, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(762, 'WM1116060WPCT13O161445', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(763, 'WCXX58DWCXXYHXXXXXXX73', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(764, 'WCXX42DWCSSSSXXXXXXX70', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(765, 'WC1002WDCSSSS013161064', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '0', 0, 0, 6, 2016),
(766, 'AC1069010VSCT044171671', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(767, 'AC1070010VSCT044171672', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(768, 'AC1071010VSCT064171673', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(769, 'AC1072010VSCT074171674', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(770, 'AC1073010VSCT074171675', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(771, 'AC1074010VSCT074171676', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(772, 'AC1075010VSCT114171677', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(773, 'AC1076010VSCT114171678', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(774, 'RE1146190SSCT174171679', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(775, 'RE1147190SSCT184171680', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(776, 'RE1148190SSCT184171681', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(777, 'AC1077010VSCT194171682', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(778, 'AC1078010VSCT194171683', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(779, 'RE1149190SSCT194171684', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(780, 'AC1079010VSCT204171685', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(781, 'AC1080010VSCT204171686', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(782, 'AC1081010VSCT204171687', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(783, 'AC1082010VSCT204171688', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(784, 'RE1150190SSCT254171689', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(785, 'WM1049060WPCT254171690', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(786, 'AC1083010VSCT115171691', 7, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(787, 'REXX66190SSCTXXXXXXX67', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(788, 'REXX66190SSCTXXXXXXX68', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(789, 'REXX66190SSCTXXXXXXX69', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(790, 'REXX66190SSCTXXXXXXX70', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(791, 'REXX66190SSCTXXXXXXX71', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(792, 'REXX66190SSCTXXXXXXX72', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(793, 'REXX66190SSCTXXXXXXX73', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(794, 'REXX66190SSCTXXXXXXX74', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(795, 'REXX66190SSCTXXXXXXX75', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(796, 'REXX66190SSCTXXXXXXX76', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(797, 'REXX66190SSCTXXXXXXX77', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(798, 'REXX66190SSCTXXXXXXX78', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(799, 'REXX66190SSCTXXXXXXX79', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(800, 'REXX66190SSCTXXXXXXX80', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(801, 'REXX66190SSCTXXXXXXX81', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(802, 'REXX66190SSCTXXXXXXX82', 1, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(803, 'TVXX17032ZBZBXXXXXXX18', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(804, 'TVXX17032ZBZBXXXXXXX19', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(805, 'TVXX17032ZBZBXXXXXXX20', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(806, 'TVXX17032ZBZBXXXXXXX21', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(807, 'TVXX17032ZBZBXXXXXXX22', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(808, 'TVXX17032ZBZBXXXXXXX23', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(809, 'TVXX17032ZBZBXXXXXXX24', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(810, 'TVXX17032ZBZBXXXXXXX25', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(811, 'TVXX17050ZBZBXXXXXXX26', 33, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(812, 'MWXX19020IFCTXXXXXXX20', 9, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(813, 'MWXX19020IFCTXXXXXXX21', 9, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(814, 'SOXXX5003SSSSXXXXXXXX6', 25, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(815, 'SOXXX5003SSSSXXXXXXXX7', 25, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(816, 'SOXXX5003SSSSXXXXXXXX8', 25, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(817, 'SOXXX5003SSSSXXXXXXXX9', 25, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(818, 'SOXXX5003SSSSXXXXXXX10', 25, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(819, 'DTXX15D4SSSSSXXXXXXX16', 20, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(820, 'DTXX15D4SSSSSXXXXXXX17', 20, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(821, 'DTXX15D4SSSSSXXXXXXX18', 20, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(822, 'DTXX15D4SSSSSXXXXXXX19', 20, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(823, 'WMXXX2065WPBHXXXXXXX73', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(824, 'WMXXX2065WPBHXXXXXXX74', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(825, 'WMXXX2065WPBHXXXXXXX75', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(826, 'WMXXX2065WPBHXXXXXXX76', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(827, 'WMXXX2065WPBHXXXXXXX77', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(828, 'WMXXX2065WPBHXXXXXXX78', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(829, 'WMXXX2065WPBHXXXXXXX79', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(830, 'WMXXX2065WPBHXXXXXXX80', 4, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(831, 'CTXX12XXXSSSS25N161575', 24, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(832, 'CTXX13XXXSSSS25N161575', 24, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(833, 'CTXX14XXXSSSS25N161575', 24, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(834, 'ACXX64015LDAEXXXXXXX88', 8, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(835, 'TVXX17032ZBZBXXXXXXX26', 10, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(836, 'WC1002WDCSSSS013161065', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(837, 'WC1002WDCSSSS013161066', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(838, 'WC1002WDCSSSS013161067', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(839, 'WC1002WDCSSSS013161068', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(840, 'WC1002WDCSSSS013161069', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(841, 'WC1002WDCSSSS013161070', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(842, 'WC1002WDCSSSS013161071', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(843, 'WC1002WDCSSSS013161072', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(844, 'MTXX45QSMSSSSXXXXXXX79', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(845, 'MTXX45QSMSSSSXXXXXXX80', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(846, 'MTXX45QSMSSSSXXXXXXX81', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(847, 'MTXX45QSMSSSSXXXXXXX82', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(848, 'MTXX45QSMSSSSXXXXXXX83', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(849, 'MTXX45QSMSSSSXXXXXXX84', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(850, 'MTXX45QSMSSSSXXXXXXX85', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(851, 'MTXX45QSMSSSSXXXXXXX86', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(852, 'MTXX45QSMSSSSXXXXXXX87', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(853, 'MTXX45QSMSSSSXXXXXXX88', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(854, 'MTXX45QSMSSSSXXXXXXX89', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(855, 'MTXX45QSMSSSSXXXXXXX90', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(856, 'MTXX45QSMSSSSXXXXXXX91', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(857, 'MTXX45QSMSSSSXXXXXXX92', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(858, 'MTXX45QSMSSSSXXXXXXX93', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(859, 'MTXX45QSMSSSSXXXXXXX94', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(860, 'MTXX45QSMSSSSXXXXXXX95', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(861, 'MTXX45QSMSSSSXXXXXXX96', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(862, 'MTXX45QSMSSSSXXXXXXX97', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(863, 'MTXX45QSMSSSSXXXXXXX98', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(864, 'MTXX45QSMSSSSXXXXXXX99', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(865, 'MTXX45QSMSSSSXXXXXX100', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(866, 'MTXX45QSMSSSSXXXXXX101', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(867, 'MTXX45QSMSSSSXXXXXX102', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(868, 'MTXX45QSMSSSSXXXXXX103', 31, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(869, 'WC1002WDCSSSS013161073', 28, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(870, 'WC1002WDCSSSS01316XXXX', 36, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(871, 'ICXX26ICDXXBHXXXXXXX27', 35, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(872, 'WC1002WDCSSSS013161074', 36, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(873, 'WC1002WDCSSSS013161101', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(874, 'WC1002WDCSSSS013161102', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(875, 'WC1002WDCSSSS013161103', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(876, 'MTXX45QSMSSSSXXXXXX104', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(877, 'MTXX45QSMSSSSXXXXXX105', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(878, 'MTXX45QSMSSSSXXXXXX106', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(879, 'MTXX45QSMSSSSXXXXXX107', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(880, 'MTXX45QSMSSSSXXXXXX108', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(881, 'MTXX45QSMSSSSXXXXXX109', 32, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(882, 'WC1002WDCSSSS013161104', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(883, 'WC1002WDCSSSS013161105', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(884, 'WC1002WDCSSSS013161106', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(885, 'WC1002WDCSSSS013161107', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(886, 'WC1002WDCSSSS013161108', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(887, 'WC1002WDCSSSS013161109', 29, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(888, 'WC1002WDCSSSS013161110', 37, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(889, 'WC1002WDCSSSS013161111', 37, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(890, 'WC1002WDCSSSS013161112', 37, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(891, 'EB1002FUBATAFXXXXXXX80', 16, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(892, 'EB1002FUBATAFXXXXXXX81', 16, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(893, 'CYXX23HSKHSBCXXXXXXX25', 19, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(894, 'CYXX23HSKHSBCXXXXXXX24', 19, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(895, 'TU1001WTVYHYH25D151205', 27, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016),
(896, 'TU1001WTVYHYH25D151206', 27, 0, 0, 0, 0, 0, '', '', '0000-00-00', 0.00, 0.00, '', '0000-00-00', 0.00, '', '', 0, 0, 6, 2016);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `ptdcatgry_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`ptdcatgry_id`, `name`, `description`, `status`) VALUES
(1, 'Appliances\n', '', 1),
(2, 'Entertainment\n', '', 1),
(3, 'Furniture\n', '', 1),
(4, 'Fitness\n', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(30) NOT NULL,
  `image_name` varchar(40) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `file_type` varchar(30) NOT NULL,
  `productkey` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `image_name`, `image_path`, `status`, `file_type`, `productkey`) VALUES
(1, 'Chrysanthemum.jpg', '/others/Chrysanthemum.jpg', 0, 'others', 'asd3333Refrigeratorsadfasdf156'),
(2, 'Chrysanthemum.jpg', '/productimages/Chrysanthemum.jpg', 0, 'productimg', 'asd3333Refrigeratorsadfasdf156'),
(3, 'Desert.jpg', '/productimages/Desert.jpg', 0, 'productimg', 'asd3333Refrigeratorsadfasdf156'),
(4, 'Hydrangeas.jpg', '/productimages/Hydrangeas.jpg', 0, 'productimg', 'asd3333Refrigeratorsadfasdf156'),
(5, 'Jellyfish.jpg', '/productimages/Jellyfish.jpg', 0, 'productimg', 'asd3333Refrigeratorsadfasdf156'),
(6, 'Koala.jpg', '/productimages/Koala.jpg', 0, 'productimg', 'asd3333Refrigeratorsadfasdf156'),
(7, 'Lighthouse.jpg', '/productimages/Lighthouse.jpg', 0, 'productimg', 'asd3333Refrigeratorsadfasdf156'),
(8, 'Penguins.jpg', '/productimages/Penguins.jpg', 0, 'productimg', 'asd3333Refrigeratorsadfasdf156'),
(9, 'Chrysanthemum.jpg', '/others/Chrysanthemum.jpg', 0, 'others', 'asd4344RefrigeratorCT096176171'),
(10, 'Hydrangeas.jpg', '/productimages/Hydrangeas.jpg', 0, 'productimg', 'asd4344RefrigeratorCT096176171');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category`
--

CREATE TABLE `product_sub_category` (
  `pr_sub_id` int(11) NOT NULL,
  `pr_cat_id` int(11) NOT NULL,
  `pr_sub_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category`
--

INSERT INTO `product_sub_category` (`pr_sub_id`, `pr_cat_id`, `pr_sub_name`, `description`, `status`) VALUES
(1, 1, 'Refrigerator', 'asd', 0),
(2, 1, 'Washing Machine', '', 0),
(3, 2, 'Television', '', 1),
(4, 2, 'Multimedia Speakers', '', 0),
(5, 3, 'Sofa', '', 1),
(6, 3, 'TV Unit', '', 1),
(7, 4, 'Cycle', '', 1),
(8, 1, 'Air Conditioner', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `ptdvar_id` int(11) NOT NULL,
  `ptd_sub_catgry_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `tenure` int(11) NOT NULL,
  `rent_cost` float(11,2) NOT NULL,
  `security_deposit_price` float(11,2) NOT NULL,
  `processing_fee` float(11,2) NOT NULL,
  `ins_fee` float(11,2) NOT NULL,
  `other_fee` float(11,2) NOT NULL,
  `variant_code` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`ptdvar_id`, `ptd_sub_catgry_id`, `name`, `description`, `status`, `tenure`, `rent_cost`, `security_deposit_price`, `processing_fee`, `ins_fee`, `other_fee`, `variant_code`) VALUES
(1, 1, '190 L Single Door', 'Refrigerator', 1, 3, 1800.00, 1800.00, 500.00, 0.00, 0.00, 0),
(2, 1, '240 L Double Door', 'Refrigerator', 1, 3, 2700.00, 2700.00, 500.00, 0.00, 0.00, 0),
(3, 0, '320 L Double Door', 'Refrigerator', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(4, 2, '6 kg', 'Washing Machine', 1, 3, 700.00, 2100.00, 500.00, 0.00, 0.00, 0),
(5, 2, '6.2 kg', 'Washing Machine', 1, 3, 800.00, 2400.00, 500.00, 0.00, 0.00, 0),
(6, 0, '6.5 KG', 'Washing Machine', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(7, 8, '1.0 Ton Split AC', 'Air Conditioner', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(8, 0, '1.5 Ton Split AC', 'Air Conditioner', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(9, 0, '20 L Convection', 'Microwave', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(10, 0, '32" LED', 'Television', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(11, 0, '40" LED', 'Television', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(12, 0, '5.1 DVD Home Theatre', 'Home Theatre', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(13, 0, 'Hybrid Cannondale', 'Cycle', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(14, 0, 'Hybrid Schwinn', 'Cycle', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(15, 0, 'Hybrid Montra', 'Cycle', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(16, 0, 'Fitness Upright Bike', 'Exercise Bike', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(17, 0, 'Hercules', 'Cycle', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(18, 0, 'Hybrid Montra', 'Cycle', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(19, 0, 'Kross Bolt 21', 'Cycle', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(20, 0, '4 Seater', 'Dining Table', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(21, 0, '5 Seater', 'Dining Table', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(22, 0, '6 Seater', 'Dining Table', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(23, 0, 'Cabin Chair', '', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(24, 0, 'Coffee Table', '', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(25, 0, 'Wooden Sofa 3 Seater', '', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(26, 0, 'Wooden Sofa 2 Seater', '', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(27, 0, 'Wood TV Unit with Drawer', '', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(28, 0, 'Queen Size', 'Wooden Cot', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(29, 0, 'Single Size', 'Wooden Cot', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(30, 0, 'Food Processor', '', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(31, 0, 'Queen Size', 'Mattress', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(32, 0, 'Single Size', 'Mattress', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(33, 0, '50" LED', 'Television', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(34, 0, 'Queen Size', 'Iron Cot', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(35, 0, 'Queen Size', 'Iron Cot with Mattress', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(36, 0, 'Queen Size', 'Wooden Cot with Mattress', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(37, 0, 'Single Size', 'Wooden Cot with Mattress', 0, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_cost`
--

CREATE TABLE `product_variant_cost` (
  `id` int(11) NOT NULL,
  `ptdvar_id` int(11) NOT NULL,
  `rent_cost` float(11,2) NOT NULL,
  `security_deposit_price` float(11,2) NOT NULL,
  `processing_fee` float(11,2) NOT NULL,
  `ins_fee` float(11,2) NOT NULL,
  `other_fee` float(11,2) NOT NULL,
  `tenure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant_cost`
--

INSERT INTO `product_variant_cost` (`id`, `ptdvar_id`, `rent_cost`, `security_deposit_price`, `processing_fee`, `ins_fee`, `other_fee`, `tenure`) VALUES
(1, 1, 1800.00, 1800.00, 500.00, 0.00, 0.00, 3),
(2, 2, 2700.00, 2700.00, 500.00, 0.00, 0.00, 3),
(3, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(4, 4, 700.00, 2100.00, 500.00, 0.00, 0.00, 3),
(5, 5, 800.00, 2400.00, 500.00, 0.00, 0.00, 3),
(6, 6, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(7, 7, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(8, 8, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(9, 9, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(10, 10, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(11, 11, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(12, 12, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(13, 13, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(14, 14, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(15, 15, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(16, 16, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(17, 17, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(18, 18, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(19, 19, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(20, 20, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(21, 21, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(22, 22, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(23, 23, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(24, 24, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(25, 25, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(26, 26, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(27, 27, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(28, 28, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(29, 29, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(30, 30, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(31, 31, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(32, 32, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(33, 33, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(34, 34, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(35, 35, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(36, 36, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(37, 37, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(38, 1, 1400.00, 2400.00, 500.00, 0.00, 0.00, 5),
(39, 1, 1400.00, 2400.00, 500.00, 0.00, 0.00, 8);

-- --------------------------------------------------------

--
-- Table structure for table `rent_history`
--

CREATE TABLE `rent_history` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `extra_amaount` float(11,2) NOT NULL,
  `pending_cost` float(11,2) NOT NULL,
  `rent_cost` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent_money_transaction`
--

CREATE TABLE `rent_money_transaction` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `rent_per_month` float(11,2) NOT NULL,
  `total_cost` float(11,2) NOT NULL,
  `pending_cost` float(11,2) NOT NULL,
  `extra_amaount` float(11,2) NOT NULL,
  `received_rent_cost _that_time` float(11,2) NOT NULL,
  `rent_payment_mode` varchar(20) NOT NULL,
  `rent_collected_on` date NOT NULL,
  `rent_collected_by` varchar(30) NOT NULL,
  `rent_deposit_by` varchar(30) NOT NULL,
  `rent_deposit_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent_vendor`
--

CREATE TABLE `rent_vendor` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `residential_status`
--

CREATE TABLE `residential_status` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `residential_status`
--

INSERT INTO `residential_status` (`id`, `name`, `description`, `status`) VALUES
(1, 'Permanent', '', 1),
(2, 'Rented', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_table`
--

CREATE TABLE `service_table` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `service_applied_date` date NOT NULL,
  `issue_type` varchar(30) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `is_serviced` tinyint(4) NOT NULL,
  `serviced_by` varchar(30) NOT NULL,
  `service_period` int(5) NOT NULL,
  `service_amount` float(11,2) NOT NULL,
  `from_date` int(11) NOT NULL,
  `to_date` int(11) NOT NULL,
  `is_waiver` tinyint(4) NOT NULL,
  `waiver_from_date` date NOT NULL,
  `waiver_to_date` date NOT NULL,
  `customer_fd_back` varchar(100) NOT NULL,
  `is_paid` tinyint(4) NOT NULL,
  `received_ammout` float(11,2) NOT NULL,
  `payment_mode` varchar(30) NOT NULL,
  `colected_on` date NOT NULL,
  `colected_by` varchar(30) NOT NULL,
  `deposit_by` varchar(30) NOT NULL,
  `deposit_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_table`
--

INSERT INTO `service_table` (`id`, `enquiry_id`, `customer_id`, `product_id`, `service_applied_date`, `issue_type`, `remarks`, `is_serviced`, `serviced_by`, `service_period`, `service_amount`, `from_date`, `to_date`, `is_waiver`, `waiver_from_date`, `waiver_to_date`, `customer_fd_back`, `is_paid`, `received_ammout`, `payment_mode`, `colected_on`, `colected_by`, `deposit_by`, `deposit_on`) VALUES
(1, '', 'PR0056', 'TV1002032ZBZB31D151011', '2017-06-15', '1', 'aaa', 0, '', 0, 0.00, 0, 0, 0, '0000-00-00', '0000-00-00', '', 0, 0.00, '', '0000-00-00', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `description`, `status`) VALUES
(1, 'Tamil Nadu', '', 1),
(2, 'Andhra Pradesh', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transport_expenses`
--

CREATE TABLE `transport_expenses` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `transfer_date` date NOT NULL,
  `amount_spent` float(11,2) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `driver_id` varchar(30) NOT NULL,
  `license_no` varchar(30) NOT NULL,
  `valid_till` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `description`, `status`) VALUES
(7, 'Chandra Traders', 'CT', 1),
(8, 'Cyclogens', 'CY', 0),
(9, 'dsafdsaf', 'sadfasdf', 1),
(10, 'dsfa', 'asdfas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`id`, `city_id`, `name`, `description`, `status`) VALUES
(1, 1, 'Thiruvottiyury', '', 1),
(2, 1, 'Manali', '', 1),
(3, 1, 'Madhavaram', '', 1),
(4, 1, 'Royapuram', '', 1),
(5, 2, 'East', '', 1),
(6, 2, 'West', '', 1),
(7, 2, 'North', '', 1),
(8, 2, 'South', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_bank_account_details`
--
ALTER TABLE `customer_bank_account_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_contact`
--
ALTER TABLE `customer_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_general_detail`
--
ALTER TABLE `customer_general_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_professional`
--
ALTER TABLE `customer_professional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_reference_detail`
--
ALTER TABLE `customer_reference_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_money_transaction`
--
ALTER TABLE `deposit_money_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_products`
--
ALTER TABLE `enquiry_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_table`
--
ALTER TABLE `mapping_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_invoice`
--
ALTER TABLE `month_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nativity`
--
ALTER TABLE `nativity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrentz_employees`
--
ALTER TABLE `payrentz_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`ptdcatgry_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`pr_sub_id`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`ptdvar_id`);

--
-- Indexes for table `product_variant_cost`
--
ALTER TABLE `product_variant_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_money_transaction`
--
ALTER TABLE `rent_money_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_vendor`
--
ALTER TABLE `rent_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residential_status`
--
ALTER TABLE `residential_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_table`
--
ALTER TABLE `service_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;
--
-- AUTO_INCREMENT for table `customer_bank_account_details`
--
ALTER TABLE `customer_bank_account_details`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_contact`
--
ALTER TABLE `customer_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;
--
-- AUTO_INCREMENT for table `customer_general_detail`
--
ALTER TABLE `customer_general_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=712;
--
-- AUTO_INCREMENT for table `customer_professional`
--
ALTER TABLE `customer_professional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `customer_reference_detail`
--
ALTER TABLE `customer_reference_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `deposit_money_transaction`
--
ALTER TABLE `deposit_money_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `enquiry_products`
--
ALTER TABLE `enquiry_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5372;
--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `mapping_table`
--
ALTER TABLE `mapping_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730;
--
-- AUTO_INCREMENT for table `month_invoice`
--
ALTER TABLE `month_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `nativity`
--
ALTER TABLE `nativity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payrentz_employees`
--
ALTER TABLE `payrentz_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=897;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `ptdcatgry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  MODIFY `pr_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product_variant_cost`
--
ALTER TABLE `product_variant_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `rent_money_transaction`
--
ALTER TABLE `rent_money_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rent_vendor`
--
ALTER TABLE `rent_vendor`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `residential_status`
--
ALTER TABLE `residential_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `service_table`
--
ALTER TABLE `service_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
