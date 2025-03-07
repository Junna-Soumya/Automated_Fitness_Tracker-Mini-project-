-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 07:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_track_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add food items', 9, 'add_fooditems'),
(34, 'Can change food items', 9, 'change_fooditems'),
(35, 'Can delete food items', 9, 'delete_fooditems'),
(36, 'Can view food items', 9, 'view_fooditems'),
(37, 'Can add workouts', 10, 'add_workouts'),
(38, 'Can change workouts', 10, 'change_workouts'),
(39, 'Can delete workouts', 10, 'delete_workouts'),
(40, 'Can view workouts', 10, 'view_workouts'),
(41, 'Can add user food history', 11, 'add_userfoodhistory'),
(42, 'Can change user food history', 11, 'change_userfoodhistory'),
(43, 'Can delete user food history', 11, 'delete_userfoodhistory'),
(44, 'Can view user food history', 11, 'view_userfoodhistory');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'fitness_app', 'admin'),
(9, 'fitness_app', 'fooditems'),
(8, 'fitness_app', 'user'),
(11, 'fitness_app', 'userfoodhistory'),
(10, 'fitness_app', 'workouts'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-16 11:00:55.174456'),
(2, 'auth', '0001_initial', '2024-06-16 11:00:57.684385'),
(3, 'admin', '0001_initial', '2024-06-16 11:00:58.238040'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-16 11:00:58.311995'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-16 11:00:58.387949'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-16 11:00:58.735989'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-16 11:00:58.969840'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-16 11:00:59.042799'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-16 11:00:59.087766'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-16 11:00:59.344097'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-16 11:00:59.373088'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-16 11:00:59.436040'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-16 11:00:59.538975'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-16 11:00:59.620928'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-16 11:00:59.717864'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-16 11:00:59.765839'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-16 11:00:59.870863'),
(18, 'fitness_app', '0001_initial', '2024-06-16 11:01:00.142753'),
(19, 'fitness_app', '0002_food', '2024-06-16 11:01:00.210711'),
(20, 'fitness_app', '0002_fooditems', '2024-06-16 11:04:22.366694'),
(21, 'sessions', '0001_initial', '2024-06-16 11:04:22.536584'),
(22, 'fitness_app', '0003_workouts', '2024-06-16 12:10:21.744526'),
(23, 'fitness_app', '0004_remove_user_photo_alter_user_email', '2024-06-16 13:31:11.826623'),
(24, 'fitness_app', '0005_userfoodhistory', '2024-06-17 14:07:52.399205'),
(25, 'fitness_app', '0006_rename_fiber_fooditems_cholesterol', '2024-06-19 17:32:23.087130');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('q8zm8cjfj3oh8xmi4qr3okkb8ji4opfm', 'eyJ1c2VySWQiOjF9:1sKL0F:izUwxpCe2HnpjMvQx7AsXUNudStx8ot-_P9N5bpnPoM', '2024-07-04 16:51:15.269777');

-- --------------------------------------------------------

--
-- Table structure for table `fitness_app_admin`
--

CREATE TABLE `fitness_app_admin` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fitness_app_admin`
--

INSERT INTO `fitness_app_admin` (`username`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `fitness_app_fooditems`
--

CREATE TABLE `fitness_app_fooditems` (
  `foodId` int(11) NOT NULL,
  `foodItem` varchar(100) NOT NULL,
  `protein` double NOT NULL,
  `cholesterol` double NOT NULL,
  `carbohydrates` double NOT NULL,
  `fats` double NOT NULL,
  `calories` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fitness_app_fooditems`
--

INSERT INTO `fitness_app_fooditems` (`foodId`, `foodItem`, `protein`, `cholesterol`, `carbohydrates`, `fats`, `calories`) VALUES
(248, 'CLUB SODA 12 FL OZ', 0, 0, 0, 0, 0),
(249, 'COFFEE, BREWED 6 FL OZ', 0, 0, 0, 0, 0),
(250, 'COLA, DIET, ASPARTAME ONLY 12 FL OZ', 0, 0, 0, 0, 0),
(251, 'COLA, DIET, ASPRTAME + SACCHRN12 FL OZ', 0, 0, 0, 0, 0),
(252, 'COLA, DIET, SACCHARIN ONLY 12 FL OZ', 0, 0, 0, 0, 0),
(253, 'LETTUCE, BUTTERHEAD, RAW,LEAVE1 LEAF', 0, 0, 0, 0, 0),
(254, 'PARSLEY, FREEZE-DRIED 1 TBSP', 0, 0, 0, 0, 0),
(255, 'SALT 1 TSP', 0, 0, 0, 0, 0),
(256, 'TEA, BREWED 8 FL OZ', 0, 0, 0, 0, 0),
(257, 'TEA, INSTANT,PREPRD,UNSWEETEND8 FL OZ', 0, 0, 0.4, 0, 0),
(258, 'COFFEE, INSTANT, PREPARED 6 FL OZ', 0, 0, 0.5, 0, 0),
(259, 'VINEGAR, CIDER 1 TBSP', 0, 0, 6.7, 0, 0),
(260, 'BEEF BROTH, BOULLN, CONSM,CNND1 CUP', 1.3, 0, 0, 0.13, 6),
(261, 'PICKLES, CUCUMBER, DILL 1 PICKLE', 0, 0, 1.5, 0, 8),
(262, 'LETTUCE, CRISPHEAD, RAW,PIECES1 CUP', 1.8, 0, 1.8, 0, 9),
(263, 'ONION SOUP, DEHYDRATD, PREPRED1 PKT', 0.5, 0, 2.2, 0.05, 11),
(264, 'CABBAGE, CHINESE, PAK-CHOI,CKD1 CUP', 1.8, 0, 1.8, 0, 12),
(265, 'LETTUCE, BUTTERHEAD, RAW,HEAD 1 HEAD', 1.2, 0, 2.5, 0, 12),
(266, 'CELERY, PASCAL TYPE, RAW,STALK1 STALK', 0, 0, 2.5, 0, 13),
(267, 'ASPARAGUS,CANNED,SPEARS,NOSALT4 SPEARS', 1.3, 0, 2.5, 0, 13),
(268, 'ASPARAGUS,CANNED,SPEARS,W/SALT4 SPEARS', 1.3, 0, 2.5, 0, 13),
(269, 'LETTUCE, CRISPHEAD, RAW, HEAD 1 HEAD', 0.9, 0, 2, 0.02, 13),
(270, 'CABBAGE, CHINESE,PE-TSAI, RAW 1 CUP', 1.3, 0, 2.6, 0, 13),
(271, 'COLLARDS, COOKED FROM RAW 1 CUP', 1.1, 0, 2.6, 0.05, 13),
(272, 'MUSTARD GREENS, COOKED, DRANED1 CUP', 2.1, 0, 2.1, 0, 14),
(273, 'LETTUCE, CRISPHEAD, RAW,WEDGE 1 WEDGE', 0.7, 0, 2.2, 0, 15),
(274, 'TOMATO JUICE, CANNED W/O SALT 1 CUP', 0.8, 0, 4.1, 0, 16),
(275, 'TOMATO JUICE, CANNED WITH SALT1 CUP', 0.8, 0, 4.1, 0, 16),
(276, 'CELERY, PASCAL TYPE, RAW,PIECE1 CUP', 0.8, 0, 3.3, 0, 17),
(277, 'CUCUMBER, W/ PEEL 6 SLICES', 0, 0, 3.6, 0, 18),
(278, 'LETTUCE, LOOSELEAF 1 CUP', 1.8, 0, 3.6, 0, 18),
(279, 'SPINACH, RAW 1 CUP', 3.6, 0, 3.6, 0, 18),
(280, 'SNAP BEAN,CNND,DRND,GREEN,SALT1 CUP', 1.5, 0, 4.4, 0, 19),
(281, 'SNAP BEAN,CNND,DRND,GRN,NOSALT1 CUP', 1.5, 0, 4.4, 0, 19),
(282, 'SNAP BEAN,CNND,DRND,YLLW, SALT1 CUP', 1.5, 0, 4.4, 0, 19),
(283, 'SNAP BEAN,CNND,DRND,YLLW,NOSAL1 CUP', 1.5, 0, 4.4, 0, 19),
(284, 'VEGETABLE JUICE COCKTAIL, CNND1 CUP', 0.8, 0, 4.5, 0, 19),
(285, 'SAUERKRAUT, CANNED 1 CUP', 0.8, 0, 4.2, 0.04, 19),
(286, 'BAMBOO SHOOTS, CANNED, DRAINED1 CUP', 1.5, 0, 3.1, 0.08, 19),
(287, 'TURNIPS, COOKED, DICED 1 CUP', 0.6, 0, 5.1, 0, 19),
(288, 'CAULIFLOWER, COOKED FROM FROZN1 CUP', 1.7, 0, 3.9, 0.06, 19),
(289, 'SQUASH, SUMMER, COOKED, DRAIND1 CUP', 1.1, 0, 4.4, 0.06, 19),
(290, 'ENDIVE, CURLY, RAW 1 CUP', 2, 0, 4, 0, 20),
(291, 'CABBAGE, COMMON, COOKED, DRNED1 CUP', 0.7, 0, 4.7, 0, 20),
(292, 'BEAN SPROUTS, MUNG, COOKD,DRAN1 CUP', 2.4, 0, 4, 0, 20),
(293, 'TOMATOES, RAW 1 TOMATO', 0.8, 0, 4.1, 0, 20),
(294, 'LIME JUICE,CANNED 1 CUP', 0.4, 0, 6.5, 0.04, 20),
(295, 'PUMPKIN, COOKED FROM RAW 1 CUP', 0.8, 0, 4.9, 0.04, 20),
(296, 'LEMON JUICE, CANNED 1 CUP', 0.4, 0, 6.6, 0.04, 20),
(297, 'PEPPERS, SWEET, COOKED, GREEN 1 PEPPER', 0, 0, 4.1, 0, 21),
(298, 'PEPPERS, SWEET, COOKED, RED 1 PEPPER', 0, 0, 4.1, 0, 21),
(299, 'TURNIP GREENS, COOKED FROM RAW1 CUP', 1.4, 0, 4.2, 0.07, 21),
(300, 'TOMATOES, CANNED, S+L, W/ SALT1 CUP', 0.8, 0, 4.2, 0.04, 21),
(301, 'TOMATOES, CANNED, S+L,W/O SALT1 CUP', 0.8, 0, 4.2, 0.04, 21),
(302, 'TOMATO VEG SOUP, DEHYD,PREPRED1 PKT', 0.5, 0, 4.2, 0.16, 21),
(303, 'CHICKEN NOODLE SOUP,DEHYD,PRPD1 PKT', 1.1, 1.1, 3.2, 0.11, 21),
(304, 'CABBAGE, COMMON, RAW 1 CUP', 1.4, 0, 5.7, 0, 21),
(305, 'SPINACH, COOKED FROM RAW, DRND1 CUP', 2.8, 0, 3.9, 0.06, 22),
(306, 'MUSHROOMS, CANNED, DRND,W/SALT1 CUP', 1.9, 0, 5.1, 0.06, 22),
(307, 'LEMON JUICE,FRZN,SINGLE-STRNGH6 FL OZ', 0.4, 0, 6.6, 0.04, 23),
(308, 'SPINACH, CANNED, DRND,W/ SALT 1 CUP', 2.8, 0, 3.3, 0.09, 23),
(309, 'SPINACH, CANNED, DRND,W/O SALT1 CUP', 2.8, 0, 3.3, 0.09, 23),
(310, 'CARROTS, CANNED, DRN, W/ SALT 1 CUP', 0.7, 0, 5.5, 0.07, 24),
(311, 'CARROTS, CANNED,DRND, W/O SALT1 CUP', 0.7, 0, 5.5, 0.07, 24),
(312, 'CAULIFLOWER, COOKED FROM RAW 1 CUP', 1.6, 0, 4.8, 0, 24),
(313, 'LEMON JUICE, RAW 1 CUP', 0.4, 0, 8.6, 0, 25),
(314, 'CHICKEN RICE SOUP, CANNED 1 CUP', 1.7, 2.9, 2.9, 0.21, 25),
(315, 'ASPARAGUS, CKD FRM RAW,DR,SPER4 SPEARS', 3.3, 0, 5, 0, 25),
(316, 'ASPARAGUS, CKD FRM FRZ,DR,SPER4 SPEARS', 3.3, 0, 5, 0.17, 25),
(317, 'CAULIFLOWER, RAW 1 CUP', 2, 0, 5, 0, 25),
(318, 'ASPARAGUS, CKD FRM RAW, DR,CUT1 CUP', 2.8, 0, 4.4, 0.06, 25),
(319, 'MUSHROOMS, COOKED, DRAINED 1 CUP', 1.9, 0, 5.1, 0.06, 26),
(320, 'LEMONS, RAW 1 LEMON', 1.7, 0, 8.6, 0, 26),
(321, 'SNAP BEAN,FRZ,CKD,DRND,GREEN 1 CUP', 1.5, 0, 5.9, 0, 26),
(322, 'SNAP BEAN,FRZ,CKD,DRND,YELLOW 1 CUP', 1.5, 0, 5.9, 0, 26),
(323, 'EGGPLANT, COOKED, STEAMED 1 CUP', 1, 0, 6.3, 0, 26),
(324, 'LIME JUICE, RAW 1 CUP', 0.4, 0, 8.9, 0, 26),
(325, 'BROCCOLI, RAW 1 SPEAR', 2.6, 0, 5.3, 0.07, 26),
(326, 'BEER, LIGHT 12 FL OZ', 0.3, 0, 1.4, 0, 27),
(327, 'BROCCOLI, FRZN, COOKED, DRANED1 CUP', 3.2, 0, 5.4, 0, 27),
(328, 'PEPPERS, SWEET, RAW, GREEN 1 PEPPER', 1.4, 0, 5.4, 0, 27),
(329, 'PEPPERS, SWEET, RAW, RED 1 PEPPER', 1.4, 0, 5.4, 0, 27),
(330, 'RADISHES, RAW 4 RADISH', 0, 0, 5.6, 0, 28),
(331, 'BEET GREENS, COOKED, DRAINED 1 CUP', 2.8, 0, 5.6, 0, 28),
(332, 'ASPARAGUS, CKD FRM FRZ,DRN,CUT1 CUP', 2.8, 0, 5, 0.11, 28),
(333, 'BROCCOLI, RAW, COOKED, DRAINED1 SPEAR', 2.8, 0, 5.6, 0.06, 28),
(334, 'ONIONS, RAW, COOKED, DRAINED 1 CUP', 1, 0, 6.2, 0.05, 29),
(335, 'MUSHROOMS, RAW 1 CUP', 1.4, 0, 4.3, 0, 29),
(336, 'CABBAGE, RED, RAW 1 CUP', 1.4, 0, 5.7, 0, 29),
(337, 'CABBAGE, SAVOY, RAW 1 CUP', 1.4, 0, 5.7, 0, 29),
(338, 'BEAN SPROUTS, MUNG, RAW 1 CUP', 2.9, 0, 5.8, 0, 29),
(339, 'SPINACH, COOKED FR FRZEN, DRND1 CUP', 3.2, 0, 5.3, 0.05, 29),
(340, 'BROCCOLI, RAW, COOKED, DRAINED1 CUP', 3.2, 0, 5.8, 0.06, 29),
(341, 'VEGETARIAN SOUP, CANNED 1 CUP', 0.8, 0, 5, 0.12, 29),
(342, 'OKRA PODS, COOKED 8 PODS', 2.4, 0, 7.1, 0, 29),
(343, 'BEETS, COOKED, DRAINED, WHOLE 2 BEETS', 1, 0, 7, 0, 30),
(344, 'STRAWBERRIES, RAW 1 CUP', 0.7, 0, 6.7, 0, 30),
(345, 'ALFALFA SEEDS, SPROUTED, RAW 1 CUP', 3, 0, 3, 0, 30),
(346, 'KOHLRABI, COOKED, DRAINED 1 CUP', 1.8, 0, 6.7, 0, 30),
(347, 'TURNIP GREENS, CKED FRM FROZEN1 CUP', 3, 0, 4.9, 0.12, 30),
(348, 'TOMATO SAUCE, CANNED WITH SALT1 CUP', 1.2, 0, 7.3, 0.04, 31),
(349, 'BROWN GRAVY FROM DRY MIX 1 CUP', 1.1, 0.8, 5.4, 0.34, 31),
(350, 'KALE, COOKED FROM RAW 1 CUP', 1.5, 0, 5.4, 0.08, 31),
(351, 'KALE, COOKED FROM FROZEN 1 CUP', 3.1, 0, 5.4, 0.08, 31),
(352, 'CHICKEN NOODLE SOUP, CANNED 1 CUP', 1.7, 2.9, 3.7, 0.29, 31),
(353, 'WATERMELON, RAW, DICED 1 CUP', 0.6, 0, 6.9, 0.06, 31),
(354, 'WATERMELON, RAW 1 PIECE', 0.6, 0, 7.3, 0.06, 32),
(355, 'BEETS, COOKED, DRAINED, DICED 1 CUP', 1.2, 0, 6.5, 0, 32),
(356, 'BEETS, CANNED, DRAINED,NO SALT1 CUP', 1.2, 0, 7.1, 0, 32),
(357, 'BEETS, CANNED, DRAINED,W/ SALT1 CUP', 1.2, 0, 7.1, 0, 32),
(358, 'TEA,INSTANT,PREPARD,SWEETENED 8 FL OZ', 0, 0, 8.4, 0, 32),
(359, 'CHICKEN GRAVY FROM DRY MIX 1 CUP', 1.2, 1.2, 5.4, 0.19, 33),
(360, 'VEGETABLE BEEF SOUP, CANNED 1 CUP', 2.5, 2, 4.1, 0.37, 33),
(361, 'CLAM CHOWDER, MANHATTAN, CANND1 CUP', 1.6, 0.8, 4.9, 0.16, 33),
(362, 'MINESTRONE SOUP, CANNED 1 CUP', 1.7, 0.8, 4.6, 0.25, 33),
(363, 'DANDELION GREENS, COOKED, DRND1 CUP', 1.9, 0, 6.7, 0.1, 33),
(364, 'LEMON JUICE, CANNED 1 TBSP', 0, 0, 6.7, 0, 33),
(365, 'ITALIAN SALAD DRESSING,LOCALOR1 TBSP', 0, 0, 13.3, 0, 33),
(366, 'BROCCOLI, FRZN, COOKED, DRANED1 PIECE', 3.3, 0, 6.7, 0, 33),
(367, 'ONIONS, SPRING, RAW 6 ONION', 3.3, 0, 6.7, 0, 33),
(368, 'GRAPEFRUIT, RAW, PINK 42006 FRUT', 0.8, 0, 8.3, 0, 33),
(369, 'GRAPEFRUIT, RAW, WHITE 42006 FRUT', 0.8, 0, 8.3, 0, 33),
(370, 'GINGER ALE 12 FL OZ', 0, 0, 8.7, 0, 34),
(371, 'ONIONS, RAW, CHOPPED 1 CUP', 1.3, 0, 7.5, 0.06, 34),
(372, 'MILK, SKIM, NO ADDED MILKSOLID1 CUP', 3.3, 1.6, 4.9, 0.12, 35),
(373, 'PUMPKIN, CANNED 1 CUP', 1.2, 0, 8.2, 0.16, 35),
(374, 'ONIONS, RAW, SLICED 1 CUP', 0.9, 0, 7, 0.09, 35),
(375, 'BEEF NOODLE SOUP, CANNED 1 CUP', 2, 2, 3.7, 0.45, 35),
(376, 'TOMATO SOUP W/ WATER, CANNED 1 CUP', 0.8, 0, 7, 0.16, 35),
(377, 'HONEYDEW MELON, RAW 42014 MEL', 0.8, 0, 9.3, 0, 35),
(378, 'SEAWEED, KELP, RAW 1 OZ', 0, 0, 10.6, 0.35, 35),
(379, 'COLLARDS, COOKED FROM FROZEN 1 CUP', 2.9, 0, 7.1, 0.06, 35),
(380, 'CANTALOUP, RAW 42006 MELN', 0.7, 0, 8.2, 0.04, 36),
(381, 'SNAP BEAN,RAW,CKD,DRND,GREEN 1 CUP', 1.6, 0, 8, 0.08, 36),
(382, 'SNAP BEAN,RAW,CKD,DRND,YELLOW 1 CUP', 1.6, 0, 8, 0.08, 36),
(383, 'MILK, SKIM, ADDED MILK SOLIDS 1 CUP', 3.7, 2, 4.9, 0.16, 37),
(384, 'CHERRIES, SOUR,RED,CANND,WATER1 CUP', 0.8, 0, 9, 0.04, 37),
(385, 'CARROTS, COOKED FROM FROZEN 1 CUP', 1.4, 0, 8.2, 0, 38),
(386, 'CHICKEN CHOW MEIN, CANNED 1 CUP', 2.8, 3.2, 7.2, 0.04, 38),
(387, 'GRAPEFRUIT JUICE, CANNED,UNSWT1 CUP', 0.4, 0, 8.9, 0, 38),
(388, 'GRAPEFRUIT JUICE, RAW 1 CUP', 0.4, 0, 9.3, 0, 38),
(389, 'BRUSSELS SPROUTS, RAW, COOKED 1 CUP', 2.6, 0, 8.4, 0.13, 39),
(390, 'SQUASH, WINTER, BAKED 1 CUP', 1, 0, 8.8, 0.15, 39),
(391, 'PEACHES, RAW 1 PEACH', 1.1, 0, 11.5, 0, 40),
(392, 'GRAPEFRT JCE,FRZN,DLTD,UNSWTEN1 CUP', 0.4, 0, 9.7, 0, 40),
(393, 'LIMEADE,CONCEN,FROZEN,DILUTED 6 FL OZ', 0, 0, 10.8, 0, 41),
(394, 'PEAS, EDIBLE POD, COOKED,DRNED1 CUP', 3.1, 0, 6.9, 0.06, 41),
(395, 'BUTTERMILK, FLUID 1 CUP', 3.3, 3.7, 4.9, 0.53, 41),
(396, 'CARROTS, RAW, GRATED 1 CUP', 0.9, 0, 10, 0, 41),
(397, 'MILK, LOFAT, 1%, NO ADDEDSOLID1 CUP', 3.3, 4.1, 4.9, 0.66, 41),
(398, 'BEER, REGULAR 12 FL OZ', 0.3, 0, 3.6, 0, 42),
(399, 'LEMON-LIME SODA 12 FL OZ', 0, 0, 10.5, 0, 42),
(400, 'CARROTS, RAW, WHOLE 1 CARROT', 1.4, 0, 9.7, 0, 42),
(401, 'TANGERINES, RAW 1 TANGRN', 1.2, 0, 10.7, 0, 42),
(402, 'BRUSSELS SPROUTS, FRZN, COOKED1 CUP', 3.9, 0, 8.4, 0.06, 42),
(403, 'TOMATO PUREE, CANNED W/O SALT 1 CUP', 1.6, 0, 10, 0, 42),
(404, 'TOMATO PUREE, CANNED WITH SALT1 CUP', 1.6, 0, 10, 0, 42),
(405, 'ORANGE JUICE, CANNED 1 CUP', 0.4, 0, 10, 0, 42),
(406, 'ORANGE + GRAPEFRUIT JUCE,CANND1 CUP', 0.4, 0, 10.1, 0, 43),
(407, 'MILK, LOFAT, 1%, ADDED SOLIDS 1 CUP', 3.7, 4.1, 4.9, 0.61, 43),
(408, 'APPLESAUCE, CANNED,UNSWEETENED1 CUP', 0, 0, 11.5, 0, 43),
(409, 'LEMONADE,CONCEN,FRZEN,DILUTED 6 FL OZ', 0, 0, 11.4, 0, 43),
(410, 'COLA, REGULAR 12 FL OZ', 0, 0, 11.1, 0, 43),
(411, 'PEPPER-TYPE SODA 12 FL OZ', 0, 0, 11.1, 0, 43),
(412, 'PEACHES, RAW, SLICED 1 CUP', 0.6, 0, 11.2, 0, 44),
(413, 'ORANGE JUICE, CHILLED 1 CUP', 0.8, 0, 10, 0.04, 44),
(414, 'ORANGE JUICE,FRZN,CNCN,DILUTED1 CUP', 0.8, 0, 10.8, 0, 44),
(415, 'ORANGE JUICE, RAW 1 CUP', 0.8, 0, 10.5, 0.04, 44),
(416, 'PEACHES, CANNED, JUICE PACK 1 CUP', 0.8, 0, 11.7, 0, 44),
(417, 'PEPPERS, HOT CHILI, RAW, GREEN1 PEPPER', 2.2, 0, 8.9, 0, 44),
(418, 'PEPPERS, HOT CHILI, RAW, RED 1 PEPPER', 2.2, 0, 8.9, 0, 44),
(419, 'ROOT BEER 12 FL OZ', 0, 0, 11.4, 0, 45),
(420, 'FRUIT PUNCH DRINK, CANNED 6 FL OZ', 0, 0, 11.6, 0, 45),
(421, 'CARROTS, COOKED FROM RAW 1 CUP', 1.3, 0, 10.3, 0.06, 45),
(422, 'EGGS, RAW, WHITE 1 WHITE', 12.1, 0, 0, 0, 45),
(423, 'PEACHES, CANNED, JUICE PACK 1 HALF', 0, 0, 11.7, 0, 45),
(424, 'ORANGES, RAW 1 ORANGE', 0.8, 0, 11.5, 0, 46),
(425, 'ARTICHOKES, GLOBE, COOKED, DRN1 ARTCHK', 2.5, 0, 10, 0, 46),
(426, 'GRAPEFRUIT JUICE, CANNED,SWTND1 CUP', 0.4, 0, 11.2, 0, 46),
(427, 'VEGETABLES, MIXED, CANNED 1 CUP', 2.5, 0, 9.2, 0.06, 46),
(428, 'APPLE JUICE, CANNED 1 CUP', 0, 0, 11.7, 0, 46),
(429, 'FRUIT COCKTAIL,CNND,JUICE PACK1 CUP', 0.4, 0, 11.7, 0, 46),
(430, 'PAPAYAS, RAW 1 CUP', 0.7, 0, 12.1, 0.07, 46),
(431, 'CR OF CHICKEN SOUP W/ H20,CNND1 CUP', 1.2, 4.1, 3.7, 0.86, 47),
(432, 'APRICOTS, RAW 3 APRCOT', 0.9, 0, 11.3, 0, 47),
(433, 'ORANGES, RAW, SECTIONS 1 CUP', 1.1, 0, 11.7, 0, 47),
(434, 'APRICOTS, CANNED, JUICE PACK 3 HALVES', 1.2, 0, 11.9, 0, 48),
(435, 'NECTARINES, RAW 1 NECTRN', 0.7, 0, 11.8, 0.07, 48),
(436, 'PINEAPPLE-GRAPEFRUIT JUICEDRNK6 FL OZ', 0, 0, 12.3, 0, 48),
(437, 'PINEAPPLE, RAW, DICED 1 CUP', 0.6, 0, 12.3, 0, 48),
(438, 'GRAPE SODA 12 FL OZ', 0, 0, 12.4, 0, 48),
(439, 'ORANGE SODA 12 FL OZ', 0, 0, 12.4, 0, 48),
(440, 'APRICOTS, CANNED, JUICE PACK 1 CUP', 0.8, 0, 12.5, 0, 48),
(441, 'COCOA PWDR W/ NOFAT DRMLK,PRPD1 SERVNG', 1.5, 0.5, 10.7, 0.29, 49),
(442, 'RASPBERRIES, RAW 1 CUP', 0.8, 0, 11.4, 0, 49),
(443, 'MILK, LOFAT, 2%, NO ADDEDSOLID1 CUP', 3.3, 7.4, 4.9, 1.19, 49),
(444, 'PARSLEY, RAW 10 SPRIG', 0, 0, 10, 0, 50),
(445, 'WATER CHESTNUTS, CANNED 1 CUP', 0.7, 0, 12.1, 0, 50),
(446, 'CORNMEAL,DEGERMED,ENRCHED,COOK1 CUP', 1.3, 0, 10.8, 0, 50),
(447, 'MALT-O-MEAL, W/O SALT 1 CUP', 1.7, 0, 10.8, 0, 50),
(448, 'MALT-O-MEAL, WITH SALT 1 CUP', 1.7, 0, 10.8, 0, 50),
(449, 'GRAPEJCE,FRZN,DILUTD,SWTND,W/C1 CUP', 0, 0, 12.8, 0.04, 50),
(450, 'TANGERINE JUICE, CANNED,SWTNED1 CUP', 0.4, 0, 12, 0, 50),
(451, 'PEARS, CANNED, JUICE PACK 1 CUP', 0.4, 0, 12.9, 0, 50),
(452, 'MUSHROOM GRAVY, CANNED 1 CUP', 1.3, 0, 5.5, 0.42, 50),
(453, 'MILK, LOFAT, 2%, ADDED SOLIDS 1 CUP', 3.7, 7.3, 4.9, 1.18, 51),
(454, 'PEARS, CANNED, JUICE PACK 1 HALF', 0, 0, 13, 0, 52),
(455, 'BLACKBERRIES, RAW 1 CUP', 0.7, 0, 12.5, 0.14, 52),
(456, 'PLUMS, RAW, 2-1/8-IN DIAM 1 PLUM', 1.5, 0, 13.6, 0, 53),
(457, 'CR OF MUSHROM SOUP W/ H2O,CNND1 CUP', 0.8, 0.8, 3.7, 0.98, 53),
(458, 'GRAPE DRINK, CANNED 6 FL OZ', 0, 0, 13.9, 0, 53),
(459, 'PLUMS, RAW, 1-1/2-IN DIAM 1 PLUM', 0, 0, 14.3, 0, 54),
(460, 'BEEF GRAVY, CANNED 1 CUP', 3.9, 3, 4.7, 1.16, 54),
(461, 'YOGURT, W/ NONFAT MILK 8 OZ', 5.7, 1.8, 7.5, 0.13, 55),
(462, 'BLUEBERRIES, RAW 1 CUP', 0.7, 0, 13.8, 0, 55),
(463, 'SOY SAUCE 1 TBSP', 11.1, 0, 11.1, 0, 56),
(464, 'APRICOT NECTAR, NO ADDED VIT C1 CUP', 0.4, 0, 14.3, 0, 56),
(465, 'PINEAPPLE JUICE, CANNED,UNSWTN1 CUP', 0.4, 0, 13.6, 0, 56),
(466, 'CRANBERRY JUICE COCKTAL W/VITC1 CUP', 0, 0, 15, 0, 57),
(467, 'CRM WHEAT,CKD, QUICK, NO SALT 1 CUP', 1.6, 0, 11.9, 0.04, 57),
(468, 'CRM WHEAT,CKD,QUICK, W/ SALT 1 CUP', 1.6, 0, 11.9, 0.04, 57),
(469, 'CRM WHEAT,CKD,REG,INST,NO SALT1 CUP', 1.6, 0, 11.9, 0.04, 57),
(470, 'CRM WHEAT,CKD,REG,INST,W/SALT 1 CUP', 1.6, 0, 11.9, 0.04, 57),
(471, 'PLUMS, CANNED, JUICE PACK 1 CUP', 0.4, 0, 15.1, 0, 58),
(472, 'VEGETABLES, MIXED, CKED FR FRZ1 CUP', 2.7, 0, 13.2, 0.05, 58),
(473, 'PLUMS, CANNED, JUICE PACK 3 PLUMS', 0, 0, 14.7, 0, 58),
(474, 'APPLES, RAW, UNPEELED,3 PER LB1 APPLE', 0, 0, 15.2, 0.07, 58),
(475, 'GELATIN DESSERT, PREPARED 42006 CUP', 1.7, 0, 14.2, 0, 58),
(476, 'CORN GRITS, COOKED, INSTANT 1 PKT', 1.5, 0, 13.1, 0, 58),
(477, 'APPLES, RAW, UNPEELED,2 PER LB1 APPLE', 0, 0, 15.1, 0.05, 59),
(478, 'GRAPEFRUIT, CANNED, SYRUP PACK1 CUP', 0.4, 0, 15.4, 0, 59),
(479, 'APPLES, RAW, PEELED, SLICED 1 CUP', 0, 0, 14.5, 0.09, 59),
(480, 'KIWIFRUIT, RAW 1 KIWI', 1.3, 0, 14.5, 0, 59),
(481, 'OATMEAL,CKD,INSTNT,PLAIN,FORTF1 PKT', 2.3, 0, 10.2, 0.17, 59),
(482, 'CORN GRITS,CKD,REG,WHTE,NOSALT1 CUP', 1.2, 0, 12.8, 0, 60),
(483, 'CORN GRITS,CKD,REG,WHTE,W/SALT1 CUP', 1.2, 0, 12.8, 0, 60),
(484, 'CORN GRITS,CKD,REG,YLLW,NOSALT1 CUP', 1.2, 0, 12.8, 0, 60),
(485, 'CORN GRITS,CKD,REG,YLLW,W/SALT1 CUP', 1.2, 0, 12.8, 0, 60),
(486, 'PEARS, RAW, D\'ANJOU 1 PEAR', 0.5, 0, 15, 0, 60),
(487, 'PINEAPPLE, CANNED, JUICE PACK 1 CUP', 0.4, 0, 15.6, 0, 60),
(488, 'PEARS, RAW, BARTLETT 1 PEAR', 0.6, 0, 15.1, 0, 60),
(489, 'PEARS, RAW, BOSC 1 PEAR', 0.7, 0, 14.9, 0, 60),
(490, 'PINEAPPLE, CANNED, JUICE PACK 1 SLICE', 0, 0, 15.5, 0, 60),
(491, 'GRAPE JUICE, CANNED 1 CUP', 0.4, 0, 15, 0.04, 61),
(492, 'MILK, WHOLE, 0.033 FAT 1 CUP', 3.3, 13.5, 4.5, 2.09, 61),
(493, 'TANGERINES, CANNED, LIGHT SYRP1 CUP', 0.4, 0, 16.3, 0, 62),
(494, 'YOGURT, W/ WHOLE MILK 8 OZ', 3.5, 12.8, 4.8, 2.11, 62),
(495, 'OATMEAL,CKD,RG,QCK,INST,W/OSAL1 CUP', 2.6, 0, 10.7, 0.17, 62),
(496, 'OATMEAL,CKD,RG,QCK,INST,W/SALT1 CUP', 2.6, 0, 10.7, 0.17, 62),
(497, 'BARBECUE SAUCE 1 TBSP', 0, 0, 12.5, 0, 63),
(498, 'YOGURT, W/ LOFAT MILK, PLAIN 8 OZ', 5.3, 6.2, 7, 1.01, 64),
(499, 'CHOCOLATE MILK, LOWFAT 0.01 1 CUP', 3.2, 2.8, 10.4, 0.6, 64),
(500, 'TOMATO SOUP WITH MILK, CANNED 1 CUP', 2.4, 6.9, 8.9, 1.17, 65),
(501, 'MANGOS, RAW 1 MANGO', 0.5, 0, 16.9, 0.05, 65),
(502, 'PEA, GREEN, SOUP, CANNED 1 CUP', 3.6, 0, 10.8, 0.56, 66),
(503, 'CLAM CHOWDER, NEW ENG, W/ MILK1 CUP', 3.6, 8.9, 6.9, 1.21, 67),
(504, 'PICKLES, CUCUMBER, FRESH PACK 2 SLICES', 0, 0, 20, 0, 67),
(505, 'OYSTERS, RAW 1 CUP', 8.3, 50, 3.3, 0.58, 67),
(506, 'GRAVY AND TURKEY, FROZEN 5 OZ', 5.6, 18.3, 4.9, 0.85, 67),
(507, 'BEAN WITH BACON SOUP, CANNED 1 CUP', 3.2, 1.2, 9.1, 0.59, 67),
(508, 'PEAS, GREEN,CNND,DRND, W/ SALT1 CUP', 4.7, 0, 12.4, 0.06, 68),
(509, 'PEAS, GREEN,CNND,DRND,W/O SALT1 CUP', 4.7, 0, 12.4, 0.06, 68),
(510, 'GRAPES, EUROPEAN, RAW, THOMPSN10 GRAPE', 0, 0, 18, 0.2, 70),
(511, 'GRAPES, EUROPEAN, RAW, TOKAY 10 GRAPE', 0, 0, 17.5, 0.18, 70),
(512, 'PRUNE JUICE, CANNED 1 CUP', 0.8, 0, 17.6, 0, 70),
(513, 'CREAM OF WHEAT,CKD,MIX N EAT 1 PKT', 2.1, 0, 14.8, 0, 70),
(514, 'TOFU 1 PIECE', 7.5, 0, 2.5, 0.58, 71),
(515, 'CHOCOLATE MILK, LOWFAT 0.02 1 CUP', 3.2, 6.8, 10.4, 1.24, 72),
(516, 'CORN, CNND,CRM STL,WHIT,NO SAL1 CUP', 1.6, 0, 18, 0.08, 72),
(517, 'CORN, CNND,CRM STL,WHIT,W/SALT1 CUP', 1.6, 0, 18, 0.08, 72),
(518, 'CORN, CNND,CRM STL,YLLW,NO SAL1 CUP', 1.6, 0, 18, 0.08, 72),
(519, 'CORN, CNND,CRM STL,YLLW,W/SALT1 CUP', 1.6, 0, 18, 0.08, 72),
(520, 'FRUIT COCKTAIL,CNND,HEAVYSYRUP1 CUP', 0.4, 0, 18.8, 0, 73),
(521, 'CHERRIES, SWEET, RAW 10 CHERY', 1.5, 0, 16.2, 0.15, 74),
(522, 'WINE, TABLE, RED 3.5 F OZ', 0, 0, 2.9, 0, 74),
(523, 'POPSICLE 1 POPCLE', 0, 0, 18.9, 0, 74),
(524, 'PEACHES, CANNED, HEAVY SYRUP 1 HALF', 0, 0, 19.8, 0, 74),
(525, 'PEACHES, CANNED, HEAVY SYRUP 1 CUP', 0.4, 0, 19.9, 0, 74),
(526, 'PEARS, CANNED, HEAVY SYRUP 1 CUP', 0.4, 0, 19.2, 0, 75),
(527, 'PEARS, CANNED, HEAVY SYRUP 1 HALF', 0, 0, 19, 0, 76),
(528, 'BLACK-EYED PEAS, DRY, COOKED 1 CUP', 5.2, 0, 14, 0.08, 76),
(529, 'SPAGHETTI, TOM SAUCE CHEES,CND1 CUP', 2.4, 1.2, 15.6, 0.16, 76),
(530, 'POTATOES, MASHED,RECPE,W/ MILK1 CUP', 1.9, 1.9, 17.6, 0.33, 76),
(531, 'CLAMS, RAW 3 OZ', 12.9, 50.6, 2.4, 0.35, 76),
(532, 'APPLESAUCE, CANNED, SWEETENED 1 CUP', 0, 0, 20, 0.04, 76),
(533, 'CR OF CHICKEN SOUP W/ MLK,CNND1 CUP', 2.8, 10.9, 6, 1.85, 77),
(534, 'JERUSALEM-ARTICHOKE, RAW 1 CUP', 2, 0, 17.3, 0, 77),
(535, 'PEACHES, DRIED,COOKED,UNSWETND1 CUP', 1.2, 0, 19.8, 0.04, 78),
(536, 'PINEAPPLE, CANNED, HEAVY SYRUP1 SLICE', 0, 0, 20.7, 0, 78),
(537, 'PEAS,GRN, FROZEN COOKED,DRANED1 CUP', 5, 0, 14.4, 0.06, 78),
(538, 'WINE, TABLE, WHITE 3.5 F OZ', 0, 0, 2.9, 0, 78),
(539, 'EVAPORATED MILK, SKIM, CANNED 1 CUP', 7.5, 3.5, 11.4, 0.12, 78),
(540, 'PINEAPPLE, CANNED, HEAVY SYRUP1 CUP', 0.4, 0, 20.4, 0, 78),
(541, 'CORN,CNND,WHL KRNL,WHTE,NO SAL1 CUP', 2.4, 0, 19.5, 0.1, 79),
(542, 'CORN,CNND,WHL KRNL,WHTE,W/SALT1 CUP', 2.4, 0, 19.5, 0.1, 79),
(543, 'CORN,CNND,WHL KRNL,YLLW,NO SAL1 CUP', 2.4, 0, 19.5, 0.1, 79),
(544, 'CORN,CNND,WHL KRNL,YLLW,W/SALT1 CUP', 2.4, 0, 19.5, 0.1, 79),
(545, 'CHICKEN GRAVY, CANNED 1 CUP', 2.1, 2.1, 5.5, 1.43, 80),
(546, 'PARSNIPS, COOKED, DRAINED 1 CUP', 1.3, 0, 19.2, 0.06, 80),
(547, 'BLUEBERRIES, FROZEN, SWEETENED1 CUP', 0.4, 0, 21.7, 0, 80),
(548, 'BLUEBERRIES, FROZEN, SWEETENED10 OZ', 0.4, 0, 21.8, 0, 81),
(549, 'CORN, COOKED FRM FROZN, WHITE 1 CUP', 3, 0, 20.6, 0, 82),
(550, 'CORN, COOKED FRM FROZN, YELLOW1 CUP', 3, 0, 20.6, 0, 82),
(551, 'APRICOT, CANNED, HEAVY SYRUP 3 HALVES', 0, 0, 21.2, 0, 82),
(552, 'CR OF MUSHROM SOUP W/ MLK,CNND1 CUP', 2.4, 8.1, 6, 2.06, 83),
(553, 'APRICOT, CANNED, HEAVY SYRUP 1 CUP', 0.4, 0, 21.3, 0, 83),
(554, 'TOMATO PASTE, CANNED W/O SALT 1 CUP', 3.8, 0, 18.7, 0.11, 84),
(555, 'TOMATO PASTE, CANNED WITH SALT1 CUP', 3.8, 0, 18.7, 0.11, 84),
(556, 'CHOCOLATE MILK, REGULAR 1 CUP', 3.2, 12.4, 10.4, 2.12, 84),
(557, 'APRICOTS, DRIED, COOKED,UNSWTN1 CUP', 1.2, 0, 22, 0, 84),
(558, 'COCA PWDR W/O NOFAT DRYMLK,PRD1 SERVNG', 3.4, 12.5, 11.3, 2.04, 85),
(559, 'POTATOES, BOILED, PEELED BEFOR1 POTATO', 1.5, 0, 20, 0, 85),
(560, 'POTATOES, SCALLOPED, HOME RECP1 CUP', 2.9, 11.8, 10.6, 2.24, 86),
(561, 'COTTAGE CHEESE,UNCREAMED 1 CUP', 17.2, 6.9, 2.1, 0.28, 86),
(562, 'SWEETPOTATOES, CNNED, VAC PACK1 PIECE', 2.5, 0, 20, 0, 88),
(563, 'POTATOES, BOILED, PEELED AFTER1 POTATO', 2.2, 0, 19.9, 0, 88),
(564, 'MALTED MILK,NATURAL, PWDR PPRD1 SERVNG', 4.2, 14, 10.2, 2.26, 89),
(565, 'MALTED MILK,CHOCOLATE, PWDRPPD1 SERVNG', 3.4, 12.8, 10.9, 2.08, 89),
(566, 'PLUMS, CANNED, HEAVY SYRUP 1 CUP', 0.4, 0, 23.3, 0, 89),
(567, 'BEEF AND VEGETABLE STEW,HM RCP1 CUP', 6.5, 29, 6.1, 1.8, 90),
(568, 'RED KIDNEY BEANS, DRY, CANNED 1 CUP', 5.9, 0, 16.5, 0.04, 90),
(569, 'PLUMS, CANNED, HEAVY SYRUP 3 PLUMS', 0, 0, 23.3, 0, 90),
(570, 'COTTAGE CHEESE,LOWFAT 0.02 1 CUP', 13.7, 8.4, 3.5, 1.24, 91),
(571, 'WHITE SAUCE W/ MILK FROM MIX 1 CUP', 3.8, 12.9, 8, 2.42, 91),
(572, 'BANANAS 1 BANANA', 0.9, 0, 23.7, 0.18, 92),
(573, 'HOLLANDAISE SCE, W/ H2O,FRM MX1 CUP', 1.9, 20.1, 5.4, 4.48, 93),
(574, 'POTATOES, BAKED FLESH ONLY 1 POTATO', 1.9, 0, 21.8, 0, 93),
(575, 'PEACHES, FROZEN,SWETNED,W/VITC10 OZ', 0.7, 0, 23.9, 0, 93),
(576, 'BANANAS, SLICED 1 CUP', 1.3, 0, 23.3, 0.2, 93),
(577, 'POTATOES, AU GRATIN, FROM MIX 1 CUP', 2.4, 4.9, 12.7, 2.57, 94),
(578, 'POTATOES, SCALLOPED, FROM MIX 1 CUP', 2, 11, 12.7, 2.65, 94),
(579, 'PEACHES, FROZEN,SWETNED,W/VITC1 CUP', 0.8, 0, 24, 0, 94),
(580, 'FLOUNDER OR SOLE, BAKED,W/OFAT3 OZ', 20, 69.4, 0, 0.35, 94),
(581, 'CORN, COOKED FRM FROZN, WHITE 1 EAR', 3.2, 0, 22.2, 0.16, 95),
(582, 'CORN, COOKED FRM FROZN, YELLOW1 EAR', 3.2, 0, 22.2, 0.16, 95),
(583, 'MACARONI AND CHEESE, CANNED 1 CUP', 3.8, 10, 10.8, 1.96, 96),
(584, 'STRAWBERRIES, FROZEN, SWEETEND1 CUP', 0.4, 0, 25.9, 0, 96),
(585, 'STRAWBERRIES, FROZEN, SWEETEND10 OZ', 0.7, 0, 26.1, 0, 97),
(586, 'OATMEAL,CKD,INSTNT,FLVRD,FORTF1 PKT', 3, 0, 18.9, 0.18, 98),
(587, 'MUSTARD, PREPARED, YELLOW 1 TSP', 0, 0, 0, 0, 100),
(588, 'CATSUP 1 TBSP', 0, 0, 26.7, 0, 100),
(589, 'CLAMS, CANNED, DRAINED 3 OZ', 15.3, 63.5, 2.4, 0.59, 100),
(590, 'CRABMEAT, CANNED 1 CUP', 17, 100, 0.7, 0.37, 100),
(591, 'LIMA BEANS,THICK SEED,FRZN,CKD1 CUP', 5.9, 0, 18.8, 0.06, 100),
(592, 'SWEETPOTATOES, BAKED, PEELED 1 POTATO', 1.8, 0, 24.6, 0, 101),
(593, 'YOGURT, W/ LOFAT MILK,FRUITFLV8 OZ', 4.4, 4.4, 18.9, 0.7, 101),
(594, 'REFRIED BEANS, CANNED 1 CUP', 6.2, 0, 17.6, 0.14, 102),
(595, 'SWEETPOTATOES, CANNED, MASHED 1 CUP', 2, 0, 23.1, 0.04, 102),
(596, 'CHICKEN CHOW MEIN, HOME RECIPE1 CUP', 12.4, 30, 4, 1.64, 102),
(597, 'RASPBERRIES, FROZEN, SWEETENED1 CUP', 0.8, 0, 26, 0, 102),
(598, 'ENCHILADA 1 ENCHLD', 8.7, 8.3, 10.4, 3.35, 102),
(599, 'COTTAGE CHEESE,CREMD,SMLL CURD1 CUP', 12.4, 14.8, 2.9, 2.86, 102),
(600, 'RASPBERRIES, FROZEN, SWEETENED10 OZ', 0.7, 0, 26.1, 0, 104),
(601, 'SPAGHETTI,MEATBALLS,TOMSAC,CND1 CUP', 4.8, 9.2, 11.6, 0.96, 104),
(602, 'SPAGHETTI, TOM SAUCE CHEE,HMRP1 CUP', 3.6, 3.2, 14.8, 1.2, 104),
(603, 'COTTAGE CHEESE,CREMD,LRGE CURD1 CUP', 12.4, 15.1, 2.7, 2.84, 104),
(604, 'LIMA BEANS,BABY, FRZN,CKED,DRN1 CUP', 6.7, 0, 19.4, 0.06, 106),
(605, 'RICE, WHITE, PARBOILED, COOKED1 CUP', 2.3, 0, 23.4, 0, 106),
(606, 'SWEETPOTATOES, BOILED W/O PEEL1 POTATO', 1.3, 0, 24.5, 0.07, 106),
(607, 'PRUNES, DRIED, COOKED,UNSWTNED1 CUP', 0.9, 0, 28.3, 0, 106),
(608, 'CATSUP 1 CUP', 1.8, 0, 25.3, 0.07, 106),
(609, 'POTATOES, MASHED,RECPE,MLK+MAR1 CUP', 1.9, 1.9, 16.7, 1.05, 107),
(610, 'TURKEY LOAF, BREAST MEAT W/O C2 SLICES', 23.8, 40.5, 0, 0.48, 107),
(611, 'TURKEY LOAF, BREAST MEAT, W/ C2 SLICES', 23.8, 40.5, 0, 0.48, 107),
(612, 'LENTILS, DRY, COOKED 1 CUP', 8, 0, 19, 0.05, 108),
(613, 'POTATOES, BAKED WITH SKIN 1 POTATO', 2.5, 0, 25.2, 0.05, 109),
(614, 'BLACKEYE PEAS, IMMATR,RAW,CKED1 CUP', 7.9, 0, 18.2, 0.18, 109),
(615, 'RICE, WHITE, INSTANT, COOKED 1 CUP', 2.4, 0, 24.2, 0.06, 109),
(616, 'CHEESE SAUCE W/ MILK, FRM MIX 1 CUP', 5.7, 19, 8.2, 3.33, 109),
(617, 'MACARONI, COOKED, TENDER,COLD 1 CUP', 3.8, 0, 22.9, 0.1, 110),
(618, 'RICE, WHITE, COOKED 1 CUP', 2, 0, 24.4, 0.05, 110),
(619, 'CORN, COOKED FROM RAW, WHITE 1 EAR', 3.9, 0, 24.7, 0.26, 110),
(620, 'CORN, COOKED FROM RAW, YELLOW 1 EAR', 3.9, 0, 24.7, 0.26, 110),
(621, 'MACARONI, COOKED, TENDER, HOT 1 CUP', 3.6, 0, 22.9, 0.07, 111),
(622, 'SPAGHETTI, COOKED, TENDER 1 CUP', 3.6, 0, 22.9, 0.07, 111),
(623, 'SHAKES, THICK, VANILLA 10 OZ', 3.9, 11.7, 17.7, 1.87, 111),
(624, 'PUDDING, TAPIOCA, FROM MIX 42006 CUP', 3.1, 11.5, 19.2, 1.77, 112),
(625, 'PUDDING, VNLLA,COOKED FROM MIX1/2 CUP', 3.1, 11.5, 19.2, 1.77, 112),
(626, 'AVOCADOS, FLORIDA 1 AVOCDO', 1.6, 0, 8.9, 1.74, 112),
(627, 'POTATOES, MASHED,FRM DEHYDRTED1 CUP', 1.9, 13.8, 15.2, 3.43, 112),
(628, 'PUDDING, TAPIOCA, CANNED 5 OZ', 2.1, 0, 19.7, 3.38, 113),
(629, 'PEAS, SPLIT, DRY, COOKED 1 CUP', 8, 0, 21, 0.05, 115),
(630, 'CUSTARD, BAKED 1 CUP', 5.3, 104.9, 10.9, 2.57, 115),
(631, 'OLIVES, CANNED, GREEN 4 MEDIUM', 0, 0, 0, 1.54, 115),
(632, 'PUDDING, CHOC, COOKED FROM MIX1/2 CUP', 3.1, 11.5, 19.2, 1.85, 115),
(633, 'PUDDING, VNLLA,INSTANT FRM MIX1/2 CUP', 3.1, 11.5, 20.8, 1.69, 115),
(634, 'BAKING POWDER, LOW SODIUM 1 TSP', 0, 0, 23.3, 0, 116),
(635, 'GREAT NORTHN BEANS,DRY,CKD,DRN1 CUP', 7.8, 0, 21.1, 0.06, 117),
(636, 'RHUBARB, COOKED, ADDED SUGAR 1 CUP', 0.4, 0, 31.3, 0, 117),
(637, 'PLANTAINS, COOKED 1 CUP', 0.6, 0, 31.2, 0.06, 117),
(638, 'PUDDING, RICE, FROM MIX 42006 CUP', 3, 11.4, 20.5, 1.74, 117),
(639, 'SHRIMP, CANNED, DRAINED 3 OZ', 24.7, 150.6, 1.2, 0.24, 118),
(640, 'RICE, BROWN, COOKED 1 CUP', 2.6, 0, 25.6, 0.15, 118),
(641, 'SHAKES, THICK, CHOCOLATE 10 OZ', 3.2, 10.6, 21.2, 1.7, 118),
(642, 'PEA BEANS, DRY, COOKED,DRAINED1 CUP', 7.9, 0, 21.1, 0.05, 118),
(643, 'PUDDING, CHOC, INSTANT, FR MIX1/2 CUP', 3.1, 10.8, 20.8, 1.77, 119),
(644, 'CHOP SUEY W/ BEEF + PORK,HMRCP1 CUP', 10.4, 27.2, 5.2, 1.72, 120),
(645, 'BEANS,DRY,CANNED,W/PORK+TOMSCE1 CUP', 6.3, 3.9, 18.8, 0.94, 122),
(646, 'PLANTAINS, RAW 1 PLANTN', 1.1, 0, 31.8, 0.17, 123),
(647, 'COTTAGE CHEESE,CREMD,W/FRUIT 1 CUP', 9.7, 11.1, 13.3, 2.17, 124),
(648, 'NOODLES, EGG, COOKED 1 CUP', 4.4, 31.3, 23.1, 0.31, 125),
(649, 'ICE MILK, VANILLA,SOFTSERV 0.03 1 CUP', 4.6, 7.4, 21.7, 1.66, 129),
(650, 'HALF AND HALF, CREAM 1 CUP', 2.9, 36.8, 4.1, 7.15, 130),
(651, 'SOYBEANS, DRY, COOKED, DRAINED1 CUP', 11.1, 0, 10.6, 0.72, 131),
(652, 'BAKING POWDER, STRGHT PHOSPHAT1 TSP', 0, 0, 26.3, 0, 132),
(653, 'TURKEY HAM, CURED TURKEY THIGH2 SLICES', 19.3, 56.1, 0, 1.75, 132),
(654, 'PORK, LUNCHEON MEAT,CKD HAM,LN2 SLICES', 19.3, 47.4, 1.8, 1.58, 132),
(655, 'BLACK BEANS, DRY, COOKED,DRAND1 CUP', 8.8, 0, 24, 0.06, 132),
(656, 'BLACKEYE PEAS,IMMTR,FRZN,CKED 1 CUP', 8.2, 0, 23.5, 0.18, 132),
(657, 'POTATOES, AU GRATIN, HOME RECP1 CUP', 4.9, 22.9, 11.4, 4.73, 133),
(658, 'SPAGHETTI,MEATBALLS,TOMSA,HMRP1 CUP', 7.7, 35.9, 15.7, 1.57, 133),
(659, 'HALF AND HALF, CREAM 1 TBSP', 0, 40, 6.7, 7.33, 133),
(660, 'IMITATION CREAMERS, LIQUID FRZ1 TBSP', 0, 0, 13.3, 9.33, 133),
(661, 'PICKLES, CUCUMBER, SWT GHERKIN1 PICKLE', 0, 0, 33.3, 0, 133),
(662, 'RELISH, SWEET 1 TBSP', 0, 0, 33.3, 0, 133),
(663, 'CHILI CON CARNE W/ BEANS, CNND1 CUP', 7.5, 11, 12.2, 2.27, 133),
(664, 'EGGNOG 1 CUP', 3.9, 58.7, 13.4, 4.45, 134),
(665, 'EVAPORATED MILK, WHOLE, CANNED1 CUP', 6.7, 29.4, 9.9, 4.6, 135),
(666, 'WINE, DESSERT 3.5 F OZ', 0, 0, 7.8, 0, 136),
(667, 'LIMA BEANS, DRY, COOKED,DRANED1 CUP', 8.4, 0, 25.8, 0.11, 137),
(668, 'SWEETPOTATOES, CANDIED 1 PIECE', 1, 7.6, 27.6, 1.33, 138),
(669, 'RICOTTA CHEESE, PART SKIM MILK1 CUP', 11.4, 30.9, 5.3, 4.92, 138),
(670, 'SHERBET, 0.02 FAT 1 CUP', 1, 7.3, 30.6, 1.24, 140),
(671, 'SHERBET, 0.02 FAT 42006 GAL', 1.1, 7.3, 30.4, 1.23, 140),
(672, 'ICE MILK, VANILLA, 0.04 FAT 42006 GAL', 3.9, 13.9, 22.1, 2.68, 140),
(673, 'SALMON, CANNED, PINK, W/ BONES3 OZ', 20, 40, 0, 1.06, 141),
(674, 'FLOUNDER OR SOLE, BAKED,MARGRN3 OZ', 18.8, 64.7, 0, 1.41, 141),
(675, 'FLOUNDER OR SOLE, BAKED, BUTTR3 OZ', 18.8, 80, 0, 3.76, 141),
(676, 'ICE MILK, VANILLA, 0.04 FAT 1 CUP', 3.8, 13.7, 22.1, 2.67, 141),
(677, 'BEANS,DRY,CANNED,W/FRANKFURTER1 CUP', 7.5, 11.8, 12.5, 2.9, 143),
(678, 'POTATO SALAD MADE W/ MAYONNAIS1 CUP', 2.8, 68, 11.2, 1.44, 144),
(679, 'PUDDING, CHOCOLATE,CANNED 5 OZ', 2.1, 0.7, 21.1, 6.69, 144),
(680, 'GRAPEFRT JCE,FRZN,CNCN,UNSWTEN6 FL OZ', 1.9, 0, 34.8, 0.05, 145),
(681, 'MACARONI, COOKED, FIRM 1 CUP', 5.4, 0, 30, 0.08, 146),
(682, 'SPAGHETTI, COOKED, FIRM 1 CUP', 5.4, 0, 30, 0.08, 146),
(683, 'PINTO BEANS,DRY,COOKED,DRAINED1 CUP', 8.3, 0, 27.2, 0.06, 147),
(684, 'CHICKEN LIVER, COOKED 1 LIVER', 25, 630, 0, 2, 150),
(685, 'EGGS, COOKED, POACHED 1 EGG', 12, 424, 2, 3, 150),
(686, 'EGGS, COOKED, HARD-COOKED 1 EGG', 12, 426, 2, 3.2, 150),
(687, 'EGGS, RAW, WHOLE 1 EGG', 12, 426, 2, 3.2, 150),
(688, 'BEANS,DRY,CANNED,W/PORK+SWTSCE1 CUP', 6.3, 3.9, 21.2, 1.69, 151),
(689, 'CRANBERRY SAUCE, CANNED,SWTND 1 CUP', 0.4, 0, 39, 0, 152),
(690, 'CHICKEN AND NOODLES, HOME RECP1 CUP', 9.2, 42.9, 10.8, 2.13, 152),
(691, 'TURKEY ROAST, FRZN,LGHT+DRK,CK3 OZ', 21.2, 52.9, 3.5, 1.88, 153),
(692, 'PORK, CURED, HAM, ROSTED,LEAN 2.4 OZ', 25, 54.4, 0, 1.91, 154),
(693, 'PUDDING, VANILLA, CANNED 5 OZ', 1.4, 0.7, 23.2, 6.69, 155),
(694, 'FRENCH SALAD DRESSING, LOCALOR1 TBSP', 0, 0, 12.5, 1.25, 156),
(695, 'COOKED SALAD DRSSING, HOME RCP1 TBSP', 6.3, 56.3, 12.5, 3.13, 156),
(696, 'CHICKEN ROLL, LIGHT 2 SLICES', 19.3, 49.1, 1.8, 1.93, 158),
(697, 'WHITE SAUCE, MEDIUM, HOME RECP1 CUP', 4, 12.8, 9.6, 3.64, 158),
(698, 'TUNA, CANND, DRND,WATR, WHITE 3 OZ', 35.3, 56.5, 0, 0.35, 159),
(699, 'TURKEY, ROASTED, LIGHT MEAT 2 PIECES', 29.4, 69.4, 0, 1.06, 159),
(700, 'ORANGE JUICE,FROZEN CONCENTRTE6 FL OZ', 2.3, 0, 38, 0.05, 160),
(701, 'SPINACH SOUFFLE 1 CUP', 8.1, 135.3, 2.2, 5.22, 162),
(702, 'CHICKEN, ROASTED, BREAST 3 OZ', 31.4, 84.9, 0, 1.05, 163),
(703, 'EGGS, COOKED, SCRAMBLED/OMELET1 EGG', 11.5, 352.5, 1.6, 3.61, 164),
(704, 'SALMON, BAKED, RED 3 OZ', 24.7, 70.6, 0, 1.41, 165),
(705, 'HALIBUT, BROILED, BUTTER,LEMJU3 OZ', 23.5, 72.9, 0, 3.88, 165),
(706, 'PORK, CURED, HAM, CANNED,ROAST3 OZ', 21.2, 41.2, 0, 2.82, 165),
(707, 'CHICKEN, CANNED, BONELESS 5 OZ', 21.8, 62, 0, 2.18, 165),
(708, 'CHICKPEAS, COOKED, DRAINED 1 CUP', 9.2, 0, 27.6, 0.25, 166),
(709, 'BAKING POWDER,SAS, CA PO4 1 TSP', 0, 0, 33.3, 0, 167),
(710, 'OLIVES, CANNED, RIPE, MISSION 3 SMALL', 0, 0, 0, 3.33, 167),
(711, 'IMITATN SOUR DRESSING 1 TBSP', 0, 8.3, 8.3, 13.33, 167),
(712, '1000 ISLAND, SALAD DRSNG,LOCAL1 TBSP', 0, 13.3, 13.3, 1.33, 167),
(713, 'MISO 1 CUP', 10.5, 0, 23.6, 0.65, 170),
(714, 'CHICKEN, ROASTED, DRUMSTICK 1.6 OZ', 27.3, 93.2, 0, 1.59, 170),
(715, 'TURKEY, ROASTED, LIGHT + DARK 3 PIECES', 29.4, 76.5, 0, 1.65, 171),
(716, 'TURKEY, ROASTED, LIGHT + DARK 1 CUP', 29.3, 75.7, 0, 1.64, 171),
(717, 'BAKING POWDER,SAS,CAPO4+CASO4 1 TSP', 0, 0, 34.5, 0, 172),
(718, 'RICOTTA CHEESE, WHOLE MILK 1 CUP', 11.4, 50.4, 2.8, 8.29, 175),
(719, 'AVOCADOS, CALIFORNIA 1 AVOCDO', 2.3, 0, 6.9, 2.6, 176),
(720, 'BEEF HEART, BRAISED 3 OZ', 28.2, 192.9, 0, 1.41, 176),
(721, 'SALMON, SMOKED 3 OZ', 21.2, 60, 0, 3.06, 176),
(722, 'IMITATN SOUR DRESSING 1 CUP', 3.4, 5.5, 4.7, 13.28, 177),
(723, 'GRAPEJCE,FRZN,CONCEN,SWTND,W/C6 FL OZ', 0.5, 0, 44.4, 0.09, 178),
(724, 'CHICKEN, STEWED, LIGHT + DARK 1 CUP', 27.1, 82.9, 0, 1.86, 179),
(725, 'BEEF ROAST, EYE O RND, LEAN 2.6 OZ', 29.3, 69.3, 0, 2.53, 180),
(726, 'CAROB FLOUR 1 CUP', 4.3, 0, 90, 0, 182),
(727, 'TUNA SALAD 1 CUP', 16.1, 39, 9.3, 1.61, 183),
(728, 'PORK, LUNCHEON MEAT,CKD HAM,RG2 SLICES', 17.5, 56.1, 3.5, 3.33, 184),
(729, 'PORK, CURED, BACON,CANADN,CKED2 SLICE', 23.9, 58.7, 2.2, 2.83, 185),
(730, 'IMITATN WHIPD TOPING,PWDRD,PRP1 CUP', 3.8, 10, 16.3, 10.63, 188),
(731, 'LIMEADE,CONCENTRATE,FRZN,UNDIL6 FL OZ', 0, 0, 49.5, 0, 188),
(732, 'TURKEY, ROASTED, DARK MEAT 4 PIECES', 28.2, 84.7, 0, 2.47, 188),
(733, 'LAMB,LEG,ROASTED, LEAN ONLY 2.6 OZ', 27.4, 89, 0, 3.29, 192),
(734, 'CHICKEN A LA KING, HOME RECIPE1 CUP', 11, 90.2, 4.9, 5.27, 192),
(735, 'LEMONADE,CONCENTRATE,FRZ,UNDIL6 FL OZ', 0, 0, 51.1, 0, 194),
(736, 'TUNA, CANND, DRND,OIL,CHK,LGHT3 OZ', 28.2, 64.7, 0, 1.65, 194),
(737, 'EGGS, COOKED, FRIED 1 EGG', 13, 458.7, 2.2, 4.13, 196),
(738, 'LIGHT, COFFEE OR TABLE CREAM 1 CUP', 2.5, 66.3, 3.8, 12, 196),
(739, 'LIGHT, COFFEE OR TABLE CREAM 1 TBSP', 0, 66.7, 6.7, 12, 200),
(740, 'OYSTERS, BREADED, FRIED 1 OYSTER', 11.1, 77.8, 11.1, 3.11, 200),
(741, 'ICE CREAM, VANLLA, REGULR 0.11 3 FL OZ', 4, 44, 24, 6.8, 200),
(742, 'DUCK, ROASTED, FLESH ONLY 42006 DUCK', 23.5, 89.1, 0, 4.16, 201),
(743, 'BEEF, DRIED, CHIPPED 2.5 OZ', 33.3, 63.9, 0, 2.5, 201),
(744, 'ICE CREAM, VANLLA, REGULR 0.11 42006 GALN', 3.6, 44.7, 23.9, 6.7, 203),
(745, 'ICE CREAM, VANLLA, REGULR 0.11 1 CUP', 3.8, 44.4, 24.1, 6.69, 203),
(746, 'PANCAKES, BUCKWHEAT, FROM MIX 1 PANCAK', 7.4, 74.1, 22.2, 3.33, 204),
(747, 'SARDINES, ATLNTC,CNNED,OIL,DRN3 OZ', 23.5, 100, 0, 2.47, 206),
(748, 'TROUT, BROILED, W/ BUTTR,LEMJU3 OZ', 24.7, 83.5, 0, 4.82, 206),
(749, 'HADDOCK, BREADED, FRIED 3 OZ', 20, 88.2, 8.2, 2.82, 206),
(750, 'BREAD STUFFING,FROM MX,MOIST 1 CUP', 4.4, 33, 19.7, 2.61, 207),
(751, 'SOUR CREAM 1 TBSP', 0, 41.7, 8.3, 13.33, 208),
(752, 'BEEF STEAK,SIRLOIN,BROIL,LEAN 2.5 OZ', 30.6, 88.9, 0, 3.61, 208),
(753, 'PUMPKIN PIE 1 PIECE', 3.9, 71.7, 24.3, 4.21, 211),
(754, 'PUMPKIN PIE 1 PIE', 4, 72, 24.5, 4.2, 211),
(755, 'BOSTON BROWN BREAD,W/WHTECRNM 1 SLICE', 4.4, 6.7, 46.7, 0.67, 211),
(756, 'BOSTON BROWN BREAD,W/YLLWCRNML1 SLICE', 4.4, 6.7, 46.7, 0.67, 211),
(757, 'MOLASSES, CANE, BLACKSTRAP 2 TBSP', 0, 0, 55, 0, 213),
(758, 'MACARONI AND CHEESE, HOME RCPE1 CUP', 8.5, 22, 20, 4.9, 215),
(759, 'SOUR CREAM 1 CUP', 3, 44.3, 4.3, 13.04, 215),
(760, 'SCALLOPS, BREADED, FRZN,REHEAT6 SCALOP', 16.7, 77.8, 11.1, 2.78, 217),
(761, 'TORTILLAS, CORN 1 TORTLA', 6.7, 0, 43.3, 0.33, 217),
(762, 'ICE CREAM, VANLLA, SOFT SERVE 1 CUP', 4, 88.4, 22, 7.8, 217),
(763, 'CUSTARD PIE 1 PIECE', 5.9, 111.2, 23.7, 3.68, 217),
(764, 'CINNAMON 1 TSP', 0, 0, 87, 0, 217),
(765, 'VEAL CUTLET, MED FAT,BRSD,BRLD3 OZ', 27.1, 101.2, 0, 4.82, 218),
(766, 'BEEF, CANNED, CORNED 3 OZ', 25.9, 94.1, 0, 4.94, 218),
(767, 'BEEF LIVER, FRIED 3 OZ', 27.1, 482.4, 8.2, 2.94, 218),
(768, 'OCEAN PERCH, BREADED, FRIED 1 FILLET', 18.8, 77.6, 8.2, 3.06, 218),
(769, 'POTATOES, HASHED BROWN,FR FRZN1 CUP', 3.2, 0, 28.2, 4.49, 218),
(770, 'CUSTARD PIE 1 PIE', 6.2, 111, 23.4, 3.7, 218),
(771, 'LAMB,CHOPS,LOIN,BROIL,LEAN 2.3 OZ', 29.7, 93.8, 0, 4.06, 219),
(772, 'POTATOES,FRENCH-FRD,FRZN,OVEN 10 STRIP', 4, 0, 34, 4.2, 220),
(773, 'PANCAKES, PLAIN, FROM MIX 1 PANCAK', 7.4, 59.3, 29.6, 1.85, 222),
(774, 'PANCAKES, PLAIN, HOME RECIPE 1 PANCAK', 7.4, 59.3, 33.3, 1.85, 222),
(775, 'PORK FRESH HAM, ROASTD, LEAN 2.5 OZ', 27.8, 94.4, 0, 3.75, 222),
(776, 'HERRING, PICKLED 3 OZ', 20, 100, 0, 5.06, 224),
(777, 'SYRUP, CHOCOLATE FLAVORED THIN2 TBSP', 2.6, 0, 57.9, 0.53, 224),
(778, 'BEEF, CKD,BTTM ROUND,LEAN ONLY2.8 OZ', 32.1, 96.2, 0, 3.46, 224),
(779, 'CHICKEN, FRIED, FLOUR, BREAST 3.5 OZ', 31.6, 88.8, 2, 2.45, 224),
(780, 'GIN,RUM,VODKA,WHISKY 80-PROOF 1.5 F OZ', 0, 0, 0, 0, 226),
(781, 'PORK, LUNCHEON MEAT,CHOPPD HAM2 SLICES', 16.7, 50, 0, 5.71, 226),
(782, 'LAMB, RIB, ROASTED, LEAN ONLY 2 OZ', 26.3, 87.7, 0, 5.61, 228),
(783, 'PORK CHOP, LOIN, BROIL, LEAN 2.5 OZ', 31.9, 98.6, 0, 3.61, 229),
(784, 'ROAST BEEF SANDWICH 1 SANDWH', 14.7, 36.7, 22.7, 2.33, 230),
(785, 'MAYONNAISE, IMITATION 1 TBSP', 0, 26.7, 13.3, 3.33, 233),
(786, 'SANDWICH SPREAD, PORK, BEEF 1 TBSP', 6.7, 40, 13.3, 6, 233),
(787, 'PRUNES, DRIED 5 LARGE', 2, 0, 63.3, 0, 235),
(788, 'CHICKEN POTPIE, HOME RECIPE 1 PIECE', 9.9, 24.1, 18.1, 4.44, 235),
(789, 'SHRIMP, FRENCH FRIED 3 OZ', 18.8, 197.6, 12.9, 2.94, 235),
(790, 'ANGELFOOD CAKE, FROM MIX 1 PIECE', 5.7, 0, 54.7, 0, 236),
(791, 'ICE CREAM, VANLLA, RICH 0.16 FT1/2 GAL', 2.8, 59.2, 21.5, 9.96, 236),
(792, 'ICE CREAM, VANLLA, RICH 0.16 FT1 CUP', 2.7, 59.5, 21.6, 9.93, 236),
(793, 'PEACHES, DRIED 1 CUP', 3.8, 0, 61.3, 0.06, 238),
(794, 'ANGELFOOD CAKE, FROM MIX 1 CAKE', 6, 0, 53.9, 0.06, 238),
(795, 'PAPRIKA 1 TSP', 0, 0, 47.6, 0, 238),
(796, 'PEPPER, BLACK 1 TSP', 0, 0, 47.6, 0, 238),
(797, 'ONION POWDER 1 TSP', 0, 0, 95.2, 0, 238),
(798, 'FRENCH TOAST, HOME RECIPE 1 SLICE', 9.2, 172.3, 26.2, 2.46, 238),
(799, 'APRICOTS, DRIED, UNCOOKED 1 CUP', 3.8, 0, 61.5, 0, 238),
(800, 'BLUEBERRY PIE 1 PIECE', 2.5, 0, 34.8, 2.72, 241),
(801, 'TACO 1 TACO', 11.1, 25.9, 18.5, 5.06, 241),
(802, 'BEEF ROAST, EYE O RND,LEAN+FAT3 OZ', 27.1, 72.9, 0, 5.76, 241),
(803, 'LAMB,LEG,ROASTED, LEAN+ FAT 3 OZ', 25.9, 91.8, 0, 6.59, 241),
(804, 'PORK, CURED, HAM, ROSTED,LN+FT3 OZ', 21.2, 62.4, 0, 6, 241),
(805, 'PIZZA, CHEESE 1 SLICE', 12.5, 46.7, 32.5, 3.42, 242),
(806, 'BLUEBERRY PIE 1 PIE', 2.4, 0, 34.9, 2.7, 242),
(807, 'APPLES, DRIED, SULFURED 10 RINGS', 1.6, 0, 65.6, 0, 242),
(808, 'WHOLE-WHEAT BREAD 1 LOAF', 9.7, 0, 45.4, 1.28, 244),
(809, 'CHESTNUTS, EUROPEAN, ROASTED 1 CUP', 3.5, 0, 53.1, 0.42, 245),
(810, 'CHICKEN, FRIED, FLOUR, DRMSTCK1.7 OZ', 26.5, 89.8, 2, 3.67, 245),
(811, 'BEEF POTPIE, HOME RECIPE 1 PIECE', 10, 20, 18.6, 3.76, 245),
(812, 'ENGLISH MUFFINS, PLAIN 1 MUFFIN', 8.8, 0, 47.4, 0.53, 246),
(813, 'BEEF ROAST, RIB, LEAN ONLY 2.2 OZ', 27.9, 80.3, 0, 5.9, 246),
(814, 'PORK SHOULDER, BRAISD, LEAN 2.4 OZ', 32.8, 113.4, 0, 4.18, 246),
(815, 'PORK FRESH RIB, ROASTD, LEAN 2.5 OZ', 28.2, 78.9, 0, 4.79, 246),
(816, 'ALL-BRAN CEREAL 1 OZ', 14.1, 0, 74.1, 0.35, 247),
(817, 'FISH STICKS, FROZEN, REHEATED 1 STICK', 21.4, 92.9, 14.3, 2.86, 250),
(818, 'WHOLE-WHEAT BREAD 1 SLICE', 10.7, 0, 46.4, 1.43, 250),
(819, 'CURRY POWDER 1 TSP', 0, 0, 50, 0, 250),
(820, 'IMITATN WHIPD TOPING,PWDRD,PRP1 TBSP', 0, 0, 25, 10, 250),
(821, 'IMITATN WHIPD TOPING,PRESSRZD 1 TBSP', 0, 0, 25, 20, 250),
(822, 'BOUILLON, DEHYDRTD, UNPREPARED1 PKT', 16.7, 16.7, 16.7, 5, 250),
(823, 'PUMPERNICKEL BREAD 1 SLICE', 9.4, 0, 50, 0.63, 250),
(824, 'GIN,RUM,VODKA,WHISKY 86-PROOF 1.5 F OZ', 0, 0, 0, 0, 250),
(825, 'HAMBURGER, REGULAR 1 SANDWH', 12.2, 32.7, 28.6, 4.49, 250),
(826, 'OATMEAL BREAD 1 LOAF', 8.4, 0, 46.7, 0.81, 252),
(827, 'LEMON MERINGUE PIE 1 PIECE', 3.6, 102.1, 37.9, 3.07, 254),
(828, 'FIGS, DRIED 10 FIGS', 3.2, 0, 65.2, 0.21, 254),
(829, 'SALAMI, COOKED TYPE 2 SLICES', 14, 64.9, 1.8, 8.07, 254),
(830, 'LEMON MERINGUE PIE 1 PIE', 3.7, 102, 37.7, 3.1, 255),
(831, 'PEACH PIE 1 PIE', 2.5, 0, 38.2, 2.6, 255),
(832, 'WHEAT BREAD 1 LOAF', 9.5, 0, 46.9, 0.86, 256),
(833, 'PUMPERNICKEL BREAD 1 LOAF', 9.3, 0, 48, 0.57, 256),
(834, 'CHICKEN FRANKFURTER 1 FRANK', 13.3, 100, 6.7, 5.56, 256),
(835, 'HAMBURGER, 4OZ PATTY 1 SANDWH', 14.4, 40.8, 21.8, 4.08, 256),
(836, 'APPLE PIE 1 PIE', 2.2, 0, 38.1, 2.9, 256),
(837, 'PEACH PIE 1 PIECE', 2.5, 0, 38, 2.59, 256),
(838, 'APPLE PIE 1 PIECE', 1.9, 0, 38, 2.91, 256),
(839, 'MIXED GRAIN BREAD 1 LOAF', 9.9, 0, 46.7, 0.7, 257),
(840, 'WHIPPED TOPPING, PRESSURIZED 1 CUP', 3.3, 76.7, 11.7, 13.83, 258),
(841, 'BEEF, CKD,BTTM ROUND,LEAN+ FAT3 OZ', 29.4, 95.3, 0, 5.65, 259),
(842, 'CHERRY PIE 1 PIECE', 2.5, 0, 38.6, 2.97, 259),
(843, 'CRACKED-WHEAT BREAD 1 SLICE', 8, 0, 48, 0.8, 260),
(844, 'MIXED GRAIN BREAD 1 SLICE', 8, 0, 48, 0.8, 260),
(845, 'OATMEAL BREAD 1 SLICE', 8, 0, 48, 0.8, 260),
(846, 'RYE BREAD, LIGHT 1 SLICE', 8, 0, 48, 0.8, 260),
(847, 'WHEAT BREAD 1 SLICE', 8, 0, 48, 0.8, 260),
(848, 'WHITE BREAD, SLICE 18 PER LOAF1 SLICE', 8, 0, 48, 1.2, 260),
(849, 'RAISIN BREAD 1 SLICE', 8, 0, 52, 0.8, 260),
(850, 'CHICKEN, FRIED, BATTER, BREAST4.9 OZ', 25, 85, 9.3, 3.5, 261),
(851, 'CHERRY PIE 1 PIE', 2.6, 0, 38.4, 3.01, 261),
(852, 'ENG MUFFIN, EGG, CHEESE, BACON1 SANDWH', 13, 154.3, 22.5, 5.8, 261),
(853, 'GIN,RUM,VODKA,WHISKY 90-PROOF 1.5 F OZ', 0, 0, 0, 0, 262),
(854, 'RYE BREAD, LIGHT 1 LOAF', 8.4, 0, 48, 0.73, 262),
(855, 'CRACKED-WHEAT BREAD 1 LOAF', 9.3, 0, 50, 0.68, 262),
(856, 'IMITATN WHIPD TOPING,PRESSRZD 1 CUP', 1.4, 0, 15.7, 18.86, 264),
(857, 'FETA CHEESE 1 OZ', 14.1, 88.2, 3.5, 14.81, 265),
(858, 'WHITE BREAD 1 LOAF', 8.4, 0, 48.9, 1.23, 267),
(859, 'WHITE BREAD CUBES 1 CUP', 6.7, 0, 50, 1.33, 267),
(860, 'WHITE BREAD CRUMBS, SOFT 1 CUP', 8.9, 0, 48.9, 1.33, 267),
(861, 'CHEESEBURGER, REGULAR 1 SANDWH', 13.4, 39.3, 25, 6.52, 268),
(862, 'PORK CHOP, LOIN,PANFRY, LEAN 2.4 OZ', 28.4, 107.5, 0, 5.52, 269),
(863, 'VEAL RIB, MED FAT, ROASTED 3 OZ', 27.1, 128.2, 0, 7.06, 271),
(864, 'GROUND BEEF, BROILED, LEAN 3 OZ', 24.7, 87.1, 0, 7.29, 271),
(865, 'CHEESEBURGER, 4OZ PATTY 1 SANDWH', 15.5, 53.6, 20.6, 7.78, 271),
(866, 'CHICKEN, FRIED, BATTER,DRMSTCK2.5 OZ', 22.2, 86.1, 8.3, 4.17, 271),
(867, 'WAFFLES, FROM MIX 1 WAFFLE', 9.3, 78.7, 36, 3.6, 273),
(868, 'BEEF, CKD,CHUCK BLADE,LEANONLY2.2 OZ', 30.6, 106.5, 0, 6.29, 274),
(869, 'WHITE BREAD, SLICE 22 PER LOAF1 SLICE', 10, 0, 50, 1, 275),
(870, 'JAMS AND PRESERVES 1 TBSP', 0, 0, 70, 0, 275),
(871, 'PITA BREAD 1 PITA', 10, 0, 55, 0.17, 275),
(872, 'DATES, CHOPPED 1 CUP', 2.2, 0, 73.6, 0.17, 275),
(873, 'PUMPERNICKEL BREAD, TOASTED 1 SLICE', 10.3, 0, 55.2, 0.69, 276),
(874, 'GINGERBREAD CAKE, FROM MIX 1 CAKE', 3.2, 1.1, 51.1, 1.68, 276),
(875, 'ITALIAN BREAD 1 LOAF', 9, 0, 56.4, 0.13, 276),
(876, 'FISH SANDWICH, LGE, W/O CHEESE1 SANDWH', 10.6, 53.5, 24.1, 3.71, 276),
(877, 'DATES 10 DATES', 2.4, 0, 73.5, 0.12, 277),
(878, 'RAISIN BREAD 1 LOAF', 8.1, 0, 52.6, 0.9, 278),
(879, 'JELLIES 1 TBSP', 0, 0, 72.2, 0, 278),
(880, 'BRAN MUFFINS, HOME RECIPE 1 MUFFIN', 6.7, 53.3, 42.2, 3.11, 278),
(881, 'GINGERBREAD CAKE, FROM MIX 1 PIECE', 3.2, 1.6, 50.8, 1.75, 278),
(882, 'FRENCH OR VIENNA BREAD 1 LOAF', 9.5, 0, 50.7, 0.84, 280),
(883, 'VIENNA BREAD 1 SLICE', 8, 0, 52, 0.8, 280),
(884, 'WHOLE-WHEAT BREAD, TOASTED 1 SLICE', 12, 0, 52, 1.6, 280),
(885, 'ENGLISH MUFFINS, PLAIN, TOASTD1 MUFFIN', 10, 0, 54, 0.6, 280),
(886, 'VIENNA SAUSAGE 1 SAUSAG', 12.5, 50, 0, 9.38, 281),
(887, 'LAMB,CHOPS,ARM,BRAISED,LEAN 1.7 OZ', 35.4, 122.9, 0, 6.04, 281),
(888, 'TURKEY PATTIES, BRD,BATTD,FRID1 PATTY', 14.1, 62.5, 15.6, 4.69, 281),
(889, 'MOZZARELLA CHESE,SKIM, LOMOIST1 OZ', 28.2, 52.9, 3.5, 10.93, 282),
(890, 'MOZZARELLA CHEESE, WHOLE MILK 1 OZ', 21.2, 77.6, 3.5, 13.05, 282),
(891, 'PASTERZD PROCES CHESE SPRED,AM1 OZ', 17.6, 56.4, 7.1, 13.4, 282),
(892, 'SEAWEED, SPIRULINA, DRIED 1 OZ', 56.4, 0, 24.7, 2.82, 282),
(893, 'BEEF STEAK,SIRLOIN,BROIL,LN+FT3 OZ', 27.1, 90.6, 0, 7.53, 282),
(894, 'MIXED GRAIN BREAD, TOASTED 1 SLICE', 8.7, 0, 52.2, 0.87, 283),
(895, 'OATMEAL BREAD, TOASTED 1 SLICE', 8.7, 0, 52.2, 0.87, 283),
(896, 'WHEAT BREAD, TOASTED 1 SLICE', 13, 0, 52.2, 0.87, 283),
(897, 'ITALIAN BREAD 1 SLICE', 10, 0, 56.7, 0, 283),
(898, 'YEAST, BAKERS, DRY, ACTIVE 1 PKG', 42.9, 0, 42.9, 0, 286),
(899, 'ONION SOUP, DEHYDRTD, UNPRPRED1 PKT', 14.3, 0, 57.1, 1.43, 286),
(900, 'JAMS AND PRESERVES 1 PKT', 0, 0, 71.4, 0, 286),
(901, 'JELLIES 1 PKT', 0, 0, 71.4, 0, 286),
(902, 'RAISINS 1 PACKET', 0, 0, 78.6, 0, 286),
(903, 'FRENCH BREAD 1 SLICE', 8.6, 0, 51.4, 0.86, 286),
(904, 'ROLLS, FRANKFURTER + HAMBURGER1 ROLL', 7.5, 0, 50, 1.25, 288),
(905, 'GROUND BEEF, BROILED, REGULAR 3 OZ', 23.5, 89.4, 0, 8.12, 288),
(906, 'TABLE SYRUP (CORN AND MAPLE) 2 TBSP', 0, 0, 76.2, 0, 290),
(907, 'WHIPPING CREAM, UNWHIPED,LIGHT1 CUP', 2.1, 110.9, 2.9, 19.33, 293),
(908, 'LAMB,CHOPS,LOIN,BROIL,LEAN+FAT2.8 OZ', 27.5, 97.5, 0, 9.13, 294),
(909, 'BAGELS, PLAIN 1 BAGEL', 10.3, 0, 55.9, 0.44, 294),
(910, 'BAGELS, EGG 1 BAGEL', 10.3, 64.7, 55.9, 0.44, 294),
(911, 'PORK FRESH HAM, ROASTD,LEAN+FT3 OZ', 24.7, 92.9, 0, 7.53, 294),
(912, 'FRIED PIE, CHERRY 1 PIE', 2.4, 15.3, 37.6, 6.82, 294),
(913, 'RYE BREAD, LIGHT, TOASTED 1 SLICE', 9.1, 0, 54.5, 0.91, 295),
(914, 'WHITE BREAD, TOASTED 18 PER 1 SLICE', 9.1, 0, 54.5, 1.36, 295),
(915, 'ROLLS, HOAGIE OR SUBMARINE 1 ROLL', 8.1, 0, 53.3, 1.33, 296),
(916, 'CREME PIE 1 PIE', 2.2, 5.1, 38.6, 9.9, 298),
(917, 'CREME PIE 1 PIECE', 2, 5.3, 38.8, 9.87, 299),
(918, 'RAISIN BRAN, POST 1 OZ', 10.6, 0, 74.1, 0.35, 300),
(919, 'WHIPPING CREAM, UNWHIPED,LIGHT1 TBSP', 0, 113.3, 0, 19.33, 300),
(920, 'BLUEBERRY MUFFINS, HOME RECIPE1 MUFFIN', 6.7, 42.2, 44.4, 3.33, 300),
(921, 'FRIED PIE, APPLE 1 PIE', 2.4, 16.5, 36.5, 6.82, 300),
(922, 'FISH SANDWICH, REG, W/ CHEESE 1 SANDWH', 11.4, 40, 27.9, 4.5, 300),
(923, 'RAISINS 1 CUP', 3.4, 0, 79.3, 0.14, 300),
(924, 'CHEESECAKE 1 CAKE', 5.4, 185, 28.6, 10.8, 302),
(925, 'CAMEMBERT CHEESE 1 WEDGE', 21.1, 71.1, 0, 15.26, 303),
(926, 'ROLLS, DINNER, COMMERCIAL 1 ROLL', 7.1, 0, 50, 1.79, 304),
(927, 'HONEY 1 CUP', 0.3, 0, 82.3, 0, 304),
(928, 'CHEESECAKE 1 PIECE', 5.4, 184.8, 28.3, 10.76, 304),
(929, 'CRACKED-WHEAT BREAD, TOASTED 1 SLICE', 9.5, 0, 57.1, 0.95, 310),
(930, 'RAISIN BREAD, TOASTED 1 SLICE', 9.5, 0, 61.9, 0.95, 310),
(931, 'HONEY 1 TBSP', 0, 0, 81, 0, 310),
(932, 'ROLLS, HARD 1 ROLL', 10, 0, 60, 0.8, 310),
(933, 'BLUEBERRY MUFFINS,FROM COM MIX1 MUFFIN', 6.7, 100, 48.9, 3.11, 311),
(934, 'BRAN MUFFINS, FROM COMMERL MIX1 MUFFIN', 6.7, 62.2, 53.3, 2.89, 311),
(935, 'YEAST, BREWERS, DRY 1 TBSP', 37.5, 0, 37.5, 0, 313),
(936, 'BOLOGNA 2 SLICES', 12.3, 54.4, 3.5, 10.7, 316),
(937, 'PORK CHOP, LOIN, BROIL, LEN+FT3.1 OZ', 27.6, 96.6, 0, 8.05, 316),
(938, 'RAISIN BRAN, KELLOGG\'S 1 OZ', 10.6, 0, 74.1, 0.35, 317),
(939, '0.4 BRAN FLAKES, POST 1 OZ', 10.6, 0, 77.6, 0.35, 317),
(940, '0.4 BRAN FLAKES, KELLOGG\'S 1 OZ', 14.1, 0, 77.6, 0.35, 317),
(941, 'MARSHMALLOWS 1 OZ', 3.5, 0, 81.1, 0, 317),
(942, 'PORK FRESH RIB, ROASTD,LEAN+FT3 OZ', 24.7, 81.2, 0, 8.47, 318),
(943, 'COFFEECAKE, CRUMB, FROM MIX 1 PIECE', 6.9, 65.3, 52.8, 2.78, 319),
(944, 'POTATOES,FRENCH-FRD,FRZN,FRIED10 STRIP', 4, 0, 40, 5, 320),
(945, 'IMITATION WHIPPED TOPPING,FRZN1 CUP', 1.3, 0, 22.7, 21.73, 320),
(946, 'SWEETENED CONDENSED MILK CNND 1 CUP', 7.8, 34, 54.2, 5.49, 320),
(947, 'COFFEECAKE, CRUMB, FROM MIX 1 CAKE', 6.3, 64.9, 52.3, 2.74, 322),
(948, 'FRANKFURTER, COOKED 1 FRANK', 11.1, 51.1, 2.2, 10.67, 322),
(949, 'CORN MUFFINS, HOME RECIPE 1 MUFFIN', 6.7, 51.1, 46.7, 3.33, 322),
(950, 'CORN MUFFINS, FROM COMMERL MIX1 MUFFIN', 6.7, 93.3, 48.9, 3.78, 322),
(951, 'WHITE BREAD, TOASTED 22 PER 1 SLICE', 11.8, 0, 58.8, 1.18, 324),
(952, 'BAKING PWDR BISCUITS,REFRGDOGH1 BISCUT', 5, 5, 50, 3, 325),
(953, 'WAFFLES, FROM HOME RECIPE 1 WAFFLE', 9.3, 136, 34.7, 5.33, 327),
(954, 'SYRUP, CHOCOLATE FLVRED, FUDGE2 TBSP', 5.3, 0, 55.3, 8.16, 329),
(955, 'OREGANO 1 TSP', 0, 0, 66.7, 0, 333),
(956, 'WHIPPED TOPPING, PRESSURIZED 1 TBSP', 0, 66.7, 0, 13.33, 333),
(957, 'PRETZELS, STICK 10 PRETZ', 0, 0, 66.7, 0, 333),
(958, 'WHIPPING CREAM, UNWHIPED,HEAVY1 TBSP', 0, 140, 0, 23.33, 333),
(959, 'PORK, LUNCHEON MEAT,CANNED 2 SLICES', 11.9, 61.9, 2.4, 10.71, 333),
(960, 'WHOLE-WHEAT FLOUR,HRD WHT,STIR1 CUP', 13.3, 0, 70.8, 0.25, 333),
(961, 'PASTERZD PROCES CHEESE, SWISS 1 OZ', 24.7, 84.7, 3.5, 15.87, 335),
(962, 'PASTERZD PROCES CHESE FOOD,AMR1 OZ', 21.2, 63.5, 7.1, 15.52, 335),
(963, 'YELLOW CAKE W/ CHOC FRST,FRMIX1 CAKE', 4.1, 52, 57.6, 4.31, 337),
(964, 'DEVIL\'S FOOD CAKE,CHOCFRST,FMX1 CAKE', 4.4, 54, 58.3, 5.02, 339),
(965, 'BAKING PWDR BISCUITS,FROM MIX 1 BISCUT', 7.1, 0, 50, 2.86, 339),
(966, 'YELLOW CAKE W/ CHOC FRST,FRMIX1 PIECE', 4.3, 52.2, 58, 4.35, 341),
(967, 'DEVIL\'S FOOD CAKE,CHOCFRST,FMX1 PIECE', 4.3, 53.6, 58, 5.07, 341),
(968, 'QUICHE LORRAINE 1 SLICE', 7.4, 161.9, 16.5, 13.18, 341),
(969, 'ROLLS, DINNER, HOME RECIPE 1 ROLL', 8.6, 34.3, 57.1, 2.29, 343),
(970, 'DEVIL\'S FOOD CAKE,CHOCFRST,FMX1 CUPCAK', 5.7, 54.3, 57.1, 5.14, 343),
(971, 'WHIPPING CREAM, UNWHIPED,HEAVY1 CUP', 2.1, 137, 2.9, 23.03, 345),
(972, 'MARGARINE, IMITATION 0.4 FAT 8 OZ', 0.4, 0, 0.4, 7.71, 346),
(973, 'BUCKWHEAT FLOUR, LIGHT, SIFTED1 CUP', 6.1, 0, 79.6, 0.2, 347),
(974, 'PORK SHOULDER, BRAISD,LEAN+FAT3 OZ', 27.1, 109.4, 0, 9.29, 347),
(975, 'LAMB,CHOPS,ARM,BRAISED,LEAN+FT2.2 OZ', 31.7, 122.2, 0, 10.95, 349),
(976, 'BARLEY, PEARLED,LIGHT, UNCOOKD1 CUP', 8, 0, 79, 0.15, 350),
(977, 'YELLOWCAKE W/ CHOCFRSTNG,COMML1 CAKE', 3.6, 55, 56, 8.3, 352),
(978, 'SELF-RISING FLOUR, UNSIFTED 1 CUP', 9.6, 0, 74.4, 0.16, 352),
(979, 'BLUE CHEESE 1 OZ', 21.2, 74.1, 3.5, 18.69, 353),
(980, 'PROVOLONE CHEESE 1 OZ', 24.7, 70.5, 3.5, 16.93, 353),
(981, 'CREAM CHEESE 1 OZ', 7.1, 109.3, 3.5, 21.87, 353),
(982, 'TOTAL CEREAL 1 OZ', 10.6, 0, 77.6, 0.35, 353),
(983, 'COCOA PWDR WITH NONFAT DRYMILK1 OZ', 10.6, 3.5, 77.6, 2.12, 353),
(984, 'GRAPE-NUTS CEREAL 1 OZ', 10.6, 0, 81.1, 0, 353),
(985, 'WHEATIES CEREAL 1 OZ', 10.6, 0, 81.1, 0.35, 353),
(986, 'SHREDDED WHEAT CEREAL 1 OZ', 10.6, 0, 81.1, 0.35, 353),
(987, 'GUM DROPS 1 OZ', 0, 0, 88.2, 0, 353),
(988, 'EGGS, RAW, YOLK 1 YOLK', 17.6, 1252.9, 0, 9.41, 353),
(989, 'BULGUR, UNCOOKED 1 CUP', 11.2, 0, 75.9, 0.71, 353),
(990, 'YELLOWCAKE W/ CHOCFRSTNG,COMML1 PIECE', 2.9, 55.1, 56.5, 8.26, 355),
(991, 'COCONUT, RAW, PIECE 1 PIECE', 2.2, 0, 15.6, 29.78, 356),
(992, 'COCONUT, RAW, SHREDDED 1 CUP', 3.8, 0, 15, 29.75, 356),
(993, 'CORNMEAL,WHOLE-GRND,UNBOLT,DRY1 CUP', 9, 0, 73.8, 0.41, 357),
(994, 'GELATIN, DRY 1 ENVELP', 85.7, 0, 0, 0, 357),
(995, 'MARGARINE, IMITATION 0.4 FAT 1 TBSP', 0, 0, 0, 7.86, 357),
(996, 'BAKING PWDR BISCUITS,HOMERECPE1 BISCUT', 7.1, 0, 46.4, 4.29, 357),
(997, 'NONFAT DRY MILK, INSTANTIZED 1 ENVLPE', 35.2, 18.7, 51.6, 0.44, 357),
(998, 'GARLIC POWDER 1 TSP', 0, 0, 71.4, 0, 357),
(999, 'COCA PWDR W/O NONFAT DRY MILK 42067 OZ', 4.8, 0, 90.5, 1.43, 357),
(1000, 'BREAD STUFFING,FROM MX,DRYTYPE1 CUP', 6.4, 0, 35.7, 4.36, 357),
(1001, 'BRAUNSCHWEIGER 2 SLICES', 14, 156.1, 3.5, 10.88, 360),
(1002, 'NONFAT DRY MILK, INSTANTIZED 1 CUP', 35.3, 17.6, 51.5, 0.44, 360),
(1003, 'CORNMEAL,BOLTED,DRY FORM 1 CUP', 9, 0, 74.6, 0.41, 361),
(1004, 'DANISH PASTRY, FRUIT 1 PASTRY', 6.2, 86.2, 43.1, 6, 362),
(1005, 'RICE, WHITE, RAW 1 CUP', 6.5, 0, 80.5, 0.11, 362),
(1006, 'CORNMEAL,DEGERMED,ENRICHED,DRY1 CUP', 8, 0, 78.3, 0.14, 362),
(1007, 'WHEAT FLOUR, ALL-PURPOSE,UNSIF1 CUP', 10.4, 0, 76, 0.16, 364),
(1008, 'SHEETCAKE W/O FRSTNG,HOMERECIP1 CAKE', 4.5, 71, 55.9, 3.8, 364),
(1009, 'CAKE OR PASTRY FLOUR, SIFTED 1 CUP', 7.3, 0, 79.2, 0.1, 365),
(1010, 'WHEAT FLOUR, ALL-PURPOSE,SIFTD1 CUP', 10.4, 0, 76.5, 0.17, 365),
(1011, 'WHITE CAKE W/ WHT FRSTNG,COMML1 CAKE', 3.8, 4, 58.8, 2.9, 366),
(1012, 'WHITE CAKE W/ WHT FRSTNG,COMML1 PIECE', 4.2, 4.2, 59.2, 2.96, 366),
(1013, 'SHEETCAKE,W/O FRSTNG,HOMERECIP1 PIECE', 4.7, 70.9, 55.8, 3.84, 366),
(1014, 'SHEETCAKE,W/ WHFRSTNG,HOMERCIP1 CAKE', 3.4, 58, 63.3, 3.8, 367),
(1015, 'SHEETCAKE,W/ WHFRSTNG,HOMERCIP1 PIECE', 3.3, 57.9, 63.6, 3.8, 368),
(1016, 'SNACK CAKES,SPONGE CREME FLLNGSM CAKE', 2.4, 16.7, 64.3, 5.48, 369),
(1017, 'RICE, WHITE, PARBOILED, RAW 1 CUP', 7.6, 0, 81.1, 0.05, 370),
(1018, 'PASTERZD PROCES CHEESE,AMERICN1 OZ', 21.2, 95.2, 0, 19.75, 370),
(1019, 'MUENSTER CHEESE 1 OZ', 24.7, 95.2, 0, 19.05, 370),
(1020, 'SWISS CHEESE 1 OZ', 28.2, 91.7, 3.5, 17.64, 370),
(1021, 'HONEY NUT CHEERIOS CEREAL 1 OZ', 10.6, 0, 81.1, 0.35, 370),
(1022, 'SUGAR SMACKS CEREAL 1 OZ', 7.1, 0, 88.2, 0.35, 370),
(1023, 'JELLY BEANS 1 OZ', 0, 0, 91.7, 0, 370),
(1024, 'SUPER SUGAR CRISP CEREAL 1 OZ', 7.1, 0, 91.7, 0, 370),
(1025, 'FONDANT, UNCOATED 1 OZ', 0, 0, 95.2, 0, 370),
(1026, 'LAMB, RIB, ROASTED, LEAN + FAT3 OZ', 21.2, 90.6, 0, 14.24, 371),
(1027, 'BEEF ROAST, RIB, LEAN + FAT 3 OZ', 22.4, 84.7, 0, 12.71, 371),
(1028, 'SUGAR, BROWN, PRESSED DOWN 1 CUP', 0, 0, 96.4, 0, 373),
(1029, 'SNACK CAKES,DEVILS FOOD,CREMFLSM CAKE', 3.6, 53.6, 60.7, 6.07, 375),
(1030, 'FIG BARS 4 COOKIE', 3.6, 48.2, 75, 1.79, 375),
(1031, 'IMITATION WHIPPED TOPPING,FRZN1 TBSP', 0, 0, 25, 22.5, 375),
(1032, 'POPCORN, AIR-POPPED, UNSALTED 1 CUP', 12.5, 0, 75, 0, 375),
(1033, 'SUGAR, WHITE, GRANULATED 1 TBSP', 0, 0, 100, 0, 375),
(1034, '1000 ISLAND, SALAD DRSNG,REGLR1 TBSP', 0, 25, 12.5, 6.25, 375),
(1035, 'PORK CHOP, LOIN,PANFRY,LEAN+FT3.1 OZ', 23.6, 103.4, 0, 11.01, 376),
(1036, 'POUND CAKE, COMMERCIAL 1 SLICE', 6.9, 220.7, 51.7, 10.34, 379),
(1037, 'FRUITCAKE,DARK, FROM HOMERECIP1 CAKE', 5.4, 47, 57.5, 3.5, 381);
INSERT INTO `fitness_app_fooditems` (`foodId`, `foodItem`, `protein`, `cholesterol`, `carbohydrates`, `fats`, `calories`) VALUES
(1038, 'BEEF, CKD,CHUCK BLADE,LEAN+FAT3 OZ', 25.9, 102.4, 0, 12.71, 382),
(1039, 'FRUITCAKE,DARK, FROM HOMERECIP1 PIECE', 4.7, 46.5, 58.1, 3.49, 384),
(1040, 'DANISH PASTRY, PLAIN, NO NUTS 1 RING', 6.2, 85.9, 44.7, 6.41, 384),
(1041, 'CHILI POWDER 1 TSP', 0, 0, 38.5, 3.85, 385),
(1042, 'PORK, LINK, COOKED 1 LINK', 23.1, 84.6, 0, 10.77, 385),
(1043, 'BROWN AND SERVE SAUSAGE,BRWND 1 LINK', 15.4, 69.2, 0, 13.08, 385),
(1044, 'SUGAR, POWDERED, SIFTED 1 CUP', 0, 0, 100, 0, 385),
(1045, 'SUGAR, WHITE, GRANULATED 1 CUP', 0, 0, 99.5, 0, 385),
(1046, 'POPCORN, SUGAR SYRUP COATED 1 CUP', 5.7, 0, 85.7, 0.29, 386),
(1047, 'DANISH PASTRY, PLAIN, NO NUTS 1 PASTRY', 7, 86, 45.6, 6.32, 386),
(1048, 'POUND CAKE, COMMERCIAL 1 LOAF', 5.2, 220, 51.4, 10.4, 387),
(1049, 'BUTTERMILK, DRIED 1 CUP', 34.2, 69.2, 49.2, 3.58, 388),
(1050, 'DANISH PASTRY, PLAIN, NO NUTS 1 OZ', 7.1, 84.7, 45.9, 6.35, 388),
(1051, 'CHEERIOS CEREAL 1 OZ', 14.1, 0, 70.5, 1.06, 388),
(1052, 'SPECIAL K CEREAL 1 OZ', 21.2, 0, 74.1, 0, 388),
(1053, 'LUCKY CHARMS CEREAL 1 OZ', 10.6, 0, 81.1, 0.71, 388),
(1054, 'CORN FLAKES, KELLOGG\'S 1 OZ', 7.1, 0, 84.7, 0, 388),
(1055, 'CORN FLAKES, TOASTIES 1 OZ', 7.1, 0, 84.7, 0, 388),
(1056, 'PRODUCT 19 CEREAL 1 OZ', 10.6, 0, 84.7, 0, 388),
(1057, 'GOLDEN GRAHAMS CEREAL 1 OZ', 7.1, 0, 84.7, 2.47, 388),
(1058, 'RICE KRISPIES CEREAL 1 OZ', 7.1, 0, 88.2, 0, 388),
(1059, 'TRIX CEREAL 1 OZ', 7.1, 0, 88.2, 0.71, 388),
(1060, 'FROOT LOOPS CEREAL 1 OZ', 7.1, 0, 88.2, 0.71, 388),
(1061, 'SUGAR FROSTED FLAKES, KELLOGG 1 OZ', 3.5, 0, 91.7, 0, 388),
(1062, 'HARD CANDY 1 OZ', 0, 0, 98.8, 0, 388),
(1063, 'TOASTER PASTRIES 1 PASTRY', 3.7, 0, 70.4, 3.15, 389),
(1064, 'BREADCRUMBS, DRY, GRATED 1 CUP', 13, 5, 73, 1.5, 390),
(1065, 'DOUGHNUTS, YEAST-LEAVEND,GLZED1 DONUT', 6.7, 35, 43.3, 8.67, 392),
(1066, 'RYE WAFERS, WHOLE-GRAIN 2 WAFERS', 7.1, 0, 71.4, 2.14, 393),
(1067, 'POUND CAKE, FROM HOME RECIPE 1 LOAF', 6.4, 108, 51.6, 4.11, 394),
(1068, 'MELBA TOAST, PLAIN 1 PIECE', 20, 0, 80, 2, 400),
(1069, 'MAYONNAISE TYPE SALAD DRESSING1 TBSP', 0, 26.7, 26.7, 4.67, 400),
(1070, 'ONION RINGS, BREADED,FRZN,PRPD2 RINGS', 5, 0, 40, 8.5, 400),
(1071, 'BROWNIES W/ NUTS,FRSTNG,CMMRCL1 BROWNE', 4, 56, 64, 6.4, 400),
(1072, 'POUND CAKE, FROM HOME RECIPE 1 SLICE', 6.7, 106.7, 50, 4, 400),
(1073, 'PRETZELS, TWISTED, THIN 10 PRETZ', 10, 0, 80, 0.67, 400),
(1074, 'CARROT CAKE,CREMCHESE FRST,REC1 PIECE', 4.2, 77.1, 50, 4.27, 401),
(1075, 'CARROT CAKE,CREMCHESE FRST,REC1 CAKE', 4.1, 77, 50.5, 4.3, 402),
(1076, 'CHEDDDAR CHEESE, SHREDDED 1 CUP', 24.8, 105.3, 0.9, 21.06, 403),
(1077, 'MALTED MILK,NATURAL, POWDER 42067 OZ', 14.3, 19, 71.4, 4.29, 405),
(1078, 'MALTED MILK, CHOCOLATE, POWDER3/4 OZ', 4.8, 4.8, 85.7, 2.38, 405),
(1079, 'CHEDDAR CHEESE 1 OZ', 24.7, 105.8, 0, 21.16, 406),
(1080, 'FUDGE, CHOCOLATE, PLAIN 1 OZ', 3.5, 3.5, 74.1, 7.41, 406),
(1081, 'CARAMELS, PLAIN OR CHOCOLATE 1 OZ', 3.5, 3.5, 77.6, 7.76, 406),
(1082, 'PRETZELS, TWISTED, DUTCH 1 PRETZ', 12.5, 0, 81.3, 0.63, 406),
(1083, 'CHEDDAR CHEESE 1 CU IN', 23.5, 105.9, 0, 21.18, 412),
(1084, 'CROISSANTS 1 CROSST', 8.8, 22.8, 47.4, 6.14, 412),
(1085, 'SUGAR, WHITE, GRANULATED 1 PKT', 0, 0, 100, 0, 417),
(1086, 'SALTINES 4 CRACKR', 8.3, 33.3, 75, 4.17, 417),
(1087, 'PECAN PIE 1 PIECE', 5.1, 68.8, 51.4, 3.41, 417),
(1088, 'PECAN PIE 1 PIE', 5.1, 69, 51.3, 3.41, 418),
(1089, 'DOUGHNUTS, CAKE TYPE, PLAIN 1 DONUT', 6, 40, 48, 5.6, 420),
(1090, 'CAP\'N CRUNCH CEREAL 1 OZ', 3.5, 0, 81.1, 6, 423),
(1091, 'SALAMI, DRY TYPE 2 SLICES', 25, 80, 5, 12, 425),
(1092, 'GRAHAM CRACKER, PLAIN 2 CRACKR', 7.1, 0, 78.6, 2.86, 429),
(1093, 'CHOCOLATE CHIP COOKIES,COMMRCL4 COOKIE', 4.8, 11.9, 66.7, 6.9, 429),
(1094, 'WHEAT, THIN CRACKERS 4 CRACKR', 12.5, 0, 62.5, 6.25, 438),
(1095, 'WHOLE-WHEAT WAFERS, CRACKERS 2 CRACKR', 12.5, 0, 62.5, 6.25, 438),
(1096, 'VINEGAR AND OIL SALAD DRESSING1 TBSP', 0, 0, 0, 9.38, 438),
(1097, 'NATURE VALLEY GRANOLA CEREAL 1 OZ', 10.6, 0, 67, 11.64, 441),
(1098, 'PARMESAN CHEESE, GRATED 1 CUP', 42, 79, 4, 19.1, 455),
(1099, 'PARMESAN CHEESE, GRATED 1 OZ', 42.3, 77.6, 3.5, 19.05, 459),
(1100, 'CHOCOLATE CHIP COOKIES,HME RCP4 COOKIE', 5, 45, 65, 9.75, 463),
(1101, 'VANILLA WAFERS 10 COOKE', 5, 62.5, 72.5, 4.5, 463),
(1102, 'PIECRUST, FROM MIX 2 CRUST', 6.3, 0, 44.1, 7.09, 464),
(1103, 'CHOCOLATE CHIP COOKIES,REFRIG 4 COOKIE', 4.2, 45.8, 66.7, 8.33, 469),
(1104, 'OATMEAL W/ RAISINS COOKIES 4 COOKIE', 5.8, 3.8, 69.2, 4.81, 471),
(1105, 'BROWNIES W/ NUTS,FRM HOME RECP1 BROWNE', 5, 90, 55, 7, 475),
(1106, '1 NATURAL CEREAL 1 OZ', 10.6, 0, 63.5, 14.46, 476),
(1107, 'SHORTBREAD COOKIE, COMMERCIAL 4 COOKIE', 6.3, 84.4, 62.5, 9.06, 484),
(1108, 'SANDWICH TYPE COOKIE 4 COOKIE', 5, 0, 72.5, 5, 488),
(1109, 'NOODLES, CHOW MEIN, CANNED 1 CUP', 13.3, 11.1, 57.8, 4.67, 489),
(1110, 'SUGAR COOKIE, FROM REFRIG DOGH4 COOKIE', 4.2, 60.4, 64.6, 4.79, 490),
(1111, 'MILK CHOCOLATE CANDY,W/ RICE C1 OZ', 7.1, 21.2, 63.5, 15.52, 494),
(1112, 'CELERY SEED 1 TSP', 0, 0, 50, 0, 500),
(1113, 'IMITATION CREAMERS, POWDERED 1 TSP', 0, 0, 50, 35, 500),
(1114, 'SNACK TYPE CRACKERS 1 CRACKR', 0, 0, 66.7, 6.67, 500),
(1115, 'PARMESAN CHEESE, GRATED 1 TBSP', 40, 80, 0, 20, 500),
(1116, 'MARGARINE, SPREAD,HARD,60% FAT1 PAT', 0, 0, 0, 14, 500),
(1117, 'CHEESE CRACKERS, SANDWCH,PEANT1 SANDWH', 12.5, 12.5, 62.5, 5, 500),
(1118, 'CHEESE CRACKERS, PLAIN 10 CRACK', 10, 60, 60, 9, 500),
(1119, 'POPCORN, POPPED, VEG OIL,SALTD1 CUP', 9.1, 0, 54.5, 4.55, 500),
(1120, 'BLUE CHEESE SALAD DRESSING 1 TBSP', 6.7, 20, 6.7, 10, 500),
(1121, 'PIECRUST,FROM HOME RECIPE 1 SHELL', 6.1, 0, 43.9, 8.22, 500),
(1122, 'COCONUT, DRIED, SWEETND,SHREDD1 CUP', 3.2, 0, 47.3, 31.51, 505),
(1123, 'SEMISWEET CHOCOLATE 1 CUP', 4.1, 0, 57.1, 21.29, 506),
(1124, 'PEANUT BUTTER COOKIE,HOME RECP4 COOKIE', 8.3, 45.8, 58.3, 8.33, 510),
(1125, 'CHOCOLATE, BITTER OT BAKING 1 OZ', 10.6, 0, 28.2, 31.75, 511),
(1126, 'MILK CHOCOLATE CANDY, PLAIN 1 OZ', 7.1, 21.2, 56.4, 19.05, 511),
(1127, 'SHORTBREAD COOKIE, HOME RECIPE2 COOKIE', 7.1, 0, 60.7, 4.64, 518),
(1128, 'POTATO CHIPS 10 CHIPS', 5, 0, 50, 9, 525),
(1129, 'MILK CHOCOLATE CANDY,W/ ALMOND1 OZ', 10.6, 17.6, 52.9, 16.93, 529),
(1130, 'SWEET (DARK) CHOCOLATE 1 OZ', 3.5, 0, 56.4, 20.81, 529),
(1131, 'FRENCH SALAD DRESSING, REGULAR1 TBSP', 0, 0, 6.3, 8.75, 531),
(1132, 'ITALIAN SALAD DRESSING,REGULAR1 TBSP', 0, 0, 6.7, 8.67, 533),
(1133, 'MARGARINE, SPREAD,SOFT,60% FAT1 TBSP', 0, 0, 0, 12.86, 536),
(1134, 'MARGARINE, SPREAD,HARD,60% FAT1 TBSP', 0, 0, 0, 14.29, 536),
(1135, 'TARTAR SAUCE 1 TBSP', 0, 28.6, 7.1, 8.57, 536),
(1136, 'MARGARINE, SPREAD,SOFT,60% FAT8 OZ', 0.4, 0, 0, 12.82, 540),
(1137, 'MARGARINE, SPREAD,HARD,60% FAT1/2 CUP', 0.9, 0, 0, 14.07, 540),
(1138, 'PUMPKIN AND SQUASH KERNELS 1 OZ', 24.7, 0, 17.6, 8.82, 547),
(1139, 'MILK CHOCOLATE CANDY,W/ PENUTS1 OZ', 14.1, 17.6, 45.9, 14.81, 547),
(1140, 'CORN CHIPS 1 OZ', 7.1, 0, 56.4, 4.94, 547),
(1141, 'SESAME SEEDS 1 TBSP', 25, 0, 12.5, 7.5, 563),
(1142, 'SUNFLOWER SEEDS 1 OZ', 21.2, 0, 17.6, 5.29, 564),
(1143, 'PINE NUTS 1 OZ', 10.6, 0, 17.6, 9.52, 564),
(1144, 'CASHEW NUTS, DRY ROASTD,UNSALT1 CUP', 15.3, 0, 32.8, 9.12, 573),
(1145, 'CASHEW NUTS, DRY ROASTED,SALTD1 CUP', 15.3, 0, 32.8, 9.12, 573),
(1146, 'CASHEW NUTS, OIL ROASTD,SALTED1 CUP', 16.2, 0, 28.5, 9.54, 577),
(1147, 'CASHEW NUTS, OIL ROASTD,UNSALT1 CUP', 16.2, 0, 28.5, 9.54, 577),
(1148, 'PORK, CURED, BACON, REGUL,CKED3 SLICE', 31.6, 84.2, 0, 17.37, 579),
(1149, 'PEANUTS, OIL ROASTED, SALTED 1 CUP', 26.9, 0, 18.6, 6.83, 579),
(1150, 'PEANUTS, OIL ROASTED, UNSALTED1 CUP', 26.9, 0, 18.6, 6.83, 579),
(1151, 'PEANUTS, OIL ROASTED, SALTED 1 OZ', 28.2, 0, 17.6, 6.7, 582),
(1152, 'PEANUTS, OIL ROASTED, UNSALTED1 OZ', 28.2, 0, 17.6, 6.7, 582),
(1153, 'ALMONDS, WHOLE 1 OZ', 21.2, 0, 21.2, 4.94, 582),
(1154, 'PISTACHIO NUTS 1 OZ', 21.2, 0, 24.7, 6, 582),
(1155, 'CASHEW NUTS, OIL ROASTD,SALTED1 OZ', 17.6, 0, 28.2, 9.52, 582),
(1156, 'CASHEW NUTS, OIL ROASTD,UNSALT1 OZ', 17.6, 0, 28.2, 9.52, 582),
(1157, 'CASHEW NUTS, DRY ROASTD,SALTED1 OZ', 14.1, 0, 31.7, 9.17, 582),
(1158, 'CASHEW NUTS, DRY ROASTD,UNSALT1 OZ', 14.1, 0, 31.7, 9.17, 582),
(1159, 'ALMONDS, SLIVERED 1 CUP', 20, 0, 20.7, 4.96, 589),
(1160, 'PEANUT BUTTER 1 TBSP', 31.3, 0, 18.8, 8.75, 594),
(1161, 'WALNUTS, BLACK, CHOPPED 1 OZ', 24.7, 0, 10.6, 3.53, 600),
(1162, 'MIXED NUTS W/ PEANTS,DRY,SALTD1 OZ', 17.6, 0, 24.7, 7.05, 600),
(1163, 'MIXED NUTS W/ PEANTS,DRY,UNSLT1 OZ', 17.6, 0, 24.7, 7.05, 600),
(1164, 'TAHINI 1 TBSP', 20, 0, 20, 7.33, 600),
(1165, 'WALNUTS, BLACK, CHOPPED 1 CUP', 24, 0, 12, 3.6, 608),
(1166, 'MIXED NUTS W/ PEANTS,OIL,SALTD1 OZ', 17.6, 0, 21.2, 8.82, 617),
(1167, 'MIXED NUTS W/ PEANTS,OIL,UNSLT1 OZ', 17.6, 0, 21.2, 8.82, 617),
(1168, 'FILBERTS, (HAZELNUTS) CHOPPED 1 CUP', 13, 0, 15.7, 4.61, 630),
(1169, 'FILBERTS, (HAZELNUTS) CHOPPED 1 OZ', 14.1, 0, 14.1, 4.59, 635),
(1170, 'WALNUTS, ENGLISH, PIECES 1 OZ', 14.1, 0, 17.6, 5.64, 635),
(1171, 'WALNUTS, ENGLISH, PIECES 1 CUP', 14.2, 0, 18.3, 5.58, 642),
(1172, 'BRAZIL NUTS 1 OZ', 14.1, 0, 14.1, 16.23, 653),
(1173, 'PECANS, HALVES 1 CUP', 7.4, 0, 18.5, 5.46, 667),
(1174, 'PECANS, HALVES 1 OZ', 7.1, 0, 17.6, 5.29, 670),
(1175, 'MARGARINE, REGULR,HARD,80% FAT1 PAT', 0, 0, 0, 16, 700),
(1176, 'BUTTER, SALTED 1 PAT', 0, 220, 0, 50, 700),
(1177, 'BUTTER, UNSALTED 1 PAT', 0, 220, 0, 50, 700),
(1178, 'MAYONNAISE, REGULAR 1 TBSP', 0, 57.1, 0, 12.14, 714),
(1179, 'MARGARINE, REGULR,SOFT,80% FAT1 TBSP', 0, 0, 0, 13.57, 714),
(1180, 'MARGARINE, REGULR,HARD,80% FAT1 TBSP', 0, 0, 0, 15.71, 714),
(1181, 'BUTTER, SALTED 1 TBSP', 0, 221.4, 0, 50.71, 714),
(1182, 'BUTTER, UNSALTED 1 TBSP', 0, 221.4, 0, 50.71, 714),
(1183, 'MARGARINE, REGULR,SOFT,80% FAT8 OZ', 0.9, 0, 0.4, 13.79, 716),
(1184, 'MACADAMIA NUTS, OILRSTD,SALTED1 CUP', 7.5, 0, 12.7, 11.49, 716),
(1185, 'MACADAMIA NUTS, OILRSTD,UNSALT1 CUP', 7.5, 0, 12.7, 11.49, 716),
(1186, 'BUTTER, SALTED 42006 CUP', 0.9, 218.6, 0, 50.53, 717),
(1187, 'BUTTER, UNSALTED 42006 CUP', 0.9, 218.6, 0, 50.53, 717),
(1188, 'MARGARINE, REGULR,HARD,80% FAT1/2 CUP', 0.9, 0, 0.9, 15.84, 717),
(1189, 'MACADAMIA NUTS, OILRSTD,SALTED1 OZ', 7.1, 0, 14.1, 11.29, 723),
(1190, 'MACADAMIA NUTS, OILRSTD,UNSALT1 OZ', 7.1, 0, 14.1, 11.29, 723),
(1191, 'FATS, COOKING/VEGETBL SHORTENG1 CUP', 0, 0, 0, 25.02, 883),
(1192, 'SAFFLOWER OIL 1 CUP', 0, 0, 0, 9.08, 883),
(1193, 'SUNFLOWER OIL 1 CUP', 0, 0, 0, 10.32, 883),
(1194, 'CORN OIL 1 CUP', 0, 0, 0, 12.71, 883),
(1195, 'SOYBEAN OIL, HYDROGENATED 1 CUP', 0, 0, 0, 14.91, 883),
(1196, 'SOYBEAN-COTTONSEED OIL, HYDRGN1 CUP', 0, 0, 0, 17.98, 883),
(1197, 'OLIVE OIL 1 CUP', 0, 0, 0, 13.52, 884),
(1198, 'PEANUT OIL 1 CUP', 0, 0, 0, 16.9, 884),
(1199, 'FATS, COOKING/VEGETBL SHORTENG1 TBSP', 0, 0, 0, 25.38, 885),
(1200, 'LARD 1 TBSP', 0, 92.3, 0, 39.23, 885),
(1201, 'SAFFLOWER OIL 1 TBSP', 0, 0, 0, 9.29, 893),
(1202, 'SUNFLOWER OIL 1 TBSP', 0, 0, 0, 10, 893),
(1203, 'CORN OIL 1 TBSP', 0, 0, 0, 12.86, 893),
(1204, 'OLIVE OIL 1 TBSP', 0, 0, 0, 13.57, 893),
(1205, 'SOYBEAN OIL, HYDROGENATED 1 TBSP', 0, 0, 0, 15, 893),
(1206, 'PEANUT OIL 1 TBSP', 0, 0, 0, 17.14, 893),
(1207, 'SOYBEAN-COTTONSEED OIL, HYDRGN1 TBSP', 0, 0, 0, 17.86, 893),
(1208, 'LARD 1 CUP', 0, 95.1, 0, 39.22, 902),
(1209, 'mango', 1, 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fitness_app_user`
--

CREATE TABLE `fitness_app_user` (
  `userId` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `createdDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fitness_app_user`
--

INSERT INTO `fitness_app_user` (`userId`, `name`, `email`, `mobile`, `password`, `createdDate`) VALUES
(1, 'Customer', 'rajesh@gmail.com', '97987498789', '12345', '2024-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `fitness_app_userfoodhistory`
--

CREATE TABLE `fitness_app_userfoodhistory` (
  `historyId` int(11) NOT NULL,
  `userId` varchar(60) NOT NULL,
  `foodItem` varchar(100) NOT NULL,
  `consumedInGrams` double NOT NULL,
  `calories` double NOT NULL,
  `consumedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fitness_app_userfoodhistory`
--

INSERT INTO `fitness_app_userfoodhistory` (`historyId`, `userId`, `foodItem`, `consumedInGrams`, `calories`, `consumedDate`) VALUES
(1, '1', 'Rice', 100, 16, '2024-06-17'),
(2, '1', 'Rice', 100, 16, '2024-06-17'),
(3, '1', 'bread', 100, 150, '2024-06-17'),
(4, '1', 'Rice', 300, 2400, '2024-06-18'),
(5, '1', 'bread', 200, 1800, '2024-06-18'),
(6, '1', 'Rice', 300, 2400, '2024-06-18'),
(7, '1', 'bread', 200, 1800, '2024-06-18'),
(8, '1', 'Rice', 200, 1600, '2024-06-18'),
(9, '1', 'bread', 200, 1800, '2024-06-18'),
(10, '1', 'Rice', 200, 1600, '2024-06-18'),
(11, '1', 'bread', 200, 1800, '2024-06-18'),
(12, '1', 'Rice', 200, 1600, '2024-06-19'),
(13, '1', 'bread', 200, 1800, '2024-06-19'),
(14, '1', 'apple', 100, 250, '2024-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `fitness_app_workouts`
--

CREATE TABLE `fitness_app_workouts` (
  `workoutId` int(11) NOT NULL,
  `workoutName` varchar(60) NOT NULL,
  `duration` double NOT NULL,
  `calories_burned` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fitness_app_workouts`
--

INSERT INTO `fitness_app_workouts` (`workoutId`, `workoutName`, `duration`, `calories_burned`) VALUES
(1, 'Yoga Flow', 10, 100),
(2, 'Full Body Burn', 20, 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `fitness_app_admin`
--
ALTER TABLE `fitness_app_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `fitness_app_fooditems`
--
ALTER TABLE `fitness_app_fooditems`
  ADD PRIMARY KEY (`foodId`);

--
-- Indexes for table `fitness_app_user`
--
ALTER TABLE `fitness_app_user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `fitness_app_userfoodhistory`
--
ALTER TABLE `fitness_app_userfoodhistory`
  ADD PRIMARY KEY (`historyId`);

--
-- Indexes for table `fitness_app_workouts`
--
ALTER TABLE `fitness_app_workouts`
  ADD PRIMARY KEY (`workoutId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `fitness_app_fooditems`
--
ALTER TABLE `fitness_app_fooditems`
  MODIFY `foodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1210;

--
-- AUTO_INCREMENT for table `fitness_app_user`
--
ALTER TABLE `fitness_app_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fitness_app_userfoodhistory`
--
ALTER TABLE `fitness_app_userfoodhistory`
  MODIFY `historyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fitness_app_workouts`
--
ALTER TABLE `fitness_app_workouts`
  MODIFY `workoutId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
