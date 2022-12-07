-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 04:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `confirm_market` int(1) NOT NULL,
  `confirm_rider` int(1) NOT NULL,
  `store` text NOT NULL,
  `owner_bill` text NOT NULL,
  `bill` text NOT NULL,
  `time` text NOT NULL,
  `first_name_owner_bill` text NOT NULL,
  `tel_owner_bill` text NOT NULL,
  `tel_owner_market` text NOT NULL,
  `lat_client` double NOT NULL,
  `long_client` double NOT NULL,
  `confirm_market_time` text NOT NULL,
  `confirm_rider_time` text NOT NULL,
  `confirm_finish_time` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `confirm_market`, `confirm_rider`, `store`, `owner_bill`, `bill`, `time`, `first_name_owner_bill`, `tel_owner_bill`, `tel_owner_market`, `lat_client`, `long_client`, `confirm_market_time`, `confirm_rider_time`, `confirm_finish_time`) VALUES
(1, 0, 0, 'อาหารตามสั่งป้าแอ๊ด', '0962234123', '[{\"id\":1,\"food_name\":\"ข้าวผัดกระเพราหมูสับ\",\"food_price\":50,\"food_img\":\"2e5e936a36586da03e09a4a39375fb0d.jpg\",\"type\":\"อาหาร\",\"owner\":\"อาหารตามสั่งป้าแอ๊ด\",\"close\":0,\"quantity\":1,\"remark\":\"\"}]', '7/12/2565 20:28', 'Nubwo', '0962234123', '0956975152', 18.7866812, 99.1124247, '', '', 0),
(3, 0, 1, 'อาหารตามสั่งป้าแอ๊ด', '0962234123', '[{\"id\":1,\"food_name\":\"ข้าวผัดกระเพราหมูสับ\",\"food_price\":50,\"food_img\":\"2e5e936a36586da03e09a4a39375fb0d.jpg\",\"type\":\"อาหาร\",\"owner\":\"อาหารตามสั่งป้าแอ๊ด\",\"close\":0,\"quantity\":1,\"remark\":\"\"}]', '7/12/2565 20:28', 'Nubwo', '0962234123', '0956975152', 18.7866812, 99.1124247, '', '7/12/2565 20:58:01', 0),
(4, 1, 1, 'อาหารตามสั่งป้าแอ๊ด', '0962234123', '[{\"id\":1,\"food_name\":\"ข้าวผัดกระเพราหมูสับ\",\"food_price\":50,\"food_img\":\"2e5e936a36586da03e09a4a39375fb0d.jpg\",\"type\":\"อาหาร\",\"owner\":\"อาหารตามสั่งป้าแอ๊ด\",\"close\":0,\"quantity\":1,\"remark\":\"\"}]', '7/12/2565 20:35', 'Nubwo', '0962234123', '0956975152', 18.7866812, 99.1124247, '7/12/2565 20:42:09', '7/12/2565 20:55:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(255) NOT NULL,
  `food_name` text NOT NULL,
  `food_price` int(255) NOT NULL,
  `food_img` text NOT NULL,
  `type` text NOT NULL,
  `owner` text NOT NULL,
  `close` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `food_name`, `food_price`, `food_img`, `type`, `owner`, `close`) VALUES
(1, 'ข้าวผัดกระเพราหมูสับ', 50, '2e5e936a36586da03e09a4a39375fb0d.jpg', 'อาหาร', 'อาหารตามสั่งป้าแอ๊ด', 0),
(2, 'ข้าวผัด', 50, 'photo.jpg', 'อาหาร', 'อาหารตามสั่งป้าแอ๊ด', 0),
(3, 'แซนวิชผลไม้', 60, 'fruitsandwiches_key.jpg', 'ขนม', 'ร้านป้าดวล', 0),
(4, 'แกงเขียวหวาน', 40, 'f083c309eaab40b8b21efa7eaeda4b87_How_To_Make_Thai_Green_Curry_Like_A_MICHELIN_Starred_Restaurant2.jpg', 'อาหาร', 'อาหารตามสั่งป้าแอ๊ด', 0),
(5, 'ข้าวไข่เจียว', 40, '385698979x.jpg', 'อาหาร', 'อาหารตามสั่งป้าแอ๊ด', 0),
(6, 'ข้าวผัดอเมริกัน', 17, 'americanfriedrice.jpg', 'อาหาร', 'อาหารตามสั่งป้าแอ๊ด', 0),
(7, 'ชานมใต้หวัน + ไข่มุข', 55, 'taiwan-milk-tea-with-bubble_1339-73160.jpg', 'เครื่องดื่ม', 'อาหารตามสั่งป้าแอ๊ด', 0);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `bill_storage` text NOT NULL,
  `buyer` text NOT NULL,
  `time` text NOT NULL,
  `store` text NOT NULL,
  `tel` text NOT NULL,
  `time_market_confirm` text NOT NULL,
  `time_rider_confirm` text NOT NULL,
  `finish_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `bill_storage`, `buyer`, `time`, `store`, `tel`, `time_market_confirm`, `time_rider_confirm`, `finish_time`) VALUES
(1, '[{\"id\":1,\"food_name\":\"ข้าวผัดกระเพราหมูสับ\",\"food_price\":50,\"food_img\":\"2e5e936a36586da03e09a4a39375fb0d.jpg\",\"type\":\"อาหาร\",\"owner\":\"อาหารตามสั่งป้าแอ๊ด\",\"close\":0,\"quantity\":1,\"remark\":\"\"}]', '0962234123', '7/12/2565 20:28', 'อาหารตามสั่งป้าแอ๊ด', '0962234123', '', '', ''),
(2, '[{\"id\":1,\"food_name\":\"ข้าวผัดกระเพราหมูสับ\",\"food_price\":50,\"food_img\":\"2e5e936a36586da03e09a4a39375fb0d.jpg\",\"type\":\"อาหาร\",\"owner\":\"อาหารตามสั่งป้าแอ๊ด\",\"close\":0,\"quantity\":1,\"remark\":\"\"}]', '0962234123', '7/12/2565 20:35', 'อาหารตามสั่งป้าแอ๊ด', '0962234123', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `tel` text NOT NULL,
  `market` text NOT NULL,
  `market_logo` text NOT NULL,
  `lat` double NOT NULL,
  `longitude` double NOT NULL,
  `role` int(1) NOT NULL,
  `notification_order` int(11) NOT NULL,
  `rider_inventory` text NOT NULL,
  `food_id` int(11) NOT NULL,
  `first_name_order` text NOT NULL,
  `owner_order` text NOT NULL,
  `buy_store` text NOT NULL,
  `buy_store_tel` text NOT NULL,
  `owner_order_tel` text NOT NULL,
  `buy_time` text NOT NULL,
  `lat_client` double NOT NULL,
  `long_client` double NOT NULL,
  `ticket` text NOT NULL,
  `rider_count` int(11) NOT NULL,
  `rider_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `tel`, `market`, `market_logo`, `lat`, `longitude`, `role`, `notification_order`, `rider_inventory`, `food_id`, `first_name_order`, `owner_order`, `buy_store`, `buy_store_tel`, `owner_order_tel`, `buy_time`, `lat_client`, `long_client`, `ticket`, `rider_count`, `rider_money`) VALUES
(1, '0956975152', '123456', 'รัฐนนท์', 'บุญมาตา', '', '0956975152', 'อาหารตามสั่งป้าแอ๊ด', 'ce606576fe00e3624eb32030a7e4b689.jpg', 18.7866812, 99.1124247, 1, 2, '', 0, '', '', '', '', '', '', 0, 0, '', 0, 0),
(2, '0895552213', '123456', 'กเษม', 'ลุงชัย', '', '0895552213', '', '', 0, 0, 2, 0, '', 0, '0962234123', '', '', '', '', '', 0, 0, '0', 1, 10),
(3, '0962234123', '123456', 'Nubwo', 'Singto', '', '0962234123', '', '', 18.7866812, 99.1124247, 0, 0, '', 0, '', '', '', '', '', '', 0, 0, '', 0, 0),
(4, '0874561232', '123456', 'ดวลใจ', 'ลำใยทอง', '', '0874561232', 'ร้านป้าดวล', 'b_3.jpg', 18.7866812, 99.1124247, 1, 0, '', 0, '', '', '', '', '', '', 0, 0, '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
