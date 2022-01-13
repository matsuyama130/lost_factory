-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-01-13 12:33:08
-- サーバのバージョン： 10.4.22-MariaDB
-- PHP のバージョン: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `lost_factory`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `lost_table`
--

CREATE TABLE `lost_table` (
  `id` int(11) NOT NULL,
  `tool` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `takeout` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `lost_table`
--

INSERT INTO `lost_table` (`id`, `tool`, `takeout`, `created_at`, `updated_at`) VALUES
(2, 'マイクロ', '2022-01-12', '2022-01-12 19:10:55', '2022-01-12 19:10:55'),
(3, 'ノギス', '2022-01-13', '2022-01-12 19:29:50', '2022-01-12 19:29:50'),
(4, '三菱', '2022-01-26', '2022-01-12 19:52:56', '2022-01-12 19:52:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'testuser01', '111111', 1, 0, '2022-01-12 19:26:36', '2022-01-12 19:26:36'),
(2, 'testuser02', '222222', 0, 0, '2022-01-12 19:26:36', '2022-01-12 19:26:36'),
(3, 'testuser03', '333333', 0, 0, '2022-01-12 19:26:36', '2022-01-12 19:26:36'),
(4, 'testuser04', '444444', 0, 0, '2022-01-12 19:26:36', '2022-01-12 19:26:36'),
(5, 'hibiki', '1234', 0, 0, '2022-01-12 19:26:46', '2022-01-12 19:26:46');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `lost_table`
--
ALTER TABLE `lost_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `lost_table`
--
ALTER TABLE `lost_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
