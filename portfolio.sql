-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2020 at 02:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'noida'),
(22, 'hiren'),
(28, 'timberwoodd'),
(30, 'goodwood'),
(31, 'shubham'),
(35, 'badal');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `project_id` int(11) DEFAULT NULL,
  `project_images` varchar(255) DEFAULT NULL,
  `images_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `name`, `password`) VALUES
(3, 'hiren', 'hiren', 'hiren'),
(9, 'nir', 'nir', 'nir'),
(10, 'badal', 'badal', 'badal');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `technologies_used` varchar(255) DEFAULT NULL,
  `project_link` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `post_images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `technologies_used`, `project_link`, `category_id`, `description`, `post_images`) VALUES
(29, 'dasd', 'dasd', 'dasd', NULL, 'dasd', 'dasd'),
(30, 'rbv', 'fveve', 'refvev', NULL, 'vevevfvffve', '/Users/bhavesh/.bitnami/stackman/machines/xampp/volumes/root/htdocs/phpsandbox/portfolio/new/uploads/._IMG1.jpg'),
(37, 'hello', 'hello', 'hello', 1, 'hello', 'img/Screenshot_20200708-011907_Instagram.jpg'),
(41, 'newyorik', 'machine', 'idk', 22, 'jsdakjbd', 'img/Screenshot_20200708-011907_Instagram.jpg'),
(42, 'iewfhio', 'ofidoah', 'hfdoih', 1, 'dfhsdhfod', 'img/Screenshot_20200708-011907_Instagram.jpg'),
(43, 'newyorik', 'machine', 'idk', 22, 'jsdakjbd', 'img/Screenshot_20200708-011907_Instagram.jpg'),
(44, 'hello', 'world', 'www.123.com', 22, 'awesome man', 'img/Screenshot_20200708-011907_Instagram.jpg'),
(45, 'e-gyan', 'html', 'www.123.com', 35, 'awesome site', 'img/WhatsApp Image 2020-06-16 at 03.23.57.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
