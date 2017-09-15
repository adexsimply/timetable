-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2017 at 08:53 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `time_table`
--

-- --------------------------------------------------------

--
-- Table structure for table `junior_subjects`
--

CREATE TABLE IF NOT EXISTS `junior_subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `date_added` varchar(30) NOT NULL,
  `parent_subj` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `junior_subjects`
--

INSERT INTO `junior_subjects` (`id`, `subject_name`, `date_added`, `parent_subj`) VALUES
(1, 'English Language', '19-06-2015 9:55am', ''),
(3, 'Basic Science and Technology', '19-06-2015 9:56am', ''),
(4, 'Business Studies', '19-06-2015 10:10am', ''),
(5, 'C.C Arts', '19-06-2015 10:10am', ''),
(9, 'French', '19-06-2015 10:11am', ''),
(11, 'Igbo Language', '19-06-2015 10:13am', ''),
(13, 'Mathematics', '19-06-2015 10:14am', ''),
(19, 'Phonetics', '17-11-2016 5:18am', 'English Language'),
(20, 'Grammar', '17-11-2016 5:21am', 'English Language'),
(22, 'Literature in English', '17-11-2016 5:23am', 'English Language'),
(23, 'Basic Science', '17-11-2016 5:27am', 'Basic Science and Technology'),
(24, 'Basic Technology', '17-11-2016 5:27am', 'Basic Science and Technology'),
(25, 'P.H.E', '17-11-2016 5:28am', 'Basic Science and Technology'),
(26, 'Information Technology', '17-11-2016 5:28am', 'Basic Science and Technology'),
(27, 'Pre-Vocational', '06-12-2016 12:09pm', ''),
(28, 'Agricultural Science', '06-12-2016 12:09pm', 'Pre-Vocational'),
(29, 'Home Economics', '06-12-2016 12:10pm', 'Pre-Vocational'),
(30, 'Religion and National Value', '06-12-2016 12:12pm', ''),
(32, 'C.R.S', '06-12-2016 12:13pm', 'Religion and National Value'),
(34, 'Civic Education', '06-12-2016 12:14pm', 'Religion and National Value'),
(35, 'Social Studies', '06-12-2016 12:14pm', 'Religion and National Value'),
(36, 'Security Education', '06-12-2016 12:14pm', 'Religion and National Value');

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE IF NOT EXISTS `periods` (
  `id` int(11) NOT NULL,
  `period` varchar(20) NOT NULL,
  `time_stamp` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `period`, `time_stamp`) VALUES
(1, 'First Period', '8:00 - 8:40am'),
(2, 'Second Period', '8:40 - 9:20pm'),
(3, 'Third Period', '9:20 - 10:00am'),
(4, 'Fourth Period', '10:00 - 10:40am'),
(5, 'Fifth Period', '10:40 - 11:20am'),
(6, 'Sixth Period', '12:30 - 1:10pm'),
(7, 'Seventh Period', '1:10 - 1:50pm'),
(8, 'Eight Period', '1:50 -  2:30pm');

-- --------------------------------------------------------

--
-- Table structure for table `senior_subjects`
--

CREATE TABLE IF NOT EXISTS `senior_subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `class_arm` varchar(10) NOT NULL,
  `subject_status` varchar(15) NOT NULL,
  `date_added` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `senior_subjects`
--

INSERT INTO `senior_subjects` (`id`, `subject_name`, `class_arm`, `subject_status`, `date_added`) VALUES
(1, 'English Language', '7', 'Compulsory', '19-06-2015 12:53pm'),
(2, 'Mathematics', '7', 'Compulsory', '19-06-2015 12:58pm'),
(3, 'Civic Education', '7', 'Compulsory', '19-06-2015 12:58pm'),
(4, 'Data Processing', '7', 'Optional', '19-06-2015 1:01pm'),
(6, 'Geography', '1', 'Optional', '19-06-2015 1:02pm'),
(7, 'Agricultural Science', '7', 'Optional', '19-06-2015 1:05pm'),
(8, 'Technical Drawing', '1', 'Optional', '19-06-2015 1:07pm'),
(9, 'Biology', '6', 'Optional', '19-06-2015 1:09pm'),
(11, 'Visual Arts', '6', 'Optional', '19-06-2015 1:10pm'),
(12, 'Economics', '7', 'Compulsory', '19-06-2015 1:12pm'),
(13, 'Biology', '1', 'Compulsory', '19-06-2015 1:12pm'),
(14, 'Physics', '1', 'Compulsory', '19-06-2015 1:12pm'),
(15, 'Chemistry', '1', 'Compulsory', '19-06-2015 1:12pm'),
(16, 'Literature in English', '6', 'Compulsory', '19-06-2015 1:13pm'),
(17, 'Government', '2', 'Compulsory', '19-06-2015 1:13pm'),
(18, 'Christian Religious Knowledge', '2', 'Compulsory', '19-06-2015 1:13pm'),
(19, 'Commerce', '3', 'Compulsory', '19-06-2015 1:14pm'),
(22, 'Accounts', '3', 'Compulsory', '27-06-2015 8:14pm'),
(23, 'French Language', '7', 'Compulsory', '01-07-2015 7:52pm'),
(24, 'Catering', '7', 'Optional', '27-11-2015 12:08pm'),
(25, 'Phonetics', '7', 'Compulsory', '15-12-2016 4:01pm'),
(27, 'Further Mathematics', '7', 'Compulsory', '12-04-2017 5:48pm'),
(29, 'Igbo Language', '6', 'Optional', '16-07-2017 7:02pm');

-- --------------------------------------------------------

--
-- Table structure for table `table_sheet`
--

CREATE TABLE IF NOT EXISTS `table_sheet` (
  `id` int(11) NOT NULL,
  `class_level` varchar(10) NOT NULL,
  `class_arm` varchar(1) NOT NULL,
  `week_day` varchar(15) NOT NULL,
  `period` varchar(20) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `session_names` varchar(20) NOT NULL,
  `term_name` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_sheet`
--

INSERT INTO `table_sheet` (`id`, `class_level`, `class_arm`, `week_day`, `period`, `subject_name`, `session_names`, `term_name`) VALUES
(1, 'Jss1', 'A', 'Mon', '3', 'English', '2017/2018', 'FIRST TERM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `junior_subjects`
--
ALTER TABLE `junior_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `senior_subjects`
--
ALTER TABLE `senior_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_sheet`
--
ALTER TABLE `table_sheet`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `day_period` (`week_day`,`period`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `junior_subjects`
--
ALTER TABLE `junior_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `table_sheet`
--
ALTER TABLE `table_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
