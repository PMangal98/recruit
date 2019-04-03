--
-- Database: `recruit`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--
USE id9110648_recruit;
CREATE TABLE `application` (
  `employee_id` int(5) NOT NULL,
  `job_id` int(5) NOT NULL,
  `appl_date` date NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0'
);

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`employee_id`, `job_id`, `appl_date`, `description`, `status`) VALUES
(1, 1, '2019-04-03', 'I am very motivated', 0),
(2, 1, '2019-04-04', 'I am not', 1);

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `educationalqualification`
--

CREATE TABLE `educationalqualification` (
  `qual_id` int(5) NOT NULL,
  `employee_id` int(5) NOT NULL,
  `aggregate_percentage` int(3) NOT NULL,
  `insti_id` int(5) NOT NULL,
  `end_year` int(11) NOT NULL
);

--
-- Dumping data for table `educationalqualification`
--

INSERT INTO `educationalqualification` (`qual_id`, `employee_id`, `aggregate_percentage`, `insti_id`, `end_year`) VALUES
(1, 1, 90, 1, 2016),
(2, 3, 80, 2, 2018),
(6, 2, 95, 4, 2014),
(8, 1, 75, 3, 2011);

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `employee_id` int(5) NOT NULL,
  `username` varchar(40) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL
);

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`employee_id`, `username`, `name`, `email`, `contact`, `dob`) VALUES
(1, 'Aniket', 'Kumar Aniket', 'haniket25@gmail.com', '7477723999', '1998-11-11'),
(2, 'Ishan', 'Ishan Ranga', 'ish.ranga11@gmail.com', '7432099333', '1998-11-09'),
(3, 'Arun', 'Arun Singh', 'arun11@gmail.com', '7432099377', '1998-11-08'),
(4, 'Param', 'Param Mangal', 'aparam11@gmail.com', '7432098888', '1998-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinterest`
--

CREATE TABLE `employeeinterest` (
  `employee_id` int(5) NOT NULL,
  `skill_id` int(5) NOT NULL
);

--
-- Dumping data for table `employeeinterest`
--

INSERT INTO `employeeinterest` (`employee_id`, `skill_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 5),
(4, 3),
(4, 4);

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `employerinfo`
--

CREATE TABLE `employerinfo` (
  `employer_id` int(5) NOT NULL,
  `username` varchar(40) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `org_id` int(5) NOT NULL
);

--
-- Dumping data for table `employerinfo`
--

INSERT INTO `employerinfo` (`employer_id`, `username`, `name`, `email`, `contact`, `dob`, `org_id`) VALUES
(1, 'Roy', 'Ravish Roy', 'roy.tint@gmail.com', '9988877333', '1968-11-06', 1),
(3, 'Sen', 'Rahul Sen', 'sen.deadliner@gmail.com', '9988877444', '1968-11-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `exp_id` int(5) NOT NULL,
  `exp_type` varchar(7) NOT NULL,
  `description` varchar(200) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee_id` int(5) NOT NULL
);

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`exp_id`, `exp_type`, `description`, `start_date`, `end_date`, `employee_id`) VALUES
(1, 'Intern', 'Software Development', '2018-05-05', '2018-07-05', 2),
(2, 'Intern', 'Full Stack', '2018-12-01', '2018-12-31', 2),
(3, 'Intern', 'Cybersecurity', '2018-05-05', '2018-07-06', 1),
(4, 'Intern', 'AI', '2018-12-01', '2018-12-31', 1),
(5, 'Intern', 'Android', '2018-12-01', '2018-12-31', 3),
(7, 'Job', 'Android', '2018-08-01', '2019-02-28', 4);

-- --------------------------------------------------------

--
-- Table structure for table `experienceskill`
--

CREATE TABLE `experienceskill` (
  `exp_id` int(5) NOT NULL,
  `skill_id` int(5) NOT NULL
);

--
-- Dumping data for table `experienceskill`
--

INSERT INTO `experienceskill` (`exp_id`, `skill_id`) VALUES
(1, 3),
(1, 5),
(2, 3),
(2, 5),
(3, 1),
(3, 4),
(4, 3),
(7, 1),
(7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `insti_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
);

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`insti_id`, `name`, `contact`, `address`) VALUES
(1, 'IIT KGP', '9876957645', 'West Bengal'),
(2, 'IIT Delhi', '9876957676', 'Delhi'),
(3, 'IIT Guwahati', '9876957611', 'Guwahati'),
(4, 'IIT BHU', '9876957619', 'UP');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(5) NOT NULL,
  `job_type` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `salary` int(5) NOT NULL,
  `location` varchar(20) NOT NULL,
  `employer_id` int(5) NOT NULL
);

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job_type`, `description`, `start_date`, `end_date`, `salary`, `location`, `employer_id`) VALUES
(1, 'Intern', 'Software Developer', '2019-11-01', '2019-12-31', 10000, 'Noida', 1),
(2, 'Intern', 'AI inter', '2019-11-03', '2019-12-30', 8000, 'Delhi', 3),
(18, 'Remote', 'Perfection', '2019-04-12', '2019-04-30', 10000, 'Delhi', 1),
(19, 'Remote', 'None', '2019-04-14', '2019-06-13', 100000, 'Delhi', 1),
(22, 'Remote', 'None', '2019-04-14', '2019-06-13', 100000, 'Delhi', 1),
(23, 'Remote', 'None', '2019-04-14', '2019-06-13', 100000, 'Delhi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobskill`
--

CREATE TABLE `jobskill` (
  `job_id` int(5) NOT NULL,
  `skill_id` int(5) NOT NULL,
  `duration` int(5) NOT NULL
);

--
-- Dumping data for table `jobskill`
--

INSERT INTO `jobskill` (`job_id`, `skill_id`, `duration`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 4, 3),
(2, 5, 1),
(18, 1, 6),
(19, 1, 6),
(19, 3, 28),
(19, 5, 34),
(22, 1, 6),
(22, 3, 28),
(22, 5, 34),
(23, 1, 6),
(23, 2, 12),
(23, 3, 28),
(23, 5, 34);

-- --------------------------------------------------------

--
-- Table structure for table `logininfo`
--

CREATE TABLE `logininfo` (
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
);

--
-- Dumping data for table `logininfo`
--

INSERT INTO `logininfo` (`username`, `password`) VALUES
('Aniket', 'Aniket123'),
('Arun', 'Arun123'),
('Ishan', 'Ishan123'),
('Param', 'Param123'),
('Roy', 'Roy123'),
('Sen', 'Sen123');

-- --------------------------------------------------------

--
-- Table structure for table `offeredby`
--

CREATE TABLE `offeredby` (
  `insti_id` int(5) NOT NULL,
  `qual_id` int(5) NOT NULL
);

--
-- Dumping data for table `offeredby`
--

INSERT INTO `offeredby` (`insti_id`, `qual_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `org_id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `addr` varchar(40) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
);

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`org_id`, `name`, `addr`, `contact`, `email`) VALUES
(1, 'Tinted', 'Delhi', '9431055189', 'ai.tinted@gmail.com'),
(2, 'Deadliner', 'Gurgaon', '903345688099', 'ai.dealine@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qual_id` int(5) NOT NULL,
  `degree` varchar(7) NOT NULL,
  `domain` varchar(7) NOT NULL,
  `duration` int(5) NOT NULL
);

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qual_id`, `degree`, `domain`, `duration`) VALUES
(1, 'B.Tech', 'CSE', 48),
(2, 'B.Tech', 'ECE', 48),
(3, 'B.Tech', 'EE', 48),
(4, 'B.Tech', 'ME', 48),
(5, 'B.Tech', 'ME', 48),
(6, 'M.Tech', 'ME', 24),
(7, 'M.Tech', 'CSE', 24),
(8, 'Dual', 'CSE', 60);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(5) NOT NULL,
  `skill_name` varchar(10) NOT NULL
);

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`skill_id`, `skill_name`) VALUES
(1, 'C++'),
(2, 'C'),
(3, 'Java'),
(4, 'Python'),
(5, 'Html');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`employee_id`,`job_id`),
  ADD KEY `fk11_2` (`job_id`);

--
-- Indexes for table `educationalqualification`
--
ALTER TABLE `educationalqualification`
  ADD PRIMARY KEY (`qual_id`,`employee_id`),
  ADD KEY `fk10_1` (`employee_id`),
  ADD KEY `fk10_2` (`insti_id`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `fk1` (`username`);

--
-- Indexes for table `employeeinterest`
--
ALTER TABLE `employeeinterest`
  ADD PRIMARY KEY (`employee_id`,`skill_id`),
  ADD KEY `fk4_2` (`skill_id`);

--
-- Indexes for table `employerinfo`
--
ALTER TABLE `employerinfo`
  ADD PRIMARY KEY (`employer_id`),
  ADD KEY `fk2` (`org_id`),
  ADD KEY `empr_to_user` (`username`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `fk8` (`employee_id`);

--
-- Indexes for table `experienceskill`
--
ALTER TABLE `experienceskill`
  ADD PRIMARY KEY (`exp_id`,`skill_id`),
  ADD KEY `fk9_2` (`skill_id`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`insti_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `fk6` (`employer_id`);

--
-- Indexes for table `jobskill`
--
ALTER TABLE `jobskill`
  ADD PRIMARY KEY (`job_id`,`skill_id`),
  ADD KEY `fk7_2` (`skill_id`);

--
-- Indexes for table `logininfo`
--
ALTER TABLE `logininfo`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `offeredby`
--
ALTER TABLE `offeredby`
  ADD PRIMARY KEY (`insti_id`,`qual_id`),
  ADD KEY `fk5_2` (`qual_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`org_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`qual_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `employee_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employerinfo`
--
ALTER TABLE `employerinfo`
  MODIFY `employer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `exp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `insti_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `org_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `qual_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fk11_1` FOREIGN KEY (`employee_id`) REFERENCES `employeeinfo` (`employee_id`),
  ADD CONSTRAINT `fk11_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`);

--
-- Constraints for table `educationalqualification`
--
ALTER TABLE `educationalqualification`
  ADD CONSTRAINT `fk10_1` FOREIGN KEY (`employee_id`) REFERENCES `employeeinfo` (`employee_id`),
  ADD CONSTRAINT `fk10_2` FOREIGN KEY (`insti_id`) REFERENCES `institute` (`insti_id`),
  ADD CONSTRAINT `fk10_3` FOREIGN KEY (`qual_id`) REFERENCES `qualification` (`qual_id`);

--
-- Constraints for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`username`) REFERENCES `logininfo` (`username`);

--
-- Constraints for table `employeeinterest`
--
ALTER TABLE `employeeinterest`
  ADD CONSTRAINT `fk4_1` FOREIGN KEY (`employee_id`) REFERENCES `employeeinfo` (`employee_id`),
  ADD CONSTRAINT `fk4_2` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`);

--
-- Constraints for table `employerinfo`
--
ALTER TABLE `employerinfo`
  ADD CONSTRAINT `empr_to_user` FOREIGN KEY (`username`) REFERENCES `logininfo` (`username`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`org_id`) REFERENCES `organization` (`org_id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `fk8` FOREIGN KEY (`employee_id`) REFERENCES `employeeinfo` (`employee_id`);

--
-- Constraints for table `experienceskill`
--
ALTER TABLE `experienceskill`
  ADD CONSTRAINT `fk9_1` FOREIGN KEY (`exp_id`) REFERENCES `experience` (`exp_id`),
  ADD CONSTRAINT `fk9_2` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`employer_id`) REFERENCES `employerinfo` (`employer_id`);

--
-- Constraints for table `jobskill`
--
ALTER TABLE `jobskill`
  ADD CONSTRAINT `fk7_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `fk7_2` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`);

--
-- Constraints for table `offeredby`
--
ALTER TABLE `offeredby`
  ADD CONSTRAINT `fk5_1` FOREIGN KEY (`insti_id`) REFERENCES `institute` (`insti_id`),
  ADD CONSTRAINT `fk5_2` FOREIGN KEY (`qual_id`) REFERENCES `qualification` (`qual_id`);
COMMIT;



