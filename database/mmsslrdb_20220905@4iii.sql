
CREATE TABLE `mainmailrecivers` (
  `id` INT(11) NOT NULL,
  `mainmailreciver_name` VARCHAR(255) DEFAULT NULL

) ENGINE=INNODB DEFAULT CHARSET=latin1;


-- Dumping data for table `courses`

INSERT INTO `mainmailrecivers` (`id`, `mainmailreciver_name`) VALUES
(1, 'GMR'),
(2, 'GMA'),
(3, 'GMI'),
(4, 'CFO'),
(5,'None');


 ALTER TABLE ` mainmailrecivers`
  ADD PRIMARY KEY (`id`);


  ALTER TABLE `mainmailrecivers`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;
