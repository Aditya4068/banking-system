-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 06:03 PM
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
-- Database: `id17227486_tsf_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Balance` int(10) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Email`, `Phone`, `Balance`) VALUES
(1, 'R. Okabe', 'rin.okabe@gmail.com', '9876543210', 8200),
(2, 'M. Kurisu', 'makise.chris@gmail.com', '9132916780', 4000),
(3, 'H. Daru', 'hashida.daru@gmail.com', '9145926151', 3100),
(4, 'H. Suzu', 'h_suzu@gmail.com', '9123481234', 8400),
(5, 'O. Hotarou', 'oreki_hotarou@gmail.com', '9123409090', 6400),
(6, 'K. Araragi', 'koyomi_45@gmail.com', '815738121', 7000),
(7, 'D. Kaiki', 'kaiki_san@gmail.com', '9111109000', 6700),
(8, 'S. Kanbaru', 'kanbaru_suruga@gmail.com', '9111226669', 8000),
(9, 'I. Iroha', 'isshiki_i@gmail.com', '8777857775', 8500),
(10, 'S. Hitagi', 'tsund_hitagi@gmail.com', '9001009000', 5500);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sno` int(5) NOT NULL,
  `Name1` varchar(30) NOT NULL,
  `Name2` varchar(30) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Sno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
