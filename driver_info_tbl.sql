-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 03:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tricycle_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver_info_tbl`
--

CREATE TABLE `driver_info_tbl` (
  `DriverID` int(11) NOT NULL,
  `TricycleID` int(11) NOT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `MName` varchar(50) DEFAULT NULL,
  `Sex` enum('Male','Female') NOT NULL,
  `BirthDate` date DEFAULT NULL,
  `ContactNo` int(11) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `BlockNo` int(11) DEFAULT NULL,
  `LotNo` int(11) DEFAULT NULL,
  `Street` varchar(50) DEFAULT NULL,
  `Barangay` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `LicenseNo` varchar(20) NOT NULL,
  `LicenseExpirationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_info_tbl`
--

INSERT INTO `driver_info_tbl` (`DriverID`, `TricycleID`, `LName`, `FName`, `MName`, `Sex`, `BirthDate`, `ContactNo`, `Email`, `BlockNo`, `LotNo`, `Street`, `Barangay`, `City`, `LicenseNo`, `LicenseExpirationDate`) VALUES
(4, 1, 'Oclares', 'Kyan', 'N/A', '', '2024-01-21', 2147483647, 'Email', 1, 2, 'Street', 'Barangay', 'City', '1234', '2024-01-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver_info_tbl`
--
ALTER TABLE `driver_info_tbl`
  ADD PRIMARY KEY (`DriverID`),
  ADD KEY `TricycleID` (`TricycleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver_info_tbl`
--
ALTER TABLE `driver_info_tbl`
  MODIFY `DriverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `driver_info_tbl`
--
ALTER TABLE `driver_info_tbl`
  ADD CONSTRAINT `driver_info_tbl_ibfk_1` FOREIGN KEY (`TricycleID`) REFERENCES `tricycle_info_tbl` (`TricycleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
