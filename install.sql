-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 04:33 AM
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
-- Stand-in structure for view `bimbelvideo`
-- (See below for the actual view)
--
CREATE TABLE `bimbelvideo` (
`id_video` int(11)
,`judul` varchar(50)
,`level` varchar(5)
,`kategori` varchar(50)
,`file_video` varchar(1000)
,`thumbnail` varchar(1000)
,`deskripsi_video` varchar(250)
,`view` varchar(100)
);

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
('2j905e8u8hi3kenm2h7il1s2km5j80k7', '192.168.0.108', 1568292630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239323633303b),
('2ocmes4jiq97c34ts6j1de63en1g2vaf', '192.168.0.100', 1568296333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239363333333b),
('7l6gj477nk21p2sg9tc81vtflbo62r5f', '::1', 1571837864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537313833373836333b),
('7q7tm34eusl6orij35ej9bmv6t0i0l1b', '192.168.0.100', 1568297229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239373232393b),
('86adk9n7tg341tsa9kmuvkin81bmao4u', '::1', 1568085032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038353033323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('9mc7kipg7dlc3nbo5mk593pp3v79ncb5', '::1', 1568084462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038343436323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('9tejur2q787bkvihqdido8grel3qk10b', '::1', 1568082244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038323234343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('a9e8rjmkgr90i4jjo5vfl7cmv9as9op2', '192.168.0.100', 1568296334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239363333343b),
('bggv9oc55boafvrff8mf2t07fi860q7f', '::1', 1568086118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038363038303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('bkrbl07qia6k7d2ldcrpajr2jb6qtsl9', '192.168.0.100', 1570941840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303934313834303b),
('c31vroom78f07l4fodc94ql34ltnmt42', '192.168.0.100', 1568297228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239373232383b),
('d44ht2p19g0184b0tfiticprmulblvhu', '::1', 1568084154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038343135343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('db1fihcrchcll74tqbph4f6rga4ma3gj', '::1', 1568085419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038353431393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('gounubskss3cf9men7ior82l84r8eeam', '192.168.0.100', 1568296317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239363331373b),
('h5kf0p4t0ae367d1i02tum2sp9ihgn5f', '192.168.0.100', 1568459943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383435393934333b),
('jk7h4np4jhatp32073iit2svp77hclqf', '192.168.0.100', 1570941716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303934313731363b),
('n1og1uspeh1sr5hbn0c6dr9rb56h4prn', '::1', 1568292984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239323938343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('nng8jo9k2tnjnnpbco1uku4b4cs9ue15', '192.168.0.100', 1568459945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383435393934353b),
('nr69egcv0v3ui707i1651d1611stuuvf', '::1', 1568086080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038363038303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('nrmv120gn1m95lq10dbc0okccdg89ame', '192.168.0.100', 1568296724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239363732343b),
('oc9isg4ih13feu5petfh57p4cdp4u161', '192.168.0.100', 1568296798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239363739383b),
('omgnn2nm257h02ls5tu7ihaf4dhuta0k', '::1', 1568085771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038353737313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('q1cvdoun0bi537folie773u6gk8hrkpv', '192.168.0.100', 1568296726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239363732363b),
('q31dato9ehnu13kjk7oa6sblfjkegd04', '192.168.0.100', 1570941416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303934313431363b),
('qgom0ffqrekjb6o7tuhvbqba1u4p3olf', '::1', 1568292984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239323938343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('qn4r7svimu89dmjkeso81usassi0il4p', '192.168.0.100', 1568296799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383239363739393b),
('qs2h9l8gdnel4usce6higvvqlis59vpe', '::1', 1568082677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383038323637373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b),
('rtc8bcmriq8pnbpk5v205kd1lf31nvaa', '192.168.0.100', 1570941587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303934313538373b);

-- --------------------------------------------------------

--
-- Table structure for table `documentary`
--

CREATE TABLE `documentary` (
  `documentary_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `description_short` longtext NOT NULL,
  `description_long` longtext NOT NULL,
  `file_video` varchar(1000) NOT NULL,
  `year` int(11) NOT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext NOT NULL,
  `featured` int(11) NOT NULL,
  `view` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documentary`
--

INSERT INTO `documentary` (`documentary_id`, `title`, `description_short`, `description_long`, `file_video`, `year`, `rating`, `genre_id`, `actors`, `featured`, `view`, `thumbnail`) VALUES
(5, 'RCTI hasil edit', 'hkjdsah', 'jhdsakj', 'IKLAN_DPS_ANIMASI_KPU_NTB1.mp4', 2019, '2', 2, '[\"1\"]', 1, NULL, '01.jpg');

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
(2, 'Kursus Toefl', '<option value=\"Kursus Toefl\">Kursus Toefl</option><option value=\"Kursus Toefl\">Kursus Toefl</option><option value=\"Kursus Toefl\">Kursus Toefl</option><option value=\"Kursus Toefl\">Kursus Toefl</option><option value=\"Kursus Toefl\">Kursus Toefl</option><option value=\"Kursus Toefl\">Kursus Toefl</option>			                    '),
(3, 'Kursus Video Maker', 'hjkhjhkjkjhjk			                    '),
(4, 'Bisnis Online', 'jhkjh			                    ');

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

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`episode_id`, `season_id`, `title`, `url`) VALUES
(1, 1, 'RCTI', 'https://www.youtube.com/watch?v=HbcEiLu8K8w');

-- --------------------------------------------------------

--
-- Table structure for table `e_course`
--

CREATE TABLE `e_course` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `file_video` varchar(1000) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `deskripsi_video` varchar(250) NOT NULL,
  `view` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_course`
--

INSERT INTO `e_course` (`id_video`, `judul`, `level`, `kategori`, `file_video`, `thumbnail`, `deskripsi_video`, `view`) VALUES
(12, 'GGS', '2', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/page18-movie-4.mp4', 'https://2.bp.blogspot.com/-L-GC2V3zvck/XUbNXmbqCLI/AAAAAAAAA8E/dTlAVI_pCyMTtNxcaApcV0bGyU9k8cedQCLcBGAs/s320/5.png', 'GGS desc', '34'),
(28, 'DOlby Canyon', '1', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/dolbycanyon.mp4', 'https://3.bp.blogspot.com/-VKrC1I7-pfQ/XUbNXZ8JH3I/AAAAAAAAA8A/7S6FkC9KI80yk0XaX1kBoNs-jBBXwb1mACLcBGAs/s320/4.png', 'Dolby description', '10063'),
(29, 'star', '1', 'Course', 'http://mirrors.standaloneinstaller.com/video-sample/star_trails.mp4', 'https://2.bp.blogspot.com/-lv0zc6dHn7o/XUbNWbcBTnI/AAAAAAAAA74/hicJ_0TyHKoTOjsDIBFAagVB8cZVQYFPACLcBGAs/s320/3.png', 'indiasnsadni', '100'),
(30, 'panasonic', '1', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/Panasonic_HDC_TM_700_P_50i.mp4', 'https://3.bp.blogspot.com/-htji37VJwjo/XUbNWFYTaoI/AAAAAAAAA70/W_Z7-7V5_xMFjBwXjehPgSG8JGNxXFedQCLcBGAs/s320/2.png', 'ini deskripsi singkat panasonic', '46'),
(31, 'apa hayo', '1', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/Panasonic_HDC_TM_700_P_50i.mp4', 'https://1.bp.blogspot.com/-H8h4HxdnOw8/XYL3GKt1a6I/AAAAAAAAA88/TacSjyH_TBsEEWlpzdAeGIaVY2IGwZBngCLcBGAsYHQ/s1600/1.jpg', 'ini deskripsi singkat', '3388');

-- --------------------------------------------------------

--
-- Table structure for table `e_course_materi`
--

CREATE TABLE `e_course_materi` (
  `id` int(11) NOT NULL,
  `id_ecourse` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_course_pay`
--

CREATE TABLE `e_course_pay` (
  `user_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_course_rating`
--

CREATE TABLE `e_course_rating` (
  `id` int(11) NOT NULL,
  `video` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_course_rating`
--

INSERT INTO `e_course_rating` (`id`, `video`, `id_user`, `rating`) VALUES
(2, 12, 1, 3),
(3, 12, 2, 4),
(4, 12, 3, 2),
(9, 31, 3, 2);

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
(2, 'Actionnnnnn', 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3', 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3', 2019, 5, 1, '[]', 1, 0, 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3', 'https://www.youtube.com/watch?v=BPNTC7uZYrI&list=RD1G4isv_Fylg&index=3'),
(3, 'Film Unik Entertn', 'Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh ', 'Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh Coba tonton deh ', 2019, 3, 2, '[\"1\"]', 0, 0, 'https://www.youtube.com/watch?v=VXWI-tmdQJM', 'https://www.youtube.com/watch?v=VXWI-tmdQJM'),
(4, 'Unggulan', 'ini juga ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi', 'ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi ini deskripsi ini deskripsi ini deskripsi ini deskripsi v ini deskripsi', 2019, 1, 2, '[\"1\"]', 1, 0, 'https://www.youtube.com/watch?v=1G4isv_Fylg&list=RD1G4isv_Fylg&start_radio=1', 'https://www.youtube.com/watch?v=1G4isv_Fylg&list=RD1G4isv_Fylg&start_radio=1');

-- --------------------------------------------------------

--
-- Table structure for table `pakaivoucher`
--

CREATE TABLE `pakaivoucher` (
  `kode` varchar(25) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pakaivoucher`
--

INSERT INTO `pakaivoucher` (`kode`, `user`) VALUES
('neon', 1),
('neon', 2);

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
-- Table structure for table `pvideo`
--

CREATE TABLE `pvideo` (
  `user_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id_soal` int(11) NOT NULL,
  `bobot` varchar(100) NOT NULL,
  `kunci_jawaban` varchar(100) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `id_materi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id_soal`, `bobot`, `kunci_jawaban`, `pertanyaan`, `level`, `kategori`, `id_materi`) VALUES
(1, '80', 'Skripsi adalah ujian			                    ', 'Apa yg dimaksud dgn skripsi?			                    ', '1', 'Bimbel', 0);

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
(2, 12, 1, 3),
(3, 12, 2, 4),
(4, 12, 3, 2),
(9, 31, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reality_show`
--

CREATE TABLE `reality_show` (
  `reality_id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description_short` longtext NOT NULL,
  `description_long` longtext NOT NULL,
  `file_video` varchar(1000) NOT NULL,
  `year` int(11) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext NOT NULL,
  `featured` int(11) NOT NULL,
  `view` varchar(100) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reality_show`
--

INSERT INTO `reality_show` (`reality_id`, `title`, `description_short`, `description_long`, `file_video`, `year`, `rating`, `genre_id`, `actors`, `featured`, `view`, `thumbnail`) VALUES
(1, 'RCTI oke', 'hgj', 'hkj', 'WhatsApp_Video_2019-08-28_at_5_11_23_PM.mp4', 2019, '0', 2, '[\"1\"]', 1, '', '1591.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `season_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`season_id`, `series_id`, `name`) VALUES
(1, 1, 'Season 1');

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
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bukti` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topup`
--

INSERT INTO `topup` (`id`, `user_id`, `bukti`, `status`) VALUES
(1, 3, 'assets/global/bukti/scaled_IMG-20191010-WA0000.jpg', 0),
(2, 3, 'assets/global/bukti/scaled_IMG-20191010-WA0004.jpg', 0);

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
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 banned',
  `saldo` int(11) NOT NULL,
  `foto` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `type`, `name`, `email`, `password`, `user1`, `user2`, `user3`, `user4`, `user1_session`, `user2_session`, `user3_session`, `user4_session`, `user1_movielist`, `user2_movielist`, `user3_movielist`, `user4_movielist`, `user1_serieslist`, `user2_serieslist`, `user3_serieslist`, `user4_serieslist`, `plan_id`, `status`, `saldo`, `foto`) VALUES
(1, 1, 'Asno Azzawagama Firdaus', 'asnofirdaus@gmail.com', 'd6112c226324538e0d65f02e124f66dad77fe7d2', 'user 1', 'user 2', 'user 3', 'user 4', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 19600, 'xxx'),
(2, 0, 'Asno AF', 'iman', '5be9a68073f66a56554e25614e9f1c9a', 'user 1', 'Asno AF', 'user 3', 'user 4', '1564926033', '1566025466', '', '', '', '', '', '', '', '', '', '', 0, 1, 19500, 'http://192.168.0.108/webNeon/assets/global/fotoUser/scaled_Screenshot_2019-10-10-21-08-36-38.png'),
(3, 1, 'Pimen', 'iman@gmail.com', 'c440cfddfff524401bdc5f6ea818ee5b', 'user 1', 'user 2', 'user 3', 'user 4', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `file_video` varchar(1000) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `deskripsi_video` varchar(250) NOT NULL,
  `view` varchar(100) DEFAULT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `level`, `kategori`, `file_video`, `thumbnail`, `deskripsi_video`, `view`, `harga`) VALUES
(12, 'GGS', '2', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/page18-movie-4.mp4', 'https://2.bp.blogspot.com/-L-GC2V3zvck/XUbNXmbqCLI/AAAAAAAAA8E/dTlAVI_pCyMTtNxcaApcV0bGyU9k8cedQCLcBGAs/s320/5.png', 'GGS desc', '34', 0),
(28, 'DOlby Canyon', '1', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/dolbycanyon.mp4', 'https://3.bp.blogspot.com/-VKrC1I7-pfQ/XUbNXZ8JH3I/AAAAAAAAA8A/7S6FkC9KI80yk0XaX1kBoNs-jBBXwb1mACLcBGAs/s320/4.png', 'Dolby description', '10063', 0),
(29, 'star', '1', 'Course', 'http://mirrors.standaloneinstaller.com/video-sample/star_trails.mp4', 'https://2.bp.blogspot.com/-lv0zc6dHn7o/XUbNWbcBTnI/AAAAAAAAA74/hicJ_0TyHKoTOjsDIBFAagVB8cZVQYFPACLcBGAs/s320/3.png', 'indiasnsadni', '100', 0),
(30, 'panasonic', '1', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/Panasonic_HDC_TM_700_P_50i.mp4', 'https://3.bp.blogspot.com/-htji37VJwjo/XUbNWFYTaoI/AAAAAAAAA70/W_Z7-7V5_xMFjBwXjehPgSG8JGNxXFedQCLcBGAs/s320/2.png', 'ini deskripsi singkat panasonic', '46', 0),
(31, 'apa hayo', '1', 'Bimbel', 'http://mirrors.standaloneinstaller.com/video-sample/Panasonic_HDC_TM_700_P_50i.mp4', 'https://1.bp.blogspot.com/-H8h4HxdnOw8/XYL3GKt1a6I/AAAAAAAAA88/TacSjyH_TBsEEWlpzdAeGIaVY2IGwZBngCLcBGAsYHQ/s1600/1.jpg', 'ini deskripsi singkat', '3388', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `kode` varchar(25) NOT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`kode`, `jumlah`) VALUES
('neon', 19500);

-- --------------------------------------------------------

--
-- Structure for view `bimbelvideo`
--
DROP TABLE IF EXISTS `bimbelvideo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bimbelvideo`  AS  select `video`.`id_video` AS `id_video`,`video`.`judul` AS `judul`,`video`.`level` AS `level`,`video`.`kategori` AS `kategori`,`video`.`file_video` AS `file_video`,`video`.`thumbnail` AS `thumbnail`,`video`.`deskripsi_video` AS `deskripsi_video`,`video`.`view` AS `view` from `video` where `video`.`kategori` = 'Bimbel' ;

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
-- Indexes for table `documentary`
--
ALTER TABLE `documentary`
  ADD PRIMARY KEY (`documentary_id`);

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
-- Indexes for table `e_course`
--
ALTER TABLE `e_course`
  ADD PRIMARY KEY (`id_video`);

--
-- Indexes for table `e_course_materi`
--
ALTER TABLE `e_course_materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ecourse` (`id_ecourse`);

--
-- Indexes for table `e_course_pay`
--
ALTER TABLE `e_course_pay`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `e_course_rating`
--
ALTER TABLE `e_course_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video` (`video`),
  ADD KEY `id_user` (`id_user`);

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
-- Indexes for table `pakaivoucher`
--
ALTER TABLE `pakaivoucher`
  ADD KEY `kode` (`kode`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `pvideo`
--
ALTER TABLE `pvideo`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video` (`video`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `reality_show`
--
ALTER TABLE `reality_show`
  ADD PRIMARY KEY (`reality_id`);

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
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`kode`);

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
-- AUTO_INCREMENT for table `documentary`
--
ALTER TABLE `documentary`
  MODIFY `documentary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ecourse`
--
ALTER TABLE `ecourse`
  MODIFY `id_ecourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `e_course`
--
ALTER TABLE `e_course`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `e_course_materi`
--
ALTER TABLE `e_course_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_course_rating`
--
ALTER TABLE `e_course_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reality_show`
--
ALTER TABLE `reality_show`
  MODIFY `reality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `e_course_materi`
--
ALTER TABLE `e_course_materi`
  ADD CONSTRAINT `e_course_materi_ibfk_1` FOREIGN KEY (`id_ecourse`) REFERENCES `e_course` (`id_video`);

--
-- Constraints for table `e_course_pay`
--
ALTER TABLE `e_course_pay`
  ADD CONSTRAINT `ff` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `pvidssseo_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `e_course` (`id_video`);

--
-- Constraints for table `e_course_rating`
--
ALTER TABLE `e_course_rating`
  ADD CONSTRAINT `ratinggg_ibfk_1` FOREIGN KEY (`video`) REFERENCES `e_course` (`id_video`),
  ADD CONSTRAINT `ratingr_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `pakaivoucher`
--
ALTER TABLE `pakaivoucher`
  ADD CONSTRAINT `pakaivoucher_ibfk_1` FOREIGN KEY (`kode`) REFERENCES `voucher` (`kode`),
  ADD CONSTRAINT `pakaivoucher_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `pvideo`
--
ALTER TABLE `pvideo`
  ADD CONSTRAINT `pvideo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `pvideo_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `video` (`id_video`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`video`) REFERENCES `video` (`id_video`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `topup`
--
ALTER TABLE `topup`
  ADD CONSTRAINT `topup_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
