-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 06:48 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jspservletjdbc`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `code`, `isDelete`) VALUES
(1, 'Điện thoại', 'dien-thoai', 1),
(2, 'Laptop', 'laptop', 1),
(3, 'Tablet', 'tablet', 0),
(4, 'Phụ kiện', 'phu-kien', 0),
(5, 'Đồng hồ thời trang', 'dong-ho', 0),
(6, 'PC / Máy bộ', 'pc-may-bo', 1),
(7, 'Máy cũ', 'may-cu', 0),
(8, 'Sim số', 'sim-so', 1),
(22, 'Giải trí', 'giai-tri', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `productId`, `name`, `content`, `createdDate`) VALUES
(1, 1, 'admin', 'good product', '2020-08-26 15:31:37'),
(12, 17, 'admin', 'Too cheap!!', '2020-08-31 04:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortSummary` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `shortSummary`, `content`, `price`, `createdDate`, `categoryId`, `manufacturer`, `image`, `views`) VALUES
(1, 'Samsung Galaxy S9', 'samsung-galaxy-s9', 'smartphone', 'smartphone', '19000000.00', '2020-08-29 09:29:38', 1, 'Hàn quốc', 'https://cdn.tgdd.vn/Products/Images/42/165014/samsung-galaxy-s9-do-400x460.png', 164),
(15, 'OPPO Reno3', 'oppo-reno-3', 'smartphone', 'smartphone', '1000.00', '2020-08-31 11:27:17', 1, 'China', 'https://cdn.tgdd.vn/Products/Images/42/213591/oppo-reno3-trang-400x460-400x460.png', 70),
(16, 'Samsung Galaxy Note 20\r\n\r\n', 'sumsung-galaxy-note-20', 'smartphone', 'smartphone', '3000.00', '2020-08-31 03:38:03', 1, 'Hàn quốc', 'https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-062120-122128-400x460.png', 51),
(17, 'iPhone 11 Pro Max', 'iphone-11-pro-max', 'smartphone', 'smartphone', '5000.00', '2020-08-26 03:40:31', 1, 'US', 'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-400x460.png', 1005),
(18, ' Dell Vostro 3590', 'dell-vostro-3590', 'i7 10510U/8GB/256GB/2GB 610R5/Win10', 'Laptop Dell Vostro 3590 i7 (GRMGK2) là phiên bản laptop đồ họa kĩ thuật có thiết kế hiện đại, cấu hình khỏe với vi xử lí gen 10 và card đồ họa rời. Đây chính là chiếc laptop đáng cân nhắc đối với dân đồ họa hay sinh viên khối ngành kĩ thuật.', '70000.00', '2020-08-12 03:43:03', 2, 'US', 'https://cdn.tgdd.vn/Products/Images/44/220718/dell-vostro-3590-i7-grmgk2-220718-220718-600x600.jpg', 54),
(19, ' iPad 10.2 inch', ' iPad-10.2 inch', 'Wifi Cellular 32GB (2019)\r\n\r\nWifi Cellular 32GB (2019)\r\n\r\n', 'Nhắc tới máy tính bảng thì người ta sẽ nghĩ ngay tới iPad và vào những tháng cuối năm 2019 thì Apple giới thiệu chiếc máy tính bảng \"giá rẻ\" mang tên iPad 10.2 inch Wifi Cellular 32GB (2019), nhắm tới đối tượng người dùng là các bạn học sinh, sinh viên hay những người muốn một thiết bị màn hình lớn cho làm việc và giải trí.', '300.00', '2020-08-19 03:45:34', 3, 'US', 'https://cdn.tgdd.vn/Products/Images/522/213099/ipad-10-2-inch-wifi-cellular-32gb-2019-gold-400x460.png', 41);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer'),
(3, 'sjj'),
(4, 'á');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDeleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `roleId`, `fullname`, `isDeleted`) VALUES
(1, 'admin', 'admin', 1, 'admin', 0),
(2, 'hieu', 'hieu', 2, 'Trong Hieu', 0),
(24, 'hieu20048', '1111', 2, 'Truong Trong Hieu', NULL),
(25, 'truongtronghieu2004@gmail.com', '1111', 2, 'Truong Trong Hieu', NULL),
(26, 'hieu20', '51', 2, 'Truong Trong Hieu', 0),
(27, 'nnnmm', '1111', 2, 'Truong Trong Hieu', 1),
(28, 'hieu20048', 'ad', 2, 'Truong Trong Hieu', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
