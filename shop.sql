-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2022 at 05:44 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(20) NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(100) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `img`) VALUES
(1, 'orange', '1 kg', 10, '\"https://inwfile.com/s-gf/x0w9n6.jpg\"'),
(2, 'orange', '2 kg', 20, '\"https://inwfile.com/s-gf/x0w9n6.jpg\"'),
(3, 'orange', '3 kg', 30, '\"https://inwfile.com/s-gf/x0w9n6.jpg\"'),
(4, 'orange', '4 kg', 40, '\"https://inwfile.com/s-gf/x0w9n6.jpg\"'),
(5, 'orange', '5 kg', 50, '\"https://inwfile.com/s-gf/x0w9n6.jpg\"'),
(6, 'mango', '1 kg', 5, '\"http://postnoname.com/wp-content/uploads/2017/09/mango.jpg\"'),
(7, 'mango', '2 kg', 10, '\"http://postnoname.com/wp-content/uploads/2017/09/mango.jpg\"'),
(8, 'mango', '3 kg', 15, '\"http://postnoname.com/wp-content/uploads/2017/09/mango.jpg\"'),
(9, 'mango', '4 kg', 20, '\"http://postnoname.com/wp-content/uploads/2017/09/mango.jpg\"'),
(10, 'mango', '5 kg', 25, '\"http://postnoname.com/wp-content/uploads/2017/09/mango.jpg\"'),
(11, 'strawberry', '1 kg', 30, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg/1200px-Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg\"'),
(12, 'strawberry', '2 kg', 60, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg/1200px-Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg\"'),
(13, 'strawberry', '3 kg', 90, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg/1200px-Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg\"'),
(14, 'strawberry', '4 kg', 120, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg/1200px-Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg\"'),
(15, 'strawberry', '5 kg', 150, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg/1200px-Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg\"'),
(16, 'rambutan', '1 kg', 20, '\"https://static.bigc.co.th/media/catalog/product/0/2/0214304.jpg\"'),
(17, 'rambutan', '2 kg', 40, '\"https://static.bigc.co.th/media/catalog/product/0/2/0214304.jpg\"'),
(18, 'rambutan', '3 kg', 60, '\"https://static.bigc.co.th/media/catalog/product/0/2/0214304.jpg\"'),
(19, 'rambutan', '4 kg', 80, '\"https://static.bigc.co.th/media/catalog/product/0/2/0214304.jpg\"'),
(20, 'rambutan', '5 kg', 100, '\"https://static.bigc.co.th/media/catalog/product/0/2/0214304.jpg\"'),
(21, 'longan', '1 kg', 20, '\"https://thethaiger.com/wp-content/uploads/2021/08/Longan-ban-to-China-lifted-savoryexperiments.com_.jpg\"'),
(22, 'longan', '2 kg', 40, '\"https://thethaiger.com/wp-content/uploads/2021/08/Longan-ban-to-China-lifted-savoryexperiments.com_.jpg\"'),
(23, 'longan', '3 kg', 60, '\"https://thethaiger.com/wp-content/uploads/2021/08/Longan-ban-to-China-lifted-savoryexperiments.com_.jpg\"'),
(24, 'longan', '4 kg', 80, '\"https://thethaiger.com/wp-content/uploads/2021/08/Longan-ban-to-China-lifted-savoryexperiments.com_.jpg\"'),
(25, 'longan', '5 kg', 100, '\"https://thethaiger.com/wp-content/uploads/2021/08/Longan-ban-to-China-lifted-savoryexperiments.com_.jpg\"'),
(26, 'watermelon', '1 kg', 35, '\"https://image.makewebeasy.net/makeweb/0/qUs8Q7smr/Content/%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%AA%E0%B8%81%E0%B8%B1%E0%B8%94%E0%B8%88%E0%B8%B2%E0%B8%81%E0%B9%81%E0%B8%95%E0%B8%87%E0%B9%82%E0%B8%A1__Watermelon_Extract_5_%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B9%82%E0%B8%A2%E0%B8%8A%E0%B8%99%E0%B9%8C%E0%B8%8A%E0%B8%B1%E0%B9%89%E0%B8%99%E0%B9%80%E0%B8%A5%E0%B8%B4%E0%B8%A8_%E0%B9%81%E0%B8%AB%E0%B9%88%E0%B8%87%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%87%E0%B8%B2%E0%B8%A1_%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%97%E0%B8%B8%E0%B8%81%E0%B8%84%E0%B8%99%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3.jpg\"'),
(27, 'watermelon', '2 kg', 70, '\"https://image.makewebeasy.net/makeweb/0/qUs8Q7smr/Content/%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%AA%E0%B8%81%E0%B8%B1%E0%B8%94%E0%B8%88%E0%B8%B2%E0%B8%81%E0%B9%81%E0%B8%95%E0%B8%87%E0%B9%82%E0%B8%A1__Watermelon_Extract_5_%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B9%82%E0%B8%A2%E0%B8%8A%E0%B8%99%E0%B9%8C%E0%B8%8A%E0%B8%B1%E0%B9%89%E0%B8%99%E0%B9%80%E0%B8%A5%E0%B8%B4%E0%B8%A8_%E0%B9%81%E0%B8%AB%E0%B9%88%E0%B8%87%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%87%E0%B8%B2%E0%B8%A1_%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%97%E0%B8%B8%E0%B8%81%E0%B8%84%E0%B8%99%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3.jpg\"'),
(28, 'watermelon', '3 kg', 105, '\"https://image.makewebeasy.net/makeweb/0/qUs8Q7smr/Content/%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%AA%E0%B8%81%E0%B8%B1%E0%B8%94%E0%B8%88%E0%B8%B2%E0%B8%81%E0%B9%81%E0%B8%95%E0%B8%87%E0%B9%82%E0%B8%A1__Watermelon_Extract_5_%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B9%82%E0%B8%A2%E0%B8%8A%E0%B8%99%E0%B9%8C%E0%B8%8A%E0%B8%B1%E0%B9%89%E0%B8%99%E0%B9%80%E0%B8%A5%E0%B8%B4%E0%B8%A8_%E0%B9%81%E0%B8%AB%E0%B9%88%E0%B8%87%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%87%E0%B8%B2%E0%B8%A1_%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%97%E0%B8%B8%E0%B8%81%E0%B8%84%E0%B8%99%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3.jpg\"'),
(29, 'watermelon', '4 kg', 140, '\"https://image.makewebeasy.net/makeweb/0/qUs8Q7smr/Content/%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%AA%E0%B8%81%E0%B8%B1%E0%B8%94%E0%B8%88%E0%B8%B2%E0%B8%81%E0%B9%81%E0%B8%95%E0%B8%87%E0%B9%82%E0%B8%A1__Watermelon_Extract_5_%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B9%82%E0%B8%A2%E0%B8%8A%E0%B8%99%E0%B9%8C%E0%B8%8A%E0%B8%B1%E0%B9%89%E0%B8%99%E0%B9%80%E0%B8%A5%E0%B8%B4%E0%B8%A8_%E0%B9%81%E0%B8%AB%E0%B9%88%E0%B8%87%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%87%E0%B8%B2%E0%B8%A1_%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%97%E0%B8%B8%E0%B8%81%E0%B8%84%E0%B8%99%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3.jpg\"'),
(30, 'watermelon', '5 kg', 175, '\"https://image.makewebeasy.net/makeweb/0/qUs8Q7smr/Content/%E0%B8%AA%E0%B8%B2%E0%B8%A3%E0%B8%AA%E0%B8%81%E0%B8%B1%E0%B8%94%E0%B8%88%E0%B8%B2%E0%B8%81%E0%B9%81%E0%B8%95%E0%B8%87%E0%B9%82%E0%B8%A1__Watermelon_Extract_5_%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B9%82%E0%B8%A2%E0%B8%8A%E0%B8%99%E0%B9%8C%E0%B8%8A%E0%B8%B1%E0%B9%89%E0%B8%99%E0%B9%80%E0%B8%A5%E0%B8%B4%E0%B8%A8_%E0%B9%81%E0%B8%AB%E0%B9%88%E0%B8%87%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%87%E0%B8%B2%E0%B8%A1_%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%97%E0%B8%B8%E0%B8%81%E0%B8%84%E0%B8%99%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3.jpg\"'),
(31, 'durian', '1 kg', 220, '\"https://healthiersteps.com/wp-content/uploads/2021/09/durian-1.jpg\"'),
(32, 'durian', '2 kg', 440, '\"https://healthiersteps.com/wp-content/uploads/2021/09/durian-1.jpg\"'),
(33, 'durian', '3 kg', 660, '\"https://healthiersteps.com/wp-content/uploads/2021/09/durian-1.jpg\"'),
(34, 'durian', '4 kg', 880, '\"https://healthiersteps.com/wp-content/uploads/2021/09/durian-1.jpg\"'),
(35, 'durian', '5 kg', 1100, '\"https://healthiersteps.com/wp-content/uploads/2021/09/durian-1.jpg\"'),
(36, 'apple', '1 kg', 40, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/1200px-Red_Apple.jpg\"'),
(37, 'apple', '2 kg', 80, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/1200px-Red_Apple.jpg\"'),
(38, 'apple', '3 kg', 120, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/1200px-Red_Apple.jpg\"'),
(39, 'apple', '4 kg', 160, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/1200px-Red_Apple.jpg\"'),
(40, 'apple', '5 kg', 200, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/1200px-Red_Apple.jpg\"'),
(41, 'kiwi', '1 kg', 75, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg/1200px-Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg\"'),
(42, 'kiwi', '2 kg', 150, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg/1200px-Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg\"'),
(43, 'kiwi', '3 kg', 225, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg/1200px-Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg\"'),
(44, 'kiwi', '4 kg', 300, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg/1200px-Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg\"'),
(45, 'kiwi', '5 kg', 375, '\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg/1200px-Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg\"'),
(46, 'banana', '1 kg', 45, '\"https://image.makewebeasy.net/makeweb/0/aNSsujWTa/FruitandVegs/Picture14.png?v=202012190947\"'),
(47, 'banana', '2 kg', 90, '\"https://image.makewebeasy.net/makeweb/0/aNSsujWTa/FruitandVegs/Picture14.png?v=202012190947\"'),
(48, 'banana', '3 kg', 135, '\"https://image.makewebeasy.net/makeweb/0/aNSsujWTa/FruitandVegs/Picture14.png?v=202012190947\"'),
(49, 'banana', '4 kg', 180, '\"https://image.makewebeasy.net/makeweb/0/aNSsujWTa/FruitandVegs/Picture14.png?v=202012190947\"'),
(50, 'banana', '5 kg', 225, '\"https://image.makewebeasy.net/makeweb/0/aNSsujWTa/FruitandVegs/Picture14.png?v=202012190947\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
