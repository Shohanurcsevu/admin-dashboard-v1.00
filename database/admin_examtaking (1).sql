-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 01:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_examtaking`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `activity_message` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `activity_type`, `activity_message`, `timestamp`) VALUES
(1, 'Subject Created', 'A new subject was created: \'rtr\'', '2025-06-20 12:03:10'),
(2, 'Subject Updated', 'A  subject was updated: \'Bangla Literature\'', '2025-06-20 12:11:43'),
(3, 'Subject Updated', '\'Bangla Literature\' has been updated successfully.', '2025-06-20 19:17:33'),
(4, 'Subject Deleted', '\'\' has been deleted successfully.', '2025-06-20 19:20:18'),
(5, 'Subject Created', 'A new subject was created: \'Test to delete\'', '2025-06-20 19:21:13'),
(6, 'Subject Deleted', '\'\' has been deleted successfully.', '2025-06-20 19:21:38'),
(7, 'Subject Created', 'A new subject was created: \'Test to delete\'', '2025-06-20 19:22:56'),
(8, 'Subject Created', 'A new subject was created: \'Test to delete\'', '2025-06-20 19:25:33'),
(9, 'Subject Deleted', '\'16\' has been deleted successfully.', '2025-06-20 19:25:38'),
(10, 'Subject Created', 'A new subject was created: \'Test to delete\'', '2025-06-20 19:29:36'),
(11, 'Subject Deleted', 'Subject \'\' (ID: 17) has been deleted successfully.', '2025-06-20 19:30:14'),
(12, 'Subject Created', 'A new subject was created: \'Test to delete\'', '2025-06-20 19:33:21'),
(13, 'Subject Deleted', 'Subject \'\' (ID: 18) has been deleted successfully.', '2025-06-20 19:37:32'),
(14, 'Subject Created', 'A new subject was created: \'Test to delete\'', '2025-06-20 19:39:32'),
(15, 'Subject Deleted', 'Subject \'Test to delete\' (ID: 19) has been deleted successfully.', '2025-06-20 19:39:39'),
(16, 'Subject Created', 'Lesson \'Test Leeson Notification\' was created successfully.', '2025-06-20 19:47:36'),
(17, 'Lesson Created', 'Lesson \'T\' was created successfully.', '2025-06-20 19:49:44'),
(18, 'Lesson Updated', 'Lesson \'T\' was updated successfully.', '2025-06-20 19:51:22'),
(19, 'Lesson Deleted', 'Lesson \'\' (ID: 10) has been deleted successfully.', '2025-06-20 20:02:59'),
(20, 'Lesson Deleted', 'Lesson \'Test Leeson Notification\' (ID: 9) has been deleted successfully.', '2025-06-20 20:05:24'),
(21, 'Topic Created', 'Topic \'Test to delete \' has been created.', '2025-06-20 20:12:07'),
(22, 'Topic Updated', 'Topic \'Test to delete \' has been updated successfully.', '2025-06-20 20:12:23'),
(23, 'Topic Deleted', 'Topic \'Test to delete \' (ID: 7) has been deleted.', '2025-06-20 20:14:41'),
(24, 'Exam Created', 'Exam \'Test exam on notification\' has been created successfully.', '2025-06-20 20:24:59'),
(25, 'Exam Updated', 'Exam \'Test exam on notification\' (ID: 17) updated. Changes: Pass Mark: 12.00 → 12.01.', '2025-06-20 20:25:23'),
(26, 'Exam Deleted', 'Exam \'Test exam on notification\' (ID: 17) has been deleted successfully.', '2025-06-20 20:26:57'),
(27, 'Lesson Updated', 'Lesson \'Test ANopther\' (ID: 7) updated. Changes: Name: \'Test ANopther\' → \'Test ANopthert\'; Expected Topics: 1 → 4; Start Page: 1 → 3; End Page: 1 → 2; Previous BCS Questions: 1 → 15.', '2025-06-20 20:29:57'),
(28, 'Topic Updated', 'Topic \'Testtopiv\' (ID: 6) updated. Changes: Name: \'Testtopiv\' → \'Test update notification\'; Start Page: 1 → 7; End Page: 1 → 5; Expected Exams: 1 → 4.', '2025-06-20 20:32:40'),
(29, 'Subject Updated', 'Subject \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\' (ID: 10) updated. Changes: Lessons: 45 → 47; Pages: 45 → 43; Start Date: 2025-06-19 → 2025-06-27; End Date: 2025-07-23 → 2025-08-14; Category: \'IT\' → \'Science\'.', '2025-06-20 20:35:13'),
(30, 'Exam Created', 'Exam \'Test import notification\' has been created successfully.', '2025-06-20 20:42:23'),
(31, 'Questions Imported', '2 questions were imported into Exam ID: 18 (Subject ID: 10, Lesson ID: 4, Topic ID: 3)', '2025-06-20 20:42:50'),
(32, 'Questions Imported', '2 questions were imported into Exam ID: 18 (Subject: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\', Lesson: \'আইটি \', Topic: \'টপিক আইটি \')', '2025-06-20 20:49:17'),
(33, 'Questions Imported', '2 questions were imported into Exam \'Test import notification\' (Subject: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\', Lesson: \'আইটি \', Topic: \'টপিক আইটি \').', '2025-06-20 21:00:28'),
(34, 'Question Updated', 'Question ID 62 was updated in Exam \'টপিক চর্যাপদ এক্সাম\' (Subject: \'বাংলা সাহিত্য - ২০\', Lesson: \' চর্যাপদ \'). New question: \'According to the table, what period spanned from 4...\'', '2025-06-20 21:03:36'),
(35, 'Question Updated', 'Question ID 62 was updated in Exam \'টপিক চর্যাপদ এক্সাম\' (Subject: \'বাংলা সাহিত্য - ২০\', Lesson: \' চর্যাপদ \'). New question: \'According to the table, what period spanned from 4...\'', '2025-06-20 21:03:59'),
(36, 'Question Updated', 'Question ID 63 was updated in Exam \'টপিক চর্যাপদ এক্সাম\' (Subject: \'বাংলা সাহিত্য - ২০\', Lesson: \' চর্যাপদ \'). New question: \'Which period is described as spanning from 1066 to...\'', '2025-06-20 21:04:19'),
(37, 'Questions Imported', '2 questions were imported into Exam \'Test import notification\' (Subject: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\', Lesson: \'আইটি \', Topic: \'টপিক আইটি \').', '2025-06-20 21:06:19'),
(38, 'Question Updated', 'Question ID 133 was updated in Exam \'Test import notification\' (Subject: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\', Lesson: \'আইটি \'). New question: \'হিট্রাইট সভ্যতা কত...\'', '2025-06-20 21:11:29'),
(39, 'Question Deleted', 'Question ID 133 deleted. Text: \'হিট্রাইট সভ্যতা কত...\'', '2025-06-20 21:17:01'),
(40, 'Question Deleted', 'Question ID 121 deleted. Text: \'Which literary period occurred between 1500 and 15...\'', '2025-06-20 21:17:29'),
(41, 'Custom Exam Created', 'A custom exam titled \'exam from exams to check notification\' was created (Subject: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\', Lesson: \'আইটি \', Topic: \'টপিক আইটি \').', '2025-06-20 21:24:13'),
(42, 'Exam Deleted', 'Exam \'1\' (ID: 25) has been deleted successfully.', '2025-06-20 23:38:27'),
(43, 'Exam Deleted', 'Exam \'check again\' (ID: 24) has been deleted successfully.', '2025-06-20 23:38:30'),
(44, 'Subject Created', 'A new subject was created: \'Test Subjet\'', '2025-06-21 07:29:21'),
(45, 'Subject Updated', 'Subject \'Test Subjet\' (ID: 20) updated. Changes: End Date: 2025-07-04 → 2025-07-25; Category: \'Bank\' → \'Science\'.', '2025-06-21 07:30:54'),
(46, 'Subject Updated', 'Subject \'Test Subjet\' (ID: 20) updated. Changes: Lessons: 12 → 123; Category: \'Science\' → \'Bank\'.', '2025-06-21 07:33:58'),
(47, 'Subject Deleted', 'Subject \'Test Subjet\' (ID: 20) has been deleted successfully.', '2025-06-21 07:34:43'),
(48, 'Subject Created', 'A new subject was created: \'Test subject to test lesson\'', '2025-06-21 07:35:32'),
(49, 'Lesson Created', 'Lesson \'Test lesson of tst subject\' was created successfully.', '2025-06-21 07:35:50'),
(50, 'Lesson Updated', 'Lesson \'Test lesson of tst subject\' (ID: 11) updated. Changes: End Page: 45 → 46.', '2025-06-21 07:36:03'),
(51, 'Topic Created', 'Topic \'Test topic of test lesson and test subject\' has been created.', '2025-06-21 07:36:45'),
(52, 'Topic Updated', 'Topic \'Test topic of test lesson and test subject\' (ID: 8) updated. Changes: Expected Exams: 6 → 8.', '2025-06-21 07:37:07'),
(53, 'Exam Created', 'Exam \'Test Exam of test topic of test lesson of test subject\' has been created successfully.', '2025-06-21 07:38:13'),
(54, 'Exam Updated', 'Exam \'Test Exam of test topic of test lesson of test subject\' (ID: 39) updated. Changes: Duration: 12 → 10 mins; Total Marks: 12.00 → 12.02; Pass Mark: 12.00 → 12.02.', '2025-06-21 07:38:50'),
(55, 'Questions Imported', '61 questions were imported into Exam \'Test Exam of test topic of test lesson of test subject\' (Subject: \'Test subject to test lesson\', Lesson: \'Test lesson of tst subject\', Topic: \'Test topic of test lesson and test subject\').', '2025-06-21 07:39:54'),
(56, 'Exam from Exam Created', 'A Exam from  exam titled \'test exam from exams\' was created (Subject: \'Test subject to test lesson\', Lesson: \'Test lesson of tst subject\', Topic: \'Test topic of test lesson and test subject\').', '2025-06-21 07:40:26'),
(57, 'Exam from Exam Created', 'A model test titled \'cherabara\' was created (Subject: \'বাংলা সাহিত্য - ২০\', Lesson: \' চর্যাপদ \', Topic: \'টপিক চর্যাপদ \').', '2025-06-21 10:26:02'),
(58, 'Exam from Topics Created', 'A topic-based model test titled \'test from topics\' was created (Subject: \'বাংলা সাহিত্য - ২০\', Lesson: \' চর্যাপদ \', Topics: টপিক চর্যাপদ ).', '2025-06-21 10:32:15'),
(59, 'Exam from Lessons Created', 'A custom model test titled \'test from leesons\' was created from lessons (Subject: \'বাংলা সাহিত্য - ২০\', Lessons:  চর্যাপদ ).', '2025-06-21 10:37:15'),
(60, 'Exam from Lessons Created', 'A custom model test titled \'check noiti\' was created from lessons (Subject: \'বাংলা ব্যাকরণ - ১৫\', Lessons: বাগধারা ).', '2025-06-21 11:04:34'),
(61, 'Model Test Created', 'New model test created: \'hghg\'', '2025-06-21 11:21:37'),
(62, 'Subject Updated', 'Subject \'বাংলা সাহিত্য - ২০\' (ID: 7) updated. Changes: Pages: 81 → 82.', '2025-06-21 11:54:44'),
(63, 'Subject Updated', 'Subject \'বাংলা সাহিত্য - ২০\' (ID: 7) updated. Changes: End Date: 2025-08-31 → 2025-09-05.', '2025-06-21 11:56:36'),
(64, 'Model Test Created', 'New model test created: \'n\'', '2025-06-21 11:56:56'),
(65, 'Exam Created', 'Exam \'blank\' has been created successfully.', '2025-06-21 12:21:47'),
(66, 'Questions Imported', '5 questions were imported into Exam \'blank\' (Subject: \'বাংলা সাহিত্য - ২০\', Lesson: \' চর্যাপদ \', Topic: \'টপিক চর্যাপদ \').', '2025-06-21 12:21:57'),
(67, 'Lesson Updated', 'Lesson \'Test lesson of tst subject\' (ID: 11) updated. Changes: End Page: 46 → 49.', '2025-06-21 18:54:06'),
(68, 'Exam from Lessons Created', 'A custom model test titled \'5\' was created from lessons (Subject: \'বাংলা সাহিত্য - ২০\', Lessons:  চর্যাপদ ).', '2025-06-21 19:28:05'),
(69, 'Exam Submitted', 'Exam \'n\' submitted with score 1', '2025-06-21 20:29:04'),
(70, 'Exam Submitted', 'Exam \'n\' submitted with score 1', '2025-06-21 20:31:47'),
(71, 'Exam Attempted', 'Exam \'n\' submitted with score 1', '2025-06-21 20:32:43'),
(72, 'Question Updated', 'Question ID 55 was updated in Exam \'টপিক তাপবিদ্যা এক্সাম \' (Subject: \'সাধারণ বিজ্ঞান - ১৫\', Lesson: \'তাপবিদ্যা \'). New question: \'মায়া সভ্যতাটি আবিষ...\'', '2025-06-21 20:33:23'),
(73, 'Subject Created', 'A new subject was created: \'বাংলা সাহিত্য - ২০ \'', '2025-06-21 21:25:54'),
(74, 'Subject Created', 'A new subject was created: \'বাংলা ব্যাকরণ - ১৫ \'', '2025-06-21 21:29:14'),
(75, 'Subject Created', 'A new subject was created: \'English Literature - 15\'', '2025-06-21 21:31:28'),
(76, 'Subject Created', 'A new subject was created: \'English Grammar\'', '2025-06-21 21:32:31'),
(77, 'Subject Created', 'A new subject was created: \'বাংলাদেশ বিষয়াবলী - ৩০\'', '2025-06-21 21:35:30'),
(78, 'Subject Created', 'A new subject was created: \'আন্তর্জাতিক বিষয়াবলী - ২০\'', '2025-06-21 21:37:12'),
(79, 'Subject Created', 'A new subject was created: \'ভূগোল ( বাংলাদেশ ও বিশ্ব ) , পরিবেশ ও দুর্যোগ ব্যাবস্থাপনা - ১০\'', '2025-06-21 21:38:49'),
(80, 'Subject Created', 'A new subject was created: \'সাধারণ বিজ্ঞান - ১৫\'', '2025-06-21 21:40:28'),
(81, 'Subject Created', 'A new subject was created: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\'', '2025-06-21 21:42:29'),
(82, 'Subject Created', 'A new subject was created: \'গাণিতিক যুক্তি - ১৫\'', '2025-06-21 21:44:08'),
(83, 'Subject Created', 'A new subject was created: \'মানসিক দক্ষতা -১৫\'', '2025-06-21 21:45:19'),
(84, 'Subject Created', 'A new subject was created: \'নৈতিকতা , মূল্যবোধ ও সুশাসন - ১০\'', '2025-06-21 21:46:32'),
(85, 'Subject Updated', 'Subject \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\' (ID: 9) updated. Changes: Category: \'Science\' → \'IT\'.', '2025-06-21 21:46:40'),
(86, 'Subject Updated', 'Subject \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\' (ID: 9) updated. Changes: Name: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\' → \'Job Solution\'; Book: \'Cloud IT Solution\' → \'Professor\'s Job Soltuion\'; Lessons: 32 → 7; Pages: 989 → 1676; Category: \'IT\' → \'General\'.', '2025-06-21 21:48:41'),
(87, 'Subject Updated', 'Subject \'Job Solution\' (ID: 9) updated. Changes: Name: \'Job Solution\' → \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\'; Book: \'Professor\'s Job Soltuion\' → \'Cloud IT Solution\'; Lessons: 7 → 32; Pages: 1676 → 989; Category: \'General\' → \'IT\'.', '2025-06-21 21:51:03'),
(88, 'Subject Updated', 'Subject \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\' (ID: 9) updated. Changes: Name: \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\' → \'Job Solution - 2024\'; Book: \'Cloud IT Solution\' → \'Professor\'s Job Soltuion\'; Lessons: 32 → 7; Pages: 989 → 1676; Category: \'IT\' → \'General\'.', '2025-06-21 21:52:18'),
(89, 'Subject Created', 'A new subject was created: \'t\'', '2025-06-21 21:53:12'),
(90, 'Subject Updated', 'Subject \'Job Solution - 2024\' (ID: 9) updated. Changes: Name: \'Job Solution - 2024\' → \'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫\'; Book: \'Professor\'s Job Soltuion\' → \'Cloud IT Solution\'; Lessons: 7 → 32; Pages: 1676 → 988; Category: \'General\' → \'IT\'.', '2025-06-21 21:54:13'),
(91, 'Subject Updated', 'Subject \'t\' (ID: 13) updated. Changes: Name: \'t\' → \'Job Soltuion - 2024\'; Book: \'t\' → \'Professor\'s Job Soltuion\'; Lessons: 4 → 7; Pages: 4 → 1676; Start Date: 2025-06-25 → 2025-06-22; End Date: 2025-06-24 → 2025-08-31; Category: \'Science\' → \'General\'.', '2025-06-21 21:55:14'),
(92, 'Subject Updated', 'Subject \'Job Soltuion - 2024\' (ID: 13) updated. Changes: Name: \'Job Soltuion - 2024\' → \'Bank\'; Book: \'Professor\'s Job Soltuion\' → \'Professor\'s  Key To  Bank Job - 2022\'; Lessons: 7 → 23; Pages: 1676 → 1124.', '2025-06-21 21:57:15'),
(93, 'Subject Updated', 'Subject \'Bank\' (ID: 13) updated. Changes: Name: \'Bank\' → \'Job Solution \'; Book: \'Professor\'s  Key To  Bank Job - 2022\' → \'Professor\'s Job Soltuion - 2024\'; Lessons: 23 → 7; Pages: 1124 → 1676.', '2025-06-21 21:58:36'),
(94, 'Subject Created', 'A new subject was created: \'Bank\'', '2025-06-21 22:00:45'),
(95, 'Lesson Created', 'Lesson \'প্রাচীন যুগ \' was created successfully.', '2025-06-21 22:04:29'),
(96, 'Lesson Created', 'Lesson \'মধ্যযুগ\' was created successfully.', '2025-06-21 22:06:42'),
(97, 'Lesson Created', 'Lesson \'আধুনিক যুগ \' was created successfully.', '2025-06-21 22:07:43'),
(98, 'Lesson Updated', 'Lesson \'আধুনিক যুগ \' (ID: 3) updated. Changes: Expected Topics: 1 → 11.', '2025-06-21 22:08:19'),
(99, 'Lesson Created', 'Lesson \'আধুনিক যুগের উল্লেখযোগ্য সাহিত্যিক ও তাঁদের সাহিত্যকর্ম \' was created successfully.', '2025-06-21 22:09:39'),
(100, 'Lesson Created', 'Lesson \'অন্যান্য গুরুত্তপূর্ণ তথ্য \' was created successfully.', '2025-06-21 22:10:40'),
(101, 'Lesson Created', 'Lesson \'বাগধারা \' was created successfully.', '2025-06-21 22:12:46'),
(102, 'Lesson Created', 'Lesson \'সমার্থক শব্দ \' was created successfully.', '2025-06-21 22:13:39'),
(103, 'Lesson Created', 'Lesson \'শব্দার্থ / প্রতিশব্দ \' was created successfully.', '2025-06-21 22:14:07'),
(104, 'Lesson Created', 'Lesson \'বিপরীত শব্দ \' was created successfully.', '2025-06-21 22:14:26'),
(105, 'Lesson Created', 'Lesson \'এক কথায় প্রকাশ \' was created successfully.', '2025-06-21 22:14:48'),
(106, 'Lesson Created', 'Lesson \'পারিভাষিক শব্দ \' was created successfully.', '2025-06-21 22:15:08'),
(107, 'Lesson Created', 'Lesson \'প্রবাদ প্রবচন \' was created successfully.', '2025-06-21 22:15:41'),
(108, 'Lesson Created', 'Lesson \'Translation \' was created successfully.', '2025-06-21 22:16:13'),
(109, 'Lesson Created', 'Lesson \'একই শব্দের ভিন্নার্থে প্রয়োগ \' was created successfully.', '2025-06-21 22:17:13'),
(110, 'Lesson Created', 'Lesson \'প্রায় সমোচ্চারিত ভিন্নার্থক শব্দ  \' was created successfully.', '2025-06-21 22:18:32'),
(111, 'Subject Updated', 'Subject \'বাংলা ব্যাকরণ - ১৫ \' (ID: 2) updated. Changes: Lessons: 43 → 44.', '2025-06-21 22:39:42'),
(112, 'Lesson Created', 'Lesson \'Literary Terms\' was created successfully.', '2025-06-21 22:51:00'),
(113, 'Subject Updated', 'Subject \'English Grammar\' (ID: 4) updated. Changes: Lessons: 59 → 62.', '2025-06-21 23:55:08'),
(114, 'Lesson Created', 'Lesson \'বিশ্ব সভ্যতা \' was created successfully.', '2025-06-22 07:56:25'),
(115, 'Topic Created', 'Topic \'বিশ্ব সভ্যতা \' has been created.', '2025-06-22 07:57:43'),
(116, 'Exam Created', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' has been created successfully.', '2025-06-22 07:58:22'),
(117, 'Exam Created', 'Exam \'হিট্রাইট সভ্যতা - মায়া সভ্যতা\' has been created successfully.', '2025-06-22 07:59:01'),
(118, 'Exam Updated', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' (ID: 1) updated. Changes: Duration: 71 → 30 mins; Total Marks: 71.00 → 63; Pass Mark: 71.00 → 63.', '2025-06-22 08:25:32'),
(119, 'Questions Imported', '63 questions were imported into Exam \'মেসোপটেমীয় - ফিনিশীয়\' (Subject: \'আন্তর্জাতিক বিষয়াবলী - ২০\', Lesson: \'বিশ্ব সভ্যতা \', Topic: \'বিশ্ব সভ্যতা \').', '2025-06-22 08:25:41'),
(120, 'Exam Attempted', 'Exam \'হিট্রাইট সভ্যতা - মায়া সভ্যতা\' submitted with score 0', '2025-06-22 09:05:17'),
(121, 'Exam Attempted', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' submitted with score 0', '2025-06-22 09:10:23'),
(122, 'Exam Attempted', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' submitted with score 0', '2025-06-22 09:27:58'),
(123, 'Exam Attempted', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' submitted with score 1', '2025-06-22 09:39:25'),
(124, 'Exam Attempted', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' submitted with score -0.5', '2025-06-22 09:45:20'),
(125, 'Exam Attempted', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' submitted with score 35', '2025-06-23 07:41:56'),
(126, 'Exam from Exam Created', 'A model test titled \'Custom 1\' was created (Subject: \'আন্তর্জাতিক বিষয়াবলী - ২০\', Lesson: \'বিশ্ব সভ্যতা \', Topic: \'বিশ্ব সভ্যতা \').', '2025-06-23 07:45:19'),
(127, 'Exam Attempted', 'Exam \'Custom 1\' submitted with score 9', '2025-06-23 07:48:24'),
(128, 'Exam Attempted', 'Exam \'Custom 1\' submitted with score 10', '2025-06-23 08:11:50'),
(129, 'Exam Deleted', 'Exam \'Custom 1\' (ID: 3) has been deleted successfully.', '2025-06-23 08:12:48'),
(130, 'Exam Attempted', 'Exam \'মেসোপটেমীয় - ফিনিশীয়\' submitted with score 0', '2025-06-23 08:14:33'),
(131, 'Lesson Created', 'Lesson \'46th BCS Preliminary Test 2024\' was created successfully.', '2025-06-23 12:31:15'),
(132, 'Topic Created', 'Topic \'বাংলা সাহিত্য \' has been created.', '2025-06-23 12:32:01'),
(133, 'Topic Created', 'Topic \'বাংলা ব্যাকরণ \' has been created.', '2025-06-23 12:33:48'),
(134, 'Topic Created', 'Topic \'English Grammar\' has been created.', '2025-06-23 12:35:23'),
(135, 'Exam Created', 'Exam \'৪৬ তম বাংলা ব্যাকরণ \' has been created successfully.', '2025-06-23 12:39:20'),
(136, 'Exam Updated', 'Exam \'৪৬ তম বাংলা ব্যাকরণ \' (ID: 4) updated. Changes: Topic ID: 2 → 3.', '2025-06-23 12:43:04'),
(137, 'Questions Imported', '5 questions were imported into Exam \'৪৬ তম বাংলা ব্যাকরণ \' (Subject: \'Job Solution \', Lesson: \'46th BCS Preliminary Test 2024\', Topic: \'বাংলা ব্যাকরণ \').', '2025-06-23 12:47:35'),
(138, 'Questions Imported', '11 questions were imported into Exam \'৪৬ তম বাংলা ব্যাকরণ \' (Subject: \'Job Solution \', Lesson: \'46th BCS Preliminary Test 2024\', Topic: \'বাংলা ব্যাকরণ \').', '2025-06-23 13:08:50'),
(139, 'Question Deleted', 'Question ID 89 deleted. Text: \'চর্যাপদের কবিরা কো...\'', '2025-06-23 13:09:07'),
(140, 'Exam Created', 'Exam \'৪৬ তম বাংলা সাহিত্য  \' has been created successfully.', '2025-06-23 13:36:08'),
(141, 'Questions Imported', '20 questions were imported into Exam \'৪৬ তম বাংলা সাহিত্য  \' (Subject: \'Job Solution \', Lesson: \'46th BCS Preliminary Test 2024\', Topic: \'বাংলা সাহিত্য \').', '2025-06-23 13:36:17'),
(142, 'Exam Created', 'Exam \'46th English Grammar\' has been created successfully.', '2025-06-23 13:40:30'),
(143, 'Questions Imported', '24 questions were imported into Exam \'46th English Grammar\' (Subject: \'Job Solution \', Lesson: \'46th BCS Preliminary Test 2024\', Topic: \'English Grammar\').', '2025-06-23 13:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `exam_title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'in minutes',
  `instructions` text DEFAULT NULL,
  `total_marks` decimal(10,2) NOT NULL,
  `pass_mark` decimal(10,2) NOT NULL,
  `negative_mark_value` decimal(4,2) NOT NULL DEFAULT 0.50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `subject_id`, `lesson_id`, `topic_id`, `exam_title`, `duration`, `instructions`, `total_marks`, `pass_mark`, `negative_mark_value`) VALUES
(1, 6, 130, 1, 'মেসোপটেমীয় - ফিনিশীয়', 30, 'প্রতিটি প্রশ্নের ৪ (চার) টি উত্তরের মধ্যে ১ (এক) টি সঠিক উত্তর রয়েছে। প্রতিটি শুদ্ধ উত্তরের জন্য প্রার্থী ১ (এক) নম্বর পাবেন। প্রতিটি ভুল উত্তরের জন্য ০.৫ ( শূন্য দশমিক পাঁচ ) নম্বর কাটা যাবে।', 63.00, 63.00, 0.50),
(2, 6, 130, 1, 'হিট্রাইট সভ্যতা - মায়া সভ্যতা', 53, 'প্রতিটি প্রশ্নের ৪ (চার) টি উত্তরের মধ্যে ১ (এক) টি সঠিক উত্তর রয়েছে। প্রতিটি শুদ্ধ উত্তরের জন্য প্রার্থী ১ (এক) নম্বর পাবেন। প্রতিটি ভুল উত্তরের জন্য ০.৫ ( শূন্য দশমিক পাঁচ ) নম্বর কাটা যাবে।', 53.00, 53.00, 0.50),
(4, 13, 131, 3, '৪৬ তম বাংলা ব্যাকরণ ', 5, 'প্রতিটি প্রশ্নের ৪ (চার) টি উত্তরের মধ্যে ১ (এক) টি সঠিক উত্তর রয়েছে। প্রতিটি শুদ্ধ উত্তরের জন্য প্রার্থী ১ (এক) নম্বর পাবেন। প্রতিটি ভুল উত্তরের জন্য ০.৫ ( শূন্য দশমিক পাঁচ ) নম্বর কাটা যাবে।', 15.00, 15.00, 0.50),
(5, 13, 131, 2, '৪৬ তম বাংলা সাহিত্য  ', 10, 'প্রতিটি প্রশ্নের ৪ (চার) টি উত্তরের মধ্যে ১ (এক) টি সঠিক উত্তর রয়েছে। প্রতিটি শুদ্ধ উত্তরের জন্য প্রার্থী ১ (এক) নম্বর পাবেন। প্রতিটি ভুল উত্তরের জন্য ০.৫ ( শূন্য দশমিক পাঁচ ) নম্বর কাটা যাবে।', 20.00, 20.00, 0.50),
(6, 13, 131, 4, '46th English Grammar', 10, 'প্রতিটি প্রশ্নের ৪ (চার) টি উত্তরের মধ্যে ১ (এক) টি সঠিক উত্তর রয়েছে। প্রতিটি শুদ্ধ উত্তরের জন্য প্রার্থী ১ (এক) নম্বর পাবেন। প্রতিটি ভুল উত্তরের জন্য ০.৫ ( শূন্য দশমিক পাঁচ ) নম্বর কাটা যাবে।', 24.00, 24.00, 0.50);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `lesson_name` varchar(255) NOT NULL,
  `expected_topics` int(11) NOT NULL,
  `start_page` int(11) NOT NULL,
  `end_page` int(11) NOT NULL,
  `py_bcs_ques` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `subject_id`, `lesson_name`, `expected_topics`, `start_page`, `end_page`, `py_bcs_ques`) VALUES
(1, 1, 'প্রাচীন যুগ ', 2, 15, 21, 21),
(2, 1, 'মধ্যযুগ', 8, 22, 47, 1),
(3, 1, 'আধুনিক যুগ ', 11, 1, 1, 1),
(4, 1, 'আধুনিক যুগের উল্লেখযোগ্য সাহিত্যিক ও তাঁদের সাহিত্যকর্ম ', 15, 1, 1, 1),
(5, 1, 'অন্যান্য গুরুত্তপূর্ণ তথ্য ', 9, 1, 1, 1),
(6, 2, 'বাগধারা ', 50, 1, 1, 1),
(7, 2, 'সমার্থক শব্দ ', 1, 1, 1, 1),
(8, 2, 'শব্দার্থ / প্রতিশব্দ ', 1, 1, 1, 1),
(9, 2, 'বিপরীত শব্দ ', 1, 1, 1, 1),
(10, 2, 'এক কথায় প্রকাশ ', 1, 1, 1, 1),
(11, 2, 'পারিভাষিক শব্দ ', 1, 1, 1, 1),
(12, 2, 'প্রবাদ প্রবচন ', 1, 1, 1, 1),
(13, 2, 'Translation ', 1, 1, 1, 1),
(14, 2, 'একই শব্দের ভিন্নার্থে প্রয়োগ ', 1, 1, 1, 1),
(15, 2, 'প্রায় সমোচ্চারিত ভিন্নার্থক শব্দ  ', 1, 1, 1, 1),
(16, 2, 'বিসিএস প্রিলি এবং লিখিত প্রশ্নোত্তর', 1, 1, 1, 1),
(17, 2, 'ভাষা ও বাংলা ভাষা', 1, 1, 1, 1),
(18, 2, 'বাংলা ভাষার রীতি ও বিভাজন', 1, 1, 1, 1),
(19, 2, 'বাংলা লিপি', 1, 1, 1, 1),
(20, 2, 'বাংলা ব্যাকরণ', 1, 1, 1, 1),
(21, 2, 'ব্যাগ যন্ত্র', 1, 1, 1, 1),
(22, 2, 'ধ্বনি প্রকরণ', 1, 1, 1, 1),
(23, 2, 'বর্ণের উচ্চারণ', 1, 1, 1, 1),
(24, 2, 'ধ্বনির পরিবর্তন', 1, 1, 1, 1),
(25, 2, 'ণ-ত্ব ও ষ-ত্ব বিধান', 1, 1, 1, 1),
(26, 2, 'সন্ধি', 1, 1, 1, 1),
(27, 2, 'শব্দ সম্ভার', 1, 1, 1, 1),
(28, 2, 'নর ও নারীবাচক শব্দ', 1, 1, 1, 1),
(29, 2, 'সংখ্যাবাচক শব্দ', 1, 1, 1, 1),
(30, 2, 'শব্দ দ্বিত্ব', 1, 1, 1, 1),
(31, 2, 'বচন', 1, 1, 1, 1),
(32, 2, 'নির্দেশক', 1, 1, 1, 1),
(33, 2, 'উপসর্গ', 1, 1, 1, 1),
(34, 2, 'সমাস', 1, 1, 1, 1),
(35, 2, 'ধাতু', 1, 1, 1, 1),
(36, 2, 'প্রকৃতি ও প্রত্যয়', 1, 1, 1, 1),
(37, 2, 'শব্দ ও পদের গঠন', 1, 1, 1, 1),
(38, 2, 'পদ প্রকরণ', 1, 1, 1, 1),
(39, 2, 'ক্রিয়ার কাল', 1, 1, 1, 1),
(40, 2, 'ক্রিয়ার ভাব ও পুরুষ', 1, 1, 1, 1),
(41, 2, 'কারক ও বিভক্তি', 1, 1, 1, 1),
(42, 2, 'বাক্য প্রকরণ', 1, 1, 1, 1),
(43, 2, 'বাক্যের বর্গ', 1, 1, 1, 1),
(44, 2, 'বাচ্য', 1, 1, 1, 1),
(45, 2, 'যতি চিহ্ন', 1, 1, 1, 1),
(46, 2, 'উক্তি', 1, 1, 1, 1),
(47, 2, 'বাগর্থের শ্রেণি', 1, 1, 1, 1),
(48, 2, 'বানান ও বাক্যশুদ্ধি; প্রয়োগ-অপপ্রয়োগ', 1, 1, 1, 1),
(49, 2, 'ছন্দ ও অলংকার', 1, 1, 1, 1),
(50, 3, 'Literary Terms', 1, 1, 1, 1),
(51, 3, 'The Old English Period', 1, 1, 1, 1),
(52, 3, 'The Middle English Period', 1, 1, 1, 1),
(53, 3, 'Preparation Period for The Renaissance', 1, 1, 1, 1),
(54, 3, 'The Elizabethan Period', 1, 1, 1, 1),
(55, 3, 'William Shakespeare', 1, 1, 1, 1),
(56, 3, 'Jacobean Period', 1, 1, 1, 1),
(57, 3, 'Carolinian Period', 1, 1, 1, 1),
(58, 3, 'Commonwealth Period', 1, 1, 1, 1),
(59, 3, 'Restoration Period', 1, 1, 1, 1),
(60, 3, 'The Augustan Period', 1, 1, 1, 1),
(61, 3, 'The Age of Sensibility', 1, 1, 1, 1),
(62, 3, 'The Romantic Period', 1, 1, 1, 1),
(63, 3, 'The Victorian Period', 1, 1, 1, 1),
(64, 3, 'The Edwardian Period', 1, 1, 1, 1),
(65, 3, 'The Georgian Period', 1, 1, 1, 1),
(66, 3, 'Post-Modern Period', 1, 1, 1, 1),
(67, 3, 'Some Essential Lists', 1, 1, 1, 1),
(68, 4, 'Parts of Speech', 1, 1, 1, 1),
(69, 4, 'Noun (kinds of noun, Determiners)', 1, 1, 1, 1),
(70, 4, 'Number', 1, 1, 1, 1),
(71, 4, 'Gender', 1, 1, 1, 1),
(72, 4, 'Pronoun', 1, 1, 1, 1),
(73, 4, 'Verb (Kinds of verb, Gerund, Participle, Conjugation)', 1, 1, 1, 1),
(74, 4, 'Adjective (অ্যাজেক্টিভ)', 1, 1, 1, 1),
(75, 4, 'Articles', 1, 1, 1, 1),
(76, 4, 'Degree of Comparison', 1, 1, 1, 1),
(77, 4, 'Adverb', 1, 1, 1, 1),
(78, 4, 'Conjunction & Linkers', 1, 1, 1, 1),
(79, 4, 'Interjection', 1, 1, 1, 1),
(80, 4, 'Identification of Parts of Speech', 1, 1, 1, 1),
(81, 4, 'Interchange of Parts of Speech', 1, 1, 1, 1),
(82, 4, 'Derivatives', 1, 1, 1, 1),
(83, 4, 'Latin Adjectives', 1, 1, 1, 1),
(84, 4, 'Suffix & Prefix, Affix', 1, 1, 1, 1),
(85, 4, 'Position of Parts of Speech', 1, 1, 1, 1),
(86, 4, 'Same Word used as Different Parts of Speech', 1, 1, 1, 1),
(87, 4, 'Preposition (প্রেপজিশন)', 1, 1, 1, 1),
(88, 4, 'Appropriate Prepositions', 1, 1, 1, 1),
(89, 4, 'Group Verbs / Phrasal Verbs / Verbal Idioms', 1, 1, 1, 1),
(90, 4, 'Identification of Tense', 1, 1, 1, 1),
(91, 4, 'Voice (Active and Passive Voice)', 1, 1, 1, 1),
(92, 4, 'Narration / Speech', 1, 1, 1, 1),
(93, 4, 'Subject-Verb Agreement', 1, 1, 1, 1),
(94, 4, 'Right Form of Verb [Causative Verbs, Modals]', 1, 1, 1, 1),
(95, 4, 'Sequence of Tense', 1, 1, 1, 1),
(96, 4, 'Conditional Sentence', 1, 1, 1, 1),
(97, 4, 'Parallelism & Structure Agreement', 1, 1, 1, 1),
(98, 4, 'Redundancy', 1, 1, 1, 1),
(99, 4, 'Inversion of Verb', 1, 1, 1, 1),
(100, 4, 'Affirmative & Negative Agreement', 1, 1, 1, 1),
(101, 4, 'Present Subjunctive', 1, 1, 1, 1),
(102, 4, 'Dangling Modifier', 1, 1, 1, 1),
(103, 4, 'Sentence (Kinds of Sentence)', 1, 1, 1, 1),
(104, 4, 'Identification of Phrase', 1, 1, 1, 1),
(105, 4, 'Identification of Clause', 1, 1, 1, 1),
(106, 4, 'Simple, Complex, Compound Sentence', 1, 1, 1, 1),
(107, 4, 'Tag Question', 1, 1, 1, 1),
(108, 4, 'WH Question & Embedded Question', 1, 1, 1, 1),
(109, 4, 'Correction', 1, 1, 1, 1),
(110, 4, 'Pinpoint Error', 1, 1, 1, 1),
(111, 4, 'Identifying the Missing Word in a Sentence', 1, 1, 1, 1),
(112, 4, 'Correct Spelling', 1, 1, 1, 1),
(113, 4, 'Vocabulary (Synonym & Antonym)', 1, 1, 1, 1),
(114, 4, 'Synonym', 1, 1, 1, 1),
(115, 4, 'Antonym', 1, 1, 1, 1),
(116, 4, 'Idioms & Phrases', 1, 1, 1, 1),
(117, 4, 'Foreign Phrases', 1, 1, 1, 1),
(118, 4, 'Substitution / Single Word', 1, 1, 1, 1),
(119, 4, 'Proverbs', 1, 1, 1, 1),
(120, 4, 'Difference Between Words', 1, 1, 1, 1),
(121, 4, 'Translation', 1, 1, 1, 1),
(122, 4, 'Miscellaneous', 1, 1, 1, 1),
(123, 4, 'Punctuation', 1, 1, 1, 1),
(124, 4, 'Letter', 1, 1, 1, 1),
(125, 4, 'Paragraph', 1, 1, 1, 1),
(126, 4, 'Analogy', 1, 1, 1, 1),
(127, 4, 'Literature, Literary Terms, Titles, Authors & Their Works', 1, 1, 1, 1),
(128, 4, 'Quotations', 1, 1, 1, 1),
(129, 4, 'Figures of Speech', 1, 1, 1, 1),
(130, 6, 'বিশ্ব সভ্যতা ', 3, 28, 35, 1),
(131, 13, '46th BCS Preliminary Test 2024', 13, 3, 30, 200);

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `exam_id` int(11) NOT NULL,
  `attempt_number` int(11) NOT NULL DEFAULT 1,
  `attempt_time` datetime NOT NULL DEFAULT current_timestamp(),
  `selected_answers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`selected_answers`)),
  `score` decimal(10,2) NOT NULL,
  `score_with_negative` decimal(10,2) NOT NULL,
  `right_answers` int(11) NOT NULL,
  `wrong_answers` int(11) NOT NULL,
  `unanswered` int(11) NOT NULL,
  `time_used_seconds` int(11) NOT NULL,
  `time_left_seconds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`id`, `subject_id`, `lesson_id`, `topic_id`, `exam_id`, `attempt_number`, `attempt_time`, `selected_answers`, `score`, `score_with_negative`, `right_answers`, `wrong_answers`, `unanswered`, `time_used_seconds`, `time_left_seconds`) VALUES
(1, 6, 130, 1, 2, 1, '2025-06-22 09:05:17', '[]', 0.00, 0.00, 0, 0, 0, 5, 3175),
(2, 6, 130, 1, 1, 1, '2025-06-22 09:10:23', '[]', 0.00, 0.00, 0, 0, 63, 4, 1796),
(3, 6, 130, 1, 1, 2, '2025-06-22 09:27:58', '[]', 0.00, 0.00, 0, 0, 63, 1800, 0),
(4, 6, 130, 1, 1, 3, '2025-06-22 09:39:25', '{\"50\":\"C\"}', 1.00, 1.00, 1, 0, 62, 10, 1790),
(5, 6, 130, 1, 1, 4, '2025-06-22 09:45:20', '{\"33\":\"A\"}', 0.00, -0.50, 0, 1, 62, 4, 1796),
(6, 6, 130, 1, 1, 5, '2025-06-23 07:41:56', '{\"1\":\"D\",\"2\":\"A\",\"6\":\"A\",\"7\":\"B\",\"10\":\"C\",\"11\":\"C\",\"12\":\"C\",\"13\":\"B\",\"14\":\"A\",\"17\":\"C\",\"18\":\"B\",\"19\":\"B\",\"20\":\"B\",\"22\":\"C\",\"23\":\"C\",\"24\":\"A\",\"25\":\"B\",\"26\":\"B\",\"27\":\"B\",\"28\":\"B\",\"30\":\"C\",\"31\":\"B\",\"32\":\"C\",\"33\":\"B\",\"34\":\"A\",\"35\":\"C\",\"40\":\"B\",\"43\":\"A\",\"45\":\"D\",\"46\":\"A\",\"48\":\"A\",\"49\":\"B\",\"51\":\"D\",\"52\":\"B\",\"53\":\"B\",\"55\":\"C\",\"57\":\"B\",\"58\":\"B\",\"60\":\"B\",\"61\":\"A\",\"62\":\"C\"}', 37.00, 35.00, 37, 4, 22, 272, 1528),
(9, 6, 130, 1, 1, 6, '2025-06-23 08:14:33', '[]', 0.00, 0.00, 0, 0, 63, 28, 1772);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `answer` varchar(10) NOT NULL,
  `explanation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `lesson_id`, `topic_id`, `exam_id`, `question`, `options`, `answer`, `explanation`) VALUES
(1, 6, 130, 1, 1, 'মায়া সভ্যতাটি কোথায় আবিষ্কৃত হয়?', '{\"A\":\"\\u0989\\u09a4\\u09cd\\u09a4\\u09b0 \\u0986\\u09ae\\u09c7\\u09b0\\u09bf\\u0995\\u09be\\u09df\",\"B\":\"\\u09a6\\u0995\\u09cd\\u09b7\\u09bf\\u09a3 \\u0986\\u09ae\\u09c7\\u09b0\\u09bf\\u0995\\u09be\\u09df\",\"C\":\"\\u09ae\\u09a7\\u09cd\\u09af \\u0986\\u09ab\\u09cd\\u09b0\\u09bf\\u0995\\u09be\\u09df\",\"D\":\"\\u09ae\\u09a7\\u09cd\\u09af \\u0986\\u09ae\\u09c7\\u09b0\\u09bf\\u0995\\u09be\\u09df\"}', 'D', 'মায়া সভ্যতা মধ্য আমেরিকায় আবিষ্কৃত হয়।'),
(2, 6, 130, 1, 1, 'ইনকা সভ্যতা কোন অঞ্চলে বিরাজমান ছিল?', '{\"A\":\"\\u09a6\\u0995\\u09cd\\u09b7\\u09bf\\u09a3 \\u0986\\u09ae\\u09c7\\u09b0\\u09bf\\u0995\\u09be\",\"B\":\"\\u0986\\u09ab\\u09cd\\u09b0\\u09bf\\u0995\\u09be\",\"C\":\"\\u09ae\\u09a7\\u09cd\\u09af\\u09aa\\u09cd\\u09b0\\u09be\\u099a\\u09cd\\u09af\",\"D\":\"\\u0987\\u0989\\u09b0\\u09cb\\u09aa\"}', 'A', 'ইনকা সভ্যতা দক্ষিণ আমেরিকা অঞ্চলে বিরাজমান ছিল।'),
(3, 6, 130, 1, 1, 'মেসোপটেমীয় সভ্যতা কোথায় গড়ে উঠেছিল?', '{\"A\":\"\\u09b9\\u09cb\\u09af\\u09bc\\u09be\\u0982\\u09b9\\u09cb \\u09a8\\u09a6\\u09c0\\u09b0 \\u09a4\\u09c0\\u09b0\\u09c7\",\"B\":\"\\u0987\\u09af\\u09bc\\u09be\\u0982\\u09b8\\u09bf\\u0995\\u09bf\\u09af\\u09bc\\u09be\\u0982 \\u09a8\\u09a6\\u09c0\\u09b0 \\u09a4\\u09c0\\u09b0\\u09c7\",\"C\":\"\\u09a8\\u09c0\\u09b2\\u09a8\\u09a6\\u09c7\\u09b0 \\u09a4\\u09c0\\u09b0\\u09c7\",\"D\":\"\\u099f\\u09be\\u0987\\u0997\\u09cd\\u09b0\\u09bf\\u09b8 \\u0993 \\u0987\\u0989\\u09ab\\u09cd\\u09b0\\u09c7\\u099f\\u09bf\\u09b8 \\u09a8\\u09a6\\u09c0\\u09b0 \\u09a4\\u09c0\\u09b0\\u09c7\"}', 'D', 'মেসোপটেমীয় সভ্যতা টাইগ্রিস ও ইউফ্রেটিস নদীর তীরে গড়ে উঠেছিল।'),
(4, 6, 130, 1, 1, 'বিশ্বের সবচেয়ে প্রাচীন সভ্যতা কোথায় গড়ে উঠেছিল?', '{\"A\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u09b8\\u09c7\",\"B\":\"\\u09ae\\u09c7\\u09b8\\u09cb\\u09aa\\u099f\\u09c7\\u09ae\\u09bf\\u09df\\u09be\\u09df\",\"C\":\"\\u09b0\\u09cb\\u09ae\\u09c7\",\"D\":\"\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\"}', 'B', 'বিশ্বের সবচেয়ে প্রাচীন সভ্যতা মেসোপটেমিয়ায় গড়ে উঠেছিল।'),
(5, 6, 130, 1, 1, '\'মেসোপটেমিয়া\' এলাকার বেশির ভাগ বর্তমানে কোন দেশে?', '{\"A\":\"\\u0987\\u09b0\\u09be\\u0995\",\"B\":\"\\u0987\\u09b0\\u09be\\u09a8\",\"C\":\"\\u09a4\\u09c1\\u09b0\\u09b8\\u09cd\\u0995\",\"D\":\"\\u09b8\\u09bf\\u09b0\\u09bf\\u09df\\u09be\"}', 'A', '\'মেসোপটেমিয়া\' এলাকার বেশির ভাগ বর্তমানে ইরাকে অবস্থিত।'),
(6, 6, 130, 1, 1, 'ক্যাটালন কোন দেশের ভাষা?', '{\"A\":\"\\u09b8\\u09cd\\u09aa\\u09c7\\u09a8\",\"B\":\"\\u09ac\\u09c7\\u09b2\\u099c\\u09bf\\u09df\\u09be\\u09ae\",\"C\":\"\\u09a8\\u09be\\u0987\\u099c\\u09c7\\u09b0\\u09bf\\u09df\\u09be\",\"D\":\"\\u09ae\\u0999\\u09cd\\u0997\\u09cb\\u09b2\\u09bf\\u09df\\u09be\"}', 'A', 'ক্যাটালন স্পেনের ভাষা।'),
(7, 6, 130, 1, 1, '\'ব্যাবিলনের ঝুলন্ত উদ্যান\' কোন দেশে অবস্থিত?', '{\"A\":\"\\u0987\\u09b0\\u09be\\u09a8\",\"B\":\"\\u0987\\u09b0\\u09be\\u0995\",\"C\":\"\\u09ae\\u09bf\\u09b6\\u09b0\",\"D\":\"\\u09b8\\u09bf\\u09b0\\u09bf\\u09df\\u09be\"}', 'B', '\'ব্যাবিলনের ঝুলন্ত উদ্যান\' ইরাকে অবস্থিত।'),
(8, 6, 130, 1, 1, 'মেসোপটেমীয় সভ্যতা কোন দুটি নদীর তীরে গড়ে উঠেছিল?', '{\"A\":\"\\u09a8\\u09c0\\u09b2\\u09a8\\u09a6 \\u0993 \\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1\",\"B\":\"\\u0997\\u0999\\u09cd\\u0997\\u09be \\u0993 \\u09ac\\u09cd\\u09b0\\u09b9\\u09cd\\u09ae\\u09aa\\u09c1\\u09a4\\u09cd\\u09b0\",\"C\":\"\\u0987\\u0989\\u09ab\\u09cd\\u09b0\\u09c7\\u099f\\u09bf\\u09b8 \\u0993 \\u099f\\u09be\\u0987\\u0997\\u09cd\\u09b0\\u09bf\\u09b8\",\"D\":\"\\u09b9\\u09cb\\u09af\\u09bc\\u09be\\u0982\\u09b9\\u09cb \\u0993 \\u0987\\u09af\\u09bc\\u09be\\u0982\\u09b8\\u09bf\\u0995\\u09bf\\u09af\\u09bc\\u09be\\u0982\"}', 'C', 'মেসোপটেমীয় সভ্যতা ইউফ্রেটিস ও টাইগ্রিস নদীর তীরে গড়ে উঠেছিল।'),
(9, 6, 130, 1, 1, 'মেসোপটেমিয়া শব্দের অর্থ কী?', '{\"A\":\"\\u09a6\\u09c1\\u0987 \\u09aa\\u09be\\u09b9\\u09be\\u09dc\\u09c7\\u09b0 \\u09ae\\u09be\\u099d\\u09c7\\u09b0 \\u09ad\\u09c2\\u09ae\\u09bf\",\"B\":\"\\u09a6\\u09c1\\u0987 \\u09a8\\u09a6\\u09c0\\u09b0 \\u09a4\\u09c0\\u09b0\\u09ac\\u09b0\\u09cd\\u09a4\\u09c0 \\u0985\\u099e\\u09cd\\u099a\\u09b2\",\"C\":\"\\u0989\\u09b0\\u09cd\\u09ac\\u09b0 \\u09b8\\u09ae\\u09ad\\u09c2\\u09ae\\u09bf\",\"D\":\"\\u09aa\\u09cd\\u09b0\\u09be\\u099a\\u09c0\\u09a8 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0995\\u09c7\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0\"}', 'B', 'মেসোপটেমিয়া শব্দের অর্থ হল ২ নদীর তীরবর্তী অঞ্চল।'),
(10, 6, 130, 1, 1, 'মেসোপটেমীয় সভ্যতা কোন কোন অঞ্চলে বিস্তার লাভ করে?', '{\"A\":\"\\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u0987\\u09b0\\u09be\\u0995\",\"B\":\"\\u0987\\u09b0\\u09be\\u0995 \\u0993 \\u09ae\\u09bf\\u09b6\\u09b0\",\"C\":\"\\u0987\\u09b0\\u09be\\u0995, \\u09b8\\u09bf\\u09b0\\u09bf\\u09df\\u09be, \\u0987\\u09b0\\u09be\\u09a8 \\u0993 \\u09a4\\u09c1\\u09b0\\u09b8\\u09cd\\u0995\",\"D\":\"\\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09b8\\u09bf\\u09b0\\u09bf\\u09df\\u09be \\u0993 \\u0987\\u09b0\\u09be\\u09a8\"}', 'C', 'মেসোপটেমীয় সভ্যতা ইরাক ছাড়াও সিরিয়া, ইরান ও তুরস্কের উর্বর অঞ্চলে বিস্তার লাভ করে।'),
(11, 6, 130, 1, 1, 'মেসোপটেমীয় সভ্যতার পর্যায় কয়টি ছিল?', '{\"A\":\"\\u09e8\\u099f\\u09bf\",\"B\":\"\\u09e9\\u099f\\u09bf\",\"C\":\"\\u09ea\\u099f\\u09bf\",\"D\":\"\\u09eb\\u099f\\u09bf\"}', 'C', 'মেসোপটেমীয় সভ্যতার ৪টি পর্যায় ছিলো: সুমেরীয়, ব্যাবিলনীয়, আসিরীয় এবং ক্যালেডীয় সভ্যতা।'),
(12, 6, 130, 1, 1, 'মেসোপটেমীয় সভ্যতায় সবচেয়ে প্রাচীন সভ্যতা কোনটি?', '{\"A\":\"\\u09ac\\u09cd\\u09af\\u09be\\u09ac\\u09bf\\u09b2\\u09a8\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u0986\\u09b8\\u09bf\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u09b8\\u09c1\\u09ae\\u09c7\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09c7\\u09a1\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'C', 'মেসোপটেমিয়ায় সবচেয়ে প্রাচীন যে সভ্যতা গড়ে উঠেছিল তা হলো সুমেরীয় সভ্যতা।'),
(13, 6, 130, 1, 1, 'সুমেরীয়দের সবচেয়ে বড় ২টি আবিষ্কার কী?', '{\"A\":\"\\u09b2\\u09bf\\u0996\\u09a8 \\u09aa\\u09a6\\u09cd\\u09a7\\u09a4\\u09bf \\u0993 \\u09b8\\u09cd\\u09a5\\u09be\\u09aa\\u09a4\\u09cd\\u09af\",\"B\":\"\\u099a\\u09be\\u0995\\u09be \\u0993 \\u0995\\u09bf\\u0989\\u09a8\\u09bf\\u09ab\\u09b0\\u09cd\\u09ae \\u09b2\\u09bf\\u09aa\\u09bf\",\"C\":\"\\u0995\\u09c3\\u09b7\\u09bf \\u0993 \\u09b8\\u09c7\\u099a \\u09ac\\u09cd\\u09af\\u09ac\\u09b8\\u09cd\\u09a5\\u09be\",\"D\":\"\\u0997\\u09a3\\u09bf\\u09a4 \\u0993 \\u099c\\u09cd\\u09af\\u09cb\\u09a4\\u09bf\\u09b0\\u09cd\\u09ac\\u09bf\\u09a6\\u09cd\\u09af\\u09be\"}', 'B', '\'V\' আকৃতির কিউনিফর্ম লিপি এবং চাকার আবিষ্কার ছিলো সভ্যতায় সুমেরীয়দের সবচেয়ে বড় ২টি অবদান।'),
(14, 6, 130, 1, 1, 'সুমেরীয়রা কোন দুটি জিনিস আবিষ্কারে অবদান রাখে?', '{\"A\":\"\\u099a\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0\\u09aa\\u099e\\u09cd\\u099c\\u09bf\\u0995\\u09be \\u0993 \\u099c\\u09b2\\u0998\\u09dc\\u09bf\",\"B\":\"\\u09b8\\u09c2\\u09b0\\u09cd\\u09af\\u0998\\u09dc\\u09bf \\u0993 \\u09ae\\u09be\\u09a8\\u099a\\u09bf\\u09a4\\u09cd\\u09b0\",\"C\":\"\\u0995\\u09ae\\u09cd\\u09aa\\u09be\\u09b8 \\u0993 \\u09a6\\u09c2\\u09b0\\u09ac\\u09c0\\u0995\\u09cd\\u09b7\\u09a3\",\"D\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09c7\\u09a8\\u09cd\\u09a1\\u09be\\u09b0 \\u0993 \\u09b8\\u09c7\\u0995\\u09cd\\u09b8\\u099f\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u099f\"}', 'A', 'সুমেরীয়রা উন্নত সেচ পদ্ধতির পাশাপাশি চন্দ্রপঞ্জিকা ও জলঘড়ি আবিষ্কারে অবদান রাখে।'),
(15, 6, 130, 1, 1, 'কোন জাতি ব্যাবিলনীয় সভ্যতা গড়ে তুলেছিল?', '{\"A\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995\",\"B\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8\",\"C\":\"\\u0986\\u09ae\\u09cb\\u09b0\\u09be\\u0987\\u099f\",\"D\":\"\\u09aa\\u09be\\u09b0\\u09cd\\u09b8\\u09bf\\u09df\\u09be\\u09a8\"}', 'C', 'মেসোপটেমিয়া অঞ্চলে আমোরাইট জাতিদের গড়ে তোলা নগরসভ্যতা ছিলো ব্যাবিলনীয় সভ্যতা।'),
(16, 6, 130, 1, 1, 'মানব সভ্যতার প্রথম লিখিত আইন কে প্রণয়ন করেন?', '{\"A\":\"\\u09aa\\u09cd\\u09b2\\u09c7\\u099f\\u09cb\",\"B\":\"\\u098f\\u09b0\\u09bf\\u09b8\\u09cd\\u099f\\u099f\\u09b2\",\"C\":\"\\u09b9\\u09be\\u09ae\\u09cd\\u09ae\\u09c1\\u09b0\\u09be\\u09ac\\u09bf\",\"D\":\"\\u0986\\u09b2\\u09c7\\u0995\\u099c\\u09be\\u09a8\\u09cd\\u09a1\\u09be\\u09b0\"}', 'C', 'ব্যাবিলনের আমোরাইট শাসক হাম্মুরাবি প্রণীত আইনই মানব সভ্যতার প্রথম লিখিত আইন।'),
(17, 6, 130, 1, 1, 'কোন সভ্যতায় \'গিলগামেশ\' মহাকাব্য রচিত হয়?', '{\"A\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u09ac\\u09cd\\u09af\\u09be\\u09ac\\u09bf\\u09b2\\u09a8\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'C', 'মানব সভ্যতার অন্যতম প্রাচীন মহাকাব্য \'গিলগামেশ\' কিউনিফর্ম ভাষায় ব্যাবিলনীয় সভ্যতাতেই রচিত হয়।'),
(18, 6, 130, 1, 1, 'কোন সভ্যতা প্রথম লোহার তৈরি যুদ্ধাস্ত্র ব্যবহার করে সামরিক শক্তির উন্নয়ন ঘটায়?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u0986\\u09b8\\u09bf\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'B', 'আসিরীয়রা মানব সভ্যতার ইতিহাসে প্রথম লোহার তৈরি যুদ্ধাস্ত্র ব্যবহার করে সামরিক শক্তির উন্নয়ন ঘটায়।'),
(19, 6, 130, 1, 1, 'বৃত্তকে প্রথম ৩৬০° কোণে বিভক্ত করে কোন সভ্যতা?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u0986\\u09b8\\u09bf\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'B', 'আসিরীয় সভ্যতা বৃত্তকে প্রথমবারের মত ৩৬০° কোণে বিভক্ত করে।'),
(20, 6, 130, 1, 1, 'আসিরীয় সভ্যতা কত খ্রিস্টাব্দে ধ্বংসপ্রাপ্ত হয়?', '{\"A\":\"\\u09ec\\u09e7\\u09e8 \\u0996\\u09cd\\u09b0\\u09bf.\\u09aa\\u09c2.\",\"B\":\"\\u09eb\\u09e9\\u09ee \\u0996\\u09cd\\u09b0\\u09bf.\\u09aa\\u09c2.\",\"C\":\"\\u09e8\\u09ed\\u09eb\\u09e6 \\u0996\\u09cd\\u09b0\\u09bf.\\u09aa\\u09c2.\",\"D\":\"\\u09eb\\u09e6\\u09e6\\u09e6 \\u0996\\u09cd\\u09b0\\u09bf.\\u09aa\\u09c2.\"}', 'A', 'আসিরীয় সভ্যতা ৬১২ খ্রিষ্টপূর্বাব্দে ধ্বংসপ্রাপ্ত হয়।'),
(21, 6, 130, 1, 1, 'কোন সভ্যতা \'নতুন ব্যাবিলনীয় সভ্যতা\' নামে পরিচিত?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u0986\\u09b8\\u09bf\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'C', 'ক্যালডীয়রা মানব সভ্যতার ইতিহাসে \'নতুন ব্যাবিলনীয় সভ্যতা\' নামে পরিচিত।'),
(22, 6, 130, 1, 1, '\'ব্যাবিলনের শূন্য উদ্যান\' কে তৈরি করেন?', '{\"A\":\"\\u09ab\\u09be\\u09b0\\u09be\\u0993 \\u0996\\u09c1\\u09ab\\u09c1\",\"B\":\"\\u09b0\\u09be\\u0996\\u09be\\u09b2\\u09a6\\u09be\\u09b8 \\u09ac\\u09a8\\u09cd\\u09a6\\u09cb\\u09aa\\u09be\\u09a7\\u09cd\\u09af\\u09be\\u09df\",\"C\":\"\\u09a8\\u09c7\\u09ac\\u09c1\\u099a\\u09be\\u0981\\u09a6\\u09a8\\u09c7\\u099c\\u09be\\u09b0\",\"D\":\"\\u09b9\\u09c7\\u09b0\\u09cb\\u09a1\\u09cb\\u099f\\u09be\\u09b8\"}', 'C', 'ক্যালডীয় সভ্যতার প্রতিষ্ঠাতা রাজা নেবুচাঁদনেজার \'ব্যাবিলনের শূন্য উদ্যান\' তৈরি করেন।'),
(23, 6, 130, 1, 1, 'সপ্তাহে ৭ দিন এবং প্রতিদিনে ১২ জোড়া ঘণ্টা গণনা পদ্ধতি প্রথম কারা চালু করে?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df\\u09b0\\u09be\",\"B\":\"\\u0986\\u09b8\\u09bf\\u09b0\\u09c0\\u09df\\u09b0\\u09be\",\"C\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df\\u09b0\\u09be\",\"D\":\"\\u09b8\\u09c1\\u09ae\\u09c7\\u09b0\\u09c0\\u09df\\u09b0\\u09be\"}', 'C', 'ক্যালডীয়রাই সর্বপ্রথম সপ্তাহে ৭দিন এবং প্রতিদিনে ১২ জোড়া ঘণ্টা গণনা পদ্ধতি চালু করে।'),
(24, 6, 130, 1, 1, 'ক্যালডীয় সভ্যতা কত খ্রিস্টপূর্বাব্দে বিলুপ্ত হয়ে যায়?', '{\"A\":\"\\u09ec\\u09e7\\u09e8\",\"B\":\"\\u09eb\\u09e9\\u09ee\",\"C\":\"\\u09e8\\u09ed\\u09eb\\u09e6\",\"D\":\"\\u09e9\\u09eb\\u09e6\\u09e6\"}', 'B', 'পারস্যদের আক্রমণের ফলে ৫৩৮ খ্রিষ্টপূর্বাব্দে ক্যালডীয় সভ্যতা বিলুপ্ত হয়ে যায়।'),
(25, 6, 130, 1, 1, 'নীল নদের তীরে কোন সভ্যতা গড়ে উঠেছিল?', '{\"A\":\"\\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09b8\\u09c1\\u09ae\\u09c7\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'B', 'নীল নদের তীরে ৫০০০ খ্রিষ্টপূর্বাব্দে মিশরীয় সভ্যতা গড়ে উঠেছিলো।'),
(26, 6, 130, 1, 1, 'প্রাচীন মিশরের রাজাদের কী বলা হত?', '{\"A\":\"\\u09a8\\u09c7\\u09ac\\u09c1\\u099a\\u09be\\u0981\\u09a6\\u09a8\\u09c7\\u099c\\u09be\\u09b0\",\"B\":\"\\u09ab\\u09be\\u09b0\\u09be\\u0993\",\"C\":\"\\u09b9\\u09c7\\u09b0\\u09cb\\u09a1\\u09cb\\u099f\\u09be\\u09b8\",\"D\":\"\\u09b0\\u09be\\u0996\\u09be\\u09b2\\u09a6\\u09be\\u09b8 \\u09ac\\u09a8\\u09cd\\u09a6\\u09cb\\u09aa\\u09be\\u09a7\\u09cd\\u09af\\u09be\\u09df\"}', 'B', 'প্রাচীন মিশরের রাজাদের বলা হত \'ফারাও\'।'),
(27, 6, 130, 1, 1, 'মিশরীয়রা মৃতদেহ সংরক্ষণের জন্য কী ব্যবহার করত?', '{\"A\":\"\\u09aa\\u09bf\\u09b0\\u09be\\u09ae\\u09bf\\u09a1\",\"B\":\"\\u09ae\\u09ae\\u09bf\",\"C\":\"\\u09b8\\u09cd\\u09ab\\u09bf\\u0982\\u09b8\",\"D\":\"\\u09aa\\u09cd\\u09af\\u09be\\u09aa\\u09bf\\u09b0\\u09be\\u09b8\"}', 'B', 'প্রাচীন মিশরের রাজাদের মৃতদেহ \'মমি\' করে রাখার মাধ্যমে সংরক্ষিত রাখা হতো।'),
(28, 6, 130, 1, 1, 'মিশরীয় সভ্যতার সবচেয়ে বিখ্যাত নিদর্শনের নাম কী?', '{\"A\":\"\\u09b8\\u09cd\\u09ab\\u09bf\\u0982\\u09b8\",\"B\":\"\\u09aa\\u09bf\\u09b0\\u09be\\u09ae\\u09bf\\u09a1\",\"C\":\"\\u09b9\\u09be\\u09df\\u09be\\u09b0\\u09cb\\u0997\\u09cd\\u09b2\\u09bf\\u09ab\\u09bf\\u0995\",\"D\":\"\\u09aa\\u09cd\\u09af\\u09be\\u09aa\\u09bf\\u09b0\\u09be\\u09b8\"}', 'B', 'পিরামিড মিশরীয় সভ্যতার সবচেয়ে বিখ্যাত নিদর্শন।'),
(29, 6, 130, 1, 1, 'ফারাও খুফুর পিরামিড কোথায় অবস্থিত?', '{\"A\":\"\\u0987\\u09b0\\u09be\\u0995\",\"B\":\"\\u0987\\u09b0\\u09be\\u09a8\",\"C\":\"\\u09ae\\u09bf\\u09b6\\u09b0\",\"D\":\"\\u09aa\\u09be\\u0995\\u09bf\\u09b8\\u09cd\\u09a4\\u09be\\u09a8\"}', 'C', 'ফারাও খুফুর পিরামিড মিশরের সর্ববৃহৎ পিরামিড।'),
(30, 6, 130, 1, 1, 'স্ফিংস কী?', '{\"A\":\"\\u098f\\u0995\\u099f\\u09bf \\u09a8\\u09a6\\u09c0\\u09b0 \\u09a8\\u09be\\u09ae\",\"B\":\"\\u098f\\u0995\\u099f\\u09bf \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0\\u09c7\\u09b0 \\u09a8\\u09be\\u09ae\",\"C\":\"\\u098f\\u0995\\u099f\\u09bf \\u09ad\\u09be\\u09b8\\u09cd\\u0995\\u09b0\\u09cd\\u09af\",\"D\":\"\\u098f\\u0995\\u099f\\u09bf \\u09b0\\u09be\\u099c\\u09be\\u09b0 \\u09a8\\u09be\\u09ae\"}', 'C', 'স্ফিংস হলো ফারাও এর মাথা ও সিংহের শরীরের আকৃতির সুবৃহৎ ভাস্কর্য।'),
(31, 6, 130, 1, 1, 'মিশরীয়দের উদ্ভাবিত চিত্রলিপির নাম কী?', '{\"A\":\"\\u09aa\\u09cd\\u09af\\u09be\\u09aa\\u09bf\\u09b0\\u09be\\u09b8\",\"B\":\"\\u09b9\\u09be\\u09df\\u09be\\u09b0\\u09cb\\u0997\\u09cd\\u09b2\\u09bf\\u09ab\\u09bf\\u0995\",\"C\":\"\\u0995\\u09bf\\u0989\\u09a8\\u09bf\\u09ab\\u09b0\\u09cd\\u09ae\",\"D\":\"\\u09ac\\u09cd\\u09b0\\u09c7\\u0987\\u09b2\"}', 'B', 'মিশরীয়দের উদ্ভাবিত চিত্রলিপির নাম \'হায়ারোগ্লিফিক\'।'),
(32, 6, 130, 1, 1, '৩৬৫ দিনে ১ বছর এবং ৩০ দিনে ১ মাস - এই গণনা পদ্ধতি কারা আবিষ্কার করে?', '{\"A\":\"\\u09b8\\u09c1\\u09ae\\u09c7\\u09b0\\u09c0\\u09df\\u09b0\\u09be\",\"B\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df\\u09b0\\u09be\",\"C\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df\\u09b0\\u09be\",\"D\":\"\\u0986\\u09b8\\u09bf\\u09b0\\u09c0\\u09df\\u09b0\\u09be\"}', 'C', 'মিশরীয়রাই ৩৬৫ দিন ও ১২ মাসে ১ বছর এবং ৩০ দিনে ১ মাসের গণন পদ্ধতি আবিষ্কার করে।'),
(33, 6, 130, 1, 1, 'বিখ্যাত ফারাও তুতেনখামেনের সমাধি কত সালে আবিষ্কৃত হয়?', '{\"A\":\"\\u09e7\\u09ef\\u09e8\\u09e8 \\u09b8\\u09be\\u09b2\\u09c7\",\"B\":\"\\u09e7\\u09ef\\u09ef\\u09e8 \\u09b8\\u09be\\u09b2\\u09c7\",\"C\":\"\\u09e7\\u09ee\\u09e8\\u09e8 \\u09b8\\u09be\\u09b2\\u09c7\",\"D\":\"\\u09e7\\u09ee\\u09ef\\u09e8 \\u09b8\\u09be\\u09b2\\u09c7\"}', 'B', 'বিখ্যাত ফারাও তুতেনখামেনের সমাধি ১৯৯২ সালে আবিষ্কৃত হয়।'),
(34, 6, 130, 1, 1, 'কে মিশরকে নীল নদের দান হিসেবে উল্লেখ করেন?', '{\"A\":\"\\u09b9\\u09c7\\u09b0\\u09cb\\u09a1\\u09cb\\u099f\\u09be\\u09b8\",\"B\":\"\\u09aa\\u09cd\\u09b2\\u09bf\\u09a8\\u09bf\",\"C\":\"\\u09b8\\u0995\\u09cd\\u09b0\\u09c7\\u099f\\u09bf\\u09b8\",\"D\":\"\\u098f\\u09b0\\u09bf\\u09b8\\u09cd\\u099f\\u099f\\u09b2\"}', 'A', 'গ্রিক ইতিহাসবিদ হেরোডোটাস মিশরকে নীল নদের দান হিসেবে উল্লেখ করেন।'),
(35, 6, 130, 1, 1, 'সিন্ধু সভ্যতা কোথায় গড়ে উঠেছিলো?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c7\\u09b0 \\u09a8\\u09c0\\u09b2 \\u09a8\\u09a6\\u09c7\\u09b0 \\u09a4\\u09c0\\u09b0\\u09c7\",\"B\":\"\\u09ae\\u09c7\\u09b8\\u09cb\\u09aa\\u099f\\u09c7\\u09ae\\u09bf\\u09af\\u09bc\\u09be\\u09b0 \\u099f\\u09be\\u0987\\u0997\\u09cd\\u09b0\\u09bf\\u09b8 \\u0993 \\u0987\\u0989\\u09ab\\u09cd\\u09b0\\u09c7\\u099f\\u09bf\\u09b8 \\u09a8\\u09a6\\u09c0\\u09b0 \\u09a4\\u09c0\\u09b0\\u09c7\",\"C\":\"\\u09aa\\u09be\\u0995\\u09bf\\u09b8\\u09cd\\u09a4\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09b9\\u09c7\\u099e\\u09cd\\u099c\\u09cb\\u09a6\\u09be\\u09b0\\u09cb \\u0993 \\u09b9\\u09b0\\u09aa\\u09cd\\u09aa\\u09be\\u09a4\\u09c7\",\"D\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u09b8\\u09c7\\u09b0 \\u0995\\u09cd\\u09b0\\u09c0\\u099f \\u09a6\\u09cd\\u09ac\\u09c0\\u09aa\\u09c7\"}', 'C', 'সিন্ধু সভ্যতা পাকিস্তানের মহেঞ্জোদারো ও হরপ্পাতে গড়ে উঠেছিলো।'),
(36, 6, 130, 1, 1, 'সিন্ধু সভ্যতা কত খ্রিস্টপূর্বাব্দে গড়ে উঠেছিলো?', '{\"A\":\"\\u09eb\\u09e6\\u09e6\\u09e6\",\"B\":\"\\u09e9\\u09eb\\u09e6\\u09e6\",\"C\":\"\\u09e8\\u09ed\\u09eb\\u09e6\",\"D\":\"\\u09ec\\u09e7\\u09e8\"}', 'B', 'সিন্ধু সভ্যতা ৩৫০০ খ্রিষ্টপূর্বাব্দে গড়ে উঠেছিলো।'),
(37, 6, 130, 1, 1, 'সিন্ধু সভ্যতা কে বা কারা আবিষ্কার করেন?', '{\"A\":\"\\u09b9\\u09c7\\u09b0\\u09cb\\u09a1\\u09cb\\u099f\\u09be\\u09b8\",\"B\":\"\\u0987\\u09ac\\u09a8\\u09c7 \\u09ac\\u09a4\\u09c1\\u09a4\\u09be\",\"C\":\"\\u09b0\\u09be\\u0996\\u09be\\u09b2\\u09a6\\u09be\\u09b8 \\u09ac\\u09a8\\u09cd\\u09a6\\u09cb\\u09aa\\u09be\\u09a7\\u09cd\\u09af\\u09be\\u09df, \\u09a6\\u09df\\u09be\\u09b0\\u09be\\u09ae \\u09b8\\u09be\\u09b9\\u09a8\\u09c0 \\u0993 \\u09b8\\u09cd\\u09af\\u09be\\u09b0 \\u099c\\u09a8 \\u09ae\\u09be\\u09b0\\u09cd\\u09b6\\u09be\\u09b2\",\"D\":\"\\u09a8\\u09c7\\u09ac\\u09c1\\u099a\\u09be\\u0981\\u09a6\\u09a8\\u09c7\\u099c\\u09be\\u09b0\"}', 'C', '১৯২২ সালে রাখালদাস বন্দোপাধ্যায়, দয়ারাম সাহনী ও স্যার জন মার্শাল এই সভ্যতা আবিষ্কার করেন।'),
(38, 6, 130, 1, 1, 'কোন সভ্যতার সাথে সুমেরীয় সভ্যতার মিল পাওয়া যায়?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u0986\\u09b8\\u09bf\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'B', 'সিন্ধু সভ্যতার সাথে সুমেরীয় সভ্যতার মিল আছে।'),
(39, 6, 130, 1, 1, 'কোন সভ্যতা বাটখারা ব্যবহার করে ভর নির্ণয়ের পদ্ধতি উদ্ভাবন করে?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u0995\\u09cd\\u09af\\u09be\\u09b2\\u09a1\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'B', 'সিন্ধু সভ্যতা বাটখারা ব্যবহার করে ভর নির্ণয়ের মত পরিমাপ পদ্ধতি উদ্ভাবন করে।'),
(40, 6, 130, 1, 1, 'কীসের কারণে সিন্ধু সভ্যতার পতন ঘটে?', '{\"A\":\"\\u09ad\\u09c2\\u09ae\\u09bf\\u0995\\u09ae\\u09cd\\u09aa\",\"B\":\"\\u0986\\u09b0\\u09cd\\u09af\\u09a6\\u09c7\\u09b0 \\u0986\\u0995\\u09cd\\u09b0\\u09ae\\u09a3\",\"C\":\"\\u0985\\u0997\\u09cd\\u09a8\\u09bf\\u09c1\\u09ce\\u09aa\\u09be\\u09a4\",\"D\":\"\\u09b0\\u09be\\u099c\\u09a8\\u09c8\\u09a4\\u09bf\\u0995 \\u0985\\u09b8\\u09cd\\u09a5\\u09bf\\u09b0\\u09a4\\u09be\"}', 'B', 'প্রলয়ঙ্কারী বন্যা, আবহাওয়ার পরিবর্তন এবং আর্যদের আক্রমণে সিন্ধু সভ্যতার পতন ঘটে।'),
(41, 6, 130, 1, 1, 'কত খ্রিস্টপূর্বাব্দে সিন্ধু সভ্যতার পতন ঘটে?', '{\"A\":\"\\u09e8\\u09ed\\u09eb\\u09e6\",\"B\":\"\\u09e9\\u09eb\\u09e6\\u09e6\",\"C\":\"\\u09eb\\u09e6\\u09e6\\u09e6\",\"D\":\"\\u09ec\\u09e7\\u09e8\"}', 'A', 'খ্রিস্টপূর্ব ২৭৫০ অব্দে সিন্ধু সভ্যতার পতন ঘটে।'),
(42, 6, 130, 1, 1, 'কোন দুটি প্রতিদ্বন্দ্বী প্রাচীন নগর রাষ্ট্রকে কেন্দ্র করে গ্রিক সভ্যতা গড়ে উঠেছিল?', '{\"A\":\"\\u098f\\u09a5\\u09c7\\u09a8\\u09cd\\u09b8 \\u0993 \\u09b0\\u09cb\\u09ae\",\"B\":\"\\u09b8\\u09cd\\u09aa\\u09be\\u09b0\\u09cd\\u099f\\u09be \\u0993 \\u09ae\\u09bf\\u09b6\\u09b0\",\"C\":\"\\u098f\\u09a5\\u09c7\\u09a8\\u09cd\\u09b8 \\u0993 \\u09b8\\u09cd\\u09aa\\u09be\\u09b0\\u09cd\\u099f\\u09be\",\"D\":\"\\u09b0\\u09cb\\u09ae \\u0993 \\u0995\\u09be\\u09b0\\u09cd\\u09a5\\u09c7\\u099c\"}', 'C', 'গ্রিক সভ্যতা এথেন্স ও স্পার্টা নামক দুটি প্রতিদ্বন্দ্বী নগর রাষ্ট্রকে কেন্দ্র করে গড়ে উঠেছিল।'),
(43, 6, 130, 1, 1, 'গ্রিসের প্রধান শহর এথেন্সকে কেন্দ্র করে যে সংস্কৃতি গড়ে উঠেছিল, তাকে কী বলা হত?', '{\"A\":\"\\u09b9\\u09c7\\u09b2\\u09c7\\u09a8\\u09bf\\u0995 \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\",\"B\":\"\\u09b9\\u09c7\\u09b2\\u09c7\\u09a8\\u09bf\\u09b8\\u09cd\\u099f\\u09bf\\u0995 \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\",\"C\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\",\"D\":\"\\u09aa\\u09cd\\u09b0\\u09be\\u099a\\u09c0\\u09a8 \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\"}', 'B', 'গ্রিসের প্রধান শহর এথেন্সকে কেন্দ্র করে যে সংস্কৃতি গড়ে উঠেছিল তাকে হেলেনিস্টিক সংস্কৃতি বলা হত।'),
(44, 6, 130, 1, 1, 'হেলেনিস্টিক সংস্কৃতিতে কোন সংস্কৃতির মিশ্রণ ঘটেছিল?', '{\"A\":\"\\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\",\"B\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u0993 \\u09b0\\u09cb\\u09ae\\u09be\\u09a8 \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\",\"C\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u0993 \\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09af\\u09bc \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\",\"D\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u0993 \\u0985\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\"}', 'D', 'হেলেনিস্টিক সংস্কৃতিতে গ্রিক ও অগ্রিক সংস্কৃতির মিশ্রণ ঘটেছিল।'),
(45, 6, 130, 1, 1, 'প্রাচীন গ্রিসে দর্শনচর্চায় কারা অবদান রেখেছেন?', '{\"A\":\"\\u09b8\\u0995\\u09cd\\u09b0\\u09c7\\u099f\\u09bf\\u09b8\",\"B\":\"\\u09aa\\u09cd\\u09b2\\u09c7\\u099f\\u09cb\",\"C\":\"\\u098f\\u09b0\\u09bf\\u09b8\\u09cd\\u099f\\u099f\\u09b2\",\"D\":\"\\u0989\\u09aa\\u09b0\\u09c7\\u09b0 \\u09b8\\u0995\\u09b2\\u09c7\"}', 'D', 'সক্রেটিস, প্লেটো এবং এরিস্টটল তিনজনই প্রাচীন গ্রিসে দর্শনচর্চায় অবদান রেখেছেন।'),
(46, 6, 130, 1, 1, 'হোমারের বিখ্যাত মহাকাব্যদ্বয়ের নাম কি?', '{\"A\":\"\\u0987\\u09b2\\u09bf\\u09df\\u09be\\u09a1 \\u0993 \\u0993\\u09a1\\u09bf\\u09b8\\u09bf\",\"B\":\"\\u09b0\\u09be\\u09ae\\u09be\\u09df\\u09a3 \\u0993 \\u09ae\\u09b9\\u09be\\u09ad\\u09be\\u09b0\\u09a4\",\"C\":\"\\u0987\\u09a8\\u09bf\\u09a1 \\u0993 \\u0993\\u09a1\\u09bf\\u09b8\\u09bf\",\"D\":\"\\u0995\\u09cb\\u09a8\\u099f\\u09bf\\u0987 \\u09a8\\u09df\"}', 'A', 'হোমারের বিখ্যাত মহাকাব্যদ্বয়ের নাম হল ইলিয়ড ও ওডিসি।'),
(47, 6, 130, 1, 1, 'গ্রিকদের প্রধান দেবতা কে ছিলেন?', '{\"A\":\"\\u0986\\u09ab\\u09cd\\u09b0\\u09cb\\u09a1\\u09be\\u09df\\u09bf\\u099f\\u09bf\",\"B\":\"\\u0985\\u09cd\\u09af\\u09be\\u09aa\\u09cb\\u09b2\\u09cb\",\"C\":\"\\u099c\\u09bf\\u0989\\u09b8\",\"D\":\"\\u0986\\u09b0\\u099f\\u09c7\\u09ae\\u09bf\\u09b8\"}', 'C', 'গ্রিকদের প্রধান দেবতা ছিলেন জিউস।'),
(48, 6, 130, 1, 1, 'নিচের কোনটি গ্রিক সভ্যতার অবদান?', '{\"A\":\"\\u0997\\u09a3\\u09a4\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\",\"B\":\"\\u09aa\\u09cd\\u09b0\\u09a5\\u09ae \\u09ae\\u09be\\u09a8\\u099a\\u09bf\\u09a4\\u09cd\\u09b0\",\"C\":\"\\u09b8\\u09cd\\u09ac\\u09b0\\u09ac\\u09b0\\u09cd\\u09a3\\u09c7\\u09b0 \\u09b8\\u0982\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u09bf\",\"D\":\"\\u0989\\u09aa\\u09b0\\u09c7\\u09b0 \\u09b8\\u09ac\\u0997\\u09c1\\u09b2\\u09cb\"}', 'D', 'গণতন্ত্র, পৃথিবীর প্রথম মানচিত্র এবং ব্যঞ্জনবর্ণের সাথে স্বরবর্ণের সংযুক্তি - এই সবগুলোই গ্রিক সভ্যতার অবদান।'),
(49, 6, 130, 1, 1, 'হিব্রু সভ্যতা কোন নগরীকে কেন্দ্র করে গড়ে উঠেছিল?', '{\"A\":\"\\u098f\\u09a5\\u09c7\\u09a8\\u09cd\\u09b8\",\"B\":\"\\u099c\\u09c7\\u09b0\\u09c1\\u099c\\u09be\\u09b2\\u09c7\\u09ae\",\"C\":\"\\u09b8\\u09cd\\u09aa\\u09be\\u09b0\\u09cd\\u099f\\u09be\",\"D\":\"\\u09b0\\u09cb\\u09ae\"}', 'B', 'হিব্রু সভ্যতা জেরুজালেম নগরীকে কেন্দ্র করে গড়ে উঠেছিল।'),
(50, 6, 130, 1, 1, 'হিব্রু ভাষার আক্ষরিক অর্থ কী?', '{\"A\":\"\\u09af\\u09cb\\u09a6\\u09cd\\u09a7\\u09be\",\"B\":\"\\u0995\\u09c3\\u09b7\\u0995\",\"C\":\"\\u09af\\u09be\\u09af\\u09be\\u09ac\\u09b0\",\"D\":\"\\u09ac\\u09a3\\u09bf\\u0995\"}', 'C', 'হিব্রু ভাষার আক্ষরিক অর্থ হল যাযাবর বা নিম্নশ্রেনি।'),
(51, 6, 130, 1, 1, 'হিব্রু সভ্যতার প্রধান অবদান কোন ক্ষেত্রে ছিল?', '{\"A\":\"\\u09b0\\u09be\\u099c\\u09a8\\u09c8\\u09a4\\u09bf\\u0995\",\"B\":\"\\u0985\\u09b0\\u09cd\\u09a5\\u09a8\\u09c8\\u09a4\\u09bf\\u0995\",\"C\":\"\\u09b8\\u09be\\u0982\\u09b8\\u09cd\\u0995\\u09c3\\u09a4\\u09bf\\u0995\",\"D\":\"\\u09a7\\u09b0\\u09cd\\u09ae\\u09c0\\u09af\\u09bc\"}', 'D', 'হিব্রু সভ্যতার প্রধান অবদান ছিল ধর্মীয় ক্ষেত্রে।'),
(52, 6, 130, 1, 1, 'হিব্রু সভ্যতায় প্রথম কিসের উদ্ভব হয়?', '{\"A\":\"\\u09ac\\u09b9\\u09c1 \\u0988\\u09b6\\u09cd\\u09ac\\u09b0\\u09ac\\u09be\\u09a6\",\"B\":\"\\u098f\\u0995 \\u0988\\u09b6\\u09cd\\u09ac\\u09b0\\u09ac\\u09be\\u09a6\",\"C\":\"\\u09a8\\u09bf\\u09b0\\u09c0\\u09b6\\u09cd\\u09ac\\u09b0\\u09ac\\u09be\\u09a6\",\"D\":\"\\u09aa\\u09cd\\u09b0\\u0995\\u09c3\\u09a4\\u09bf\\u09ac\\u09be\\u09a6\"}', 'B', 'হিব্রু সভ্যতাতেই প্রথম এক ঈশ্বরবাদের উদ্ভব হয়।'),
(53, 6, 130, 1, 1, 'প্রাচীনকালে বর্তমান ইরান কী নামে পরিচিত ছিল?', '{\"A\":\"\\u09ae\\u09c7\\u09b8\\u09cb\\u09aa\\u099f\\u09c7\\u09ae\\u09bf\\u09af\\u09bc\\u09be\",\"B\":\"\\u09aa\\u09be\\u09b0\\u09b8\\u09cd\\u09af\",\"C\":\"\\u09ae\\u09bf\\u09b6\\u09b0\",\"D\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u09b8\"}', 'B', 'প্রাচীনকালে বর্তমান ইরান পারস্য নামে পরিচিত ছিল।'),
(54, 6, 130, 1, 1, 'পারস্য সভ্যতার প্রথম সাম্রাজ্যের নাম কী ছিল?', '{\"A\":\"\\u0986\\u0995\\u09c7\\u09ae\\u09c7\\u09a8\\u09bf\\u09a6 \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\",\"B\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8 \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\",\"C\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09af\\u09bc \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\",\"D\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\"}', 'A', 'পারস্য সভ্যতার প্রথম সাম্রাজ্যের নাম ছিল একমেনিড সাম্রাজ্য।'),
(55, 6, 130, 1, 1, 'সাইরাস দ্যা গ্রেট কোন সাম্রাজ্যের প্রথম শাসক ছিলেন?', '{\"A\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\",\"B\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8 \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\",\"C\":\"\\u0986\\u0995\\u09c7\\u09ae\\u09c7\\u09a8\\u09bf\\u09a6 \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\",\"D\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u09be\\u09ae\\u09cd\\u09b0\\u09be\\u099c\\u09cd\\u09af\"}', 'C', 'সাইরাস দ্যা গ্রেট আকেমেনিদ সাম্রাজ্যের প্রথম শাসক ছিলেন।'),
(56, 6, 130, 1, 1, 'জরথ্রুস্টবাদ কোন সভ্যতার ধর্ম?', '{\"A\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09af\\u09bc \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u09aa\\u09be\\u09b0\\u09b8\\u09cd\\u09af \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'C', 'জরথ্রুস্টবাদ পারস্য সভ্যতার ধর্ম।'),
(57, 6, 130, 1, 1, 'জরথ্রুস্টবাদের সর্বোচ্চ শক্তিমান প্রভুর নাম কী?', '{\"A\":\"\\u099c\\u09bf\\u0989\\u09b8\",\"B\":\"\\u0986\\u09b9\\u09c1\\u09b0\\u09be \\u09ae\\u09be\\u099c\\u09a6\\u09be\",\"C\":\"\\u0985\\u09cd\\u09af\\u09be\\u09aa\\u09cb\\u09b2\\u09cb\",\"D\":\"\\u09aa\\u09cb\\u09b8\\u09be\\u0987\\u09a1\\u09a8\"}', 'B', 'জরথ্রুস্টবাদের সর্বোচ্চ শক্তিমান প্রভুর নাম \'আহুরা মাজদা\'। '),
(58, 6, 130, 1, 1, 'কোন সম্রাটের সময় পারস্য সভ্যতা তার সর্বোচ্চ শিখরে উন্নীত হয়?', '{\"A\":\"\\u09b8\\u09be\\u0987\\u09b0\\u09be\\u09b8 \\u09a6\\u09cd\\u09af\\u09be \\u0997\\u09cd\\u09b0\\u09c7\\u099f\",\"B\":\"\\u09a6\\u09be\\u09b0\\u09bf\\u09af\\u09bc\\u09be\\u09b8\",\"C\":\"\\u099c\\u09c7\\u09b0\\u0995\\u09cd\\u09b8\\u09bf\\u09b8\",\"D\":\"\\u0986\\u09b2\\u09c7\\u0995\\u099c\\u09be\\u09a8\\u09cd\\u09a1\\u09be\\u09b0\"}', 'B', 'সম্রাট দারিয়ুসের সময় পারস্য সভ্যতা তার সর্বোচ্চ শিখরে উন্নীত হয়।'),
(59, 6, 130, 1, 1, 'ফিনিশীয় সভ্যতা কোথায় গড়ে উঠেছিল?', '{\"A\":\"\\u09ad\\u09c2\\u09ae\\u09a7\\u09cd\\u09af\\u09b8\\u09be\\u0997\\u09b0\\u09c7\\u09b0 \\u09aa\\u09c2\\u09b0\\u09cd\\u09ac\\u09c7\",\"B\":\"\\u09ad\\u09c2\\u09ae\\u09a7\\u09cd\\u09af\\u09b8\\u09be\\u0997\\u09b0\\u09c7\\u09b0 \\u0989\\u09a4\\u09cd\\u09a4\\u09b0\\u09c7\",\"C\":\"\\u09ad\\u09c2\\u09ae\\u09a7\\u09cd\\u09af\\u09b8\\u09be\\u0997\\u09b0\\u09c7\\u09b0 \\u09a6\\u0995\\u09cd\\u09b7\\u09bf\\u09a3\\u09c7\",\"D\":\"\\u09ad\\u09c2\\u09ae\\u09a7\\u09cd\\u09af\\u09b8\\u09be\\u0997\\u09b0\\u09c7\\u09b0 \\u09aa\\u09b6\\u09cd\\u099a\\u09bf\\u09ae\\u09c7\"}', 'A', 'লেবানন ও ভূমধ্যসাগরের মধ্যবর্তী অঞ্চলে ফিনিশীয় সভ্যতা গড়ে উঠেছিল।'),
(60, 6, 130, 1, 1, 'কোন সভ্যতা শ্রেষ্ঠ নাবিক ও জাহাজ নির্মাতা হিসেবে পরিচিত?', '{\"A\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"B\":\"\\u09ab\\u09bf\\u09a8\\u09bf\\u09b6\\u09c0\\u09df \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"C\":\"\\u09aa\\u09be\\u09b0\\u09b8\\u09cd\\u09af \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\",\"D\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8 \\u09b8\\u09ad\\u09cd\\u09af\\u09a4\\u09be\"}', 'B', 'ফিনিশীয়রা সভ্যতার ইতিহাসে শ্রেষ্ঠতম নাবিক ও জাহাজ নির্মাতা হিসেবে বিখ্যাত ছিল।'),
(61, 6, 130, 1, 1, 'ফিনিশীয়রা কয়টি ব্যঞ্জনবর্ণের বর্ণমালা উদ্ভাবন করে?', '{\"A\":\"\\u09e8\\u09e8\\u099f\\u09bf\",\"B\":\"\\u09e8\\u09ec\\u099f\\u09bf\",\"C\":\"\\u09e9\\u09e6\\u099f\\u09bf\",\"D\":\"\\u09e9\\u09eb\\u099f\\u09bf\"}', 'A', 'ফিনিশীয়রা ২২টি ব্যঞ্জনবর্ণের বর্ণমালা উদ্ভাবন করে।'),
(62, 6, 130, 1, 1, 'কাগজ, কলম ও কালীর ব্যবহার ইউরোপীয়রা কাদের থেকে শিখেছিল?', '{\"A\":\"\\u0997\\u09cd\\u09b0\\u09bf\\u0995\",\"B\":\"\\u09ae\\u09bf\\u09b6\\u09b0\\u09c0\\u09df\",\"C\":\"\\u09ab\\u09bf\\u09a8\\u09bf\\u09b6\\u09c0\\u09df\",\"D\":\"\\u09b0\\u09cb\\u09ae\\u09be\\u09a8\"}', 'C', 'কাগজ, কলম ও কালীর ব্যবহার ইউরোপীয়রা ফিনিশীয়দের থেকে শিখেছিল।'),
(63, 6, 130, 1, 1, 'UNESCO কত সালে ফিনিশীয় ভাষাকে \'Memory of the World Register\' এ নিবন্ধিত করে?', '{\"A\":\"\\u09e8\\u09e6\\u09e6\\u09e8\",\"B\":\"\\u09e8\\u09e6\\u09e6\\u09e9\",\"C\":\"\\u09e8\\u09e6\\u09e6\\u09ea\",\"D\":\"\\u09e8\\u09e6\\u09e6\\u09eb\"}', 'D', '২০০৫ সালে UNESCO ফিনিশীয় ভাষাকে \"International Documentary Heritage\" হিসেবে \'Memory of the World Register\' এ নিবন্ধিত করে।'),
(74, 13, 131, 3, 4, 'বাংলা ভাষায় কোন স্বরধ্বনি উচ্চারণকালে জিহ্বা উচ্চ অবস্থানে থাকে?', '{\"A\":\"\\u0986\",\"B\":\"\\u0987\",\"C\":\"\\u0989\",\"D\":\"\\u098f\"}', 'C', 'বাংলা ভাষায় \'উ\' স্বরধ্বনি উচ্চারণকালে জিহ্বা উচ্চ অবস্থানে থাকে। উচ্চারণের সময় জিভের উচ্চতা অনুযায়ী, জিভের সম্মুখ-পশ্চাৎ অবস্থান অনুযায়ী এবং ঠোঁটের উন্মুক্তি অনুযায়ী স্বরধানিকে ভাগ করা হয়।'),
(75, 13, 131, 3, 4, 'বাংলা শব্দ ভাণ্ডারে অনার্য জাতির ব্যবহৃত শব্দ কোনটি?', '{\"A\":\"\\u09a4\\u09ce\\u09b8\\u09ae\",\"B\":\"\\u09a4\\u09a6\\u09cd\\u09ad\\u09ac\",\"C\":\"\\u09a6\\u09c7\\u09b6\\u09bf\",\"D\":\"\\u09ac\\u09bf\\u09a6\\u09c7\\u09b6\\u09c0\"}', 'C', 'বাংলাদেশের আদিম অধিবাসী অনার্যদের (যেমন: কোল, মুণ্ডা প্রভৃতি) ভাষা ও সংস্কৃতির কিছু কিছু উপাদান বাংলায় রক্ষিত আছে। এসব শব্দকে দেশি শব্দ নামে অভিহিত করা হয়।'),
(76, 13, 131, 3, 4, '\'ধ্বনিবিজ্ঞান ও বাংলা ধ্বনিতত্ত্ব\' গ্রন্থের রচয়িতা কে?', '{\"A\":\"\\u09ae\\u09c1\\u09b9\\u09ae\\u09cd\\u09ae\\u09a6 \\u09b6\\u09b9\\u09c0\\u09a6\\u09c1\\u09b2\\u09cd\\u09b2\\u09be\\u09b9\\u09cd\",\"B\":\"\\u09ae\\u09c1\\u09b9\\u09ae\\u09cd\\u09ae\\u09a6 \\u0986\\u09ac\\u09a6\\u09c1\\u09b2 \\u09b9\\u09be\\u0987\",\"C\":\"\\u09ae\\u09c1\\u09a8\\u09c0\\u09b0 \\u099a\\u09cc\\u09a7\\u09c1\\u09b0\\u09c0\",\"D\":\"\\u09ae\\u09c1\\u09b9\\u09ae\\u09cd\\u09ae\\u09a6 \\u098f\\u09a8\\u09be\\u09ae\\u09c1\\u09b2 \\u09b9\\u0995\"}', 'B', 'ভাষাবিজ্ঞানী, সাহিত্যিক ও শিক্ষাবিদ মুহম্মদ আবদুল হাই (১৯১৯-১৯৬৯) বাংলা সাহিত্যে অগ্রগণ্য নাম। বাংলা ভাষার ধ্বনির গঠন, উচ্চারণ ও ব্যবহারবিধি সংক্রান্ত বৈজ্ঞানিক ব্যাখ্যা-বিশ্লেষণ দিয়ে তার রচিত \'ধ্বনিবিজ্ঞান ও বাংলা ধ্বনিতত্ত্ব\' (১৯৬৪) গ্রন্থটি তাকে আন্তর্জাতিক খ্যাতি দান করে।'),
(77, 13, 131, 3, 4, 'বাংলা বর্ণমালায় যৌগিক স্বর কয়টি?', '{\"A\":\"\\u09e7\\u099f\\u09bf\",\"B\":\"\\u09e8 \\u099f\\u09bf\",\"C\":\"\\u09e9\\u099f\\u09bf\",\"D\":\"\\u09ea\\u099f\\u09bf\"}', 'B', 'বাংলা বর্ণমালায় যৌগিক স্বরজ্ঞাপক দুটো বর্ণ রয়েছে: ঐ এবং ঔ। পাশাপাশি দুটি স্বরধ্বনি থাকলে দ্রুত উচ্চারণের সময় তা একটি সংযুক্ত স্বরধ্বনিরূপে উচ্চারিত হয়।'),
(78, 13, 131, 3, 4, 'নিচের কোনটি যোগরূঢ় শব্দ?', '{\"A\":\"\\u0995\\u09b2\\u09ae\",\"B\":\"\\u09ae\\u09b2\\u09ae\",\"C\":\"\\u09ac\\u09be\\u0981\\u09b6\\u09bf\",\"D\":\"\\u09b6\\u09be\\u0996\\u09be\\u09ae\\u09c3\\u0997\"}', 'D', 'শাখামৃগ একটি যোগরূঢ় শব্দ। সমাসনিষ্পন্ন যে সকল শব্দ সম্পূর্ণভাবে সমস্যমান পদের অনুগামী না হয়ে কোনো বিশিষ্ট অর্থ গ্রহণ করে, তাদের যোগরূঢ় শব্দ বলে।'),
(79, 13, 131, 3, 4, 'কোন শব্দটিতে উপসর্গ যুক্ত হয়েছে?', '{\"A\":\"\\u09ac\\u09bf\\u09a6\\u09cd\\u09af\\u09be\",\"B\":\"\\u09ac\\u09bf\\u09a6\\u09cd\\u09b0\\u09cb\\u09b9\\u09c0\",\"C\":\"\\u09ac\\u09bf\\u09b7\\u09df\",\"D\":\"\\u09ac\\u09bf\\u09aa\\u09c1\\u09b2\"}', 'B', '\'বিদ্রোহী\' শব্দটিতে \'বি\' উপসর্গ যুক্ত হয়েছে, যা একটি তৎসম উপসর্গ এবং \'বিরোধিতা\' অর্থে ব্যবহৃত হয়েছে।'),
(80, 13, 131, 3, 4, 'কোন শব্দটিতে বিভক্তি যুক্ত হয়েছে?', '{\"A\":\"\\u09b8\\u09b0\\u09cb\\u09ac\\u09b0\\u09c7\",\"B\":\"\\u099a\\u09b6\\u09ae\\u09be\",\"C\":\"\\u09b8\\u09b0\\u09cb\\u099c\",\"D\":\"\\u099a\\u09ae\\u09cd\\u09aa\\u0995\"}', 'A', '\'সরোবরে\' শব্দটিতে \'এ\' বিভক্তি যুক্ত হয়েছে। বিভক্তি শব্দের সাথে যুক্ত হয়ে অন্য শব্দের অন্বয়সাধনে সাহায্য করে।'),
(81, 13, 131, 3, 4, 'কোন শব্দটি প্রত্যয়-সাধিত?', '{\"A\":\"\\u09ad\\u09be\\u0987\\u09ac\\u09cb\\u09a8\",\"B\":\"\\u09b0\\u09be\\u099c\\u09aa\\u09a5\",\"C\":\"\\u09ac\\u0995\\u09b2\\u09ae\",\"D\":\"\\u0990\\u0995\\u09bf\\u0995\"}', 'D', '\'ঐকিক\' শব্দটি \'ইক\' প্রত্যয় যোগে গঠিত হয়েছে। এটি সংস্কৃত তদ্ধিত প্রত্যয়ের উদাহরণ।'),
(82, 13, 131, 3, 4, '\'শিরশ্ছেদ\' শব্দের সঠিক সন্ধিবিচ্ছেদ কোনটি?', '{\"A\":\"\\u09b6\\u09bf\\u09b0 + \\u099b\\u09c7\\u09a6\",\"B\":\"\\u09b6\\u09bf\\u09b0\\u09b6\\u09cd + \\u099b\\u09c7\\u09a6\",\"C\":\"\\u09b6\\u09bf\\u09b0\\u0983 + \\u099b\\u09c7\\u09a6\",\"D\":\"\\u09b6\\u09bf\\u09b0 + \\u0989\\u099a\\u09cd\\u099b\\u09c7\\u09a6\"}', 'B', '\'শিরশ্ছেদ\' শব্দের সঠিক সন্ধিবিচ্ছেদ হল \'শিরঃ + ছেদ\'। বিসর্গ সন্ধির নিয়মানুসারে, বিসর্গের পরে অঘোষ অল্পপ্রাণ বা মহাপ্রাণ ব্যঞ্জন থাকলে বিসর্গের স্থানে শিস ধ্বনি হয়।'),
(83, 13, 131, 3, 4, '\'নীলকর\' কোন সমাসের উদাহরণ?', '{\"A\":\"\\u09a6\\u09cd\\u09ac\\u09a8\\u09cd\\u09a6\\u09cd\\u09ac\",\"B\":\"\\u09ac\\u09b9\\u09c1\\u09ac\\u09cd\\u09b0\\u09c0\\u09b9\\u09bf\",\"C\":\"\\u09a8\\u09bf\\u09a4\\u09cd\\u09af\",\"D\":\"\\u0989\\u09aa\\u09aa\\u09a6 \\u09a4\\u09ce\\u09aa\\u09c1\\u09b0\\u09c1\\u09b7\"}', 'D', '\'নীলকর\' উপপদ তৎপুরুষ সমাসের উদাহরণ। এটি \'নীল চাষ করে যে\' - এই বাক্যটির সংক্ষিপ্ত রূপ।'),
(84, 13, 131, 3, 4, '\'Pedagogy\' শব্দের বাংলা পরিভাষা কী?', '{\"A\":\"\\u09b8\\u09b9\\u09b6\\u09bf\\u0995\\u09cd\\u09b7\\u09be\",\"B\":\"\\u09a8\\u09be\\u09b0\\u09c0\\u09b6\\u09bf\\u0995\\u09cd\\u09b7\\u09be\",\"C\":\"\\u09b6\\u09bf\\u0995\\u09cd\\u09b7\\u09be\\u09a4\\u09a4\\u09cd\\u09a4\\u09cd\\u09ac\",\"D\":\"\\u09b6\\u09bf\\u0995\\u09cd\\u09b7\\u09be\\u09a8\\u09c0\\u09a4\\u09bf\"}', 'C', '\'Pedagogy\' শব্দের বাংলা পরিভাষা হল শিক্ষাতত্ত্ব। এটি শিক্ষা সংক্রান্ত তত্ত্ব ও অনুশীলনের সাথে জড়িত।'),
(85, 13, 131, 3, 4, '\'বঙ্কিম\' শব্দের বিপরীত শব্দ কী?', '{\"A\":\"\\u09ac\\u09a8\\u09cd\\u09a7\\u09c1\\u09b0\",\"B\":\"\\u0985\\u09b8\\u09ae\",\"C\":\"\\u09b8\\u09c1\\u09b7\\u09ae\",\"D\":\"\\u098b\\u099c\\u09c1\"}', 'D', '\'বঙ্কিম\' শব্দের বিপরীত শব্দ হল \'ঋজু\', যার অর্থ সোজা বা সরল।'),
(86, 13, 131, 3, 4, 'বাংলা একাডেমি কত সালে \'প্রমিত বাংলা বানানের নিয়ম\' প্রণয়ন করে?', '{\"A\":\"\\u09e7\\u09ef\\u09ef\\u09e6\",\"B\":\"\\u09e7\\u09ef\\u09ef\\u09e8\",\"C\":\"\\u09e7\\u09ef\\u09ef\\u09ea\",\"D\":\"\\u09e7\\u09ef\\u09ef\\u09ec\"}', 'B', 'বাংলা একাডেমি ১৯৯২ সালের জানুয়ারি মাসে \'প্রমিত বাংলা বানানের নিয়ম\' প্রথম প্রকাশ করে।'),
(87, 13, 131, 3, 4, 'নিচের কোন বানানটি শুদ্ধ?', '{\"A\":\"\\u09ae\\u09c1\\u09b2\\u09cb\",\"B\":\"\\u09ae\\u09c1\\u09b2\\u09be\",\"C\":\"\\u09a7\\u09c1\\u09b2\\u09bf\",\"D\":\"\\u09a7\\u09c2\\u09b2\\u09cb\"}', 'B', 'শুদ্ধ বানানটি হল \'মুলা\'। প্রমিত বাংলা বানানের নিয়মানুসারে, কিছু কথ্য শব্দ পরিবর্তন করে লেখ্য রূপে ব্যবহার করা উচিত।'),
(88, 13, 131, 3, 4, '\'নদী\' শব্দের সমার্থক শব্দ কোনটি?', '{\"A\":\"\\u09b8\\u09bf\\u09a8\\u09cd\\u09a7\\u09c1\",\"B\":\"\\u09b9\\u09bf\\u09b2\\u09cd\\u09b2\\u09cb\\u09b2\",\"C\":\"\\u09a4\\u099f\\u09bf\\u09a8\\u09c0\",\"D\":\"\\u09a8\\u09bf\\u09b0\\u09cd\\u099d\\u09b0\"}', 'C', '\'নদী\' শব্দের সমার্থক শব্দ হল \'তটিনী\'। সিন্ধু (সমুদ্র), হিল্লোল (ঢেউ), এবং নির্ঝর (ঝর্ণা) ভিন্ন অর্থ বহন করে।'),
(90, 13, 131, 2, 5, 'চর্যাপদের কবিরা ছিলেন-', '{\"A\":\"\\u09ae\\u09b9\\u09be\\u0998\\u09be\\u09a8\\u09c0 \\u09ac\\u09cc\\u09a6\\u09cd\\u09a7\",\"B\":\"\\u09ac\\u099c\\u09cd\\u09b0\\u0998\\u09be\\u09a8\\u09c0 \\u09ac\\u09cc\\u09a6\\u09cd\\u09a7\",\"C\":\"\\u09ac\\u09be\\u0989\\u09b2\",\"D\":\"\\u09b8\\u09b9\\u099c\\u0998\\u09be\\u09a8\\u09c0 \\u09ac\\u09cc\\u09a6\\u09cd\\u09a7\"}', 'D', 'চর্যাপদ বাংলা সাহিত্যের প্রাচীনতম নিদর্শন। এর বিষয়বস্তু হলো বৌদ্ধ ধর্মমতের সাধন ভজনের তত্ত্বপ্রকাশ। এর কবিরা ছিলেন সহজযানী বৌদ্ধ।'),
(91, 13, 131, 2, 5, '‘শূন্যপূরাণের’ রচয়িতা-', '{\"A\":\"\\u09b0\\u09be\\u09ae\\u09be\\u0987 \\u09aa\\u09a8\\u09cd\\u09a1\\u09bf\\u09a4\",\"B\":\"\\u09b9\\u09b2\\u09be\\u09af\\u09bc\\u09c2\\u09a7 \\u09ae\\u09bf\\u09b6\\u09cd\\u09b0\",\"C\":\"\\u0995\\u09be\\u09b9\\u09cd\\u09a8\\u09aa\\u09be\",\"D\":\"\\u09b6\\u09cd\\u09b0\\u09c0\\u0995\\u09b0 \\u09a8\\u09a8\\u09cd\\u09a6\\u09c0\"}', 'A', 'শূন্যপুরাণ বাংলা সাহিত্যের মধ্যযুগের একটি উল্লেখযোগ্য গ্রন্থ। এর রচয়িতা রামাই পন্ডিত। এটি গদ্য ও পদ্য মিশ্রিত একটি চম্পূকাব্য।'),
(92, 13, 131, 2, 5, 'বাংলা সাহিত্যের ইতিহাসে কাঁকিল্যা গ্রাম কেন উল্লেখযোগ্য?', '{\"A\":\"\\u09b6\\u09cd\\u09b0\\u09c0\\u099a\\u09c8\\u09a4\\u09a8\\u09cd\\u09af\\u09a6\\u09c7\\u09ac\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09ae\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\",\"B\":\"\\u09ac\\u09a1\\u09bc\\u09c1 \\u099a\\u09a3\\u09cd\\u09a1\\u09c0\\u09a6\\u09be\\u09b8\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09ae\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\",\"C\":\"\\u099a\\u09b0\\u09cd\\u09af\\u09be\\u09aa\\u09a6\\u09c7\\u09b0 \\u09aa\\u09cd\\u09b0\\u09be\\u09aa\\u09cd\\u09a4\\u09bf\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\",\"D\":\"\\u09b6\\u09cd\\u09b0\\u09c0\\u0995\\u09c3\\u09b7\\u09cd\\u09a3\\u0995\\u09c0\\u09b0\\u09cd\\u09a4\\u09cd\\u09a4\\u09a8 \\u0995\\u09be\\u09ac\\u09cd\\u09af\\u09c7\\u09b0 \\u09aa\\u09cd\\u09b0\\u09be\\u09aa\\u09cd\\u09a4\\u09bf\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\"}', 'D', 'শ্রীকৃষ্ণকীর্তন বাংলা সাহিত্যের মধ্যযুগের প্রথম নিদর্শন। ১৯০৯ সালে বসন্তরঞ্জন রায় বিদ্বদ্বল্লভ পশ্চিমবঙ্গের বাঁকুড়া জেলার কাঁকিল্যা গ্রামের এক গৃহস্থ বাড়ির গোয়াল ঘর থেকে এই গ্রন্থটি উদ্ধার করেন।'),
(93, 13, 131, 2, 5, '‘যে সবে বঙ্গেত জন্মি হিংসে বঙ্গবাণী। সে সব কাহার জন্ম নির্ণয় ন জানি।’ ––––– কবিতাংশটি কোন কাব্যের অন্তর্গত?', '{\"A\":\"\\u09a8\\u09c2\\u09b0\\u09a8\\u09be\\u09ae\\u09be\",\"B\":\"\\u09a8\\u09b8\\u09bf\\u09b9\\u09a4\\u09a8\\u09be\\u09ae\\u09be\",\"C\":\"\\u09ae\\u09a7\\u09c1\\u09ae\\u09be\\u09b2\\u09a4\\u09c0\",\"D\":\"\\u0987\\u0989\\u09b8\\u09c1\\u09ab-\\u099c\\u09c1\\u09b2\\u09c7\\u0996\\u09be\"}', 'A', 'সপ্তদশ শতকের কবি আবদুল হাকিম রচিত ‘নূরনামা’ কাব্যের অন্তর্গত ‘বঙ্গবাণী’ কবিতা থেকে এই বিখ্যাত চরণটি নেওয়া হয়েছে।'),
(94, 13, 131, 2, 5, 'আলাওল কোন শতাব্দীর কবি?', '{\"A\":\"\\u09aa\\u099e\\u09cd\\u099a\\u09a6\\u09b6\",\"B\":\"\\u09b7\\u09cb\\u09a1\\u09bc\\u09b6\",\"C\":\"\\u09b8\\u09aa\\u09cd\\u09a4\\u09a6\\u09b6\",\"D\":\"\\u0985\\u09b7\\u09cd\\u099f\\u09be\\u09a6\\u09b6\"}', 'C', 'আলাওল মধ্যযুগের রোমান্টিক প্রণয়োপাখ্যান ধারার অন্যতম কবি। তিনি সতেরো শতকের (সপ্তদশ শতাব্দী) কবি ছিলেন। তাঁর উল্লেখযোগ্য কাব্যগ্রন্থ হলো ‘পদ্মাবতী’।'),
(95, 13, 131, 2, 5, 'কোন বাংলা গানকে ইউনেস্কো Heritage of Humanity অভিধায় ভূষিত করেছে?', '{\"A\":\"\\u09b0\\u09ac\\u09c0\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0 \\u09b8\\u0982\\u0997\\u09c0\\u09a4\",\"B\":\"\\u09a8\\u099c\\u09b0\\u09c1\\u09b2 \\u09b8\\u0982\\u0997\\u09c0\\u09a4\",\"C\":\"\\u09ad\\u09be\\u099f\\u09bf\\u09af\\u09bc\\u09be\\u09b2\\u09bf \\u0997\\u09be\\u09a8\",\"D\":\"\\u09ac\\u09be\\u0989\\u09b2 \\u0997\\u09be\\u09a8\"}', 'D', 'বাংলাদেশের বাউল গানকে ইউনেস্কো ২০০৮ সালে মানবতার অধরা সাংস্কৃতিক ঐতিহ্য (Heritage of Humanity) হিসেবে স্বীকৃতি দিয়েছে।'),
(96, 13, 131, 2, 5, 'চন্ডীচরণ মুন্সী কে?', '{\"A\":\"\\u09b6\\u09cd\\u09b0\\u09c0\\u09b0\\u09be\\u09ae\\u09aa\\u09c1\\u09b0 \\u09ae\\u09bf\\u09b6\\u09a8\\u09c7\\u09b0 \\u09b2\\u09bf\\u09aa\\u09bf\\u0995\\u09b0\",\"B\":\"\\u09ab\\u09cb\\u09b0\\u09cd\\u099f \\u0989\\u0987\\u09b2\\u09bf\\u09af\\u09bc\\u09be\\u09ae \\u0995\\u09b2\\u09c7\\u099c\\u09c7\\u09b0 \\u09aa\\u09a3\\u09cd\\u09a1\\u09bf\\u09a4\",\"C\":\"\\u0995\\u09c7\\u09b0\\u09c0 \\u09b8\\u09be\\u09b9\\u09c7\\u09ac\\u09c7\\u09b0 \\u09ae\\u09c1\\u09a8\\u09cd\\u09b8\\u09c0 \\u0997\\u09cd\\u09b0\\u09a8\\u09cd\\u09b9\\u09c7\\u09b0 \\u09b0\\u099a\\u09af\\u09bc\\u09bf\\u09a4\\u09be\",\"D\":\"\\u09b8\\u09ae\\u09be\\u099a\\u09be\\u09b0 \\u099a\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0\\u09bf\\u0995\\u09be \\u09aa\\u09a4\\u09cd\\u09b0\\u09bf\\u0995\\u09be\\u09b0 \\u09b8\\u09ae\\u09cd\\u09aa\\u09be\\u09a6\\u0995\"}', 'B', 'চণ্ডীচরণ মুন্সী ফোর্ট উইলিয়াম কলেজের বাংলা বিভাগের একজন পণ্ডিত ছিলেন। তার রচিত গ্রন্থের নাম ‘তোতা ইতিহাস’।'),
(97, 13, 131, 2, 5, '‘রত্নপরীক্ষা’ গ্রন্হের রচয়িতা-', '{\"A\":\"\\u09b0\\u09be\\u09ae\\u09ae\\u09cb\\u09b9\\u09a8 \\u09b0\\u09be\\u09af\\u09bc\",\"B\":\"\\u0985\\u0995\\u09cd\\u09b7\\u09b0\\u0995\\u09c1\\u09ae\\u09be\\u09b0 \\u09a6\\u09a4\\u09cd\\u09a4\",\"C\":\"\\u0988\\u09b6\\u09cd\\u09ac\\u09b0\\u099a\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0 \\u09ac\\u09bf\\u09a6\\u09cd\\u09af\\u09be\\u09b8\\u09be\\u0997\\u09b0\",\"D\":\"\\u09b0\\u09be\\u09a7\\u09be\\u09a8\\u09be\\u09a5 \\u09b6\\u09bf\\u0995\\u09a6\\u09be\\u09b0\"}', 'C', '‘রত্নপরীক্ষা’ গ্রন্থটির রচয়িতা ঈশ্বরচন্দ্র বিদ্যাসাগর। তিনি \'কস্যচিৎ উপযুক্ত ভাইপো সহচরস্য\' ছদ্মনামে এটি প্রকাশ করেন।'),
(98, 13, 131, 2, 5, 'স্বর্ণকুমারী দেবীর পিতার নাম-', '{\"A\":\"\\u09a6\\u09cd\\u09ac\\u09be\\u09b0\\u0995\\u09be\\u09a8\\u09be\\u09a5 \\u09a0\\u09be\\u0995\\u09c1\\u09b0\",\"B\":\"\\u09a6\\u09c7\\u09ac\\u09c7\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0\\u09a8\\u09be\\u09a5 \\u09a0\\u09be\\u0995\\u09c1\\u09b0\",\"C\":\"\\u09b0\\u09a5\\u09c0\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0\\u09a8\\u09be\\u09a5 \\u09a0\\u09be\\u0995\\u09c1\\u09b0\",\"D\":\"\\u09aa\\u09cd\\u09b0\\u09ae\\u09a5 \\u099a\\u09cc\\u09a7\\u09c1\\u09b0\\u09c0\"}', 'B', 'স্বর্ণকুমারী দেবী ছিলেন প্রথম বাঙালি মহিলা ঔপন্যাসিক। তিনি মহর্ষি দেবেন্দ্রনাথ ঠাকুরের কন্যা এবং রবীন্দ্রনাথ ঠাকুরের বড় বোন।'),
(99, 13, 131, 2, 5, 'ভীষ্মদেব খোশনবীশ বঙ্কিমচন্দ্র চট্টোপাধ্যায়ের কোন গ্রন্হের চরিত্র?', '{\"A\":\"\\u0995\\u09ae\\u09b2\\u09be\\u0995\\u09be\\u09a8\\u09cd\\u09a4\",\"B\":\"\\u09b2\\u09cb\\u0995\\u09b0\\u09b9\\u09b8\\u09cd\\u09af\",\"C\":\"\\u09ae\\u09c1\\u099a\\u09bf\\u09b0\\u09be\\u09ae \\u0997\\u09c1\\u09a1\\u09bc\\u09c7\\u09b0 \\u099c\\u09c0\\u09ac\\u09a8\\u099a\\u09b0\\u09bf\\u09a4\",\"D\":\"\\u09af\\u09c1\\u0997\\u09b2\\u09be\\u0999\\u09cd\\u0997\\u09c1\\u09b0\\u09c0\\u09af\\u09bc\"}', 'A', 'ভীষ্মদেব খোশনবীশ বঙ্কিমচন্দ্র চট্টোপাধ্যায়ের বিখ্যাত রম্যরচনা ‘কমলাকান্তের দপ্তর’ এর একটি চরিত্র।'),
(100, 13, 131, 2, 5, 'দীনবন্ধু মিত্রের ‘নীলদর্পণ’ নাটকের ইংরেজি অনুবাদক-', '{\"A\":\"\\u099c\\u09b6\\u09c1\\u09af\\u09bc\\u09be \\u09ae\\u09be\\u09b0\\u09cd\\u09b6\\u09ae\\u09cd\\u09af\\u09be\\u09a8\",\"B\":\"\\u09a1\\u09c7\\u09ad\\u09bf\\u09a1 \\u09b9\\u09c7\\u09af\\u09bc\\u09be\\u09b0\",\"C\":\"\\u0988\\u09b6\\u09cd\\u09ac\\u09b0\\u099a\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0 \\u09ac\\u09bf\\u09a6\\u09cd\\u09af\\u09be\\u09b8\\u09be\\u0997\\u09b0\",\"D\":\"\\u09ae\\u09be\\u0987\\u0995\\u09c7\\u09b2 \\u09ae\\u09a7\\u09c1\\u09b8\\u09c2\\u09a6\\u09a8 \\u09a6\\u09a4\\u09cd\\u09a4\"}', 'D', 'দীনবন্ধু মিত্রের ‘নীলদর্পণ’ নাটকটি মাইকেল মধুসূদন দত্ত ‘Nil Darpan’ or ‘The Indigo Planting Mirror’ নামে ইংরেজিতে অনুবাদ করেন।'),
(101, 13, 131, 2, 5, 'রঞ্জন চরিত্রটি রবীন্দ্রনাথ ঠাকুরের কোন নাটকের?', '{\"A\":\"\\u09ac\\u09bf\\u09b8\\u09b0\\u09cd\\u099c\\u09a8\",\"B\":\"\\u09b0\\u0995\\u09cd\\u09a4\\u0995\\u09b0\\u09ac\\u09c0\",\"C\":\"\\u09ae\\u09c1\\u0995\\u09cd\\u09a4\\u09a7\\u09be\\u09b0\\u09be\",\"D\":\"\\u09a1\\u09be\\u0995\\u0998\\u09b0\"}', 'B', 'রঞ্জন রবীন্দ্রনাথ ঠাকুরের বিখ্যাত সাংকেতিক নাটক ‘রক্তকরবী’-র একটি অন্যতম প্রধান চরিত্র। নাটকটির প্রধান চরিত্র নন্দিনী।'),
(102, 13, 131, 2, 5, '‘তৈল’ প্রবন্ধটি লিখেছেন-', '{\"A\":\"\\u09b8\\u09c1\\u0995\\u09c1\\u09ae\\u09be\\u09b0 \\u09b0\\u09be\\u09af\\u09bc\",\"B\":\"\\u09b0\\u09ae\\u09c7\\u09b6\\u099a\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0 \\u09ae\\u099c\\u09c1\\u09ae\\u09a6\\u09be\\u09b0\",\"C\":\"\\u09b6\\u09bf\\u09ac\\u09a8\\u09be\\u09b0\\u09be\\u09af\\u09bc\\u09a3 \\u09b0\\u09be\\u09af\\u09bc\",\"D\":\"\\u09b9\\u09b0\\u09aa\\u09cd\\u09b0\\u09b8\\u09be\\u09a6 \\u09b6\\u09be\\u09b8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0\"}', 'D', '‘তৈল’ নামক বিখ্যাত প্রবন্ধটির রচয়িতা হলেন মহামহোপাধ্যায় হরপ্রসাদ শাস্ত্রী, যিনি চর্যাপদের আবিষ্কারক হিসেবেও পরিচিত।'),
(103, 13, 131, 2, 5, '“নাম রেখেছি কোমল গান্ধার” কাব্যের রচয়িতা-', '{\"A\":\"\\u09b0\\u09ac\\u09c0\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0\\u09a8\\u09be\\u09a5 \\u09a0\\u09be\\u0995\\u09c1\\u09b0\",\"B\":\"\\u09ac\\u09bf\\u09b7\\u09cd\\u09a3\\u09c1 \\u09a6\\u09c7\",\"C\":\"\\u0985\\u09ae\\u09bf\\u09af\\u09bc \\u099a\\u0995\\u09cd\\u09b0\\u09ac\\u09b0\\u09cd\\u09a4\\u09c0\",\"D\":\"\\u09aa\\u09cd\\u09b0\\u09c7\\u09ae\\u09c7\\u09a8\\u09cd\\u09a6\\u09cd\\u09b0 \\u09ae\\u09bf\\u09a4\\u09cd\\u09b0\"}', 'B', '‘নাম রেখেছি কোমল গান্ধার’ কাব্যগ্রন্থটির রচয়িতা আধুনিক কবি বিষ্ণু দে। এটি তার অন্যতম উল্লেখযোগ্য সাহিত্যকর্ম।'),
(104, 13, 131, 2, 5, '‘ও মন রমজানের ঐ রোজার শেষে এলো খুশির ঈদ’- গানটির রচয়িতা-', '{\"A\":\"\\u0995\\u09be\\u099c\\u09c0 \\u09a8\\u099c\\u09b0\\u09c1\\u09b2 \\u0987\\u09b8\\u09b2\\u09be\\u09ae\",\"B\":\"\\u0997\\u09cb\\u09b2\\u09be\\u09ae \\u09ae\\u09cb\\u09b8\\u09cd\\u09a4\\u09ab\\u09be\",\"C\":\"\\u099c\\u09b8\\u09c0\\u09ae\\u0989\\u09a6\\u09cd\\u200c\\u09a6\\u09c0\\u09a8\",\"D\":\"\\u0986\\u09ac\\u09cd\\u09ac\\u09be\\u09b8 \\u0989\\u09a6\\u09cd\\u09a6\\u09c0\\u09a8 \\u0986\\u09b9\\u09ae\\u09a6\"}', 'A', 'ঈদুল ফিতর নিয়ে রচিত এই কালজয়ী গানটির রচয়িতা ও সুরকার হলেন বাংলাদেশের জাতীয় কবি কাজী নজরুল ইসলাম।'),
(105, 13, 131, 2, 5, 'শামসুর রাহমানের রচিত উপন্যাস-', '{\"A\":\"\\u09aa\\u09a4\\u0999\\u09cd\\u0997 \\u09aa\\u09bf\\u099e\\u09cd\\u099c\\u09b0\",\"B\":\"\\u09aa\\u09cd\\u09b0\\u09c7\\u09ae \\u098f\\u0995\\u099f\\u09bf \\u09b2\\u09be\\u09b2 \\u0997\\u09cb\\u09b2\\u09be\\u09aa\",\"C\":\"\\u09b0\\u09cc\\u09a6\\u09cd\\u09b0 \\u0995\\u09b0\\u09cb\\u099f\\u09bf\\u09a4\\u09c7\",\"D\":\"\\u0985\\u09a6\\u09cd\\u09ad\\u09c2\\u09a4 \\u0986\\u0981\\u09a7\\u09be\\u09b0 \\u098f\\u0995\"}', 'D', 'নাগরিক কবি শামসুর রাহমান মূলত কবি হলেও চারটি উপন্যাস রচনা করেন। তাঁর রচিত উপন্যাসগুলো হলো: অক্টোপাস, অদ্ভুত আঁধার এক, নিয়ত মন্তাজ এবং এলো সে অবেলায়।'),
(106, 13, 131, 2, 5, 'সেলিম আল দীনের নাটকে অনুসৃত শিল্পতত্ত্ব-', '{\"A\":\"\\u0985\\u09b8\\u09cd\\u09a4\\u09bf\\u09a4\\u09cd\\u09ac\\u09ac\\u09be\\u09a6\",\"B\":\"\\u0985\\u09ad\\u09bf\\u09ac\\u09cd\\u09af\\u0995\\u09cd\\u09a4\\u09bf\\u09ac\\u09be\\u09a6\",\"C\":\"\\u09aa\\u09b0\\u09be\\u09ac\\u09be\\u09b8\\u09cd\\u09a4\\u09ac\\u09ac\\u09be\\u09a6\",\"D\":\"\\u09a6\\u09cd\\u09ac\\u09c8\\u09a4\\u09be\\u09a6\\u09cd\\u09ac\\u09c8\\u09a4\\u09ac\\u09be\\u09a6\"}', 'D', 'নাট্যাচার্য সেলিম আল দীন তার নাটকে ‘দ্বৈতাদ্বৈতবাদী’ শিল্পতত্ত্ব অনুসরণ করতেন, যা প্রাচ্য ও পাশ্চাত্যের শিল্পরীতির সমন্বয়ে গঠিত।'),
(107, 13, 131, 2, 5, '‘পৃথক পালঙ্ক’ কাব্যগ্রন্হের কবি-', '{\"A\":\"\\u0986\\u09b2 \\u09ae\\u09be\\u09b9\\u09ae\\u09c1\\u09a6\",\"B\":\"\\u09b0\\u09ab\\u09bf\\u0995 \\u0986\\u099c\\u09be\\u09a6\",\"C\":\"\\u0986\\u09ac\\u09c1\\u09b2 \\u09b9\\u09be\\u09b8\\u09be\\u09a8\",\"D\":\"\\u0986\\u09ac\\u09c1\\u09b2 \\u09b9\\u09cb\\u09b8\\u09c7\\u09a8\"}', 'C', '‘পৃথক পালঙ্ক’ ষাটের দশকের অন্যতম কবি আবুল হাসানের একটি বিখ্যাত কাব্যগ্রন্থ। তার অন্যান্য উল্লেখযোগ্য কাব্যগ্রন্থ হলো ‘রাজা যায় রাজা আসে’।'),
(108, 13, 131, 2, 5, 'কোন গল্পকারের গল্পে ম্যাজিক রিয়েলিজমের প্রতিফলন ঘটেছে?', '{\"A\":\"\\u099c\\u09cd\\u09af\\u09cb\\u09a4\\u09bf\\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6 \\u09a6\\u09a4\\u09cd\\u09a4\",\"B\":\"\\u09b0\\u09bf\\u099c\\u09bf\\u09af\\u09bc\\u09be \\u09b0\\u09b9\\u09ae\\u09be\\u09a8\",\"C\":\"\\u09b6\\u09b9\\u09c0\\u09a6\\u09c1\\u09b2 \\u099c\\u09b9\\u09bf\\u09b0\",\"D\":\"\\u09a6\\u09bf\\u09b2\\u09be\\u09b0\\u09be \\u09b9\\u09be\\u09b6\\u09c7\\u09ae\"}', 'C', 'শহীদুল জহির (প্রকৃত নাম মোহাম্মদ শহীদুল হক) বাংলা সাহিত্যে জাদুবাস্তবতা বা ম্যাজিক রিয়েলিজমের সার্থক প্রয়োগ ঘটান। তার ‘সে রাতে পূর্ণিমা ছিল’ উপন্যাসে এর স্পষ্ট প্রতিফলন দেখা যায়।');
INSERT INTO `questions` (`id`, `subject_id`, `lesson_id`, `topic_id`, `exam_id`, `question`, `options`, `answer`, `explanation`) VALUES
(109, 13, 131, 2, 5, '“একুশ মানে মাথা নত না করা”- এই অমর পঙ্‌ক্তির রচয়িতা-', '{\"A\":\"\\u0986\\u09ac\\u09a6\\u09c1\\u09b2 \\u0997\\u09be\\u09ab\\u09ab\\u09be\\u09b0 \\u099a\\u09cc\\u09a7\\u09c1\\u09b0\\u09c0\",\"B\":\"\\u0986\\u09ac\\u09c1\\u09b2 \\u09ab\\u099c\\u09b2\",\"C\":\"\\u09ae\\u09c1\\u09a8\\u09c0\\u09b0 \\u099a\\u09cc\\u09a7\\u09c1\\u09b0\\u09c0\",\"D\":\"\\u09b8\\u09bf\\u09b0\\u09be\\u099c\\u09c1\\u09b2 \\u0987\\u09b8\\u09b2\\u09be\\u09ae \\u099a\\u09cc\\u09a7\\u09c1\\u09b0\\u09c0\"}', 'B', '“একুশ মানে মাথা নত না করা” এই বিখ্যাত উক্তিটি প্রাবন্ধিক ও শিক্ষাবিদ আবুল ফজলের। এটি তার ‘একুশ মানে মাথা নত না করা’ শীর্ষক প্রবন্ধের অংশ।'),
(153, 13, 131, 4, 6, 'Which of the following words can be used as a verb?', '{\"A\":\"mobile\",\"B\":\"sugar\",\"C\":\"media\",\"D\":\"sand\"}', 'D', 'The word \'sand\' can be used as a noun (the material) and a verb (the action of smoothing a surface with sand or sandpaper). For example: \'You should sand the wood before painting.\''),
(154, 13, 131, 4, 6, 'In which sentence ‘Like’ is used as a preposition?', '{\"A\":\"He likes to eat fish\",\"B\":\"he laughs like his father does\",\"C\":\"He climbed the tree like a cat\",\"D\":\"Like minded people are necessary to start a business\"}', 'C', 'In this sentence, \'like\' is used as a preposition to compare the manner of climbing (\'like a cat\') with the action performed (\'climbed the tree\'). It introduces a prepositional phrase.'),
(155, 13, 131, 4, 6, 'He died _following_ the incident. The underlined word is a/an–', '{\"A\":\"adjective\",\"B\":\"adverb\",\"C\":\"noun\",\"D\":\"preposition\"}', 'D', 'In this sentence, \'following\' is used as a preposition meaning \'after\'. It connects the noun \'incident\' to the rest of the sentence.'),
(156, 13, 131, 4, 6, '_Writing a diary_ is a very good practice to develop the writing skill. The underlined part is a/an--', '{\"A\":\"noun phrase\",\"B\":\"verbal phrase\",\"C\":\"adjective phrase\",\"D\":\"adverbial phrase\"}', 'A', 'The phrase \'Writing a diary\' acts as the subject of the verb \'is\'. Since it functions as a noun in the sentence, it is a noun phrase (specifically, a gerund phrase).'),
(157, 13, 131, 4, 6, 'Fill in the blank with the correct word. ______ he lay on the ground groaning.', '{\"A\":\"Injured\",\"B\":\"Injuring\",\"C\":\"having injured\",\"D\":\"Be injured\"}', 'A', 'None of the options are grammatically correct. The sentence has a dangling modifier. A correct form would be \'Having been injured, he lay on the ground groaning\' or \'Injured, he lay on the ground groaning.\''),
(158, 13, 131, 4, 6, 'Find out the meaning of the following phrase: By and large', '{\"A\":\"very large\",\"B\":\"on the whole\",\"C\":\"far away\",\"D\":\"the largest one\"}', 'B', 'The idiom \'by and large\' means \'in general\' or \'on the whole\'.'),
(159, 13, 131, 4, 6, 'Choose the best alternative for the underlined. He _went back_ on his promise of voting for me.', '{\"A\":\"withdrew\",\"B\":\"forgot\",\"C\":\"reinforced\",\"D\":\"support\"}', 'A', 'The phrasal verb \'to go back on\' means to fail to keep a promise. \'Withdrew\' is the closest synonym in this context.'),
(160, 13, 131, 4, 6, '‘Let the cat out of the bag’ means ––', '{\"A\":\"bring out a cat from a bag\",\"B\":\"let a cat move at large\",\"C\":\"reveal a secret carelessly\",\"D\":\"take a pre-cautious steps\"}', 'C', 'The idiom \'let the cat out of the bag\' means to reveal a secret, often accidentally.'),
(161, 13, 131, 4, 6, 'He is a man _to depend on_. The underlined part is ______ .', '{\"A\":\"a noun phrase\",\"B\":\"an adjective phrase\",\"C\":\"an adverbial phrase\",\"D\":\"a prepositional phrase\"}', 'B', 'The phrase \'to depend on\' describes the noun \'man\'. A phrase that modifies a noun or pronoun acts as an adjective, so this is an adjective phrase (specifically, an infinitive phrase acting as an adjective).'),
(162, 13, 131, 4, 6, 'His dream _that he will be a B.C.S cadre_ finally came true. The underlined part is ---', '{\"A\":\"a noun clause\",\"B\":\"an adjective clause\",\"C\":\"an independent clause\",\"D\":\"a co-ordinate clause\"}', 'A', 'The clause \'that he will be a B.C.S cadre\' explains what \'his dream\' is. It functions as an appositive to the noun \'dream\', making it a noun clause in apposition.'),
(163, 13, 131, 4, 6, 'Which of the following is a correct simple sentence?', '{\"A\":\"All that glitters is not gold\",\"B\":\"All\\u2019s well that ends well\",\"C\":\"Do or die\",\"D\":\"I saw an old man walking past me\"}', 'D', 'A simple sentence has only one independent clause. Option D has one subject (\'I\') and one main verb (\'saw\'). Options A and B are complex sentences, and option C is a compound sentence.'),
(164, 13, 131, 4, 6, 'Which is the correct complex form of the sentence? ‘A corrupt man cannot win the respect of others’', '{\"A\":\"A man who is corrupt cannot respect others\",\"B\":\"A man does not respect others who are corrupt.\",\"C\":\"A man who is corrupt cannot win the respect of others.\",\"D\":\"A man who can win the respect of others cannot be corrupt.\"}', 'C', 'A complex sentence has an independent clause and at least one dependent clause. Option C correctly turns the adjective \'corrupt\' into a dependent adjective clause (\'who is corrupt\') while keeping the original meaning.'),
(165, 13, 131, 4, 6, 'Find out the correct positive form of the sentence: ‘Who else is the better player than Zaman in the team?’', '{\"A\":\"Is there any other player in this team who is as good as Zaman?\",\"B\":\"Who is the best player than Zaman in this team?\",\"C\":\"Is there any other players in this team who is as good as Zaman?\",\"D\":\"Are there any other player in this team who are as good as Zaman?\"}', 'A', 'To change the interrogative-comparative sentence to a positive degree, we use the structure \'Is there any other... as good as...\'. Option A correctly follows this structure with proper subject-verb agreement (\'player...is\').'),
(166, 13, 131, 4, 6, 'The submarine dipped to avoid ______ by the enemy plane.', '{\"A\":\"see\",\"B\":\"seeing\",\"C\":\"being seen\",\"D\":\"seen\"}', 'C', 'The verb \'avoid\' is followed by a gerund (-ing form). Since the submarine is the object of the action of seeing (the enemy plane sees the submarine), a passive gerund \'being seen\' is required.'),
(167, 13, 131, 4, 6, 'In fear of _____ he escaped elsewhere.', '{\"A\":\"arresting\",\"B\":\"arrested\",\"C\":\"being arrested\",\"D\":\"having arrested\"}', 'C', 'The preposition \'of\' requires a noun or a gerund as its object. The meaning is passive (he feared that he would be arrested), so the passive gerund \'being arrested\' is the correct choice.'),
(168, 13, 131, 4, 6, 'I didn’t follow who passed by me. It ____ Shajib.', '{\"A\":\"were\",\"B\":\"must be\",\"C\":\"might be\",\"D\":\"was\"}', 'C', 'The speaker is uncertain about the identity of the person. \'Might be\' expresses a possibility or uncertainty about a past event, which fits the context of \'I didn\'t follow who passed by me\'.'),
(169, 13, 131, 4, 6, 'Samin is my colleague. I ___ him for ten years.', '{\"A\":\"know\",\"B\":\"knew\",\"C\":\"have known\",\"D\":\"have been known\"}', 'C', 'The use of \'for ten years\' indicates an action that started in the past and continues to the present. The present perfect tense \'have known\' is used for such situations, especially with stative verbs like \'know\'.'),
(170, 13, 131, 4, 6, 'The snow swirls _____ the valley.', '{\"A\":\"up\",\"B\":\"in\",\"C\":\"down\",\"D\":\"through\"}', 'C', '\'Down\' is used to indicate movement from a higher to a lower position. Snow swirls and falls from the sky down into the valley.'),
(171, 13, 131, 4, 6, 'There is a coffee shop ____ the street.', '{\"A\":\"at\",\"B\":\"on\",\"C\":\"before\",\"D\":\"across\"}', 'D', '\'Across the street\' means on the opposite side. \'On the street\' is also possible but \'across\' more specifically means on the other side from the speaker.'),
(172, 13, 131, 4, 6, 'Identify the correct sentence:', '{\"A\":\"He has said to me that I will go but you will stay there in Dhaka.\",\"B\":\"He has told me that he will go but I will stay here in Dhaka.\",\"C\":\"He has told me that I would go but you would stay here in Dhaka.\",\"D\":\"He has told me that he would go but I would stay here in Dhaka.\"}', 'B', 'In indirect speech, \'say to\' becomes \'tell\'. Since the reporting verb is in the present perfect (\'has told\'), the tense of the reported speech does not change. Pronouns must be changed correctly: \'I\' (in the quote) becomes \'he\', and \'you\' becomes \'I\'.'),
(173, 13, 131, 4, 6, 'Identify the correct sentence:', '{\"A\":\"The room was darkened by switching off all the lights.\",\"B\":\"The room was darkened switching off all the lights.\",\"C\":\"The room was darkened to switch off all the lights.\",\"D\":\"Switching off all the lights the room was darkened.\"}', 'A', 'This sentence correctly uses the passive voice (\'The room was darkened\') and explains the method using the prepositional phrase \'by switching off all the lights\'. Option D contains a dangling modifier.'),
(174, 13, 131, 4, 6, 'Identify the correct sentence:', '{\"A\":\"Had you been there on time, you could have had the information.\",\"B\":\"If you had been there on time, you could have the information.\",\"C\":\"If you have been there on time, you might get the information.\",\"D\":\"Had been you there, you could have got the information.\"}', 'A', 'This is a third conditional sentence expressing an unreal past condition and its result. The structure is \'Had + subject + past participle, ... subject + would/could/might + have + past participle\'. Option A correctly follows this inverted structure.'),
(175, 13, 131, 4, 6, 'Identify the correct sentence:', '{\"A\":\"There are trees on the both sides of the road.\",\"B\":\"There are trees on both the sides of the road.\",\"C\":\"There are trees, on the side of the road.\",\"D\":\"There are trees on either sides of the road.\"}', 'B', 'The correct grammatical structure for the determiner \'both\' is \'both the + noun\'. \'The both\' is incorrect. \'Either\' should be followed by a singular noun (\'either side\').'),
(176, 13, 131, 4, 6, 'The antonym of ‘boisterous’ is --', '{\"A\":\"noisy\",\"B\":\"quiet\",\"C\":\"unruly\",\"D\":\"cheerful\"}', 'B', '\'Boisterous\' means noisy, energetic, and cheerful. Its antonym would be \'quiet\', \'calm\', or \'tranquil\'. Option B \'quit\' is a verb and likely a typo for \'quiet\'. As written, none of the options are a correct antonym.');

-- --------------------------------------------------------

--
-- Table structure for table `reading_logs`
--

CREATE TABLE `reading_logs` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `read_date` date NOT NULL,
  `pages_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `total_lessons` int(11) NOT NULL DEFAULT 0,
  `total_pages` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `book_name`, `total_lessons`, `total_pages`, `start_date`, `end_date`, `category`) VALUES
(1, 'বাংলা সাহিত্য - ২০ ', '৪৫ তম প্রিলি প্রিপারেশন বুক ', 5, 81, '2025-06-22', '2025-08-31', 'General'),
(2, 'বাংলা ব্যাকরণ - ১৫ ', 'অভিযাত্রী , এটিএম ', 44, 839, '2025-06-22', '2025-08-31', 'General'),
(3, 'English Literature - 15', '45th BCS Preli Preparation Book', 18, 232, '2025-06-22', '2025-08-31', 'General'),
(4, 'English Grammar', 'Master', 62, 1231, '2025-06-22', '2025-08-31', 'General'),
(5, 'বাংলাদেশ বিষয়াবলী - ৩০', '৪৫ তম BCS প্রিলি প্রিপারেশন বুক', 15, 473, '2025-06-22', '2025-08-31', 'General'),
(6, 'আন্তর্জাতিক বিষয়াবলী - ২০', '৪৫ তম BCS প্রিলি প্রিপারেশন বুক', 22, 349, '2025-06-22', '2025-08-31', 'General'),
(7, 'ভূগোল ( বাংলাদেশ ও বিশ্ব ) , পরিবেশ ও দুর্যোগ ব্যাবস্থাপনা - ১০', '৪৫ তম BCS প্রিলি প্রিপারেশন বুক', 7, 179, '2025-06-22', '2025-08-31', 'General'),
(8, 'সাধারণ বিজ্ঞান - ১৫', '৪৫ তম BCS প্রিলি প্রিপারেশন বুক', 19, 252, '2025-06-22', '2025-08-31', 'Science'),
(9, 'কম্পিউটার ও তথ্য প্রযুক্তি - ১৫', 'Cloud IT Solution', 32, 988, '2025-06-22', '2025-08-31', 'IT'),
(10, 'গাণিতিক যুক্তি - ১৫', 'Khairul\'s Basic Math', 47, 1048, '2025-06-22', '2025-08-31', 'Science'),
(11, 'মানসিক দক্ষতা -১৫', '৪৫ তম BCS প্রিলি প্রিপারেশন বুক', 6, 370, '2025-06-22', '2025-08-31', 'Science'),
(12, 'নৈতিকতা , মূল্যবোধ ও সুশাসন - ১০', '৪৫ তম BCS প্রিলি প্রিপারেশন বুক', 8, 102, '2025-06-22', '2025-08-31', 'General'),
(13, 'Job Solution ', 'Professor\'s Job Soltuion - 2024', 7, 1676, '2025-06-22', '2025-08-31', 'General'),
(14, 'Bank', 'Professor\'s Key To Bank Job - 2022', 23, 1124, '2025-06-22', '2025-08-31', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `start_page` int(11) NOT NULL,
  `end_page` int(11) NOT NULL,
  `expected_exams` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `subject_id`, `lesson_id`, `topic_name`, `start_page`, `end_page`, `expected_exams`) VALUES
(1, 6, 130, 'বিশ্ব সভ্যতা ', 28, 33, 2),
(2, 13, 131, 'বাংলা সাহিত্য ', 3, 4, 1),
(3, 13, 131, 'বাংলা ব্যাকরণ ', 4, 7, 1),
(4, 13, 131, 'English Grammar', 8, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `lesson_id` (`lesson_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `lesson_id` (`lesson_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `lesson_id` (`lesson_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `reading_logs`
--
ALTER TABLE `reading_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_date` (`subject_id`,`read_date`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `reading_logs`
--
ALTER TABLE `reading_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exams_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exams_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `performance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `performance_ibfk_3` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `performance_ibfk_4` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reading_logs`
--
ALTER TABLE `reading_logs`
  ADD CONSTRAINT `reading_logs_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
