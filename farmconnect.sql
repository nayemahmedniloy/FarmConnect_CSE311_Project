-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2025 at 09:03 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `Farmer_ID` bigint NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Registration_Date` date NOT NULL,
  `Approved_By` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`Farmer_ID`, `Name`, `Contact`, `Location`, `Registration_Date`, `Approved_By`) VALUES
(19900000000, 'Abdul Karim', '01816850293', 'Bogura', '2025-02-20', 19800000003),
(19900000001, 'Rokeya Begum', '01816735458', 'Rajshahi', '2025-02-19', 19710000001),
(19900000002, 'Shafiqur Rahman', '01811449328', 'Cumilla', '2025-02-28', 19710000001),
(19900000003, 'Jashim Uddin', '01813187294', 'Chattogram', '2025-02-25', 19730000002),
(19900000004, 'Nurul Islam', '01812723638', 'Sylhet', '2025-02-04', 19710000001),
(19900000005, 'Fatema Khatun', '01817559311', 'Barisal', '2025-02-18', 19710000001),
(19900000006, 'Bashir Ahmed', '01818122956', 'Mymensingh', '2025-02-07', 19730000002),
(19900000007, 'Salma Akter', '01815449818', 'Dinajpur', '2025-02-20', 19710000001),
(19900000008, 'Jannatul Ferdous', '01811989567', 'Kurigram', '2025-02-06', 19800000003),
(19900000009, 'Md. Harun', '01815616203', 'Tangail', '2025-02-10', 19800000003);

-- --------------------------------------------------------

--
-- Table structure for table `government`
--

CREATE TABLE `government` (
  `Gov_ID` bigint NOT NULL,
  `Official_Name` varchar(100) NOT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `government`
--

INSERT INTO `government` (`Gov_ID`, `Official_Name`, `Department`, `Role`, `Contact`) VALUES
(19710000001, 'Nayem Ahmed', 'Agri Regulation', 'Admin', '01710000000'),
(19730000002, 'Saif Sarwar', 'Supply Oversight', 'Admin', '01310000000'),
(19800000003, 'Rulia Eti', 'Vendor Affairs', 'Admin', '01710000009');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_ID` int NOT NULL,
  `Vendor_ID` bigint NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity_Ordered` int NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  `Tax_Amount` decimal(10,2) NOT NULL,
  `Order_Date` date NOT NULL,
  `Pickup_Location` varchar(100) DEFAULT NULL,
  `Order_Status` enum('Pending','Ready','Completed') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_ID`, `Vendor_ID`, `Product_ID`, `Quantity_Ordered`, `Total_Price`, `Tax_Amount`, `Order_Date`, `Pickup_Location`, `Order_Status`) VALUES
(1, 19850000007, 3, 21, 1578.29, 157.83, '2025-03-19', 'Cumilla', 'Pending'),
(2, 19850000005, 9, 69, 4939.17, 493.92, '2025-03-19', 'Sylhet', 'Pending'),
(3, 19850000006, 3, 22, 918.97, 91.90, '2025-03-11', 'Chattogram', 'Ready'),
(4, 19850000006, 10, 71, 1684.88, 168.49, '2025-03-15', 'Tangail', 'Pending'),
(5, 19850000006, 7, 54, 2469.08, 246.91, '2025-03-28', 'Kurigram', 'Pending'),
(6, 19850000007, 8, 43, 3202.63, 320.26, '2025-03-26', 'Dinajpur', 'Pending'),
(7, 19850000003, 8, 11, 405.23, 40.52, '2025-03-03', 'Chattogram', 'Pending'),
(8, 19850000008, 9, 80, 3769.93, 376.99, '2025-03-18', 'Tangail', 'Pending'),
(9, 19850000007, 7, 68, 3025.86, 302.59, '2025-03-17', 'Cumilla', 'Pending'),
(10, 19850000008, 8, 77, 3638.90, 363.89, '2025-03-27', 'Chattogram', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int NOT NULL,
  `Farmer_ID` bigint NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Quantity_Available` int NOT NULL,
  `Price_Per_Unit` decimal(10,2) NOT NULL,
  `Listing_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Farmer_ID`, `Product_Name`, `Category`, `Quantity_Available`, `Price_Per_Unit`, `Listing_Date`) VALUES
(1, 19900000004, 'Potato', 'Grains', 117, 31.08, '2025-02-27'),
(2, 19900000006, 'Rice', 'Root Crops', 309, 47.48, '2025-02-08'),
(3, 19900000002, 'Wheat', 'Spices', 488, 49.13, '2025-02-10'),
(4, 19900000002, 'Onion', 'Grains', 341, 97.95, '2025-02-23'),
(5, 19900000001, 'Garlic', 'Vegetables', 205, 76.25, '2025-02-02'),
(6, 19900000007, 'Tomato', 'Vegetables', 494, 89.95, '2025-02-13'),
(7, 19900000008, 'Chili', 'Vegetables', 250, 71.48, '2025-02-06'),
(8, 19900000003, 'Pumpkin', 'Grains', 450, 81.49, '2025-02-14'),
(9, 19900000003, 'Brinjal', 'Root Crops', 450, 72.15, '2025-02-28'),
(10, 19900000001, 'Cucumber', 'Spices', 250, 54.09, '2025-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_log`
--

CREATE TABLE `transaction_log` (
  `Transaction_ID` int NOT NULL,
  `Order_ID` int NOT NULL,
  `Vendor_ID` bigint NOT NULL,
  `Tax_Collected` decimal(10,2) NOT NULL,
  `Transaction_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction_log`
--

INSERT INTO `transaction_log` (`Transaction_ID`, `Order_ID`, `Vendor_ID`, `Tax_Collected`, `Transaction_Date`) VALUES
(1, 1, 19850000001, 470.02, '2025-03-18'),
(2, 2, 19850000004, 284.96, '2025-03-08'),
(3, 3, 19850000001, 223.99, '2025-03-22'),
(4, 4, 19850000004, 313.93, '2025-03-24'),
(5, 5, 19850000001, 231.42, '2025-03-15'),
(6, 6, 19850000001, 411.67, '2025-03-26'),
(7, 7, 19850000004, 484.97, '2025-03-06'),
(8, 8, 19850000007, 300.97, '2025-03-22'),
(9, 9, 19850000005, 379.60, '2025-03-18'),
(10, 10, 19850000006, 456.23, '2025-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `Vendor_ID` bigint NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Max_Purchase_Limit` int NOT NULL,
  `Approved_By` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`Vendor_ID`, `Name`, `Contact`, `Location`, `Category`, `Max_Purchase_Limit`, `Approved_By`) VALUES
(19850000000, 'Anwar Traders', '01616458481', 'Bogura', 'Vegetables', 1875, 19800000003),
(19850000001, 'Mithila Distributors', '01618928725', 'Rajshahi', 'Root Crops', 1650, 19730000002),
(19850000002, 'Karim Enterprise', '01615292966', 'Cumilla', 'Spices', 1818, 19800000003),
(19850000003, 'Tania Agro', '01613433103', 'Chattogram', 'Vegetables', 1554, 19710000001),
(19850000004, 'Sabbir Supply', '01616214745', 'Sylhet', 'Spices', 1544, 19730000002),
(19850000005, 'Bismillah Vendors', '01619080420', 'Barisal', 'Spices', 1487, 19800000003),
(19850000006, 'Greenline Suppliers', '01617925404', 'Mymensingh', 'Vegetables', 577, 19800000003),
(19850000007, 'Shapla Traders', '01617125919', 'Dinajpur', 'Vegetables', 1271, 19730000002),
(19850000008, 'AgroMart', '01618870557', 'Kurigram', 'Vegetables', 1364, 19710000001),
(19850000009, 'Haque Brothers', '01618216990', 'Tangail', 'Spices', 1735, 19800000003);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`Farmer_ID`),
  ADD KEY `Approved_By` (`Approved_By`);

--
-- Indexes for table `government`
--
ALTER TABLE `government`
  ADD PRIMARY KEY (`Gov_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Vendor_ID` (`Vendor_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Farmer_ID` (`Farmer_ID`);

--
-- Indexes for table `transaction_log`
--
ALTER TABLE `transaction_log`
  ADD PRIMARY KEY (`Transaction_ID`),
  ADD KEY `Order_ID` (`Order_ID`),
  ADD KEY `Vendor_ID` (`Vendor_ID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`Vendor_ID`),
  ADD KEY `Approved_By` (`Approved_By`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Order_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_log`
--
ALTER TABLE `transaction_log`
  MODIFY `Transaction_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `farmer`
--
ALTER TABLE `farmer`
  ADD CONSTRAINT `farmer_ibfk_1` FOREIGN KEY (`Approved_By`) REFERENCES `government` (`Gov_ID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Vendor_ID`) REFERENCES `vendor` (`Vendor_ID`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Farmer_ID`) REFERENCES `farmer` (`Farmer_ID`);

--
-- Constraints for table `transaction_log`
--
ALTER TABLE `transaction_log`
  ADD CONSTRAINT `transaction_log_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`),
  ADD CONSTRAINT `transaction_log_ibfk_2` FOREIGN KEY (`Vendor_ID`) REFERENCES `vendor` (`Vendor_ID`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`Approved_By`) REFERENCES `government` (`Gov_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
