Create database students
;
CREATE TABLE `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_major` varchar(255) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

CREATE TABLE `student_address` (
  `student_id` int(11) NOT NULL,
    `student_addressid` int(11) NOT NULL AUTO_INCREMENT,
  `student_address` varchar(255) NOT NULL,
  PRIMARY KEY (`student_addressid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

CREATE TABLE `student_classes` (
  `student_classesid` int(11) NOT NULL AUTO_INCREMENT,
   `student_id` int(11) NOT NULL,
  `student_classes` varchar(255) NOT NULL,
  PRIMARY KEY (`student_classesid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;