-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2015 at 11:43 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `atdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminligin`
--

CREATE TABLE IF NOT EXISTS `adminligin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminligin`
--

INSERT INTO `adminligin` (`name`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE IF NOT EXISTS `bookingtable` (
  `fid` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `to` varchar(20) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `card` varchar(30) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `tkts` varchar(20) NOT NULL,
  `bid` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`fid`, `from`, `to`, `fullname`, `email`, `phno`, `card`, `amount`, `tkts`, `bid`) VALUES
('00L', 'Hyd', 'Goa', 'Sha', 'Sha@gmail.com', '9963909669', 'Debit Card', '5000', '8', 5);

-- --------------------------------------------------------

--
-- Table structure for table `flightcanceltable`
--

CREATE TABLE IF NOT EXISTS `flightcanceltable` (
  `passid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `cid` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `flightcanceltable`
--

INSERT INTO `flightcanceltable` (`passid`, `name`, `phoneno`, `emailid`, `reason`, `type`, `cid`) VALUES
('6794', 'Sha', 'Sha', '9885852542', 'Injurious Problems', 'Flight Ticket Cancel', 5);

-- --------------------------------------------------------

--
-- Table structure for table `flighttable`
--

CREATE TABLE IF NOT EXISTS `flighttable` (
  `flightname` varchar(20) NOT NULL,
  `fnum` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `to` varchar(20) NOT NULL,
  `depaturetime` varchar(20) NOT NULL,
  `arrivaltime` varchar(20) NOT NULL,
  `flighttype` varchar(20) NOT NULL,
  `fid` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `flighttable`
--

INSERT INTO `flighttable` (`flightname`, `fnum`, `from`, `to`, `depaturetime`, `arrivaltime`, `flighttype`, `fid`) VALUES
('Lufthansa', '002', 'delhi', 'hyd', '08:00 am', '08:00 PM', 'business', 1),
('Spice Jet', '005', 'Renigunta', 'Chennai', '10 AM', '1 PM', 'Econamical', 2),
('Air india', '006', 'Hyd', 'Chennai', '02AM', '5PM', 'business', 3),
('AirAsia', '007', 'REG', 'KKD', '08AM', '08 PM', 'business', 4),
('Air Aisa', '009', 'Renigunta', 'hyd', '9 AM', '10 AM', 'business', 5),
('Indian AirLines', '00L', 'Hyd', 'Goa', '10 AM', '1 PM', 'business', 6);

-- --------------------------------------------------------

--
-- Table structure for table `hotelbookingtable`
--

CREATE TABLE IF NOT EXISTS `hotelbookingtable` (
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `hotelname` varchar(50) NOT NULL,
  `roomtype` varchar(50) NOT NULL,
  `numrooms` varchar(30) NOT NULL,
  `services` varchar(30) NOT NULL,
  `hid` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`hid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `hotelbookingtable`
--

INSERT INTO `hotelbookingtable` (`title`, `name`, `gender`, `phone`, `email`, `address`, `zipcode`, `city`, `country`, `date`, `hotelname`, `roomtype`, `numrooms`, `services`, `hid`) VALUES
('', '', 'male', '', '', '', '', '', '', '', '', '', '', '', 17),
('MR', 'Suman', 'male', '9703797922', 'Sumanth@gmail.com', 'Viman Nagar, Secundrabad.', '500003', 'HYDERABAD', 'AP', '02/03/2015', 'Vivan Taj', 'Single', '1', 'Our Website', 10);

-- --------------------------------------------------------

--
-- Table structure for table `packagetable`
--

CREATE TABLE IF NOT EXISTS `packagetable` (
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(10) NOT NULL,
  `country` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `pkgname` varchar(100) NOT NULL,
  `roomtype` varchar(100) NOT NULL,
  `numrooms` varchar(20) NOT NULL,
  `services` varchar(100) NOT NULL,
  `pid` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `packagetable`
--

INSERT INTO `packagetable` (`name`, `gender`, `phone`, `email`, `address`, `city`, `country`, `date`, `pkgname`, `roomtype`, `numrooms`, `services`, `pid`) VALUES
('Sunny', 'male', '9703797922', 'Sunny@gmail.com', 'Viman Nagar', 'HYDERABAD', 'AP', '02/03/2015', '2D/1N', 'Single', '1', 'Google', 1),
('Suma', 'male', '9703797924', 'Suma@gmail.com', 'Secundrabad', 'HYDERABAD', 'AP', '03/04/2015', '5D/4N', 'Double', '2', 'Friends', 2);

-- --------------------------------------------------------

--
-- Table structure for table `searchtable`
--

CREATE TABLE IF NOT EXISTS `searchtable` (
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `bid` int(20) NOT NULL auto_increment,
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `searchtable`
--

INSERT INTO `searchtable` (`source`, `destination`, `date`, `bid`) VALUES
('Renigunta', 'Hyd', '', 1),
('Hyd', 'Delhi', '', 2),
('Renigunta', 'Vishaka', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `studentregtable`
--

CREATE TABLE IF NOT EXISTS `studentregtable` (
  `passid` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password1` varchar(20) NOT NULL,
  `password2` varchar(20) NOT NULL,
  `dateOfBirth` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `studentregtable`
--

INSERT INTO `studentregtable` (`passid`, `uname`, `password1`, `password2`, `dateOfBirth`, `gender`, `phoneno`, `emailid`, `address`, `uid`) VALUES
('6794', 'Sha', 'Sha', 'Sha', '1990/10/21', 'female', '9885852542', 'Sha@gmail.com', 'Bangaloor', 9),
('5614', 'Suma', '123', '123', '2015/03/11', 'male', '9696969696', 'Suma@gmail.com', 'Hyd', 23),
('8236', 'Test', 'Test', 'Test', '2015/04/07', 'male', '9885852542', 'Test@gmail.com', 'Hyd', 26);
