-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2011 at 02:23 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kecamatan`
--
CREATE DATABASE `kecamatan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kecamatan`;

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE IF NOT EXISTS `desa` (
  `id_desa` int(5) NOT NULL AUTO_INCREMENT,
  `desa` varchar(50) NOT NULL,
  `id_kecamatan` int(5) NOT NULL,
  PRIMARY KEY (`id_desa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `desa`, `id_kecamatan`) VALUES
(1, 'Cangkring', 1),
(2, 'Seruni', 1),
(3, 'Jatisari', 1),
(4, 'Kemuningsari', 1),
(5, 'Kertonegoro', 1),
(6, 'Bagorejo', 2),
(7, 'Karang Rejo', 2),
(8, 'Mayangan', 2),
(9, 'Menampu', 2),
(10, 'Tembokrejo', 2),
(11, 'Karang Anyar', 3),
(12, 'Andongsari', 3),
(13, 'Pontang', 3),
(14, 'Sabrang', 3),
(15, 'Tegalsari', 3),
(16, 'Klompangan', 4),
(17, 'Mangaran', 4),
(18, 'Pancakarya', 4),
(19, 'Sukamakmur', 4),
(20, 'Wirowongso', 4),
(21, 'Biting', 5),
(22, 'Candijati', 5),
(23, 'Darsono', 5),
(24, 'Kamal', 5),
(25, 'Kemuninglor', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id_kecamatan` int(5) NOT NULL AUTO_INCREMENT,
  `kecamatan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kecamatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `kecamatan`) VALUES
(1, 'Jenggawah'),
(2, 'Gumuk Mas'),
(3, 'Ambulu'),
(4, 'Ajung'),
(5, 'Arjasa');
