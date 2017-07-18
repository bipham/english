-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2017 lúc 09:37 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `reading`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `level_cate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `parent_id`, `level_cate`, `created_at`, `updated_at`) VALUES
(2, 'sports', 1, 0, 0, '2017-07-15 03:56:14', '2017-07-15 03:56:14'),
(3, 'Education', 1, 0, 0, '2017-07-15 04:37:02', '2017-07-15 04:37:02'),
(4, 'Music', 1, 0, 0, '2017-07-15 07:44:57', '2017-07-15 07:44:57'),
(5, 'asd', 1, 0, 0, '2017-07-17 22:00:21', '2017-07-17 22:00:21'),
(6, 'ad', 1, 0, 0, '2017-07-18 08:48:18', '2017-07-18 08:48:18'),
(7, 'dasd', 1, 0, 0, '2017-07-18 11:21:10', '2017-07-18 11:21:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_posts`
--

CREATE TABLE `cate_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_posts`
--

INSERT INTO `cate_posts` (`id`, `post_id`, `cate_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 1, '2017-07-15 07:41:01', '2017-07-15 07:41:01'),
(2, 6, 2, 1, '2017-07-16 02:39:06', '2017-07-16 02:39:06'),
(3, 7, 2, 1, '2017-07-16 03:00:41', '2017-07-16 03:00:41'),
(4, 8, 2, 1, '2017-07-16 03:01:21', '2017-07-16 03:01:21'),
(5, 9, 3, 1, '2017-07-16 03:47:55', '2017-07-16 03:47:55'),
(6, 11, 3, 1, '2017-07-16 04:02:09', '2017-07-16 04:02:09'),
(7, 15, 4, 1, '2017-07-16 04:08:51', '2017-07-16 04:08:51'),
(8, 16, 4, 1, '2017-07-16 04:39:34', '2017-07-16 04:39:34'),
(9, 18, 4, 1, '2017-07-16 04:44:16', '2017-07-16 04:44:16'),
(10, 21, 4, 1, '2017-07-16 04:52:07', '2017-07-16 04:52:07'),
(11, 22, 3, 1, '2017-07-16 05:23:23', '2017-07-16 05:23:23'),
(12, 23, 4, 1, '2017-07-16 05:27:53', '2017-07-16 05:27:53'),
(13, 25, 4, 1, '2017-07-16 05:31:23', '2017-07-16 05:31:23'),
(14, 26, 4, 1, '2017-07-16 05:31:57', '2017-07-16 05:31:57'),
(15, 27, 3, 1, '2017-07-16 09:28:30', '2017-07-16 09:28:30'),
(16, 29, 2, 1, '2017-07-16 11:02:25', '2017-07-16 11:02:25'),
(17, 30, 3, 1, '2017-07-17 00:00:33', '2017-07-17 00:00:33'),
(18, 31, 2, 1, '2017-07-17 01:21:14', '2017-07-17 01:21:14'),
(19, 32, 2, 1, '2017-07-18 01:48:16', '2017-07-18 01:48:16'),
(20, 33, 2, 1, '2017-07-18 01:48:44', '2017-07-18 01:48:44'),
(21, 34, 4, 1, '2017-07-18 02:03:00', '2017-07-18 02:03:00'),
(22, 35, 2, 1, '2017-07-18 02:10:34', '2017-07-18 02:10:34'),
(23, 36, 4, 1, '2017-07-18 02:11:27', '2017-07-18 02:11:27'),
(24, 1, 3, 1, '2017-07-18 03:59:20', '2017-07-18 03:59:20'),
(25, 2, 2, 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(26, 3, 3, 1, '2017-07-18 10:47:20', '2017-07-18 10:47:20'),
(27, 4, 2, 1, '2017-07-18 10:54:36', '2017-07-18 10:54:36'),
(28, 5, 7, 1, '2017-07-18 11:21:36', '2017-07-18 11:21:36'),
(29, 6, 3, 1, '2017-07-18 11:56:40', '2017-07-18 11:56:40'),
(30, 7, 3, 1, '2017-07-18 12:00:32', '2017-07-18 12:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_questions`
--

CREATE TABLE `comment_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply_id` int(10) UNSIGNED NOT NULL,
  `content_cmt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_questions`
--

INSERT INTO `comment_questions` (`id`, `question_id`, `user_id`, `reply_id`, `content_cmt`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, 'test adads', 1, NULL, NULL),
(2, 2, 3, 0, 'adsa  dsad ad', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2017_07_15_071548_create_type_questions_table', 2),
(16, '2017_07_15_071643_create_cate_posts_table', 2),
(17, '2017_07_15_072050_create_quiz_questions_table', 2),
(18, '2017_07_15_072210_create_comment_questions_table', 2),
(19, '2017_07_15_094900_create_categories_table', 2),
(29, '2017_07_18_104758_create_reading_lessons_table', 3),
(30, '2017_07_18_104920_create_quizzes_table', 3),
(31, '2017_07_18_105021_create_questions_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `question_id_custom` int(10) UNSIGNED NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_id_custom`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 1, '2017-07-18 03:59:20', '2017-07-18 03:59:20'),
(2, 2, 2, 'A', 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(3, 2, 3, 'B', 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(4, 2, 4, 'D', 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(5, 2, 5, 'G', 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(6, 2, 6, 'D', 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(7, 2, 7, 'C', 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(8, 3, 8, 'A', 1, '2017-07-18 10:47:20', '2017-07-18 10:47:20'),
(9, 4, 9, 'A', 1, '2017-07-18 10:54:36', '2017-07-18 10:54:36'),
(10, 5, 10, 'A', 1, '2017-07-18 11:21:36', '2017-07-18 11:21:36'),
(11, 6, 11, 'asd', 1, '2017-07-18 11:56:40', '2017-07-18 11:56:40'),
(12, 6, 12, 'ad', 1, '2017-07-18 11:56:40', '2017-07-18 11:56:40'),
(13, 7, 13, 'A', 1, '2017-07-18 12:00:32', '2017-07-18 12:00:32'),
(14, 7, 14, 'C', 1, '2017-07-18 12:00:32', '2017-07-18 12:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `content_quiz` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_answer_quiz` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_questions` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quizzes`
--

INSERT INTO `quizzes` (`id`, `post_id`, `content_quiz`, `content_answer_quiz`, `total_questions`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"1\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"1\" data-toggle=\"collapse\" href=\"#commentArea-1\" aria-expanded=\"false\" aria-controls=\"commentArea-1\" onclick=\"showComments(1)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-1\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 1, 1, '2017-07-18 03:59:20', '2017-07-18 03:59:20'),
(2, 2, '<p><strong>1&nbsp; &nbsp;&nbsp;</strong>The writer suggests that people may have difficulty sleeping in the mountains because</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>A</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"A\" />humans do not prefer peace and quiet to noise.</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>B</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"B\" />they may be exposed to short bursts of very strange sounds.</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>C</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"C\" />humans prefer to hear a certain amount of noise while they sleep.</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>D</strong></span> <input class=\"question-quiz question-radio question-1 last-option\" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"D\" />they may have adapted to a higher noise level in the city.</p>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n\n<h2>Questions 4-8</h2>\n\n<p><em>Complete the summary using the list of words and phrases,<strong>&nbsp;A-J</strong>, below.</em></p>\n\n<p><em>Write the correct letter,&nbsp;<strong>A-J</strong>, in boxes&nbsp;<strong>4-8</strong>&nbsp;on your answer sheet.</em></p>\n\n<p><em>NB You may use any letter<strong>&nbsp;more than once</strong>.</em></p>\n\n<p><strong>A</strong>&nbsp;no control over</p>\n\n<p><strong>B</strong>&nbsp;unexpected&nbsp;</p>\n\n<p><strong>C</strong>&nbsp;intense</p>\n\n<p><strong>D</strong>&nbsp;the same amount of</p>\n\n<p><strong>E</strong>&nbsp;performed better than&nbsp;</p>\n\n<p><strong>F</strong>&nbsp;performed at about the same level as&nbsp;</p>\n\n<p><strong>G</strong>&nbsp;no</p>\n\n<p><strong>H</strong>&nbsp;showed more irritation than</p>\n\n<p><strong>I</strong>&nbsp;made more mistakes than&nbsp;</p>\n\n<p><strong>J</strong>&nbsp;different types of</p>\n\n<p>Glass and Singer (1972) showed that situations in which there is intense noise have&nbsp;less effect on performance than circumstances in which&nbsp;<b>4&nbsp;</b><select class=\"question-quiz question-select question-4 last-option\" data-qnumber=\"3\" name=\"question-4\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;noise&nbsp;occurs.</p>\n\n<p>Subjects were divided into groups to perform a task. Some heard loud bursts of noise, others soft. For some subjects, the noise was predictable, while for others its&nbsp;occurrence was random. All groups were exposed to&nbsp;<b>5&nbsp;</b><select class=\"question-quiz question-select question-5 last-option\" data-qnumber=\"4\" name=\"question-5\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;noise.</p>\n\n<p>The&nbsp;predictable noise group&nbsp;<b>6&nbsp;</b><select class=\"question-quiz question-select question-6 last-option\" data-qnumber=\"5\" name=\"question-6\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;the unpredictable noise group on this task.</p>\n\n<p>In the second part of the experiment, the four groups were given a proofreading task to complete under conditions of no noise. They were required to check written material for errors.The group which had been exposed to unpredictable noise&nbsp;<b>7&nbsp;</b><select class=\"question-quiz question-select question-7 last-option\" data-qnumber=\"6\" name=\"question-7\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;the group which had been exposed to predictable noise. The group which had been exposed to loud predictable noise performed better than those who had heard soft,&nbsp;unpredictable bursts.</p>\n\n<p>The results suggest that&nbsp;<b>8&nbsp;</b><select class=\"question-quiz question-select question-8 last-option\" data-qnumber=\"7\" name=\"question-8\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;noise produces fatigue but that this manifests itself later.</p>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n', '<p><strong>1&nbsp; &nbsp;&nbsp;</strong>The writer suggests that people may have difficulty sleeping in the mountains because</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>A</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"A\" disabled=\"disabled\">humans do not prefer peace and quiet to noise.</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>B</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"B\" disabled=\"disabled\">they may be exposed to short bursts of very strange sounds.</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>C</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"C\" disabled=\"disabled\">humans prefer to hear a certain amount of noise while they sleep.</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>D</strong></span> <input class=\"question-quiz question-radio question-1 last-option\" data-qnumber=\"2\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"D\" disabled=\"disabled\">they may have adapted to a higher noise level in the city.</p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"2\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"2\" data-toggle=\"collapse\" href=\"#commentArea-2\" aria-expanded=\"false\" aria-controls=\"commentArea-2\" onclick=\"showComments(2)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-2\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n\n<h2>Questions 4-8</h2>\n\n<p><em>Complete the summary using the list of words and phrases,<strong>&nbsp;A-J</strong>, below.</em></p>\n\n<p><em>Write the correct letter,&nbsp;<strong>A-J</strong>, in boxes&nbsp;<strong>4-8</strong>&nbsp;on your answer sheet.</em></p>\n\n<p><em>NB You may use any letter<strong>&nbsp;more than once</strong>.</em></p>\n\n<p><strong>A</strong>&nbsp;no control over</p>\n\n<p><strong>B</strong>&nbsp;unexpected&nbsp;</p>\n\n<p><strong>C</strong>&nbsp;intense</p>\n\n<p><strong>D</strong>&nbsp;the same amount of</p>\n\n<p><strong>E</strong>&nbsp;performed better than&nbsp;</p>\n\n<p><strong>F</strong>&nbsp;performed at about the same level as&nbsp;</p>\n\n<p><strong>G</strong>&nbsp;no</p>\n\n<p><strong>H</strong>&nbsp;showed more irritation than</p>\n\n<p><strong>I</strong>&nbsp;made more mistakes than&nbsp;</p>\n\n<p><strong>J</strong>&nbsp;different types of</p>\n\n<p>Glass and Singer (1972) showed that situations in which there is intense noise have&nbsp;less effect on performance than circumstances in which&nbsp;<b>4&nbsp;</b><select class=\"question-quiz question-select question-4 last-option\" data-qnumber=\"3\" name=\"question-4\" disabled=\"disabled\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;noise&nbsp;occurs.</p><div class=\"explain-area\"><span><strong>Answer 4: B</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"3\" onclick=\"scrollToHighlight(4)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"3\" data-toggle=\"collapse\" href=\"#commentArea-3\" aria-expanded=\"false\" aria-controls=\"commentArea-3\" onclick=\"showComments(3)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-3\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p>Subjects were divided into groups to perform a task. Some heard loud bursts of noise, others soft. For some subjects, the noise was predictable, while for others its&nbsp;occurrence was random. All groups were exposed to&nbsp;<b>5&nbsp;</b><select class=\"question-quiz question-select question-5 last-option\" data-qnumber=\"4\" name=\"question-5\" disabled=\"disabled\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;noise.</p><div class=\"explain-area\"><span><strong>Answer 5: D</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"4\" onclick=\"scrollToHighlight(5)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"4\" data-toggle=\"collapse\" href=\"#commentArea-4\" aria-expanded=\"false\" aria-controls=\"commentArea-4\" onclick=\"showComments(4)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-4\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p>The&nbsp;predictable noise group&nbsp;<b>6&nbsp;</b><select class=\"question-quiz question-select question-6 last-option\" data-qnumber=\"5\" name=\"question-6\" disabled=\"disabled\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;the unpredictable noise group on this task.</p><div class=\"explain-area\"><span><strong>Answer 6: G</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"5\" onclick=\"scrollToHighlight(6)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"5\" data-toggle=\"collapse\" href=\"#commentArea-5\" aria-expanded=\"false\" aria-controls=\"commentArea-5\" onclick=\"showComments(5)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-5\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p>In the second part of the experiment, the four groups were given a proofreading task to complete under conditions of no noise. They were required to check written material for errors.The group which had been exposed to unpredictable noise&nbsp;<b>7&nbsp;</b><select class=\"question-quiz question-select question-7 last-option\" data-qnumber=\"6\" name=\"question-7\" disabled=\"disabled\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;the group which had been exposed to predictable noise. The group which had been exposed to loud predictable noise performed better than those who had heard soft,&nbsp;unpredictable bursts.</p><div class=\"explain-area\"><span><strong>Answer 7: D</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"6\" onclick=\"scrollToHighlight(7)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"6\" data-toggle=\"collapse\" href=\"#commentArea-6\" aria-expanded=\"false\" aria-controls=\"commentArea-6\" onclick=\"showComments(6)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-6\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p>The results suggest that&nbsp;<b>8&nbsp;</b><select class=\"question-quiz question-select question-8 last-option\" data-qnumber=\"7\" name=\"question-8\" disabled=\"disabled\"><option value=\"\"></option><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option><option value=\"E\">E</option><option value=\"F\">F</option><option value=\"G\">G</option><option value=\"H\">H</option><option value=\"I\">I</option><option value=\"J\">J</option></select>&nbsp;noise produces fatigue but that this manifests itself later.</p><div class=\"explain-area\"><span><strong>Answer 8: C</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"7\" onclick=\"scrollToHighlight(8)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"7\" data-toggle=\"collapse\" href=\"#commentArea-7\" aria-expanded=\"false\" aria-controls=\"commentArea-7\" onclick=\"showComments(7)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-7\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n', 6, 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(3, 3, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"8\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"8\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"8\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"8\" data-toggle=\"collapse\" href=\"#commentArea-8\" aria-expanded=\"false\" aria-controls=\"commentArea-8\" onclick=\"showComments(8)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-8\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 1, 1, '2017-07-18 10:47:20', '2017-07-18 10:47:20'),
(4, 4, '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"9\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"9\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"9\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"9\" data-toggle=\"collapse\" href=\"#commentArea-9\" aria-expanded=\"false\" aria-controls=\"commentArea-9\" onclick=\"showComments(9)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-9\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 1, 1, '2017-07-18 10:54:36', '2017-07-18 10:54:36'),
(5, 5, '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"10\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"10\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"10\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"10\" data-toggle=\"collapse\" href=\"#commentArea-10\" aria-expanded=\"false\" aria-controls=\"commentArea-10\" onclick=\"showComments(10)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-10\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 1, 1, '2017-07-18 11:21:36', '2017-07-18 11:21:36'),
(6, 6, '<p><span class=\"label-checkbox key-label\"><strong>dsad</strong></span> <input class=\"question-quiz question-checkbox question-1 \" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"dsad\" />asd</p>\n\n<p><span class=\"label-checkbox key-label\"><strong>das3 vd</strong></span> <input class=\"question-quiz question-checkbox question-1 \" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"das3 vd\" />asd</p>\n\n<p><span class=\"label-checkbox key-label\"><strong>a</strong></span> <input class=\"question-quiz question-checkbox question-1 last-option\" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"a\" />asd</p>\n\n<p><span class=\"label-checkbox key-label\"><strong>dasd</strong></span> <input class=\"question-quiz question-checkbox question-2 \" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"dasd\" />asd</p>\n\n<p><span class=\"label-checkbox key-label\"><strong>asdasd</strong></span> <input class=\"question-quiz question-checkbox question-2 last-option\" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"asdasd\" />ad</p>\n', '<p><span class=\"label-checkbox key-label\"><strong>dsad</strong></span> <input class=\"question-quiz question-checkbox question-1 \" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"dsad\" disabled=\"disabled\">asd</p>\n\n<p><span class=\"label-checkbox key-label\"><strong>das3 vd</strong></span> <input class=\"question-quiz question-checkbox question-1 \" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"das3 vd\" disabled=\"disabled\">asd</p>\n\n<p><span class=\"label-checkbox key-label\"><strong>a</strong></span> <input class=\"question-quiz question-checkbox question-1 last-option\" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"a\" disabled=\"disabled\">asd</p><div class=\"explain-area\"><span><strong>Answer 1: asd</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"11\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#commentArea-11\" aria-expanded=\"false\" aria-controls=\"commentArea-11\" onclick=\"showComments(11)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-11\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p><span class=\"label-checkbox key-label\"><strong>dasd</strong></span> <input class=\"question-quiz question-checkbox question-2 \" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"dasd\" disabled=\"disabled\">asd</p>\n\n<p><span class=\"label-checkbox key-label\"><strong>asdasd</strong></span> <input class=\"question-quiz question-checkbox question-2 last-option\" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"checkbox\" value=\"asdasd\" disabled=\"disabled\">ad</p><div class=\"explain-area\"><span><strong>Answer 2: ad</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"12\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#commentArea-12\" aria-expanded=\"false\" aria-controls=\"commentArea-12\" onclick=\"showComments(12)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-12\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 2, 1, '2017-07-18 11:56:40', '2017-07-18 11:56:40'),
(7, 7, '<p>Content Post is here!</p>\n\n<p>1. sdf dsf dsf ds</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>A</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"A\" />sdad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>B</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"B\" />dsad sad sad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>C</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"C\" />asd e re r</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>D</strong></span> <input class=\"question-quiz question-radio question-1 last-option\" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"D\" />adsa sd a</p>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n\n<p>2. sdf dsf ds fdsf ds f</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>A</strong></span> <input class=\"question-quiz question-radio question-2 \" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"A\" />asds adad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>B</strong></span> <input class=\"question-quiz question-radio question-2 \" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"B\" />asd sad ada</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>C</strong></span> <input class=\"question-quiz question-radio question-2 \" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"C\" />asdsad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>D</strong></span> <input class=\"question-quiz question-radio question-2 last-option\" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"D\" />dsad</p>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n', '<p>Content Post is here!</p>\n\n<p>1. sdf dsf dsf ds</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>A</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"A\" disabled=\"disabled\">sdad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>B</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"B\" disabled=\"disabled\">dsad sad sad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>C</strong></span> <input class=\"question-quiz question-radio question-1 \" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"C\" disabled=\"disabled\">asd e re r</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>D</strong></span> <input class=\"question-quiz question-radio question-1 last-option\" data-qnumber=\"13\" name=\"question-1\" onclick=\"bitest(this)\" type=\"radio\" value=\"D\" disabled=\"disabled\">adsa sd a</p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"13\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#commentArea-13\" aria-expanded=\"false\" aria-controls=\"commentArea-13\" onclick=\"showComments(13)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-13\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n\n<p>2. sdf dsf ds fdsf ds f</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>A</strong></span> <input class=\"question-quiz question-radio question-2 \" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"A\" disabled=\"disabled\">asds adad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>B</strong></span> <input class=\"question-quiz question-radio question-2 \" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"B\" disabled=\"disabled\">asd sad ada</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>C</strong></span> <input class=\"question-quiz question-radio question-2 \" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"C\" disabled=\"disabled\">asdsad</p>\n\n<p style=\"margin-left: 40px;\"><span class=\"label-radio key-label\"><strong>D</strong></span> <input class=\"question-quiz question-radio question-2 last-option\" data-qnumber=\"14\" name=\"question-2\" onclick=\"bitest(this)\" type=\"radio\" value=\"D\" disabled=\"disabled\">dsad</p><div class=\"explain-area\"><span><strong>Answer 2: C</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"14\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"14\" data-toggle=\"collapse\" href=\"#commentArea-14\" aria-expanded=\"false\" aria-controls=\"commentArea-14\" onclick=\"showComments(14)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collapse-custom\" id=\"commentArea-14\"> <div class=\"card card-block\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n\n<p style=\"margin-left: 40px;\">&nbsp;</p>\n', 2, 1, '2017-07-18 12:00:32', '2017-07-18 12:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `type_question_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `type_question_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 29, 1, 1, '2017-07-18 02:11:27', '2017-07-18 02:11:27'),
(2, 29, 2, 1, '2017-07-18 02:11:27', '2017-07-18 02:11:27'),
(3, 29, 4, 1, '2017-07-18 02:11:27', '2017-07-18 02:11:27'),
(4, 1, 4, 1, '2017-07-18 03:59:20', '2017-07-18 03:59:20'),
(5, 2, 4, 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(6, 2, 5, 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(7, 3, 5, 1, '2017-07-18 10:47:20', '2017-07-18 10:47:20'),
(8, 4, 4, 1, '2017-07-18 10:54:36', '2017-07-18 10:54:36'),
(9, 4, 5, 1, '2017-07-18 10:54:36', '2017-07-18 10:54:36'),
(10, 5, 4, 1, '2017-07-18 11:21:36', '2017-07-18 11:21:36'),
(11, 5, 5, 1, '2017-07-18 11:21:36', '2017-07-18 11:21:36'),
(12, 6, 5, 1, '2017-07-18 11:56:40', '2017-07-18 11:56:40'),
(13, 7, 4, 1, '2017-07-18 12:00:32', '2017-07-18 12:00:32'),
(14, 7, 5, 1, '2017-07-18 12:00:32', '2017-07-18 12:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_lessons`
--

CREATE TABLE `reading_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_highlight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_feature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_lessons`
--

INSERT INTO `reading_lessons` (`id`, `title`, `content_post`, `content_highlight`, `image_feature`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dsad heloo lasdsad dasj', '<p>Content Post is here!</p>\n', '<p>Content Post is<span class=\"answer-highlight highlight-1\" data-timestamp=\"1500375556261\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"1\" id=\"hl-answer-1\"> here!</span></p>\n', 'anh-luffy-chibi-3.jpg', 1, '2017-07-18 03:59:20', '2017-07-18 03:59:20'),
(2, 'EFFECTS OF NOISE', '<h2>&nbsp;</h2>\n\n<p><img alt=\"\" src=\"/storage/upload/images/effects-of-noise.jpg\" style=\"width: 425px; height: 283px;\" /></p>\n\n<p>In general, it is plausible to suppose that we should prefer peace and quiet to noise. And yet most of us have had the experience of having to adjust to sleeping in the mountains or&nbsp;the countryside because it was initially &lsquo;too quiet&rsquo;, an experience that suggests that&nbsp;humans are capable of adapting to a wide range of noise levels. Research supports this&nbsp;view. For example, Glass and Singer (1972) exposed people to short bursts of very loud&nbsp;noise and then measured their ability to work out problems and their physiological&nbsp;reactions to the noise. The noise was quite disruptive at first, but after about four minutes&nbsp;the subjects were doing just as well on their tasks as control subjects who were not exposed&nbsp;to noise. Their physiological arousal also declined quickly to the same levels as those of&nbsp;the control subjects.</p>\n\n<p>But there are limits to adaptation and loud noise becomes more troublesome if the person is required to concentrate on more than one task. For example, high noise levels interfered&nbsp;with the performance of subjects who were required to monitor three dials at a time, a&nbsp;task not unlike that of an aeroplane pilot or an air-traffic controller (Broadbent, 1957).&nbsp;Similarly, noise did not affect a subject&rsquo;s ability to track a moving line with a steering&nbsp;wheel, but it did interfere with the subject&rsquo;s ability to repeat numbers while tracking&nbsp;(Finkelman and Glass, 1970).</p>\n\n<p>Probably the most significant finding from research on noise is that its predictability is more important than how loud it is. We are much more able to &lsquo;tune out&rsquo; chronic&nbsp;background noise, even if it is quite loud, than to work under circumstances with&nbsp;unexpected intrusions of noise. In the Glass and Singer study, in which subjects were&nbsp;exposed to bursts of noise as they worked on a task, some subjects heard loud bursts and&nbsp;others heard soft bursts. For some subjects, the bursts were spaced exactly one minute&nbsp;apart (predictable noise); others heard the same amount of noise overall, but the bursts</p>\n\n<table border=\"1\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td>\n			<p><strong>Unpredictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Predictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Average</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Loud noise</p>\n			</td>\n			<td>\n			<p>40.1</p>\n			</td>\n			<td>\n			<p>31.8</p>\n			</td>\n			<td>\n			<p>35.9</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Soft noise</p>\n			</td>\n			<td>\n			<p>36.7</p>\n			</td>\n			<td>\n			<p>21A</p>\n			</td>\n			<td>\n			<p>32.1</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Average</p>\n			</td>\n			<td>\n			<p>38.4</p>\n			</td>\n			<td>\n			<p>29.6</p>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><em>Table 1 :&nbsp;<strong>Proofreading Errors and Noise</strong></em></p>\n\n<p>occurred at random intervals (unpredictable noise). Subjects reported finding the predictable and unpredictable noise equally annoying, and all subjects performed at about&nbsp;the same level during the noise portion of the experiment. But the different noise&nbsp;conditions had quite different after-effects when the subjects were required to proofread&nbsp;written material under conditions of no noise. As shown in Table 1 the unpredictable&nbsp;noise produced more errors in the later proofreading task than predictable noise; and soft,&nbsp;unpredictable noise actually produced slightly more errors on this task than the loud,&nbsp;predictable noise.</p>\n\n<p>Apparently, unpredictable noise produces more fatigue than predictable noise, but it takes a while for this fatigue to take its toll on performance.</p>\n\n<p>Predictability is not the only variable that reduces or eliminates the negative effects of noise. Another is control. If the individual knows that he or she can control the noise, this&nbsp;seems to eliminate both its negative effects at the time and its after-effects. This is true even&nbsp;if the individual never actually exercises his or her option to turn the noise off (Glass and&nbsp;Singer, 1972). Just the knowledge that one has control is sufficient.</p>\n\n<p>The studies discussed so far exposed people to noise for only short periods and only transient effects were studied. But the major worry about noisy environments is that living&nbsp;day after day with chronic noise may produce serious, lasting effects. One study, suggesting&nbsp;that this worry is a realistic one, compared elementary school pupils who attended schools&nbsp;near Los Angeles&rsquo;s busiest airport with students who attended schools in quiet&nbsp;neighbourhoods (Cohen et al., 1980). It was found that children from the noisy schools&nbsp;had higher blood pressure and were more easily distracted than those who attended the&nbsp;quiet schools. Moreover, there was no evidence of adaptability to the noise. In fact, the&nbsp;longer the children had attended the noisy schools, the more distractible they became. The&nbsp;effects also seem to be long lasting. A follow-up study showed that children who were&nbsp;moved to less noisy classrooms still showed greater distractibility one year later than&nbsp;students who had always been in the quiet schools (Cohen et al, 1981). It should be noted&nbsp;that the two groups of children had been carefully matched by the investigators so that&nbsp;they were comparable in age, ethnicity, race, and social class.</p>\n', '<h2>&nbsp;</h2>\n\n<p><img alt=\"\" src=\"/storage/upload/images/effects-of-noise.jpg\" style=\"width: 425px; height: 283px;\"></p>\n\n<p><span class=\"answer-highlight highlight-1 hidden-highlight\" data-timestamp=\"1500400413336\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"9\" id=\"hl-answer-9\">In general, it is plausible to suppose&nbsp;that we should prefer peace and quiet to noise. And yet most of us have had the experience of having to adjust to sleeping in the mountains or&nbsp;the countryside because it was initially ‘too quiet’, an experience that suggests that&nbsp;humans are capable of adapting to a wide range of noise levels. Research supports this&nbsp;view.</span> For example, Glass and Singer (1972) exposed people to short bursts of very loud&nbsp;noise and then measured their ability to work out problems and their physiological&nbsp;reactions to the noise. The noise was quite disruptive at first, but after about four minutes&nbsp;the subjects were doing just as well on their tasks as control subjects who were not exposed&nbsp;to noise. Their physiological arousal also declined quickly to the same levels as those of&nbsp;the control subjects.</p>\n\n<p><span class=\"answer-highlight highlight-4 hidden-highlight\" data-timestamp=\"1500400418096\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">But there are limits to adaptation and loud noise becomes more troublesome if the person is required to concentrate on more than one task. For example, high noise levels interfered&nbsp;with the performance of subjects who were required to monitor three dials at a time, a&nbsp;task not unlike that of an aeroplane pilot or an air-traffic controller (Broadbent, 1957).</span>&nbsp;Similarly, noise did not affect a subject’s ability to track a moving line with a steering&nbsp;wheel, but it did interfere with the subject’s ability to repeat numbers while tracking&nbsp;(Finkelman and Glass, 1970).</p>\n\n<p><span class=\"answer-highlight highlight-5 hidden-highlight\" data-timestamp=\"1500400424776\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">Probably the most significant finding from research on noise is that its predictability is more important than how loud it is. We are much more able to ‘tune out’ chronic&nbsp;background noise, even if it is quite loud, than to work under circumstances with&nbsp;unexpected intrusions of noise. In the Glass and Singer study, in which subjects were&nbsp;exposed to bursts of noise as they worked on a task, some subjects heard loud bursts and&nbsp;others heard soft bursts. For some subjects, the bursts were spaced exactly one minute&nbsp;apart (predictable noise); others heard the same amount of noise overall, but the bursts</span></p>\n\n<table border=\"1\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td>\n			<p><strong>Unpredictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Predictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Average</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Loud noise</p>\n			</td>\n			<td>\n			<p>40.1</p>\n			</td>\n			<td>\n			<p>31.8</p>\n			</td>\n			<td>\n			<p>35.9</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Soft noise</p>\n			</td>\n			<td>\n			<p>36.7</p>\n			</td>\n			<td>\n			<p>21A</p>\n			</td>\n			<td>\n			<p>32.1</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Average</p>\n			</td>\n			<td>\n			<p>38.4</p>\n			</td>\n			<td>\n			<p>29.6</p>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><em>Table 1 :&nbsp;<strong>Proofreading Errors and Noise</strong></em></p>\n\n<p>occurred at random intervals (unpredictable noise).&nbsp;Subjects reported finding the predictable and unpredictable noise equally annoying, and all subjects performed at about&nbsp;the same level during the noise portion of the experiment. <span class=\"answer-highlight highlight-6 hidden-highlight\" data-timestamp=\"1500400431257\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">But the different noise&nbsp;conditions had quite different after-effects when the subjects were required to proofread&nbsp;written material under conditions of no noise.</span>&nbsp;As shown in Table 1 the unpredictable&nbsp;noise produced more errors in the later proofreading task than predictable noise; and soft,&nbsp;unpredictable noise actually produced slightly more errors on this task than the loud,&nbsp;predictable noise.</p>\n\n<p><span class=\"answer-highlight highlight-7 hidden-highlight\" data-timestamp=\"1500400435352\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">Apparently, unpredictable noise produces more fatigue than predictable noise,&nbsp;but it takes a while for this fatigue to take its toll on performance.</span></p>\n\n<p>Predictability is not the only variable that reduces or eliminates the negative effects of noise. Another is control. If the individual knows that he or she can control the noise, this&nbsp;seems to eliminate both its negative effects at the time and its after-effects. This is true even&nbsp;if the individual never actually exercises his or her option to turn the noise off (Glass and&nbsp;Singer, 1972). Just the knowledge that one has control is sufficient.</p>\n\n<p><span class=\"answer-highlight highlight-8 hidden-highlight\" data-timestamp=\"1500400439288\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">The studies discussed so far exposed people to noise for only short periods and only transient effects were studied. But the major worry about noisy environments is that living&nbsp;day after day with chronic noise may produce serious, lasting effects.&nbsp;</span>One study, suggesting&nbsp;that this worry is a realistic one, compared elementary school pupils who attended schools&nbsp;near Los Angeles’s busiest airport with students who attended schools in quiet&nbsp;neighbourhoods (Cohen et al., 1980). It was found that children from the noisy schools&nbsp;had higher blood pressure and were more easily distracted than those who attended the&nbsp;quiet schools. Moreover, there was no evidence of adaptability to the noise. In fact, the&nbsp;longer the children had attended the noisy schools, the more distractible they became. The&nbsp;effects also seem to be long lasting.&nbsp;A follow-up study showed that children who were&nbsp;moved to less noisy classrooms still showed greater distractibility one year later than&nbsp;students who had always been in the quiet schools (Cohen et al, 1981). It should be noted&nbsp;that the two groups of children had been carefully matched by the investigators so that&nbsp;they were comparable in age, ethnicity, race, and social class.</p>', 'effects-of-noise.jpg', 1, '2017-07-18 07:01:02', '2017-07-18 07:01:02'),
(3, 'd', '<p>Content Post is here!</p>\n', '<p>Content Post is <span class=\"answer-highlight highlight-1\" data-timestamp=\"1500400005185\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"8\" id=\"hl-answer-8\">here!</span></p>\n', 'IELTS banner.jpg', 1, '2017-07-18 10:47:20', '2017-07-18 10:47:20'),
(4, 'dsad', '<p><img alt=\"\" src=\"/storage/upload/images/effects-of-noise.jpg\" style=\"width: 425px; height: 283px;\" /></p>\n\n<p>In general, it is plausible to suppose&nbsp;that we should prefer peace and quiet to noise. And yet most of us have had the experience of having to adjust to sleeping in the mountains or&nbsp;the countryside because it was initially &lsquo;too quiet&rsquo;, an experience that suggests that&nbsp;humans are capable of adapting to a wide range of noise levels. Research supports this&nbsp;view. For example, Glass and Singer (1972) exposed people to short bursts of very loud&nbsp;noise and then measured their ability to work out problems and their physiological&nbsp;reactions to the noise. The noise was quite disruptive at first, but after about four minutes&nbsp;the subjects were doing just as well on their tasks as control subjects who were not exposed&nbsp;to noise. Their physiological arousal also declined quickly to the same levels as those of&nbsp;the control subjects.</p>\n\n<p>But there are limits to adaptation and loud noise becomes more troublesome if the person is required to concentrate on more than one task. For example, high noise levels interfered&nbsp;with the performance of subjects who were required to monitor three dials at a time, a&nbsp;task not unlike that of an aeroplane pilot or an air-traffic controller (Broadbent, 1957).&nbsp;Similarly, noise did not affect a subject&rsquo;s ability to track a moving line with a steering&nbsp;wheel, but it did interfere with the subject&rsquo;s ability to repeat numbers while tracking&nbsp;(Finkelman and Glass, 1970).</p>\n\n<p>Probably the most significant finding from research on noise is that its predictability is more important than how loud it is. We are much more able to &lsquo;tune out&rsquo; chronic&nbsp;background noise, even if it is quite loud, than to work under circumstances with&nbsp;unexpected intrusions of noise. In the Glass and Singer study, in which subjects were&nbsp;exposed to bursts of noise as they worked on a task, some subjects heard loud bursts and&nbsp;others heard soft bursts. For some subjects, the bursts were spaced exactly one minute&nbsp;apart (predictable noise); others heard the same amount of noise overall, but the bursts</p>\n\n<table border=\"1\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td>\n			<p><strong>Unpredictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Predictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Average</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Loud noise</p>\n			</td>\n			<td>\n			<p>40.1</p>\n			</td>\n			<td>\n			<p>31.8</p>\n			</td>\n			<td>\n			<p>35.9</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Soft noise</p>\n			</td>\n			<td>\n			<p>36.7</p>\n			</td>\n			<td>\n			<p>21A</p>\n			</td>\n			<td>\n			<p>32.1</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Average</p>\n			</td>\n			<td>\n			<p>38.4</p>\n			</td>\n			<td>\n			<p>29.6</p>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><em>Table 1 :&nbsp;<strong>Proofreading Errors and Noise</strong></em></p>\n\n<p>occurred at random intervals (unpredictable noise).&nbsp;Subjects reported finding the predictable and unpredictable noise equally annoying, and all subjects performed at about&nbsp;the same level during the noise portion of the experiment. But the different noise&nbsp;conditions had quite different after-effects when the subjects were required to proofread&nbsp;written material under conditions of no noise.&nbsp;As shown in Table 1 the unpredictable&nbsp;noise produced more errors in the later proofreading task than predictable noise; and soft,&nbsp;unpredictable noise actually produced slightly more errors on this task than the loud,&nbsp;predictable noise.</p>\n\n<p>Apparently, unpredictable noise produces more fatigue than predictable noise,&nbsp;but it takes a while for this fatigue to take its toll on performance.</p>\n\n<p>Predictability is not the only variable that reduces or eliminates the negative effects of noise. Another is control. If the individual knows that he or she can control the noise, this&nbsp;seems to eliminate both its negative effects at the time and its after-effects. This is true even&nbsp;if the individual never actually exercises his or her option to turn the noise off (Glass and&nbsp;Singer, 1972). Just the knowledge that one has control is sufficient.</p>\n\n<p>The studies discussed so far exposed people to noise for only short periods and only transient effects were studied. But the major worry about noisy environments is that living&nbsp;day after day with chronic noise may produce serious, lasting effects.&nbsp;One study, suggesting&nbsp;that this worry is a realistic one, compared elementary school pupils who attended schools&nbsp;near Los Angeles&rsquo;s busiest airport with students who attended schools in quiet&nbsp;neighbourhoods (Cohen et al., 1980). It was found that children from the noisy schools&nbsp;had higher blood pressure and were more easily distracted than those who attended the&nbsp;quiet schools. Moreover, there was no evidence of adaptability to the noise. In fact, the&nbsp;longer the children had attended the noisy schools, the more distractible they became. The&nbsp;effects also seem to be long lasting.&nbsp;A follow-up study showed that children who were&nbsp;moved to less noisy classrooms still showed greater distractibility one year later than&nbsp;students who had always been in the quiet schools (Cohen et al, 1981). It should be noted&nbsp;that the two groups of children had been carefully matched by the investigators so that&nbsp;they were comparable in age, ethnicity, race, and social class.</p>\n', '<p><img alt=\"\" src=\"/storage/upload/images/effects-of-noise.jpg\" style=\"width: 425px; height: 283px;\"></p>\n\n<p><span class=\"answer-highlight highlight-1 hidden-highlight\" data-timestamp=\"1500400413336\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"9\" id=\"hl-answer-9\">In general, it is plausible to suppose&nbsp;that we should prefer peace and quiet to noise. And yet most of us have had the experience of having to adjust to sleeping in the mountains or&nbsp;the countryside because it was initially ‘too quiet’, an experience that suggests that&nbsp;humans are capable of adapting to a wide range of noise levels. Research supports this&nbsp;view.</span> For example, Glass and Singer (1972) exposed people to short bursts of very loud&nbsp;noise and then measured their ability to work out problems and their physiological&nbsp;reactions to the noise. The noise was quite disruptive at first, but after about four minutes&nbsp;the subjects were doing just as well on their tasks as control subjects who were not exposed&nbsp;to noise. Their physiological arousal also declined quickly to the same levels as those of&nbsp;the control subjects.</p>\n\n<p><span class=\"answer-highlight highlight-4 hidden-highlight\" data-timestamp=\"1500400418096\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">But there are limits to adaptation and loud noise becomes more troublesome if the person is required to concentrate on more than one task. For example, high noise levels interfered&nbsp;with the performance of subjects who were required to monitor three dials at a time, a&nbsp;task not unlike that of an aeroplane pilot or an air-traffic controller (Broadbent, 1957).</span>&nbsp;Similarly, noise did not affect a subject’s ability to track a moving line with a steering&nbsp;wheel, but it did interfere with the subject’s ability to repeat numbers while tracking&nbsp;(Finkelman and Glass, 1970).</p>\n\n<p><span class=\"answer-highlight highlight-5 hidden-highlight\" data-timestamp=\"1500400424776\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">Probably the most significant finding from research on noise is that its predictability is more important than how loud it is. We are much more able to ‘tune out’ chronic&nbsp;background noise, even if it is quite loud, than to work under circumstances with&nbsp;unexpected intrusions of noise. In the Glass and Singer study, in which subjects were&nbsp;exposed to bursts of noise as they worked on a task, some subjects heard loud bursts and&nbsp;others heard soft bursts. For some subjects, the bursts were spaced exactly one minute&nbsp;apart (predictable noise); others heard the same amount of noise overall, but the bursts</span></p>\n\n<table border=\"1\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td>\n			<p><strong>Unpredictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Predictable Noise</strong></p>\n			</td>\n			<td>\n			<p><strong>Average</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Loud noise</p>\n			</td>\n			<td>\n			<p>40.1</p>\n			</td>\n			<td>\n			<p>31.8</p>\n			</td>\n			<td>\n			<p>35.9</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Soft noise</p>\n			</td>\n			<td>\n			<p>36.7</p>\n			</td>\n			<td>\n			<p>21A</p>\n			</td>\n			<td>\n			<p>32.1</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Average</p>\n			</td>\n			<td>\n			<p>38.4</p>\n			</td>\n			<td>\n			<p>29.6</p>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><em>Table 1 :&nbsp;<strong>Proofreading Errors and Noise</strong></em></p>\n\n<p>occurred at random intervals (unpredictable noise).&nbsp;Subjects reported finding the predictable and unpredictable noise equally annoying, and all subjects performed at about&nbsp;the same level during the noise portion of the experiment. <span class=\"answer-highlight highlight-6 hidden-highlight\" data-timestamp=\"1500400431257\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">But the different noise&nbsp;conditions had quite different after-effects when the subjects were required to proofread&nbsp;written material under conditions of no noise.</span>&nbsp;As shown in Table 1 the unpredictable&nbsp;noise produced more errors in the later proofreading task than predictable noise; and soft,&nbsp;unpredictable noise actually produced slightly more errors on this task than the loud,&nbsp;predictable noise.</p>\n\n<p><span class=\"answer-highlight highlight-7 hidden-highlight\" data-timestamp=\"1500400435352\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">Apparently, unpredictable noise produces more fatigue than predictable noise,&nbsp;but it takes a while for this fatigue to take its toll on performance.</span></p>\n\n<p>Predictability is not the only variable that reduces or eliminates the negative effects of noise. Another is control. If the individual knows that he or she can control the noise, this&nbsp;seems to eliminate both its negative effects at the time and its after-effects. This is true even&nbsp;if the individual never actually exercises his or her option to turn the noise off (Glass and&nbsp;Singer, 1972). Just the knowledge that one has control is sufficient.</p>\n\n<p><span class=\"answer-highlight highlight-8 hidden-highlight\" data-timestamp=\"1500400439288\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" id=\"hl-answer-undefined\">The studies discussed so far exposed people to noise for only short periods and only transient effects were studied. But the major worry about noisy environments is that living&nbsp;day after day with chronic noise may produce serious, lasting effects.&nbsp;</span>One study, suggesting&nbsp;that this worry is a realistic one, compared elementary school pupils who attended schools&nbsp;near Los Angeles’s busiest airport with students who attended schools in quiet&nbsp;neighbourhoods (Cohen et al., 1980). It was found that children from the noisy schools&nbsp;had higher blood pressure and were more easily distracted than those who attended the&nbsp;quiet schools. Moreover, there was no evidence of adaptability to the noise. In fact, the&nbsp;longer the children had attended the noisy schools, the more distractible they became. The&nbsp;effects also seem to be long lasting.&nbsp;A follow-up study showed that children who were&nbsp;moved to less noisy classrooms still showed greater distractibility one year later than&nbsp;students who had always been in the quiet schools (Cohen et al, 1981). It should be noted&nbsp;that the two groups of children had been carefully matched by the investigators so that&nbsp;they were comparable in age, ethnicity, race, and social class.</p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-18 10:54:36', '2017-07-18 10:54:36'),
(5, 'ad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-18 11:21:36', '2017-07-18 11:21:36'),
(6, 'dsad', '<p>Content Post is here!</p>\n', '<p>Co<span class=\"answer-highlight highlight-2 hidden-highlight\" data-timestamp=\"1500404196586\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"12\" id=\"hl-answer-12\">nten</span>t Post is h<span class=\"answer-highlight highlight-1 hidden-highlight\" data-timestamp=\"1500404194826\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"11\" id=\"hl-answer-11\">ere!</span></p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-18 11:56:40', '2017-07-18 11:56:40'),
(7, 'dsad', '<p>Content Post is here!</p>\n', '<p>C<span class=\"answer-highlight highlight-2 hidden-highlight\" data-timestamp=\"1500404428105\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"14\" id=\"hl-answer-14\">on</span>tent <span class=\"answer-highlight highlight-1 hidden-highlight\" data-timestamp=\"1500404424113\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"13\" id=\"hl-answer-13\">Post is here!</span></p>\n', 'toefl8.jpg', 1, '2017-07-18 12:00:32', '2017-07-18 12:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_questions`
--

CREATE TABLE `type_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_questions`
--

INSERT INTO `type_questions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ade', 1, '2017-07-17 22:03:50', '2017-07-17 22:03:50'),
(2, 'ad', 1, '2017-07-17 22:06:39', '2017-07-17 22:06:39'),
(3, 'dsad', 1, '2017-07-17 22:07:07', '2017-07-17 22:07:07'),
(4, 'matching', 1, '2017-07-18 01:45:01', '2017-07-18 01:45:01'),
(5, 'checkbox', 1, '2017-07-18 07:00:56', '2017-07-18 07:00:56'),
(6, '', 1, '2017-07-18 10:54:10', '2017-07-18 10:54:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `cate_posts`
--
ALTER TABLE `cate_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_questions`
--
ALTER TABLE `comment_questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Chỉ mục cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reading_lessons`
--
ALTER TABLE `reading_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_questions`
--
ALTER TABLE `type_questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_questions_name_unique` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `cate_posts`
--
ALTER TABLE `cate_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `comment_questions`
--
ALTER TABLE `comment_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `reading_lessons`
--
ALTER TABLE `reading_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `type_questions`
--
ALTER TABLE `type_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `reading_lessons` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
