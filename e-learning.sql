-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 12:21 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_number`, `account_holder_name`, `amount`, `created_at`, `updated_at`) VALUES
(1, '798654322', 'jhgfdssa', '2000', NULL, NULL),
(2, '89075', 'jhgfdssa', '6000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationwith_emergency_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ofrelation_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `studentID`, `course_id`, `batch_id`, `date`, `student_name`, `student_email`, `student_phone`, `emergency_phone`, `relationwith_emergency_phone`, `name_ofrelation_number`, `religion`, `blood_group`, `nid`, `gender`, `present_address`, `permanent_address`, `course_price`, `discount`, `due`, `total_payment`, `created_at`, `updated_at`) VALUES
(1, '620473', 1, 1, '2022-11-21', 'Nout', 'gdfgdf@hf.com', '7983234354', '0876654543', '976756556', 'ghjgfj', 'fgh', 'fgh', '56756756756', 'Male', 'rthgjhggfsd', 'hgsdghjkyj', '10000', '2000', '2000', '6000', '2022-11-21 01:17:37', '2022-11-21 04:31:15'),
(9, '467065', 2, 2, '2022-11-21', 'Nout', 'gdfgdf@hf.com', '896545564', '098765654', '976756556', 'ghjgfj', 'fgh', 'fgh', '56756756756', 'Male', 'jhfgsdjhgjhg', 'gjyuhiytrgtfhret', '8000', '1000', '0', '7000', '2022-11-21 04:50:06', '2022-11-21 04:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_capacity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batchID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `batch_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `batch_name`, `student_capacity`, `batchID`, `batch_time`, `start_date`, `batch_session`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Batch 1', '30', '7133', '2:00pm', '2022-11-25', '2', 'Upcoming', NULL, NULL),
(2, 'Batch 2', '50', '6703', '2:00pm', '2022-11-14', '2', 'Runing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `couresetopics`
--

CREATE TABLE `couresetopics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coursedetail_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couresetopics`
--

INSERT INTO `couresetopics` (`id`, `module_name`, `module_class`, `coursedetail_id`, `created_at`, `updated_at`) VALUES
(1, 'kgkj', 'jjhjhjh', 1, NULL, NULL),
(2, 'kgkj', 'jjhjhjh', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`id`, `course_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_length` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_lessons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_price`, `course_length`, `course_lessons`, `course_image`, `long_details`, `created_at`, `updated_at`) VALUES
(1, 'app development', '10000', '3', '12', 'download (1).jpg', 'tjtyjtytg', NULL, NULL),
(2, 'graphic design', '8000', '3', '12', '300831464_565012185418001_2349094398513692210_n.jpg', 'jhhgfgfhfd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Teacher', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2019_08_19_000000_create_failed_jobs_table', 1),
(48, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(49, '2022_03_23_075202_create_teachers_table', 1),
(50, '2022_03_24_061524_create_noticeboards_table', 1),
(51, '2022_03_24_112300_create_courses_table', 1),
(52, '2022_03_27_045238_create_coursedetails_table', 1),
(53, '2022_03_27_045714_create_couresetopics_table', 1),
(54, '2022_03_28_051012_create_batches_table', 1),
(55, '2022_03_28_103112_create_designations_table', 1),
(56, '2022_03_28_113650_create_teacherassigns_table', 1),
(57, '2022_03_30_070655_create_admissions_table', 1),
(58, '2022_04_03_082423_create_accounts_table', 1),
(59, '2022_04_04_042159_create_settings_table', 1),
(60, '2022_04_06_999999_add_active_status_to_users', 1),
(61, '2022_04_06_999999_add_avatar_to_users', 1),
(62, '2022_04_06_999999_add_dark_mode_to_users', 1),
(63, '2022_04_06_999999_add_messenger_color_to_users', 1),
(64, '2022_04_06_999999_create_favorites_table', 1),
(65, '2022_04_06_999999_create_messages_table', 1),
(66, '2022_04_18_071326_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `short_title`, `long_title`, `date`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Upcoming Seminar', 'Upcoming Seminar of web design will be held 25-11-202', '2022-11-25', 'download (1).jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard View', 'web', 'Dashboard', '2022-11-21 00:47:55', '2022-11-21 00:47:55'),
(2, 'Runing Batch', 'web', 'Dashboard', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(3, 'Notice Board', 'web', 'Dashboard', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(4, 'Upcoming Batch', 'web', 'Dashboard', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(5, 'Manage User', 'web', 'Manage Users', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(6, 'Role Create', 'web', 'Manage Users', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(7, 'Role Edit', 'web', 'Manage Users', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(8, 'Role Delete', 'web', 'Manage Users', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(9, 'Role list View', 'web', 'Manage Users', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(10, 'User List', 'web', 'Manage Users', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(11, 'Create Users View', 'web', 'Manage Users', '2022-11-21 00:47:56', '2022-11-21 00:47:56'),
(12, 'Users List View', 'web', 'Manage Users', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(13, 'User Create', 'web', 'Manage Users', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(14, 'User Edit', 'web', 'Manage Users', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(15, 'User Delete', 'web', 'Manage Users', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(16, 'Profile', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(17, 'Change Password', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(18, 'Sign Out', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(19, 'Chat', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(20, 'Email', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(21, 'Settings', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(22, 'Accounts', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(23, 'New Admission', 'web', 'Header', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(24, 'Notice Board View', 'web', 'Notice Board', '2022-11-21 00:47:57', '2022-11-21 00:47:57'),
(25, 'Notice Board Edit', 'web', 'Notice Board', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(26, 'Notice Board Create', 'web', 'Notice Board', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(27, 'Notice Board Delete', 'web', 'Notice Board', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(28, 'View Payment', 'web', 'Payment Received', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(29, 'Teacher', 'web', 'Teacher', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(30, 'Designation View', 'web', 'Teacher', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(31, 'Designation Create', 'web', 'Teacher', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(32, 'Designation Delete', 'web', 'Teacher', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(33, 'Teacher View', 'web', 'Teacher', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(34, 'Teacher Create', 'web', 'Teacher', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(35, 'Teacher Edit', 'web', 'Teacher', '2022-11-21 00:47:58', '2022-11-21 00:47:58'),
(36, 'Teacher Delete', 'web', 'Teacher', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(37, 'Course', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(38, 'Course Create View', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(39, 'Course Edit', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(40, 'Course Delete', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(41, 'Course Create', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(42, 'Course Details View', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(43, 'Course Details Edit', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(44, 'Course Details Show', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(45, 'Course Details Delete', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(46, 'Course Details Create', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(47, 'All Course View', 'web', 'Course', '2022-11-21 00:47:59', '2022-11-21 00:47:59'),
(48, 'Batch', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(49, 'Batch Create View', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(50, 'Batch Edit', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(51, 'Batch Create', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(52, 'Batch Delete', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(53, 'Teacher Assign View', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(54, 'Teacher Assign Edit', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(55, 'Teacher Assign Create', 'web', 'Batch', '2022-11-21 00:48:00', '2022-11-21 00:48:00'),
(56, 'Teacher Assign Delete', 'web', 'Batch', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(57, 'Batch List View', 'web', 'Batch', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(58, 'Class', 'web', 'Class', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(59, 'Class List View', 'web', 'Class', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(60, 'Admission', 'web', 'Admission', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(61, 'Admission View', 'web', 'Admission', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(62, 'Admission Edit', 'web', 'Admission', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(63, 'Admission Delete', 'web', 'Admission', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(64, 'Admission Show', 'web', 'Admission', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(65, 'Admission Create', 'web', 'Admission', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(66, 'Admission List View', 'web', 'Admission', '2022-11-21 00:48:01', '2022-11-21 00:48:01'),
(67, 'Panel', 'web', 'Student Panel', '2022-11-21 00:48:02', '2022-11-21 00:48:02'),
(68, 'Panel View', 'web', 'Student Panel', '2022-11-21 00:48:02', '2022-11-21 00:48:02'),
(69, 'Panel List View', 'web', 'Student Panel', '2022-11-21 00:48:02', '2022-11-21 00:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2022-11-21 00:47:55', '2022-11-21 00:47:55'),
(2, 'Admin', 'web', '2022-11-21 00:47:55', '2022-11-21 00:47:55'),
(3, 'Editor', 'web', '2022-11-21 00:47:55', '2022-11-21 00:47:55'),
(4, 'User', 'web', '2022-11-21 00:47:55', '2022-11-21 00:47:55'),
(5, 'Teacher', 'web', '2022-11-21 01:39:22', '2022-11-21 01:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 1),
(2, 5),
(3, 1),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 5),
(17, 1),
(17, 5),
(18, 1),
(18, 5),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(24, 5),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(29, 5),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(33, 5),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 5),
(43, 1),
(44, 1),
(44, 5),
(45, 1),
(46, 1),
(47, 1),
(47, 5),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(53, 5),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 5),
(58, 1),
(58, 5),
(59, 1),
(59, 5),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `company_name`, `company_phone`, `company_email`, `company_logo`, `web_link`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Kaizen', 'Kaizen IT LTD', '0217371232', 'info@kaizenitbd@gmail.com', 'kaizen.png', 'www.kaizenitbd.com', 'fdfgfrefd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacherassigns`
--

CREATE TABLE `teacherassigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `coursedetail_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacherassigns`
--

INSERT INTO `teacherassigns` (`id`, `designation`, `batch_id`, `teacher_id`, `coursedetail_id`, `created_at`, `updated_at`) VALUES
(1, 'Teacher', 1, 1, 1, NULL, NULL),
(2, 'Teacher', 2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_skill` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_name`, `teacher_phone`, `teacher_email`, `teacher_address`, `teacher_skill`, `teacher_about`, `teacher_image`, `created_at`, `updated_at`) VALUES
(1, 'MohamedNur', '0787546', 'mdnourabshir@gmail.com', 'fgjhjhg', 'ghhttyjhgf', 'hgfdshg', 'nour.JPG', NULL, NULL),
(2, 'Fraud', '8973256432', 'farid@gmail.com', 'gfdsaahfds', 'gfdsahgfdsa', 'jfsadfsaagfds', '311095934_182196921002306_2666309519888794248_n.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `admission_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `designation`, `image`, `email_verified_at`, `password`, `address`, `admission_id`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'Kaizen IT LTD', 'info@kaizenitbd.com', '01254365478', 'Super Admin', 'kaizen.png', NULL, '$2y$10$sotIV5vjwkuhAhvSoT6bV.D.Kr6PecV2sjSfVWkl7hJ99wJs1UvkS', 'Green Road, Dhaka', 0, NULL, NULL, NULL, 0, 'avatar.png', 0, '#2180f3'),
(2, 'Mohamed Nur', 'mdnourabshir@gmail.com', '01730931984', 'Teacher', 'nour.JPG', NULL, '$2y$10$4HXbYEuI0LNWF0z.9OGKi.vfsPM/6baVFeQq7DaGs/SwMXdUl/3y2', 'rampura', 0, NULL, '2022-11-21 01:41:07', '2022-11-21 04:31:36', 0, 'avatar.png', 0, '#2180f3'),
(3, 'gfcxvdfg', 'gdfgdf@hf.com', '798323435465', 'Student', '311095934_182196921002306_2666309519888794248_n.jpg', NULL, '$2y$10$Z9H05rT3n68ZRf6MFm9R/uCMYNCRiLPhXa8jRRG8M1nTzI2boozBC', 'rthgjhggfsd', 1, NULL, '2022-11-21 02:49:52', '2022-11-21 02:49:52', 0, 'avatar.png', 0, '#2180f3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admissions_course_id_foreign` (`course_id`),
  ADD KEY `admissions_batch_id_foreign` (`batch_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couresetopics`
--
ALTER TABLE `couresetopics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `couresetopics_coursedetail_id_foreign` (`coursedetail_id`);

--
-- Indexes for table `coursedetails`
--
ALTER TABLE `coursedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursedetails_course_id_foreign` (`course_id`),
  ADD KEY `coursedetails_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherassigns`
--
ALTER TABLE `teacherassigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacherassigns_batch_id_foreign` (`batch_id`),
  ADD KEY `teacherassigns_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacherassigns_coursedetail_id_foreign` (`coursedetail_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `couresetopics`
--
ALTER TABLE `couresetopics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coursedetails`
--
ALTER TABLE `coursedetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacherassigns`
--
ALTER TABLE `teacherassigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admissions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `couresetopics`
--
ALTER TABLE `couresetopics`
  ADD CONSTRAINT `couresetopics_coursedetail_id_foreign` FOREIGN KEY (`coursedetail_id`) REFERENCES `coursedetails` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coursedetails`
--
ALTER TABLE `coursedetails`
  ADD CONSTRAINT `coursedetails_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coursedetails_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD CONSTRAINT `noticeboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacherassigns`
--
ALTER TABLE `teacherassigns`
  ADD CONSTRAINT `teacherassigns_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacherassigns_coursedetail_id_foreign` FOREIGN KEY (`coursedetail_id`) REFERENCES `coursedetails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacherassigns_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
