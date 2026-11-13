-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2026 at 06:05 AM
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
-- Database: `bamc`
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
(1, 'admin', 'admin1', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `course_year` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(3) NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `civil_status` enum('Single','Married','Divorced','Widowed') NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `bloodtype` varchar(10) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `father_occupation` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `mother_occupation` varchar(255) NOT NULL,
  `num_children` int(3) NOT NULL,
  `emergency_contact_name` varchar(255) NOT NULL,
  `emergency_contact_relation` varchar(255) NOT NULL,
  `emergency_contact_number` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Completed','Canceled','Rescheduled') NOT NULL DEFAULT 'Pending',
  `check_up_date` date DEFAULT NULL,
  `check_up_time` time DEFAULT NULL,
  `form_submitted` tinyint(1) DEFAULT 0,
  `school_year` enum('1st Year','2nd Year','3rd Year','4th Year') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doctorId`, `userId`, `fullname`, `course_year`, `birthdate`, `age`, `sex`, `civil_status`, `weight`, `bloodtype`, `religion`, `address`, `contact_number`, `father_name`, `father_occupation`, `mother_name`, `mother_occupation`, `num_children`, `emergency_contact_name`, `emergency_contact_relation`, `emergency_contact_number`, `created_at`, `status`, `check_up_date`, `check_up_time`, `form_submitted`, `school_year`) VALUES
(20, 17, 20, 'Jo Gn', 'Student', '2004-12-03', 20, 'Male', 'Single', 56.00, 'b', 'catholic', 'Binalbagan', '0898561262', 'hehfa', 'edsefse', 'rgdrgd', 'efsefs', 0, '213112', 'gsrgsre', '0897687564563', '2025-01-27 02:33:46', 'Completed', '2025-02-01', '11:35:00', 1, NULL);

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
(17, 'Physician', 'Robert Reyes', 'Binalbagan', '0', 9876554432, 'reyes@gmail.com', '123456', '2025-01-22 05:10:10', NULL),
(18, 'Physician', 'john doe ', '4th floor', '1,000.00', 9292397855, 'johndoe@gmail.com', '123456', '2026-07-02 11:11:10', NULL);

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
(33, NULL, 'test@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-25 05:25:17', NULL, 0),
(34, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-25 07:36:16', NULL, 1),
(35, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-26 01:48:43', '26-11-2024 07:21:17 AM', 1),
(36, NULL, 'garfilrona639@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-26 01:57:54', NULL, 0),
(37, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-26 01:58:13', '26-11-2024 07:30:12 AM', 1),
(38, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-26 03:57:28', NULL, 1),
(39, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-26 08:30:02', NULL, 1),
(40, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-28 06:51:14', '28-11-2024 12:22:19 PM', 1),
(41, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-28 06:54:31', NULL, 1),
(42, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-28 17:50:07', '28-11-2024 11:20:30 PM', 1),
(43, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-28 17:52:21', NULL, 1),
(44, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-28 17:52:37', '28-11-2024 11:23:27 PM', 1),
(45, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-02 00:02:59', '02-12-2024 05:33:43 AM', 1),
(46, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-02 00:05:05', '02-12-2024 06:27:58 AM', 1),
(47, NULL, 'do', 0x3132372e302e302e3100000000000000, '2024-12-02 00:58:49', NULL, 0),
(48, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-02 00:59:00', '02-12-2024 06:32:18 AM', 1),
(49, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-02 01:35:25', '02-12-2024 08:01:01 AM', 1),
(50, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-02 02:32:49', '02-12-2024 08:03:36 AM', 1),
(51, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-02 07:02:13', NULL, 1),
(52, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-06 12:44:47', NULL, 1),
(53, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-29 08:37:09', '29-12-2024 04:20:25 PM', 1),
(54, NULL, 'admin', 0x3132372e302e302e3100000000000000, '2024-12-29 10:52:26', NULL, 0),
(55, 13, 'doctor@gmail.com', 0x3132372e302e302e3100000000000000, '2024-12-29 10:52:35', NULL, 1),
(56, 14, 'boglok@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 05:02:18', NULL, 1),
(57, 14, 'boglok@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 08:43:16', NULL, 1),
(58, 14, 'boglok@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 10:44:04', NULL, 1),
(59, 14, 'boglok@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 13:51:48', NULL, 1),
(60, NULL, 'admin', 0x3132372e302e302e3100000000000000, '2025-01-17 14:00:43', NULL, 0),
(61, 14, 'boglok@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 15:06:04', NULL, 1),
(62, 14, 'boglok@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 16:08:35', '17-01-2025 09:38:41 PM', 1);

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
(13, 'Physician', '2020-07-05 01:59:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `overall_experience` int(11) DEFAULT NULL,
  `ease_of_use` int(11) DEFAULT NULL,
  `service_quality` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `userId`, `rating`, `comments`, `overall_experience`, `ease_of_use`, `service_quality`, `created_at`) VALUES
(1, 1, 3, 'awdwadwa', 2, 2, 2, '2025-01-21 10:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `medicalhistory`
--

CREATE TABLE `medicalhistory` (
  `id` int(11) NOT NULL,
  `appointmentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `BP` varchar(50) DEFAULT NULL,
  `PR` varchar(50) DEFAULT NULL,
  `RR` varchar(50) DEFAULT NULL,
  `Temperature` varchar(50) DEFAULT NULL,
  `General` text DEFAULT NULL,
  `Skin` text DEFAULT NULL,
  `EENT` text DEFAULT NULL,
  `Chest` text DEFAULT NULL,
  `Abdomen` text DEFAULT NULL,
  `Extremities` text DEFAULT NULL,
  `ChestXray` text DEFAULT NULL,
  `HBsAg` text DEFAULT NULL,
  `CBC` text DEFAULT NULL,
  `Urinalysis` text DEFAULT NULL,
  `StoolExam` text DEFAULT NULL,
  `Others` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `ReferralID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PatientName` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` enum('Male','Female','Other') NOT NULL,
  `ChiefComplaints` text NOT NULL,
  `History` text NOT NULL,
  `Evaluation` text NOT NULL,
  `DateSubmitted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:24', NULL, 1),
(27, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:24', NULL, 0),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:12:00', NULL, 1),
(30, 2, 'test@gmail.com', 0x3132372e302e302e3100000000000000, '2024-11-20 13:53:17', NULL, 1),
(31, 8, 'borbor@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 04:23:38', NULL, 1),
(32, 8, 'borbor@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 04:40:11', NULL, 1),
(33, 8, 'borbor@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 04:51:00', NULL, 1),
(34, 8, 'borbor@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-17 08:40:19', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `patient_type` enum('staff','faculty','student') NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `religion` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `patient_type`, `email`, `password`, `created_at`, `first_name`, `last_name`, `middle_name`, `birthdate`, `sex`, `religion`, `address`) VALUES
(18, 'chris', 'student', 'christy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-01-27 00:50:15', 'Christy', 'Puentespina', 'Reyes', '2002-10-20', 'Female', 'catholic', 'Binalbagan'),
(19, 'Rendyl', 'student', 'rendl@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-01-27 01:37:01', 'Rendyl', 'Calvario', 'Rodrigo', '2002-08-20', 'Male', 'catholic', 'Binalbagan'),
(20, 'Dyl', 'student', 'rendyl@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-01-27 02:14:45', 'Rendyl', 'Calvario', 'Vinegas', '2002-10-12', 'Male', 'catholic', 'Binalbagan'),
(21, 'dev', 'student', 'dev@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-01-27 02:40:31', 'Ron', 'Edz', 'Myp', '2005-08-09', 'Female', 'catholic', 'Binalbagan'),
(22, 'user123', 'student', 'user@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2026-07-01 09:40:53', 'john', 'doe', 'mednoza', '2007-10-12', 'Male', 'catholic', 'Mansilingan, Bacolod City, Negros Occidental, Region VI (Western Visayas)'),
(23, 'johndoe123', 'student', 'johndoe@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2026-07-01 11:42:11', 'Alexander', 'Laustica', 'Sait', '2016-02-01', 'Male', 'catholic', 'Enclaro, Binalbagan, Negros Occidental, Region VI (Western Visayas)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorId` (`doctorId`),
  ADD KEY `userId` (`userId`);

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `medicalhistory`
--
ALTER TABLE `medicalhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointmentId` (`appointmentId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`ReferralID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicalhistory`
--
ALTER TABLE `medicalhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `ReferralID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medicalhistory`
--
ALTER TABLE `medicalhistory`
  ADD CONSTRAINT `medicalhistory_ibfk_1` FOREIGN KEY (`appointmentId`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medicalhistory_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
