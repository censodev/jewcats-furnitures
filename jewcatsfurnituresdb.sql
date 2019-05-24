-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 24, 2019 lúc 09:07 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jewcatsfurnituresdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(11) NOT NULL,
  `acc_usn` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `acc_pwd` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `acc_role` int(11) NOT NULL,
  `stf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `acc_usn`, `acc_pwd`, `acc_role`, `stf_id`) VALUES
(1, 'root', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', 1, 1),
(5, 'admin', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', 2, 1),
(6, 'xuanhanh', 'd54f53ecd33ee379ebfdb94f8e2866161bc29b36f623ba82aaf6724fd3b16718', 3, 2),
(7, 'tuanhaviet22', 'e208aba7f4f7ef84cca0c58b0110cc1e1bc29b36f623ba82aaf6724fd3b16718', 2, 3),
(8, 'stff', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `id` int(11) NOT NULL,
  `brd_name` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `brd_logo` char(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brands`
--

INSERT INTO `tbl_brands` (`id`, `brd_name`, `brd_logo`) VALUES
(1, 'IKEA', 'ikea.png'),
(2, 'Wayfair', 'wayfair.jpg'),
(3, 'UMA', 'uma.png'),
(4, 'Kangaroo', 'kangaroo.jpg'),
(5, 'Linax', 'linax.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `cat_name` char(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `cat_name`) VALUES
(1, 'Tables & Desks'),
(2, 'Chairs & Sofas'),
(3, 'Beds'),
(4, 'Storages'),
(5, 'Sinks & Bathtubs'),
(6, 'Lamps'),
(7, 'Cushions'),
(8, 'Decorations');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `cus_usn` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `cus_pwd` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `cus_name` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `cus_phone` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `cus_mail` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `cus_address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `cus_usn`, `cus_pwd`, `cus_name`, `cus_phone`, `cus_mail`, `cus_address`) VALUES
(1, 'acustomer', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', 'No Bodyy', '0123456789', 'abcxyz@gmail.com', 'somewhere on earth'),
(4, 'idonnuwhatsmyname', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', 'Viet Tuan Ha', '0123456789', 'abc@gmail.com', ''),
(6, 'mk14kkkk', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', 'mrbui', '0000000001', 'buiphuongaptutc@gmail.com', ''),
(7, '2customer', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', '2customer', '1111111111', 'abyz@gmail.com', '1111111'),
(8, 'ikeaa', 'c4ca4238a0b923820dcc509a6f75849b1bc29b36f623ba82aaf6724fd3b16718', 'IKEAA', '1111', 'asd', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` int(11) NOT NULL,
  `ord_id` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(11) NOT NULL,
  `pro_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `ord_id`, `pro_id`, `pro_quantity`) VALUES
(9, '201904121555076005', 1, 2),
(10, '201904121555112557', 21, 2),
(11, '201904121555112557', 3, 1),
(12, '201904131555168526', 2, 1),
(13, '201904131555168526', 3, 1),
(14, '201904131555168711', 2, 2),
(15, '201904131555169035', 3, 2),
(16, '201904131555169035', 4, 1),
(17, '201904131555169131', 4, 2),
(18, '201904131555169131', 2, 1),
(19, '201905121557654457', 1, 2),
(20, '201905121557654736', 23, 3),
(21, '201905121557654929', 5, 1),
(22, '201905181558164814', 3, 1),
(23, '201905181558164814', 4, 3),
(24, '201905221558546922', 24, 3),
(25, '201905221558546922', 1, 2),
(26, '201905221558547202', 1, 2),
(27, '201905221558547202', 2, 2),
(28, '201905221558547202', 23, 2),
(29, '201905221558547372', 4, 1),
(30, '201905221558547588', 1, 3),
(31, '201905221558547588', 4, 2),
(32, '201905221558547731', 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `ord_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cus_id` int(11) NOT NULL,
  `ord_price` float NOT NULL,
  `ord_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `ord_datetime`, `cus_id`, `ord_price`, `ord_status`) VALUES
('201904121555076005', '2019-04-12 20:33:25', 1, 280, -1),
('201904121555112557', '2019-04-13 06:42:37', 0, 293, 0),
('201904131555168526', '2019-04-13 22:15:26', 0, 78, 0),
('201904131555168711', '2019-04-13 22:18:31', 0, 78, 0),
('201904131555169035', '2019-04-13 22:23:55', 0, 145.99, 0),
('201904131555169131', '2019-04-13 22:25:31', 1, 145.99, -1),
('201905121557654457', '2019-05-12 16:47:37', 1, 280, -1),
('201905121557654736', '2019-05-12 16:52:16', 1, 102, -1),
('201905121557654929', '2019-05-12 16:55:29', 1, 249, -1),
('201905181558164814', '2019-05-18 14:33:34', 1, 242.97, 1),
('201905221558546922', '2019-05-23 00:42:02', 1, 678, -1),
('201905221558547202', '2019-05-23 00:46:42', 1, 426, 1),
('201905221558547372', '2019-05-23 00:49:32', 1, 67.99, -1),
('201905221558547588', '2019-05-23 00:53:08', 1, 555.98, 1),
('201905221558547731', '2019-05-23 00:55:31', 1, 599, -1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `pro_name` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` float NOT NULL,
  `pro_img` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_quantity` int(11) NOT NULL,
  `pro_description` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_status` int(11) NOT NULL,
  `brd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `pro_name`, `pro_price`, `pro_img`, `pro_quantity`, `pro_description`, `pro_status`, `brd_id`, `cat_id`) VALUES
(1, 'IVAR', 140, '0537097_PE652157_S5.JPG', 2, '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>An easy solution if you don&rsquo;t have a lot of space since the foldable table is perfect both as a desk and as a dining table for 2-3 people.</li>\r\n	<li>On the shelves you have plenty of storage space, and if you want to hide your things just fold up the table.</li>\r\n	<li>Solid pine is a natural material which ages beautifully and gains its own unique character over time.</li>\r\n	<li>You can personalize the furniture even more by staining or painting it your favorite color.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>This furniture must be secured to the wall.<br />\r\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.<br />\r\nFor higher stability, add a cross-brace to every second section.<br />\r\nMay be completed with FIXA stick-on floor protectors to protect the underlying surface against wear.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Side unit:<br />\r\nWipe clean with a dry cloth.<br />\r\n<br />\r\nShelf/storage unit with foldable table:<br />\r\nWipe clean with a dry cloth.<br />\r\nStains can be removed by using an eraser or fine sandpaper.<br />\r\n<br />\r\nSide unit:<br />\r\nStains can be removed by using an eraser or fine sandpaper.<br />\r\n<br />\r\nShelf/storage unit with foldable table:<br />\r\nCan be treated with oil, wax, lacquer or glazing paint for higher resistance and easy care.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 35 3/8 &quot;<br />\r\nHeight: 70 1/2 &quot;<br />\r\nMin. depth: 11 3/4 &quot;<br />\r\nMax. depth: 41 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 90 cm<br />\r\nHeight: 179 cm<br />\r\nMin. depth: 30 cm<br />\r\nMax. depth: 104 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden</p>\r\n', 1, 1, 1),
(2, 'NORBERG', 39, '0120123_PE276553_S5.JPG', 0, '<ul>\r\n	<li>Becomes a practical shelf for small things when folded down.</li>\r\n	<li>You save space when the table is not being used as it can be folded away.</li>\r\n	<li>Table top covered with melamine, which gives a durable, easy to clean finish.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Seats 2.<br />\r\nFor use at table height: Mount the table to the wall so that the top edge of the table top reaches a height of ca. 29â…›&quot;.<br />\r\nFor use at bar table height: Mount the table to the wall so that the top edge of the table top reaches a height of ca. 37â…œ&quot; or 41&frac34;&quot;, depending on seat height of the bar chair.<br />\r\nFor increased stability, re-tighten the screws about two weeks after assembly and when necessary.<br />\r\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.<br />\r\nRecommended for indoor use only.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 29 1/8 &quot;<br />\r\nDepth: 23 5/8 &quot;<br />\r\nHeight of combination: 16 7/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 74 cm<br />\r\nDepth: 60 cm<br />\r\nHeight of combination: 43 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Marcus Arvonen</p>\r\n', 0, 1, 1),
(3, 'TARENDO', 39, 'tarendo-table-black__0241636_PE381441_S4.JPG', 0, '<ul>\r\n	<li>The table tops are coated with melamine so they are heat- and scratch-resistant and are also easy to clean.</li>\r\n	<li>Don&rsquo;t let the price fool you. This table has been tested against our strictest standards for stability, durability and safety to withstand everyday use in your home for years.</li>\r\n</ul>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Table<br />\r\nFor indoor use<br />\r\n<br />\r\nTable top<br />\r\nWipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Length: 43 1/4 &quot;<br />\r\nWidth: 26 3/8 &quot;<br />\r\nHeight: 29 1/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Length: 110 cm<br />\r\nWidth: 67 cm<br />\r\nHeight: 74 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>K Hagberg/M Hagberg</p>\r\n', 0, 1, 1),
(4, 'LINNMON', 67.99, 'linnmon-adils-table-blue__0396023_PE562267_S4.JPG', 0, '<p>Product dimensions</p>\r\n\r\n<p>Length: 78 3/4 &quot;<br />\r\nWidth: 23 5/8 &quot;<br />\r\nHeight: 29 1/8 &quot;<br />\r\nMaximum load/leg: 110 lb 4 oz<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Length: 200 cm<br />\r\nWidth: 60 cm<br />\r\nHeight: 74 cm<br />\r\nMaximum load/leg: 50 kg<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Screws for attaching the legs to the table top are included.<br />\r\nRequires an extra leg for increased stability.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n', 0, 1, 1),
(5, 'TYSSEDAL', 249, 'tyssedal-dressing-table-white__0563360_PE663833_S4.JPG', 3, '<ul>\r\n	<li>Plenty of space for your daily makeup and styling.</li>\r\n	<li>Smooth running drawer with pull-out stop.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Coordinates with other products in the TYSSEDAL series.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean with a soft cloth dampened with water and a mild dish detergent or soap, if necessary.<br />\r\nWipe clean using a damp cloth and a mild cleaner.<br />\r\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 47 1/4 &quot;<br />\r\nDepth: 20 1/8 &quot;<br />\r\nHeight: 33 7/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 120 cm<br />\r\nDepth: 51 cm<br />\r\nHeight: 86 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Ebba Strandmark</p>\r\n', 1, 1, 1),
(6, 'LANDSKRONA', 599, 'landskrona-sofa__0602115_PE680184_S4.JPG', 1, '<ul>\r\n	<li>The fabric cover has a warm and welcoming look, while the tight fit gives the sofa a neat and stylish expression.</li>\r\n	<li>Seat cushions filled with high resilience foam and polyester fiber wadding provides great seating comfort.</li>\r\n	<li>Removable armrests make it easy to add on a chaise lounge.</li>\r\n	<li>10-year limited warrranty. Read about the terms in the limited warranty brochure.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Sleeves for the legs to match the cover are included.<br />\r\nThis cover&rsquo;s ability to resist abrasion has been tested to handle 50,000 cycles. 15,000 cycles or more is suitable for furniture used every day at home. Over 30,000 cycles means a good ability to resist abrasion.<br />\r\nStationary cover.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Do not wash.<br />\r\nDo not bleach.<br />\r\nDo not tumble dry.<br />\r\nDo not iron.<br />\r\nDo not dry clean.<br />\r\nVacuum clean.<br />\r\nWipe clean with a damp cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 80 3/8 &quot;<br />\r\nDepth: 35 &quot;<br />\r\nHeight: 30 3/4 &quot;<br />\r\nArmrest height: 25 1/4 &quot;<br />\r\nSeat width: 70 7/8 &quot;<br />\r\nSeat depth: 24 &quot;<br />\r\nSeat height: 17 3/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 204 cm<br />\r\nDepth: 89 cm<br />\r\nHeight: 78 cm<br />\r\nArmrest height: 64 cm<br />\r\nSeat width: 180 cm<br />\r\nSeat depth: 61 cm<br />\r\nSeat height: 44 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden/Tord Bj&ouml;rklund</p>\r\n', 0, 1, 2),
(7, 'SNILLE', 19.99, 'snille-swivel-chair-white__0287229_PE423571_S4.jpg', 2, '<ul>\r\n	<li>You sit comfortably since the chair is adjustable in height.</li>\r\n	<li>The safety casters have a pressure-sensitive brake mechanism that keeps the chair in place when you stand up, and releases automatically when you sit down.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>This product has been developed and tested for domestic use.<br />\r\nThe casters are designed for soft floors.<br />\r\nMay be used with KOLON floor protector.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Tested for: 243 lb<br />\r\nWidth: 26 3/8 &quot;<br />\r\nDepth: 26 3/8 &quot;<br />\r\nMax. height: 32 5/8 &quot;<br />\r\nSeat width: 17 3/4 &quot;<br />\r\nSeat depth: 15 3/8 &quot;<br />\r\nMin. seat height: 15 3/8 &quot;<br />\r\nMax. seat height: 20 1/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Tested for: 110 kg<br />\r\nWidth: 67 cm<br />\r\nDepth: 67 cm<br />\r\nMax. height: 83 cm<br />\r\nSeat width: 45 cm<br />\r\nSeat depth: 39 cm<br />\r\nMin. seat height: 39 cm<br />\r\nMax. seat height: 51 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden</p>\r\n', 1, 1, 2),
(8, 'POANG', 79, 'poang-armchair-beige__0571500_PE666933_S4.JPG', 5, '<ul>\r\n	<li>Layer-glued bent birch frame gives comfortable resilience.</li>\r\n	<li>The high back provides good support for your neck.</li>\r\n	<li>A variety of seat cushion designs makes it easy to change the look of your PO&Auml;NG chair and your living room.</li>\r\n	<li>To sit even more comfortably and relaxed, you can use the armchair together with a PO&Auml;NG ottoman.</li>\r\n	<li>The cover is easy to keep clean as it is removable and can be machine washed.</li>\r\n	<li>10-year limited warrranty. Read about the terms in the limited warranty brochure.</li>\r\n</ul>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Chair cushion:<br />\r\nRemovable cover<br />\r\nMachine wash warm, normal cycle.<br />\r\nTo be washed separately.<br />\r\nDo not bleach.<br />\r\nDo not tumble dry.<br />\r\nIron medium temperature, max 300&deg;F/150&deg;C.<br />\r\n<br />\r\nArmchair:<br />\r\nRemovable cover<br />\r\nDry clean any solvent except trichloroethylene.<br />\r\n<br />\r\nArmchair frame:<br />\r\nFrame<br />\r\nWipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 26 3/4 &quot;<br />\r\nDepth: 32 1/4 &quot;<br />\r\nHeight: 39 3/8 &quot;<br />\r\nSeat width: 22 &quot;<br />\r\nSeat depth: 19 5/8 &quot;<br />\r\nSeat height: 16 1/2 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 68 cm<br />\r\nDepth: 82 cm<br />\r\nHeight: 100 cm<br />\r\nSeat width: 56 cm<br />\r\nSeat depth: 50 cm<br />\r\nSeat height: 42 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden/Noboru Nakamura</p>\r\n', 1, 1, 2),
(9, 'HEMNES', 539, 'hemnes-daybed-with-drawers-mattresses-white__0501646_PE632058_S4.JPG', 2, '<ul>\r\n	<li>With this daybed you quickly and easily create space for overnight guests. Just pull out the bed base and you get a double bed in no time.</li>\r\n	<li>The large drawers have space for extra comforters, pillows, linens or other things you need to store, but want to have close at hand.</li>\r\n	<li>The high frame creates a cozy cocoon feeling, and is lacquered so that it&#39;s easy to maintain.</li>\r\n	<li>With some fluffy, soft pillows as back support, you easily transform this daybed into a comfortable sofa.</li>\r\n	<li>You will get all-over support and comfort with the resilient foam mattress.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>The daybed must be combined with two twin mattresses. They are placed on top of each other when you use the daybed as a single bed, and next to each other when you use it as a double bed.<br />\r\n2 HUSVIKA spring mattresses included.<br />\r\nSlatted bed base is included.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bed linen sold separately.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Daybed with 3 drawers/2 mattresses:<br />\r\nMattress<br />\r\nDo not wash.<br />\r\nDo not bleach.<br />\r\nDo not tumble dry.<br />\r\nDo not iron.<br />\r\nDo not dry clean.<br />\r\nVacuum clean.<br />\r\nWipe clean with a damp cloth.<br />\r\n<br />\r\nDaybed frame with 3 drawers:<br />\r\nWipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Height of drawer (inside): 7 1/8 &quot;<br />\r\nLength: 78 3/8 &quot;<br />\r\nWidth: 41 &quot;<br />\r\nHeight: 32 5/8 &quot;<br />\r\nDrawer width (inside): 20 1/8 &quot;<br />\r\nDrawer depth (inside): 27 1/2 &quot;<br />\r\nBed width: 75 5/8 &quot;<br />\r\nBed length: 75 5/8 &quot;<br />\r\nMattress length: 74 1/2 &quot;<br />\r\nMattress width: 38 1/4 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Height of drawer (inside): 18 cm<br />\r\nLength: 199 cm<br />\r\nWidth: 104 cm<br />\r\nHeight: 83 cm<br />\r\nDrawer width (inside): 51 cm<br />\r\nDrawer depth (inside): 70 cm<br />\r\nBed width: 192 cm<br />\r\nBed length: 192 cm<br />\r\nMattress length: 189 cm<br />\r\nMattress width: 97 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden/Carina Bengs</p>\r\n', 1, 1, 3),
(10, 'SONGESAND', 149, 'songesand-bed-frame-white__0638583_PE699000_S4.JPG', 3, '<ul>\r\n	<li>Adjustable bed sides allow you to use mattresses of different thicknesses.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>The price for this combination includes SKORVA midbeam, but it is a separate product which you pick from its own shelf at the store. If you buy the bed via the website, SKORVA midbeam is included in the delivery.<br />\r\nAdd SONGESAND underbed storage boxes to create lots of extra storage space.<br />\r\nCoordinates with other furniture in the SONGESAND series.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mattress and bedlinens are sold separately.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Length: 81 7/8 &quot;<br />\r\nWidth: 65 &quot;<br />\r\nFootboard height: 16 1/8 &quot;<br />\r\nHeadboard height: 37 3/8 &quot;<br />\r\nHeight under furniture: 7 7/8 &quot;<br />\r\nMattress length: 79 1/2 &quot;<br />\r\nMattress width: 59 7/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Length: 208 cm<br />\r\nWidth: 165 cm<br />\r\nFootboard height: 41 cm<br />\r\nHeadboard height: 95 cm<br />\r\nHeight under furniture: 20 cm<br />\r\nMattress length: 202 cm<br />\r\nMattress width: 152 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden</p>\r\n', 1, 1, 3),
(11, 'MALM', 499, 'malm-storage-bed-black__0594833_PE676182_S4.JPG', 1, '<ul>\r\n	<li>The storage space under the bed holds everything from extra comforters and pillows to seasonal clothes. Or why not the ironing board?</li>\r\n	<li>Complete with boxes and dividers to make it easier to keep track of smaller things. STUK, SKUBB and STORSTABBE storage series have items which are perfectly suited for this.</li>\r\n	<li>Real wood veneer will make this bed age gracefully.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>For the open and soft-close mechanism to work safely and properly, complete the bed with a mattress weighing max. 110 lbs.<br />\r\nCenter support beam and slatted bed base are included.<br />\r\nYou can complete MALM ottoman bed with any of our spring or foam mattresses in the right size. We recommend HAUGESUND spring mattress or MORGEDAL foam mattress.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mattress and bedlinens are sold separately.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Inside depth: 79 7/8 &quot;<br />\r\nInside width: 60 1/4 &quot;<br />\r\nInside height: 10 5/8 &quot;<br />\r\nLength: 83 1/2 &quot;<br />\r\nWidth: 66 1/8 &quot;<br />\r\nFootboard height: 15 &quot;<br />\r\nHeadboard height: 39 3/8 &quot;<br />\r\nMattress length: 79 1/2 &quot;<br />\r\nMattress width: 59 7/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Inside depth: 203 cm<br />\r\nInside width: 153 cm<br />\r\nInside height: 27 cm<br />\r\nLength: 212 cm<br />\r\nWidth: 168 cm<br />\r\nFootboard height: 38 cm<br />\r\nHeadboard height: 100 cm<br />\r\nMattress length: 202 cm<br />\r\nMattress width: 152 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Eva Lilja L&ouml;wenhielm</p>\r\n', 1, 1, 3),
(12, 'EKET', 70, 'eket-cabinet-with-doors-and-shelves-white__0472904_PE614312_S4.JPG', 3, '<ul>\r\n	<li>A simple unit can be enough storage for a limited space or the foundation for a larger storage solution if your needs change.</li>\r\n	<li>You can choose to place the cabinet on the floor or mount it on the wall to free up floor space.</li>\r\n	<li>The door has an integrated push-opener so you can open it with just a light push.</li>\r\n	<li>2 movable shelves make it easy to adapt the space to your storage needs, while one shelf fixed in place adds increased stability.</li>\r\n	<li>Assembly is quick and easy, thanks to the wedge dowel that clicks into the pre-drilled holes.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Must be completed with EKET suspension rail if you choose to mount the frame on the wall. This frame requires 1 suspension rail, 27&frac12;&quot; long, sold separately.<br />\r\nThis furniture must be secured to the wall with the enclosed wall fastener if you choose to place the cabinet on the floor.<br />\r\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.<br />\r\nTo be completed with feet, legs or a toe kick if you choose to place the cabinet on the floor. Feet, legs and toe kick sold separately.<br />\r\nThe maximum load for a wall-hung cabinet depends on the wall material.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean with a damp cloth.<br />\r\nWipe clean with a dry cloth.<br />\r\nCheck regularly that all assembly fastenings are properly tightened and retighten when necessary.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 27 1/2 &quot;<br />\r\nDepth: 9 7/8 &quot;<br />\r\nHeight: 27 1/2 &quot;<br />\r\nMax load/shelf: 22 lb<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 70 cm<br />\r\nDepth: 25 cm<br />\r\nHeight: 70 cm<br />\r\nMax load/shelf: 10 kg<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Jon Karlsson</p>\r\n', 1, 1, 4),
(13, 'SEKTION', 79, 'sektion-wall-cabinet-with-doors-white__0296553_PE505069_S4.JPG', 2, '<ul>\r\n	<li>You can customize spacing as needed, because the shelves are adjustable.</li>\r\n	<li>Snap-on hinges can be mounted onto the door without screws, and you can easily remove the door for cleaning.</li>\r\n	<li>Sturdy frame construction, &frac34;&quot; thick.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Different wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.<br />\r\nThe hinge is adjustable in height, depth and width.<br />\r\nRequires a knob or a handle</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean with a damp cloth. Use only water or a non-abrasive detergent.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 24 &quot;<br />\r\nSystem, depth: 15 &quot;<br />\r\nDepth: 15 1/2 &quot;<br />\r\nFrame, height: 30 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 61.0 cm<br />\r\nSystem, depth: 37 cm<br />\r\nDepth: 39.3 cm<br />\r\nFrame, height: 76.2 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden</p>\r\n', 1, 1, 4),
(14, 'BRIMNES', 139, 'brimnes-glass-door-cabinet-white__0601759_PE681618_S4.JPG', 6, '<ul>\r\n	<li>With a glass-door cabinet, you can show off as well as protect your glassware or your favorite collection.</li>\r\n	<li>If you complete with cabinet lighting you get a nice light that shines through the glass shelves and creates a cozy atmosphere in the room.</li>\r\n	<li>You can customize your storage since the 10 glass shelves are adjustable.</li>\r\n	<li>The 2 stationary wooden shelves make the glass-door cabinet more stable.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>This furniture must be secured to the wall with the enclosed wall anchoring device.<br />\r\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.<br />\r\nHandle with care! A damaged edge or scratched surface can cause the glass to suddenly crack and/or break. Avoid collisions from the side - this is where the glass is most vulnerable.<br />\r\nCoordinates with other furniture in the BRIMNES series.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean using a damp cloth and a mild cleaner.<br />\r\nWipe dry with a clean cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 31 1/2 &quot;<br />\r\nDepth: 13 3/4 &quot;<br />\r\nHeight: 74 3/4 &quot;<br />\r\nMax load/shelf: 9 lb<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 80 cm<br />\r\nDepth: 35 cm<br />\r\nHeight: 190 cm<br />\r\nMax load/shelf: 4 kg<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>K Hagberg/M Hagberg</p>\r\n', 1, 1, 4),
(15, 'REGOLIT', 59.99, 'regolit-floor-lamp-with-led-bulb-white__62426_PE169128_S4.JPG', 11, '<ul>\r\n	<li>Can be hung over your coffee table, for example, by connecting to a standard wall outlet.</li>\r\n	<li>You can adjust the length of the bow as needed.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>LED light bulb included.<br />\r\nMay be completed with other lamps in the same series.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Dust the lamp with a dust cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Max.: 60 W<br />\r\nHeight: 92 &frac12; &quot;<br />\r\nShade diameter: 28 &quot;<br />\r\nCord length: 20 &#39; 8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Max.: 60 W<br />\r\nHeight: 235 cm<br />\r\nShade diameter: 70 cm<br />\r\nCord length: 630 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden</p>\r\n', 1, 1, 6),
(16, 'KNUBBIG', 17.99, 'knubbig-table-lamp-with-led-bulb-white__0138401_PE297736_S4.JPG', 16, '<ul>\r\n	<li>Gives a soft mood light.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>LED light bulb included.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean with a damp cloth.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Height: 7 &quot;<br />\r\nDiameter: 7 &quot;<br />\r\nCord length: 6 &#39; 7 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Height: 18 cm<br />\r\nDiameter: 18 cm<br />\r\nCord length: 2.0 m<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Michiko Nakata</p>\r\n', 1, 1, 6),
(17, 'LILLANGEN', 217, 'lillangen-sink-cabinet-door-end-units__0560820_PE662530_S4.JPG', 4, '<ul>\r\n	<li>Can be used as a shelf for a soap dish and tumbler, thanks to the depth of the frame.</li>\r\n	<li>The open shelves are perfect for perfume bottles or other things that you use frequently.</li>\r\n	<li>Adjustable feet make it possible to compensate for any irregularities in the floor.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Handle and hinges included.<br />\r\nStrainer and water-trap included.<br />\r\n1 adjustable shelf included.<br />\r\nTowel hanger, soap dish and tray in stainless steel included.<br />\r\nPlease note that the sink may be up to &frac34;&quot; wider than the cabinet to protect it from water leakage.<br />\r\nThis furniture must be secured to the wall with the enclosed wall anchoring device.<br />\r\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bathroom faucet is sold separately.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Sink cabinet with 1 door/end unit:<br />\r\nWipe clean using a damp cloth and a mild cleaner.<br />\r\n<br />\r\nLeg:<br />\r\nWipe clean using a damp cloth and a mild cleaner.<br />\r\n<br />\r\nSink cabinet with 1 door/end unit:<br />\r\nWipe dry with a clean cloth.<br />\r\n<br />\r\nLeg:<br />\r\nWipe dry with a clean cloth.<br />\r\n<br />\r\nSink cabinet with 1 door/end unit:<br />\r\nWet marks should always be dried off as soon as possible to stop moisture penetration.<br />\r\n<br />\r\nSink:<br />\r\nDo not use scouring powder, steel wool, hard or sharp tools which can scratch the surface of the sink.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Width: 24 &quot;<br />\r\nDepth: 16 1/8 &quot;<br />\r\nHeight: 36 1/4 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Width: 61 cm<br />\r\nDepth: 41 cm<br />\r\nHeight: 92 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>This product requires assembly</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Inma Bermudez/IKEA of Sweden</p>\r\n', 1, 1, 5),
(18, 'LATTSAM', 14.99, 'lattsam-baby-bath-green__0712337_PE728742_S4.JPG', 5, '<ul>\r\n	<li>Stands securely thanks to the slide protectors underneath.</li>\r\n	<li>Soft anti-slip protection at the bottom.</li>\r\n	<li>Made from harmless plastic, the same material used in baby bottles, disposable diapers and food boxes.</li>\r\n</ul>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Wipe clean with a soft cloth dampened with water and a mild dish detergent or soap, if necessary.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Length: 28 &quot;<br />\r\nWidth: 17 &quot;<br />\r\nHeight: 8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Length: 71 cm<br />\r\nWidth: 43 cm<br />\r\nHeight: 20 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Tina Christensen</p>\r\n', 1, 1, 5),
(19, 'UNDERLIG', 50, 'underlig-foam-mattress-for-junior-bed-white__0544819_PE655603_S4.JPG', 21, '<ul>\r\n	<li>The outer cover is easy to remove and is machine washable at 140&deg;F (Hot).</li>\r\n	<li>Your child can choose the comfort they prefer since the polyurethane foam has two different surfaces. The egg-shaped pattern has a medium-firm comfort, and the smooth side has a firmer comfort.</li>\r\n	<li>A fixed inner cover increases the fire safety of the mattress and makes it easy to put the outer cover back on after washing. It also prevents children from putting mattress contents in their mouth.</li>\r\n	<li>The zipper of this mattress has a little pocket where you can hide the pull tab from the hands of curious children.</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Wash the cover inside out with the zipper closed.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Non-removable cover<br />\r\nDo not wash.<br />\r\nDo not bleach.<br />\r\nDo not tumble dry.<br />\r\nDo not iron.<br />\r\nDo not dry clean.<br />\r\nWipe clean with a damp cloth.<br />\r\n<br />\r\nRemovable cover<br />\r\nMachine wash very hot, normal cycle.<br />\r\nDo not bleach.<br />\r\nDo not tumble dry.<br />\r\nIron medium temperature, max 300&deg;F/150&deg;C.<br />\r\nDo not dry clean.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Length: 63 &quot;<br />\r\nWidth: 27 1/2 &quot;<br />\r\nThickness: 3 7/8 &quot;<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Length: 160 cm<br />\r\nWidth: 70 cm<br />\r\nThickness: 10 cm<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>Synn&ouml;ve Mork</p>\r\n', 1, 1, 7),
(20, 'LEN', 24.99, 'len-nursing-pillow-gray__0594060_PE675480_S4.JPG', 101, '<ul>\r\n	<li>A safe and comfortable position for you and your baby is important, especially when nursing or bottle feeding. This nursing pillow lifts your baby, which reduces the load on shoulders, arms and backs.</li>\r\n	<li>A supportive pillow for you and your baby that can be used from the first feeding until it&rsquo;s time for them to learn to walk on their own &ndash; and all the cozy moments in between.</li>\r\n	<li>The nursing pillow is elastic, smart and flexible. It also stays in place even if you need to move around a bit.</li>\r\n	<li>The cover is made from sustainably grown cotton and lyocell &ndash; soft and natural materials that feel comfortable against your child&#39;s skin.</li>\r\n	<li>The soft filling comprises of recycled PET bottles â€’ comfortable for both you and your child, and good for the environment.</li>\r\n	<li>Easy to keep clean since both pillow and cover can be removed and machine washed (140&deg;F, hot).</li>\r\n</ul>\r\n\r\n<p>Good to know</p>\r\n\r\n<p>Never leave your child unattended with the nursing pillow.<br />\r\nRecommended for all ages.</p>\r\n\r\n<p>Care instructions</p>\r\n\r\n<p>Pillow<br />\r\nMachine wash very hot, normal cycle.<br />\r\nDo not bleach.<br />\r\nTumble dry, medium, normal cycle.<br />\r\nDo not iron.<br />\r\nDo not dry clean.<br />\r\n<br />\r\nPillow cover<br />\r\nShrinkage maximum 4%.<br />\r\nMachine wash very hot, normal cycle.<br />\r\nDo not bleach.<br />\r\nTumble dry, low, normal cycle.<br />\r\nIron high.<br />\r\nDo not dry clean.</p>\r\n\r\n<p>Product dimensions</p>\r\n\r\n<p>Length: 23 5/8 &quot;<br />\r\nWidth: 19 5/8 &quot;<br />\r\nHeight: 7 1/8 &quot;<br />\r\nFilling weight: 36.3 oz<br />\r\nTotal weight: 39.7 oz<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Length: 60 cm<br />\r\nWidth: 50 cm<br />\r\nHeight: 18 cm<br />\r\nFilling weight: 1030 g<br />\r\nTotal weight: 1125 g<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Designer:</p>\r\n\r\n<p>IKEA of Sweden</p>\r\n', 1, 1, 7),
(21, 'AMADEUS', 215, 'AMADEUS_AMADEUS_0000001094022_LIVING_ROOM_FURNITURE.jpg', 5, '<p>AMADEUS stylish coffee table designed by UMA give your living space a heritage look. Soft grey painted turning legs &amp; frame, plus oval edge&rsquo;s profile well combine with light natural honey oak top for a classical beauty. The top made of solid oak with PU coating sealed help the table more durable, easy to clean and less scratch. Practical go through drawer &amp; open bottom shelf are wonderful places for you to keep little thing of your needs.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>FEATURES</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Oak/ Acacia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Grey</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 120 cm, Width 60 cm, Height 45 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1094022</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>Julia Gamborg Nielsen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>Vietnam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nGOOD TO KNOW</p>\r\n\r\n<p>Place in a dry area and avoid direct sunlight.&nbsp;Always wipe away any moisture and liquid immediately with a dry soft cloth.&nbsp;Be careful when moving the product or putting sharp objects to avoid scratches.&nbsp;Do not place hot food directly from stove top/oven and cold drinks on the table top. This can cause either heat damage or humidity damage to your furniture.&nbsp;You should use coasters, table cloths, etc. A glass top is ideal to protect the table. Use a damp soft cloth to clean the furniture.</p>\r\n', 1, 3, 1),
(22, 'HUNG VUONG', 215, 'HUNG_VUONG_HUNG_VUONG_0000001088670_LIVING_ROOM_FURNITURE_-_Coffee_Tables_and_Side_Tables_13566_20180315025329244999.jpg', 5, '<p>Your living room cannot complete without a coffee table. Based on the overall design, you can choose the suitable one for your home. The HUNG VUONG coffee table from UMA is an ideal choice for those who love simple and modern style. Constructed of acacia and metal, the product has a sturdy frame and legs. With 100cm length, it provides you with room for magazines, mail and of course your cup of coffee. It&#39;s better to match this table with sofas and stools in the same collection.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>FEATURES</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Acacia/ Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Brown/ Red</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 100 cm, Width 60 cm, Height 42 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1088670</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>Julia Gamborg Nielsen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>Vietnam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 1),
(23, 'FIGARO', 34, 'FIGARO_FIGARO_0000000004547_HOME_OFFICE_and_STUDY_-_Desks_1488_20170424044402360916.jpg', 3, '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Birch Plywood</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Dark Wood</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Depth 38 cm, Width 75 cm, Height 21 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>4547</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 1),
(24, 'TREVOR', 129, 'TREVOR_TREVOR_0000000004159_LIVING_ROOM_-_Coffee_Tables_and_Side_Tables_637_20161005020005574026.jpg', 3, '<p>Coffee table TREVOR with metal legs from UMA Furniture is a a modern white piece of furniture which helps decorate your living room in scandinavian style.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>MDF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>White</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 120 cm, Width 60 cm, Height 39 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>4159</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 3, 1),
(25, 'CONNEMARA', 193.5, 'CONNEMARA_CONNEMARA_0000001081046_LIVING_ROOM_-_Soft_Stools_12803_20171019033227647839.jpg', 3, '<p>Sophisticated design made of polyester in grey that brings a luxurious look to your living room. Walnut legs in warm natural color and solid hardwood frame. Best matches the&nbsp;CONNEMARA Sofa&nbsp;to create an ideal chaise lounge.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOOD TO KNOW </strong></p>\r\n\r\n<p>- Should not standing or jumping on the stool, that will make bad affects to spring or frame system and cause life-time of product shorter.</p>\r\n\r\n<p>- For heavy cleaning, the best way is using cleaning service. Or you can do by yourself base on some small tips.</p>\r\n\r\n<p>- Try out a few techniques before choosing the one that is right for your belongings. Test your solution on an inconspicuous area first.</p>\r\n\r\n<p>- Allowing it to dry naturally. Use hairdryer can harm your product (special products made of leather, PU, PVC,&hellip;).</p>\r\n\r\n<p>- Take out the cover of cushion and wash. The other part which cannot take out, we can clean by vacuum cleaner.</p>\r\n\r\n<p>- Using baby wipes to clean dirty area. Or you can use soapy water (a little mild laundry detergent and warm water, mixed well to create suds) onto a cloth and rub it lightly.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Polyester</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Grey</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Depth 85 cm, Width 85 cm, Height 40 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1081046</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>Joachim Poirier</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>Vietnam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 2),
(26, 'BOHEMIA', 279, 'BOHEMIA_BOHEMIA_0000001076882_LIVING_ROOM_-_Sofa_Beds_12387_20171025073907932930.jpg', 4, '<p>A compact function of sofa and bed to offer you restful relaxing moments. This contemporary Scandinavian styled item in dark blue can be converted easily into a bed whenever you want. Designed for your comfort with a soft polyester upholstered part, this BOHEMIA &ldquo;click-clack&rdquo; sofa bed is playing 2 roles to release the space and save your money efficiently. This is the ideal choice for small places especially when your friend comes overnight!</p>\r\n\r\n<p><strong>GOOD TO KNOW</strong></p>\r\n\r\n<p>&bull; Do not stand or jump on sofa</p>\r\n\r\n<p>&bull; Stand in the middle and in front of sofa bed to extend or fold it.</p>\r\n\r\n<p>&bull; Place sofa in a dry area and avoid direct sunlight.</p>\r\n\r\n<p>&bull; Use a sofa cleaning service or wash it by yourself as instructed below:</p>\r\n\r\n<p>- Remove the sofa cover to wash (if possible).</p>\r\n\r\n<p>- For the covers that cannot be removed, use a vacuum cleaner to remove the dust.</p>\r\n\r\n<p>- For small dirt, use a soft cloth with a little of mild detergent liquid to wipe the dirt and wipe it again with a damp soft cloth.</p>\r\n\r\n<p>- Let the sofa dry naturally. Do not dry the sofa in direct sunlight or with a hair dryer.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Wood/ Plywood/ Polyester</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Dark Blue</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 188 cm, Depth 78 cm, Height 89 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1076882</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 2),
(27, 'ALBANY', 331.5, 'ALBANY_ALBANY_0000001089127_BEDROOM_FURNITURE_-_Beds_13611_20180613090409455698.jpg', 6, '<p>Designed in contemporary Asian style, ALBANY bed is a perfect choice for your bedroom. The bed is made of high quality oak wood and covered by dark brown veneer layer. The legs of the bed are firmly made of big and hard oak plate to ensure the durability of the product. There are two choices for you i.e King size and Queen size &ndash; both are available in the beautiful and subtle ALBANY collection.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Oak veneer/ Oak/ MDF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Dark Wood</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 200 cm, Width 160 cm, Height 90 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1089127</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>Vietnam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 3),
(28, 'ATTILA', 513, 'ATTILA_ATTILA_0000001025064_BEDROOM_-_Beds_7205_20160826054005284032.jpg', 12, '<p>The ATTILA bed comes in natural oak with solid oak reinforcement along the sides of the bed. Large storage boxes on wheels under the bed give you a lot of extra storage space.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>FEATURES</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Oak/ MDF/ Oak Veneer</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 200 cm, Width 160 cm, Height 35/ 90 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1025064</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>Joachim Poirier</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 3),
(29, 'YOKOHAMA', 172, 'YOKOHAMA_YOKOHAMA_0000000004288_BEDROOM_-_Beds_216_20160928075839828753.jpg', 3, '<p>When it comes to choosing a bed, there&#39;s many aspects to consider. Product material is one of the most important things. The YOKOHAMA bed has a soft and smooth surface which is constructed of polyester. It also includes 6 wooden legs. The product is safe for your health as well as provides you convenience and comfort during the whole night long. Featuring a simple and modern design, it fits any bedroom decoration. The bed is available in several sizes and colors.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Polyester</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Light Beige</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 195 cm, Width 140 cm, Height 35 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>4288</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 3),
(30, 'VAGABOND', 116, 'VAGABOND_VAGABOND_0000001095197_HOME_OFFICE_STUDY_-_Desks_14218_20181127062715724524.jpg', 4, '<p>This desk from VAGABOND storage system is designed in simple Contemporary Scandinavian style. It can be sold separately and perfectly assembled to various types of furniture with many sizes. Feel free to make your own functional furniture, or choose from 5 combos for common usage. The product with high endurance is easy to install and restructure, especially suitable for home office and bedroom which have small space.</p>\r\n\r\n<p><strong>GOOD TO KNOW</strong></p>\r\n\r\n<p>&bull; Wipe the surface with a clean cloth and mild cleaner or water</p>\r\n\r\n<p>&bull; Wipe dry with a clean cloth</p>\r\n\r\n<p>&bull; Use underlay for hot items</p>\r\n\r\n<p>&bull; Check occasionally that brackets and screws are tighten</p>\r\n\r\n<p>&bull; Max Load for Shelf: 80kg</p>\r\n\r\n<p>&bull; Max Load for Drawer: 25kg</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>MFC/ Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Brown/ Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Depth 46 cm, Width 79 cm, Height 182 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1095197</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 4),
(31, 'COBRA', 129, 'COBRA_COBRA_0000001063936_LIVING_ROOM_-_TV_and_Media_Furniture_11092_20161122083619947721.jpg', 3, '<p>Keep your storage simple with the COBRA TV bench, which is made of MDF with oak veneer cover. The product is designed with several compartments, not just for your TV but also for other equipments such as hi-tech boxes, DVD player and so on. Featuring a simple and rustic look, it may fit any interior design.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Oak/MDF/ Partical Board/ Oak Veneer</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Depth 40 cm, Width 50 cm, Height 50 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1063936</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>Joachim Poirier</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 4),
(32, 'Table Lamp CONCERT', 16, 'CONCERT_CONCERT_0000001063042_LIGHTING_-_Table_and_Desk_Lamps_11003_20170328025800779879.jpg', 4, '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Height 34 cm, Diameter 14 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1063042</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 6),
(33, 'Table Lamp ELLIOT', 73, 'ELLIOT_ELLIOT_0000001063264_LIGHTING_-_Table_and_Desk_Lamps_11025_20161223080420889656.jpg', 24, '<p>Don&#39;t worry if your don&#39;t know where to buy unique shape table lamp in Vietnam. Come to UMA Furniture and pick modern table lamp ELLIOT and you will be pleased.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>White</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 42 cm, Width 33 cm, Height 55~65 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1063264</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 6),
(34, 'Table Lamp CAPITOL', 15, 'CAPITOL_CAPITOL_0000001063806_LIGHTING_-_Table_and_Desk_Lamps_11079_20170103024519524499.jpg', 21, '<p>White table lamp CAPITOL is very special because it is made by ceramic. This UMA small table lamp will bring warmth to your bedroom with a classic feeling.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Ceramic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>White</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Height 29 cm, Diameter 20 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1063806</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 6),
(35, 'MUPPET', 15, 'MUPPET_MUPPET_0000001063875_TRAVEL_AND_LEISURE_-_Accessories_11086_20170606094124473595.jpg', 2, '<p>The MUPPET neck pillow is a recommended product for your trip. It is made of lycra and filled by nanoparticle foam. The pillow is smooth, soft and absorbent, providing your comfort during the journey.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Lycra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Grey</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 32 cm, Depth 8 cm, Width 30 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1063875</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 7),
(36, 'Cushion KEIRA', 4, 'KEIRA_KEIRA_0000001050448_TEXTILE_and_CUSHIONS_-_Decoration_Cushion_and_Covers_9743_20160829071239919341.jpg', 3, '<p>Cover : 100% poly 3 layers, fire resistant&nbsp;</p>\r\n\r\n<p>Inner: Fiber 100% poly ( included inside )</p>\r\n\r\n<p><strong>GOOD TO KNOW</strong></p>\r\n\r\n<p>- Use a soft cloth with water or dishwashing liquid to clean</p>\r\n\r\n<p>- Do not soak in water or chemical liquid in long time</p>\r\n\r\n<p>- Store in dry place, avoid strong heat.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>FEATURES</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Polyester</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Brown</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Length 40 cm, Width 40 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Article Number</td>\r\n			<td>1050448</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Designed by</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 3, 7);
INSERT INTO `tbl_products` (`id`, `pro_name`, `pro_price`, `pro_img`, `pro_quantity`, `pro_description`, `pro_status`, `brd_id`, `cat_id`) VALUES
(37, 'Atlantic Poker', 686, 'Atlantic+Poker+And+Bumper+Pool+Table.jpg', 3, '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Weights &amp; Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>48&#39;&#39; L x 48&#39;&#39; W x 31&#39;&#39; H</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Product Weight</td>\r\n			<td>160&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>Poker; Bumper Pool</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shape</td>\r\n			<td>Round</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Finish</td>\r\n			<td>Tobacco</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cup Holders</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Cup Holders</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Drawer(s) Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Drawers</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seating Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wheels Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Convertible Dining Table</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Compatible Chair Part Number</td>\r\n			<td>100872</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Poker Chips Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Origin</td>\r\n			<td>China</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 2, 1),
(38, 'Campbellton24', 110, 'Campbellton+County+Coastal+2422+Bar+Stool.jpg', 2, '<p>With its distressed beige bent rattan frame and round, black-and-white-woven acrylic seat, this 24&rdquo; bar stool is perfect for your coastal-inspired ensemble. For a casual, on-the-go dining space, pull three of these stools up to your kitchen island, then top your marble countertop with black cotton placemats, sailboat salt and pepper shakers, and a bowl of fresh fruit for a snack on the way out the door. Or, for a great place to have a cold drink on summer weekends, arrange a few of these chairs around a hightop wicker pub table on the back deck. Set out a carafe of freshly-squeezed lemonade and hang a sail shade above to cool off guests in nautical style.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Weights &amp; Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>24&#39;&#39; H x 15&#39;&#39; W x 15&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat</td>\r\n			<td>14.5&#39;&#39; W x 14.5&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Height - Floor to Seat</td>\r\n			<td>24&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Style</td>\r\n			<td>Round</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Stools Included</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Base Color</td>\r\n			<td>Beige</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Color</td>\r\n			<td>Black/White</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frame Material</td>\r\n			<td>Wicker/Rattan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frame Material Details</td>\r\n			<td>Rattan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Material</td>\r\n			<td>Wicker/Rattan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Material Details</td>\r\n			<td>Rattan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Upholstered</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Back Type</td>\r\n			<td>Backless</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Leg/Base Type</td>\r\n			<td>4 legs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Adjustable Height</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Swivel</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Footrest Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Outdoor Use</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Origin</td>\r\n			<td>Indonesia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Care</td>\r\n			<td>Wipe clean with a dampened cloth</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Supplier Intended &amp; Approved Use</td>\r\n			<td>Residential Use</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 2, 2),
(39, 'Delmonte Lounge', 334.99, 'Delmonte+Lounge+Chair.jpg', 2, '<p>Inspired design sits pretty, rounding out a plush, cushioned seat in velvet. A charming complement to your Delmonte Metal Frame Lounge Chair, this Chair makes a comfortable friend for your console table or sofa.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Weights &amp; Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>26.77&#39;&#39; H x 30.91&#39;&#39; W x 29&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat</td>\r\n			<td>18.7&#39;&#39; H x 22&#39;&#39; W x 22&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Product Weight</td>\r\n			<td>33&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arm Height - Floor to Arm</td>\r\n			<td>26.77&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Upholstered</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Upholstery Material</td>\r\n			<td>Velvet</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Fill Material</td>\r\n			<td>Foam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Back Fill Material</td>\r\n			<td>Foam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Back Type</td>\r\n			<td>Tight back</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight Capacity</td>\r\n			<td>250 Pounds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frame Material</td>\r\n			<td>Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frame Material Details</td>\r\n			<td>Stainless steel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arms Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arm Type</td>\r\n			<td>Round Arms</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arm Material</td>\r\n			<td>Fabric</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ottoman Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Leg Color</td>\r\n			<td>Gold</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Swivel</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Construction</td>\r\n			<td>Web Suspension</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Toss Pillows Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Origin</td>\r\n			<td>China</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Care</td>\r\n			<td>Do not place in direct sunlight or near a heat source, dust and vacuum regularly or wipe with a dry cloth</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Supplier Intended &amp; Approved Use</td>\r\n			<td>Residential Use; Non Residential Use</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Chairs Included</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 2, 2),
(40, 'Matheney', 96.68, 'Matheney+Platform+Bed.jpg', 1, '<p>The 1950s were a time of classic lines, simple tastes and solid colors, which we&rsquo;ve captured here in this stunningly minimalist bed, made from sturdy metal. No matter your style, this bed is designed to fit your bedroom or provide a fun place to sleep for kids big or small. Liven it up with a colorful duvet and throw pillows, hang a decorative mesh canopy on top to add sophistication, or simply use sheets in solid colors and lined patterns for the full vintage effect. No foundation or box spring needed! The metal slats, center rail, and four metal legs offer all the support you need and plenty of comfort all night long.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Weights &amp; Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Twin Size</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46&#39;&#39; H x 42&#39;&#39; W x 78&#39;&#39; D</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Product Weight</td>\r\n			<td>36.5&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Footboard</td>\r\n			<td>42&#39;&#39; W x 25.5&#39;&#39; H</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headboard Width - Side to Side</td>\r\n			<td>42&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Full Size</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>46&#39;&#39; H x 57&#39;&#39; W x 78&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Product Weight</td>\r\n			<td>49&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Footboard</td>\r\n			<td>42&#39;&#39; W x 57&#39;&#39; H</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headboard Width - Side to Side</td>\r\n			<td>57&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Queen Size</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>46&#39;&#39; H x 63&#39;&#39; W x 83.5&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Product Weight</td>\r\n			<td>55&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Footboard</td>\r\n			<td>42&#39;&#39; W x 63&#39;&#39; H</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headboard Width - Side to Side</td>\r\n			<td>63&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Other Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headboard</td>\r\n			<td>46&#39;&#39; H</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bottom of Side Rail to Floor</td>\r\n			<td>6.5&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frame Material</td>\r\n			<td>Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Finished Back</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Box Spring Required</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Box Spring Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slats Required</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slats Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Slats Included (Full, Queen Size)</td>\r\n			<td>14</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Slats Included (Twin Size)</td>\r\n			<td>16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Distance between the Slats (Twin, Full, Queen Size)</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Center Support Legs</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Center Support Legs</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight Capacity (Twin Size)</td>\r\n			<td>225 Pounds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight Capacity (Full Size)</td>\r\n			<td>450 Pounds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight Capacity (Queen Size)</td>\r\n			<td>500 Pounds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mattress Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Recommended Mattress Height (Twin Size)</td>\r\n			<td>10 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headboard Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headboard Type</td>\r\n			<td>Open-Frame</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Footboard Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Care</td>\r\n			<td>Wipes clean with damp cloth</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Manufacture</td>\r\n			<td>China</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 2, 3),
(41, 'ET-RWS', 2160, '60+x+3022+Walk-in+Soaking+Bathtub.jpg', 9, '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Weights &amp; Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>60&#39;&#39; L x 30&#39;&#39; W x 36&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sitting Area Width - Front to Back</td>\r\n			<td>21.5&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Soaking Depth</td>\r\n			<td>29&#39;&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Product Weight</td>\r\n			<td>210&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bath Therapy Type</td>\r\n			<td>Soaking</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Finish</td>\r\n			<td>White</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Fiberglass</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shape</td>\r\n			<td>Rectangular</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tub Design</td>\r\n			<td>Back to Wall</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Installation</td>\r\n			<td>Walk-in</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overflow Drain</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Faucet Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Handles Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Handles</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seat Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Drain Assembly Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Drain Finish</td>\r\n			<td>Chrome</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Valve Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>120 Volts</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity</td>\r\n			<td>75 Gallons</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Heater Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hand Shower Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Feet Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slip Resistant</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Origin</td>\r\n			<td>United States</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 2, 5),
(42, 'Angel 31', 129.99, 'Angel+3122+Table+Lamp.jpg', 4, '<p>This Angel Ceramic 31&quot; Table Lamp with a blue/white base constructed from high quality of glass. The shade has a drum shape with a gorgeous white color. The shade is made from linen. It has 1 light with a downlight direction. This table lamp will give a classic design that can be displayed in your living spaces to show your great taste in style.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Weights &amp; Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>31&#39;&#39; H x 18&#39;&#39; W x 18&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Base</td>\r\n			<td>31&#39;&#39; H x 7&#39;&#39; W x 7&#39;&#39; D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shade</td>\r\n			<td>12&#39;&#39; D x 17&#39;&#39; W x 11.5&#39;&#39; H</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Weight</td>\r\n			<td>7.7&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Type</td>\r\n			<td>Standard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Base Color</td>\r\n			<td>Blue/White</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Base Material</td>\r\n			<td>Ceramic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Lights</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>110 Volts</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimmable</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bulb Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bulb Not Included But Required</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Recommended Bulb Shape</td>\r\n			<td>Standard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Recommended Bulb Shape Code</td>\r\n			<td>A21</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maximum Wattage (per Bulb)</td>\r\n			<td>150 Watts</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bulb Base</td>\r\n			<td>E26/Medium (Standard)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cord Length</td>\r\n			<td>72 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dry, Damp or Wet Location Listed</td>\r\n			<td>Dry</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Origin</td>\r\n			<td>China</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Switch Type</td>\r\n			<td>3-Way</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Light Direction</td>\r\n			<td>Down</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Care</td>\r\n			<td>Wipe clean with a dry cloth</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shade Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shade Color</td>\r\n			<td>Ivory</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shade Material</td>\r\n			<td>Linen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shade Shape</td>\r\n			<td>Drum</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Supplier Intended &amp; Approved Use</td>\r\n			<td>Residential Use</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 2, 6),
(43, 'Floral', 26.99, 'Floral+Throw+Pillow.jpg', 8, '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Weights &amp; Dimensions</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall</td>\r\n			<td>16&#39;&#39; H x 16&#39;&#39; W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Overall Product Weight</td>\r\n			<td>1.75&nbsp;lb.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Type</td>\r\n			<td>Pillow Cover &amp; Insert</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pillow Type</td>\r\n			<td>Throw Pillow</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cover Material</td>\r\n			<td>Polyester/Polyester blend</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cover Material Details</td>\r\n			<td>100% Polyester</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Insert Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fill Material</td>\r\n			<td>Down/Feather</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shape</td>\r\n			<td>Round</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Floral / Flower</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Location</td>\r\n			<td>Indoor Use Only</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Removable Cover</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Closure Type</td>\r\n			<td>Zipper</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Reversible</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Reverse Side Pattern</td>\r\n			<td>Solid Color</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Washing Method</td>\r\n			<td>Hand wash</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Origin</td>\r\n			<td>India</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Reverse Side Material</td>\r\n			<td>Synthetic</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 2, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_staffs`
--

CREATE TABLE `tbl_staffs` (
  `id` int(11) NOT NULL,
  `stf_name` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `stf_role` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `stf_phone` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `stf_salary` int(11) NOT NULL,
  `stf_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_staffs`
--

INSERT INTO `tbl_staffs` (`id`, `stf_name`, `stf_role`, `stf_phone`, `stf_salary`, `stf_status`) VALUES
(1, 'Viet Phuong Bui', 'Fullstack Dev', '0964603264', 5000, 1),
(2, 'Xuan Hanh Tran', 'Front-end Dev', '0368551024', 4000, 1),
(3, 'Viet Tuan Ha', 'Front-end Dev', '0334842257', 4000, 1),
(4, 'Duc Anh Le', 'Designer', '0977059236', 4000, 1),
(5, 'Trong Nguyen Do', 'Back-end Dev', '0985662322', 4000, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
