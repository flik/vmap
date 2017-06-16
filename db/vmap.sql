-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2017 at 12:50 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vmap`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `contact_detail` text NOT NULL,
  `marketing_document_original_name` varchar(255) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `logo_original_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `marketing_document_new_name` varchar(255) NOT NULL,
  `logo_new_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `contact_detail`, `marketing_document_original_name`, `admin`, `logo_original_name`, `created_at`, `updated_at`, `marketing_document_new_name`, `logo_new_name`) VALUES
(1, 'No. 47 Alfred Rewane Road, Eti-Osa, Ikoyi, Lagos', 'Assignment.pdf', 'fdsfsddsds', 'API.png', '2017-06-16 00:25:26', '2017-06-16 00:25:26', 'ng_files/8061497590726Assignment.pdf', 'ng_logos/4691497590726API.png'),
(2, 'aaaaX', 'c.txt', 'fdsfsddsdsX', '000000PAGE1001.GIF', '2017-06-16 00:27:28', '2017-06-16 00:27:28', 'ng_logos/8581497590848c.txt', 'ng_logos/1891497590848000000PAGE1001.GIF'),
(3, 'VV', 'c.txt', 'SSSS', '000000PAGE1001.GIF', '2017-06-16 00:33:08', '2017-06-16 00:33:08', 'ng_logos/4691497591188c.txt', 'ng_logos/3441497591188000000PAGE1001.GIF'),
(4, 'VV', 'c.txt', 'SSSS', '000000PAGE1001.GIF', '2017-06-16 00:36:58', '2017-06-16 00:36:58', 'ng_logos/3321497591418c.txt', 'ng_logos/4131497591418000000PAGE1001.GIF'),
(5, 'VV', 'c.txt', 'SSSS', '000000PAGE1001.GIF', '2017-06-16 00:37:22', '2017-06-16 00:37:22', 'ng_logos/2621497591442c.txt', 'ng_logos/1301497591442000000PAGE1001.GIF'),
(6, 'VV', 'c.txt', 'SSSS', '000000PAGE1001.GIF', '2017-06-16 00:38:35', '2017-06-16 00:38:35', 'ng_logos/691497591515c.txt', 'ng_logos/6321497591515000000PAGE1001.GIF'),
(7, 'VV', 'c.txt', 'SSSS', '000000PAGE1001.GIF', '2017-06-16 00:40:02', '2017-06-16 00:40:02', 'ng_logos/6551497591602c.txt', 'ng_logos/2731497591602000000PAGE1001.GIF'),
(8, 'No. 49 Xlfred Rewane Road, Eti-Osa, Ikoyi, Lagos', 'c.txt', 'adminB', '000000PAGE1001.GIF', '2017-06-16 01:08:29', '2017-06-16 01:08:29', 'ng_logos/461497593309c.txt', 'ng_logos/9151497593309000000PAGE1001.GIF'),
(9, 'No. 149 Xlfred Aewane Road, Eti-Dsa, Ikoyi', 'firefox addone development', 'Andrio', 'b.jpg', '2017-06-16 05:18:57', '2017-06-16 05:18:57', 'ng_logos/3801497608337firefox_addone_development.txt', 'ng_logos/7421497608337b.jpg'),
(10, 'No. 249 Xlfred Aewane Road, Eti-ssa, Ikoyi', 're', 'Awert', 'b.jpg', '2017-06-16 05:24:14', '2017-06-16 05:24:14', 'ng_logos/8991497608654re.txt', 'ng_logos/7581497608654b.jpg'),
(11, 'No. 249 Xlfred Aewane Road, Eti-ssa, Ikoyi', 're', 'Awert', 'b.jpg', '2017-06-16 05:26:37', '2017-06-16 05:26:37', 'ng_logos/3371497608797re.txt', 'ng_logos/8261497608797b.jpg'),
(12, 'No. 419 Xlfred Rewane Road, Eti-Osa, Ikoyi, Lagos', 're', 'AwertX', 'download.jpg', '2017-06-16 05:34:46', '2017-06-16 05:34:46', 'ng_logos/871497609286re.txt', 'ng_logos/971497609286download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `place` text NOT NULL,
  `lati` varchar(49) NOT NULL,
  `longi` varchar(49) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'N',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `place`, `lati`, `longi`, `start_date`, `end_date`, `status`, `created_at`) VALUES
(1, 'Event A', 'Bondi Beach', '-33.890542', '151.274856', '2017-06-30', '2017-07-31', 'Y', '2017-06-14 23:11:16'),
(2, 'Event B', 'Coogee Beach', '-33.923036', '151.259052', '2017-06-27', '2017-07-29', 'Y', '2017-06-14 23:12:25'),
(3, 'Event C', 'Cronulla Beach', '-34.028249', '151.157507', '2017-06-22', '2017-07-29', 'Y', '2017-06-14 23:13:05'),
(4, 'Event D', 'Manly Beach', '-33.80010128657071', '151.28747820854187', '2017-06-16', '2017-07-21', 'Y', '2017-06-14 23:13:36'),
(5, 'Maroubra Event', 'Maroubra Beach', '-33.950198', '151.259302', '2017-06-23', '2017-07-22', 'Y', '2017-06-14 23:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `event_stands`
--

CREATE TABLE `event_stands` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `picture` text NOT NULL,
  `detail` text NOT NULL,
  `status` enum('Free','Booked') NOT NULL DEFAULT 'Free',
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_stands`
--

INSERT INTO `event_stands` (`id`, `event_id`, `price`, `picture`, `detail`, `status`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 100, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:31:11', '2017-06-15 03:31:11'),
(2, 1, 200, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:31:41', '2017-06-15 03:31:41'),
(3, 1, 250, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:32:00', '2017-06-15 03:32:00'),
(4, 2, 250, 'http://localhost/vmap/laravel/public/img/2.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 4 Star: Dome Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Free', NULL, '2017-06-15 03:32:34', '2017-06-15 03:32:34'),
(5, 1, 230, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:33:31', '2017-06-15 03:33:31'),
(6, 2, 450, 'http://localhost/vmap/laravel/public/img/2.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 4 Star: Dome Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Free', NULL, '2017-06-15 03:33:32', '2017-06-15 03:33:32'),
(7, 2, 210, 'http://localhost/vmap/laravel/public/img/2.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 4 Star: Dome Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Booked', 9, '2017-06-15 03:33:32', '2017-06-16 05:18:57'),
(8, 2, 310, 'http://localhost/vmap/laravel/public/img/2.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 4 Star: Dome Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Free', NULL, '2017-06-15 03:33:32', '2017-06-15 03:33:32'),
(9, 1, 250, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:33:49', '2017-06-15 03:33:49'),
(10, 1, 250, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Booked', 12, '2017-06-15 03:33:49', '2017-06-16 05:34:47'),
(11, 3, 150, 'http://localhost/vmap/laravel/public/img/3.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 3 Star: ER Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Free', NULL, '2017-06-15 03:34:24', '2017-06-15 03:34:24'),
(12, 3, 250, 'http://localhost/vmap/laravel/public/img/3.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 3 Star: ER Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Free', NULL, '2017-06-15 03:34:24', '2017-06-15 03:34:24'),
(13, 3, 450, 'http://localhost/vmap/laravel/public/img/3.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 3 Star: ER Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Free', NULL, '2017-06-15 03:34:24', '2017-06-15 03:34:24'),
(14, 3, 350, 'http://localhost/vmap/laravel/public/img/3.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner 3 Star: ER Hotel - Pia Bella Hotel - Riverside Hotel - Hideaway Club ', 'Free', NULL, '2017-06-15 03:34:24', '2017-06-15 03:34:24'),
(15, 4, 150, 'http://localhost/vmap/laravel/public/img/4.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:34:39', '2017-06-15 03:34:39'),
(16, 4, 250, 'http://localhost/vmap/laravel/public/img/4.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:34:39', '2017-06-15 03:34:39'),
(17, 4, 450, 'http://localhost/vmap/laravel/public/img/4.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:34:39', '2017-06-15 03:34:39'),
(18, 4, 350, 'http://localhost/vmap/laravel/public/img/4.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Booked', 11, '2017-06-15 03:34:39', '2017-06-16 05:26:37'),
(19, 5, 150, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:34:56', '2017-06-15 03:34:56'),
(20, 5, 250, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:34:56', '2017-06-15 03:34:56'),
(21, 5, 450, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:34:56', '2017-06-15 03:34:56'),
(22, 5, 350, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:34:56', '2017-06-15 03:34:56'),
(23, 5, 150, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:35:08', '2017-06-15 03:35:08'),
(24, 5, 250, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Free', NULL, '2017-06-15 03:35:08', '2017-06-15 03:35:08'),
(25, 5, 450, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Booked', 8, '2017-06-15 03:35:08', '2017-06-16 01:08:29'),
(26, 5, 350, 'http://localhost/vmap/laravel/public/img/1.jpg', 'Facilities Tables Chairs Rest Room Power supply Parking Space Air Conditioner', 'Booked', 7, '2017-06-15 03:35:08', '2017-06-16 00:40:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_stands`
--
ALTER TABLE `event_stands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `event_stands`
--
ALTER TABLE `event_stands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event_stands` (`id`);

--
-- Constraints for table `event_stands`
--
ALTER TABLE `event_stands`
  ADD CONSTRAINT `event_stands_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
