DROP DATABASE IF EXISTS `employee_db`;

CREATE DATABASE `employee_db`;

USE `employee_db`;

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`))

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `salary` decimal(10,0) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_ibfk_1` (`department_id`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`))

  DROP TABLE IF EXISTS `employee`;

  CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `role_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_ibfk_1` (`role_id`),
  KEY `employee_ibfk_2` (`manager_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `role` (`id`))