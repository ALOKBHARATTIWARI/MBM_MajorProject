-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 08:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(1, 123214521452, 'Tollygunge', 'Robbery', '2018-12-06', 'Home has been Robbed.', 'Assigned', 'Charge sheet filled', 't101'),
(2, 55123316, 'punjab', 'muder', '2021-11-10', 'A man has killed and found in the sea', 'assigned', 'In Process', 'a101'),
(3, 5464, 'Goa', 'cyber crime', '2018-12-21', 'Illegally smuggling of weapons', 'assigned', 'Charge sheet filled', 's203'),
(4, 5155162, 'Rohdu', 'kidnapping', '2021-10-13', 'A small boy is kidnapped from school', 'assigned', 'In Process', 'p102'),
(5, 6595563, 'kashmir', 'cyber crime', '2021-10-26', 'A man is buying illegal products from dark web', 'assigned', 'Charge sheet filled ', 's203'),
(6, 525452353, 'Chandigarh', 'cyber crime', '2021-11-01', 'A group of hackers hack a company and stole all the money ', 'assigned', 'In Process', 'a102'),
(7, 437657, 'Chandigarh', 'muder', '2018-12-06', 'A man is killed with knife ', 'assigned', 'In Process', 'p103'),
(8, 45746, 'Chandigarh', 'Robbery', '2021-10-13', 'diamonds are stolen from store', 'assigned', 'Charge sheet filled', 't101'),
(9, 489456, 'punjab', 'kidnapping', '2020-11-11', 'A boy is kidnapped from the river side ', 'assigned', 'In Process', 'a102'),
(10, 50000, 'Chandigarh', 'muder', '2021-11-08', 'A man is shoot with a gun ', 'assigned', 'In Process', 'p103'),
(11, 80000, 'Rohdu', 'cyber crime', '2021-07-07', 'smuggling drugs online ', 'assigned', 'In Process', 'k202');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@kp', 'head'),
('[vipul@123]', '[password]');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Manish Singh', 'a101', 'Murder', 'Anandapur', 'manish'),
('Jay Singh', 'a102', 'All', 'Anandapur', 'jay'),
('kathita', 'k202', 'Cyber crime', 'Rohdu', 'kathita'),
('Kumar Verma', 'p102', 'kidnapping ', 'shimla', 'verma'),
('piya', 'p103', 'muder', 'Chandigarh', 'piya'),
('Singham', 's203', 'Cyber crime', 'Goa', 'ramu'),
('Suvendu Ghosh', 't101', 'Robbery', 'Chandigarh', 'suvendu'),
('vipul', 'v101', 'kidnapping ', 'Chandigarh', 'vipul');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('a2002', 'Sibo', 'shimla', 'sibo'),
('b101', 'Bhole', 'Rohdu', 'bhole'),
('shah@anandapur', 'Shahbaz', 'Anandapur', 'shahbaz'),
('shivam@tollygunge', 'Shivam', 'Chandigarh', 'shivam');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(1, '2018-12-17 10:32:12', 'Criminal Caught'),
(2, '2018-12-17 10:32:15', 'Criminal Interrogated'),
(3, '2018-12-17 10:32:21', 'Criminal Accepted the Crime'),
(4, '2018-12-17 10:32:26', 'Criminal Charged'),
(5, '2018-12-17 10:32:51', 'The case has been moved to Court.'),
(6, '2018-12-17 10:32:59', 'Criminal Verified'),
(6, '2021-11-06 10:32:06', 'Criminal Verified');

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Satyansh Kumar', 'satyansh123@gmail.com', 'satyansh', 'Ranchi', 123214521452, 'Male', 9854123654);

--
-- Indexes for dumped tables
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
