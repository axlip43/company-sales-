-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 07:52 PM
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
-- Database: `company_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `city`) VALUES
(1, 'Ahmed El Fassi', 'Casablanca'),
(2, 'Asma Achibane', 'Rabat'),
(3, 'Youssef Idrissi', 'Marrakech'),
(4, 'Leila Bensouda', 'Fes'),
(5, 'Omar El Amrani', 'Tangier'),
(6, 'Salma Oubaha', 'Agadir'),
(7, 'Rachid Mouline', 'Casablanca'),
(8, 'Nadia Chafik', 'Rabat'),
(9, 'Karim Tazi', 'Meknes'),
(10, 'Hanan Bouzid', 'Oujda'),
(11, 'Mehdi El Ghazali', 'Tangier'),
(12, 'Fatima Zahra Ouali', 'Casablanca'),
(13, 'Samir Benjelloun', 'Fes'),
(14, 'Imane El Amrani', 'Marrakech'),
(15, 'Hicham Idrissi', 'Rabat'),
(16, 'Zineb Chafik', 'Agadir'),
(17, 'Yassine Tazi', 'Tangier'),
(18, 'Khadija Bensouda', 'Oujda'),
(19, 'Mohamed El Fassi', 'Casablanca'),
(20, 'Amina Hakam', 'Meknes'),
(21, 'Reda Mouline', 'Fes'),
(22, 'Salma Benjelloun', 'Rabat'),
(23, 'Anas Idrissi', 'Marrakech'),
(24, 'Sara El Amrani', 'Agadir'),
(25, 'Youssef Tazi', 'Tangier'),
(26, 'Imane Bouzid', 'Casablanca'),
(27, 'Omar Chafik', 'Meknes'),
(28, 'Hanan El Ghazali', 'Fes'),
(29, 'Mehdi Benali', 'Rabat'),
(30, 'Fatima Zahra Idrissi', 'Marrakech');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`) VALUES
(1, 'Ahmed Benali', 'Sales'),
(2, 'Sara El Ghazali', 'Marketing'),
(3, 'Youssef Idrissi', 'IT'),
(4, 'Leila Bensouda', 'HR'),
(5, 'Omar El Fassi', 'Finance'),
(6, 'Salma Hakam', 'IT'),
(7, 'Rachid Mouline', 'Sales'),
(8, 'Nadia Chafik', 'Marketing'),
(9, 'Karim Tazi', 'Finance'),
(10, 'Hanan Bouzid', 'HR'),
(11, 'Mehdi El Amrani', 'IT'),
(12, 'Fatima Zahra Ouali', 'Transport'),
(13, 'Samir Benjelloun', 'Transport');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(30) DEFAULT NULL,
  `employee_id` int(30) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `employee_id`, `order_date`) VALUES
(1, 5, 3, '2026-01-02'),
(2, 12, 7, '2026-01-03'),
(3, 8, 1, '2026-01-04'),
(4, 20, 9, '2026-01-05'),
(5, 3, 2, '2026-01-06'),
(6, 15, 6, '2026-01-07'),
(7, 27, 4, '2026-01-08'),
(8, 10, 5, '2026-01-09'),
(9, 1, 11, '2026-01-10'),
(10, 18, 12, '2026-01-11'),
(11, 7, 8, '2026-01-12'),
(12, 25, 10, '2026-01-13'),
(13, 2, 13, '2026-01-14'),
(14, 22, 3, '2026-01-15'),
(15, 30, 1, '2026-01-16'),
(16, 6, 2, '2026-01-17'),
(17, 14, 4, '2026-01-18'),
(18, 19, 5, '2026-01-19'),
(19, 11, 6, '2026-01-20'),
(20, 28, 7, '2026-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `product_quantity`) VALUES
(1, 3, 2),
(1, 7, 1),
(2, 5, 4),
(2, 12, 3),
(3, 1, 1),
(3, 9, 2),
(4, 4, 1),
(4, 8, 5),
(5, 2, 1),
(5, 10, 2),
(6, 6, 3),
(6, 14, 1),
(7, 3, 2),
(7, 11, 1),
(8, 7, 4),
(8, 15, 2),
(9, 1, 1),
(9, 12, 2),
(10, 5, 3),
(10, 9, 1),
(11, 2, 2),
(11, 13, 1),
(12, 4, 3),
(12, 8, 2),
(13, 6, 1),
(13, 14, 4),
(14, 3, 2),
(14, 10, 1),
(15, 1, 5),
(15, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `product_category` varchar(30) DEFAULT NULL,
  `product_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_price`) VALUES
(1, 'Laptop Lenovo', 'Electronics', 7500),
(2, 'Smartphone Samsung', 'Electronics', 5000),
(3, 'Headphones Sony', 'Electronics', 800),
(4, 'Office Chair', 'Furniture', 1200),
(5, 'Dining Table', 'Furniture', 3000),
(6, 'T-shirt Cotton', 'Clothing', 200),
(7, 'Jeans Denim', 'Clothing', 450),
(8, 'Sneakers Nike', 'Footwear', 700),
(9, 'Sandals Adidas', 'Footwear', 350),
(10, 'Blender Philips', 'Appliances', 600),
(11, 'Microwave LG', 'Appliances', 1500),
(12, 'Notebook A5', 'Stationery', 50),
(13, 'Pen Gel', 'Stationery', 20.5),
(14, 'Backpack', 'Accessories', 400),
(15, 'Watch Casio', 'Accessories', 900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `emp_fk` (`employee_id`),
  ADD KEY `cus_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `cus_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `emp_fk` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
