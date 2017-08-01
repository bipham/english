-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2017 lúc 04:58 SA
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_18_104758_create_reading_lessons_table', 1),
(4, '2017_07_21_050703_create_user_activations_table', 1),
(5, '2017_07_21_051550_create_reading_categories_table', 1),
(6, '2017_07_21_051733_create_reading_type_questions_table', 1),
(7, '2017_07_21_051901_create_reading_category_lessons_table', 1),
(8, '2017_07_21_084509_create_reading_quizzs_table', 1),
(12, '2017_07_21_091751_create_reading_results_table', 1),
(13, '2017_07_21_084604_create_reading_questions_table', 2),
(14, '2017_07_21_084651_create_reading_type_question_of_quizzes_table', 2),
(15, '2017_07_21_084822_create_reading_question_and_answers_table', 2);

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
-- Cấu trúc bảng cho bảng `reading_categories`
--

CREATE TABLE `reading_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `level_cate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_categories`
--

INSERT INTO `reading_categories` (`id`, `name`, `status`, `parent_id`, `level_cate`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 1, 0, 0, '2017-07-21 21:31:05', '2017-07-21 21:31:05'),
(2, 'Education', 1, 0, 0, '2017-07-24 03:39:36', '2017-07-24 03:39:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_category_lessons`
--

CREATE TABLE `reading_category_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_category_lessons`
--

INSERT INTO `reading_category_lessons` (`id`, `lesson_id`, `cate_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2017-07-21 23:34:34', '2017-07-21 23:34:34'),
(2, 2, 1, 1, '2017-07-21 23:37:49', '2017-07-21 23:37:49'),
(3, 3, 1, 1, '2017-07-21 23:40:22', '2017-07-21 23:40:22'),
(4, 4, 1, 1, '2017-07-21 23:55:19', '2017-07-21 23:55:19'),
(5, 5, 1, 1, '2017-07-21 23:57:16', '2017-07-21 23:57:16'),
(6, 6, 1, 1, '2017-07-21 23:58:28', '2017-07-21 23:58:28'),
(7, 7, 1, 1, '2017-07-21 23:59:45', '2017-07-21 23:59:45'),
(8, 8, 1, 1, '2017-07-22 00:12:29', '2017-07-22 00:12:29'),
(9, 9, 1, 1, '2017-07-24 03:32:52', '2017-07-24 03:32:52'),
(10, 10, 1, 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16'),
(11, 11, 1, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(12, 12, 1, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(13, 13, 2, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(14, 14, 2, 1, '2017-07-24 04:15:08', '2017-07-24 04:15:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_lessons`
--

CREATE TABLE `reading_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_lesson` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_highlight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_feature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_lessons`
--

INSERT INTO `reading_lessons` (`id`, `title`, `content_lesson`, `content_highlight`, `image_feature`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dsad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'IELTS banner.jpg', 1, '2017-07-21 23:34:34', '2017-07-21 23:34:34'),
(2, 'dsad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'toefl8.jpg', 1, '2017-07-21 23:37:49', '2017-07-21 23:37:49'),
(3, 'ad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-21 23:40:22', '2017-07-21 23:40:22'),
(4, 'ad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-21 23:55:19', '2017-07-21 23:55:19'),
(5, 'dsa', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'effects-of-noise.jpg', 1, '2017-07-21 23:57:16', '2017-07-21 23:57:16'),
(6, 'dsad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'effects-of-noise.jpg', 1, '2017-07-21 23:58:28', '2017-07-21 23:58:28'),
(7, 'etr', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'IELTS banner.jpg', 1, '2017-07-21 23:59:45', '2017-07-21 23:59:45'),
(8, 'dsad', '<p>Content Post is here!</p>\n', '<p>Content Pos<span class=\"answer-highlight highlight-1 hidden-highlight\" data-timestamp=\"1500707397853\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"7\" id=\"hl-answer-7\">t is here!</span></p>\n', 'toefl8.jpg', 1, '2017-07-22 00:12:29', '2017-07-22 00:12:29'),
(9, 'dsae', '<p>Content Post is here!</p>\n', '<p><span class=\"answer-highlight highlight-1 hidden-highlight\" data-timestamp=\"1500892355618\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"8\" id=\"hl-answer-8\">Co</span>nt<span class=\"answer-highlight highlight-2 hidden-highlight\" data-timestamp=\"1500892357538\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"9\" id=\"hl-answer-9\">e</span>nt P<span class=\"answer-highlight highlight-3 hidden-highlight\" data-timestamp=\"1500892359338\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"10\" id=\"hl-answer-10\">os</span>t i<span class=\"answer-highlight highlight-4 hidden-highlight\" data-timestamp=\"1500892362106\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"11\" id=\"hl-answer-11\">s</span> h<span class=\"answer-highlight highlight-5 hidden-highlight\" data-timestamp=\"1500892364650\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"13\" id=\"hl-answer-13\">e</span>r<span class=\"answer-highlight highlight-6 hidden-highlight\" data-timestamp=\"1500892366746\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"12\" id=\"hl-answer-12\">e!</span></p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-24 03:32:52', '2017-07-24 03:32:52'),
(10, 'dsae', '<p>Content Post is here!</p>\n', '<p><span class=\"answer-highlight highlight-1 hidden-highlight\" data-timestamp=\"1500892355618\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"8\" id=\"hl-answer-8\">Co</span>nt<span class=\"answer-highlight highlight-2 hidden-highlight\" data-timestamp=\"1500892357538\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"9\" id=\"hl-answer-9\">e</span>nt P<span class=\"answer-highlight highlight-3 hidden-highlight\" data-timestamp=\"1500892359338\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"10\" id=\"hl-answer-10\">os</span>t i<span class=\"answer-highlight highlight-4 hidden-highlight\" data-timestamp=\"1500892362106\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"11\" id=\"hl-answer-11\">s</span> h<span class=\"answer-highlight highlight-5 hidden-highlight\" data-timestamp=\"1500892364650\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"13\" id=\"hl-answer-13\">e</span>r<span class=\"answer-highlight highlight-6 hidden-highlight\" data-timestamp=\"1500892366746\" style=\"background-color: rgb(255, 255, 123);\" data-highlighted=\"true\" data-qnumber=\"12\" id=\"hl-answer-12\">e!</span></p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16'),
(11, 'dsad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(12, 'dsad', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'ielts banner-1488639811.jpg', 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(13, 'Test Edu', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', 'anh-luffy-chibi-3.jpg', 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(14, 'tessst', '<p>Content Post is here!</p>\n', '<p>Content Post is here!</p>\n', '19398820_1426172534129041_1021977243_n.png', 1, '2017-07-24 04:15:08', '2017-07-24 04:15:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_questions`
--

CREATE TABLE `reading_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `question_id_custom` int(10) UNSIGNED NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_question_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_questions`
--

INSERT INTO `reading_questions` (`id`, `quiz_id`, `question_id_custom`, `answer`, `keyword`, `type_question_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'A', '1', 1, 1, '2017-07-21 23:58:28', '2017-07-21 23:58:28'),
(2, 6, 2, 'V', '1', 1, 1, '2017-07-21 23:58:28', '2017-07-21 23:58:28'),
(3, 7, 3, 'asd', 'fds\nsad', 2, 1, '2017-07-21 23:59:45', '2017-07-21 23:59:45'),
(4, 7, 4, 'c', 'sde\nfdgj\ndsad', 2, 1, '2017-07-21 23:59:45', '2017-07-21 23:59:45'),
(5, 7, 5, 'cfad', 'fg\ngfhkgfh\nhgfh', 2, 1, '2017-07-21 23:59:45', '2017-07-21 23:59:45'),
(6, 8, 7, 'as', 'dsa', 1, 1, '2017-07-22 00:12:29', '2017-07-22 00:12:29'),
(7, 9, 8, 'A', 'sdf', 1, 1, '2017-07-24 03:32:52', '2017-07-24 03:32:52'),
(8, 10, 8, 'A', 'sdf', 1, 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16'),
(9, 10, 9, 'V', 'dsad', 4, 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16'),
(10, 10, 10, '3a', 'ad', 1, 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16'),
(11, 11, 11, 'A', '', 1, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(12, 11, 12, 'B', 'sd', 2, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(13, 11, 13, 'C', 'asd', 3, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(14, 11, 14, 'D', 'd', 1, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(15, 12, 11, 'A', '', 1, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(16, 12, 12, 'B', 'sd', 2, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(17, 12, 13, 'C', 'asd', 3, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(18, 12, 14, 'D', 'd', 1, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(19, 12, 15, 'D', '', 2, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(20, 12, 16, 'ca', 'a', 2, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(21, 13, 17, 'A', 'a', 1, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(22, 13, 18, 'B', 'B', 2, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(23, 13, 19, 'C', 'C', 3, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(24, 13, 20, 'D', 'D', 1, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(25, 13, 21, 'E', 'E', 6, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(26, 13, 22, 'F', 'F', 3, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(27, 13, 23, 'G', 'G', 3, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(28, 13, 24, 'H', 'H', 8, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(29, 13, 25, 'A', 'Aasd\ndf', 1, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(30, 13, 26, 'B', 'avbfdb\ndsf', 2, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(31, 14, 27, 'asd', 'sd', 1, 1, '2017-07-24 04:15:08', '2017-07-24 04:15:08'),
(32, 14, 28, 'fd', 'asfd', 1, 1, '2017-07-24 04:15:08', '2017-07-24 04:15:08'),
(33, 14, 29, 'fd', ' dfd', 1, 1, '2017-07-24 04:15:08', '2017-07-24 04:15:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_question_and_answers`
--

CREATE TABLE `reading_question_and_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content_cmt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_quizzs`
--

CREATE TABLE `reading_quizzs` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL,
  `content_quiz` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_answer_quiz` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_questions` int(11) NOT NULL,
  `type_lesson` tinyint(4) NOT NULL DEFAULT '1',
  `limit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_quizzs`
--

INSERT INTO `reading_quizzs` (`id`, `lesson_id`, `content_quiz`, `content_answer_quiz`, `total_questions`, `type_lesson`, `limit_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"3\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"3\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 3: c</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"3\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"3\" data-toggle=\"collapse\" href=\"#commentArea-3\" aria-expanded=\"false\" aria-controls=\"commentArea-3\" onclick=\"showComments(3)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-3\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 2: b</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"2\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"2\" data-toggle=\"collapse\" href=\"#commentArea-2\" aria-expanded=\"false\" aria-controls=\"commentArea-2\" onclick=\"showComments(2)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-2\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 1: a</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"1\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"1\" data-toggle=\"collapse\" href=\"#commentArea-1\" aria-expanded=\"false\" aria-controls=\"commentArea-1\" onclick=\"showComments(1)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-1\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 3, 2, 0, 1, '2017-07-21 23:34:34', '2017-07-21 23:34:34'),
(2, 2, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"3\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"3\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 3: c</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"3\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"3\" data-toggle=\"collapse\" href=\"#commentArea-3\" aria-expanded=\"false\" aria-controls=\"commentArea-3\" onclick=\"showComments(3)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-3\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 2: b</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"2\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"2\" data-toggle=\"collapse\" href=\"#commentArea-2\" aria-expanded=\"false\" aria-controls=\"commentArea-2\" onclick=\"showComments(2)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-2\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 1: a</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"1\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"1\" data-toggle=\"collapse\" href=\"#commentArea-1\" aria-expanded=\"false\" aria-controls=\"commentArea-1\" onclick=\"showComments(1)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-1\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 3, 2, 0, 1, '2017-07-21 23:37:49', '2017-07-21 23:37:49'),
(3, 3, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 2: b</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"2\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"2\" data-toggle=\"collapse\" href=\"#commentArea-2\" aria-expanded=\"false\" aria-controls=\"commentArea-2\" onclick=\"showComments(2)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-2\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 1: a</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"1\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"1\" data-toggle=\"collapse\" href=\"#commentArea-1\" aria-expanded=\"false\" aria-controls=\"commentArea-1\" onclick=\"showComments(1)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-1\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 2, 2, 0, 1, '2017-07-21 23:40:22', '2017-07-21 23:40:22'),
(4, 4, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 2: b</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"2\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"2\" data-toggle=\"collapse\" href=\"#commentArea-2\" aria-expanded=\"true\" aria-controls=\"commentArea-2\" onclick=\"showComments(2)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collage-comments collapse-custom collapse show\" id=\"commentArea-2\" aria-expanded=\"true\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 1: a</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"1\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"1\" data-toggle=\"collapse\" href=\"#commentArea-1\" aria-expanded=\"true\" aria-controls=\"commentArea-1\" onclick=\"showComments(1)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collage-comments collapse-custom collapse show\" id=\"commentArea-1\" aria-expanded=\"true\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 2, 2, 0, 1, '2017-07-21 23:55:19', '2017-07-21 23:55:19'),
(5, 5, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!<span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!<span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 2: v</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"2\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"2\" data-toggle=\"collapse\" href=\"#commentArea-2\" aria-expanded=\"false\" aria-controls=\"commentArea-2\" onclick=\"showComments(2)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-2\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"1\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"1\" data-toggle=\"collapse\" href=\"#commentArea-1\" aria-expanded=\"false\" aria-controls=\"commentArea-1\" onclick=\"showComments(1)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-1\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 2, 2, 0, 1, '2017-07-21 23:57:16', '2017-07-21 23:57:16'),
(6, 6, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"1\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"2\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 2: V</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"2\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"2\" data-toggle=\"collapse\" href=\"#commentArea-2\" aria-expanded=\"false\" aria-controls=\"commentArea-2\" onclick=\"showComments(2)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-2\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"1\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"1\" data-toggle=\"collapse\" href=\"#commentArea-1\" aria-expanded=\"false\" aria-controls=\"commentArea-1\" onclick=\"showComments(1)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-1\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 2, 2, 0, 1, '2017-07-21 23:58:28', '2017-07-21 23:58:28'),
(7, 7, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"3\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"4\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"5\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"3\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"4\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"5\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 3: cfad</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"5\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"5\" data-toggle=\"collapse\" href=\"#commentArea-5\" aria-expanded=\"false\" aria-controls=\"commentArea-5\" onclick=\"showComments(5)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-5\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 2: c</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"4\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"4\" data-toggle=\"collapse\" href=\"#commentArea-4\" aria-expanded=\"false\" aria-controls=\"commentArea-4\" onclick=\"showComments(4)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-4\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 1: asd</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"3\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"3\" data-toggle=\"collapse\" href=\"#commentArea-3\" aria-expanded=\"false\" aria-controls=\"commentArea-3\" onclick=\"showComments(3)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-3\"> <div class=\"card card-block comments-area\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>\n', 3, 1, 0, 1, '2017-07-21 23:59:45', '2017-07-21 23:59:45'),
(8, 8, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"7\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"7\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: as</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"7\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"7\" data-toggle=\"collapse\" href=\"#keywordArea-7\" aria-expanded=\"false\" aria-controls=\"keywordArea-7\" onclick=\"showKeywords(7)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"7\" data-toggle=\"collapse\" href=\"#commentArea-7\" aria-expanded=\"false\" aria-controls=\"commentArea-7\" onclick=\"showComments(7)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-7\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-7\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n', 1, 1, 0, 1, '2017-07-22 00:12:29', '2017-07-22 00:12:29'),
(9, 9, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"8\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"9\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"11\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"10\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"12\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"13\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"8\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"8\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"8\" data-toggle=\"collapse\" href=\"#keywordArea-8\" aria-expanded=\"false\" aria-controls=\"keywordArea-8\" onclick=\"showKeywords(8)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"8\" data-toggle=\"collapse\" href=\"#commentArea-8\" aria-expanded=\"false\" aria-controls=\"commentArea-8\" onclick=\"showComments(8)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-8\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-8\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"9\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 2: V</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"9\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"9\" data-toggle=\"collapse\" href=\"#keywordArea-9\" aria-expanded=\"false\" aria-controls=\"keywordArea-9\" onclick=\"showKeywords(9)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"9\" data-toggle=\"collapse\" href=\"#commentArea-9\" aria-expanded=\"false\" aria-controls=\"commentArea-9\" onclick=\"showComments(9)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-9\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-9\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"11\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 4: ád</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"11\" onclick=\"scrollToHighlight(4)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#keywordArea-11\" aria-expanded=\"false\" aria-controls=\"keywordArea-11\" onclick=\"showKeywords(11)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#commentArea-11\" aria-expanded=\"false\" aria-controls=\"commentArea-11\" onclick=\"showComments(11)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-11\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-11\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"10\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 3: 3a</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"10\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"10\" data-toggle=\"collapse\" href=\"#keywordArea-10\" aria-expanded=\"false\" aria-controls=\"keywordArea-10\" onclick=\"showKeywords(10)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"10\" data-toggle=\"collapse\" href=\"#commentArea-10\" aria-expanded=\"false\" aria-controls=\"commentArea-10\" onclick=\"showComments(10)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-10\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-10\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"12\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 6: df</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"12\" onclick=\"scrollToHighlight(6)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#keywordArea-12\" aria-expanded=\"false\" aria-controls=\"keywordArea-12\" onclick=\"showKeywords(12)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#commentArea-12\" aria-expanded=\"false\" aria-controls=\"commentArea-12\" onclick=\"showComments(12)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-12\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-12\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"13\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 5: dsa</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"13\" onclick=\"scrollToHighlight(5)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#keywordArea-13\" aria-expanded=\"false\" aria-controls=\"keywordArea-13\" onclick=\"showKeywords(13)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#commentArea-13\" aria-expanded=\"false\" aria-controls=\"commentArea-13\" onclick=\"showComments(13)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-13\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-13\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n', 6, 2, 0, 1, '2017-07-24 03:32:52', '2017-07-24 03:32:52'),
(10, 10, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"8\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"9\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"11\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"10\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"12\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"13\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"8\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"8\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"8\" data-toggle=\"collapse\" href=\"#keywordArea-8\" aria-expanded=\"false\" aria-controls=\"keywordArea-8\" onclick=\"showKeywords(8)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"8\" data-toggle=\"collapse\" href=\"#commentArea-8\" aria-expanded=\"false\" aria-controls=\"commentArea-8\" onclick=\"showComments(8)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-8\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-8\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"9\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 2: V</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"9\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"9\" data-toggle=\"collapse\" href=\"#keywordArea-9\" aria-expanded=\"false\" aria-controls=\"keywordArea-9\" onclick=\"showKeywords(9)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"9\" data-toggle=\"collapse\" href=\"#commentArea-9\" aria-expanded=\"false\" aria-controls=\"commentArea-9\" onclick=\"showComments(9)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-9\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-9\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"11\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 4: ád</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"11\" onclick=\"scrollToHighlight(4)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#keywordArea-11\" aria-expanded=\"false\" aria-controls=\"keywordArea-11\" onclick=\"showKeywords(11)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#commentArea-11\" aria-expanded=\"false\" aria-controls=\"commentArea-11\" onclick=\"showComments(11)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-11\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-11\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"10\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 3: 3a</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"10\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"10\" data-toggle=\"collapse\" href=\"#keywordArea-10\" aria-expanded=\"false\" aria-controls=\"keywordArea-10\" onclick=\"showKeywords(10)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"10\" data-toggle=\"collapse\" href=\"#commentArea-10\" aria-expanded=\"false\" aria-controls=\"commentArea-10\" onclick=\"showComments(10)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-10\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-10\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"12\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 6: df</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"12\" onclick=\"scrollToHighlight(6)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#keywordArea-12\" aria-expanded=\"false\" aria-controls=\"keywordArea-12\" onclick=\"showKeywords(12)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#commentArea-12\" aria-expanded=\"false\" aria-controls=\"commentArea-12\" onclick=\"showComments(12)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-12\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-12\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"13\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 5: dsa</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"13\" onclick=\"scrollToHighlight(5)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#keywordArea-13\" aria-expanded=\"false\" aria-controls=\"keywordArea-13\" onclick=\"showKeywords(13)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#commentArea-13\" aria-expanded=\"false\" aria-controls=\"commentArea-13\" onclick=\"showComments(13)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-13\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-13\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n', 6, 2, 0, 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16');
INSERT INTO `reading_quizzs` (`id`, `lesson_id`, `content_quiz`, `content_answer_quiz`, `total_questions`, `type_lesson`, `limit_time`, `status`, `created_at`, `updated_at`) VALUES
(11, 11, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /><br />\n<span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"13\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"14\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"15\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"16\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"11\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#keywordArea-11\" aria-expanded=\"false\" aria-controls=\"keywordArea-11\" onclick=\"showKeywords(11)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#commentArea-11\" aria-expanded=\"false\" aria-controls=\"commentArea-11\" onclick=\"showComments(11)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-11\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-11\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><br>\n<span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"13\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 3: C</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"13\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#keywordArea-13\" aria-expanded=\"false\" aria-controls=\"keywordArea-13\" onclick=\"showKeywords(13)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#commentArea-13\" aria-expanded=\"false\" aria-controls=\"commentArea-13\" onclick=\"showComments(13)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-13\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-13\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 2: B</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"12\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#keywordArea-12\" aria-expanded=\"false\" aria-controls=\"keywordArea-12\" onclick=\"showKeywords(12)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#commentArea-12\" aria-expanded=\"false\" aria-controls=\"commentArea-12\" onclick=\"showComments(12)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-12\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-12\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"14\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 4: D</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"14\" onclick=\"scrollToHighlight(4)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"14\" data-toggle=\"collapse\" href=\"#keywordArea-14\" aria-expanded=\"false\" aria-controls=\"keywordArea-14\" onclick=\"showKeywords(14)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"14\" data-toggle=\"collapse\" href=\"#commentArea-14\" aria-expanded=\"false\" aria-controls=\"commentArea-14\" onclick=\"showComments(14)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-14\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-14\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"15\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 5: D</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"15\" onclick=\"scrollToHighlight(5)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"15\" data-toggle=\"collapse\" href=\"#keywordArea-15\" aria-expanded=\"false\" aria-controls=\"keywordArea-15\" onclick=\"showKeywords(15)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"15\" data-toggle=\"collapse\" href=\"#commentArea-15\" aria-expanded=\"false\" aria-controls=\"commentArea-15\" onclick=\"showComments(15)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-15\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-15\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"16\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 6: ca</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"16\" onclick=\"scrollToHighlight(6)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"16\" data-toggle=\"collapse\" href=\"#keywordArea-16\" aria-expanded=\"false\" aria-controls=\"keywordArea-16\" onclick=\"showKeywords(16)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"16\" data-toggle=\"collapse\" href=\"#commentArea-16\" aria-expanded=\"false\" aria-controls=\"commentArea-16\" onclick=\"showComments(16)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-16\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-16\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n', 6, 2, 0, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(12, 12, '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /><br />\n<span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"13\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"14\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"15\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"16\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" />Content Post is here!</p>\n', '<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"11\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"11\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#keywordArea-11\" aria-expanded=\"false\" aria-controls=\"keywordArea-11\" onclick=\"showKeywords(11)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"11\" data-toggle=\"collapse\" href=\"#commentArea-11\" aria-expanded=\"false\" aria-controls=\"commentArea-11\" onclick=\"showComments(11)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-11\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-11\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"12\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><br>\n<span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"13\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 3: C</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"13\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#keywordArea-13\" aria-expanded=\"false\" aria-controls=\"keywordArea-13\" onclick=\"showKeywords(13)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"13\" data-toggle=\"collapse\" href=\"#commentArea-13\" aria-expanded=\"false\" aria-controls=\"commentArea-13\" onclick=\"showComments(13)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-13\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-13\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 2: B</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"12\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#keywordArea-12\" aria-expanded=\"false\" aria-controls=\"keywordArea-12\" onclick=\"showKeywords(12)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"12\" data-toggle=\"collapse\" href=\"#commentArea-12\" aria-expanded=\"false\" aria-controls=\"commentArea-12\" onclick=\"showComments(12)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-12\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-12\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"14\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 4: D</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"14\" onclick=\"scrollToHighlight(4)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"14\" data-toggle=\"collapse\" href=\"#keywordArea-14\" aria-expanded=\"false\" aria-controls=\"keywordArea-14\" onclick=\"showKeywords(14)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"14\" data-toggle=\"collapse\" href=\"#commentArea-14\" aria-expanded=\"false\" aria-controls=\"commentArea-14\" onclick=\"showComments(14)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-14\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-14\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"15\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 5: D</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"15\" onclick=\"scrollToHighlight(5)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"15\" data-toggle=\"collapse\" href=\"#keywordArea-15\" aria-expanded=\"false\" aria-controls=\"keywordArea-15\" onclick=\"showKeywords(15)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"15\" data-toggle=\"collapse\" href=\"#commentArea-15\" aria-expanded=\"false\" aria-controls=\"commentArea-15\" onclick=\"showComments(15)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-15\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-15\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"16\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\">Content Post is here!</p><div class=\"explain-area\"><span><strong>Answer 6: ca</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"16\" onclick=\"scrollToHighlight(6)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"16\" data-toggle=\"collapse\" href=\"#keywordArea-16\" aria-expanded=\"false\" aria-controls=\"keywordArea-16\" onclick=\"showKeywords(16)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"16\" data-toggle=\"collapse\" href=\"#commentArea-16\" aria-expanded=\"false\" aria-controls=\"commentArea-16\" onclick=\"showComments(16)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-16\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-16\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n', 6, 2, 0, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(13, 13, '<p>Content Post is here!</p>\n\n<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"17\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"18\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"19\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"20\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"21\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"22\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>7</strong></span> <input class=\"question-quiz question-input question-7 last-option\" data-qnumber=\"23\" name=\"question-7\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>8</strong></span> <input class=\"question-quiz question-input question-8 last-option\" data-qnumber=\"24\" name=\"question-8\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>9</strong></span> <input class=\"question-quiz question-input question-9 last-option\" data-qnumber=\"25\" name=\"question-9\" onclick=\"bitest(this)\" type=\"text\" /><span class=\"label-input key-label\"><strong>10</strong></span> <input class=\"question-quiz question-input question-10 last-option\" data-qnumber=\"26\" name=\"question-10\" onclick=\"bitest(this)\" type=\"text\" /></p>\n', '<p>Content Post is here!</p>\n\n<p><span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"17\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"17\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"17\" data-toggle=\"collapse\" href=\"#keywordArea-17\" aria-expanded=\"false\" aria-controls=\"keywordArea-17\" onclick=\"showKeywords(17)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"17\" data-toggle=\"collapse\" href=\"#commentArea-17\" aria-expanded=\"false\" aria-controls=\"commentArea-17\" onclick=\"showComments(17)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-17\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-17\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"18\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 2: B</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"18\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"18\" data-toggle=\"collapse\" href=\"#keywordArea-18\" aria-expanded=\"false\" aria-controls=\"keywordArea-18\" onclick=\"showKeywords(18)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"18\" data-toggle=\"collapse\" href=\"#commentArea-18\" aria-expanded=\"false\" aria-controls=\"commentArea-18\" onclick=\"showComments(18)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-18\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-18\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"19\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>4</strong></span> <input class=\"question-quiz question-input question-4 last-option\" data-qnumber=\"20\" name=\"question-4\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>5</strong></span> <input class=\"question-quiz question-input question-5 last-option\" data-qnumber=\"21\" name=\"question-5\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>6</strong></span> <input class=\"question-quiz question-input question-6 last-option\" data-qnumber=\"22\" name=\"question-6\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>7</strong></span> <input class=\"question-quiz question-input question-7 last-option\" data-qnumber=\"23\" name=\"question-7\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>8</strong></span> <input class=\"question-quiz question-input question-8 last-option\" data-qnumber=\"24\" name=\"question-8\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 8: H</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"24\" onclick=\"scrollToHighlight(8)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"24\" data-toggle=\"collapse\" href=\"#keywordArea-24\" aria-expanded=\"false\" aria-controls=\"keywordArea-24\" onclick=\"showKeywords(24)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"24\" data-toggle=\"collapse\" href=\"#commentArea-24\" aria-expanded=\"false\" aria-controls=\"commentArea-24\" onclick=\"showComments(24)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-24\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-24\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 7: G</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"23\" onclick=\"scrollToHighlight(7)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"23\" data-toggle=\"collapse\" href=\"#keywordArea-23\" aria-expanded=\"false\" aria-controls=\"keywordArea-23\" onclick=\"showKeywords(23)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"23\" data-toggle=\"collapse\" href=\"#commentArea-23\" aria-expanded=\"false\" aria-controls=\"commentArea-23\" onclick=\"showComments(23)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-23\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-23\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 6: F</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"22\" onclick=\"scrollToHighlight(6)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"22\" data-toggle=\"collapse\" href=\"#keywordArea-22\" aria-expanded=\"false\" aria-controls=\"keywordArea-22\" onclick=\"showKeywords(22)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"22\" data-toggle=\"collapse\" href=\"#commentArea-22\" aria-expanded=\"false\" aria-controls=\"commentArea-22\" onclick=\"showComments(22)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-22\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-22\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 5: E</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"21\" onclick=\"scrollToHighlight(5)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"21\" data-toggle=\"collapse\" href=\"#keywordArea-21\" aria-expanded=\"false\" aria-controls=\"keywordArea-21\" onclick=\"showKeywords(21)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"21\" data-toggle=\"collapse\" href=\"#commentArea-21\" aria-expanded=\"false\" aria-controls=\"commentArea-21\" onclick=\"showComments(21)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-21\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-21\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 4: D</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"20\" onclick=\"scrollToHighlight(4)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"20\" data-toggle=\"collapse\" href=\"#keywordArea-20\" aria-expanded=\"false\" aria-controls=\"keywordArea-20\" onclick=\"showKeywords(20)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"20\" data-toggle=\"collapse\" href=\"#commentArea-20\" aria-expanded=\"false\" aria-controls=\"commentArea-20\" onclick=\"showComments(20)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-20\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-20\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 3: C</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"19\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"19\" data-toggle=\"collapse\" href=\"#keywordArea-19\" aria-expanded=\"false\" aria-controls=\"keywordArea-19\" onclick=\"showKeywords(19)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"19\" data-toggle=\"collapse\" href=\"#commentArea-19\" aria-expanded=\"false\" aria-controls=\"commentArea-19\" onclick=\"showComments(19)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-19\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-19\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>9</strong></span> <input class=\"question-quiz question-input question-9 last-option\" data-qnumber=\"25\" name=\"question-9\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"><span class=\"label-input key-label\"><strong>10</strong></span> <input class=\"question-quiz question-input question-10 last-option\" data-qnumber=\"26\" name=\"question-10\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 10: B</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"26\" onclick=\"scrollToHighlight(10)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"26\" data-toggle=\"collapse\" href=\"#keywordArea-26\" aria-expanded=\"false\" aria-controls=\"keywordArea-26\" onclick=\"showKeywords(26)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"26\" data-toggle=\"collapse\" href=\"#commentArea-26\" aria-expanded=\"false\" aria-controls=\"commentArea-26\" onclick=\"showComments(26)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-26\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-26\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div><div class=\"explain-area\"><span><strong>Answer 9: A</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"25\" onclick=\"scrollToHighlight(9)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"25\" data-toggle=\"collapse\" href=\"#keywordArea-25\" aria-expanded=\"false\" aria-controls=\"keywordArea-25\" onclick=\"showKeywords(25)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"25\" data-toggle=\"collapse\" href=\"#commentArea-25\" aria-expanded=\"false\" aria-controls=\"commentArea-25\" onclick=\"showComments(25)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-25\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-25\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n', 10, 3, 0, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(14, 14, '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"27\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"28\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"29\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" /></p>\n\n<p>&nbsp;</p>\n', '<p>Content Post is here!<span class=\"label-input key-label\"><strong>1</strong></span> <input class=\"question-quiz question-input question-1 last-option\" data-qnumber=\"27\" name=\"question-1\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 1: asd</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"27\" onclick=\"scrollToHighlight(1)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"27\" data-toggle=\"collapse\" href=\"#keywordArea-27\" aria-expanded=\"false\" aria-controls=\"keywordArea-27\" onclick=\"showKeywords(27)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"27\" data-toggle=\"collapse\" href=\"#commentArea-27\" aria-expanded=\"false\" aria-controls=\"commentArea-27\" onclick=\"showComments(27)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-27\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-27\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>2</strong></span> <input class=\"question-quiz question-input question-2 last-option\" data-qnumber=\"28\" name=\"question-2\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 2: fd</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"28\" onclick=\"scrollToHighlight(2)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"28\" data-toggle=\"collapse\" href=\"#keywordArea-28\" aria-expanded=\"false\" aria-controls=\"keywordArea-28\" onclick=\"showKeywords(28)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"28\" data-toggle=\"collapse\" href=\"#commentArea-28\" aria-expanded=\"false\" aria-controls=\"commentArea-28\" onclick=\"showComments(28)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-28\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-28\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p><span class=\"label-input key-label\"><strong>3</strong></span> <input class=\"question-quiz question-input question-3 last-option\" data-qnumber=\"29\" name=\"question-3\" onclick=\"bitest(this)\" type=\"text\" disabled=\"disabled\"></p><div class=\"explain-area\"><span><strong>Answer 3: fd</strong></span><a class=\"btn btn-xs btn-primary btn-locate-highlight\" data-qnumber=\"29\" onclick=\"scrollToHighlight(3)\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>&nbsp;Locate</a><a class=\"btn btn-xs btn-info btn-show-keywords\" data-qnumber=\"29\" data-toggle=\"collapse\" href=\"#keywordArea-29\" aria-expanded=\"false\" aria-controls=\"keywordArea-29\" onclick=\"showKeywords(29)\"><i class=\"fa fa-key\" aria-hidden=\"true\"></i>&nbsp;Keywords</a><a class=\"btn btn-xs btn-warning btn-show-comments\" data-qnumber=\"29\" data-toggle=\"collapse\" href=\"#commentArea-29\" aria-expanded=\"false\" aria-controls=\"commentArea-29\" onclick=\"showComments(29)\"><i class=\"fa fa-question\" aria-hidden=\"true\"></i>&nbsp;Comments</a><div class=\"collapse collage-keywords collapse-custom\" id=\"keywordArea-29\"> <div class=\"card card-block keywords-area\">ea proident.</div></div><div class=\"collapse collage-comments collapse-custom\" id=\"commentArea-29\"> <div class=\"card card-block comments-area\">ea proident.</div></div></div>\n\n<p>&nbsp;</p>\n', 3, 1, 3600, 1, '2017-07-24 04:15:08', '2017-07-24 04:15:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_results`
--

CREATE TABLE `reading_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `list_answered` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_type_questions`
--

CREATE TABLE `reading_type_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_type_questions`
--

INSERT INTO `reading_type_questions` (`id`, `name`, `introduction`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Matching Headings', 'introduction', 1, NULL, NULL),
(2, 'Matching Information', 'introduction', 1, NULL, NULL),
(3, 'Multiple Choice', 'introduction', 1, NULL, NULL),
(4, 'Plan, map, diagram labelling', 'introduction', 1, NULL, NULL),
(5, 'Sentence Completion', 'introduction', 1, NULL, NULL),
(6, 'Summary, form completion', 'introduction', 1, NULL, NULL),
(7, 'TRUE-FALSE-NOT GIVEN', 'introduction', 1, NULL, NULL),
(8, 'YES-NO-NOT GIVEN', 'introduction', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reading_type_question_of_quizzes`
--

CREATE TABLE `reading_type_question_of_quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `type_question_id` int(10) UNSIGNED NOT NULL,
  `total_questions` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reading_type_question_of_quizzes`
--

INSERT INTO `reading_type_question_of_quizzes` (`id`, `quiz_id`, `type_question_id`, `total_questions`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 1, 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16'),
(2, 10, 4, 1, 1, '2017-07-24 03:34:16', '2017-07-24 03:34:16'),
(3, 11, 1, 1, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(4, 11, 2, 1, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(5, 11, 3, 1, 1, '2017-07-24 03:35:25', '2017-07-24 03:35:25'),
(6, 12, 1, 2, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(7, 12, 2, 3, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(8, 12, 3, 1, 1, '2017-07-24 03:38:17', '2017-07-24 03:38:17'),
(9, 13, 1, 3, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(10, 13, 2, 2, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(11, 13, 3, 3, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(12, 13, 6, 1, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(13, 13, 8, 1, 1, '2017-07-24 03:41:58', '2017-07-24 03:41:58'),
(14, 14, 1, 3, 1, '2017-07-24 04:15:08', '2017-07-24 04:15:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

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
-- Chỉ mục cho bảng `reading_categories`
--
ALTER TABLE `reading_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reading_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `reading_category_lessons`
--
ALTER TABLE `reading_category_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reading_lessons`
--
ALTER TABLE `reading_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reading_questions`
--
ALTER TABLE `reading_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reading_questions_quiz_id_foreign` (`quiz_id`),
  ADD KEY `reading_questions_type_question_id_foreign` (`type_question_id`);

--
-- Chỉ mục cho bảng `reading_question_and_answers`
--
ALTER TABLE `reading_question_and_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reading_question_and_answers_question_id_foreign` (`question_id`),
  ADD KEY `reading_question_and_answers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `reading_quizzs`
--
ALTER TABLE `reading_quizzs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reading_quizzs_lesson_id_foreign` (`lesson_id`);

--
-- Chỉ mục cho bảng `reading_results`
--
ALTER TABLE `reading_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reading_results_user_id_foreign` (`user_id`),
  ADD KEY `reading_results_quiz_id_foreign` (`quiz_id`);

--
-- Chỉ mục cho bảng `reading_type_questions`
--
ALTER TABLE `reading_type_questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reading_type_questions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `reading_type_question_of_quizzes`
--
ALTER TABLE `reading_type_question_of_quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reading_type_question_of_quizzes_quiz_id_foreign` (`quiz_id`),
  ADD KEY `reading_type_question_of_quizzes_type_question_id_foreign` (`type_question_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_token_index` (`token`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `reading_categories`
--
ALTER TABLE `reading_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `reading_category_lessons`
--
ALTER TABLE `reading_category_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `reading_lessons`
--
ALTER TABLE `reading_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `reading_questions`
--
ALTER TABLE `reading_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT cho bảng `reading_question_and_answers`
--
ALTER TABLE `reading_question_and_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `reading_quizzs`
--
ALTER TABLE `reading_quizzs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `reading_results`
--
ALTER TABLE `reading_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `reading_type_questions`
--
ALTER TABLE `reading_type_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `reading_type_question_of_quizzes`
--
ALTER TABLE `reading_type_question_of_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `reading_questions`
--
ALTER TABLE `reading_questions`
  ADD CONSTRAINT `reading_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `reading_quizzs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reading_questions_type_question_id_foreign` FOREIGN KEY (`type_question_id`) REFERENCES `reading_type_questions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reading_question_and_answers`
--
ALTER TABLE `reading_question_and_answers`
  ADD CONSTRAINT `reading_question_and_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `reading_questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reading_question_and_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reading_quizzs`
--
ALTER TABLE `reading_quizzs`
  ADD CONSTRAINT `reading_quizzs_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `reading_lessons` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reading_results`
--
ALTER TABLE `reading_results`
  ADD CONSTRAINT `reading_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `reading_quizzs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reading_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reading_type_question_of_quizzes`
--
ALTER TABLE `reading_type_question_of_quizzes`
  ADD CONSTRAINT `reading_type_question_of_quizzes_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `reading_quizzs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reading_type_question_of_quizzes_type_question_id_foreign` FOREIGN KEY (`type_question_id`) REFERENCES `reading_type_questions` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
