-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 03:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_list`
--

CREATE TABLE `appointment_list` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `select_vaccine` int(11) NOT NULL,
  `select_hospital` int(11) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `cnic_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_list`
--

INSERT INTO `appointment_list` (`id`, `first_name`, `last_name`, `dob`, `location`, `age`, `contact_number`, `select_vaccine`, `select_hospital`, `post_code`, `cnic_number`) VALUES
(5, 'Alex', 'zender', '2006-12-12', 'karachi', '18', 'alex@gmail.com', 4, 3, '12355', '00502-7097998-0');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_list`
--

CREATE TABLE `hospital_list` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_list`
--

INSERT INTO `hospital_list` (`id`, `hospital_name`, `hospital_location`) VALUES
(2, 'The Aga Khan Hospital ', 'National Stadium Rd, Aga Khan University Hospital, Karachi'),
(3, 'Medicare Cardiac & General Hospital', 'Shaheed-e-Millat Rd ·'),
(4, 'Civil Hospital Karachi', 'Government hospital Mission Rd، near Civil Hospital Masjid '),
(5, 'Family Care Hospital', 'M-151 Khalid Bin Walid Rd'),
(6, 'Saifee Hospital', 'St-1, Block F North Nazimabad Town, Karachi, Sindh 74700');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_login`
--

CREATE TABLE `hospital_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_login`
--

INSERT INTO `hospital_login` (`id`, `username`, `email`, `password`) VALUES
(1, 'Imama Mushtaq', 'mushtaqueimama@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_req`
--

CREATE TABLE `hospital_req` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_req`
--

INSERT INTO `hospital_req` (`id`, `hospital_name`, `location`, `email`) VALUES
(1, 'Dr. Ziauddin Hospital', 'North Nazimabad ,General hospital Allama Rasheed Turabi Rd.', 'imamamushtaq5@gmail.com'),
(6, 'Dr. Ziauddin Hospital', 'karachi', 'tom@gmail.com'),
(7, 'Dr. Ziauddin Hospital', 'North Nazimabad ,General hospital Allama Rasheed Turabi Rd.', 'imamamushtaq5@gmail.com'),
(8, 'Dr. Ziauddin Hospital', 'National Stadium Rd, Aga Khan University Hospital, Karachi', 'mushtaqueimama@gmail.com'),
(9, 'The Aga Khan Hospital ', 'National Stadium Rd, Aga Khan University Hospital, Karachi', 'imamamushtaq5@gmail.com'),
(10, 'Dr. Ziauddin Hospital', 'National Stadium Rd, Aga Khan University Hospital, Karachi', 'imamamushtaq5@gmail.com'),
(11, 'imama', 'lahore', 'aasiyabushra335@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `login_email` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `login_name`, `login_email`, `login_password`) VALUES
(1, 'Imama Mushtaq ', 'imama@gmail.com', '12345admin'),
(2, 'Bushra Shaqeel', 'bushra@gmail.com', '12345admin'),
(3, 'Fatima Bint e Aqeel', 'fatima@gmail.com', '12345admin');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `age` varchar(255) NOT NULL,
  `doses` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `age`, `doses`, `description`) VALUES
(1, '6 months - 5 years', 'Pfizer-BioNTech COVID-19 vaccine.', 'Among people with a typical immune system: Children age 6 months up to age 4 years are up to date after three doses of a Pfizer-BioNTech COVID-19 vaccine. People age 5 and older are up to date after one Pfizer-BioNTech COVID-19 vaccine.'),
(2, '6 years - 10 years ', 'Pfizer II-BioNTech ', 'People age 5 and older are up to date after one Pfizer-BioNTech COVID-19 vaccine. For people who have not had a 2023-2024 COVID-19 vaccination, the CDC recommends getting an additional shot of that updated vaccine.'),
(3, '18 +', 'CanSino-Bio', 'CanSino (CanSinoBIO, Tianjin, China) is a recombinant viral vector vaccine developed by China. It uses adenovirus as a vector to transfer the genes that code for COVID-19 proteins to human cells, resulting in the production of deactivating antibodies agai'),
(4, '25 +', 'Sputnik', 'The Sputnik V vaccine is based on a proven well-studied human adenovirus vector platform; these vectors cause the common cold and have plagued humanity for millennia.');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `email`, `password`) VALUES
(1, 'Adam', 'adam@gmail.com', '123456'),
(2, 'Alex', 'alex@gmail.com', '123456'),
(4, 'bel', 'henry@gmail.com', '123456'),
(5, 'Alina', 'alina@gmail.com', '123456'),
(6, 'Herry', 'herry@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`id`, `first_name`, `last_name`, `email`, `subject`, `description`) VALUES
(1, 'Peter', 'Pan', 'peter@gmail.com', 'Medication', 'What medications have been prescribed?'),
(2, 'Anne', 'Bailey', 'anne@gmail.com', 'After discharge', 'What happens after discharge? Will your loved one need more time to recover at home? When should he or she make a follow up appointment with their primary care physician or specialist?'),
(3, 'John', 'Buckland', 'john@gmail.com', 'Recovery', 'What sort of recovery should we expect? Recovery time can be highly variable. At times, it is too early to know how long recovery will take but asking can help you plan your time and resources. Stay in touch with your loved one’s team.'),
(4, 'Alex', 'Abraham', 'Alex@gmail.com', 'Diagnosis', 'Do you have a definitive diagnosis and, if so, what is it? Learn about the diagnosis and possible treatment options. If the doctor not yet have a definitive diagnosis, ask what conditions could be causing the symptoms.'),
(5, 'David', 'Lewis', 'david@gamil.com', ' Tests ', 'What tests are being ordered and why? Ask what lab and imaging tests have been requested and what those tests are looking for.');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `username`, `email`, `password`, `contact`) VALUES
(1, 'Adam', 'adam@gmail.com', '12345', '03112033680'),
(2, 'David', 'david@gmail.com', '12345', '03568789642'),
(3, 'James', 'james@gmail.com', '12345', '03562683907'),
(4, 'Harry', 'harry@gmail.com', '12345', '03568789642'),
(5, 'Peter', 'peter@gmail.com', '12345', '099845379932'),
(6, 'John', 'john@gmail.com', '12345', '031422034213'),
(7, 'Max', 'max@gamil.com', '12345', '13152039464'),
(8, 'Kevin', 'kevin@gmail.com', '12345', '099845379932'),
(9, 'Anne', 'anne@gmail.com', '12345', '031422034213'),
(10, 'Ella', 'ella@gmail.com', '12345', '03568789642');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_list`
--

CREATE TABLE `vaccine_list` (
  `id` int(11) NOT NULL,
  `vaccine_name` varchar(255) NOT NULL,
  `vaccine_qauntity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccine_list`
--

INSERT INTO `vaccine_list` (`id`, `vaccine_name`, `vaccine_qauntity`) VALUES
(1, 'Moderna', 211),
(2, 'Pfizer', 121),
(3, 'CanSino', 54),
(4, 'Sinopharm', 43),
(5, 'CoronaVac', 98),
(6, 'Gamaleya', 9),
(7, ' Sputnik', 57);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `select_hospital` (`select_hospital`),
  ADD KEY `select_vaccine` (`select_vaccine`);

--
-- Indexes for table `hospital_list`
--
ALTER TABLE `hospital_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_login`
--
ALTER TABLE `hospital_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_req`
--
ALTER TABLE `hospital_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccine_list`
--
ALTER TABLE `vaccine_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_list`
--
ALTER TABLE `appointment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hospital_list`
--
ALTER TABLE `hospital_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hospital_login`
--
ALTER TABLE `hospital_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital_req`
--
ALTER TABLE `hospital_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vaccine_list`
--
ALTER TABLE `vaccine_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD CONSTRAINT `appointment_list_ibfk_1` FOREIGN KEY (`select_hospital`) REFERENCES `hospital_list` (`id`),
  ADD CONSTRAINT `appointment_list_ibfk_2` FOREIGN KEY (`select_vaccine`) REFERENCES `vaccine_list` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
