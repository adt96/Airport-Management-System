{\rtf1\ansi\ansicpg1252\cocoartf1504\cocoasubrtf830
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Create table login;\
\
INSERT INTO `sampledatabase`.`Login` (`username`, `password`) VALUES ('abc', 'adm\'92,\'92karan\'92,\'92kar\'92,\'92aditya\'92,\'92adt\'92);\
\
CREATE TABLE `sampledatabase`.`Airport` (\
  `Airid` INT NOT NULL,\
  `Airname` VARCHAR(45) NOT NULL,\
  `Aircity` VARCHAR(45) NOT NULL,\
  PRIMARY KEY (`Airid`));\
\
IALTER TABLE `mydb`.`Ticket` \
DROP FOREIGN KEY `fk_Ticket_FlightTime1`,\
DROP FOREIGN KEY `fk_Ticket_Passenger1`;\
ALTER TABLE `mydb`.`Ticket` \
CHANGE COLUMN `Passenger_Pid` `Passenger_Pname` INT(11) NOT NULL ,\
CHANGE COLUMN `FlightTime_Flight_no` `FlightTime_Flight_name` INT(11) NOT NULL ;\
ALTER TABLE `mydb`.`Ticket` \
ADD CONSTRAINT `fk_Ticket_FlightTime1`\
  FOREIGN KEY (`FlightTime_Flight_name`)\
  REFERENCES `mydb`.`FlightTime` (`Flight_no`)\
  ON DELETE NO ACTION\
  ON UPDATE NO ACTION,\
ADD CONSTRAINT `fk_Ticket_Passenger1`\
  FOREIGN KEY (`Passenger_Pname`)\
  REFERENCES `mydb`.`Passenger` (`Pid`)\
  ON DELETE NO ACTION\
  ON UPDATE NO ACTION;\
}