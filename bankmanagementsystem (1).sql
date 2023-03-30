-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 01:43 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `adminId` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin`, `Password`, `adminId`) VALUES
('rafeh', 'rafeh123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Id` int(11) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `DOB` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `CNIC` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `AccountType` varchar(45) NOT NULL,
  `cardNo` varchar(45) NOT NULL,
  `pinNo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Id`, `UserName`, `DOB`, `Gender`, `CNIC`, `Address`, `AccountType`, `cardNo`, `pinNo`) VALUES
(1, 'Ahsan Ali', 'Dec 20, 2001', 'Male', '351022322', 'Lahore, Pakistan', 'Current', '3035936013069612', '1215'),
(2, 'Rafeh', 'Jan 19, 2001', 'Male', '232435555', 'Lahore', 'Current', '3035936018239826', '5088');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `pinNo` int(11) NOT NULL,
  `transDate` varchar(45) NOT NULL,
  `transType` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`pinNo`, `transDate`, `transType`, `amount`) VALUES
(1215, 'Tue Dec 20 16:00:49 PKT 2022', 'Deposit', '10000'),
(1215, 'Tue Dec 20 16:01:04 PKT 2022', 'Withdraw', '5000'),
(5088, 'Mon Jan 02 23:09:10 PKT 2023', 'Deposit', '10000'),
(5088, 'Mon Jan 02 23:09:21 PKT 2023', 'Withdraw', '5000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
