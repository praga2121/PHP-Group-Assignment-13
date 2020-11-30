-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 11:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colleges`
--

-- --------------------------------------------------------

--
-- Table structure for table `collegeandreviews`
--

CREATE TABLE `collegeandreviews` (
  `college_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collegeandreviews`
--

INSERT INTO `collegeandreviews` (`college_id`, `review_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 9),
(4, 10),
(5, 11),
(5, 12),
(5, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `college_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `overall` varchar(100) NOT NULL,
  `teachingperformance` varchar(100) NOT NULL,
  `facilities` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `academicreputation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`college_id`, `name`, `overall`, `teachingperformance`, `facilities`, `price`, `academicreputation`) VALUES
(1, 'INTI International College', '8', '8', '7', '9', '9'),
(2, 'KDU College', '7', '7', '6', '7', '8'),
(3, 'DISTED College', '8', '8', '7', '8', '7'),
(4, 'Sentral College', '7', '7', '7', '7', '8'),
(5, 'SEGi College', '9', '9', '9', '9', '10'),
(6, 'MSU College', '8', '9', '8', '8', '8');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(1, 1, 'Max', 'I use this website daily to check on college rankings', 5, '2020-01-09 20:43:02'),
(2, 1, 'Andrea', 'Great website, its pretty user friendly', 4, '2020-01-09 21:00:41'),
(3, 1, 'Daniel', 'Website needs more content', 3, '2020-01-09 21:10:16'),
(4, 1, 'Dhilen', 'Great!', 5, '2020-01-09 23:51:05'),
(5, 1, 'Praga', 'Not much content.', 2, '2020-01-14 21:54:24'),
(6, 1, 'Sarah Jane', 'Fantasic website, has everything I need to know.', 5, '2020-01-16 17:34:27'),
(7, 1, 'Vishnu', 'Really like this website, helps me out a lot!', 5, '2020-01-16 17:35:12'),
(8, 1, 'Damien Tan', 'Please provide more quality content, I suggest having lesser and more minimalistic design for the web', 5, '2020-01-16 17:36:03'),
(9, 1, 'Wilfred Shea\r\n', 'This is great!', 4, '2020-11-29 18:44:27'),
(10, 1, 'Alys Devlin\r\n', 'Needs more content for ratings', 3, '2020-11-29 18:44:27'),
(11, 1, 'Masuma Frye\r\n', 'This page needs more colour!', 3, '2020-11-29 18:48:20'),
(12, 1, 'Eleasha Robinson\r\n', 'Thanks for making this! It helped me a lot.', 5, '2020-11-29 18:48:20'),
(13, 1, 'Soren Austin\r\n', 'It would be great if this page had more colours.', 4, '2020-11-29 18:48:20'),
(14, 1, 'Catrin Hawkins\r\n', 'This helped me a lot in deciding on my college!', 4, '2020-11-29 18:48:20'),
(15, 1, 'Lucia Goodman\r\n', 'This page is awesome', 4, '2020-11-29 18:48:20'),
(16, 1, 'Helen Lucero\r\n', 'Good page.', 3, '2020-11-29 18:48:20'),
(17, 1, 'Tristan Snider\r\n', 'Great design! I love the colors.', 4, '2020-11-29 18:48:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collegeandreviews`
--
ALTER TABLE `collegeandreviews`
  ADD PRIMARY KEY (`college_id`,`review_id`),
  ADD KEY `review_id` (`review_id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collegeandreviews`
--
ALTER TABLE `collegeandreviews`
  ADD CONSTRAINT `collegeandreviews_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `collegeandreviews_ibfk_2` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
