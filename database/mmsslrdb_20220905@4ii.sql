CREATE TABLE `branches` (
  `id` INT(11) NOT NULL,
  `branch_name` VARCHAR(255) DEFAULT NULL

) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `branches` (`id`, `branch_name`) VALUES
(1, 'Data Processing Unit'),
(2, 'Pension'),
(3, 'OPS'),
(4, 'Season'),
(5, 'Ticketing'),
(6, 'Coordinating'),
(3, 'Appoinment'),
(4, 'Discipline');



ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);
  
  ALTER TABLE `branches`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;
