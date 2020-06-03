-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-06-04 01:21:31
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `age`, `naiyou`, `indate`) VALUES
(1, 'test1', 'test1@test.jp', 30, 'test', '2020-05-30 19:40:45'),
(2, 'test2', 'test2@test.jp', 40, 'test', '2020-05-30 19:42:38'),
(3, 'test3', 'test3@test.jp', 50, 'test', '2020-05-30 19:53:07'),
(4, 'test4', 'test4@test.jp', 30, 'test', '2020-05-30 19:53:33'),
(5, 'test5', 'test5@test.jp', 40, 'test', '2020-05-30 19:54:01'),
(6, 'test6', 'test6@test.jp', 50, 'test', '2020-05-30 19:54:35'),
(7, 'test7', 'test7@test.jp', 30, 'test', '2020-05-30 19:54:52'),
(8, 'test8', 'test8@test.jp', 40, 'test', '2020-05-30 19:55:23'),
(9, 'test9', 'test9@test.jp', 50, 'test', '2020-05-30 19:55:46'),
(10, 'test10', 'test10@test.jp', 30, 'test', '2020-05-30 19:56:12');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'test1', 'test1', 'test1', 0, 0),
(2, 'test2', 'test2', 'test2', 0, 1),
(3, 'test3', 'test3', 'test3', 1, 1),
(4, 'test4', 'test4', 'test4', 1, 0),
(5, 'test5', 'test5', 'test5', 0, 0),
(6, 'test6', 'test6', 'test6', 0, 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
