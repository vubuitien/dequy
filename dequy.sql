-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 01, 2018 lúc 09:46 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dequy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `title`, `parent_id`) VALUES
(1, 'Trang chủ', 0),
(2, 'Xã hội', 0),
(3, 'Thế giới', 0),
(4, 'Văn hóa', 0),
(5, 'Kinh tế', 0),
(6, 'Giáo dục', 0),
(7, 'Thể thao', 0),
(8, 'Pháp luật', 0),
(9, 'Khoa học', 0),
(10, 'Đời sống', 0),
(11, 'Thời sự', 2),
(12, 'Giao thông', 2),
(13, 'Nghệ thuật', 4),
(14, 'Ẩm thực', 4),
(15, 'Du lịch', 4),
(16, 'Kinh doanh', 5),
(17, 'Lao động - Làm việc', 5),
(18, 'Tài chính', 5),
(19, 'Chứng khoán', 5),
(20, 'Trong nước', 7),
(21, 'Quốc tế', 7),
(22, 'Thể thao điện tử', 21),
(23, 'Bóng đá', 21),
(24, 'Quần vợt', 21),
(25, 'Golf', 21),
(26, 'Bóng rổ', 21),
(27, 'An ninh', 8),
(28, 'Hình sự', 8),
(29, 'Dinh dưỡng - Làm đẹp', 10),
(30, 'Tình yêu - Hôn nhân', 10),
(31, 'Sức khỏe - Y tế', 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
