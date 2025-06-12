-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 03:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecakeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_admin_registrations`
--

CREATE TABLE `cake_shop_admin_registrations` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_admin_registrations`
--

INSERT INTO `cake_shop_admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`, `image`) VALUES
(1, 'laxminora', 'laxmi45@gmail.com', 'Laxmi@123', 'admin-1.jpg'),
(2, 'devikapalganti', 'devika56@gmail.com', 'devika@12', 'admin-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_category`
--

CREATE TABLE `cake_shop_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_category`
--

INSERT INTO `cake_shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Cakes', '200731042405.jpg'),
(2, 'Pastries', '200731042031.jpeg'),
(3, 'Desserts', '200731042306.jpg'),
(4, 'Cookies', '200731042457.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_orders`
--

CREATE TABLE `cake_shop_orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_orders`
--

INSERT INTO `cake_shop_orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`, `status`) VALUES
(1, 2, '2020-08-09', 'Cash', '1000', 'completed'),
(2, 2, '2023-05-20', 'Cash', '1000', 'Completed'),
(4, 2, '2023-05-24', 'Card', '500', 'Completed'),
(5, 1, '2023-05-24', 'Cash', '500', 'Completed'),
(6, 3, '2023-05-29', 'Card', '500', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_orders_detail`
--

CREATE TABLE `cake_shop_orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_orders_detail`
--

INSERT INTO `cake_shop_orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(1, 1, 'Red velvet', 1),
(2, 1, 'Oreo', 1),
(3, 2, 'Black choco', 1),
(4, 2, 'Red velvet', 1),
(5, 2, 'Red velvet', 1),
(6, 1, 'Chocolate', 1),
(7, 4, 'Black forest', 1),
(8, 5, 'Black forest', 1),
(9, 6, 'Red velvet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_product`
--

CREATE TABLE `cake_shop_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_product`
--

INSERT INTO `cake_shop_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'Tempting Choco Cake', 1, '699', 'This Black Forest cake is a perfect form of art where the red cherries and fondant heart makes the most alluring contrast with the dark liquid chocolate. ', '2007310437280.jpg\r\n'),
(2, 'Red Velvet Little cake', 1, '499', 'Listen up cake lovers! We have taken the Red Velvet to the whole new level of deliciousness. Adorned with Red Velvet crumbs, this delight makes a perfect expression of love. \r\n\r\n\r\n\r\n', '2007310439020.jpg\r\n'),
(3, 'Choco Vanilla Black Cake', 1, '599', 'Another twist to the classic Black Forest, this cream cake is a work of art. The rich chocolate sponge is layered with smooth vanilla cream and topped with whimsical dollops of cream and chocolate tips on one side, while the other side boasts a decadent v', '2007310440210.jpg\r\n'),
(4, 'Ultimate Oreo Cake', 1, '500', 'Chocolate is not just an edible, it is an emotion. Whomsoever said this, said it right. Get yourself grooved on the tanginess of this yummy oreo flavored cake and get mesmerized on the tunes of chunky oreo bites. Get this cake ordered soon and have a heav', '2007310441020.jpg\r\n'),
(5, 'Black Choco', 2, '100', 'This chocolate butterscotch cake is a layered moist chocolate cake. It has chocolate cream cheese frosting and whipped butterscotch ganache in the filling. ', '2007310442250.jpg'),
(6, 'Cream Strawberry Delight', 2, '100', 'Cream Cake is a temptation that\'s hard to resist. Topped with creamy vanilla frosting and decorated with adorable pink rose cream swirls, our Strawberry Cake is a true feast for both the eyes and the taste buds. ', '2007310443190.jpg'),
(7, 'Butterscotch Cake', 2, '100', 'The cake\'s design is elegant and sophisticated, featuring a smooth and glossy finish that\'s sure to impress your guests.', '2007310444030.jpg'),
(8, 'Choco chips', 4, '50', 'The cookie dough is made from your standard cookie ingredients: flour, leavener, salt, sugar, butter, egg, and vanilla. It’s the ratios and temperature of those ingredients that make this recipe stand out from the rest. ', '2007310445280.jpg'),
(9, 'Chocolate', 3, '25', 'Chocolate flavoured dessert.A dessert is a type of food that is eaten after lunch or dinner, and sometimes after a light meal or snack. ', '2007310446340.jpg'),
(10, 'Vanilla', 3, '25', 'Vanilla flavoured dessert.Vanilla is an aromatic flavoring agent obtained from the vanilla bean with vanillin being the principal flavor component. ', '2007310448270.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_users_registrations`
--

CREATE TABLE `cake_shop_users_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_users_registrations`
--

INSERT INTO `cake_shop_users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`, `image`) VALUES
(1, 'navaldesai', 'naval32@gmail.com', 'desai%123', '2147483647', 'Sakhar Peth,Solapur-413005', 'user-1.jpg'),
(2, 'renuka', 'renuka956@gmail.com', 'Renuka@123', '9876543210', 'ashowk chowk,Solapur-413005', 'user-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake_shop_admin_registrations`
--
ALTER TABLE `cake_shop_admin_registrations`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cake_shop_category`
--
ALTER TABLE `cake_shop_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cake_shop_orders`
--
ALTER TABLE `cake_shop_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `cake_shop_orders_detail`
--
ALTER TABLE `cake_shop_orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `cake_shop_product`
--
ALTER TABLE `cake_shop_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `cake_shop_users_registrations`
--
ALTER TABLE `cake_shop_users_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cake_shop_admin_registrations`
--
ALTER TABLE `cake_shop_admin_registrations`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cake_shop_category`
--
ALTER TABLE `cake_shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cake_shop_orders`
--
ALTER TABLE `cake_shop_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cake_shop_orders_detail`
--
ALTER TABLE `cake_shop_orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cake_shop_product`
--
ALTER TABLE `cake_shop_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cake_shop_users_registrations`
--
ALTER TABLE `cake_shop_users_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
