-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 06:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(2, 'Admin', 'somdutta@123', '23-05-2023 11:52:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'ENT', 4, 3, 500, '2023-05-27', '10:30 PM', '2023-05-20 16:55:02', 1, 1, NULL),
(4, 'ENT', 4, 4, 500, '2023-05-26', '12:45 PM', '2023-05-22 07:14:22', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'ENT', 'Dr. Somdutta Biswas-(Anandalok Hospital)', 'Howrah', '500', 9804394787, 'rimpybiswas66@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-05-20 06:57:34', '2023-05-22 20:36:19'),
(5, 'Orthopedics', 'Dr. Malay Kumar Mandal-(Techno Global Multi Speciality Hospital)', 'Kolkata', '600', 1231231230, 'qwe@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-05-22 20:34:16', '2023-05-22 20:35:42'),
(6, 'Internal Medicine', 'Dr. Narayan Banerjee-(Apollo Hospitals)', 'Kolkata', '700', 4564560456, 'aswf@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-05-22 20:38:09', '2023-05-22 20:40:39'),
(7, 'Orthopedics', 'Dr. Siddhartha Gupta-(Fortis Hospitals Group)', 'Kolkata', '700', 7897897890, 'dsf@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-05-22 20:50:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, NULL, 'somdutta', 0x3a3a3100000000000000000000000000, '2023-05-20 06:59:35', NULL, 0),
(28, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-20 07:00:02', '20-05-2023 12:30:29 PM', 1),
(29, NULL, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-20 18:46:45', NULL, 0),
(30, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-20 18:46:53', NULL, 1),
(31, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 05:48:50', '22-05-2023 11:21:23 AM', 1),
(32, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 05:57:46', NULL, 1),
(33, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 07:15:41', NULL, 1),
(34, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 07:30:52', NULL, 1),
(35, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 14:10:58', NULL, 1),
(36, NULL, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 18:15:02', NULL, 0),
(37, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 18:15:14', NULL, 1),
(38, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 19:12:20', NULL, 1),
(39, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 20:18:49', NULL, 1),
(40, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-23 07:17:24', NULL, 1),
(41, 4, 'rimpybiswas66@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-23 07:41:32', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2023-05-22 18:09:46', NULL),
(2, 'Internal Medicine', '2023-05-22 18:09:46', NULL),
(3, 'Obstetrics and Gynecology', '2023-05-22 18:09:46', NULL),
(4, 'Dermatology', '2023-05-22 18:09:46', NULL),
(5, 'Pediatrics', '2023-05-22 18:10:37', NULL),
(6, 'Radiology', '2023-05-22 18:10:46', NULL),
(7, 'General Surgery', '2023-05-22 18:09:46', NULL),
(8, 'Ophthalmology', '2023-05-22 18:09:46', NULL),
(9, 'Anesthesia', '2023-05-22 18:10:37', NULL),
(10, 'Pathology', '2023-05-22 18:11:22', NULL),
(11, 'ENT', '2023-05-22 18:11:30', NULL),
(12, 'Dental Care', '2023-05-22 18:11:39', NULL),
(13, 'Cardiologist', '2023-05-22 18:12:02', NULL),
(14, 'Endocrinologists', '2023-05-22 18:12:10', NULL),
(15, 'Neurologists', '2023-05-22 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', NULL, NULL, NULL),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41'),
(2, 4, '80/120', 'B+', '50', '98F', 'all ok', '2023-05-22 14:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'male', 'New Delhi india', 35, 'NA', '2022-11-06 13:18:31', NULL),
(2, 4, 'rim', 1234567890, 'abc@gmail.com', 'female', '123sfcszc', 22, '90/120 65', '2023-05-22 06:01:28', NULL),
(3, 2, 'rimpy', 1234567890, 'asd@gmail.com', 'female', 'zdcxz', 22, 'NA', '2023-05-22 07:27:17', NULL),
(4, 4, 'Sohely', 1234567890, 'abcd@gmail.com', 'female', 'Howrah', 22, 'NA', '2023-05-22 14:45:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-20 16:49:42', '20-05-2023 10:20:01 PM', 1),
(7, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-20 16:51:19', NULL, 1),
(9, NULL, 'Asha', 0x3a3a3100000000000000000000000000, '2023-05-20 16:54:33', NULL, 0),
(10, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-20 16:54:43', NULL, 1),
(12, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-20 18:43:50', NULL, 1),
(13, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 05:51:36', '22-05-2023 11:23:54 AM', 1),
(14, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 05:57:02', NULL, 1),
(15, 4, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 07:13:40', NULL, 1),
(16, NULL, 'abc@123', 0x3a3a3100000000000000000000000000, '2023-05-22 07:31:18', NULL, 0),
(17, 4, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 07:31:32', NULL, 1),
(18, NULL, 'abc@123', 0x3a3a3100000000000000000000000000, '2023-05-22 14:09:16', NULL, 0),
(19, NULL, 'abc@123', 0x3a3a3100000000000000000000000000, '2023-05-22 14:09:30', NULL, 0),
(20, NULL, 'abc@123', 0x3a3a3100000000000000000000000000, '2023-05-22 14:09:45', NULL, 0),
(21, 4, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 14:10:11', NULL, 1),
(22, NULL, 'abc@123', 0x3a3a3100000000000000000000000000, '2023-05-22 18:13:12', NULL, 0),
(23, 4, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 18:13:36', NULL, 1),
(24, 4, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 18:14:34', NULL, 1),
(25, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 18:17:04', NULL, 1),
(26, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 18:23:58', NULL, 1),
(27, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 18:53:59', NULL, 1),
(28, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 19:10:01', NULL, 1),
(29, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 19:11:54', NULL, 1),
(30, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 19:14:15', NULL, 1),
(31, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 19:15:48', NULL, 1),
(32, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 20:18:04', NULL, 1),
(33, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-22 20:50:50', NULL, 1),
(34, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-23 07:16:36', NULL, 1),
(35, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-23 07:29:02', NULL, 1),
(36, 3, 'Somduttabiswas.choco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-23 07:36:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(3, 'Asha', 'MAKARDAH', 'HOWRAH', 'male', 'Somduttabiswas.choco@gmail.com', 'e80b5017098950fc58aad83c8c14978e', '2023-05-20 16:48:33', '2023-05-20 16:50:56'),
(4, 'Sohely', 'howrah', 'HOWRAH', 'female', 'abc@gmail.com', 'e80b5017098950fc58aad83c8c14978e', '2023-05-22 07:12:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
