-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 06:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafenodejs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `productDetails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`productDetails`)),
  `createBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `uuid`, `name`, `email`, `contactNumber`, `paymentMethod`, `total`, `productDetails`, `createBy`) VALUES
(2, '564b63a0-1b23-11ed-91a7-430580756664', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 1213, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(3, 'bdd101b0-1b23-11ed-9e47-dbfb0fc01766', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 1213, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(4, '08ce8c00-1b24-11ed-843d-f75d0a1693ca', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 656, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(5, '463c1a30-1b24-11ed-bdc8-7fbefe5f8353', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 656, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(6, '6d712e60-1b24-11ed-a638-a3c3db0a09d0', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 656, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(7, '84070f30-1b67-11ed-ab59-11fae4429173', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 656, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(8, 'abc10ad0-1b67-11ed-a072-85aea76cb962', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 656, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(9, '4bcdd4d0-1b69-11ed-9bbe-53cd158cedbf', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(10, '92f79ad0-1b69-11ed-a2d1-ef2166755cf2', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(11, 'a072af60-1b69-11ed-a2d1-ef2166755cf2', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(12, 'eb3d90f0-1b69-11ed-95ce-0dea8409e00d', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(13, '264542b0-1b6a-11ed-846f-f5b7b48ad850', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(14, '33ed5ab0-1b6a-11ed-846f-f5b7b48ad850', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(15, '5efa03c0-1b6a-11ed-b9d8-9b1cb0dd09eb', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(16, '88c10d70-1b6a-11ed-b9d8-9b1cb0dd09eb', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(17, 'a35e4120-1b6a-11ed-a754-d9702de3dea0', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(18, '0edb5820-1b6b-11ed-aa65-1ba802d9aa6f', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(19, '1a9b0110-1b6b-11ed-a61a-17497d0c34bd', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(20, '31354a20-1b6b-11ed-92b6-e956fc67c62f', 'BTech Days', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(21, '9a60a8f0-1b6b-11ed-92b6-e956fc67c62f', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(22, '26776450-1b6c-11ed-92b6-e956fc67c62f', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(23, '3243e910-1b6d-11ed-80c9-176613f2737c', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(24, '77c83c70-1b6d-11ed-a8f2-89651e2825b7', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(25, '9bc15f80-1b6d-11ed-ab78-b79743d16435', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(26, '152963e0-1b6e-11ed-83ca-5de18f973e06', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(27, '3e874b80-1b6e-11ed-8374-8553df4ac355', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(28, 'bf7790b0-1b6e-11ed-8374-8553df4ac355', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(29, 'dd323100-1b6e-11ed-8b16-a10dd432d6f8', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(30, 'b27d3d80-1b71-11ed-bbe9-f5f22f37adf1', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(31, '021e1450-1b76-11ed-bbe9-f5f22f37adf1', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(32, '7f5d6a00-1b77-11ed-97f8-3543a7a04b23', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(33, '0124d550-1b78-11ed-8829-7f0ea3f9a53b', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(34, '122eb5f0-1b78-11ed-abd0-2384dafe1ce6', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(35, '25ac0790-1b78-11ed-9ed4-abe9f28874d1', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(36, 'bb175f50-1b78-11ed-86c4-25deccd7a656', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(37, '7eee69a0-1b79-11ed-9020-0124bd67f7f5', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(38, 'c6848600-1b79-11ed-9020-0124bd67f7f5', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(39, '84e6db50-1b7c-11ed-8058-57f2cea88536', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(40, 'fc2ff750-1b7c-11ed-98b6-bbcd4f55cba0', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(41, '42e88f80-1b7e-11ed-b3b3-cd42c6395170', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(42, '4c0db770-1b7e-11ed-b591-17d9b337cad8', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(43, '82805b40-1b7f-11ed-9e9a-1399402d5100', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(44, 'c8137450-1b82-11ed-a7dc-5b47f8e56def', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(45, '2e2b8660-1b88-11ed-a637-f5e276f723b0', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(46, '46227940-1b88-11ed-aac2-a9040c55c3ec', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(47, '83913ff0-1b88-11ed-a1cd-9783ac81432c', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(48, 'b3a2b340-1b88-11ed-8df1-c71db24c2069', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(49, '82097fc0-1b8e-11ed-bc0b-395ae82572a3', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(50, '415f7950-1b90-11ed-af2a-4b29f90d0b70', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(51, '92b60150-1b92-11ed-9f6e-250e5ba2e469', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(52, 'd6b20700-1b92-11ed-9ff0-f172e17da915', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(53, '9f9ade70-1b94-11ed-a474-4b05915fc5a7', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(54, 'ced92340-1b94-11ed-827a-8749f192706f', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(55, '1d2626b0-1b95-11ed-a768-d93b191f7824', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(56, 'c7ee3e70-1b95-11ed-b6a0-bd9da54bdf6f', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(57, '93280030-1b96-11ed-a305-cfb31f2805b6', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(58, '46d4db80-1b97-11ed-85ac-db9309b85459', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(59, 'a680e470-1b97-11ed-b1e3-3d202888eefe', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(60, 'd2fe82a0-1b97-11ed-b98e-813b0e6408bb', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(61, '3092cf20-1b98-11ed-8fff-ff105d569588', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(62, '38882240-1b9b-11ed-b945-39a33e05b5a5', 'Rana', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(63, '32a1fbe0-1b9f-11ed-a260-f179836e5ef3', 'Rahim', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(64, '5944ab60-1bb0-11ed-a260-f179836e5ef3', 'Rahim', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(65, 'a12a51e0-1bb1-11ed-8ec4-094277a6221e', 'Rahim', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(66, '884d80f0-1bb3-11ed-8776-d91abf568146', 'Rahim', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(67, 'df39a0c0-1d92-11ed-8b8c-cd7fda3efaae', 'Rahim', 'jewel@gmail.com', '73563543636', 'csh', 123, '[{\"id\":1, \"name\":\"Black Coffee\",\"price\":99,\"category\":\"Coffee\",\"quantity\":\"1\"}]', 'admin@gmail.com'),
(68, '824f57f0-263a-11ed-aebe-5942a91ccb79', 'Rana', 'rana1122jewei@gmail.com', '1516501637', 'Cash', 720, '[{\"id\":6,\"name\":\"woter\",\"category\":\"appl\",\"quantity\":\"12\",\"price\":60}]', 'admin@gmail.com'),
(69, 'd9078220-263a-11ed-aebe-5942a91ccb79', 'Rana', 'rana1122jewei@gmail.com', '1516501367', 'Cash', 720, '[{\"id\":6,\"name\":\"woter\",\"category\":\"appl\",\"quantity\":\"12\",\"price\":60}]', 'admin@gmail.com'),
(70, '45ec8d90-263b-11ed-aebe-5942a91ccb79', 'Rahim', 'jewelrana251196@gmail.com', '1614749257', 'Cash', 1400, '[{\"id\":8,\"name\":\"apple\",\"category\":\"apfdffd\",\"quantity\":\"10\",\"price\":50},{\"id\":6,\"name\":\"woter\",\"category\":\"appl\",\"quantity\":\"15\",\"price\":60}]', 'admin@gmail.com'),
(71, '57843800-2677-11ed-87c4-614e2863cfc9', 'sadik', 'jewel@gmail.com', '1764749257', 'Credit Card', 260, '[{\"id\":5,\"name\":\"Roll\",\"category\":\"apple\",\"quantity\":\"13\",\"price\":20}]', 'admin@gmail.com'),
(72, '3ce7f840-2683-11ed-83fc-85305bc3d4a6', 'Rakib', 'rakib@gmail.com', '1764749257', 'Debit Card', 600, '[{\"id\":9,\"name\":\"Ready Tea\",\"category\":\"Tea\",\"quantity\":\"20\",\"price\":20},{\"id\":4,\"name\":\"cofi\",\"category\":\"tea\",\"quantity\":\"10\",\"price\":20}]', 'admin@gmail.com'),
(73, '53e56790-2691-11ed-a7b9-6da9e9436fb1', 'Nahar', 'rakib@gamil.com', '1764749257', 'Credit Card', 2600, '[{\"id\":10,\"name\":\"Apple\",\"category\":\"APPOPO\",\"quantity\":\"15\",\"price\":40},{\"id\":9,\"name\":\"Ready Tea\",\"category\":\"Tea\",\"quantity\":\"100\",\"price\":20}]', 'admin@gmail.com'),
(74, '3c26a540-269d-11ed-93b1-6dffe53adc03', 'Rakib', 'rakib@gmail.com', '1764749257', 'Credit Card', 600, '[{\"id\":10,\"name\":\"Apple\",\"category\":\"APPOPO\",\"quantity\":\"10\",\"price\":40},{\"id\":9,\"name\":\"Ready Tea\",\"category\":\"Tea\",\"quantity\":\"10\",\"price\":20}]', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'water'),
(2, 'milk'),
(3, 'tea'),
(4, 'apple'),
(5, 'appl'),
(6, 'Hello'),
(7, 'CLLL'),
(8, 'applrt'),
(9, 'apfdffd'),
(10, 'ttree'),
(11, 'Futo'),
(12, 'Rana'),
(13, 'APPOPO'),
(14, 'sadik'),
(15, 'jsjhs'),
(16, 'qeww'),
(17, 'ad'),
(18, 'deww'),
(19, 'lkww'),
(20, 'ewwe'),
(21, 'kfjjf'),
(22, 'yuhknj'),
(23, 'tyyutfd'),
(24, 'Green Tea'),
(25, 'Tea');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `categoryId`, `description`, `price`, `status`) VALUES
(1, 'getBeyId', 1, 'Test1 description', 1213, 'true'),
(3, 'Test2', 1, 'Test1 description', 1213, 'true'),
(4, 'cofi', 3, 'Food product', 20, 'true'),
(5, 'Roll', 4, 'Food product', 20, 'true'),
(6, 'woter', 5, 'Food product', 60, 'true'),
(7, 'ssss', 9, '3sssucc', 333, 'true'),
(8, 'apple', 9, 'good', 50, 'true'),
(9, 'Ready Tea', 25, 'Good Product', 20, 'true'),
(10, 'Apple', 13, 'Good food', 40, 'true'),
(11, 'tret', 8, 'admin@gmail.com', 35, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `contactNumber`, `email`, `password`, `status`, `role`) VALUES
(1, 'Admin', '17380600440', 'admin@gmail.com', 'admin', 'true', 'admin'),
(2, 'Admin', '17380600440', 'admin@gmail.com', 'admin', 'true', 'admin'),
(3, 'Admin', '1738060040', 'admin@gmail.com', 'admin', 'true', 'admin'),
(4, 'Rana', '1764749257', 'jewel@gmail.com', '123456', 'false', 'user'),
(5, 'Md:Rahim', '1614749257', 'jewelrana251196@gmail.com', '12345678', '', ''),
(6, 'Md:Rahim', '1614749257', 'jewelrana251196@gmail.com', '12345678', 'true', 'user'),
(7, 'Rahim', '1516501637', 'rana1122jewei@gmail.com', '123654', 'false', 'user'),
(8, 'test', '2554444555', 'naba1122akter@gmail.com', '123456', 'false', 'user'),
(9, 'karim', '5551123368441', 'karin@gmail.com', 'ranaauauau', 'false', 'user'),
(10, 'Raju', '66884477888', 'raju@gmail.com', 'admin', 'false', 'user'),
(11, 'Rakib', '01764749257', 'rakib@gmail.com', 'Rana1122', 'false', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `contactNumber` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contactNumber`, `email`, `password`, `status`, `role`) VALUES
(1, 'Admin', '1738060040', 'admin@gmail.com', 'admin', 'true', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
