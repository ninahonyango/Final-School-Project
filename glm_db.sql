-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 11:04 AM
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
-- Database: `glm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `glm_db_admins`
--

CREATE TABLE `glm_db_admins` (
  `glm_db_admins_id` int(11) NOT NULL,
  `glm_db_admins_username` varchar(50) DEFAULT NULL,
  `glm_db_admins_password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glm_db_admins`
--

INSERT INTO `glm_db_admins` (`glm_db_admins_id`, `glm_db_admins_username`, `glm_db_admins_password`) VALUES
(1, 'admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `glm_db_appointments`
--

CREATE TABLE `glm_db_appointments` (
  `glm_db_appointments_id` int(11) NOT NULL,
  `glm_db_appointments_user` int(11) NOT NULL,
  `glm_db_appointments_servicecategory` int(11) NOT NULL,
  `glm_db_appointments_date` date DEFAULT NULL,
  `glm_db_appointments_time` varchar(50) DEFAULT NULL,
  `glm_db_appointments_servicename` varchar(50) NOT NULL,
  `glm_db_appointments_serviceprovider` varchar(50) DEFAULT NULL,
  `glm_db_appointments_payment` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glm_db_appointments`
--

INSERT INTO `glm_db_appointments` (`glm_db_appointments_id`, `glm_db_appointments_user`, `glm_db_appointments_servicecategory`, `glm_db_appointments_date`, `glm_db_appointments_time`, `glm_db_appointments_servicename`, `glm_db_appointments_serviceprovider`, `glm_db_appointments_payment`) VALUES
(1, 3, 1, '2022-03-31', '08:00:00', 'Hair Dressing', NULL, NULL),
(2, 3, 3, '2022-03-31', '10:00:00 am', 'Nail Polish', NULL, NULL),
(3, 1, 1, '2022-03-31', '02:00:00 pm', 'Hair Dye', NULL, NULL),
(4, 1, 1, '2022-03-31', '03:00:00 pm', 'Hair Cutting', NULL, NULL),
(5, 4, 1, '2022-03-31', '12:00:00 pm', 'Shaving', NULL, 'Paid'),
(6, 1, 3, '2022-04-08', '10:15:00 am', 'Manicure', NULL, NULL),
(7, 4, 1, '2022-04-09', '12:30:00 pm', 'Hair Cutting', NULL, NULL),
(8, 1, 3, '2022-04-11', '12:50:00 pm', 'Nail Polish', NULL, NULL),
(9, 4, 1, '2022-04-08', '01:50:00 pm', 'Shaving and face scrubbing', NULL, NULL),
(10, 2, 2, '2022-04-28', '05:00:00 pm', '2', NULL, NULL),
(11, 2, 1, '2022-04-29', '06:00:00 pm', '4', NULL, NULL),
(12, 2, 3, '2022-04-28', '06:00:00 pm', '2', NULL, NULL),
(13, 2, 1, '2022-04-27', '08:00 - 09:00HRS', '2', NULL, NULL),
(14, 18, 3, '2022-04-29', '10:00 - 11:00HRS', '4', NULL, NULL),
(15, 19, 1, '2022-05-04', '09:00 - 10:00HRS', '3', 'Olive Yew', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `glm_db_cashiers`
--

CREATE TABLE `glm_db_cashiers` (
  `glm_db_cashiers_id` int(11) NOT NULL,
  `glm_db_cashiers_username` varchar(50) NOT NULL DEFAULT '0',
  `glm_db_cashiers_password` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glm_db_cashiers`
--

INSERT INTO `glm_db_cashiers` (`glm_db_cashiers_id`, `glm_db_cashiers_username`, `glm_db_cashiers_password`) VALUES
(1, 'cashier', 'pass1'),
(3, 'Casshier', 'baa87257b0a32b970cdd816effc4b178');

-- --------------------------------------------------------

--
-- Table structure for table `glm_db_contacts`
--

CREATE TABLE `glm_db_contacts` (
  `glm_db_contacts_id` int(11) NOT NULL,
  `glm_db_contacts_customername` varchar(200) DEFAULT NULL,
  `glm_db_contacts_message` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glm_db_contacts`
--

INSERT INTO `glm_db_contacts` (`glm_db_contacts_id`, `glm_db_contacts_customername`, `glm_db_contacts_message`) VALUES
(1, 'Keith rhova', 'Your services are awesome!');

-- --------------------------------------------------------

--
-- Table structure for table `glm_db_employees`
--

CREATE TABLE `glm_db_employees` (
  `glm_db_employees_id` int(11) NOT NULL,
  `glm_db_employees_email` varchar(50) DEFAULT NULL,
  `glm_db_employees_password` varchar(50) DEFAULT NULL,
  `glm_db_employees_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glm_db_employees`
--

INSERT INTO `glm_db_employees` (`glm_db_employees_id`, `glm_db_employees_email`, `glm_db_employees_password`, `glm_db_employees_name`) VALUES
(1, 'sinatra@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'Frank Sinatra'),
(4, 'pat@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'Patty Furniture'),
(5, 'oliv@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'Olive Yew'),
(6, 'aidbg@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'Aida Bugg'),
(7, 'teri@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'Teri Dactyl'),
(8, 'peg@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'Peg Legge'),
(9, 'jdoe@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `glm_db_services`
--

CREATE TABLE `glm_db_services` (
  `glm_db_services_id` int(11) NOT NULL,
  `glm_db_services_name` varchar(200) DEFAULT NULL,
  `glm_db_services_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glm_db_services`
--

INSERT INTO `glm_db_services` (`glm_db_services_id`, `glm_db_services_name`, `glm_db_services_price`) VALUES
(1, 'Hair Care', 'KSH 2000'),
(2, 'Skin Care', 'KSH 2500'),
(3, 'Nail and Foot Care', 'KSH 1500');

-- --------------------------------------------------------

--
-- Table structure for table `glm_db_users`
--

CREATE TABLE `glm_db_users` (
  `glm_db_users_id` int(11) NOT NULL,
  `glm_db_users_name` varchar(45) DEFAULT NULL,
  `glm_db_users_email` varchar(45) DEFAULT NULL,
  `glm_db_users_password` varchar(45) DEFAULT NULL,
  `glm_db_users_username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glm_db_users`
--

INSERT INTO `glm_db_users` (`glm_db_users_id`, `glm_db_users_name`, `glm_db_users_email`, `glm_db_users_password`, `glm_db_users_username`) VALUES
(2, 'Ninah Onyango', 'nishpesh@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(3, 'John Doe', 'jdoe@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(4, 'Dickens Shiundu', 'dickens@gbh.com', '202cb962ac59075b964b07152d234b70', NULL),
(6, 'Lone Ranger', 'lranger@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(7, '11234', 'ty', '202cb962ac59075b964b07152d234b70', NULL),
(9, 'kay kay', 'kay@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(10, 'Jay R', 'j@gmail.com', 'b894afd20e155e3661363f88b3a00671', NULL),
(18, 'Bot Nuke', 'btnk@gmail.com', 'baa87257b0a32b970cdd816effc4b178', 'botnuke'),
(19, 'Tina Bobson', 't@gmail.com', 'c3729871f89a3c688e52321251138e8c', 'tbobson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `glm_db_admins`
--
ALTER TABLE `glm_db_admins`
  ADD PRIMARY KEY (`glm_db_admins_id`);

--
-- Indexes for table `glm_db_appointments`
--
ALTER TABLE `glm_db_appointments`
  ADD PRIMARY KEY (`glm_db_appointments_id`),
  ADD UNIQUE KEY `gbl_db_appointments_id_UNIQUE` (`glm_db_appointments_id`),
  ADD KEY `fk_gbl_db_appointments_glm_db_users_idx` (`glm_db_appointments_user`),
  ADD KEY `fk_glm_db_appointments_glm_db_services1_idx` (`glm_db_appointments_servicecategory`);

--
-- Indexes for table `glm_db_cashiers`
--
ALTER TABLE `glm_db_cashiers`
  ADD PRIMARY KEY (`glm_db_cashiers_id`);

--
-- Indexes for table `glm_db_contacts`
--
ALTER TABLE `glm_db_contacts`
  ADD PRIMARY KEY (`glm_db_contacts_id`);

--
-- Indexes for table `glm_db_employees`
--
ALTER TABLE `glm_db_employees`
  ADD PRIMARY KEY (`glm_db_employees_id`);

--
-- Indexes for table `glm_db_services`
--
ALTER TABLE `glm_db_services`
  ADD PRIMARY KEY (`glm_db_services_id`),
  ADD UNIQUE KEY `glm_db_services_id_UNIQUE` (`glm_db_services_id`);

--
-- Indexes for table `glm_db_users`
--
ALTER TABLE `glm_db_users`
  ADD PRIMARY KEY (`glm_db_users_id`),
  ADD UNIQUE KEY `glm_db_user_id_UNIQUE` (`glm_db_users_id`),
  ADD UNIQUE KEY `glm_db_users_email_UNIQUE` (`glm_db_users_email`),
  ADD UNIQUE KEY `glm_db_users_name_UNIQUE` (`glm_db_users_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `glm_db_admins`
--
ALTER TABLE `glm_db_admins`
  MODIFY `glm_db_admins_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `glm_db_appointments`
--
ALTER TABLE `glm_db_appointments`
  MODIFY `glm_db_appointments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `glm_db_cashiers`
--
ALTER TABLE `glm_db_cashiers`
  MODIFY `glm_db_cashiers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `glm_db_contacts`
--
ALTER TABLE `glm_db_contacts`
  MODIFY `glm_db_contacts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `glm_db_employees`
--
ALTER TABLE `glm_db_employees`
  MODIFY `glm_db_employees_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `glm_db_services`
--
ALTER TABLE `glm_db_services`
  MODIFY `glm_db_services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `glm_db_users`
--
ALTER TABLE `glm_db_users`
  MODIFY `glm_db_users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `glm_db_appointments`
--
ALTER TABLE `glm_db_appointments`
  ADD CONSTRAINT `fk_gbl_db_appointments_glm_db_users` FOREIGN KEY (`glm_db_appointments_user`) REFERENCES `glm_db_users` (`glm_db_users_id`),
  ADD CONSTRAINT `fk_glm_db_appointments_glm_db_services1` FOREIGN KEY (`glm_db_appointments_servicecategory`) REFERENCES `glm_db_services` (`glm_db_services_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
