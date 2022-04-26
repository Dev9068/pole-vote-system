-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 12:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll_vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `pollid` double NOT NULL,
  `question` text DEFAULT NULL,
  `poll_date` double DEFAULT NULL,
  `options` varchar(250) DEFAULT NULL,
  `votes` varchar(250) DEFAULT NULL,
  `close` tinyint(1) DEFAULT NULL,
  `number_options` tinyint(3) DEFAULT NULL,
  `poll_timeout` double DEFAULT NULL,
  `voters` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `last_vote_date` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`pollid`, `question`, `poll_date`, `options`, `votes`, `close`, `number_options`, `poll_timeout`, `voters`, `public`, `last_vote_date`) VALUES
(1, 'What should be the timing for tomorrow\'s class?', 1524829888, 'After 5PM||||Before 5PM', '4||||1', 0, 2, 0, 6, 0, 1524836731),
(2, 'What amount of salary you got in Physicswallah? ', NULL, '1LPA||||2LPA||||3LPA||||4LPA', '1||||3||||3||||4', 0, 4, 0, 11, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`pollid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `pollid` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
