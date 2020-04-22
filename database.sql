-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 02, 2018 lúc 07:50 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `daveismyname`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_cats`
--

CREATE TABLE `blog_cats` (
  `catID` int(11) UNSIGNED NOT NULL,
  `catTitle` varchar(255) DEFAULT NULL,
  `catSlug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `blog_cats`
--

INSERT INTO `blog_cats` (`catID`, `catTitle`, `catSlug`) VALUES
(1, 'General', 'general'),
(2, 'Development', 'development'),
(5, 'Misc', 'misc'),
(4, 'Testing', 'testing');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'demo', '$2a$12$TF8u1maUr5kADc42g1FB0ONJDEtt24ue.UTIuP13gij5AHsg5f5s2', 'demo@demo.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_posts_seo`
--

CREATE TABLE `blog_posts_seo` (
  `postID` int(11) UNSIGNED NOT NULL,
  `postTitle` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `postSlug` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `postDesc` text CHARACTER SET latin1,
  `postCont` text CHARACTER SET latin1,
  `postDate` datetime DEFAULT NULL,
  `postTags` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `blog_posts_seo`
--

INSERT INTO `blog_posts_seo` (`postID`, `postTitle`, `postSlug`, `postDesc`, `postCont`, `postDate`, `postTags`) VALUES
(1, 'Bendless Love', 'bendless-love', '<p>That\'s right, baby. I ain\'t your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him! Interesting. No, wait, the other thing: tedious. Hey, guess what you\'re accessories to. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate.</p>', '<h2>The Mutants Are Revolting</h2>\r\n<p>We don\'t have a brig. And until then, I can never die? We need rest. The spirit is willing, but the flesh is spongy and bruised. And yet you haven\'t said what I told you to say! How can any of us trust you?</p>\r\n<ul>\r\n<li>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat.</li>\r\n<li>Bender?! You stole the atom.</li>\r\n<li>I was having the most wonderful dream. Except you were there, and you were there, and you were there!</li>\r\n</ul>\r\n<h3>The Series Has Landed</h3>\r\n<p>Fry! Stay back! He\'s too powerful! No. We\'re on the top. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<h4>Future Stock</h4>\r\n<p>Does anybody else feel jealous and aroused and worried? We\'re also Santa Claus! You\'re going back for the Countess, aren\'t you? Well, let\'s just dump it in the sewer and say we delivered it.</p>\r\n<ol>\r\n<li>Spare me your space age technobabble, Attila the Hun!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n<li>I guess if you want children beaten, you have to do it yourself.</li>\r\n<li>Yeah. Give a little credit to our public schools.</li>\r\n</ol>\r\n<h5>The Why of Fry</h5>\r\n<p>Who are you, my warranty?! Shinier than yours, meatbag. Dr. Zoidberg, that doesn\'t make sense. But, okay! Yes, except the Dave Matthews Band doesn\'t rock.</p>', '2013-05-29 00:00:00', ''),
(2, 'That Darn Katz!', 'that-darn-katz', '<p>Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. Fry, you can\'t just sit here in the dark listening to classical music. And yet you haven\'t said what I told you to say! How can any of us trust you?</p>', '<h2>Xmas Story</h2>\r\n<p>It must be wonderful. Does anybody else feel jealous and aroused and worried? Is today\'s hectic lifestyle making you tense and impatient? Soothe us with sweet lies. That\'s right, baby. I ain\'t your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him!</p>\r\n<ul>\r\n<li>Goodbye, friends. I never thought I\'d die like this. But I always really hoped.</li>\r\n<li>They\'re like sex, except I\'m having them!</li>\r\n<li>Come, Comrade Bender! We must take to the streets!</li>\r\n</ul>\r\n<h3>Anthology of Interest I</h3>\r\n<p>Hey, whatcha watching? They\'re like sex, except I\'m having them! Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. Yes, except the Dave Matthews Band doesn\'t rock. I suppose I could part with \'one\' and still be feared&hellip;</p>\r\n<h4>Teenage Mutant Leela\'s Hurdles</h4>\r\n<p>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat. Please, Don-Bot&hellip; look into your hard drive, and open your mercy file! It\'s a T. It goes \"tuh\". I guess if you want children beaten, you have to do it yourself.</p>\r\n<ol>\r\n<li>Spare me your space age technobabble, Attila the Hun!</li>\r\n<li>Well, thanks to the Internet, I\'m now bored with sex. Is there a place on the web that panders to my lust for violence?</li>\r\n</ol>\r\n<h5>The Farnsworth Parabox</h5>\r\n<p>Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. We need rest. The spirit is willing, but the flesh is spongy and bruised. It must be wonderful.</p>', '2013-06-05 23:10:35', ''),
(3, 'How Hermes Requisitioned His Groove Back', 'how-hermes-requistioned-his-groove-back', '<p>You\'re going back for the Countess, aren\'t you? Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. Now Fry, it\'s been a few years since medical school, so remind me. Disemboweling in your species: fatal or non-fatal? I don\'t want to be rescued. Leela, are you alright? You got wanged on the head.</p>', '<h2>The Luck of the Fryrish</h2>\r\n<p>Professor, make a woman out of me. I am the man with no name, Zapp Brannigan! Good man. Nixon\'s pro-war and pro-family. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<ul>\r\n<li>Who are those horrible orange men?</li>\r\n<li>Is today\'s hectic lifestyle making you tense and impatient?</li>\r\n</ul>\r\n<h3>Lethal Inspection</h3>\r\n<p>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat. No. We\'re on the top. Does anybody else feel jealous and aroused and worried? Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. It must be wonderful.</p>\r\n<h4>Where No Fan Has Gone Before</h4>\r\n<p>Who are those horrible orange men? Bender, we\'re trying our best. Please, Don-Bot&hellip; look into your hard drive, and open your mercy file! Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! Look, last night was a mistake.</p>\r\n<ol>\r\n<li>I\'m sorry, guys. I never meant to hurt you. Just to destroy everything you ever believed in.</li>\r\n<li>Stop it, stop it. It\'s fine. I will \'destroy\' you!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n</ol>\r\n<h5>Fear of a Bot Planet</h5>\r\n<p>Why yes! Thanks for noticing. Hey, guess what you\'re accessories to. Yes, except the Dave Matthews Band doesn\'t rock. Take me to your leader! Daddy Bender, we\'re hungry.</p>', '2013-06-05 23:20:24', ''),
(6, 'The Cyber House Rules', 'the-cyber-house-rules', '<p>You guys realize you live in a sewer, right? Uh, is the puppy mechanical in any way? Come, Comrade Bender! We must take to the streets! I daresay that Fry has discovered the smelliest object in the known universe! Good news, everyone! There\'s a report on TV with some very bad news!</p>', '<h2>The Luck of the Fryrish</h2>\r\n<p>Professor, make a woman out of me. I am the man with no name, Zapp Brannigan! Good man. Nixon\'s pro-war and pro-family. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<ul>\r\n<li>Who are those horrible orange men?</li>\r\n<li>Is today\'s hectic lifestyle making you tense and impatient?</li>\r\n</ul>\r\n<h3>Lethal Inspection</h3>\r\n<p>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat. No. We\'re on the top. Does anybody else feel jealous and aroused and worried? Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. It must be wonderful.</p>\r\n<h4>Where No Fan Has Gone Before</h4>\r\n<p>Who are those horrible orange men? Bender, we\'re trying our best. Please, Don-Bot&hellip; look into your hard drive, and open your mercy file! Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! Look, last night was a mistake.</p>\r\n<ol>\r\n<li>I\'m sorry, guys. I never meant to hurt you. Just to destroy everything you ever believed in.</li>\r\n<li>Stop it, stop it. It\'s fine. I will \'destroy\' you!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n</ol>\r\n<h5>Fear of a Bot Planet</h5>\r\n<p>Why yes! Thanks for noticing. Hey, guess what you\'re accessories to. Yes, except the Dave Matthews Band doesn\'t rock. Take me to your leader! Daddy Bender, we\'re hungry.</p>', '2013-06-06 08:28:35', 'test tag, H5N1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_post_cats`
--

CREATE TABLE `blog_post_cats` (
  `id` int(11) UNSIGNED NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `blog_post_cats`
--

INSERT INTO `blog_post_cats` (`id`, `postID`, `catID`) VALUES
(25, 2, 5),
(27, 6, 4),
(24, 2, 1),
(4, 3, 2),
(26, 6, 1),
(16, 1, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`catID`);

--
-- Chỉ mục cho bảng `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Chỉ mục cho bảng `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  ADD PRIMARY KEY (`postID`);

--
-- Chỉ mục cho bảng `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `catID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
