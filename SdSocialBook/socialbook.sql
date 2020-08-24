-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2017 at 02:21 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `messege`
--

CREATE TABLE `messege` (
  `id` int(11) NOT NULL,
  `send_to` varchar(50) DEFAULT NULL,
  `send_from` varchar(50) DEFAULT NULL,
  `msg` text,
  `send_date` date DEFAULT NULL,
  `m_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messege`
--

INSERT INTO `messege` (`id`, `send_to`, `send_from`, `msg`, `send_date`, `m_time`) VALUES
(1, 'Sadi', 'Ab_hasan', 'Hi ...', '2017-08-06', '14:30:57'),
(2, 'Sadi', 'Ab_hasan', 'Hello', '2017-08-06', '15:01:12'),
(3, 'Ab_hasan', 'Sadi', 'HJJ', '2017-08-06', '15:01:56'),
(4, 'Az', 'Raken', 'Hi ... ki obsta ?\r\n\r\n', '2017-08-06', '18:51:53'),
(5, 'Raken', 'Az', 'valo ...tmr ki khbr ?', '2017-08-06', '18:55:36'),
(6, 'FaisalXd', 'Ab_hasan', 'how are you ?? faisal', '2017-08-06', '21:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text,
  `date_added` date DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL,
  `user_posted_to` varchar(50) DEFAULT NULL,
  `time_added` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `date_added`, `added_by`, `user_posted_to`, `time_added`) VALUES
(1, 'messi is the greatest footballers of all tym.:).no argue about that.', '2017-08-06', 'Ab_hasan', 'test123', '02:53:44'),
(2, 'AREFIN SIR ONEK VALO', '2017-08-06', 'Sadi', 'test123', '15:04:09'),
(3, 'Ajker dintai kufa ....:(', '2017-08-06', 'Raken', 'test123', '18:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `date`, `image`) VALUES
(1, 'Ab_hasan', 'Abul', 'Hasan', 'ab@yahoo.com', '123456', '2017-05-12', 'Sakib.jpg'),
(2, 'FaisalXd', 'Faisal', 'Ahmed', 'fas@gmail.com', '321654', '2017-07-28', '0'),
(3, 'Az', 'Shurid', 'Sohom', 'Az@gmail.com', '2468', '2017-08-03', 'AZ.jpg'),
(4, 'Sadi', 'Saidul', 'Arefin', 'sadi@gmail.com', '123456789', '2017-08-03', 'Sadi.jpg'),
(5, 'Assef', 'Asif', 'Khan', 'asif69@yahoo.com', '456654', '2017-08-03', '0'),
(6, 'Raken', 'Rafi', 'Rakin', 'rak@gmail.com', '987654321', '2017-08-06', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messege`
--
ALTER TABLE `messege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messege`
--
ALTER TABLE `messege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
