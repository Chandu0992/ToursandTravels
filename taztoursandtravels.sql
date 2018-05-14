-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 05:15 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taztoursandtravels`
--

-- --------------------------------------------------------

--
-- Table structure for table `tripsheet`
--

CREATE TABLE `tripsheet` (
  `Sno` int(11) NOT NULL,
  `TS` varchar(20) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `Company` varchar(30) NOT NULL,
  `customer` varchar(30) NOT NULL,
  `CustMobileNo` varchar(10) NOT NULL,
  `TourDetails` varchar(30) NOT NULL,
  `VechileNo` varchar(30) NOT NULL,
  `Driver` varchar(30) NOT NULL,
  `InKm` varchar(11) NOT NULL,
  `OutKm` varchar(11) NOT NULL,
  `TotalKm` varchar(5) NOT NULL,
  `InTime` varchar(10) NOT NULL,
  `TotalHrs` varchar(11) NOT NULL,
  `Adv` varchar(11) NOT NULL,
  `TotalAmount` varchar(11) NOT NULL,
  `Bal` varchar(11) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Remarks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripsheet`
--

INSERT INTO `tripsheet` (`Sno`, `TS`, `Date`, `Company`, `customer`, `CustMobileNo`, `TourDetails`, `VechileNo`, `Driver`, `InKm`, `OutKm`, `TotalKm`, `InTime`, `TotalHrs`, `Adv`, `TotalAmount`, `Bal`, `Status`, `Remarks`) VALUES
(1, '1001', '2018-05-14T20:26', 'Taj Tours and Travels', 'Chandu', '8008922974', 'Goa', 'AP31TV5786', 'Santosh', '5000', '5500', '500', '5:00pm', '20', '5000', '7000', '2000', 'good', 'nice');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tripsheet`
--
ALTER TABLE `tripsheet`
  ADD PRIMARY KEY (`Sno`),
  ADD UNIQUE KEY `TS` (`TS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tripsheet`
--
ALTER TABLE `tripsheet`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
