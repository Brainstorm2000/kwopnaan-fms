-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 01:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwopnaan_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`, `hospital_id`) VALUES
(81, '', 'Mr Accountant', 'accountant@hms.com', 'Colegepara, Rajbari', '+0123456789', '', '755', '416'),
(82, 'uploads/images_-_2022-12-23T193123.176_.jpeg', 'Skane Accountant', 'accountant@skane.com', 'Jos', '0909089898', NULL, '775', '457');

-- --------------------------------------------------------

--
-- Table structure for table `alloted_bed`
--

CREATE TABLE `alloted_bed` (
  `id` int(100) NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alloted_bed`
--

INSERT INTO `alloted_bed` (`id`, `number`, `category`, `patient`, `a_time`, `d_time`, `status`, `x`, `bed_id`, `hospital_id`) VALUES
(45, NULL, NULL, '43', '16 January 2023 - 04:23 PM', '03 January 2023 - 08:35 AM', '0', NULL, 'Women\'s-001', '457'),
(46, NULL, NULL, '43', '25 January 2023 - 04:50 PM', '25 January 2023 - 05:15 PM', '0', NULL, 'Women\'s-001', '457');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `request` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient`, `doctor`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `hospital_id`) VALUES
(414, '39', '150', '1673823600', '08:30 AM To 08:45 AM', '08:30 AM', '08:45 AM', '', '01/16/23', '1673882177', '102', 'Pending Confirmation', '763', '', '457'),
(415, '43', '150', '1673823600', '08:45 AM To 09:00 AM', '08:45 AM', '09:00 AM', 'pls', '01/17/23', '1673965665', '105', 'Confirmed', '760', '', '457');

-- --------------------------------------------------------

--
-- Table structure for table `bankb`
--

CREATE TABLE `bankb` (
  `id` int(100) NOT NULL,
  `group` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankb`
--

INSERT INTO `bankb` (`id`, `group`, `status`, `hospital_id`) VALUES
(1, 'A+', '0 Bags', '416'),
(2, 'A-', '0 Bags', '416'),
(3, 'B+', '0 Bags', '416'),
(4, 'B-', '0 Bags', '416'),
(5, 'AB+', '0 Bags', '416'),
(6, 'AB-', '0 Bags', '416'),
(7, 'O+', '0 Bags', '416'),
(8, 'O-', '0 Bags', '416'),
(224, 'O-', '0 Bags', '451'),
(223, 'O+', '0 Bags', '451'),
(222, 'AB-', '0 Bags', '451'),
(221, 'AB+', '0 Bags', '451'),
(220, 'B-', '0 Bags', '451'),
(219, 'B+', '0 Bags', '451'),
(218, 'A-', '0 Bags', '451'),
(217, 'A+', '0 Bags', '451'),
(225, 'A+', '0 Bags', '452'),
(226, 'A-', '0 Bags', '452'),
(227, 'B+', '0 Bags', '452'),
(228, 'B-', '0 Bags', '452'),
(229, 'AB+', '0 Bags', '452'),
(230, 'AB-', '0 Bags', '452'),
(231, 'O+', '0 Bags', '452'),
(232, 'O-', '0 Bags', '452'),
(233, 'A+', '0 Bags', '453'),
(234, 'A-', '0 Bags', '453'),
(235, 'B+', '0 Bags', '453'),
(236, 'B-', '0 Bags', '453'),
(237, 'AB+', '0 Bags', '453'),
(238, 'AB-', '0 Bags', '453'),
(239, 'O+', '0 Bags', '453'),
(240, 'O-', '0 Bags', '453'),
(241, 'A+', '0 Bags', '454'),
(242, 'A-', '0 Bags', '454'),
(243, 'B+', '0 Bags', '454'),
(244, 'B-', '0 Bags', '454'),
(245, 'AB+', '0 Bags', '454'),
(246, 'AB-', '0 Bags', '454'),
(247, 'O+', '0 Bags', '454'),
(248, 'O-', '0 Bags', '454'),
(249, 'A+', '0 Bags', '455'),
(250, 'A-', '0 Bags', '455'),
(251, 'B+', '0 Bags', '455'),
(252, 'B-', '0 Bags', '455'),
(253, 'AB+', '0 Bags', '455'),
(254, 'AB-', '0 Bags', '455'),
(255, 'O+', '0 Bags', '455'),
(256, 'O-', '0 Bags', '455'),
(257, 'A+', '0 Bags', '456'),
(258, 'A-', '0 Bags', '456'),
(259, 'B+', '0 Bags', '456'),
(260, 'B-', '0 Bags', '456'),
(261, 'AB+', '0 Bags', '456'),
(262, 'AB-', '0 Bags', '456'),
(263, 'O+', '0 Bags', '456'),
(264, 'O-', '0 Bags', '456'),
(265, 'A+', '0 Bags', '457'),
(266, 'A-', '0 Bags', '457'),
(267, 'B+', '0 Bags', '457'),
(268, 'B-', '0 Bags', '457'),
(269, 'AB+', '0 Bags', '457'),
(270, 'AB-', '0 Bags', '457'),
(271, 'O+', '0 Bags', '457'),
(272, 'O-', '0 Bags', '457'),
(273, 'A+', '0 Bags', '458'),
(274, 'A-', '0 Bags', '458'),
(275, 'B+', '0 Bags', '458'),
(276, 'B-', '0 Bags', '458'),
(277, 'AB+', '0 Bags', '458'),
(278, 'AB-', '0 Bags', '458'),
(279, 'O+', '0 Bags', '458'),
(280, 'O-', '0 Bags', '458'),
(281, 'A+', '0 Bags', '459'),
(282, 'A-', '0 Bags', '459'),
(283, 'B+', '0 Bags', '459'),
(284, 'B-', '0 Bags', '459'),
(285, 'AB+', '0 Bags', '459'),
(286, 'AB-', '0 Bags', '459'),
(287, 'O+', '0 Bags', '459'),
(288, 'O-', '0 Bags', '459');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `category`, `number`, `description`, `last_a_time`, `last_d_time`, `status`, `bed_id`, `hospital_id`) VALUES
(20, 'Women\'s', '001', 'Bed 001', '16 January 2023 - 04:23 PM', '03 January 2023 - 08:35 AM', NULL, 'Women\'s-001', '457');

-- --------------------------------------------------------

--
-- Table structure for table `bed_category`
--

CREATE TABLE `bed_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_category`
--

INSERT INTO `bed_category` (`id`, `category`, `description`, `hospital_id`) VALUES
(6, 'Icu', '10 beds', '416'),
(7, 'Ccu', '10 beds', '416'),
(8, 'Children', '5 beds', '416'),
(10, 'General Ward', '50 beds', '416'),
(16, 'Women\'s', 'Women\'s Section', '457');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `x`, `y`, `hospital_id`) VALUES
(12, 'Cardiology', '<p>This department provides medical care to patients who have problems with their heart or circulation. It treats people on an inpatient and outpatient basis. </p>\n', '', '', '416'),
(15, 'Diagnostic imaging', 'Formerly known as X-ray, this department provides a full range of diagnostic imaging services including:\n\n', '', '', '416'),
(17, 'Ear nose and throat (ENT)', 'Ear nose and throat (ENT)\nThe ENT department provides care for patients with a variety of problems, including:\ngeneral ear, nose and throat diseases\nneck lumps\ncancers of the head and neck area\ntear duct problems\nfacial skin lesions\nbalance and hearing disorders\nsnoring and sleep apnoea\nENT allergy problems\nsalivary gland diseases\nvoice disorders.\n', '', '', '416'),
(20, 'General surgery', 'The general surgery ward covers a wide range of surgery.', '', '', '416'),
(23, 'Maternity departments', 'Women now have a choice of who leads their maternity care and where they give birth. Care can be led by a consultant, a GP or a midwife.\n\n', '', '', '416'),
(24, 'Microbiology', 'The microbiology department looks at all aspects of microbiology, such as bacterial and viral infections.\n\n', '', '', '416'),
(26, 'Nephrology', 'This department monitors and assesses patients with kidney (renal) problems.\n', '', '', '416'),
(27, 'Neurology', 'This unit deals with disorders of the nervous system, including the brain and spinal cord. It\'s run by doctors who specialise in this area (neurologists) and their staff.\n\n', '', '', '416'),
(28, 'Nutrition and dietetics', 'Trained dieticians and nutritionists provide specialist advice on diet for hospital wards and outpatient clinics, forming part of a multidisciplinary team.\n\n', '', '', '416'),
(32, 'Occupational therapy', 'This profession helps people who are physically or mentally impaired, including temporary disability after medical treatment. It practices in the fields of both healthcare and social care.\n\n', '', '', '416'),
(33, 'Oncology', 'This department provides radiotherapy and a full range of chemotherapy treatments for cancerous tumours and blood disorders.\n\n', '', '', '416'),
(34, 'Ophthalmology', 'Eye departments provide a range of ophthalmic services for adults and children,\n\n', '', '', '416'),
(35, 'Orthopaedics', 'Orthopaedic departments treat problems that affect your musculoskeletal system. That\'s your muscles, joints, bones, ligaments, tendons and nerves.\n\n', '', '', '416'),
(36, 'Pain management clinics', 'Usually run by consultant anaesthetists, these clinics aim to help treat patients with severe long-term pain that appears resistant to normal treatments.\n', '', '', '416'),
(38, 'Physiotherapy', 'Physiotherapists promote body healing, for example after surgery, through therapies such as exercise and manipulation.\n\n', '', '', '416'),
(39, 'Radiotherapy', 'Radiotherapy\nRun by a combination of consultant doctors and specially trained radiotherapists, this department provides radiotherapy (X-ray) treatment for conditions such as malignant tumours and cancer.\n\n', '', '', '416'),
(40, 'Renal unit', 'Closely linked with nephrology teams at hospitals, these units provide haemodialysis treatment for patients with kidney failure. Many of these patients are on waiting lists for a kidney transplant.\n\n', '', '', '416'),
(41, 'Rheumatology', 'Specialist doctors called rheumatologists run the unit and are experts in the field of musculoskeletal disorders (bones, joints, ligaments, tendons, muscles and nerves).\n\n', '', '', '416'),
(42, 'Sexual health (genitourinary medicine)', 'This department provides a free and confidential service offering:\nadvice, testing and treatment for all sexually transmitted infections (STIs)\nfamily planning care (including emergency contraception and free condoms)\npregnancy testing and advice.\nIt also provides care and support for other sexual and genital problems.\nPatients are usually able to phone the department directly for an appointment and don\'t need a referral letter from their GP.\n\n\n', '', '', '416'),
(43, 'Urology', '<p>The urology department is run by consultant urology surgeons and their surgical teams. It investigates all areas linked to kidney and bladder-based problems.</p>\n', '', '', '416'),
(51, 'Department Name 1', '<p>Description 1</p>\n', '', '', '416'),
(52, 'Department Name 2', '<p>Department Name 2</p>\n', '', '', '449'),
(53, 'Pharmacy', '<p>All our drugs are here</p>\r\n', NULL, NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `depot1`
--

CREATE TABLE `depot1` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `z` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depot1`
--

INSERT INTO `depot1` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`, `hospital_id`) VALUES
(13, '', 'Mrs Nurse', 'nurse@hms.com', 'Colegepara, Rajbari', '+0123456789', '', '', '', '752', '416'),
(17, 'uploads/kDrop.png', 'Alfie Solomons', 'depot1@kwopnaan.com', 'No.123, Somewhere in the World', '+234 811 874 6605', NULL, NULL, NULL, '782', '457');

-- --------------------------------------------------------

--
-- Table structure for table `depot2`
--

CREATE TABLE `depot2` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `z` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depot2`
--

INSERT INTO `depot2` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`, `hospital_id`) VALUES
(3, 'uploads/kDrop1.png', 'Arthur Shelby', 'depot2@kwopnaan.com', 'No.123, Somewhere in the World', '+234 809 678 9878', NULL, NULL, NULL, '792', '457');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `invoice` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `report` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `profile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(149, '', 'Mr Doctor', 'doctor@hms.com', 'Colegepara, Rajbari', '+0123456789', 'Cardiology', 'Cardiac Specialized', '', '', '751', '416'),
(150, 'uploads/person2.jpg', 'Fortune', 'doctor@skane.com', 'No.6 Lere Close, New G.R.A Bauchi', '08118746605', 'Pharmacy', 'General Doctor', NULL, NULL, '763', '457'),
(151, NULL, 'Michael', 'michael@skane.com', 'jos', '09078964654', 'Pharmacy', 'Radiologist', NULL, NULL, '774', '457');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ldd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `group`, `age`, `sex`, `ldd`, `phone`, `email`, `add_date`, `hospital_id`) VALUES
(18, 'harry', 'A+', '56', 'Male', '01-01-2023', '08118746605', 'unanamfortune@gmail.com', '01/16/23', '457'),
(19, 'Kwopnaan', 'A+', '56', 'Male', '05-04-2023', '08118746605', 'unanamfortune@gmail.com', '04/24/23', '457'),
(20, 'mio', 'A+', '56', 'Male', '14-04-2023', '07067083146', 'unanamfortune@gmail.com', '04/27/23', NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(100) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `reciepient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `subject`, `date`, `message`, `reciepient`, `user`, `hospital_id`) VALUES
(31, 'Test', '1674064378', '<p>Test</p>\r\n', 'receptionist@skane.com', '760', '457'),
(32, 'test', '1674073545', '<p>lol</p>\r\n', 'receptionist@skane.com', '760', '457'),
(33, 'test', '1674073950', '<p>senj</p>\r\n', 'receptionist@skane.com', '760', '457'),
(34, 'Now', '1674079530', '<p>lorem ipsum</p>\r\n', 'receptionist@skane.com', '760', '457'),
(35, 'Test', '1674080980', '<p>lorem ipsum from hms</p>\r\n', 'receptionist@skane.com', '760', '457'),
(36, 'Test', '1674081049', '<p>lorem ipsum again from hms</p>\r\n', 'receptionist@skane.com', '760', '457');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(100) NOT NULL,
  `admin_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `admin_email`, `type`, `user`, `password`, `hospital_id`) VALUES
(19, 'admin@skane.com', '', '', '', '416'),
(21, 'admin@skane.com', NULL, NULL, NULL, '452'),
(22, 'admin@skane.com', NULL, NULL, NULL, '453'),
(23, 'admin@skane.com', NULL, NULL, NULL, '454'),
(24, 'admin@skane.com', NULL, NULL, NULL, '455'),
(25, 'admin@skane.com', NULL, NULL, NULL, '456'),
(26, 'admin@skane.com', NULL, NULL, NULL, '457'),
(27, 'admin@skane.com', NULL, NULL, NULL, '458'),
(28, 'admin@skane.com', NULL, NULL, NULL, '459');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `category`, `date`, `note`, `amount`, `user`, `hospital_id`) VALUES
(87, 'Test', '1676380956', 'test expense for me', '3000', '775', '457');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `category`, `description`, `x`, `y`, `hospital_id`) VALUES
(58, 'Test', 'test for me', NULL, NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `factory`
--

CREATE TABLE `factory` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `z` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory`
--

INSERT INTO `factory` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`, `hospital_id`) VALUES
(2, 'uploads/kDrop3.png', 'Luca Changretta', 'factory@kwopnaan.com', 'No. 789, Somewhere in the World', '+234 811 874 6605', NULL, NULL, NULL, '794', '457');

-- --------------------------------------------------------

--
-- Table structure for table `factory_production`
--

CREATE TABLE `factory_production` (
  `id` int(11) UNSIGNED NOT NULL,
  `bags` int(5) NOT NULL,
  `packs` varchar(5) NOT NULL,
  `jugs` varchar(5) NOT NULL,
  `inputed_by` varchar(50) NOT NULL,
  `date_inputed` varchar(50) NOT NULL,
  `time_inputed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `profile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'superadmin', 'Super Admin'),
(2, 'members', 'General User'),
(6, 'Depot1', ''),
(7, 'Depot2', ''),
(8, 'Factory', ''),
(11, 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `doctor`, `date`, `x`, `y`, `hospital_id`) VALUES
(69, '150', '1672786800', NULL, NULL, '457'),
(70, '', '1674428400', NULL, NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(100) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `package` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `p_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `email`, `password`, `address`, `phone`, `package`, `p_limit`, `d_limit`, `module`, `ion_user_id`) VALUES
(416, 'Hospital', 'admin@hms.com', '', 'Colegepara, Rajbari', '+0123456789', '', '1000', '500', 'accountant,appointment,lab,bed,department,doctor,donor,finance,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report,notice,email,sms', '2'),
(457, 'Moses Avu', 'admin@kwopnaan.com', NULL, 'Before Plateau hospital, jos', '07067083146', '', '1000', '500', 'accountant,appointment,lab,bed,department,doctor,donor,finance,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report', '760');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `report` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `category`, `patient`, `doctor`, `date`, `category_name`, `report`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `hospital_id`) VALUES
(1927, NULL, '43', '150', '1673823600', NULL, '<p>lorem</p>\r\n\r\n<p>ipsum</p>\r\n\r\n<p>dolor</p>\r\n\r\n<p>sit</p>\r\n\r\n<p>amet</p>\r\n', NULL, '766', 'Delilah Samson', '09076545642', 'Jos', 'Fortune', '16-01-23', '457'),
(1928, NULL, '43', '150', '1674428400', NULL, '<ol>\r\n <li>Lorem:</li>\r\n <li>Ipsum:</li>\r\n <li>Dolor:</li>\r\n</ol>\r\n', NULL, '763', 'Delilah Samson', '09076545642', 'Jos', 'Fortune', '23-01-23', '457'),
(1930, NULL, '43', '151', '1679526000', NULL, '<ol>\r\n <li>Lorem: high</li>\r\n <li>Ipsum: ok</li>\r\n <li>Dolor: ok</li>\r\n</ol>\r\n', NULL, '766', 'Delilah Samson', '09076545642', 'Jos', 'Michael', '23-03-23', '457');

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE `laboratorist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(4, '', 'Mr Laboratorist', 'laboratorist@hms.com', 'Colegepara, Rajbari', '+0123456789', '', '', '754', '416'),
(5, 'uploads/person4.jpg', 'Skane Laboratorist', 'laboratorist@skane.com', 'address', '0908735437', NULL, NULL, '766', '457');

-- --------------------------------------------------------

--
-- Table structure for table `lab_category`
--

CREATE TABLE `lab_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `reference_value` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`id`, `patient_id`, `title`, `description`, `patient_name`, `patient_address`, `patient_phone`, `img_url`, `date`, `registration_time`, `hospital_id`) VALUES
(64, '42', 'Case', '<p>Lorem</p>\r\n', 'unanamfortune@gmail.com', 'No.6 Lere Close, New G.R.A Bauchi', '08118746605', NULL, '1673823600', NULL, '457'),
(65, '43', '', '<p>mal</p>\r\n', 'Delilah Samson', 'Jos', '09076545642', NULL, '1674428400', NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `box` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `generic` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `effects` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_date` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `category`, `price`, `box`, `s_price`, `quantity`, `generic`, `company`, `effects`, `e_date`, `add_date`, `hospital_id`) VALUES
(2866, 'Paracetamol', 'Analgesics', '400', '6', '500', 1, 'PCM', 'emzor', 'None', '28-01-2023', '01/16/23', '457'),
(2867, 'Paracetamol', 'Pain Relief', '400', '001', '500', 50, 'PCM', 'Emzor', 'None', '31-01-2023', '01/16/23', '416'),
(2868, 'Fun-bact A', 'Analgesics', '400', '002', '450', 0, 'Fun-bact A', 'Pfizer', 'Skin bleach', '06-11-2022', '01/24/23', '457');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `category`, `description`, `hospital_id`) VALUES
(19, 'Analgesics', 'Analgesics', '457'),
(20, 'Pain Relief', 'Relieves Pain', '416');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(100) NOT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `modules` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`, `date`, `type`, `hospital_id`) VALUES
(16, 'meeting', '<p>meeting by 5</p>\r\n', '1669935600', 'staff', '457'),
(17, 'Meeting', '<p>by 5</p>\r\n', '1673823600', 'staff', '457'),
(18, 'test test test', '<p>lorem ipsum</p>\r\n', '1673996400', 'patient', '457'),
(19, 'test test test', '<p>lorem ipsum</p>\r\n', '1673996400', 'patient', '457');

-- --------------------------------------------------------

--
-- Table structure for table `ot_payment`
--

CREATE TABLE `ot_payment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_c_s` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_a_s_1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_a_s_2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_anaes` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `n_o_o` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_s_f` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_s_f_1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_s_f_2` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `anaes_f` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ot_charge` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cab_rent` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `seat_rent` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_fees` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_fees` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `p_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `show_in_frontend` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `frontend_order` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `set_as_default` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `birthdate` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bloodgroup` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `how_added` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `registration_time`, `how_added`, `hospital_id`) VALUES
(44, NULL, 'unanaijmfortune@gmail.com', 'unanamfojiprtune@gmail.com', '150', 'No.6 Lere Close, New G.R.A Bauchi', '08118746605', 'Male', '03-01-2022', NULL, 'A+', '778', '528700', '04/06/23', '1680796089', NULL, '457'),
(43, 'uploads/user.png', 'Delilah Samson', 'sdelilah@gmail.com', ',150', 'Jos', '09076545642', 'Female', '01-01-2002', NULL, 'O+', '773', '681723', '01/17/23', '1673965552', NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `patient_deposit`
--

CREATE TABLE `patient_deposit` (
  `id` int(10) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposited_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposit_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_deposit`
--

INSERT INTO `patient_deposit` (`id`, `patient`, `payment_id`, `date`, `deposited_amount`, `amount_received_id`, `deposit_type`, `gateway`, `user`, `hospital_id`) VALUES
(1613, '43', '13', '1675166980', '6000', '13.gp', 'Cash', NULL, '768', '457'),
(1612, '', '12', '1675166920', '', '12.gp', 'Cash', NULL, '760', '457'),
(1611, '43', '11', '1674468724', '1000', '11.gp', 'Cash', NULL, '768', '457'),
(1610, '43', '10', '1674464669', '2000', '10.gp', 'Cash', NULL, '768', '457'),
(1609, '43', '9', '1674463688', '786', '9.gp', '0', NULL, '768', '457'),
(1608, '', '8', '1674463612', '500', '8.gp', '0', NULL, '760', '457'),
(1607, '43', '7', '1674226762', '500', '7.gp', 'Cash', NULL, '760', '457'),
(1606, '43', '6', '1674224447', '2000', '6.gp', 'Cash', NULL, '760', '457');

-- --------------------------------------------------------

--
-- Table structure for table `patient_material`
--

CREATE TABLE `patient_material` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_material`
--

INSERT INTO `patient_material` (`id`, `date`, `title`, `category`, `patient`, `patient_name`, `patient_address`, `patient_phone`, `url`, `date_string`, `hospital_id`) VALUES
(73, '1673879869', 'Birth Cert', NULL, '39', 'Sick Man', 'address', '09087987675', NULL, '16-01-23', '457'),
(74, '1674482684', 'test', NULL, '43', 'Delilah Samson', 'Jos', '09076545642', 'uploads/prescriptionId77.pdf', '23-01-23', '457');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposit_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `remarks`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `deposit_type`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `hospital_id`) VALUES
(11, NULL, '43', '150', '1674468724', '2500', '0', NULL, NULL, '500', '500', '2000', 'Discount by stephanie', '2300', '-300', NULL, '131*2000*diagnostic*1,132*500*others*1', '1000', 'Cash', 'unpaid', '768', 'Delilah Samson', '09076545642', 'Jos', 'Fortune', '23-01-23', '457'),
(6, NULL, '43', '151', '1674224447', '2000', '0', NULL, NULL, '0', '0', '2000', '', '1800', '200', NULL, '131*2000*diagnostic*1', '2000', 'Cash', 'unpaid', '760', 'Delilah Samson', '09076545642', 'Jos', 'Michael', '20-01-23', '457'),
(7, NULL, '43', '150', '1674226626', '500', '0', NULL, NULL, '0', '0', '500', '', '500', '0', NULL, '132*500*others*1', '500', 'Cash', 'unpaid', '760', 'Delilah Samson', '09076545642', 'Jos', 'Fortune', '20-01-23', '457'),
(8, NULL, '', '', '1674463612', '2000', '0', NULL, NULL, '0', '0', '2000', 'paid', '2000', '0', NULL, '131*2000*diagnostic*1', '500', '0', 'unpaid', '760', '0', '0', '0', '0', '23-01-23', '457'),
(9, NULL, '43', '150', '1674463688', '2000', '0', NULL, NULL, '0', '0', '2000', 'paid', '1800', '200', NULL, '131*2000*diagnostic*1', '786', '0', 'unpaid', '768', 'Delilah Samson', '09076545642', 'Jos', 'Fortune', '23-01-23', '457'),
(10, NULL, '43', '150', '1674464669', '2000', '0', NULL, NULL, '0', '0', '2000', '', '1800', '200', NULL, '131*2000*diagnostic*1', '2000', 'Cash', 'unpaid', '768', 'Delilah Samson', '09076545642', 'Jos', 'Fortune', '23-01-23', '457'),
(12, NULL, '', '', '1675166920', '8000', '0', NULL, NULL, '0', '0', '8000', '', '8000', '0', NULL, '131*2000*diagnostic*4', '', 'Cash', 'unpaid', '760', '0', '0', '0', '0', '31-01-23', '457'),
(13, NULL, '43', '', '1675166980', '6000', '0', NULL, NULL, '0', '0', '6000', '', '6000', '0', NULL, '131*2000*diagnostic*3', '6000', 'Cash', 'unpaid', '768', 'Delilah Samson', '09076545642', 'Jos', '0', '31-01-23', '457');

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `merchant_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `salt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APIUsername` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APIPassword` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APISignature` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `APIUsername`, `APIPassword`, `APISignature`, `status`, `hospital_id`) VALUES
(1, 'PayPal', '', '', '', '', 'API Username', 'API Password', 'API Signature', 'test', '416'),
(2, 'Pay U Money', 'Merchant Key', 'Salt', '', '', '', '', 'Aaw-Fd69z.JLuiq13ejMN-CsSMuuAPEXWUFPF5QW9sD22fp1hosGIFKo', 'test', '416'),
(48, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '452'),
(49, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '452'),
(50, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '453'),
(51, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '453'),
(52, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '454'),
(53, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '454'),
(54, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '455'),
(55, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '455'),
(56, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '456'),
(57, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '456'),
(58, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '457'),
(59, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '457'),
(60, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '458'),
(61, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '458'),
(62, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '459'),
(63, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '459');

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `d_commission`, `h_commission`, `hospital_id`) VALUES
(16, 'E.C.G', 'Payments from E.C.G', '250', 'diagnostic', 30, 0, ''),
(78, 'USG - Pregnancy Pro', 'USG - Pregnancy Pro', '400', 'diagnostic', 30, 0, ''),
(19, 'Ward Fee', 'Deposits from ward', '400', 'others', 0, 0, ''),
(20, 'Admission Fees', 'Patient Admission Fees', '100', 'others', 0, 0, ''),
(23, 'Oxyzen', 'Income From Oxyzen', '0', 'others', 0, 0, ''),
(24, 'Nebulizer', 'Income From Nebulizer', '60', 'others', 0, 0, ''),
(25, 'Newspaper sell', 'Income From selling old newspaper', '0', 'others', 0, 0, ''),
(33, 'Ambulance', 'Ambulance er vara', '0', 'others', 0, 0, ''),
(34, 'HbAIc', 'gfdsegfdgd', '800', 'diagnostic', 30, 0, ''),
(35, 'Troponin-I', 'Pathological Test', '1000', 'diagnostic', 30, 0, ''),
(36, 'CBC (DIGITAL)', 'Pathological Test', '450', 'diagnostic', 30, 0, ''),
(37, 'Eosinophil', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(38, 'Platelets', 'Pathological Test', '200', 'diagnostic', 30, 0, ''),
(39, 'Malarial Parasites (MP)', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(40, 'BT/ CT', 'Pathological Test', '200', 'diagnostic', 30, 0, ''),
(41, 'ASO Titre', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(42, 'CRP', 'Pathological Test', '400', 'diagnostic', 30, 0, ''),
(43, 'R/A test', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(44, 'VDRL', 'Pathological Test', '200', 'diagnostic', 30, 0, ''),
(45, 'TPHA', 'Pathological Test', '350', 'diagnostic', 30, 0, ''),
(46, 'HBsAg (Screening)', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', '600', 'diagnostic', 30, 0, ''),
(48, 'CFT for Kala Zar', 'Pathological Test', '0', 'diagnostic', 0, 0, ''),
(49, 'CFT for Filaria', 'Pathological Test', '0', 'diagnostic', 0, 0, ''),
(50, 'Pregnancy Test', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(51, 'Blood Grouping', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(52, 'Widal Test', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(53, 'RBS', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(54, 'Blood Urea', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(55, 'S. Creatinine', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(56, 'S. cholesterol', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(57, 'Fasting Lipid Profile', 'Pathological Test', '850', 'diagnostic', 30, 0, ''),
(58, 'S. Bilirubin', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(59, 'S. Alkaline Phosohare', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(60, 'S. Albumin', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(61, 'S. Calcium', 'Pathological Test', '350', 'diagnostic', 30, 0, ''),
(62, 'RBS with CUS', 'Pathological Test', '160', 'diagnostic', 30, 0, ''),
(63, 'SGPT', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(64, 'SGOT', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(65, 'Urine for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(66, 'Urine C/S', 'Pathological Test', '350', 'diagnostic', 30, 0, ''),
(67, 'Stool for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(68, 'Semen Analysis', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(69, 'S. Electrolyte', 'Pathological Test', '800', 'diagnostic', 30, 0, ''),
(70, 'S. T3/ T4/ THS', 'Pathological Test', '1000', 'diagnostic', 30, 0, ''),
(71, 'MT', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(77, 'USG - Whole Abdomen ', 'USG - Whole Abdomen ', '400', 'diagnostic', 30, 0, ''),
(73, 'ECHO Normal', 'ksdjkfsd', '700', 'diagnostic', 30, 0, ''),
(76, 'x-ray chest', 'Normal', '200', 'diagnostic', 10, 0, ''),
(79, 'USG - KUB', 'USG - KUB', '500', 'diagnostic', 20, 0, ''),
(80, 'USG - Liver', 'USG - Liver', '400', 'diagnostic', 30, 0, ''),
(81, 'USG - Breast (Left)', 'USG - Breast (Left)', '400', 'diagnostic', 30, 0, ''),
(82, 'USG - Breast (Right)', 'USG - Breast (Right)', '400', 'diagnostic', 30, 0, ''),
(83, 'X-RAY - Ba MealS+D  ', 'X-RAY - Ba MealS+D  ', '1400', 'diagnostic', 20, 0, ''),
(84, 'X-RAY - Ba Swallo Oesopha', 'X-RAY - Ba Swallo Oesopha', '1000', 'diagnostic', 20, 0, ''),
(85, 'X-RAY - KUB                         ', 'X-RAY - KUB ', '500', 'diagnostic', 20, 0, ''),
(86, 'X-RAY - Leg Joint(B/V)(L/R)', 'X-RAY - Leg Joint(B/V)(L/R)', '500', 'diagnostic', 20, 0, ''),
(87, 'X-RAY -Knee Joint(L/R)', 'X-RAY -Knee Joint(L/R)', '500', 'diagnostic', 20, 0, ''),
(88, 'X-RAY - Finger(B/V) ', 'X-RAY - Finger(B/V) ', '350', 'diagnostic', 20, 0, ''),
(89, 'X-RAY - Wrist(B/V)(L/R) ', 'X-RAY - Wrist(B/V)(L/R) ', '350', 'diagnostic', 20, 0, ''),
(90, 'X-RAY - Hand(B/V)(L/R)                   ', 'X-RAY - Hand(B/V)(L/R)       ', '350', 'diagnostic', 20, 0, ''),
(91, 'X-RAY - Elbow(B/V)(L/R)', 'X-RAY - Elbow(B/V)(L/R)', '350', 'diagnostic', 20, 0, ''),
(92, 'X-RAY - Erm(B/V)(L/R )', 'X-RAY - Erm(B/V)(L/R )', '350', 'diagnostic', 20, 0, ''),
(93, 'X-RAY - Shoulder Joint (B/V)', 'X-RAY - Shoulder Joint (B/V)', '500', 'diagnostic', 20, 0, ''),
(94, 'X-RAY - Shoulder Joint (A/P)', 'X-RAY - Shoulder Joint (A/P)', '350', 'diagnostic', 20, 0, ''),
(95, 'X-RAY - Foot (B/V)', 'X-RAY - Foot (B/V)', '350', 'diagnostic', 20, 0, ''),
(96, 'X-RAY - Thigh(B/V)', 'X-RAY - Thigh(B/V)', '500', 'diagnostic', 20, 0, ''),
(97, 'X-RAY - Ankle(B/V)', 'X-RAY - Ankle(B/V)', '350', 'diagnostic', 20, 0, ''),
(98, 'X-RAY - Hip Joint(A/P)', 'X-RAY - Hip Joint(A/P)', '350', 'diagnostic', 20, 0, ''),
(99, 'X-RAY - Pelvis(A/P)', 'X-RAY - Pelvis(A/P)', '500', 'diagnostic', 20, 0, ''),
(100, 'X-RAY - L/S(B/V)(Lamber Spine)', 'X-RAY - L/S(B/V)(Lamber Spine)', '500', 'diagnostic', 20, 0, ''),
(101, 'X-RAY - L/S(A/P)(LamberSpine)', 'X-RAY - L/S(A/P)(LamberSpine)', '500', 'diagnostic', 20, 0, ''),
(102, 'X-RAY - D/L(A/P)(Thoracic)', 'X-RAY - D/L(A/P)(Thoracic)', '500', 'diagnostic', 20, 0, ''),
(103, 'X-RAY - Mandable(B/V)', 'X-RAY - Mandable(B/V)', '500', 'diagnostic', 20, 0, ''),
(104, 'X-RAY -C/S(AP)(Carvicai)', 'X-RAY -C/S(AP)(Carvicai)', '500', 'diagnostic', 20, 0, ''),
(105, 'X-RAY - PNS (AP)', 'X-RAY - PNS (AP)', '350', 'diagnostic', 20, 0, ''),
(106, 'ESR', 'Patho Test', '150', 'diagnostic', 30, 0, ''),
(107, 'FBS CUS', 'Pathological test', '160', 'diagnostic', 30, 0, ''),
(108, 'Hb%', 'Pathological test', '100', 'diagnostic', 30, 0, ''),
(109, 'Physio-Therapy', 'Therapy', '1000', '', 0, 0, ''),
(114, '2HABF', 'Pathological test', '100', 'diagnostic', 30, 0, ''),
(113, 'FBS', 'Pathological test', '100', 'diagnostic', 30, 0, ''),
(115, 'S. TSH', 'Pathological test', '400', 'diagnostic', 30, 0, ''),
(116, 'S. T3', 'Pathological test', '400', 'diagnostic', 30, 0, ''),
(117, 'DC', 'Pathological test', '200', 'diagnostic', 30, 0, ''),
(118, 'TC', 'Pathological test', '200', 'diagnostic', 30, 0, ''),
(119, 'X-Ray CXR (Digital)', 'X-Ray', '500', 'diagnostic', 20, 0, ''),
(120, 'S. Uric acid', 'Pathological test', '250', 'diagnostic', 30, 0, ''),
(122, 'U.S.G OF L/A ', 'U.S.G', '400', 'diagnostic', 30, 0, ''),
(125, 'Rt knee joient b/v', 'X-Ray', '500', 'diagnostic', 20, 0, ''),
(126, 'eosinphil', 'Pathology Test', '100', 'diagnostic', 0, 0, ''),
(128, 'Category Name 1', 'sdfsdf', '100', 'diagnostic', 10, 0, '416'),
(129, 'Category Name 2', 'mgjgjgjg', '100', 'diagnostic', 10, 0, '449'),
(130, 'Paracetamol', 'Category 1', '200', 'diagnostic', 1000, NULL, '453'),
(131, 'Lab', 'Lab report payment', '2000', 'diagnostic', 10, NULL, '457'),
(132, 'x-ray', 'xray scan', '500', 'others', 0, NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(9, '', 'Mr. Pharmacist', 'pharmacist@hms.com', 'Colegepara, Rajbari', '+0123456789', '', '', '753', '416'),
(10, 'uploads/person1.jpg', 'Skane Pharmacist', 'pharmacist@skane.com', 'address', '09075858433', NULL, NULL, '767', '457');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense`
--

CREATE TABLE `pharmacy_expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense_category`
--

CREATE TABLE `pharmacy_expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE `pharmacy_payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_payment`
--

INSERT INTO `pharmacy_payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `status`, `hospital_id`) VALUES
(1972, NULL, '0', NULL, '1674227357', '500', '0', NULL, NULL, '', '', '500', NULL, NULL, NULL, '2866*500*1*400', '0', 'unpaid', '457'),
(1973, NULL, '0', NULL, '1674471836', '1000', '0', NULL, NULL, '', '', '1000', NULL, NULL, NULL, '2866*500*2*400', '0', 'unpaid', '457'),
(1974, NULL, '0', NULL, '1674473227', '1000', '0', NULL, NULL, '', '', '1000', NULL, NULL, NULL, '2866*500*2*400', '0', 'unpaid', '457'),
(1975, NULL, '0', NULL, '1674562009', '950', '0', NULL, NULL, '', '', '950', NULL, NULL, NULL, '2866*500*1*400,2868*450*1*400', '0', 'unpaid', '457'),
(1976, NULL, '0', NULL, '1674563284', '1000', '0', NULL, NULL, '500', '500', '500', NULL, NULL, NULL, '2866*500*2*400', '0', 'unpaid', '457'),
(1977, NULL, '0', NULL, '1674563338', '1000', '0', NULL, NULL, '500', '500', '500', NULL, NULL, NULL, '2866*500*2*400', '0', 'unpaid', '457'),
(1978, NULL, '0', NULL, '1674566066', '1000', '0', NULL, NULL, '', '', '1000', NULL, NULL, NULL, '2866*500*2*400', '0', 'unpaid', '457'),
(1979, NULL, '0', NULL, '1674566404', '950', '0', NULL, NULL, '', '', '950', NULL, NULL, NULL, '2866*500*1*400,2868*450*1*400', '0', 'unpaid', '457'),
(1980, NULL, '0', NULL, '1674566518', '1400', '0', NULL, NULL, '', '', '1400', NULL, NULL, NULL, '2868*450*2*400,2866*500*1*400', '0', 'unpaid', '457'),
(1981, NULL, '0', NULL, '1674566841', '500', '0', NULL, NULL, '', '', '500', NULL, NULL, NULL, '2866*500*1*400', '0', 'unpaid', '457'),
(1982, NULL, '0', NULL, '1674567767', '950', '0', NULL, NULL, '', '', '950', NULL, NULL, NULL, '2866*500*1*400,2868*450*1*400', '0', 'unpaid', '457'),
(1983, NULL, '0', NULL, '1674569015', '950', '0', NULL, NULL, '', '', '950', NULL, NULL, NULL, '2866*500*1*400,2868*450*1*400', '0', 'unpaid', '457'),
(1984, NULL, '0', NULL, '1674585951', '950', '0', NULL, NULL, '', '', '950', NULL, NULL, NULL, '2866*500*1*400,2868*450*1*400', '0', 'unpaid', '457'),
(1985, NULL, '0', NULL, '1674658595', '500', '0', NULL, NULL, '', '', '500', NULL, NULL, NULL, '2866*500*1*400', '0', 'unpaid', '457');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment_category`
--

CREATE TABLE `pharmacy_payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `symptom` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `advice` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `medicine` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `validity` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date`, `patient`, `doctor`, `symptom`, `advice`, `state`, `dd`, `medicine`, `validity`, `note`, `hospital_id`) VALUES
(82, '1679612400', '43', '150', '<ul>\r\n <li>Headache</li>\r\n <li>Fever</li>\r\n <li>Body pain</li>\r\n</ul>\r\n', NULL, NULL, NULL, '2866***100 mg***1 - 1 - 1***3 days***After food', NULL, '<p>after treatment, the patient will be okay</p>\r\n', '457');

-- --------------------------------------------------------

--
-- Table structure for table `received_at_depot_1`
--

CREATE TABLE `received_at_depot_1` (
  `id` int(11) NOT NULL,
  `bags` int(10) NOT NULL,
  `packs` varchar(10) NOT NULL,
  `jugs` varchar(10) NOT NULL,
  `returned_by` varchar(50) NOT NULL,
  `date_returned` varchar(20) NOT NULL,
  `time_returned` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `received_at_depot_2`
--

CREATE TABLE `received_at_depot_2` (
  `id` int(11) NOT NULL,
  `bags` varchar(10) NOT NULL,
  `packs` varchar(10) NOT NULL,
  `jugs` varchar(10) NOT NULL,
  `returned_by` varchar(50) NOT NULL,
  `date_returned` varchar(20) NOT NULL,
  `time_returned` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`, `hospital_id`) VALUES
(8, '', 'Mr Receptionist', 'receptionist@hms.com', 'Colegepara, Rajbari', '+0123456789', '', '756', '416'),
(9, NULL, 'Skane Receptionist', 'receptionist@skane.com', 'address', '09076765453', NULL, '768', '457'),
(10, NULL, 'receptionist2', 'receptionist2@skane.com', 'Downtown', '0909089898', NULL, '777', '457');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `report_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `report_type`, `patient`, `description`, `doctor`, `date`, `add_date`, `hospital_id`) VALUES
(36, 'expire', 'Sick Man*764', 'expire report', 'Fortune', '07-01-2023', '01/16/23', '457'),
(37, 'operation', 'Sick Man*764', 'operation', 'Fortune', '06-01-2023', '01/16/23', '457');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `package` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `name`, `address`, `email`, `phone`, `other`, `package`, `language`, `remarks`, `status`) VALUES
(12, 'HOSPITAL NAME', 'HOSPITAL ADDRESS', 'HOSPITAL EMAIL', 'HOSPITAL PHONE', NULL, '0', NULL, NULL, 'Approved'),
(13, 'HOSPITAL NAME 1', 'HOSPITAL ADDRESS 1', 'HOSPITAL EMAIL 1', 'HOSPITAL PHONE 1', NULL, '0', 'french', NULL, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `returned_by_depot_1`
--

CREATE TABLE `returned_by_depot_1` (
  `id` int(11) NOT NULL,
  `bags` varchar(10) NOT NULL,
  `packs` varchar(10) NOT NULL,
  `jugs` varchar(10) NOT NULL,
  `returned_by` varchar(50) NOT NULL,
  `date_returned` varchar(20) NOT NULL,
  `time_returned` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `returned_by_depot_2`
--

CREATE TABLE `returned_by_depot_2` (
  `id` int(11) NOT NULL,
  `bags` varchar(10) NOT NULL,
  `packs` varchar(10) NOT NULL,
  `jugs` varchar(10) NOT NULL,
  `returned_by` varchar(50) NOT NULL,
  `date_returned` varchar(20) NOT NULL,
  `time_returned` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `returned_to_factory`
--

CREATE TABLE `returned_to_factory` (
  `id` int(11) UNSIGNED NOT NULL,
  `bags` varchar(10) NOT NULL,
  `packs` varchar(10) NOT NULL,
  `jugs` varchar(10) NOT NULL,
  `returned_by` varchar(50) NOT NULL,
  `date_returned` varchar(50) NOT NULL,
  `time_returned` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `img_url`, `title`, `description`) VALUES
(1, '', 'Hospital Software', 'Hospital Software'),
(2, '', 'Hospital Software', 'Hospital Software'),
(3, '', 'Hospital Software', 'Hospital Software'),
(4, '', 'Hospital Software', 'Hospital Software');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `login_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `invoice_logo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `payment_gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sms_gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `codec_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `codec_purchase_code` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bags` int(10) NOT NULL,
  `packs` int(10) NOT NULL,
  `jugs` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `vat`, `login_title`, `logo`, `invoice_logo`, `payment_gateway`, `sms_gateway`, `codec_username`, `codec_purchase_code`, `hospital_id`, `bags`, `packs`, `jugs`) VALUES
(4, 'Multi Hospital', 'Multi Hospital', 'Colegepara, Rajbari', '+0123456789', 'superadmin@hms.com', '', '$', 'english', 'flat', '', '', '', '', '', '', '', '', 'superadmin', 0, 0, 0),
(33, 'Code Aristos | Hospital management System', 'Rajbari Clinic', 'Bangabandhu Avenue, Gulistan', '01718319283', 'rajbariclinic@gmail.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '452', 0, 0, 0),
(34, 'Code Aristos | Hospital management System', 'Rajbari Clinic', 'CollegePara, Rajbari, Postal Code - 7700', '+0123456789', 'rajbariclinic@gmail.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '453', 0, 0, 0),
(35, 'Code Aristos | Hospital management System', 'HOSPITAL NAME', 'HOSPITAL ADDRESS', 'HOSPITAL PHONE', 'HOSPITAL EMAIL', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '454', 0, 0, 0),
(36, 'Code Aristos | Hospital management System', 'HOSPITAL NAME 1', 'HOSPITAL ADDRESS 1', 'HOSPITAL PHONE 1', 'HOSPITAL EMAIL 1', NULL, '$', 'french', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '455', 0, 0, 0),
(37, 'Code Aristos | Hospital management System', 'Rajbari Clinic', 'road-13,house-11,Nikunja-2,Dhaka-1229', '01819636104', 'rakib@gmail.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '456', 0, 0, 0),
(38, 'Titan Web Solutions | Factory Management System', 'Kwopnaan', 'Gura Topp, Rayfield, Jos', '09038283381', 'admin@skane.com', NULL, '₦', 'english', 'flat', NULL, NULL, 'uploads/skane-l70-1.png', NULL, NULL, 'Clickatell', '', '', '457', 195, 1000, 1200),
(39, 'Code Aristos | Hospital management System', 'Test Hospital', 'No.6 Lere Close, New G.R.A Bauchi', '08118746605', 'testhospital@hms.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '458', 0, 0, 0),
(40, 'Titan Web Solutions | Hospital management System', 'Demo Hospital', 'No.6 Lere Close, New G.R.A Bauchi', '08118746605', 'hosp@gmail.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '459', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `text1` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `text2` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `text3` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `img_url`, `text1`, `text2`, `text3`, `position`, `status`) VALUES
(1, 'Slider 1', 'uploads/1503411077revised-bhatia-homebanner-03.jpg', 'Register Your Hospital Today', 'Run Your System in a Secure Environment', 'Hospital', '2', 'Active'),
(2, 'Best Hospital management System', 'uploads/1707260345350542.jpg', 'Best Hospital management System', 'Best Hospital management System', 'Best Hospital management System', '1', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `recipient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `date`, `message`, `recipient`, `user`, `hospital_id`) VALUES
(61, '1560937512', '<p>gbgbgbttb</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(60, '1560937123', '<p>sdvvdfvfdvfdvd</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(59, '1560936880', '<p>grbbrbrgbrbbrtbtrb</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(58, '1560936853', '<p>vvfevef</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(56, '1560936481', '<p>MashaAllah</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(57, '1560936795', '<p>vdfvdfvfdvf</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(62, '1560937596', '<p>g  ffgbgfbgfbgfb bgrtbr grbrbrbtrb</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(63, '1561153805', '<p>Hell Toma,<br />\nKi korso Tumi ?</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(64, '1673901140', 'lorem', 'All Doctor', '760', '457');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `api_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sender` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `authkey` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `name`, `username`, `password`, `api_id`, `sender`, `authkey`, `user`, `hospital_id`) VALUES
(1, 'Clickatell', 'rizviplabon', '', '-cTCG_kARO-2YtwI5nyfMg==', '', '', '1', '416'),
(2, 'MSG91', 'rizviplabon', '', '-cTCG_kARO-2YtwI5nyfMg==', '', '54646456546456456456456', '1', '416'),
(55, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '452'),
(56, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '452'),
(57, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '453'),
(58, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '453'),
(59, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '454'),
(60, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '454'),
(61, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '455'),
(62, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '455'),
(63, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '456'),
(64, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '456'),
(65, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '457'),
(66, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '457'),
(67, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '458'),
(68, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '458'),
(69, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '459'),
(70, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '459');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `template` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `template`, `user`, `x`, `hospital_id`) VALUES
(6, 'CBC', '<table align=\"center\" border=\"1\" bordercolor=\"#ccc\" cellpadding=\"5\" cellspacing=\"0\" >\n <thead>\n  <tr>\n   <th scope=\"col\">Head 1</th>\n   <th scope=\"col\">Head 2</th>\n   <th scope=\"col\">Head 3</th>\n   <th scope=\"col\">Head 4</th>\n   <th scope=\"col\">Head 5</th>\n  </tr>\n </thead>\n <tbody>\n  <tr>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n  </tr>\n  <tr>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n  </tr>\n </tbody>\n</table>\n\n<p>?</p>\n', '2', '', '416'),
(3, 'Diagnostic', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\n <tbody>\n  <tr>\n   <td>? ?Lab Name? ??</td>\n   <td>? ?Value? ? ?</td>\n  </tr>\n  <tr>\n   <td>?</td>\n   <td>?</td>\n  </tr>\n  <tr>\n   <td>?</td>\n   <td>?</td>\n  </tr>\n </tbody>\n</table>\n\n<p>?</p>\n', '2', '', '416'),
(5, 'Lipid  Profile', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\n <caption>Lipid Profile</caption>\n <thead>\n  <tr>\n   <th scope=\"col\">? ? ? Head1? ? ?</th>\n   <th scope=\"col\"><span>? ? ?Head2? ? ??</span></th>\n   <th scope=\"col\"><span>? ? ? Head3? ? ??</span></th>\n   <th scope=\"col\"><span>? ? ? Head4? ? ??</span></th>\n   <th scope=\"col\"><span>? ? ? Head5? ? ??</span></th>\n  </tr>\n </thead>\n <tbody>\n  <tr>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n  </tr>\n  <tr>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n   <td>?</td>\n  </tr>\n </tbody>\n</table>\n\n<p>?</p>\n', '2', '', '416'),
(9, 'Lipid Profile Result', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\"  summary=\"Result Of Lipid Profile \">\n <caption>Lipid Profile Result</caption>\n <tbody>\n  <tr>\n   <td>?SL</td>\n   <td>? ? Test Name</td>\n   <td>? ?Test Result</td>\n   <td>? Reference Valur</td>\n   <td>? Comment</td>\n  </tr>\n  <tr>\n   <td>?1</td>\n   <td>? ?Lipid Profile?</td>\n   <td>? ? 100</td>\n   <td>? ? >10 < 150</td>\n   <td>? ?Normal</td>\n  </tr>\n  <tr>\n   <td>?2</td>\n   <td>? ?Lipid Profile?</td>\n   <td>? ??100</td>\n   <td>? ? >10 < 150</td>\n   <td>? ?Normal</td>\n  </tr>\n  <tr>\n   <td>?3</td>\n   <td>? ?Lipid Profile?</td>\n   <td>? ??100</td>\n   <td>? ??>10 < 150</td>\n   <td>? ?Normal</td>\n  </tr>\n  <tr>\n   <td>?4</td>\n   <td>? ?Lipid Profile?</td>\n   <td>? ? 100</td>\n   <td>? ??>10 < 150</td>\n   <td>? ?Normal</td>\n  </tr>\n </tbody>\n</table>\n\n<p>?</p>\n', '2', '', '416'),
(12, 'Malaria Test', '<ol>\r\n <li>Lorem:</li>\r\n <li>Ipsum:</li>\r\n <li>Dolor:</li>\r\n</ol>\r\n', '766', NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `id` int(100) NOT NULL,
  `doctor` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `weekday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `duration` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_schedule`
--

INSERT INTO `time_schedule` (`id`, `doctor`, `weekday`, `s_time`, `e_time`, `s_time_key`, `duration`, `hospital_id`) VALUES
(98, '150', 'Monday', '04:00 AM', '05:00 PM', '48', '3', '457');

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `weekday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`id`, `doctor`, `s_time`, `e_time`, `weekday`, `s_time_key`, `hospital_id`) VALUES
(2140, '150', '04:45 AM', '05:00 AM', 'Monday', '57', '457'),
(2139, '150', '04:30 AM', '04:45 AM', 'Monday', '54', '457'),
(2138, '150', '04:15 AM', '04:30 AM', 'Monday', '51', '457'),
(2137, '150', '04:00 AM', '04:15 AM', 'Monday', '48', '457'),
(2141, '150', '05:00 AM', '05:15 AM', 'Monday', '60', '457'),
(2142, '150', '05:15 AM', '05:30 AM', 'Monday', '63', '457'),
(2143, '150', '05:30 AM', '05:45 AM', 'Monday', '66', '457'),
(2144, '150', '05:45 AM', '06:00 AM', 'Monday', '69', '457'),
(2145, '150', '06:00 AM', '06:15 AM', 'Monday', '72', '457'),
(2146, '150', '06:15 AM', '06:30 AM', 'Monday', '75', '457'),
(2147, '150', '06:30 AM', '06:45 AM', 'Monday', '78', '457'),
(2148, '150', '06:45 AM', '07:00 AM', 'Monday', '81', '457'),
(2149, '150', '07:00 AM', '07:15 AM', 'Monday', '84', '457'),
(2150, '150', '07:15 AM', '07:30 AM', 'Monday', '87', '457'),
(2151, '150', '07:30 AM', '07:45 AM', 'Monday', '90', '457'),
(2152, '150', '07:45 AM', '08:00 AM', 'Monday', '93', '457'),
(2153, '150', '08:00 AM', '08:15 AM', 'Monday', '96', '457'),
(2154, '150', '08:15 AM', '08:30 AM', 'Monday', '99', '457'),
(2155, '150', '08:30 AM', '08:45 AM', 'Monday', '102', '457'),
(2156, '150', '08:45 AM', '09:00 AM', 'Monday', '105', '457'),
(2157, '150', '09:00 AM', '09:15 AM', 'Monday', '108', '457'),
(2158, '150', '09:15 AM', '09:30 AM', 'Monday', '111', '457'),
(2159, '150', '09:30 AM', '09:45 AM', 'Monday', '114', '457'),
(2160, '150', '09:45 AM', '10:00 AM', 'Monday', '117', '457'),
(2161, '150', '10:00 AM', '10:15 AM', 'Monday', '120', '457'),
(2162, '150', '10:15 AM', '10:30 AM', 'Monday', '123', '457'),
(2163, '150', '10:30 AM', '10:45 AM', 'Monday', '126', '457'),
(2164, '150', '10:45 AM', '11:00 AM', 'Monday', '129', '457'),
(2165, '150', '11:00 AM', '11:15 AM', 'Monday', '132', '457'),
(2166, '150', '11:15 AM', '11:30 AM', 'Monday', '135', '457'),
(2167, '150', '11:30 AM', '11:45 AM', 'Monday', '138', '457'),
(2168, '150', '11:45 AM', '12:00 AM', 'Monday', '141', '457'),
(2169, '150', '12:00 AM', '12:15 PM', 'Monday', '144', '457'),
(2170, '150', '12:15 PM', '12:30 PM', 'Monday', '147', '457'),
(2171, '150', '12:30 PM', '12:45 PM', 'Monday', '150', '457'),
(2172, '150', '12:45 PM', '01:00 PM', 'Monday', '153', '457'),
(2173, '150', '01:00 PM', '01:15 PM', 'Monday', '156', '457'),
(2174, '150', '01:15 PM', '01:30 PM', 'Monday', '159', '457'),
(2175, '150', '01:30 PM', '01:45 PM', 'Monday', '162', '457'),
(2176, '150', '01:45 PM', '02:00 PM', 'Monday', '165', '457'),
(2177, '150', '02:00 PM', '02:15 PM', 'Monday', '168', '457'),
(2178, '150', '02:15 PM', '02:30 PM', 'Monday', '171', '457'),
(2179, '150', '02:30 PM', '02:45 PM', 'Monday', '174', '457'),
(2180, '150', '02:45 PM', '03:00 PM', 'Monday', '177', '457'),
(2181, '150', '03:00 PM', '03:15 PM', 'Monday', '180', '457'),
(2182, '150', '03:15 PM', '03:30 PM', 'Monday', '183', '457'),
(2183, '150', '03:30 PM', '03:45 PM', 'Monday', '186', '457'),
(2184, '150', '03:45 PM', '04:00 PM', 'Monday', '189', '457'),
(2185, '150', '04:00 PM', '04:15 PM', 'Monday', '192', '457'),
(2186, '150', '04:15 PM', '04:30 PM', 'Monday', '195', '457'),
(2187, '150', '04:30 PM', '04:45 PM', 'Monday', '198', '457'),
(2188, '150', '04:45 PM', '05:00 PM', 'Monday', '201', '457');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `hospital_ion_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `hospital_ion_id`) VALUES
(1, '127.0.0.1', 'superadmin', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', '', 'superadmin@hms.com', '', 'eX0.Bq6nP57EuXX4hJkPHO973e7a4c25f1849d3a', 1511432365, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1676010750, 1, 'Super', 'Admin', 'ADMIN', '0', ''),
(2, '127.0.0.1', 'Hospital', '$2y$08$nxWYs4Sc9VN6czyUtnJRwuMaflhMRZSV33GESf5zi8rjXGfaSHVlu', NULL, 'admin@hms.com', NULL, NULL, NULL, NULL, 1268889832, 1584437404, 1, 'admin', NULL, NULL, NULL, ''),
(750, '110.76.129.146', 'Mr Patient', '$2y$08$vTCe3Z4D1j7bVT49XXzoY.PiVP6yMFZ7hBudIbOfRE0vbEtaw5AOa', NULL, 'patient@hms.com', NULL, NULL, NULL, NULL, 1562482338, 1562485101, 1, NULL, NULL, NULL, NULL, '2'),
(751, '127.0.0.1', 'Mr Doctor', '$2y$08$ehhf9vK8Of7YuYL34uhlAel7HT/IOG/afe1/cHebJOOs2MuEhFTyu', NULL, 'doctor@hms.com', NULL, NULL, NULL, NULL, 1562482389, 1673876558, 1, NULL, NULL, NULL, NULL, '2'),
(752, '110.76.129.146', 'Mrs Nurse', '$2y$08$ZjfXG10xA.CitrTOK5SC6uXiAL2FnKgLOuUEWIGzlXECkTaMW3b3C', NULL, 'nurse@hms.com', NULL, NULL, NULL, NULL, 1562482422, 1673875537, 1, NULL, NULL, NULL, NULL, '2'),
(753, '110.76.129.146', 'Mr. Pharmacist', '$2y$08$KbnWZrJMhY6BTaEBp.0NJO1sbXaNzT7boNMdScBJMFrOUGljv2QWS', NULL, 'pharmacist@hms.com', NULL, NULL, NULL, NULL, 1562482455, 1673878268, 1, NULL, NULL, NULL, NULL, '2'),
(754, '110.76.129.146', 'Mr Laboratorist', '$2y$08$DU10ibM6SJlw8dK7WER5qeYmRWM/Jl51OxnhpOHvPiTa4lxLBrgjC', NULL, 'laboratorist@hms.com', NULL, NULL, NULL, NULL, 1562482499, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(755, '110.76.129.146', 'Mr Accountant', '$2y$08$ysIjt93NUbQITf/jtbdAPOGisj2wrT07GCQUC0eJBbqrhZYijp9hq', NULL, 'accountant@hms.com', NULL, NULL, NULL, NULL, 1562482536, 1673875580, 1, NULL, NULL, NULL, NULL, '2'),
(756, '110.76.129.146', 'Mr Receptionist', '$2y$08$QGdhZzdJE3Wz76yBlRlLmew.7GimX8MBel8JQiyR8u3uIUQpqTt.m', NULL, 'receptionist@hms.com', NULL, NULL, NULL, NULL, 1562482561, 1562482625, 1, NULL, NULL, NULL, NULL, '2'),
(760, '::1', 'Moses Avu', '$2y$08$C8NFSuoDD7nvvdIKV3IOnOTyZZRXSOPjEF65WdlXcy0UB5s3uDwxm', NULL, 'admin@kwopnaan.com', NULL, NULL, NULL, NULL, 1672256026, 1683114282, 1, NULL, NULL, NULL, NULL, NULL),
(763, '::1', 'Fortune', '$2y$08$dUlBt.5LumkEKqAUmLlq5OdWqQgPu1DozAhqu9qLtzltFsw67TRea', NULL, 'doctor@skane.com', NULL, NULL, NULL, NULL, 1673864857, 1679671967, 1, NULL, NULL, NULL, NULL, '760'),
(764, '::1', 'Sick Man', '$2y$08$GlAZ0r9sU4dMo/8NaGmrDu.uLQabngvXgoVXzXtM3SffvXMW3WtcO', NULL, 'sick@gmail.com', NULL, NULL, NULL, NULL, 1673865111, NULL, 1, NULL, NULL, NULL, NULL, '760'),
(765, '::1', 'Maria', '0', NULL, 'Maria@0909089898.com', NULL, NULL, NULL, NULL, 1673876873, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(766, '::1', 'Skane Laboratorist', '$2y$08$0wdIeSeWX5hdksAL6DegaOwyvJnlXC2a./W/dDhHfrqfDc3GPRJSi', NULL, 'laboratorist@skane.com', NULL, NULL, NULL, NULL, 1673878707, 1679655304, 1, NULL, NULL, NULL, NULL, '760'),
(767, '::1', 'Skane Pharmacist', '$2y$08$rl76FC/tUtIkhsWwjp/NAOFy/qxgoRal7YS31g1E3eonkCh0DOeme', NULL, 'pharmacist@skane.com', NULL, NULL, NULL, NULL, 1673878916, 1679672054, 1, NULL, NULL, NULL, NULL, '760'),
(768, '::1', 'Skane Receptionist', '$2y$08$MDGHoTl2gt2LkQgOmpxiAOWeqZZoa0OQvizR9dFkrOdwu.oLlMVGq', NULL, 'receptionist@skane.com', NULL, 'Q4rgpT6GLWGbIPQK9AJG6.229159524c0ded80f7', 1673946000, NULL, 1673881314, 1682691786, 1, NULL, NULL, NULL, NULL, '760'),
(770, '::1', 'dummy p', '$2y$08$wyl5/eTwNK6YHEKnsw4c8OZEMrMo2dGc8fFhwXwK8a/Iw3rR/xbMi', NULL, 'unanamfortune@gmail.com', NULL, 'Vt8cAbr4WPx6rB-C4d4mau388d3d0947fd730390', 1673946015, NULL, 1673887949, NULL, 1, NULL, NULL, NULL, NULL, '760'),
(771, '::1', 'unanamfortune@gmail.com', '$2y$08$OUTGX/jciqxc5TvDHOYNbOVqsrCrFfNJtwzXzb4dxxf51wTJNbeXO', NULL, 'unanafortune@gmail.com', NULL, NULL, NULL, NULL, 1673888060, NULL, 1, NULL, NULL, NULL, NULL, '760'),
(773, '192.168.43.23', 'Delilah Samson', '$2y$08$vqLryMyNWIgfpc6yiPBIgeVvvtRkh/I1.j1ETQd22DUw9pZzNCJ0a', NULL, 'sdelilah@gmail.com', NULL, NULL, NULL, NULL, 1673965552, 1674566001, 1, NULL, NULL, NULL, NULL, '760'),
(774, '::1', 'Michael', '$2y$08$og/Y4bN.WrX276WQD5ca7eAbavIfkZEVNBWPR/.9dB1Od4QeO8M6O', NULL, 'michael@skane.com', NULL, NULL, NULL, NULL, 1673966105, 1673966141, 1, NULL, NULL, NULL, NULL, '760'),
(775, '::1', 'Skane Accountant', '$2y$08$RGruhi.5MjZFvf4nTC1QSe.HLAskgwbDO.5KpoIoPLF.j6UHfY/6W', NULL, 'accountant@skane.com', NULL, NULL, NULL, NULL, 1674224041, 1676384830, 1, NULL, NULL, NULL, NULL, '760'),
(777, '::1', 'receptionist2', '$2y$08$zd50Xnteo.XAqoWVl3jJeudUVonHTdb59yPoraPpMV9pJkGKX5q5a', NULL, 'receptionist2@skane.com', NULL, NULL, NULL, NULL, 1675265995, 1675266012, 1, NULL, NULL, NULL, NULL, '760'),
(778, '::1', 'unanaijmfortune@gmail.com', '$2y$08$mfn4lSBU/7EMMzwBNYRMSeJn3CXr5Ht6yQJucp7zkC7kdBdsvWc5q', NULL, 'unanamfojiprtune@gmail.com', NULL, NULL, NULL, NULL, 1680796089, NULL, 1, NULL, NULL, NULL, NULL, '760'),
(780, '::1', 'Depot 1 Sales', '$2y$08$M/1osJG8MqD3gXL7DdhSD.T2OU3t9sA4ZVtNk1M58V7Qdk76sOvxi', NULL, 'unanaortune@gmail.com', NULL, NULL, NULL, NULL, 1683031480, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(781, '::1', 'Depot 1 Sales1', '$2y$08$jGErYcNlhtCbwM4mVVx0/ukxTZwIj2wA8r4MkJYV79UHngyVG1.8S', NULL, 'nogat@gmail.com', NULL, NULL, NULL, NULL, 1683031655, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(782, '::1', 'Alfie Solomons', '$2y$08$Mhl7xQH34h/PPksN8wrlKuPa6u3IV0y4w22N8fGj2Jkr1Xru33WW6', NULL, 'depot1@kwopnaan.com', NULL, NULL, NULL, NULL, 1683039491, 1683041135, 1, NULL, NULL, NULL, NULL, '760'),
(792, '::1', 'Arthur Shelby', '$2y$08$PV4U76eurwXlZwkLN591HuJsPXk4h3dr6ZUpkpoCZ2Om/g3AhE0E.', NULL, 'depot2@kwopnaan.com', NULL, NULL, NULL, NULL, 1683056381, 1683057477, 1, NULL, NULL, NULL, NULL, '760'),
(794, '::1', 'Luca Changretta', '$2y$08$KPb3/aUvtBXD8gF1mHrqh.zCr4tw2QTu9ob7buCRlelk1SzzcHKm6', NULL, 'factory@kwopnaan.com', NULL, NULL, NULL, NULL, 1683061524, 1683114246, 1, NULL, NULL, NULL, NULL, '760');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 11),
(754, 752, 6),
(755, 753, 7),
(756, 754, 8),
(762, 760, 11),
(768, 766, 8),
(769, 767, 7),
(782, 780, 6),
(783, 781, 6),
(784, 782, 6),
(794, 792, 7),
(796, 794, 8);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `emergency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `support` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `block_1_text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `service_block__text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_block__text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_username` varchar(100) NOT NULL,
  `google_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `skype_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `title`, `logo`, `address`, `phone`, `emergency`, `support`, `email`, `currency`, `block_1_text_under_title`, `service_block__text_under_title`, `doctor_block__text_under_title`, `facebook_id`, `twitter_id`, `twitter_username`, `google_id`, `youtube_id`, `skype_id`, `x`) VALUES
(1, 'Hospital Software', '', 'Boropool, Rajbari-7700', '+0123456789', '+0123456789', '+0123456789', 'admin@demo.com', '$', 'Best hospital software', 'Aenean nibh ante, lacinia non tincidunt nec, lobortis ut tellus. Sed in porta diam.', 'We work with forward thinking clients to create beautiful, honest and amazing things that bring positive results.', 'https://www.facebook.com/CASft', 'https://www.twitter.com/', 'casoft', 'https://www.google.com/', 'https://www.youtube.com/', 'https://www.skype.com/', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankb`
--
ALTER TABLE `bankb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_category`
--
ALTER TABLE `bed_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depot1`
--
ALTER TABLE `depot1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depot2`
--
ALTER TABLE `depot2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_production`
--
ALTER TABLE `factory_production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_category`
--
ALTER TABLE `lab_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ot_payment`
--
ALTER TABLE `ot_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_material`
--
ALTER TABLE `patient_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_at_depot_1`
--
ALTER TABLE `received_at_depot_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_at_depot_2`
--
ALTER TABLE `received_at_depot_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_by_depot_1`
--
ALTER TABLE `returned_by_depot_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_by_depot_2`
--
ALTER TABLE `returned_by_depot_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_to_factory`
--
ALTER TABLE `returned_to_factory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `bankb`
--
ALTER TABLE `bankb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bed_category`
--
ALTER TABLE `bed_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `depot1`
--
ALTER TABLE `depot1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `depot2`
--
ALTER TABLE `depot2`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `factory_production`
--
ALTER TABLE `factory_production`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1931;

--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lab_category`
--
ALTER TABLE `lab_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2869;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ot_payment`
--
ALTER TABLE `ot_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1614;

--
-- AUTO_INCREMENT for table `patient_material`
--
ALTER TABLE `patient_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1986;

--
-- AUTO_INCREMENT for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `received_at_depot_1`
--
ALTER TABLE `received_at_depot_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `received_at_depot_2`
--
ALTER TABLE `received_at_depot_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `returned_by_depot_1`
--
ALTER TABLE `returned_by_depot_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `returned_by_depot_2`
--
ALTER TABLE `returned_by_depot_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `returned_to_factory`
--
ALTER TABLE `returned_to_factory`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `time_schedule`
--
ALTER TABLE `time_schedule`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2189;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=795;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=797;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
