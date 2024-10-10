-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2024 at 04:54 PM
-- Server version: 5.7.40-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fakebillck`
--

-- --------------------------------------------------------

--
-- Table structure for table `history_bill`
--

CREATE TABLE `history_bill` (
  `bank` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time_create` datetime DEFAULT NULL,
  `for_username` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `phaply` text,
  `baomat` text,
  `dieukhoan` text,
  `fakebillfree` int(10) NOT NULL DEFAULT '0',
  `luottaobill` int(25) NOT NULL DEFAULT '0',
  `serial_key` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `price` int(20) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_stk` varchar(255) NOT NULL,
  `bank_ctk` varchar(255) NOT NULL,
  `noidungck` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `grouptele` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `phaply`, `baomat`, `dieukhoan`, `fakebillfree`, `luottaobill`, `serial_key`, `banner`, `price`, `bank_name`, `bank_stk`, `bank_ctk`, `noidungck`, `fb`, `grouptele`) VALUES
(1, 'Fake Bill', 'Fake Bill chuyển khoản', '<b>SieuTool</b> cam kết không cung cấp các công cụ nằm mục đích xấu. Tất cả các công cụ được cung cấp trên trang web đều sử dụng nhằm mục đích nâng cao chất lượng trải nghiệm mạng xã hội, hỗ trợ người dùng trong vấn đề mở khóa, xác minh hoặc khai thác mạng xã hội không thuộc sở hữu của Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam.<br/>SieuTool đồng thời không chịu bất kì trách nhiệm nào có liên quan và bác bỏ toàn bộ các cáo buộc về hệ thống miễn phí này.     ', 'Cam kết không lưu trữ, sử dụng trái phép hoặc tùy ý buôn bán, chia sẻ dữ liệu (curl bash, token, cookie) của người dùng dẫn đến mất mát dữ liệu cá nhân. Toàn bộ công cụ trên trang web đều được chúng tôi cho chạy trực tiếp request, không lưu trữ vào database những dữ liệu mà tool yêu cầu.', 'Người dùng <b>SieuTool</b> có quyền sử dụng tất cả các công cụ miễn phí, nhưng phải tuân thủ bộ quy tắc được đề cập trong đều khoản sử dụng để đảm bảo an toàn, cải thiện trải nghiệm sử dụng tool:<li>Sử dụng công cụ một cách có trách nhiệm, không vi phạm pháp luật</li<li>Sử dụng giấy tờ, tài liệu mở khóa, verify tài khoản đúng mục đích</li><li>Không sử dụng công cụ cho mục đích thương mại vì chúng tôi cung cấp nó miễn phí</li>', 0, 24415, '', 'https://fakebillchuyenkhoan.com/banner1.png?123', 8000, 'Ngân hàng TMCP Á Châu (ACB)', '123456789', 'NGUYEN VAN A', 'naptien', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `amount` int(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `transaction_date` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `VIP` int(100) NOT NULL,
  `sodu` int(20) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `tichxanh` int(1) NOT NULL,
  `serial_key` varchar(255) NOT NULL,
  `date_bill` varchar(255) NOT NULL,
  `billck` varchar(255) NOT NULL,
  `tongtiennap` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history_bill`
--
ALTER TABLE `history_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history_bill`
--
ALTER TABLE `history_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
