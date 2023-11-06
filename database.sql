-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 09:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCatagories` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 50 DO
    INSERT INTO catagories (name) VALUES (CONCAT('Category ', CHAR(64 + i)));
    SET i = i + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCatagoriesdfsdfsd` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 50 DO
    INSERT INTO catagories (name) VALUES (CONCAT('Category ', i));
    SET i = i + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCustomer` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 50 DO
    INSERT INTO customer (name, email, location) VALUES (CONCAT('Customer ', i), CONCAT('customer', i, '@example.com'), CONCAT('Location ', FLOOR(RAND() * 100) + 1));
    SET i = i + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertOrderItems` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 50 DO
    INSERT INTO order_items (order_ID, product_ID, quantity, unit_price) VALUES (i, i, FLOOR(RAND() * 10) + 1, FLOOR(RAND() * 100) + 1);
    SET i = i + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertOrders` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 50 DO
    INSERT INTO orders (customer_ID, order_date, total_amount) VALUES (i, DATE_ADD(NOW(), INTERVAL -FLOOR(RAND() * 365) DAY), FLOOR(RAND() * 1000) + 1);
    SET i = i + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertProduct` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 50 DO
    INSERT INTO product (name, description, price) VALUES (CONCAT('Product ', i), CONCAT('Description for product ', i), FLOOR(RAND() * 100) + 1);
    SET i = i + 1;
  END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `category_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`category_ID`, `name`) VALUES
(1, 'Category 1'),
(2, 'Category 2'),
(3, 'Category 3'),
(4, 'Category 4'),
(5, 'Category 5'),
(6, 'Category 6'),
(7, 'Category 7'),
(8, 'Category 8'),
(9, 'Category 9'),
(10, 'Category 10'),
(11, 'Category 11'),
(12, 'Category 12'),
(13, 'Category 13'),
(14, 'Category 14'),
(15, 'Category 15'),
(16, 'Category 16'),
(17, 'Category 17'),
(18, 'Category 18'),
(19, 'Category 19'),
(20, 'Category 20'),
(21, 'Category 21'),
(22, 'Category 22'),
(23, 'Category 23'),
(24, 'Category 24'),
(25, 'Category 25'),
(51, 'Category A'),
(52, 'Category B'),
(53, 'Category C'),
(54, 'Category D'),
(55, 'Category E'),
(56, 'Category F'),
(57, 'Category G'),
(58, 'Category H'),
(59, 'Category I'),
(60, 'Category J'),
(61, 'Category K'),
(62, 'Category L'),
(63, 'Category M'),
(64, 'Category N'),
(65, 'Category O'),
(66, 'Category P'),
(67, 'Category Q'),
(68, 'Category R'),
(69, 'Category S'),
(70, 'Category T'),
(71, 'Category U'),
(72, 'Category V'),
(73, 'Category W'),
(74, 'Category X'),
(75, 'Category Y'),
(76, 'Category Z'),
(77, 'Category ['),
(78, 'Category \\'),
(79, 'Category ]'),
(80, 'Category ^'),
(81, 'Category _'),
(82, 'Category `'),
(83, 'Category a'),
(84, 'Category b'),
(85, 'Category c'),
(86, 'Category d'),
(87, 'Category e'),
(88, 'Category f'),
(89, 'Category g'),
(90, 'Category h'),
(91, 'Category i'),
(92, 'Category j'),
(93, 'Category k'),
(94, 'Category l'),
(95, 'Category m'),
(96, 'Category n'),
(97, 'Category o'),
(98, 'Category p'),
(99, 'Category q'),
(100, 'Category r');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `name`, `email`, `location`) VALUES
(1, 'Customer 1', 'customer1@example.com', 'Location 56'),
(2, 'Customer 2', 'customer2@example.com', 'Location 63'),
(3, 'Customer 3', 'customer3@example.com', 'Location 46'),
(4, 'Customer 4', 'customer4@example.com', 'Location 41'),
(5, 'Customer 5', 'customer5@example.com', 'Location 66'),
(6, 'Customer 6', 'customer6@example.com', 'Location 8'),
(7, 'Customer 7', 'customer7@example.com', 'Location 41'),
(8, 'Customer 8', 'customer8@example.com', 'Location 80'),
(9, 'Customer 9', 'customer9@example.com', 'Location 75'),
(10, 'Customer 10', 'customer10@example.com', 'Location 35'),
(11, 'Customer 11', 'customer11@example.com', 'Location 50'),
(12, 'Customer 12', 'customer12@example.com', 'Location 43'),
(13, 'Customer 13', 'customer13@example.com', 'Location 67'),
(14, 'Customer 14', 'customer14@example.com', 'Location 3'),
(15, 'Customer 15', 'customer15@example.com', 'Location 12'),
(16, 'Customer 16', 'customer16@example.com', 'Location 54'),
(17, 'Customer 17', 'customer17@example.com', 'Location 32'),
(18, 'Customer 18', 'customer18@example.com', 'Location 98'),
(19, 'Customer 19', 'customer19@example.com', 'Location 95'),
(20, 'Customer 20', 'customer20@example.com', 'Location 79'),
(21, 'Customer 21', 'customer21@example.com', 'Location 9'),
(22, 'Customer 22', 'customer22@example.com', 'Location 8'),
(23, 'Customer 23', 'customer23@example.com', 'Location 11'),
(24, 'Customer 24', 'customer24@example.com', 'Location 33'),
(25, 'Customer 25', 'customer25@example.com', 'Location 29'),
(26, 'Customer 26', 'customer26@example.com', 'Location 48'),
(27, 'Customer 27', 'customer27@example.com', 'Location 51'),
(28, 'Customer 28', 'customer28@example.com', 'Location 11'),
(29, 'Customer 29', 'customer29@example.com', 'Location 2'),
(30, 'Customer 30', 'customer30@example.com', 'Location 78'),
(31, 'Customer 31', 'customer31@example.com', 'Location 80'),
(32, 'Customer 32', 'customer32@example.com', 'Location 67'),
(33, 'Customer 33', 'customer33@example.com', 'Location 96'),
(34, 'Customer 34', 'customer34@example.com', 'Location 76'),
(35, 'Customer 35', 'customer35@example.com', 'Location 92'),
(36, 'Customer 36', 'customer36@example.com', 'Location 34'),
(37, 'Customer 37', 'customer37@example.com', 'Location 90'),
(38, 'Customer 38', 'customer38@example.com', 'Location 51'),
(39, 'Customer 39', 'customer39@example.com', 'Location 82'),
(40, 'Customer 40', 'customer40@example.com', 'Location 56'),
(41, 'Customer 41', 'customer41@example.com', 'Location 33'),
(42, 'Customer 42', 'customer42@example.com', 'Location 96'),
(43, 'Customer 43', 'customer43@example.com', 'Location 83'),
(44, 'Customer 44', 'customer44@example.com', 'Location 27'),
(45, 'Customer 45', 'customer45@example.com', 'Location 85'),
(46, 'Customer 46', 'customer46@example.com', 'Location 44'),
(47, 'Customer 47', 'customer47@example.com', 'Location 65'),
(48, 'Customer 48', 'customer48@example.com', 'Location 94'),
(49, 'Customer 49', 'customer49@example.com', 'Location 71'),
(50, 'Customer 50', 'customer50@example.com', 'Location 75');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `customer_ID`, `order_date`, `total_amount`) VALUES
(1, 5, '2023-04-07 10:30:36', 687),
(2, 4, '2023-02-27 10:30:36', 385),
(3, 4, '2022-12-28 10:30:36', 132),
(4, 4, '2023-10-05 10:30:36', 37),
(5, 5, '2022-12-04 10:30:36', 506),
(6, 5, '2023-02-02 10:30:36', 273),
(7, 4, '2023-10-04 10:30:36', 633),
(8, 8, '2022-12-16 10:30:36', 556),
(9, 8, '2023-09-28 10:30:36', 868),
(10, 8, '2023-10-30 10:30:36', 482),
(11, 5, '2023-06-28 10:30:36', 349),
(12, 6, '2023-03-08 10:30:36', 281),
(13, 12, '2023-06-10 10:30:36', 195),
(14, 12, '2023-02-05 10:30:36', 167),
(15, 5, '2023-04-06 10:30:36', 420),
(16, 6, '2023-07-02 10:30:36', 473),
(17, 16, '2023-07-10 10:30:36', 203),
(18, 2, '2023-10-21 10:30:37', 603),
(19, 6, '2022-12-17 10:30:37', 630),
(20, 11, '2023-05-13 10:30:37', 526),
(21, 12, '2023-09-01 10:30:37', 320),
(22, 13, '2023-10-14 10:30:37', 344),
(23, 12, '2023-04-24 10:30:37', 652),
(24, 24, '2023-03-13 10:30:37', 294),
(25, 25, '2023-05-01 10:30:37', 704),
(26, 26, '2022-11-17 10:30:37', 737),
(27, 27, '2023-01-27 10:30:37', 663),
(28, 28, '2022-11-10 10:30:37', 956),
(29, 29, '2023-01-13 10:30:37', 190),
(30, 30, '2023-05-03 10:30:37', 994),
(31, 31, '2023-06-01 10:30:37', 175),
(32, 32, '2023-04-08 10:30:37', 375),
(33, 33, '2023-09-18 10:30:37', 542),
(34, 34, '2023-07-16 10:30:37', 917),
(35, 35, '2023-03-10 10:30:37', 550),
(36, 36, '2023-01-29 10:30:37', 191),
(37, 37, '2023-03-13 10:30:37', 681),
(38, 38, '2023-05-24 10:30:37', 219),
(39, 39, '2023-02-10 10:30:37', 22),
(40, 40, '2022-12-11 10:30:37', 453),
(41, 41, '2023-04-19 10:30:37', 394),
(42, 42, '2023-07-13 10:30:37', 401),
(43, 43, '2023-10-17 10:30:37', 72),
(44, 44, '2023-08-26 10:30:37', 761),
(45, 45, '2023-08-18 10:30:37', 810),
(46, 46, '2023-06-16 10:30:37', 525),
(47, 47, '2023-05-25 10:30:37', 683),
(48, 48, '2023-10-16 10:30:37', 241),
(49, 49, '2023-10-26 10:30:37', 425),
(50, 50, '2023-10-24 10:30:37', 905);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL,
  `product_ID` int(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_ID`, `order_ID`, `product_ID`, `quantity`, `unit_price`) VALUES
(1, 1, 25, 5, 37),
(2, 2, 25, 6, 73),
(3, 3, 6, 10, 53),
(4, 4, 4, 9, 47),
(5, 5, 5, 9, 4),
(6, 6, 6, 6, 47),
(7, 7, 7, 8, 57),
(8, 8, 8, 5, 52),
(9, 9, 9, 3, 64),
(10, 10, 10, 5, 55),
(11, 11, 11, 3, 56),
(12, 12, 12, 1, 67),
(13, 13, 13, 2, 72),
(14, 14, 14, 2, 48),
(15, 15, 15, 1, 72),
(16, 16, 16, 5, 26),
(17, 17, 17, 9, 39),
(18, 18, 18, 5, 9),
(19, 19, 19, 1, 14),
(20, 20, 20, 5, 74),
(21, 21, 21, 5, 81),
(22, 22, 22, 9, 65),
(23, 23, 23, 8, 98),
(24, 24, 24, 6, 66),
(25, 25, 25, 8, 72),
(26, 26, 26, 4, 71),
(27, 27, 27, 5, 95),
(28, 28, 28, 5, 53),
(29, 29, 29, 3, 46),
(30, 30, 30, 7, 88),
(31, 31, 31, 5, 53),
(32, 32, 32, 4, 16),
(33, 33, 33, 8, 23),
(34, 34, 34, 9, 80),
(35, 35, 35, 3, 9),
(36, 36, 36, 6, 51),
(37, 37, 37, 9, 89),
(38, 38, 38, 8, 21),
(39, 39, 39, 7, 88),
(40, 40, 40, 3, 86),
(41, 41, 41, 4, 42),
(42, 42, 42, 9, 21),
(43, 43, 43, 4, 12),
(44, 44, 44, 6, 28),
(45, 45, 45, 8, 15),
(46, 46, 46, 4, 25),
(47, 47, 47, 3, 41),
(48, 48, 48, 4, 43),
(49, 49, 49, 2, 51),
(50, 50, 50, 1, 82);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_ID` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_ID`, `name`, `description`, `category_ID`, `price`) VALUES
(1, 'Product 1', 'Description for product 1', 22, 90),
(2, 'Product 2', 'Description for product 2', 21, 100),
(3, 'Product 3', 'Description for product 3', 5, 31),
(4, 'Product 4', 'Description for product 4', 6, 54),
(5, 'Product 5', 'Description for product 5', 6, 75),
(6, 'Product 6', 'Description for product 6', 21, 15),
(7, 'Product 7', 'Description for product 7', 15, 49),
(8, 'Product 8', 'Description for product 8', 2, 1),
(9, 'Product 9', 'Description for product 9', 2, 57),
(10, 'Product 10', 'Description for product 10', 24, 83),
(11, 'Product 11', 'Description for product 11', 12, 41),
(12, 'Product 12', 'Description for product 12', 16, 55),
(13, 'Product 13', 'Description for product 13', 12, 52),
(14, 'Product 14', 'Description for product 14', 5, 96),
(15, 'Product 15', 'Description for product 15', 6, 23),
(16, 'Product 16', 'Description for product 16', 24, 27),
(17, 'Product 17', 'Description for product 17', 21, 67),
(18, 'Product 18', 'Description for product 18', 22, 52),
(19, 'Product 19', 'Description for product 19', 12, 57),
(20, 'Product 20', 'Description for product 20', 5, 28),
(21, 'Product 21', 'Description for product 21', 6, 70),
(22, 'Product 22', 'Description for product 22', 21, 64),
(23, 'Product 23', 'Description for product 23', 25, 9),
(24, 'Product 24', 'Description for product 24', 25, 52),
(25, 'Product 25', 'Description for product 25', 12, 35),
(26, 'Product 26', 'Description for product 26', 0, 16),
(27, 'Product 27', 'Description for product 27', 0, 77),
(28, 'Product 28', 'Description for product 28', 0, 33),
(29, 'Product 29', 'Description for product 29', 0, 37),
(30, 'Product 30', 'Description for product 30', 0, 84),
(31, 'Product 31', 'Description for product 31', 0, 8),
(32, 'Product 32', 'Description for product 32', 0, 87),
(33, 'Product 33', 'Description for product 33', 0, 12),
(34, 'Product 34', 'Description for product 34', 0, 98),
(35, 'Product 35', 'Description for product 35', 0, 54),
(36, 'Product 36', 'Description for product 36', 0, 76),
(37, 'Product 37', 'Description for product 37', 0, 19),
(38, 'Product 38', 'Description for product 38', 0, 65),
(39, 'Product 39', 'Description for product 39', 0, 68),
(40, 'Product 40', 'Description for product 40', 0, 42),
(41, 'Product 41', 'Description for product 41', 0, 8),
(42, 'Product 42', 'Description for product 42', 0, 12),
(43, 'Product 43', 'Description for product 43', 0, 36),
(44, 'Product 44', 'Description for product 44', 0, 45),
(45, 'Product 45', 'Description for product 45', 0, 15),
(46, 'Product 46', 'Description for product 46', 0, 41),
(47, 'Product 47', 'Description for product 47', 0, 61),
(48, 'Product 48', 'Description for product 48', 0, 78),
(49, 'Product 49', 'Description for product 49', 0, 10),
(50, 'Product 50', 'Description for product 50', 0, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
