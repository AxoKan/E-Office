-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 01:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-office`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(21, NULL, 'Login', 'User Has Log in.', '2024-11-11 11:02:08'),
(22, 2, 'View', 'User view Setting.', '2024-11-11 11:10:24'),
(23, 2, 'View', 'User view Activity Log.', '2024-11-11 11:10:28'),
(24, 2, 'Logout', 'User Has Logout.', '2024-11-11 11:10:33'),
(25, NULL, 'Login', 'User Has Log in.', '2024-11-11 11:10:40'),
(26, 2, 'View', 'User view Activity Log.', '2024-11-11 11:10:43'),
(27, 2, 'View', 'User view Activity Log.', '2024-11-11 11:11:00'),
(28, 2, 'View', 'User view Setting.', '2024-11-11 11:16:56'),
(29, 2, 'View', 'User view Setting.', '2024-11-11 11:17:14'),
(30, 2, 'View', 'User view Activity Log.', '2024-11-11 11:17:16'),
(31, 2, 'View', 'User view Setting.', '2024-11-11 11:17:18'),
(32, 2, 'View', 'User view Activity Log.', '2024-11-11 11:17:19'),
(33, 2, 'View', 'User view Setting.', '2024-11-11 11:17:22'),
(34, 2, 'View', 'User view Setting.', '2024-11-11 11:17:38'),
(35, 2, 'View', 'User view Activity Log.', '2024-11-11 11:17:40'),
(36, 2, 'View', 'User view Setting.', '2024-11-11 11:17:41'),
(37, 2, 'View', 'User view Activity Log.', '2024-11-11 11:17:42'),
(38, 2, 'View', 'User view Setting.', '2024-11-11 11:17:45'),
(39, 2, 'View', 'User view Setting.', '2024-11-11 11:19:03'),
(40, 2, 'View', 'User view Dashboard.', '2024-11-11 11:22:46'),
(41, 2, 'View', 'User view Dashboard.', '2024-11-11 11:23:05'),
(42, 2, 'View', 'User view Dashboard.', '2024-11-11 11:23:08'),
(43, 2, 'View', 'User view Dashboard.', '2024-11-11 11:23:12'),
(44, 2, 'View', 'User view Dashboard.', '2024-11-11 11:23:25'),
(45, 2, 'View', 'User view Dashboard.', '2024-11-11 11:24:36'),
(46, 2, 'View', 'User view Dashboard.', '2024-11-11 11:24:49'),
(47, 2, 'View', 'User view Dashboard.', '2024-11-11 11:24:50'),
(48, 2, 'View', 'User view Dashboard.', '2024-11-11 11:24:53'),
(49, 2, 'View', 'User view Dashboard.', '2024-11-11 11:25:03'),
(50, 2, 'View', 'User view Dashboard.', '2024-11-11 11:26:26'),
(51, 2, 'View', 'User view Dashboard.', '2024-11-11 11:28:22'),
(52, 2, 'View', 'User view Dashboard.', '2024-11-11 11:30:47'),
(53, 2, 'View', 'User view Dashboard.', '2024-11-11 11:31:00'),
(54, 2, 'View', 'User view Dashboard.', '2024-11-11 11:31:10'),
(55, 2, 'View', 'User view Dashboard.', '2024-11-11 11:31:57'),
(56, 2, 'View', 'User view Dashboard.', '2024-11-11 11:31:57'),
(57, 2, 'View', 'User view Dashboard.', '2024-11-11 11:31:57'),
(58, 2, 'View', 'User view Dashboard.', '2024-11-11 11:31:58'),
(59, 2, 'View', 'User view Dashboard.', '2024-11-11 11:31:58'),
(60, 2, 'View', 'User view Dashboard.', '2024-11-11 11:32:33'),
(61, 2, 'View', 'User view Dashboard.', '2024-11-11 11:32:54'),
(62, 2, 'View', 'User view Dashboard.', '2024-11-11 11:32:56'),
(63, 2, 'View', 'User view Dashboard.', '2024-11-11 11:33:08'),
(64, 2, 'View', 'User view Dashboard.', '2024-11-11 11:33:23'),
(65, 2, 'View', 'User view Dashboard.', '2024-11-11 11:33:35'),
(66, 2, 'View', 'User view Dashboard.', '2024-11-11 11:33:50'),
(67, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:27'),
(68, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:28'),
(69, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:28'),
(70, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:28'),
(71, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:29'),
(72, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:29'),
(73, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:41'),
(74, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:42'),
(75, 2, 'View', 'User view Dashboard.', '2024-11-11 11:34:42'),
(76, 2, 'View', 'User view Dashboard.', '2024-11-11 11:35:02'),
(77, 2, 'View', 'User view Dashboard.', '2024-11-11 11:35:15'),
(78, 2, 'View', 'User view Dashboard.', '2024-11-11 11:35:16'),
(79, 2, 'View', 'User view Dashboard.', '2024-11-11 11:35:16'),
(80, 2, 'View', 'User view Dashboard.', '2024-11-11 11:35:17'),
(81, 2, 'View', 'User view Dashboard.', '2024-11-11 11:35:17'),
(82, 2, 'View', 'User view Dashboard.', '2024-11-11 11:36:10'),
(83, 2, 'View', 'User view Dashboard.', '2024-11-11 11:36:20'),
(84, 2, 'View', 'User view Setting.', '2024-11-11 11:36:41'),
(85, 2, 'View', 'User view Activity Log.', '2024-11-11 11:36:41'),
(86, 2, 'View', 'User view Dashboard.', '2024-11-11 11:36:42'),
(87, 2, 'View', 'User view Dashboard.', '2024-11-11 11:37:59'),
(88, 2, 'View', 'User view Dashboard.', '2024-11-11 11:38:43'),
(89, 2, 'View', 'User view Dashboard.', '2024-11-11 11:38:49'),
(90, 2, 'View', 'User view Dashboard.', '2024-11-11 11:38:55'),
(91, 2, 'View', 'User view Dashboard.', '2024-11-11 11:38:55'),
(92, 2, 'View', 'User view Dashboard.', '2024-11-11 11:38:59'),
(93, 2, 'View', 'User view Dashboard.', '2024-11-11 11:39:16'),
(94, 2, 'View', 'User view Setting.', '2024-11-11 11:39:17'),
(95, 2, 'View', 'User view Setting.', '2024-11-11 11:39:18'),
(96, 2, 'View', 'User view Setting.', '2024-11-11 11:39:19'),
(97, 2, 'View', 'User view Setting.', '2024-11-11 11:39:19'),
(98, 2, 'View', 'User view Setting.', '2024-11-11 11:39:20'),
(99, 2, 'View', 'User view Setting.', '2024-11-11 11:39:21'),
(100, 2, 'View', 'User view Setting.', '2024-11-11 11:39:21'),
(101, 2, 'View', 'User view Setting.', '2024-11-11 11:42:48'),
(102, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:42:49'),
(103, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:43:25'),
(104, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:43:27'),
(105, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:43:29'),
(106, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:44:02'),
(107, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:44:03'),
(108, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:44:10'),
(109, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:44:26'),
(110, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:44:27'),
(111, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:45:06'),
(112, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:46:44'),
(113, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:46:46'),
(114, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:47:03'),
(115, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:48:14'),
(116, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:48:16'),
(117, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:48:18'),
(118, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:49:08'),
(119, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:49:11'),
(120, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:49:39'),
(121, 2, 'View', 'User view Add User.', '2024-11-11 11:49:39'),
(122, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:50:24'),
(123, 2, 'View', 'User view Activity Log.', '2024-11-11 11:50:29'),
(124, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:50:32'),
(125, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:50:33'),
(126, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:50:33'),
(127, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:50:34'),
(128, 2, 'View', 'User view Add User.', '2024-11-11 11:50:35'),
(129, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:50:38'),
(130, 2, 'View', 'User view Add User.', '2024-11-11 11:51:07'),
(131, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:51:07'),
(132, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:51:08'),
(133, 2, 'View', 'User view Add User.', '2024-11-11 11:51:09'),
(134, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:51:09'),
(135, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:51:10'),
(136, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:51:11'),
(137, 2, 'View', 'User view Add User.', '2024-11-11 11:51:11'),
(138, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:51:12'),
(139, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:51:13'),
(140, 2, 'View', 'User view Add User.', '2024-11-11 11:51:13'),
(141, 2, 'Add', 'User add user.', '2024-11-11 11:52:57'),
(142, 2, 'View', 'User view Add User.', '2024-11-11 11:53:01'),
(143, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:53:03'),
(144, 2, 'View', 'User view Add User.', '2024-11-11 11:53:04'),
(145, 2, 'View', 'User view Add User.', '2024-11-11 11:53:14'),
(146, 2, 'View', 'User view Add User.', '2024-11-11 11:54:04'),
(147, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:54:05'),
(148, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:54:05'),
(149, 2, 'View', 'User view Add User.', '2024-11-11 11:54:06'),
(150, 2, 'View', 'User view Setting.', '2024-11-11 11:54:07'),
(151, 2, 'View', 'User view Activity Log.', '2024-11-11 11:54:08'),
(152, 2, 'View', 'User view Activity Log.', '2024-11-11 11:54:10'),
(153, 2, 'View', 'User view Setting.', '2024-11-11 11:54:11'),
(154, 2, 'View', 'User view Activity Log.', '2024-11-11 11:54:11'),
(155, 2, 'View', 'User view Setting.', '2024-11-11 11:54:12'),
(156, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:54:13'),
(157, 2, 'View', 'User view Dashboard.', '2024-11-11 11:54:14'),
(158, 2, 'View', 'User view Siswa Menu.', '2024-11-11 11:54:16'),
(159, 2, 'View', 'User view Setting.', '2024-11-11 11:54:16'),
(160, 2, 'View', 'User view Activity Log.', '2024-11-11 11:54:17'),
(161, 2, 'View', 'User view Activity Log.', '2024-11-11 11:54:19'),
(162, 2, 'View', 'User view Activity Log.', '2024-11-11 11:55:11'),
(163, 2, 'View', 'User view Activity Log.', '2024-11-11 11:55:14'),
(164, 2, 'View', 'User view Activity Log.', '2024-11-11 11:55:26'),
(165, 2, 'View', 'User view Activity Log.', '2024-11-11 11:55:29'),
(166, 2, 'View', 'User view Activity Log.', '2024-11-11 11:59:48'),
(167, 2, 'View', 'User view Surat Masuk.', '2024-11-11 11:59:49'),
(168, NULL, 'Login', 'User Has Log in.', '2024-11-12 10:46:43'),
(169, 2, 'View', 'User view Dashboard.', '2024-11-12 10:46:43'),
(170, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:46:47'),
(171, 2, 'View', 'User view Siswa Menu.', '2024-11-12 10:46:49'),
(172, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:46:51'),
(173, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:46:54'),
(174, 2, 'View', 'User view Siswa Menu.', '2024-11-12 10:47:00'),
(175, 2, 'View', 'User view Dashboard.', '2024-11-12 10:47:01'),
(176, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:47:02'),
(177, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:53:26'),
(178, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:53:59'),
(179, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:56:44'),
(180, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:56:45'),
(181, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:59:43'),
(182, 2, 'View', 'User view Surat Masuk.', '2024-11-12 10:59:54'),
(183, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:01:24'),
(184, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:01:51'),
(185, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:02:02'),
(186, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:02:29'),
(187, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:02:33'),
(188, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:04:27'),
(189, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:05:01'),
(190, 2, 'View', 'User view Dashboard.', '2024-11-12 11:05:10'),
(191, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:05:12'),
(192, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:05:15'),
(193, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:05:37'),
(194, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:05:59'),
(195, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:06:03'),
(196, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:06:03'),
(197, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:06:20'),
(198, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:06:22'),
(199, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:06:22'),
(200, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:06:24'),
(201, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:07:21'),
(202, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:08:21'),
(203, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:08:22'),
(204, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:09:01'),
(205, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:09:50'),
(206, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:10:17'),
(207, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:10:27'),
(208, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:10:48'),
(209, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:10:55'),
(210, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:11:03'),
(211, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:12:29'),
(212, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:14:24'),
(213, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:14:39'),
(214, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:18:12'),
(215, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:18:39'),
(216, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:19:35'),
(217, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:20:05'),
(218, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:20:29'),
(219, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:20:42'),
(220, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:20:52'),
(221, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:20:53'),
(222, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:20:53'),
(223, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:24:00'),
(224, 2, 'View', 'User view Activity Log.', '2024-11-12 11:24:05'),
(225, 2, 'View', 'User view Setting.', '2024-11-12 11:24:06'),
(226, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:24:07'),
(227, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:24:11'),
(228, 2, 'View', 'User view Setting.', '2024-11-12 11:24:11'),
(229, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:24:12'),
(230, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:24:27'),
(231, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:24:34'),
(232, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:24:40'),
(233, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:25:23'),
(234, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:25:26'),
(235, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:25:32'),
(236, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:28:40'),
(237, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:28:45'),
(238, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:30:02'),
(239, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:30:03'),
(240, 2, 'View', 'User view Setting.', '2024-11-12 11:30:04'),
(241, 2, 'View', 'User view Activity Log.', '2024-11-12 11:30:05'),
(242, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:30:06'),
(243, 2, 'View', 'User view Dashboard.', '2024-11-12 11:30:07'),
(244, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:30:08'),
(245, 2, 'View', 'User view Dashboard.', '2024-11-12 11:30:09'),
(246, 2, 'View', 'User view Dashboard.', '2024-11-12 11:30:49'),
(247, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:30:50'),
(248, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:30:50'),
(249, 2, 'View', 'User view Dashboard.', '2024-11-12 11:30:52'),
(250, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:30:53'),
(251, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:30:55'),
(252, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:30:56'),
(253, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:30:57'),
(254, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:31:00'),
(255, 2, 'View', 'User view Dashboard.', '2024-11-12 11:31:55'),
(256, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:31:56'),
(257, 2, 'View', 'User view Activity Log.', '2024-11-12 11:31:57'),
(258, 2, 'View', 'User view Setting.', '2024-11-12 11:31:58'),
(259, 2, 'View', 'User view Siswa Menu.', '2024-11-12 11:31:59'),
(260, 2, 'View', 'User view Dashboard.', '2024-11-12 11:32:47'),
(261, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:33:26'),
(262, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:33:56'),
(263, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:33:58'),
(264, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:11'),
(265, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:16'),
(266, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:18'),
(267, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:18'),
(268, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:19'),
(269, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:22'),
(270, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:23'),
(271, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:24'),
(272, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:34:34'),
(273, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:36:20'),
(274, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:36:52'),
(275, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:02'),
(276, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:07'),
(277, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:14'),
(278, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:38'),
(279, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:48'),
(280, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:48'),
(281, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:49'),
(282, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:50'),
(283, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:37:51'),
(284, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:38:16'),
(285, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:38:17'),
(286, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:38:19'),
(287, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:38:19'),
(288, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:38:19'),
(289, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:38:38'),
(290, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:39:24'),
(291, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:39:33'),
(292, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:39:55'),
(293, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:39:57'),
(294, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:40:32'),
(295, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:40:34'),
(296, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:40:35'),
(297, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:40:45'),
(298, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:41:17'),
(299, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:41:22'),
(300, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:41:33'),
(301, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:41:38'),
(302, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:41:47'),
(303, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:41:49'),
(304, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:41:50'),
(305, 2, 'View', 'User view Surat keluar.', '2024-11-12 11:43:59'),
(306, 2, 'View', 'User view Surat keluar.', '2024-11-12 11:43:59'),
(307, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 11:44:00'),
(308, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 11:44:08'),
(309, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 11:46:22'),
(310, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 11:46:42'),
(311, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 11:47:55'),
(312, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 11:48:49'),
(313, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 11:49:02'),
(314, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 11:53:51'),
(315, 2, 'View', 'User view Surat keluar.', '2024-11-12 11:53:51'),
(316, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:54:10'),
(317, 2, 'View', 'User view Surat keluar.', '2024-11-12 11:54:12'),
(318, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:55:26'),
(319, 2, 'View', 'User view Surat keluar.', '2024-11-12 11:55:49'),
(320, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:55:57'),
(321, 2, 'View', 'User view Surat keluar.', '2024-11-12 11:55:57'),
(322, 2, 'View', 'User view Surat Masuk.', '2024-11-12 11:56:01'),
(323, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:02:13'),
(324, 2, 'View', 'User view Dashboard.', '2024-11-12 12:02:14'),
(325, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:02:15'),
(326, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:02:22'),
(327, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:02:24'),
(328, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:02:25'),
(329, 2, 'View', 'User view Dashboard.', '2024-11-12 12:02:26'),
(330, 2, 'View', 'User view Siswa Menu.', '2024-11-12 12:02:27'),
(331, 2, 'View', 'User view Setting.', '2024-11-12 12:02:28'),
(332, 2, 'View', 'User view Activity Log.', '2024-11-12 12:02:30'),
(333, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:02:33'),
(334, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:02:34'),
(335, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:02:35'),
(336, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:02:38'),
(337, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:02:39'),
(338, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:02:52'),
(339, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:03:08'),
(340, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:05:25'),
(341, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:05:25'),
(342, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:05:34'),
(343, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:05:37'),
(344, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:05:43'),
(345, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:05:44'),
(346, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:05:45'),
(347, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:05:47'),
(348, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:06:15'),
(349, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:06:16'),
(350, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:06:23'),
(351, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:06:23'),
(352, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:06:27'),
(353, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:07:49'),
(354, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:07:51'),
(355, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:07:57'),
(356, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:07:58'),
(357, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:08:00'),
(358, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:09:29'),
(359, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:09:30'),
(360, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:09:32'),
(361, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:09:32'),
(362, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:09:34'),
(363, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:09:37'),
(364, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:09:38'),
(365, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:09:41'),
(366, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:09:44'),
(367, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:09:44'),
(368, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:09:45'),
(369, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:09:47'),
(370, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:09:47'),
(371, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:09:49'),
(372, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:09:50'),
(373, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:09:51'),
(374, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:09:57'),
(375, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:10:04'),
(376, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:10:06'),
(377, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:10:12'),
(378, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:11:10'),
(379, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:11:11'),
(380, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:11:28'),
(381, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:13:23'),
(382, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:13:23'),
(383, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:13:26'),
(384, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:13:27'),
(385, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:13:28'),
(386, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:13:33'),
(387, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:13:33'),
(388, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:13:35'),
(389, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:15:23'),
(390, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:15:24'),
(391, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:15:27'),
(392, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:15:27'),
(393, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:15:30'),
(394, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:15:32'),
(395, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:15:33'),
(396, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:17:27'),
(397, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:17:33'),
(398, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:17:35'),
(399, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:17:35'),
(400, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:17:52'),
(401, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:17:53'),
(402, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 12:17:54'),
(403, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 12:18:00'),
(404, 2, 'View', 'User view Surat keluar.', '2024-11-12 12:18:01'),
(405, 2, 'View', 'User view Surat Masuk.', '2024-11-12 12:18:03'),
(406, NULL, 'Login', 'User Has Log in.', '2024-11-12 16:42:51'),
(407, 2, 'View', 'User view Dashboard.', '2024-11-12 16:42:51'),
(408, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:42:55'),
(409, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:42:58'),
(410, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:44:10'),
(411, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 16:44:11'),
(412, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:44:17'),
(413, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:44:17'),
(414, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:44:19'),
(415, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:44:48'),
(416, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:45:37'),
(417, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 16:45:38'),
(418, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:45:41'),
(419, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:46:04'),
(420, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 16:46:06'),
(421, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:46:06'),
(422, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:46:17'),
(423, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:46:27'),
(424, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:46:52'),
(425, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 16:50:35'),
(426, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:53:08'),
(427, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 16:53:18'),
(428, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:53:43'),
(429, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:53:43'),
(430, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:53:45'),
(431, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:53:55'),
(432, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:28'),
(433, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:28'),
(434, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:33'),
(435, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:33'),
(436, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:34'),
(437, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:41'),
(438, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:41'),
(439, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:47'),
(440, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:47'),
(441, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:55:47'),
(442, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:56:09'),
(443, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:56:16'),
(444, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:57:06'),
(445, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 16:57:06'),
(446, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:57:10'),
(447, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:57:10'),
(448, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:57:12'),
(449, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:57:16'),
(450, 2, 'View', 'User view Menu Kirim Surat.', '2024-11-12 16:57:17'),
(451, 2, 'Add', 'User Mengirim Surat.', '2024-11-12 16:57:28'),
(452, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:57:28'),
(453, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:57:31'),
(454, 2, 'View', 'User view Dashboard.', '2024-11-12 16:57:35'),
(455, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:58:05'),
(456, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:58:07'),
(457, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:58:08'),
(458, 2, 'View', 'User view Surat keluar.', '2024-11-12 16:58:09'),
(459, 2, 'View', 'User view Surat Masuk.', '2024-11-12 16:58:14'),
(460, 2, 'View', 'User view Dashboard.', '2024-11-12 17:00:47'),
(461, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:00:50'),
(462, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:01:16'),
(463, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:01:25'),
(464, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:01:36'),
(465, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:12:33'),
(466, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:12:35'),
(467, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:13:35'),
(468, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:13:36'),
(469, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:13:52'),
(470, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:13:58'),
(471, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:11'),
(472, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:22'),
(473, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:22'),
(474, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:27'),
(475, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:27'),
(476, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:27'),
(477, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:47'),
(478, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:14:48'),
(479, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:15:08'),
(480, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:15:13'),
(481, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:15:13'),
(482, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:15:13'),
(483, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:15:15'),
(484, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:20:53'),
(485, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:20:53'),
(486, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:20:56'),
(487, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:21:03'),
(488, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:27:14'),
(489, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:27:41'),
(490, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:27:51'),
(491, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:27:56'),
(492, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:28:51'),
(493, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:29:12'),
(494, 2, 'View', 'User view Surat keluar.', '2024-11-12 17:29:12'),
(495, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:29:13'),
(496, 2, 'View', 'User view Surat keluar.', '2024-11-12 17:29:14'),
(497, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:29:15'),
(498, 2, 'View', 'User view Surat keluar.', '2024-11-12 17:29:15'),
(499, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:29:16'),
(500, 2, 'View', 'User view Surat keluar.', '2024-11-12 17:29:16'),
(501, 2, 'View', 'User view Surat Masuk.', '2024-11-12 17:29:17'),
(502, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:29:18'),
(503, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:33:33'),
(504, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:33:34'),
(505, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:33:34'),
(506, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:33:35'),
(507, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:33:35'),
(508, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:33:46'),
(509, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:34:08'),
(510, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:34:22'),
(511, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:34:39'),
(512, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:35:40'),
(513, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:36:03'),
(514, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:42:18'),
(515, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 17:42:33'),
(516, 2, 'Add', 'User add user.', '2024-11-12 17:42:47'),
(517, 2, 'View', 'User view Add User.', '2024-11-12 17:42:47'),
(518, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:42:50'),
(519, 2, 'View', 'User view Menu Cuti.', '2024-11-12 17:43:02'),
(520, 2, 'View', 'User view Surat Masuk.', '2024-11-12 18:46:33'),
(521, 2, 'View', 'User view Dashboard.', '2024-11-12 18:46:34'),
(522, 2, 'View', 'User view Menu Cuti.', '2024-11-12 18:46:35'),
(523, 2, 'View', 'User view Surat Masuk.', '2024-11-12 18:46:36'),
(524, 2, 'View', 'User view Menu Cuti.', '2024-11-12 18:46:36'),
(525, 2, 'View', 'User view Surat Masuk.', '2024-11-12 18:46:37'),
(526, 2, 'View', 'User view Dashboard.', '2024-11-12 18:46:37'),
(527, 2, 'View', 'User view Menu Cuti.', '2024-11-12 18:46:38'),
(528, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 18:52:02'),
(529, 2, 'View', 'User view Surat Masuk.', '2024-11-12 18:52:03'),
(530, 2, 'View', 'User view Surat keluar.', '2024-11-12 18:52:04'),
(531, 2, 'View', 'User view Menu Cuti.', '2024-11-12 18:52:10'),
(532, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 18:52:11'),
(533, 2, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 18:52:28'),
(534, 2, 'Logout', 'User Has Logout.', '2024-11-12 18:54:41'),
(535, NULL, 'Login', 'User Has Log in.', '2024-11-12 19:04:06'),
(536, 2, 'View', 'User view Dashboard.', '2024-11-12 19:04:06'),
(537, 2, 'Login', 'User Has Log in.', '2024-11-12 19:04:19'),
(538, 1, 'View', 'User view Dashboard.', '2024-11-12 19:04:19'),
(539, 1, 'View', 'User view Surat Masuk.', '2024-11-12 19:04:21'),
(540, 1, 'View', 'User view Surat keluar.', '2024-11-12 19:04:23'),
(541, 1, 'View', 'User view Surat Masuk.', '2024-11-12 19:04:24'),
(542, 1, 'View', 'User view Surat keluar.', '2024-11-12 19:04:25'),
(543, 1, 'View', 'User view Surat Masuk.', '2024-11-12 19:04:28'),
(544, 1, 'View', 'User view Surat keluar.', '2024-11-12 19:04:31'),
(545, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:04:35'),
(546, 1, 'View', 'User view Surat Masuk.', '2024-11-12 19:04:40'),
(547, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:04:48'),
(548, 1, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 19:04:55'),
(549, 1, 'View', 'User view Surat Masuk.', '2024-11-12 19:04:56'),
(550, 1, 'View', 'User view Dashboard.', '2024-11-12 19:04:57'),
(551, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:04:58'),
(552, 1, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 19:04:59'),
(553, 1, 'Add', 'User add user.', '2024-11-12 19:05:14'),
(554, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:05:14'),
(555, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:05:19'),
(556, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:05:32'),
(557, 1, 'View', 'User view Menu Ajukan Cuti.', '2024-11-12 19:05:33'),
(558, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:05:34'),
(559, 1, 'View', 'User view Dashboard.', '2024-11-12 19:05:38'),
(560, 1, 'View', 'User view Surat Masuk.', '2024-11-12 19:05:39'),
(561, 1, 'View', 'User view Menu Cuti.', '2024-11-12 19:05:39'),
(562, 1, 'Logout', 'User Has Logout.', '2024-11-12 19:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int(11) NOT NULL,
  `jenis_Cuti` int(11) DEFAULT NULL,
  `awal` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `nama` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `jenis_Cuti`, `awal`, `akhir`, `nama`, `keterangan`) VALUES
(1, 1, '2024-11-12', '2024-11-15', 1, 'awdadad'),
(2, 2, '2024-11-08', '2024-11-12', 2, 'hadir'),
(3, 1, '2024-11-12', '2024-11-14', 1, 'gas');

-- --------------------------------------------------------

--
-- Table structure for table `jeniscuti`
--

CREATE TABLE `jeniscuti` (
  `id_JC` int(11) NOT NULL,
  `Jenis_Cuti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jeniscuti`
--

INSERT INTO `jeniscuti` (`id_JC`, `Jenis_Cuti`) VALUES
(1, 'Izin Sakit'),
(2, 'Izin Tanpa Dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `nama_Logo` varchar(255) DEFAULT NULL,
  `logos` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `nama_Logo`, `logos`, `icon`) VALUES
(1, 'E-Office', 'Screenshot_2024-11-11_105903-removebg-preview.png', 'Screenshot_2024-11-11_105903-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_keluar` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `penerima` varchar(255) DEFAULT NULL,
  `pengirim` int(11) DEFAULT NULL,
  `surat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_keluar`, `tgl`, `penerima`, `pengirim`, `surat`) VALUES
(1, '2024-11-12', 'agus', 1, 'Sehubungan dengan adanya Kegiatan Pemberian Beasiswa siswa dan mahasiswa miskin di Kota Malang dan dalam rangka pencapaian visi dan misi Kota Malang yang Cerdas, Kreatif, Maju, Sejahtera dan ihsan. Pemerintah Kota Malang melalui Dinas Pendidikan Kota Malang mengalokasikan anggaran melalui Pendapatan Asli Daerah (PAD) Tahun Anggaran 2024.\r\n\r\nUntuk terlaksananya kegiatan di maksud, mohon bantuan pada Bapak/lbu untuk dapat menyampaikan data siswa dan mahasiswa miskin warga Kota Malang dengan persyaratan terlampir.\r\n\r\nDemikian pemberitahuan ini kami sampaikan, atas kerjasamanya kami ucapkan terimakasih.\r\n\r\n'),
(2, '2024-11-03', 'agus', 1, 'Sehubungan dengan adanya Kegiatan Pemberian Beasiswa siswa dan mahasiswa miskin di Kota Malang dan dalam rangka pencapaian visi dan misi Kota Malang yang Cerdas, Kreatif, Maju, Sejahtera dan ihsan. Pemerintah Kota Malang melalui Dinas Pendidikan Kota Malang mengalokasikan anggaran melalui Pendapatan Asli Daerah (PAD) Tahun Anggaran 2024.\r\n\r\nUntuk terlaksananya kegiatan di maksud, mohon bantuan pada Bapak/lbu untuk dapat menyampaikan data siswa dan mahasiswa miskin warga Kota Malang dengan persyaratan terlampir.\r\n\r\nDemikian pemberitahuan ini kami sampaikan, atas kerjasamanya kami ucapkan terimakasih.\r\n\r\n'),
(3, '2024-11-11', 'lol', 2, 'aaknfakf\r\nafa\r\nfafa\r\nfa\r\nfa\r\nfa\r\nf\r\naf\r\na\r\n\r\naf\r\naf\r\naf\r\na\r\nfa\r\nfa'),
(4, '2024-11-11', '1', 2, 'adadada'),
(5, '2024-11-11', 'petugas', 2, 'hallo'),
(6, '2024-11-11', 'petugas', 2, 'ktl'),
(7, '2024-11-11', 'petugas', 2, '1'),
(8, '2024-11-11', 'petugas', 2, 'aa'),
(9, '2024-11-11', 'a', 2, 'a'),
(10, '2024-11-11', 'a', 2, 'a'),
(11, '2024-11-11', 'petugas', 2, 'a'),
(12, '2024-11-11', 'petugas', 2, '1'),
(13, '2024-11-11', 'petugas', 2, 'a'),
(14, '2024-11-12', 'petugas', 2, '1212'),
(15, '2024-11-12', 'petugas', 2, '1'),
(16, '2024-11-12', 'petugas', 2, '1'),
(17, '2024-11-12', 'ab', 2, 'lol gay');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_masuk` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `pengirim` varchar(255) DEFAULT NULL,
  `penerima` int(11) DEFAULT NULL,
  `surat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_masuk`, `tgl`, `pengirim`, `penerima`, `surat`) VALUES
(1, '2024-11-12', 'agus', 1, '1'),
(2, '2024-11-03', 'agus', 1, 'Sehubungan dengan adanya Kegiatan Pemberian Beasiswa siswa dan mahasiswa miskin di Kota Malang dan dalam rangka pencapaian visi dan misi Kota Malang yang Cerdas, Kreatif, Maju, Sejahtera dan ihsan. Pemerintah Kota Malang melalui Dinas Pendidikan Kota Malang mengalokasikan anggaran melalui Pendapatan Asli Daerah (PAD) Tahun Anggaran 2024.\r\n\r\nUntuk terlaksananya kegiatan di maksud, mohon bantuan pada Bapak/lbu untuk dapat menyampaikan data siswa dan mahasiswa miskin warga Kota Malang dengan persyaratan terlampir.\r\n\r\nDemikian pemberitahuan ini kami sampaikan, atas kerjasamanya kami ucapkan terimakasih.\r\n\r\n'),
(3, '2024-11-11', '2', 1, 'adadada'),
(4, '2024-11-11', '2', 1, 'hallo'),
(5, '2024-11-11', '1', 1, 'ktl'),
(6, '2024-11-11', '2', 1, '1'),
(7, '2024-11-11', '2', 1, 'aa'),
(8, '2024-11-11', '2', 1, 'a'),
(9, '2024-11-11', '1', 1, '1'),
(10, '2024-11-11', 'e', 1, 'a'),
(11, '2024-11-12', 'e', 1, '1212'),
(12, '2024-11-12', 'admin', 1, '1'),
(13, '2024-11-12', 'admin', 1, '1'),
(14, '2024-11-12', 'admin', 3, 'lol gay');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `real` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL,
  `Level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `real`, `user`, `password`, `Level`) VALUES
(1, 'petugas', 'petugas', 'petugas', 'petugas'),
(2, 'admin', 'admin', 'admin', 'admin'),
(3, 'ab', 'b', '21232f297a5', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `jeniscuti`
--
ALTER TABLE `jeniscuti`
  ADD PRIMARY KEY (`id_JC`) USING BTREE;

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_keluar`) USING BTREE;

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_masuk`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jeniscuti`
--
ALTER TABLE `jeniscuti`
  MODIFY `id_JC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
