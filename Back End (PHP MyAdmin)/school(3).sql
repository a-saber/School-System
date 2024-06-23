-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 10:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `bus_plate_number` varchar(255) NOT NULL,
  `bus_license_exp_date` varchar(255) NOT NULL,
  `bus_status` varchar(255) NOT NULL,
  `bus_cost` int(11) NOT NULL,
  `bus_episode_number` varchar(255) NOT NULL,
  `bus_line_id` int(11) NOT NULL,
  `bus_driver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`, `bus_name`, `bus_plate_number`, `bus_license_exp_date`, `bus_status`, `bus_cost`, `bus_episode_number`, `bus_line_id`, `bus_driver_id`) VALUES
(1, 'NOT SELECTED', 'NOT SELECTED', 'NOT SELECTED', 'NOT SELECTED', 0, 'NOT SELECTED', 1, 0),
(10, '5_five', '2020kkk', '2022-10-22', 'free', 542, '5 per month', 3, 0),
(11, 'a45', '123456', '2022-10-22', 'free', 400, '5', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_level_id` int(11) NOT NULL,
  `class_stu_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_level_id`, `class_stu_num`) VALUES
(2, 'NOT SELECTED', 1, 0),
(4, 'class 4', 1, 70);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_name`) VALUES
(1, 'NOT SELECTED'),
(4, 'Police Man'),
(5, 'fireman'),
(6, 'Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `level_books_num` int(11) NOT NULL,
  `level_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`, `level_books_num`, `level_cost`) VALUES
(1, 'NOT SELECTED', 0, 0),
(5, '1 st', 0, 0),
(6, '2 nd', 0, 0),
(7, '3 rd', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `line_id` int(11) NOT NULL,
  `line_name` varchar(255) NOT NULL,
  `line_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`line_id`, `line_name`, `line_cost`) VALUES
(1, 'NOT SELECTED', 0),
(3, 'cairo', 500);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `nat_id` int(11) NOT NULL,
  `nat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`nat_id`, `nat_name`) VALUES
(1, 'NOT SELECTED'),
(2, 'Egyptian'),
(3, 'American'),
(5, 'iraq'),
(7, 'cup'),
(15, 'po');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `reg_id` int(11) NOT NULL,
  `reg_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_id`, `reg_name`) VALUES
(1, 'NOT SELECTED'),
(4, 'New');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_address` varchar(255) NOT NULL,
  `stu_ssn` varchar(255) NOT NULL,
  `stu_birth_date` varchar(255) NOT NULL,
  `stu_birth_place` varchar(255) NOT NULL,
  `stu_birth_certification` varchar(255) NOT NULL,
  `stu_nationality` varchar(255) NOT NULL,
  `stu_gender` varchar(255) NOT NULL,
  `stu_religion` varchar(255) NOT NULL,
  `stu_phone` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_finger` varchar(255) NOT NULL,
  `stu_fat_name` varchar(255) NOT NULL,
  `stu_fat_phone` varchar(255) NOT NULL,
  `stu_fat_job` varchar(255) NOT NULL,
  `stu_fat_qualify` varchar(255) NOT NULL,
  `stu_fat_card` varchar(255) NOT NULL,
  `stu_mot_name` varchar(255) NOT NULL,
  `stu_mot_phone` varchar(255) NOT NULL,
  `stu_mot_card` varchar(255) NOT NULL,
  `stu_school_time` varchar(255) NOT NULL,
  `stu_level_id` int(11) NOT NULL,
  `stu_class_id` int(11) NOT NULL,
  `stu_join_date` varchar(255) NOT NULL,
  `stu_sub_date` varchar(255) NOT NULL,
  `stu_apply_date` varchar(255) NOT NULL,
  `stu_registration_date` varchar(255) NOT NULL,
  `stu_transformer` varchar(255) NOT NULL,
  `stu_file` varchar(255) NOT NULL,
  `stu_file_notes` varchar(255) NOT NULL,
  `stu_cost_per_year` varchar(255) NOT NULL,
  `stu_episode_number` varchar(255) NOT NULL,
  `stu_regestration_at_school` varchar(255) NOT NULL,
  `stu_bus_id` int(11) NOT NULL,
  `stu_uniform_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_address`, `stu_ssn`, `stu_birth_date`, `stu_birth_place`, `stu_birth_certification`, `stu_nationality`, `stu_gender`, `stu_religion`, `stu_phone`, `stu_email`, `stu_finger`, `stu_fat_name`, `stu_fat_phone`, `stu_fat_job`, `stu_fat_qualify`, `stu_fat_card`, `stu_mot_name`, `stu_mot_phone`, `stu_mot_card`, `stu_school_time`, `stu_level_id`, `stu_class_id`, `stu_join_date`, `stu_sub_date`, `stu_apply_date`, `stu_registration_date`, `stu_transformer`, `stu_file`, `stu_file_notes`, `stu_cost_per_year`, `stu_episode_number`, `stu_regestration_at_school`, `stu_bus_id`, `stu_uniform_id`) VALUES
(41, 'ahmed', '', '', '2022-10-25', '', '0', 'Egyptian', 'Female', 'Christian', '', '', '', '', '', 'fireman', '0', '1', '', '', '1', 'morning', 5, 2, '', '', '', '', '0', '1', '', '5600', '', 'New', 1, 3),
(42, 'ayyop', '', '', '', '', '0', 'iraq', 'NOT SELECTED', 'NOT SELECTED', '', '', '', '', '', 'NOT SELECTED', '1', '0', '', '', '0', 'NOT SELECTED', 6, 4, '', '', '', '', '0', '0', '', '', '', 'New', 1, 3),
(44, 'saber', '', '', '', '', '0', 'NOT SELECTED', 'NOT SELECTED', 'NOT SELECTED', '', '', '', '', '', 'NOT SELECTED', '0', '0', '', '', '0', 'NOT SELECTED', 7, 2, '', '', '', '', '0', '0', '', '', '', 'NOT SELECTED', 10, 1),
(45, 'ooop', '', '', '', '', '0', 'NOT SELECTED', 'NOT SELECTED', 'NOT SELECTED', '', '', '', '', '', 'NOT SELECTED', '0', '1', '', '', '0', 'NOT SELECTED', 5, 2, '', '', '', '', '0', '0', '', '', '', 'NOT SELECTED', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uniform`
--

CREATE TABLE `uniform` (
  `uniform_id` int(11) NOT NULL,
  `uniform_name` varchar(255) NOT NULL,
  `uniform_cost` int(11) NOT NULL,
  `uniform_level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`uniform_id`, `uniform_name`, `uniform_cost`, `uniform_level_id`) VALUES
(1, 'NOT SELECTED', 0, 1),
(3, 'content', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_id`),
  ADD KEY `bus_line_id` (`bus_line_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `class_level` (`class_level_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`line_id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`nat_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `bus_id` (`stu_bus_id`),
  ADD KEY `unfiorm_id` (`stu_uniform_id`),
  ADD KEY `stu_level` (`stu_level_id`),
  ADD KEY `stu_class` (`stu_class_id`);

--
-- Indexes for table `uniform`
--
ALTER TABLE `uniform`
  ADD PRIMARY KEY (`uniform_id`),
  ADD KEY `uniform_level_id` (`uniform_level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `line`
--
ALTER TABLE `line`
  MODIFY `line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `nat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `uniform`
--
ALTER TABLE `uniform`
  MODIFY `uniform_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`bus_line_id`) REFERENCES `line` (`line_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`class_level_id`) REFERENCES `level` (`level_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`stu_bus_id`) REFERENCES `bus` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`stu_uniform_id`) REFERENCES `uniform` (`uniform_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`stu_level_id`) REFERENCES `level` (`level_id`),
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`stu_class_id`) REFERENCES `class` (`class_id`);

--
-- Constraints for table `uniform`
--
ALTER TABLE `uniform`
  ADD CONSTRAINT `uniform_ibfk_1` FOREIGN KEY (`uniform_level_id`) REFERENCES `level` (`level_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
