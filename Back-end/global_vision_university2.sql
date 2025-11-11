-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 04:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `global_vision_university2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_ml_workshop`
--

CREATE TABLE `ai_ml_workshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_ml_workshop`
--

INSERT INTO `ai_ml_workshop` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodyanethmi2002@gmail.com', 'IT', '0763220319', '2025-11-10 20:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `annual_sports_meet`
--

CREATE TABLE `annual_sports_meet` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annual_sports_meet`
--

INSERT INTO `annual_sports_meet` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodyanethmi2002@gmail.com', 'IT', '0763220319', '2025-11-10 20:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `career_fair`
--

CREATE TABLE `career_fair` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `career_fair`
--

INSERT INTO `career_fair` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodyanethmi2002@gmail.com', 'IT', '0763220319', '2025-11-10 20:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `leadership_program`
--

CREATE TABLE `leadership_program` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leadership_program`
--

INSERT INTO `leadership_program` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodyanethmi2002@gmail.com', 'IT', '0763220319', '2025-11-10 20:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `qs_workshop`
--

CREATE TABLE `qs_workshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qs_workshop`
--

INSERT INTO `qs_workshop` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodyanethmi2002@gmail.com', 'IT', '0763220319', '2025-11-10 20:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `research_conference`
--

CREATE TABLE `research_conference` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_conference`
--

INSERT INTO `research_conference` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodya@gmail.com', 'IT', '0763220319', '2025-11-10 20:24:58'),
(2, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodya@gmail.com', 'IT', '0763220319', '2025-11-10 20:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `robotic_workshop`
--

CREATE TABLE `robotic_workshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `robotic_workshop`
--

INSERT INTO `robotic_workshop` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'Hasini Nisansala', '23IT0511', 'nisansala2002@gmail.com', 'IT', '0765298413', '2025-11-10 20:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `welding_workshop`
--

CREATE TABLE `welding_workshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `welding_workshop`
--

INSERT INTO `welding_workshop` (`id`, `full_name`, `student_id`, `email`, `field`, `phone`, `created_at`) VALUES
(1, 'B.A. Pamodya Nethmi', '23IT0509', 'pamodyanethmi2002@gmail.com', 'IT', '0763220319', '2025-11-10 20:37:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_ml_workshop`
--
ALTER TABLE `ai_ml_workshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_sports_meet`
--
ALTER TABLE `annual_sports_meet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_fair`
--
ALTER TABLE `career_fair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leadership_program`
--
ALTER TABLE `leadership_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qs_workshop`
--
ALTER TABLE `qs_workshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_conference`
--
ALTER TABLE `research_conference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robotic_workshop`
--
ALTER TABLE `robotic_workshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welding_workshop`
--
ALTER TABLE `welding_workshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_ml_workshop`
--
ALTER TABLE `ai_ml_workshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `annual_sports_meet`
--
ALTER TABLE `annual_sports_meet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `career_fair`
--
ALTER TABLE `career_fair`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leadership_program`
--
ALTER TABLE `leadership_program`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `qs_workshop`
--
ALTER TABLE `qs_workshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `research_conference`
--
ALTER TABLE `research_conference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `robotic_workshop`
--
ALTER TABLE `robotic_workshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `welding_workshop`
--
ALTER TABLE `welding_workshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
