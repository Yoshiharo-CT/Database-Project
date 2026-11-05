-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2026 at 02:56 PM
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
-- Database: `study_hub_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `audit_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `actor_label` varchar(120) DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `record_id` int(10) UNSIGNED DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`audit_id`, `user_id`, `actor_label`, `action`, `table_name`, `record_id`, `details`, `created_at`) VALUES
(1, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-09-30 23:08:11'),
(2, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-09-30 23:43:29'),
(3, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-01 08:13:58'),
(4, 1, 'Juan Dela Cruz (customer)', 'login', 'users', 1, 'Customer login: Juan Dela Cruz', '2026-10-01 08:23:43'),
(5, 1, 'Juan Dela Cruz (customer)', 'login', 'users', 1, 'Customer login: Juan Dela Cruz', '2026-10-01 08:23:46'),
(6, 5, 'Carlo Mendoza (staff)', 'login', 'users', 5, 'Staff login: Carlo Mendoza', '2026-10-01 08:24:01'),
(7, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-01 08:24:21'),
(8, 8, 'Rica Fernandez (staff)', 'login', 'users', 8, 'Staff login: Rica Fernandez', '2026-10-01 08:24:57'),
(9, 8, 'Rica Fernandez (staff)', 'update', 'payments', 4, 'Payment verified', '2026-10-01 08:25:39'),
(10, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-03 11:54:26'),
(11, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-08 09:31:20'),
(12, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-08 09:46:23'),
(13, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-08 09:48:25'),
(14, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 11:23:30'),
(15, 4, 'Ana Garcia (customer)', 'login', 'users', 4, 'Customer login: Ana Garcia', '2026-10-13 11:24:09'),
(16, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 11:36:55'),
(17, 4, 'Ana Garcia (customer)', 'login', 'users', 4, 'Customer login: Ana Garcia', '2026-10-13 11:37:29'),
(18, NULL, 'system', 'register', 'users', 10, 'Customer registered: John Smith', '2026-10-13 11:38:03'),
(19, 10, 'John Smith (customer)', 'login', 'users', 10, 'Customer login: John Smith', '2026-10-13 11:38:31'),
(20, 10, 'John Smith (customer)', 'login', 'users', 10, 'Customer login: John Smith', '2026-10-13 11:40:10'),
(21, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 11:48:09'),
(22, 10, 'John Smith (customer)', 'login', 'users', 10, 'Customer login: John Smith', '2026-10-13 13:26:44'),
(23, 4, 'Ana Garcia (customer)', 'login', 'users', 4, 'Customer login: Ana Garcia', '2026-10-13 13:27:32'),
(24, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 13:27:54'),
(25, 5, 'Carlo Mendoza (staff)', 'login', 'users', 5, 'Staff login: Carlo Mendoza', '2026-10-13 13:28:35'),
(26, 8, 'Rica Fernandez (staff)', 'login', 'users', 8, 'Staff login: Rica Fernandez', '2026-10-13 13:29:18'),
(27, NULL, 'system', 'register', 'users', 11, 'Customer registered: Caryl Tabigne', '2026-10-13 13:30:14'),
(28, 11, 'Caryl Tabigne (customer)', 'login', 'users', 11, 'Customer login: Caryl Tabigne', '2026-10-13 13:30:29'),
(29, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 14:52:22'),
(30, 10, 'John Smith (customer)', 'login', 'users', 10, 'Customer login: John Smith', '2026-10-13 14:55:53'),
(31, 10, 'John Smith (customer)', 'create', 'reservations', 5, 'Reservation created (pending)', '2026-10-13 14:56:34'),
(32, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 14:57:34'),
(33, 9, 'System Admin (staff)', 'update', 'reservations', 5, 'Reservation confirmed', '2026-10-13 14:57:46'),
(34, NULL, 'system', 'register', 'users', 12, 'Customer registered: Scott Panelo', '2026-10-13 14:58:43'),
(35, 12, 'Scott Panelo (customer)', 'login', 'users', 12, 'Customer login: Scott Panelo', '2026-10-13 14:59:06'),
(36, 12, 'Scott Panelo (customer)', 'create', 'reservations', 6, 'Reservation created (pending)', '2026-10-13 14:59:30'),
(37, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 14:59:44'),
(38, 9, 'System Admin (staff)', 'update', 'reservations', 6, 'Reservation confirmed', '2026-10-13 14:59:57'),
(39, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 15:05:44'),
(40, 9, 'System Admin (staff)', 'create', 'orders', 5, 'Order placed, total ₱20', '2026-10-13 15:10:40'),
(41, 9, 'System Admin (staff)', 'create', 'billing_transactions', 5, 'Billed ₱20 (subtotal ₱20, discount ₱0)', '2026-10-13 15:11:02'),
(42, 9, 'System Admin (staff)', 'create', 'orders', 6, 'Order placed, total ₱70', '2026-10-13 15:11:21'),
(43, 9, 'System Admin (staff)', 'create', 'billing_transactions', 6, 'Billed ₱20 (subtotal ₱70, discount ₱50)', '2026-10-13 15:11:50'),
(44, 9, 'System Admin (staff)', 'create', 'payments', 5, 'Recorded payment ₱20 for transaction #5', '2026-10-13 15:12:26'),
(45, 12, 'Scott Panelo (customer)', 'login', 'users', 12, 'Customer login: Scott Panelo', '2026-10-13 15:15:38'),
(46, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 15:17:52'),
(47, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 15:18:43'),
(48, 4, 'Ana Garcia (customer)', 'login', 'users', 4, 'Customer login: Ana Garcia', '2026-10-13 15:18:56'),
(49, 5, 'Carlo Mendoza (staff)', 'login', 'users', 5, 'Staff login: Carlo Mendoza', '2026-10-13 15:19:29'),
(50, 5, 'Carlo Mendoza (staff)', 'create', 'customers', 8, 'Added customer Steven Ramos', '2026-10-13 15:21:14'),
(51, 5, 'Carlo Mendoza (staff)', 'create', 'walkin_queue', 1, 'Added to walk-in queue', '2026-10-13 15:21:31'),
(52, 5, 'Carlo Mendoza (staff)', 'create', 'space_sessions', 5, 'Checked in customer #8 to space #1', '2026-10-13 15:21:54'),
(53, 5, 'Carlo Mendoza (staff)', 'update', 'walkin_queue', 1, 'Served from queue into space #1', '2026-10-13 15:22:21'),
(54, 5, 'Carlo Mendoza (staff)', 'update', 'space_sessions', 5, 'Checked out, study_fee=0', '2026-10-13 15:22:21'),
(55, 8, 'Rica Fernandez (staff)', 'login', 'users', 8, 'Staff login: Rica Fernandez', '2026-10-13 15:22:40'),
(56, 8, 'Rica Fernandez (staff)', 'create', 'orders', 7, 'Order placed, total ₱20', '2026-10-13 15:23:39'),
(57, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 15:24:03'),
(58, 9, 'System Admin (staff)', 'create', 'billing_transactions', 7, 'Billed ₱20 (subtotal ₱20, discount ₱0)', '2026-10-13 15:24:58'),
(59, 9, 'System Admin (staff)', 'create', 'payments', 6, 'Recorded payment ₱20 for transaction #7', '2026-10-13 15:25:11'),
(60, 9, 'System Admin (staff)', 'update', 'payments', 6, 'Payment verified', '2026-10-13 15:25:18'),
(61, 9, 'System Admin (staff)', 'update', 'payments', 5, 'Payment verified', '2026-10-13 15:25:23'),
(62, 9, 'System Admin (staff)', 'update', 'payments', 3, 'Payment verified', '2026-10-13 15:26:03'),
(63, 9, 'System Admin (staff)', 'create', 'payments', 7, 'Recorded payment ₱65 for transaction #3', '2026-10-13 15:26:33'),
(64, 9, 'System Admin (staff)', 'update', 'payments', 7, 'Payment verified', '2026-10-13 15:26:34'),
(65, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 17:39:02'),
(66, 10, 'John Smith (customer)', 'login', 'users', 10, 'Customer login: John Smith', '2026-10-13 17:39:39'),
(67, 9, 'System Admin (staff)', 'login', 'users', 9, 'Staff login: System Admin', '2026-10-13 17:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `billing_transactions`
--

CREATE TABLE `billing_transactions` (
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_date` datetime NOT NULL DEFAULT current_timestamp(),
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` enum('pending','partially_paid','paid','cancelled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing_transactions`
--

INSERT INTO `billing_transactions` (`transaction_id`, `customer_id`, `reservation_id`, `session_id`, `order_id`, `promotion_id`, `transaction_date`, `subtotal`, `discount_amount`, `total_amount`, `status`) VALUES
(1, 1, 1, 1, 1, NULL, '2026-10-01 12:00:00', 105.00, 0.00, 105.00, 'paid'),
(2, 2, 2, 2, 2, NULL, '2026-10-01 15:00:00', 130.00, 0.00, 130.00, 'paid'),
(3, 3, NULL, 3, 3, NULL, '2026-09-25 12:15:00', 165.00, 0.00, 165.00, 'paid'),
(4, 4, 4, 4, 4, NULL, '2026-10-03 18:00:00', 170.00, 0.00, 170.00, 'pending'),
(5, 7, NULL, NULL, 5, NULL, '2026-10-13 15:11:02', 20.00, 0.00, 20.00, 'paid'),
(6, 6, NULL, NULL, 6, 2, '2026-10-13 15:11:50', 70.00, 50.00, 20.00, 'pending'),
(7, 8, NULL, 5, 7, NULL, '2026-10-13 15:24:58', 20.00, 0.00, 20.00, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `user_id`, `first_name`, `last_name`, `phone_number`, `email`) VALUES
(1, 1, 'Juan', 'Dela Cruz', '09171234567', 'juan.delacruz@email.com'),
(2, 2, 'Maria', 'Santos', '09181234567', 'maria.santos@email.com'),
(3, 3, 'Pedro', 'Reyes', '09191234567', 'pedro.reyes@email.com'),
(4, 4, 'Ana', 'Garcia', '09201234567', 'ana.garcia@email.com'),
(5, 10, 'John', 'Smith', '091231241231', 'johnsmith@gmail.com'),
(6, 11, 'Caryl', 'Tabigne', '09123123131', 'caryltabigne@gmail.com'),
(7, 12, 'Scott', 'Panelo', '09123123123', 'tabignecaryl@gmail.com'),
(8, NULL, 'Steven', 'Ramos', '09123123124', 'stevenramos@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `recipient_type` enum('customer','staff') NOT NULL,
  `recipient_id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `recipient_type`, `recipient_id`, `message`, `is_read`, `created_at`) VALUES
(1, 'customer', 4, 'Your payment of ₱0.00 has been verified.', 0, '2026-10-01 08:25:39'),
(2, 'staff', 5, 'New reservation #5 is pending review.', 1, '2026-10-13 14:56:34'),
(3, 'staff', 1, 'New reservation #5 is pending review.', 0, '2026-10-13 14:56:34'),
(4, 'staff', 2, 'New reservation #5 is pending review.', 0, '2026-10-13 14:56:34'),
(5, 'staff', 3, 'New reservation #5 is pending review.', 0, '2026-10-13 14:56:34'),
(6, 'staff', 4, 'New reservation #5 is pending review.', 0, '2026-10-13 14:56:34'),
(7, 'customer', 5, 'Your reservation #5 has been confirmed.', 0, '2026-10-13 14:57:46'),
(8, 'staff', 5, 'New reservation #6 is pending review.', 1, '2026-10-13 14:59:30'),
(9, 'staff', 1, 'New reservation #6 is pending review.', 0, '2026-10-13 14:59:30'),
(10, 'staff', 2, 'New reservation #6 is pending review.', 0, '2026-10-13 14:59:30'),
(11, 'staff', 3, 'New reservation #6 is pending review.', 0, '2026-10-13 14:59:30'),
(12, 'staff', 4, 'New reservation #6 is pending review.', 0, '2026-10-13 14:59:30'),
(13, 'customer', 7, 'Your reservation #6 has been confirmed.', 0, '2026-10-13 14:59:57'),
(14, 'staff', 5, 'Transaction #5 (₱20) is ready for payment.', 0, '2026-10-13 15:11:02'),
(15, 'staff', 1, 'Transaction #5 (₱20) is ready for payment.', 0, '2026-10-13 15:11:02'),
(16, 'staff', 2, 'Transaction #5 (₱20) is ready for payment.', 0, '2026-10-13 15:11:02'),
(17, 'staff', 3, 'Transaction #5 (₱20) is ready for payment.', 0, '2026-10-13 15:11:02'),
(18, 'staff', 4, 'Transaction #5 (₱20) is ready for payment.', 0, '2026-10-13 15:11:02'),
(19, 'staff', 5, 'Transaction #6 (₱20) is ready for payment.', 0, '2026-10-13 15:11:50'),
(20, 'staff', 1, 'Transaction #6 (₱20) is ready for payment.', 0, '2026-10-13 15:11:50'),
(21, 'staff', 2, 'Transaction #6 (₱20) is ready for payment.', 0, '2026-10-13 15:11:50'),
(22, 'staff', 3, 'Transaction #6 (₱20) is ready for payment.', 0, '2026-10-13 15:11:50'),
(23, 'staff', 4, 'Transaction #6 (₱20) is ready for payment.', 0, '2026-10-13 15:11:50'),
(24, 'staff', 5, 'Payment #5 (₱20) for transaction #5 needs verification.', 0, '2026-10-13 15:12:26'),
(25, 'staff', 1, 'Payment #5 (₱20) for transaction #5 needs verification.', 0, '2026-10-13 15:12:26'),
(26, 'staff', 2, 'Payment #5 (₱20) for transaction #5 needs verification.', 0, '2026-10-13 15:12:26'),
(27, 'staff', 3, 'Payment #5 (₱20) for transaction #5 needs verification.', 0, '2026-10-13 15:12:26'),
(28, 'staff', 4, 'Payment #5 (₱20) for transaction #5 needs verification.', 0, '2026-10-13 15:12:26'),
(29, 'customer', 8, 'A space just opened up for you — please check in at the front desk.', 0, '2026-10-13 15:22:21'),
(30, 'staff', 5, 'Transaction #7 (₱20) is ready for payment.', 0, '2026-10-13 15:24:58'),
(31, 'staff', 1, 'Transaction #7 (₱20) is ready for payment.', 0, '2026-10-13 15:24:58'),
(32, 'staff', 2, 'Transaction #7 (₱20) is ready for payment.', 0, '2026-10-13 15:24:58'),
(33, 'staff', 3, 'Transaction #7 (₱20) is ready for payment.', 0, '2026-10-13 15:24:58'),
(34, 'staff', 4, 'Transaction #7 (₱20) is ready for payment.', 0, '2026-10-13 15:24:58'),
(35, 'staff', 5, 'Payment #6 (₱20) for transaction #7 needs verification.', 0, '2026-10-13 15:25:11'),
(36, 'staff', 1, 'Payment #6 (₱20) for transaction #7 needs verification.', 0, '2026-10-13 15:25:11'),
(37, 'staff', 2, 'Payment #6 (₱20) for transaction #7 needs verification.', 0, '2026-10-13 15:25:11'),
(38, 'staff', 3, 'Payment #6 (₱20) for transaction #7 needs verification.', 0, '2026-10-13 15:25:11'),
(39, 'staff', 4, 'Payment #6 (₱20) for transaction #7 needs verification.', 0, '2026-10-13 15:25:11'),
(40, 'customer', 8, 'Your payment of ₱20.00 has been verified.', 0, '2026-10-13 15:25:18'),
(41, 'customer', 7, 'Your payment of ₱20.00 has been verified.', 0, '2026-10-13 15:25:23'),
(42, 'customer', 3, 'Your payment of ₱100.00 has been verified.', 0, '2026-10-13 15:26:03'),
(43, 'staff', 5, 'Payment #7 (₱65) for transaction #3 needs verification.', 0, '2026-10-13 15:26:33'),
(44, 'staff', 1, 'Payment #7 (₱65) for transaction #3 needs verification.', 0, '2026-10-13 15:26:33'),
(45, 'staff', 2, 'Payment #7 (₱65) for transaction #3 needs verification.', 0, '2026-10-13 15:26:33'),
(46, 'staff', 3, 'Payment #7 (₱65) for transaction #3 needs verification.', 0, '2026-10-13 15:26:33'),
(47, 'staff', 4, 'Payment #7 (₱65) for transaction #3 needs verification.', 0, '2026-10-13 15:26:33'),
(48, 'customer', 3, 'Your payment of ₱65.00 has been verified.', 0, '2026-10-13 15:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `order_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `staff_id`, `session_id`, `order_datetime`, `total_amount`) VALUES
(1, 1, 2, 1, '2026-10-01 09:30:00', 60.00),
(2, 2, 3, 2, '2026-10-01 13:20:00', 70.00),
(3, 3, 2, 3, '2026-09-25 10:15:00', 85.00),
(4, 4, 3, 4, '2026-10-03 14:30:00', 65.00),
(5, 7, 1, NULL, '2026-10-13 15:10:40', 20.00),
(6, 6, 1, NULL, '2026-10-13 15:11:21', 70.00),
(7, 8, 4, 6, '2026-10-13 15:23:39', 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `subtotal`) VALUES
(1, 1, 1, 1, 50.00),
(2, 1, 3, 2, 10.00),
(3, 2, 2, 2, 40.00),
(4, 2, 4, 3, 30.00),
(5, 3, 3, 5, 25.00),
(6, 3, 5, 1, 60.00),
(7, 4, 4, 4, 40.00),
(8, 4, 6, 1, 25.00),
(9, 5, 2, 1, 20.00),
(10, 6, 2, 1, 20.00),
(11, 6, 1, 1, 50.00),
(12, 7, 2, 1, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `paper_sizes`
--

CREATE TABLE `paper_sizes` (
  `paper_size_id` int(10) UNSIGNED NOT NULL,
  `size_name` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paper_sizes`
--

INSERT INTO `paper_sizes` (`paper_size_id`, `size_name`, `is_active`) VALUES
(1, 'A4', 1),
(2, 'Letter', 1),
(3, 'Legal', 1),
(4, 'Short Bond', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `payment_status` enum('pending','verified','rejected','refunded') NOT NULL DEFAULT 'pending',
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `verified_by` int(10) UNSIGNED DEFAULT NULL,
  `amount_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` datetime NOT NULL DEFAULT current_timestamp(),
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `customer_id`, `transaction_id`, `reference_number`, `payment_status`, `payment_method_id`, `verified_by`, `amount_paid`, `payment_date`, `notes`) VALUES
(1, 1, 1, 'GC-0001', 'verified', 2, 5, 105.00, '2026-10-01 12:05:00', NULL),
(2, 2, 2, NULL, 'verified', 1, 5, 130.00, '2026-10-01 15:05:00', NULL),
(3, 3, 3, 'BT-0003', 'verified', 3, 5, 100.00, '2026-09-25 12:20:00', NULL),
(4, 4, 4, 'CC-0004', 'verified', 4, 4, 0.00, '2026-10-03 18:05:00', NULL),
(5, 7, 5, 'PAY-20261013-000005', 'verified', 1, 5, 20.00, '2026-10-13 15:12:26', NULL),
(6, 8, 7, 'PAY-20261013-000006', 'verified', 1, 5, 20.00, '2026-10-13 15:25:11', NULL),
(7, 3, 3, 'PAY-20261013-000007', 'verified', 1, 5, 65.00, '2026-10-13 15:26:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `method_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `method_name`, `description`, `is_online`, `is_active`) VALUES
(1, 'Cash', 'Cash payment made at the Study Hub.', 0, 1),
(2, 'GCash', 'GCash payment used for online and walk-in transactions.', 1, 1),
(3, 'Bank Transfer', 'Direct bank transfer payment.', 1, 1),
(4, 'Credit/Debit Card', 'Card payment processed via POS terminal.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `printing_jobs`
--

CREATE TABLE `printing_jobs` (
  `print_job_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `paper_size_id` int(10) UNSIGNED NOT NULL,
  `print_type_id` int(10) UNSIGNED NOT NULL,
  `page_count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `printing_jobs`
--

INSERT INTO `printing_jobs` (`print_job_id`, `order_item_id`, `paper_size_id`, `print_type_id`, `page_count`) VALUES
(1, 2, 1, 1, 2),
(2, 4, 1, 2, 3),
(3, 5, 4, 1, 5),
(4, 7, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `print_types`
--

CREATE TABLE `print_types` (
  `print_type_id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(20) NOT NULL,
  `label` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `print_types`
--

INSERT INTO `print_types` (`print_type_id`, `type_name`, `label`, `is_active`) VALUES
(1, 'black_white', 'Black & White', 1),
(2, 'color', 'Color', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_services`
--

CREATE TABLE `products_services` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock_quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_services`
--

INSERT INTO `products_services` (`product_id`, `category_id`, `item_name`, `unit_price`, `stock_quantity`) VALUES
(1, 1, 'French Fries', 50.00, 99),
(2, 2, 'Bottled Water', 20.00, 97),
(3, 3, 'Black and White Printing', 5.00, 1000),
(4, 3, 'Color Printing', 10.00, 1000),
(5, 2, 'Iced Coffee', 60.00, 100),
(6, 4, 'Locker Rental', 25.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`category_id`, `category_name`, `description`, `is_active`) VALUES
(1, 'Food', 'Food products offered by the Study Hub.', 1),
(2, 'Drinks', 'Drinks and beverages offered by the Study Hub.', 1),
(3, 'Printing', 'Printing-related services.', 1),
(4, 'Other Services', 'Other additional services offered by the Study Hub.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount_type` enum('percent','fixed') NOT NULL DEFAULT 'percent',
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`promotion_id`, `code`, `description`, `discount_type`, `discount_value`, `valid_from`, `valid_to`, `is_active`) VALUES
(1, 'WELCOME10', '10% off for new/returning customers.', 'percent', 10.00, '2026-01-01', '2026-12-31', 1),
(2, 'STUDY50', '₱50 flat off.', 'fixed', 50.00, '2026-01-01', '2026-12-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `receipt_number` varchar(40) NOT NULL,
  `total_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `issued_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`receipt_id`, `transaction_id`, `receipt_number`, `total_paid`, `issued_at`) VALUES
(1, 7, 'RCP-20261013-0007', 20.00, '2026-10-13 15:25:18'),
(2, 5, 'RCP-20261013-0005', 20.00, '2026-10-13 15:25:23'),
(3, 3, 'RCP-20261013-0003', 165.00, '2026-10-13 15:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `space_id` int(10) UNSIGNED NOT NULL,
  `reservation_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `number_of_people` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','confirmed','cancelled','completed','no_show') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `customer_id`, `space_id`, `reservation_date`, `start_time`, `end_time`, `number_of_people`, `status`, `created_at`) VALUES
(1, 1, 1, '2026-10-01', '09:00:00', '12:00:00', 1, 'confirmed', '2026-09-30 15:06:28'),
(2, 2, 2, '2026-10-01', '13:00:00', '15:00:00', 2, 'confirmed', '2026-09-30 15:06:28'),
(3, 3, 3, '2026-10-02', '10:00:00', '13:00:00', 4, 'pending', '2026-09-30 15:06:28'),
(4, 4, 4, '2026-10-03', '14:00:00', '18:00:00', 6, 'completed', '2026-09-30 15:06:28'),
(5, 5, 3, '2026-10-13', '15:00:00', '16:00:00', 4, 'confirmed', '2026-10-13 14:56:34'),
(6, 7, 1, '2026-10-13', '15:00:00', '16:00:00', 1, 'confirmed', '2026-10-13 14:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `session_extensions`
--

CREATE TABLE `session_extensions` (
  `extension_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `extension_start` datetime NOT NULL,
  `extension_end` datetime NOT NULL,
  `additional_amount` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_extensions`
--

INSERT INTO `session_extensions` (`extension_id`, `session_id`, `extension_start`, `extension_end`, `additional_amount`) VALUES
(1, 1, '2026-10-01 11:55:00', '2026-10-01 12:55:00', 15.00),
(2, 2, '2026-10-01 14:50:00', '2026-10-01 15:20:00', 10.00),
(3, 3, '2026-09-25 12:00:00', '2026-09-25 13:00:00', 20.00),
(4, 4, '2026-10-03 17:50:00', '2026-10-03 18:30:00', 25.00);

-- --------------------------------------------------------

--
-- Table structure for table `space_maintenance`
--

CREATE TABLE `space_maintenance` (
  `maintenance_id` int(10) UNSIGNED NOT NULL,
  `space_id` int(10) UNSIGNED NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('scheduled','active','completed','cancelled') NOT NULL DEFAULT 'scheduled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `space_sessions`
--

CREATE TABLE `space_sessions` (
  `session_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `space_id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED DEFAULT NULL,
  `check_in_time` datetime NOT NULL,
  `wifi_password` varchar(20) DEFAULT NULL,
  `check_out_time` datetime DEFAULT NULL,
  `study_fee` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `space_sessions`
--

INSERT INTO `space_sessions` (`session_id`, `customer_id`, `space_id`, `reservation_id`, `check_in_time`, `wifi_password`, `check_out_time`, `study_fee`) VALUES
(1, 1, 1, 1, '2026-10-01 09:05:00', 'SH-9F31KQ', '2026-10-01 11:55:00', 30.00),
(2, 2, 2, 2, '2026-10-01 13:10:00', 'SH-2A77LM', '2026-10-01 14:50:00', 50.00),
(3, 3, 3, NULL, '2026-09-25 10:00:00', 'SH-QW58ZT', '2026-09-25 12:00:00', 60.00),
(4, 4, 4, 4, '2026-10-03 14:00:00', 'SH-88XKPD', '2026-10-03 17:50:00', 80.00),
(5, 8, 1, NULL, '2026-10-13 15:21:54', 'SH-E960E6', '2026-10-13 15:22:21', 0.00),
(6, 8, 1, NULL, '2026-10-13 15:22:21', 'SH-1478BB', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `space_types`
--

CREATE TABLE `space_types` (
  `space_type_id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `base_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `default_capacity` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `space_types`
--

INSERT INTO `space_types` (`space_type_id`, `type_name`, `base_rate`, `default_capacity`, `description`) VALUES
(1, 'Individual Desk', 30.00, 1, 'Individual study space.'),
(2, 'Small Couch', 50.00, 2, 'Small couch study space.'),
(3, 'Round Table', 60.00, 4, 'Round table suitable for small groups.'),
(4, 'Big Table', 80.00, 8, 'Large table suitable for bigger groups.'),
(5, 'Private Room Corner', 100.00, 6, 'Small private study room or corner.');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `user_id`, `role_id`, `first_name`, `last_name`, `phone_number`) VALUES
(1, 5, 2, 'Carlo', 'Mendoza', '09211234567'),
(2, 6, 2, 'Liza', 'Torres', '09221234567'),
(3, 7, 3, 'Mark', 'Villanueva', '09231234567'),
(4, 8, 3, 'Rica', 'Fernandez', '09241234567'),
(5, 9, 1, 'System', 'Admin', '0000000000');

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`role_id`, `role_name`, `description`, `permissions`, `is_active`) VALUES
(1, 'Owner/Manager', 'Manages the overall Study Hub operations.', 'dashboard,customers,spaces,reservations,sessions,orders,billing,payments,staff,walkins,promotions,maintenance,notifications,reports', 1),
(2, 'Staff', 'Manages daily customer and study space operations.', 'dashboard,customers,spaces,reservations,sessions,orders,walkins,notifications', 1),
(3, 'Cashier', 'Manages customer payments and transaction records.', 'dashboard,orders,billing,payments,notifications', 1),
(4, 'Assistant Manager', 'Assists in overseeing daily Study Hub operations.', 'dashboard,customers,spaces,reservations,sessions,orders,billing,payments,staff,walkins,promotions,maintenance,notifications,reports', 1);

-- --------------------------------------------------------

--
-- Table structure for table `study_spaces`
--

CREATE TABLE `study_spaces` (
  `space_id` int(10) UNSIGNED NOT NULL,
  `space_type_id` int(10) UNSIGNED NOT NULL,
  `space_name` varchar(50) NOT NULL,
  `status` enum('available','occupied','reserved','maintenance','inactive') NOT NULL DEFAULT 'available',
  `capacity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `study_spaces`
--

INSERT INTO `study_spaces` (`space_id`, `space_type_id`, `space_name`, `status`, `capacity`) VALUES
(1, 1, 'Desk A1', 'occupied', 1),
(2, 2, 'Couch B1', 'available', 2),
(3, 3, 'Round Table C1', 'reserved', 4),
(4, 4, 'Big Table D1', 'available', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `account_type` enum('customer','staff') NOT NULL,
  `account_status` enum('active','inactive','suspended') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `account_type`, `account_status`, `created_at`, `updated_at`) VALUES
(1, 'juan.delacruz', '$2y$10$PnYHhSnG7odiSBULLlEmRO8saZdttD7BnInxBRmgHMWksgRMMCGkm', 'customer', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(2, 'maria.santos', '$2y$10$6HsxzXpeaMh/eGN/2OV7/.Pb50bsqUWnub/SrFfSYUhr7WWIfFaQK', 'customer', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(3, 'pedro.reyes', '$2y$10$gyWuNlt9kamNFMPh/7YxP.yg7R10mve72h6fW5BgdpeijF6GKl6BK', 'customer', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(4, 'ana.garcia', '$2y$10$5ZSPOGE0gD/UR6OOrgv57.zPGciIR4xFYjfv3z4a/.jg0RFk894T6', 'customer', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(5, 'carlo.mendoza', '$2y$10$t/chyzCAEoj8SPM9w8f.WOOMNi5kc.dJTlPf9y6sBeWslrhD73DqW', 'staff', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(6, 'liza.torres', '$2y$10$1otKMByoMbM/vki2vOSN2O78PhK0DZoipSf9a7.DlPyW0kcoPummS', 'staff', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(7, 'mark.villanueva', '$2y$10$yrbB7uifBcZpFdsnm5QO8eF.EWs2eK0eMXHnR9aE3/bdLbWZ2jDWC', 'staff', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(8, 'rica.fernandez', '$2y$10$LiPFyn2jOZD0WoyEzuGMIeSNlbB.TLcmsSvi5VJZc4xQN5.L0UfT6', 'staff', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(9, 'admin', '$2y$10$f2u3KDsgi1EioUHeABfmAOrrijSiROlkstJVPOiJFdIrCSOyfwiSC', 'staff', 'active', '2026-09-30 15:06:28', '2026-09-30 15:06:28'),
(10, 'johnsmith@gmail.com', '$2y$10$8/gaUISyV7RXCgES8ok3FuZkfYJP8OhOT1vAcEFOHT.ID124b51.i', 'customer', 'active', '2026-10-13 11:38:03', '2026-10-13 11:38:03'),
(11, 'caryltabigne@gmail.com', '$2y$10$4ZX.Dre9oH6.8xosKx96mu0j7AdIXWwJT1OuJY5p7oMOXsSG1jmTm', 'customer', 'active', '2026-10-13 13:30:14', '2026-10-13 13:30:14'),
(12, 'tabignecaryl@gmail.com', '$2y$10$3ABsvbcjCxmU6N7T2M/piOmgjEu5BVOp7NDkBKr/f6AY2B/X/3WNq', 'customer', 'active', '2026-10-13 14:58:43', '2026-10-13 14:58:43');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_active_sessions`
-- (See below for the actual view)
--
CREATE TABLE `v_active_sessions` (
`session_id` int(10) unsigned
,`customer_name` varchar(101)
,`space_name` varchar(50)
,`check_in_time` datetime
,`wifi_password` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_customer_reservations`
-- (See below for the actual view)
--
CREATE TABLE `v_customer_reservations` (
`reservation_id` int(10) unsigned
,`customer_id` int(10) unsigned
,`customer_name` varchar(101)
,`space_name` varchar(50)
,`space_type` varchar(50)
,`reservation_date` date
,`start_time` time
,`end_time` time
,`number_of_people` int(10) unsigned
,`status` enum('pending','confirmed','cancelled','completed','no_show')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_customer_sessions`
-- (See below for the actual view)
--
CREATE TABLE `v_customer_sessions` (
`session_id` int(10) unsigned
,`customer_id` int(10) unsigned
,`customer_name` varchar(101)
,`space_name` varchar(50)
,`reservation_id` int(10) unsigned
,`check_in_time` datetime
,`check_out_time` datetime
,`study_fee` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_daily_revenue`
-- (See below for the actual view)
--
CREATE TABLE `v_daily_revenue` (
`revenue_date` date
,`total_collected` decimal(32,2)
,`payment_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_payment_records`
-- (See below for the actual view)
--
CREATE TABLE `v_payment_records` (
`payment_id` int(10) unsigned
,`customer_id` int(10) unsigned
,`customer_name` varchar(101)
,`transaction_id` int(10) unsigned
,`payment_method` varchar(50)
,`reference_number` varchar(100)
,`payment_status` enum('pending','verified','rejected','refunded')
,`amount_paid` decimal(10,2)
,`payment_date` datetime
,`verified_by` int(10) unsigned
,`verified_by_name` varchar(101)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_study_space_availability`
-- (See below for the actual view)
--
CREATE TABLE `v_study_space_availability` (
`space_id` int(10) unsigned
,`space_name` varchar(50)
,`type_name` varchar(50)
,`capacity` int(10) unsigned
,`status` enum('available','occupied','reserved','maintenance','inactive')
,`base_rate` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `walkin_queue`
--

CREATE TABLE `walkin_queue` (
  `queue_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `space_type_id` int(10) UNSIGNED NOT NULL,
  `queued_at` datetime NOT NULL DEFAULT current_timestamp(),
  `served_at` datetime DEFAULT NULL,
  `status` enum('waiting','served','cancelled') NOT NULL DEFAULT 'waiting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `walkin_queue`
--

INSERT INTO `walkin_queue` (`queue_id`, `customer_id`, `space_type_id`, `queued_at`, `served_at`, `status`) VALUES
(1, 8, 1, '2026-10-13 15:21:31', '2026-10-13 15:22:21', 'served');

-- --------------------------------------------------------

--
-- Structure for view `v_active_sessions`
--
DROP TABLE IF EXISTS `v_active_sessions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `v_active_sessions`  AS SELECT `s`.`session_id` AS `session_id`, concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`, `ss`.`space_name` AS `space_name`, `s`.`check_in_time` AS `check_in_time`, `s`.`wifi_password` AS `wifi_password` FROM ((`space_sessions` `s` join `customers` `c` on(`s`.`customer_id` = `c`.`customer_id`)) join `study_spaces` `ss` on(`s`.`space_id` = `ss`.`space_id`)) WHERE `s`.`check_out_time` is null ;

-- --------------------------------------------------------

--
-- Structure for view `v_customer_reservations`
--
DROP TABLE IF EXISTS `v_customer_reservations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `v_customer_reservations`  AS SELECT `r`.`reservation_id` AS `reservation_id`, `r`.`customer_id` AS `customer_id`, concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`, `ss`.`space_name` AS `space_name`, `st`.`type_name` AS `space_type`, `r`.`reservation_date` AS `reservation_date`, `r`.`start_time` AS `start_time`, `r`.`end_time` AS `end_time`, `r`.`number_of_people` AS `number_of_people`, `r`.`status` AS `status` FROM (((`reservations` `r` join `customers` `c` on(`r`.`customer_id` = `c`.`customer_id`)) join `study_spaces` `ss` on(`r`.`space_id` = `ss`.`space_id`)) join `space_types` `st` on(`ss`.`space_type_id` = `st`.`space_type_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_customer_sessions`
--
DROP TABLE IF EXISTS `v_customer_sessions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `v_customer_sessions`  AS SELECT `s`.`session_id` AS `session_id`, `s`.`customer_id` AS `customer_id`, concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`, `ss`.`space_name` AS `space_name`, `s`.`reservation_id` AS `reservation_id`, `s`.`check_in_time` AS `check_in_time`, `s`.`check_out_time` AS `check_out_time`, `s`.`study_fee` AS `study_fee` FROM ((`space_sessions` `s` join `customers` `c` on(`s`.`customer_id` = `c`.`customer_id`)) join `study_spaces` `ss` on(`s`.`space_id` = `ss`.`space_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_daily_revenue`
--
DROP TABLE IF EXISTS `v_daily_revenue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `v_daily_revenue`  AS SELECT cast(`payments`.`payment_date` as date) AS `revenue_date`, sum(`payments`.`amount_paid`) AS `total_collected`, count(0) AS `payment_count` FROM `payments` WHERE `payments`.`payment_status` = 'verified' GROUP BY cast(`payments`.`payment_date` as date) ;

-- --------------------------------------------------------

--
-- Structure for view `v_payment_records`
--
DROP TABLE IF EXISTS `v_payment_records`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `v_payment_records`  AS SELECT `p`.`payment_id` AS `payment_id`, `p`.`customer_id` AS `customer_id`, concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`, `p`.`transaction_id` AS `transaction_id`, `pm`.`method_name` AS `payment_method`, `p`.`reference_number` AS `reference_number`, `p`.`payment_status` AS `payment_status`, `p`.`amount_paid` AS `amount_paid`, `p`.`payment_date` AS `payment_date`, `p`.`verified_by` AS `verified_by`, CASE WHEN `st`.`staff_id` is null THEN NULL ELSE concat(`st`.`first_name`,' ',`st`.`last_name`) END AS `verified_by_name` FROM (((`payments` `p` join `customers` `c` on(`p`.`customer_id` = `c`.`customer_id`)) join `payment_methods` `pm` on(`p`.`payment_method_id` = `pm`.`payment_method_id`)) left join `staff` `st` on(`p`.`verified_by` = `st`.`staff_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_study_space_availability`
--
DROP TABLE IF EXISTS `v_study_space_availability`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `v_study_space_availability`  AS SELECT `ss`.`space_id` AS `space_id`, `ss`.`space_name` AS `space_name`, `st`.`type_name` AS `type_name`, `ss`.`capacity` AS `capacity`, `ss`.`status` AS `status`, `st`.`base_rate` AS `base_rate` FROM (`study_spaces` `ss` join `space_types` `st` on(`ss`.`space_type_id` = `st`.`space_type_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`audit_id`),
  ADD KEY `idx_audit_user` (`user_id`),
  ADD KEY `idx_audit_table` (`table_name`);

--
-- Indexes for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `idx_transactions_customer` (`customer_id`),
  ADD KEY `idx_transactions_reservation` (`reservation_id`),
  ADD KEY `idx_transactions_session` (`session_id`),
  ADD KEY `idx_transactions_order` (`order_id`),
  ADD KEY `fk_transactions_promotion` (`promotion_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `idx_notifications_recipient` (`recipient_type`,`recipient_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `idx_orders_customer` (`customer_id`),
  ADD KEY `idx_orders_staff` (`staff_id`),
  ADD KEY `idx_orders_session` (`session_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `idx_order_items_order` (`order_id`),
  ADD KEY `idx_order_items_product` (`product_id`);

--
-- Indexes for table `paper_sizes`
--
ALTER TABLE `paper_sizes`
  ADD PRIMARY KEY (`paper_size_id`),
  ADD UNIQUE KEY `size_name` (`size_name`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `idx_payments_customer` (`customer_id`),
  ADD KEY `idx_payments_transaction` (`transaction_id`),
  ADD KEY `idx_payments_method` (`payment_method_id`),
  ADD KEY `idx_payments_verified_by` (`verified_by`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD UNIQUE KEY `method_name` (`method_name`);

--
-- Indexes for table `printing_jobs`
--
ALTER TABLE `printing_jobs`
  ADD PRIMARY KEY (`print_job_id`),
  ADD UNIQUE KEY `order_item_id` (`order_item_id`),
  ADD KEY `idx_printing_jobs_paper_size` (`paper_size_id`),
  ADD KEY `idx_printing_jobs_print_type` (`print_type_id`);

--
-- Indexes for table `print_types`
--
ALTER TABLE `print_types`
  ADD PRIMARY KEY (`print_type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `products_services`
--
ALTER TABLE `products_services`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `idx_products_category` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotion_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`),
  ADD UNIQUE KEY `receipt_number` (`receipt_number`),
  ADD KEY `fk_receipts_transaction` (`transaction_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `idx_reservations_customer` (`customer_id`),
  ADD KEY `idx_reservations_space_date` (`space_id`,`reservation_date`);

--
-- Indexes for table `session_extensions`
--
ALTER TABLE `session_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `idx_extensions_session` (`session_id`);

--
-- Indexes for table `space_maintenance`
--
ALTER TABLE `space_maintenance`
  ADD PRIMARY KEY (`maintenance_id`),
  ADD KEY `fk_maint_space` (`space_id`),
  ADD KEY `fk_maint_staff` (`created_by`);

--
-- Indexes for table `space_sessions`
--
ALTER TABLE `space_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `reservation_id` (`reservation_id`),
  ADD KEY `idx_sessions_customer` (`customer_id`),
  ADD KEY `idx_sessions_space` (`space_id`);

--
-- Indexes for table `space_types`
--
ALTER TABLE `space_types`
  ADD PRIMARY KEY (`space_type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `fk_staff_role` (`role_id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `study_spaces`
--
ALTER TABLE `study_spaces`
  ADD PRIMARY KEY (`space_id`),
  ADD UNIQUE KEY `space_name` (`space_name`),
  ADD KEY `fk_study_spaces_type` (`space_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `walkin_queue`
--
ALTER TABLE `walkin_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `fk_walkin_customer` (`customer_id`),
  ADD KEY `fk_walkin_type` (`space_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `audit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paper_sizes`
--
ALTER TABLE `paper_sizes`
  MODIFY `paper_size_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `printing_jobs`
--
ALTER TABLE `printing_jobs`
  MODIFY `print_job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `print_types`
--
ALTER TABLE `print_types`
  MODIFY `print_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_services`
--
ALTER TABLE `products_services`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotion_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_extensions`
--
ALTER TABLE `session_extensions`
  MODIFY `extension_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `space_maintenance`
--
ALTER TABLE `space_maintenance`
  MODIFY `maintenance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `space_sessions`
--
ALTER TABLE `space_sessions`
  MODIFY `session_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `space_types`
--
ALTER TABLE `space_types`
  MODIFY `space_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `study_spaces`
--
ALTER TABLE `study_spaces`
  MODIFY `space_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `walkin_queue`
--
ALTER TABLE `walkin_queue`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  ADD CONSTRAINT `fk_transactions_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transactions_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transactions_promotion` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transactions_reservation` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transactions_session` FOREIGN KEY (`session_id`) REFERENCES `space_sessions` (`session_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_customers_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_session` FOREIGN KEY (`session_id`) REFERENCES `space_sessions` (`session_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_items_product` FOREIGN KEY (`product_id`) REFERENCES `products_services` (`product_id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payments_method` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payments_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `billing_transactions` (`transaction_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payments_verified_by` FOREIGN KEY (`verified_by`) REFERENCES `staff` (`staff_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `printing_jobs`
--
ALTER TABLE `printing_jobs`
  ADD CONSTRAINT `fk_printing_jobs_order_item` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`order_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_printing_jobs_paper_size` FOREIGN KEY (`paper_size_id`) REFERENCES `paper_sizes` (`paper_size_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_printing_jobs_print_type` FOREIGN KEY (`print_type_id`) REFERENCES `print_types` (`print_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `products_services`
--
ALTER TABLE `products_services`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`) ON UPDATE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `fk_receipts_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `billing_transactions` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk_reservations_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservations_space` FOREIGN KEY (`space_id`) REFERENCES `study_spaces` (`space_id`) ON UPDATE CASCADE;

--
-- Constraints for table `session_extensions`
--
ALTER TABLE `session_extensions`
  ADD CONSTRAINT `fk_extensions_session` FOREIGN KEY (`session_id`) REFERENCES `space_sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `space_maintenance`
--
ALTER TABLE `space_maintenance`
  ADD CONSTRAINT `fk_maint_space` FOREIGN KEY (`space_id`) REFERENCES `study_spaces` (`space_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_maint_staff` FOREIGN KEY (`created_by`) REFERENCES `staff` (`staff_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `space_sessions`
--
ALTER TABLE `space_sessions`
  ADD CONSTRAINT `fk_sessions_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sessions_reservation` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sessions_space` FOREIGN KEY (`space_id`) REFERENCES `study_spaces` (`space_id`) ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_staff_role` FOREIGN KEY (`role_id`) REFERENCES `staff_roles` (`role_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_staff_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `study_spaces`
--
ALTER TABLE `study_spaces`
  ADD CONSTRAINT `fk_study_spaces_type` FOREIGN KEY (`space_type_id`) REFERENCES `space_types` (`space_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `walkin_queue`
--
ALTER TABLE `walkin_queue`
  ADD CONSTRAINT `fk_walkin_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_walkin_type` FOREIGN KEY (`space_type_id`) REFERENCES `space_types` (`space_type_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
