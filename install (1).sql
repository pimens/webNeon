-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2019 at 06:14 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `install`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `name`) VALUES
(1, 'Infina');

-- --------------------------------------------------------

--
-- Table structure for table `bimbel`
--

CREATE TABLE `bimbel` (
  `id_bimbel` int(11) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `deskripsi_bidang` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bimbel`
--

INSERT INTO `bimbel` (`id_bimbel`, `bidang`, `deskripsi_bidang`) VALUES
(1, 'Fisika', 'ini baruuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0d2lgf588elvsou76a5j8ldf22mqlf5h', '::1', 1566121941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132313934313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('0hgim3m4pdb020qluuqq0mk0bg40ssd5', '::1', 1566275514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237353237303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('24gc9bee4ojaoffhv6f91t1ab7atfemj', '::1', 1566430762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363433303632343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('30cij66a8263si75nb04uggfo7frfcdq', '::1', 1566178447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137383434373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('35o4e9btk75ju9frinf9broifcnhib7v', '::1', 1566169689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363136393638393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('3951pf9pb25v1dcb005nn97ft523fs3j', '::1', 1566358720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363335383732303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('3mv6mgtdfd2q4idesv2apq3f0fdjo2q1', '::1', 1566450395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363435303339353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('3ph8b4bdge9sjp9p7r067hqe7hrj16m3', '::1', 1566365285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336353238353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('42i2k67b5c0ef87vb1td7g0gbaf84bs4', '::1', 1566445824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363434353832343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('4sht6740lq39cb9ck4tf642ecej1mj3s', '::1', 1566176492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137363439323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('4v4h23gbd0kf5c15d8n3hmb9t9mp3tdf', '::1', 1566180928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138303932383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('5109dipa8sjefpnbdch95v5667vj3mn7', '::1', 1566121584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132313538343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('5qa72pu8d3un6qpa579d28ji7tv8a6o8', '::1', 1566447705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363434373730353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('69ovlkgn9mc06ruk46h36kpqjdvedr8g', '::1', 1566360228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336303232383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('75q21nb47d3mgmuoop0tnf70o7mj32kf', '::1', 1566138404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133383430343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('7a46md9i7ibj60k3ufh3fpqa8qkta806', '::1', 1566176895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137363839353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('7n9kb2punktmpufds6he3tfata030gk9', '::1', 1566123114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132333131343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('7pc6dssq9v6e4q3sqpdd0voo0kqp6cgk', '::1', 1566182280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138323238303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('7pdhvaiqb7toetog78ctlpcb1v74bfa7', '::1', 1566274579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237343537393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('8eb582oh84hrhp23j8dbemi1sa4jet0u', '::1', 1566177242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137373234323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('8nuvr9epnq03tbq5fgjj7lnonpj7cqv0', '::1', 1566180099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138303039393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('8ol6ffgco88ch7erq3jodpsuuthd417f', '::1', 1566271965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237313936353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('99cnc299tuan8qpqhpqah9qtdjrad5nl', '::1', 1566122668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132323636383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('9q1r10dvh5hhbeloetsb3i9kodur5lue', '::1', 1566134624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133343632343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('9ski3nprsqlg7rrcicmfgvv36kbreha1', '::1', 1566179105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137393130353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('a8qh66nmkqotpbrv67a7en7jth88c4oq', '::1', 1566274213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237343231333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('ak31sdgr3avkqougktpp9gaj1po14892', '::1', 1566273591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237333539313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('csjmbfp0si66bv05lc2smr1sr9230jp4', '::1', 1566365784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336353732383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('djgk0osdfa7a8niab9npc5f52gll4opp', '::1', 1566124041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132333936363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('dmh1gb5eb6c35ui2c2d0bf97j3uns08m', '::1', 1566134963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133343936333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('f3bqboh9oqnlgp25pqfs4268252dn1dq', '::1', 1566179737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137393733373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('f4976j8r5fnhn2ed6nh46cqt0n8gsad6', '::1', 1566364876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336343837363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('fcq5aq2ai0i5nkamq657fer075v4ml33', '::1', 1566209042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363230383934333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('g6r242bb6vskk8g8ku89gpu5ehud62gs', '::1', 1566123966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132333936363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('gl1qcd9ep6um6av0fa8oq8pfvb7v07bg', '::1', 1566168840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363136383834303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('glajavc4gno6rgitda0q9skblj2usmr5', '::1', 1566121097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132313039373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('h8i8n8fkfiunq006biop1b9803mr1g9g', '::1', 1566358088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363335383038383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('hcg3p292sb93cu9f1nqtanra3mddllj1', '::1', 1566138406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133383430343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('hd6fua2jcl01tpiopp9r16v0edj1pg02', '::1', 1566123517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132333531373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('i4fi4reqdvbljtim2cd6rbrv14hfvlsp', '::1', 1566169290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363136393239303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('im7969hnuhq9n9qa6c90k3nvt52di4kt', '::1', 1566179429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137393432393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('jsrvdafvjlbg4o2p7nvlf9hgf2ah5gei', '::1', 1566181412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138313431323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('k5gmv2m7ibvfceotp1vijceejgvojdle', '::1', 1566191420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363139313431303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('l7pheca2ema2ukldej4dpcjtpnsnavnv', '::1', 1566272270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237323237303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('ligir069at767rq0trf8admqt0dj6gmc', '::1', 1566135269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133353236393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('lnmqdgg7pst8ip6jlkln6ebmd91gkm7a', '::1', 1566137635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133373633353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('msiil9bkqerdla3rlnf9q3ug9nt53e7v', '::1', 1566450413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363435303339353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('n5k4085ubsq90m4cltvjrijp5ptujjm8', '::1', 1566177948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137373934383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('n7pgq1chc2lvtcq2j1hh6dmppmgtq3ts', '::1', 1566187763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138373736333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('oes3mfrlaraepc39jugk2srl9otfahk1', '::1', 1566208369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363230383336383b),
('ofok0akej9j05855c5a8u6vg2iflcs7t', '::1', 1566183272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138333237323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('pa0u94dtupra14nb46mpi0i569q2p69r', '::1', 1566360610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336303631303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('pf7gita0q4a7cfnfomqsqu7lds0475ih', '::1', 1566359174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363335393137343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('q4pf9tphhdbcnhg1bitsvuu7gj8cegso', '::1', 1566187780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138373736333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('q9ojelq2i0igab4lhj5jsoj7m1uphbl3', '::1', 1566363586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336333538363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('qlod44pc93meeo7qhhkp4mlqhlm79smi', '::1', 1566365728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336353732383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('qt06rc300oltjjg8pv4di06ji01dmv77', '::1', 1566138093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133383039333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('s751e47m62lj4nn404msg8utoe33tl88', '::1', 1566273248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237333234383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('s9ahg5v235p25cd1jcedqvq39bmjppa4', '::1', 1566181722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138313732323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('sgc6vj1g5htga7fn3kv0ungiog3ggosu', '::1', 1566177593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137373539333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('t2puu6svsra17ge79hs4leue83m0mulu', '::1', 1566273893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237333839333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('taj970gqve2l1njrrplprv1kpq1hjs1d', '::1', 1566362963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363336323936333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('tpkmf8vopkkl1si9mgthvpci978v553c', '::1', 1566137211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363133373231313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('tttukosjlvuh8rv11kfihojqckl3n49v', '::1', 1566170015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137303031353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('u7u3or1p4vab35siat1t5nr468tupnmv', '::1', 1566275270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363237353237303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('u831sve10dqa09kt14npgopqs6jvlngs', '::1', 1566122359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363132323335393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('urn6p7av8u13idtmf6jgpl8h6r8u7onn', '::1', 1566359515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363335393531353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('v14pt4f7u1cgkn3fsvqee967livdv34o', '::1', 1566184292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363138343239323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `ecourse`
--

CREATE TABLE `ecourse` (
  `id_ecourse` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi_kategori` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecourse`
--

INSERT INTO `ecourse` (`id_ecourse`, `kategori`, `deskripsi_kategori`) VALUES
(1, 'Bimbel', 'Cobaan		                    ');

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`) VALUES
(1, 'Apa itu Neonton?', 'Neonton adalah sebuah platform yang bergerak di bidang industri kreatif. Pada Neonton ini akan ditampilkan blablabalbala blablabalbala blablabalbala blablabalbala'),
(2, 'What are the packages?', 'There are 4 package \r\n<ol>\r\n<li>Basic : 1 user screen for $4.99 per month</li>\r\n<li>Standard : 2 user screen for $7.99 per month</li>\r\n<li>Premium: 4 user screen for $11.99 per month</li>\r\n</ol>'),
(3, 'How many devices can i use?', 'According to your purchased package, you can access upto 1,2 or 4 devices at once from same account.');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, 'Action'),
(2, 'ENTERTAINMENT');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Indonesia` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Indonesia`) VALUES
(1, 'date', '', ''),
(2, 'package', '', ''),
(3, 'service_period', '', ''),
(4, 'payment_method', '', ''),
(5, 'total', '', ''),
(6, 'cancel_your_membership', '', ''),
(7, 'Click_Finish_Cancellation_below_to_cancel_your_membership', '', ''),
(8, 'Cancellation_will_be_effective_immedietly_after_your_confirmation', '', ''),
(9, 'Restart_your_membership_anytime. Your_viewing_preferences_will_be_saved_always', '', ''),
(10, 'cancel_plan', '', ''),
(11, 'Finish_Cancellation', '', ''),
(12, 'Edit_Profile', '', ''),
(13, 'Change_Email', '', ''),
(14, 'Current_Email', '', ''),
(15, 'New_Email', '', ''),
(16, 'Current_Password', '', ''),
(17, 'Frequently_asked_question', '', ''),
(18, 'Faq', '', ''),
(19, 'Refund_Policy', '', ''),
(20, 'Forgot_Email/_Password', '', ''),
(21, 'Enter_your_email_address. We_will_send_you_a_temporary_password.', '', ''),
(22, 'Email', '', ''),
(23, 'Email_me', '', ''),
(24, 'Movie', '', ''),
(25, 'Tv_Serial', '', ''),
(26, 'Admin', '', ''),
(27, 'Account', '', ''),
(28, 'Sign_out', '', ''),
(29, 'PLAY', '', ''),
(30, 'See_what_is_next.', '', ''),
(31, 'WATCH_ANYWHERE.', '', ''),
(32, 'CANCEL_ANYTIME.', '', ''),
(33, 'JOIN_TODAY', '', ''),
(34, 'Cancel_subscription_anytime', '', ''),
(35, 'Watch_from_anywhere', '', ''),
(36, 'Pricing_packages', '', ''),
(37, 'If_you_decide_Videoflix_is_not_for_you, no_problem.', '', ''),
(38, 'No_commitment. Cancel_online_anytime.', '', ''),
(39, 'Watch_TV_shows_and_movies_anytime, anywhere. From_any_device.', '', ''),
(40, 'Watch_on_your_tv', '', ''),
(41, 'Watch_on_your_phone, tablet', '', ''),
(42, 'Watch_on_your_pc', '', ''),
(43, 'Choose_one_plan_and_watch_everything.', '', ''),
(44, 'Monthly_price', '', ''),
(45, 'Screens_you_can_watch_on_at_the_same_time', '', ''),
(46, 'Watch_on_your_laptop, TV, phone_and_tablet', '', ''),
(47, 'HD_available', '', ''),
(48, 'Unlimited_movies_and_TV_shows', '', ''),
(49, 'Cancel_anytime', '', ''),
(50, 'DONE', '', ''),
(51, 'movies', '', ''),
(52, 'Change_Password', '', ''),
(53, 'New_Password', '', ''),
(54, 'Save', '', ''),
(55, 'Add_to_My_list', '', ''),
(56, 'Added_to_My_list', '', ''),
(57, 'Genre', '', ''),
(58, 'Year', '', ''),
(59, 'About', '', ''),
(60, 'Cast', '', ''),
(61, 'More', '', ''),
(62, 'Episode', '', ''),
(63, 'Search_result_for', '', ''),
(64, 'Tv_series', '', ''),
(65, 'Password', '', ''),
(66, 'Forget_password', '', ''),
(67, 'Sign_up', '', ''),
(68, 'Sign_up_to_start_your_membership', '', ''),
(69, 'Create_your_account', '', ''),
(70, 'Email_Address', '', ''),
(71, 'Register', '', ''),
(72, 'Who_is_watching', '', ''),
(73, 'MEMBERSHIP_AND_BILLING', '', ''),
(74, 'Cancel_Membership', '', ''),
(75, 'PLAN_DETAILS', '', ''),
(76, 'Effective_upto', '', ''),
(77, 'Go_Back', '', ''),
(78, 'Cancel', '', ''),
(79, 'Billing_history', '', ''),
(80, 'MY_PROFILE', '', ''),
(81, 'Manage_profiles', '', ''),
(82, 'language_list', '', ''),
(83, 'add_phrase', '', ''),
(84, 'add_language', '', ''),
(85, 'language', '', ''),
(86, 'option', '', ''),
(87, 'edit_phrase', '', ''),
(88, 'delete_language', '', ''),
(89, 'phrase', '', ''),
(90, 'value_required', '', ''),
(91, 'MY_LIST', '', ''),
(92, 'update_phrase', '', ''),
(93, 'settings_updated', '', ''),
(94, 'video_playlist', '', ''),
(95, 'sign_in', '', ''),
(96, 'Privacy_Policy', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `level` varchar(10) NOT NULL,
  `materi` varchar(500) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `level`, `materi`, `kategori`) VALUES
(1, '1', 'Material content			                    ', 'Fisika');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_short` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL DEFAULT 0,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `trailer_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `description_short`, `description_long`, `year`, `rating`, `genre_id`, `actors`, `featured`, `kids_restriction`, `url`, `trailer_url`) VALUES
(1, 'Coba', 'blablablablalabala blablablablalabala blablablablalabala blablablablalabalablablablablalabala blablablablalabala blablablablalabala blablablablalabalablablablablalabala ', 'blablablablalabala blablablablalabala blablablablalabala blablablablalabalablablablablalabala blablablablalabala ', 2019, 0, 1, '[\"1\"]', 1, 0, 'https://www.youtube.com/watch?v=1G4isv_Fylg&list=RD1G4isv_Fylg&start_radio=1', 'https://www.youtube.com/watch?v=1G4isv_Fylg&list=RD1G4isv_Fylg&start_radio=1'),
(2, 'Actionnnnnn', 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3', 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3', 2019, 5, 1, '[]', 1, 0, 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3', 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `screens` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 active, 0 inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `name`, `screens`, `price`, `status`) VALUES
(1, 'basic', '1', '7.99', 1),
(2, 'standard', '2', '9.99', 1),
(3, 'premium', '4', '11.99', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `video` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `video`, `id_user`, `rating`) VALUES
(1, 12, 2, 4),
(2, 12, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `season_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `trailer_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_short` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'comma separated actor_id',
  `year` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL,
  `episodes` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`series_id`, `title`, `trailer_url`, `description_short`, `description_long`, `genre_id`, `actors`, `year`, `rating`, `featured`, `kids_restriction`, `episodes`) VALUES
(1, 'RCTI', 'https://www.youtube.com/watch?v=oxj9bBoGy7A', 'bksbdajkjbjasbdkjas', 'jhdajhsjahdjsahdkjsahdaj', 1, '[\"1\"]', 2019, 3, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'site_name', 'Movie subscription portal'),
(2, 'site_email', 'noreply@netflex.com'),
(3, 'paypal_merchant_email', ''),
(4, 'invoice_address', '24/e North Huston, NY, Australia'),
(5, 'language', 'Indonesia'),
(6, 'purchase_code', 'your-product-purchase-code-goes-here'),
(7, 'privacy_policy', '<p>Effective date: November 02, 2018</p>\r\n\r\n\r\n<p>Netflex (\"us\", \"we\", or \"our\") operates the http://netflex.com website (the \"Service\").</p>\r\n\r\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data. Our Privacy Policy  for Netflex is managed through <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator.php\">Free Privacy Policy</a>.</p>\r\n\r\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from http://netflex.com</p>\r\n\r\n\r\n<h2 class=\"black_text\">Information Collection And Use</h2>\r\n\r\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.</p>\r\n\r\n<h3 class=\"black_text\">Types of Data Collected</h3>\r\n\r\n<h4 class=\"black_text\">Personal Data</h4>\r\n\r\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (\"Personal Data\"). Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n<li>Email address</li><li>First name and last name</li><li>Cookies and Usage Data</li>\r\n</ul>\r\n\r\n<h4 class=\"black_text\">Usage Data</h4>\r\n\r\n<p>We may also collect information how the Service is accessed and used (\"Usage Data\"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<h4 class=\"black_text\">Tracking & Cookies Data</h4>\r\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.</p>\r\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.</p>\r\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>\r\n<p>Examples of Cookies we use:</p>\r\n<ul>\r\n    <li><strong>Session Cookies.</strong> We use Session Cookies to operate our Service.</li>\r\n    <li><strong>Preference Cookies.</strong> We use Preference Cookies to remember your preferences and various settings.</li>\r\n    <li><strong>Security Cookies.</strong> We use Security Cookies for security purposes.</li>\r\n</ul>\r\n\r\n<h2 class=\"black_text\">Use of Data</h2>\r\n    \r\n<p>Netflex uses the collected data for various purposes:</p>    \r\n<ul>\r\n    <li>To provide and maintain the Service</li>\r\n    <li>To notify you about changes to our Service</li>\r\n    <li>To allow you to participate in interactive features of our Service when you choose to do so</li>\r\n    <li>To provide customer care and support</li>\r\n    <li>To provide analysis or valuable information so that we can improve the Service</li>\r\n    <li>To monitor the usage of the Service</li>\r\n    <li>To detect, prevent and address technical issues</li>\r\n</ul>\r\n\r\n<h2 class=\"black_text\">Transfer Of Data</h2>\r\n<p>Your information, including Personal Data, may be transferred to — and maintained on — computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</p>\r\n<p>If you are located outside Australia and choose to provide information to us, please note that we transfer the data, including Personal Data, to Australia and process it there.</p>\r\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</p>\r\n<p>Netflex will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</p>\r\n\r\n<h2 class=\"black_text\">Disclosure Of Data</h2>\r\n\r\n<h3 class=\"black_text\">Legal Requirements</h3>\r\n<p>Netflex may disclose your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul>\r\n    <li>To comply with a legal obligation</li>\r\n    <li>To protect and defend the rights or property of Netflex</li>\r\n    <li>To prevent or investigate possible wrongdoing in connection with the Service</li>\r\n    <li>To protect the personal safety of users of the Service or the public</li>\r\n    <li>To protect against legal liability</li>\r\n</ul>\r\n\r\n<h2 class=\"black_text\">Security Of Data</h2>\r\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>\r\n\r\n<h2 class=\"black_text\">Service Providers</h2>\r\n<p>We may employ third party companies and individuals to facilitate our Service (\"Service Providers\"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>\r\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>\r\n\r\n\r\n\r\n<h2 class=\"black_text\">Links To Other Sites</h2>\r\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n\r\n<h2 class=\"black_text\">Children\'s Privacy</h2>\r\n<p>Our Service does not address anyone under the age of 18 (\"Children\").</p>\r\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.</p>\r\n\r\n\r\n<h2 class=\"black_text\">Changes To This Privacy Policy</h2>\r\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the \"effective date\" at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n\r\n<h2 class=\"black_text\">Contact Us</h2>\r\n<p>If you have any questions about this Privacy Policy, please contact us:</p>\r\n<ul>\r\n        <li>By email: support@netflex.com</li>\r\n          \r\n        </ul>'),
(8, 'refund_policy', '<h1 class=\"black_text\">Returns and Refunds Policy</h1>\r\n\r\n\r\n<p>Thank you for shopping at Netflex.</p>\r\n\r\n<p>Please read this policy carefully. This is the Return and Refund Policy of Netflex. This Return and Refund Policy  for Netflex is managed by <a href=\"https://termsfeed.com/return-refund-policy/generator/\">the Return Refund Policy Generator</a>.</p>\r\n\r\n\r\n\r\n\r\n<h2 class=\"black_text\">Digital products</h2>\r\n\r\n<p>We do not issue refunds for digital products once the order is confirmed and the product is sent.</p>\r\n\r\n<p>We recommend contacting us for assistance if you experience any issues receiving or downloading our products.</p>\r\n\r\n\r\n\r\n<h2 class=\"black_text\">Contact us</h2>\r\n\r\n<p>If you have any questions about our Returns and Refunds Policy, please contact us:</p>\r\n\r\n<ul>\r\n<li>\r\n    <p>By email: support@netflex.com</p>\r\n</li>\r\n</ul>\r\n\r\n'),
(9, 'stripe_publishable_key', ''),
(10, 'stripe_secret_key', ''),
(11, 'trial_period', 'off'),
(12, 'trial_period_days', '30'),
(13, 'theme', 'flixer');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_amount` int(11) NOT NULL,
  `paid_amount` float NOT NULL,
  `timestamp_from` int(11) NOT NULL,
  `timestamp_to` int(11) NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active, 0 cancelled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `plan_id`, `user_id`, `price_amount`, `paid_amount`, `timestamp_from`, `timestamp_to`, `payment_method`, `payment_details`, `payment_timestamp`, `status`) VALUES
(1, 2, 2, 0, 9.99, 1564804088, 1567396088, 'stripe', '', 1564804088, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 admin, 0 customer',
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user1` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 1',
  `user2` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 2',
  `user3` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 3',
  `user4` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 4',
  `user1_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user2_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user3_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user4_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user1_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user2_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user3_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user4_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user1_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user2_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user3_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user4_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 banned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `type`, `name`, `email`, `password`, `user1`, `user2`, `user3`, `user4`, `user1_session`, `user2_session`, `user3_session`, `user4_session`, `user1_movielist`, `user2_movielist`, `user3_movielist`, `user4_movielist`, `user1_serieslist`, `user2_serieslist`, `user3_serieslist`, `user4_serieslist`, `plan_id`, `status`) VALUES
(1, 1, 'Asno Azzawagama Firdaus', 'asnofirdaus@gmail.com', 'd6112c226324538e0d65f02e124f66dad77fe7d2', 'user 1', 'user 2', 'user 3', 'user 4', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1),
(2, 0, 'Asno AF', 'asno@gmail.com', 'd6112c226324538e0d65f02e124f66dad77fe7d2', 'user 1', 'Asno AF', 'user 3', 'user 4', '1564926033', '1566025466', '', '', '', '', '', '', '', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `file_video` varchar(1000) DEFAULT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `deskripsi_video` varchar(250) NOT NULL,
  `view` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `level`, `kategori`, `file_video`, `thumbnail`, `deskripsi_video`, `view`) VALUES
(5, 'Serigala', '1', 'Bimbel', 'IPA 1.mp4', 'boden1.JPG', 'deskripsi setelah di edit', NULL),
(6, 'GGS', '2', 'Bimbel', 'lebaran.mp4', 'foto-karikatur-muslim-pasangan-romantis1.jpg', 'ini deskripsi singkat', NULL),
(7, 'Kisah kasih di sekolah', '1', 'Bimbel', 'lebaran.mp4', 'Delightful-Sweet-Wallpaper-Rose-Flowers-Image-White-Background-Picture1.jpg', 'ini deskripsi singkat', NULL),
(8, 'GGS', '1', 'Bimbel', 'gili.mp4', 'belajar-bisnis-online-bersama-koombis_com_211.png', 'ini deskripsi singkat', NULL),
(9, 'Motor Mogok', '2', 'Bimbel', 'lebaran.mp4', 'cuple-bajaj1.gif', 'deskripsi', NULL),
(10, 'Motor Mogok Sekali', '2', 'Bimbel', 'lebaran.mp4', 'cuple-bajaj3.gif', 'deskripsi', NULL),
(11, 'Kisah kasih di sekolah', '2', 'Bimbel', 'baksos.mp4', 'A02xyrGCQAI3z1h1.jpg', 'ini deskripsi singkat', NULL),
(12, 'Ganteng', '2', 'Bimbel', 'VID_20170119_155300.mp4', '011.jpg', 'ini deskripsi singkat', NULL),
(13, 'Ganteng bb', '1', 'Bimbel', 'VID_20170119_131520.mp4', '4dd32e8e584a65db298858878f02266d43c10cd805058bbdaf5d3262cdc2797a1.jpg', 'ini deskripsi singkat', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `bimbel`
--
ALTER TABLE `bimbel`
  ADD PRIMARY KEY (`id_bimbel`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ecourse`
--
ALTER TABLE `ecourse`
  ADD PRIMARY KEY (`id_ecourse`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`episode_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video` (`video`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`season_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bimbel`
--
ALTER TABLE `bimbel`
  MODIFY `id_bimbel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ecourse`
--
ALTER TABLE `ecourse`
  MODIFY `id_ecourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`video`) REFERENCES `video` (`id_video`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
