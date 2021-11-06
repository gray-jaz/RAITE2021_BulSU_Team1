-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 09:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bulsu_one`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(25) NOT NULL,
  `account_type` tinyint(1) NOT NULL DEFAULT 0,
  `citizen_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `account_type`, `citizen_id`) VALUES
('erikasong', NULL, 'passW0rd', 0, '2021-100001'),
('jazergalvez', 'Jazer Galvez', 'pass1234*', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `id` varchar(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `house_address` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `sex` char(1) NOT NULL,
  `birthdate` datetime NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `vaccination_status` tinyint(1) NOT NULL DEFAULT 0,
  `covid_status` tinyint(1) NOT NULL DEFAULT 0,
  `covid_status_reported` datetime DEFAULT current_timestamp(),
  `quarantine_end_date` tinyint(1) DEFAULT NULL,
  `civil_status` varchar(255) NOT NULL,
  `employment_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`id`, `fname`, `mname`, `lname`, `house_address`, `barangay`, `municipality`, `province`, `sex`, `birthdate`, `contact_no`, `email`, `vaccination_status`, `covid_status`, `covid_status_reported`, `quarantine_end_date`, `civil_status`, `employment_status`) VALUES
('2021-100001', 'Erika', 'Simbulan', 'Raymundo', '#40 Sampaguita', 'Ligas', 'Malolos', 'Bulacan', 'F', '2000-03-25 00:00:00', '09324612629', 'erikasong1925@gmail.com', 0, 0, '2021-11-06 13:18:56', NULL, 'Single', 'Not employed'),
('2021-100011', 'Fname', 'M', 'LName', 'Add', 'Brgy', 'Mnc', 'Prv', 'M', '1989-04-25 00:00:00', '09234839814', 'markm@gmail.com', 0, 3, '2021-11-06 16:48:01', NULL, 'Single', 'Not Employed'),
('2021-10002', 'Mark', 'C', 'Bautista', 'Sampaguita Street, Block 2 Lot 3 Tagapayo', 'Mojon', 'Malolos', 'Bulacan', 'M', '1989-04-25 00:00:00', '09234839814', 'markm@gmail.com', 0, 1, '2021-11-06 16:48:01', NULL, 'Single', 'Not Employed'),
('2021-10005', 'Joy', 'A', 'Maglalang', 'Sampaguita Street, Block 2 Lot 3 Tagapayo', 'Mojon', 'Malolos', 'Bulacan', 'F', '1989-04-25 00:00:00', '09234839814', 'joylang@gmail.com', 0, 0, '2021-11-06 16:48:09', NULL, 'Single', 'Not Employed'),
('2021-10006', 'Gerald', 'J', 'Reyes', 'Sampaguita Street, Block 2 Lot 3 Tagapayo', 'Mojon', 'Malolos', 'Bulacan', 'M', '1989-04-25 00:00:00', '09234839814', 'gerald@gmail.com', 0, 2, '2021-11-06 16:48:09', NULL, 'Single', 'Not Employed');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tracing`
--

CREATE TABLE `contact_tracing` (
  `id` int(11) NOT NULL,
  `exposure_to_covid_patient` tinyint(1) NOT NULL,
  `exposure_outside_province` tinyint(1) NOT NULL,
  `exposure_overseas_travel` tinyint(1) NOT NULL,
  `living_status` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL,
  `citizen_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `id` int(11) NOT NULL,
  `category` tinyint(1) NOT NULL,
  `available_id_card` varchar(255) NOT NULL,
  `vaccine_name` varchar(255) NOT NULL,
  `vaccine_first_date` datetime NOT NULL DEFAULT current_timestamp(),
  `vaccine_second_date` datetime DEFAULT NULL,
  `philhealth_no` varchar(255) DEFAULT NULL,
  `pregnant` tinyint(1) NOT NULL,
  `breastfeeding` tinyint(1) NOT NULL,
  `drug_allergy` tinyint(1) NOT NULL,
  `food_allery` tinyint(1) NOT NULL,
  `pollen_allery` tinyint(1) NOT NULL,
  `immunodeficiency_status` tinyint(1) NOT NULL,
  `comorbidity` varchar(1000) NOT NULL,
  `diagnose_with_covid` tinyint(1) NOT NULL DEFAULT 0,
  `citizen_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccination`
--

INSERT INTO `vaccination` (`id`, `category`, `available_id_card`, `vaccine_name`, `vaccine_first_date`, `vaccine_second_date`, `philhealth_no`, `pregnant`, `breastfeeding`, `drug_allergy`, `food_allery`, `pollen_allery`, `immunodeficiency_status`, `comorbidity`, `diagnose_with_covid`, `citizen_id`) VALUES
(1, 1, '1', 'Moderna', '2021-10-13 00:00:00', '2021-10-08 00:00:00', 'N/A', 0, 0, 0, 0, 0, 0, 'N/A', 0, '2021-100001'),
(2, 1, '1', 'Sinovac-CoronaVac', '2021-10-13 00:00:00', '2021-06-12 00:00:00', '13131', 0, 0, 0, 0, 0, 0, 'AGAGA', 0, '2021-100001'),
(3, 3, '3', 'Johnson & Johnson', '2021-10-13 00:00:00', '2021-04-01 00:00:00', 'N/A', 0, 0, 0, 0, 0, 0, 'Hypertension', 0, '2021-100001'),
(4, 7, '7', 'Moderna', '2021-10-13 00:00:00', '2021-11-02 00:00:00', 'N/A', 1, 0, 0, 0, 0, 0, 'N/A', 0, '2021-100001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `citizen_id` (`citizen_id`);

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_tracing`
--
ALTER TABLE `contact_tracing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizen_id` (`citizen_id`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizen_id` (`citizen_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_tracing`
--
ALTER TABLE `contact_tracing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccination`
--
ALTER TABLE `vaccination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`);

--
-- Constraints for table `contact_tracing`
--
ALTER TABLE `contact_tracing`
  ADD CONSTRAINT `contact_tracing_ibfk_1` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`);

--
-- Constraints for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD CONSTRAINT `vaccination_ibfk_1` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
