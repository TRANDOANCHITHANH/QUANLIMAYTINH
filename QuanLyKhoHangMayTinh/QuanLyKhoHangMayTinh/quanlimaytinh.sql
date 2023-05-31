-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2023 lúc 10:16 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlimaytinh`
--
CREATE DATABASE IF NOT EXISTS `quanlimaytinh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quanlimaytinh`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `fullName` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`fullName`, `userName`, `password`, `role`, `status`, `email`) VALUES
('Admin', 'admin', '$2a$12$aERUmgPPMDu2..HabZ9luu49/B../ck9zLUPKKyU3yy1xtwbeOpH2', 'Admin', 1, 'tranthienst91@gmail.com'),
('Trịnh Nguyễn Nhựt Qui', 'nguyenqui35', '$2a$12$9ORRnA3lzsonFqhAuUNh7ulmaS0I7AcorRO651r4puwLft7/nRsWu', 'Nhân viên nhập', 1, 'nguyenqui35@gmail.com'),
('Nguyễn Huỳnh Hữu Tài', 'tainguyen35', '$2a$12$MxC7BZlnW390dcOSk0jO/em8MwEGekp0SdgewdEoV7p5tIuVuHhf2', 'Quản lý kho', 1, 'tainguyen35@gmail.com'),
('Trần Thành', 'tranthanh', '$2a$12$clJxuP8nZxE8VgGl3.cvVOIJoKxAUnVwgNQjpwRp8Cui/L3.7CQom', 'Admin', 1, 'tranchithanh0404@gmail.com'),
('Nguyễn Trọng Qúy', 'trongquy35', '$2a$12$XJW2bPDW6Fr3Q8FD0RqPn.BdGnri91B6Lb0LjnJoLBeAP/odskUYu', 'Nhân viên xuất', 1, 'trongquy35@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

DROP TABLE IF EXISTS `chitietphieunhap`;
CREATE TABLE IF NOT EXISTS `chitietphieunhap` (
  `maPhieu` varchar(50) NOT NULL,
  `maMay` varchar(50) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL,
  PRIMARY KEY (`maPhieu`,`maMay`),
  KEY `FK_ChiTietPhieuNhap_MayTinh` (`maMay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`maPhieu`, `maMay`, `soLuong`, `donGia`) VALUES
('PN10', 'LP28', 10, 21000000),
('PN11', 'LP20', 5, 20790000),
('PN11', 'LP21', 7, 25990000),
('PN12', 'LP14', 5, 22490000),
('PN12', 'LP21', 5, 25990000),
('PN13', 'LP14', 4, 22490000),
('PN13', 'LP20', 3, 20790000),
('PN13', 'LP28', 3, 21000000),
('PN14', 'LP15', 20, 25190000),
('PN14', 'LP16', 15, 22990000),
('PN14', 'LP17', 15, 23190000),
('PN14', 'LP18', 15, 24990000),
('PN14', 'LP19', 15, 19490000),
('PN14', 'LP20', 15, 20790000),
('PN15', 'LP13', 20, 9990000),
('PN16', 'LP28', 5, 21000000),
('PN39', 'LP16', 10, 22990000),
('PN40', 'LP15', 2, 25190000),
('PN41', 'LP17', 2, 23190000),
('PN41', 'LP22', 2, 23490000),
('PN42', 'LP21', 4, 25990000),
('PN43', 'LP14', 7, 22490000),
('PN44', 'LP5', 4, 19290000),
('PN7', 'PC1', 4, 7090000),
('PN7', 'PC7', 4, 11200000),
('PN8', 'LP18', 2, 24990000),
('PN8', 'LP19', 2, 19490000),
('PN9', 'PC9', 20, 20999000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuat`
--

DROP TABLE IF EXISTS `chitietphieuxuat`;
CREATE TABLE IF NOT EXISTS `chitietphieuxuat` (
  `maPhieu` varchar(50) NOT NULL,
  `maMay` varchar(50) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL,
  PRIMARY KEY (`maPhieu`,`maMay`),
  KEY `FK_ChiTietPhieuXuat_MayTinh` (`maMay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`maPhieu`, `maMay`, `soLuong`, `donGia`) VALUES
('PX12', 'LP20', 1, 20790000),
('PX12', 'LP6', 1, 17490000),
('PX12', 'PC1', 3, 7090000),
('PX13', 'LP18', 1, 24990000),
('PX13', 'LP5', 2, 19290000),
('PX13', 'LP6', 1, 17490000),
('PX13', 'PC1', 5, 7090000),
('PX14', 'LP20', 1, 20790000),
('PX14', 'LP24', 1, 21490000),
('PX14', 'LP8', 1, 18390000),
('PX14', 'PC2', 1, 8290000),
('PX15', 'LP17', 1, 23190000),
('PX15', 'LP20', 1, 20790000),
('PX15', 'LP5', 1, 19290000),
('PX15', 'LP9', 1, 16490000),
('PX16', 'LP14', 4, 22490000),
('PX16', 'LP20', 1, 20790000),
('PX16', 'LP21', 1, 25990000),
('PX17', 'LP21', 2, 25990000),
('PX17', 'LP4', 4, 10690000),
('PX18', 'LP16', 4, 22990000),
('PX18', 'LP8', 2, 18390000),
('PX19', 'LP18', 1, 24990000),
('PX19', 'LP23', 1, 15690000),
('PX19', 'PC06', 1, 9690000),
('PX20', 'LP6', 2, 17490000),
('PX20', 'PC06', 1, 9690000),
('PX20', 'PC3', 2, 8990000),
('PX21', 'LP23', 1, 15690000),
('PX21', 'LP7', 1, 17490000),
('PX21', 'PC06', 2, 9690000),
('PX22', 'LP16', 3, 22990000),
('PX22', 'PC4', 4, 11990000),
('PX23', 'LP23', 1, 15690000),
('PX23', 'PC06', 1, 9690000),
('PX23', 'PC1', 1, 7090000),
('PX24', 'LP19', 1, 19490000),
('PX24', 'LP8', 1, 18390000),
('PX24', 'LP9', 1, 16490000),
('PX24', 'PC3', 2, 8990000),
('PX25', 'LP24', 4, 21490000),
('PX25', 'LP4', 5, 10690000),
('PX25', 'PC7', 5, 11200000),
('PX26', 'LP8', 5, 18390000),
('PX26', 'PC4', 7, 11990000),
('PX27', 'LP16', 5, 22990000),
('PX27', 'LP23', 7, 15690000),
('PX27', 'LP6', 5, 17490000),
('PX28', 'LP21', 5, 25990000),
('PX28', 'LP4', 7, 10690000),
('PX29', 'LP14', 4, 22490000),
('PX29', 'LP20', 3, 20790000),
('PX29', 'LP28', 3, 21000000),
('PX30', 'LP3', 5, 15000000),
('PX30', 'LP4', 5, 10690000),
('PX30', 'LP6', 5, 17490000),
('PX31', 'LP16', 5, 22990000),
('PX31', 'LP17', 5, 23190000),
('PX31', 'LP18', 5, 24990000),
('PX31', 'LP19', 5, 19490000),
('PX32', 'LP17', 3, 23190000),
('PX32', 'LP18', 3, 24990000),
('PX32', 'LP19', 3, 19490000),
('PX33', 'PC06', 5, 9690000),
('PX33', 'PC2', 5, 8290000),
('PX33', 'PC3', 5, 8990000),
('PX33', 'PC4', 5, 11990000),
('PX33', 'PC5', 5, 9190000),
('PX34', 'LP23', 5, 15690000),
('PX34', 'LP24', 5, 21490000),
('PX34', 'PC9', 5, 20999000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maytinh`
--

DROP TABLE IF EXISTS `maytinh`;
CREATE TABLE IF NOT EXISTS `maytinh` (
  `maMay` varchar(50) NOT NULL,
  `tenMay` varchar(100) DEFAULT NULL,
  `soLuong` int(11) NOT NULL DEFAULT 0,
  `tenCpu` varchar(50) NOT NULL DEFAULT '0',
  `ram` varchar(50) NOT NULL DEFAULT '0',
  `cardManHInh` varchar(50) DEFAULT NULL,
  `gia` double NOT NULL DEFAULT 0,
  `mainBoard` varchar(50) DEFAULT NULL,
  `congSuatNguon` int(11) DEFAULT NULL,
  `loaiMay` varchar(50) DEFAULT NULL,
  `rom` varchar(50) DEFAULT NULL,
  `kichThuocMan` double DEFAULT NULL,
  `dungLuongPin` varchar(50) DEFAULT NULL,
  `xuatXu` varchar(50) DEFAULT NULL,
  `trangThai` int(11) DEFAULT NULL,
  PRIMARY KEY (`maMay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `maytinh`
--

INSERT INTO `maytinh` (`maMay`, `tenMay`, `soLuong`, `tenCpu`, `ram`, `cardManHInh`, `gia`, `mainBoard`, `congSuatNguon`, `loaiMay`, `rom`, `kichThuocMan`, `dungLuongPin`, `xuatXu`, `trangThai`) VALUES
('LP10', 'Laptop Lenovo IdeaPad Gaming 3', 36, 'Intel Core i5 12500H', '16 GB', 'NVIDIA GeForce RTX 3050', 23490000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 0),
('LP12', 'Laptop MSI Modern 14 B11MOU-1028VN', 23, 'Intel Core i3 115G4', '8 GB', 'Intel UHD Graphics', 13090000, NULL, NULL, 'Laptop', '256 GB', 14, '3 Cell', 'Trung Quốc', 0),
('LP13', 'Laptop HP 15s-fq2663TU', 20, 'Intel Core i3 1115G4', '4 GB', 'Intel UHD Graphics', 9990000, NULL, NULL, 'Laptop', '256 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP14', 'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 15, 'Intel Core i5 12500H', '16 GB', 'Intel Iris Xe Graphics', 22490000, NULL, NULL, 'Laptop', '512 GB', 16, '4 Cell', 'Trung Quốc', 1),
('LP15', 'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 20, 'Intel Core i7 12700H', '16 GB', 'Intel Iris Xe Graphics', 25190000, NULL, NULL, 'Laptop', '512 GB', 16, '75 Wh', 'Trung Quốc', 1),
('LP16', 'Laptop Acer Nitro Gaming AN515', 15, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce RTX 3050', 22990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell ', 'Trung Quốc', 1),
('LP17', 'Laptop MSI Gaming Katana GF66 12U', 15, 'Intel Core i5 12450H', '8 GB', 'Intel UHD Graphics', 23190000, NULL, NULL, 'Laptop', '512 GB', 15.6, '53.5 Wh', 'Trung Quốc', 1),
('LP18', 'Laptop Asus TUF Gaming FX517ZC', 15, 'Intel Core i5 12450H', '8 GB', 'NVIDIA GeForce RTX 3050', 24990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 1),
('LP19', 'Laptop HP Gaming Victus 16-e0175AX', 15, 'AMD Ryzen 5 5600H', '8 GB', 'NVIDIA GeForce RTX 3050 Ti', 19490000, NULL, NULL, 'Laptop', '512 GB', 16.1, '4 Cell', 'Trung Quốc', 1),
('LP20', 'Laptop MSI GF63 Thin 11UC-444VN', 15, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce RTX 3050', 20790000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP21', 'Laptop Asus TUF Gaming FX517ZE', 15, 'Intel Core i5 12450H', '8 GB', 'NVIDIA GeForce RTX 3050 Ti', 25990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 1),
('LP22', 'Laptop Lenovo Yoga Slim 7 Pro', 22, 'Intel Core i5 11300H', '16 GB', 'Intel Iris Xe Graphics', 23490000, NULL, NULL, 'Laptop', '512 GB', 14, '4 Cell ', 'Trung Quốc', 1),
('LP23', 'Laptop Gigabyte U4 UD-50VN823SO', 25, 'Intel Core i5 1155G7', '16 GB', 'Intel Iris Xe Graphics', 15690000, NULL, NULL, 'Laptop', '512 GB', 14, '36 Wh', 'Trung Quốc', 1),
('LP24', 'Laptop Dell Vostro V5410 i5', 25, 'Intel Core i5 11320H', '8 GB', 'Intel Iris Xe Graphics', 21490000, NULL, NULL, 'Laptop', '512 GB', 14, '4 Cell', 'Trung Quốc', 1),
('LP25', 'Laptop MSI Gaming GF63 Thin 11SC', 50, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce GTX 1650', 18390000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP26', 'dell', 0, '4', '8', 'GTX', 15000000, NULL, NULL, 'Laptop', '256', 25.6, '50000', 'VIỆT NAM', 0),
('LP27', 'Acer ', 50, '4g', '4g', 'GTX', 1500000, NULL, NULL, 'Laptop', '256', 5.6, '5000', 'Đức', 0),
('LP28', 'Laptop MSI Gaming ', 15, 'AMD Ryzen 7 ', '8GB', 'Intel Iris', 21000000, NULL, NULL, 'Laptop', '512GB', 15.6, '4 cell', 'Trung Quốc', 1),
('LP29', 'Laptop HP 16s-fq2993TU', 16, 'Intel Core i3 1115G4', '4 GB', 'GTX ', 9990000, NULL, NULL, 'Laptop', '256 GB', 15.6, '3 cell', 'Trung Quốc', 1),
('LP3', 'Lenovo ThinkPad E14', 50, 'Intel Core i5 11G352', '8GB', 'OnBoard', 15000000, NULL, NULL, 'Laptop', '512 GB', 14, '45Wh', 'Trung Quốc', 1),
('LP4', 'Lenovo Ideapad 3 15ITL6', 50, 'Intel Core i3 1115G4', '8GB', 'Onboard', 10690000, NULL, NULL, 'Laptop', '512GB', 15.6, '35Wh', 'Trung Quốc', 1),
('LP5', 'Gigabyte Gaming G5 GD', 15, 'Intel Core i5 11400H', '16GB', 'NVIDIA GeForce RTX 3050 4GB', 19290000, NULL, NULL, 'Laptop', '512GB', 15.6, '50Wh', 'Trung Quốc', 1),
('LP6', 'MSI Gaming GF63 Thin 11SC-1090VN', 50, 'Intel Core i5 11400H', '8GB', 'NVIDIA GeForce GTX 1650 4GB', 17490000, NULL, NULL, 'Laptop', '512GB', 15.6, '50Wh', 'Trung Quốc', 1),
('LP7', 'Laptop Asus TUF Gaming FX506LHB', 19, 'Intel Core i5 10300H', '8 GB', 'NVIDIA GeForce GTX 1650', 17490000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP8', 'Laptop MSI Gaming GF63 Thin ', 55, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce GTX 1650 4GB', 18390000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP9', 'Laptop Asus TUF Gaming FA506IHRB', 26, 'AMD Ryzen 5 4600H', '8 GB', 'NVIDIA GeForce GTX 1650', 16490000, NULL, NULL, 'Laptop', '512 GB', 12, '3 cell', 'Trung Quốc', 1),
('PC06', 'PC E-Power Office 08', 15, 'Intel Core i5 11400', '16 GB', 'Intel UHD Graphics 730', 9690000, 'Intel H510', 9690000, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC1', 'PC E-Power Office 04', 18, 'Intel Core i3 10105', '8GB', 'Intel HD Graphics 630', 7090000, 'Intel H510', 0, 'Laptop', '240GB', NULL, NULL, 'Việt Nam', 0),
('PC2', 'PC E-Power Office 05', 26, 'Intel Core i5 10400', '8 GB', 'Intel UHD Graphics 630', 8290000, 'Intel H510', 300, 'PC - Lắp ráp', '1 TB', NULL, NULL, 'Việt Nam', 1),
('PC3', 'PC E-Power Office 07', 13, 'Intel Core i5 11400', '8 GB', 'Intel UHD Graphics 730', 8990000, 'Intel H510', 8990000, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC30', 'PC DELL VOSTRO', 1, ' Ryzen 7 5800H ', '16GB', 'GTX 3060', 25000000, NULL, NULL, 'Laptop', '512GB', 24, '3000', 'Việt Nam', 0),
('PC4', 'PC Gaming E-Power G1650', 48, 'Intel Core i3 10100F', '8 GB', 'Intel UHD Graphics 730', 11990000, 'Intel H510', 300, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC5', 'PC E-Power Office 06', 23, 'Intel Core i5 10400', '16 GB', 'Intel HD Graphics 630', 9190000, 'Intel H510', 200, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC7', 'PC Acer Aspire AS-XC780 DT.B8ASV', 15, ' Intel Core i5-7400', '4 GB', ' Intel HD Graphics 630 / GeForce GT 720 2GB', 11200000, 'Intel H510', 300, 'PC - Lắp ráp', '1 TB', NULL, NULL, 'Việt Nam', 1),
('PC9', 'PC GIGABYTE AORUS MODEL X 12th', 14, 'Intel Core i9 12900K', '32GB', 'NVIDIA® GeForce® RTX 3080 10GB', 20999000, 'Intel', 300, 'PC - Lắp ráp', '2TB', NULL, NULL, 'Đức', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `maNhaCungCap` varchar(50) NOT NULL,
  `tenNhaCungCap` varchar(50) DEFAULT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `diaChi` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`maNhaCungCap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`maNhaCungCap`, `tenNhaCungCap`, `Sdt`, `diaChi`) VALUES
('ANPHAT', 'Công Ty TNHH Điều Khiển Tự Động An Phát', '02835109735', '86/21 Phan Tây Hồ, P. 7, Q. Phú Nhuận TP. Hồ Chí Minh'),
('CODO', 'Công Ty TNHH Thương Mại Dịch Vụ Hoàng Cố Đô', '02838115345', '622/16/5 Cộng Hòa, Phường 13, Quận Tân Bình, TP HCM		'),
('FPT', 'Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT', '02873023456', '261 - 263 Khánh Hội, P2, Q4, TP. Hồ Chí Minh'),
('HACOM', 'Công ty Cổ phần đầu tư công nghệ HACOM', '1900 1903', 'Số 129 - 131, phố Lê Thanh Nghị, Phường Đồng Tâm, Quận Hai Bà Trưng, Hà Nội'),
('HOANGPHAT', 'Công Ty TNHH Thương Mại Hoàng Phát Hải Phòng', '02253250888', 'Số 4, Lô 2A Lê Hồng Phong, Ngô Quyền, Tp. Hải Phòng'),
('HOPTHANHTHINH', 'Công ty TNHH thương mại dịch vụ Hợp Thành Thịnh', '0906.613.677', '406/55 Cộng Hòa, Phường 13, Quận Tân Bình, Thành Phố Hồ Chí Minh'),
('PHONGVU', 'Công ty cổ phần dịch vụ - thương mại Phong Vũ', '0967567567', 'Tầng 5, Số 117-119-121 Nguyễn Du, Phường Bến Thành, Quận 1, Thành Phố Hồ Chí Minh'),
('TGDĐ', 'Công ty cổ phần Thế Giới Di Động', '028 38125960', '128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh'),
('VIETSTARS', 'Công ty CP Công nghệ Thương mại Dịch vụ Vietstars', '090 469 0212', ' Số 109 Lê Thanh Nghị  TP Hải dương');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NULL DEFAULT NULL,
  `nguoiTao` varchar(50) DEFAULT NULL,
  `maNhaCungCap` varchar(50) DEFAULT NULL,
  `tongTien` double NOT NULL,
  PRIMARY KEY (`maPhieu`),
  KEY `FK_PhieuNhap_NhaCungCap` (`maNhaCungCap`),
  KEY `FK_PhieuNhap_Account` (`nguoiTao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`maPhieu`, `thoiGianTao`, `nguoiTao`, `maNhaCungCap`, `tongTien`) VALUES
('PN10', '2023-05-14 08:57:05', 'tranthanh', 'HOPTHANHTHINH', 210000000),
('PN11', '2023-05-14 09:12:32', 'nguyenqui35', 'ANPHAT', 285880000),
('PN12', '2023-05-14 09:17:19', 'tainguyen35', 'HACOM', 242400000),
('PN13', '2023-05-14 09:45:47', 'admin', 'ANPHAT', 215330000),
('PN14', '2023-05-14 16:12:37', 'admin', 'ANPHAT', 2175550000),
('PN15', '2023-05-14 16:42:17', 'nguyenqui35', 'ANPHAT', 199800000),
('PN16', '2023-05-14 16:42:43', 'nguyenqui35', 'VIETSTARS', 105000000),
('PN39', '2023-04-14 15:51:26', 'admin', 'PHONGVU', 229900000),
('PN40', '2023-05-13 08:27:24', 'tainguyen35', 'ANPHAT', 50380000),
('PN41', '2023-05-13 08:38:37', 'tranthanh', 'PHONGVU', 93360000),
('PN42', '2023-05-13 08:49:42', 'tranthanh', 'ANPHAT', 103960000),
('PN43', '2023-05-13 08:51:02', 'tranthanh', 'HOANGPHAT', 157430000),
('PN44', '2023-05-13 08:51:51', 'tranthanh', 'ANPHAT', 77160000),
('PN7', '2023-05-13 08:54:25', 'tranthanh', 'ANPHAT', 73160000),
('PN8', '2023-05-13 08:54:56', 'tranthanh', 'ANPHAT', 88960000),
('PN9', '2023-05-13 15:53:30', 'tranthanh', 'ANPHAT', 419980000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

DROP TABLE IF EXISTS `phieuxuat`;
CREATE TABLE IF NOT EXISTS `phieuxuat` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nguoiTao` varchar(50) NOT NULL,
  `tongTien` double NOT NULL,
  PRIMARY KEY (`maPhieu`),
  KEY `FK_PhieuXuat_Account` (`nguoiTao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`maPhieu`, `thoiGianTao`, `nguoiTao`, `tongTien`) VALUES
('PX12', '2023-05-13 08:56:31', 'admin', 59550000),
('PX13', '2023-05-13 08:48:10', 'admin', 116510000),
('PX14', '2023-05-13 08:47:49', 'admin', 68960000),
('PX15', '2023-05-13 08:47:16', 'admin', 79760000),
('PX16', '2023-05-13 08:46:50', 'admin', 136740000),
('PX17', '2023-05-13 08:46:31', 'admin', 94740000),
('PX18', '2023-05-13 08:46:15', 'admin', 128740000),
('PX19', '2023-05-13 08:45:52', 'admin', 50370000),
('PX20', '2023-05-13 08:35:33', 'admin', 62650000),
('PX21', '2023-05-13 08:35:16', 'admin', 52560000),
('PX22', '2023-05-13 09:00:15', 'trongquy35', 116930000),
('PX23', '2023-05-13 08:35:07', 'admin', 32470000),
('PX24', '2023-05-13 08:34:44', 'admin', 72350000),
('PX25', '2023-05-13 09:01:13', 'trongquy35', 195410000),
('PX26', '2023-05-14 09:08:46', 'trongquy35', 175880000),
('PX27', '2023-05-14 09:42:36', 'Admin', 312230000),
('PX28', '2023-05-14 09:44:05', 'Admin', 204780000),
('PX29', '2023-05-14 09:45:03', 'Admin', 215330000),
('PX30', '2023-05-14 15:45:50', 'Admin', 215900000),
('PX31', '2023-05-14 15:49:24', 'Admin', 453300000),
('PX32', '2023-05-14 15:50:09', 'Admin', 203010000),
('PX33', '2023-05-14 16:09:54', 'Admin', 240750000),
('PX34', '2023-05-14 16:26:49', 'Admin', 290895000);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_MayTinh` FOREIGN KEY (`maMay`) REFERENCES `maytinh` (`maMay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_PhieuNhap` FOREIGN KEY (`maPhieu`) REFERENCES `phieunhap` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_MayTinh` FOREIGN KEY (`maMay`) REFERENCES `maytinh` (`maMay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_PhieuXuat` FOREIGN KEY (`maPhieu`) REFERENCES `phieuxuat` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_PhieuNhap_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PhieuNhap_NhaCungCap` FOREIGN KEY (`maNhaCungCap`) REFERENCES `nhacungcap` (`maNhaCungCap`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `FK_PhieuXuat_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
