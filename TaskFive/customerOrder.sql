-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2020 at 09:52 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `new_schema1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customer_id`, `name`, `email`, `phone`) VALUES
(1, 'Daniel', 'danielweisspedersen@gmail.com', '51401888'),
(2, 'John Doe 1', 'johndoe1@johndoe1.com', '123456'),
(3, 'John Doe 2', 'johndoe2@johndoe2.com', '08021115247'),
(4, 'John Doe 3', 'johndoe3@johndoe3.com', '08021116357'),
(5, 'John Doe 4', 'johndoe4@johndoe4.com', '08051235358');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `price` varchar(100) DEFAULT NULL,
  `category_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`product_id`, `name`, `description`, `price`, `category_id`) VALUES
(1, 'Product 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut placerat nunc, sit amet fermentum purus. Praesent finibus est sed efficitur laoreet. Sed facilisis nibh at molestie auctor. Donec malesuada tortor ac diam facilisis suscipit. In in tristique neque. Pellentesque consequat felis ligula, vel accumsan ligula fermentum ac. Mauris arcu ante, volutpat sit amet ex ac, tincidunt elementum metus. Vivamus vitae finibus nunc, id suscipit metus. Ut id ante turpis. Sed vel aliquet nisl. Sed sagittis tristique quam. Donec eget nulla in sapien congue finibus vel sed enim. Vivamus tincidunt, velit eu suscipit molestie, erat neque mattis tellus, non finibus nisl mauris et mi. ', '2000', '1'),
(2, 'Product 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut placerat nunc, sit amet fermentum purus. Praesent finibus est sed efficitur laoreet. Sed facilisis nibh at molestie auctor. Donec malesuada tortor ac diam facilisis suscipit. In in tristique neque. Pellentesque consequat felis ligula, vel accumsan ligula fermentum ac. Mauris arcu ante, volutpat sit amet ex ac, tincidunt elementum metus. Vivamus vitae finibus nunc, id suscipit metus. Ut id ante turpis. Sed vel aliquet nisl. Sed sagittis tristique quam. Donec eget nulla in sapien congue finibus vel sed enim. Vivamus tincidunt, velit eu suscipit molestie, erat neque mattis tellus, non finibus nisl mauris et mi. ', '10000', '2'),
(3, 'Product 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut placerat nunc, sit amet fermentum purus. Praesent finibus est sed efficitur laoreet. Sed facilisis nibh at molestie auctor. Donec malesuada tortor ac diam facilisis suscipit. In in tristique neque. Pellentesque consequat felis ligula, vel accumsan ligula fermentum ac. Mauris arcu ante, volutpat sit amet ex ac, tincidunt elementum metus. Vivamus vitae finibus nunc, id suscipit metus. Ut id ante turpis. Sed vel aliquet nisl. Sed sagittis tristique quam. Donec eget nulla in sapien congue finibus vel sed enim. Vivamus tincidunt, velit eu suscipit molestie, erat neque mattis tellus, non finibus nisl mauris et mi. ', '5000', '3'),
(4, 'Product 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut placerat nunc, sit amet fermentum purus. Praesent finibus est sed efficitur laoreet. Sed facilisis nibh at molestie auctor. Donec malesuada tortor ac diam facilisis suscipit. In in tristique neque. Pellentesque consequat felis ligula, vel accumsan ligula fermentum ac. Mauris arcu ante, volutpat sit amet ex ac, tincidunt elementum metus. Vivamus vitae finibus nunc, id suscipit metus. Ut id ante turpis. Sed vel aliquet nisl. Sed sagittis tristique quam. Donec eget nulla in sapien congue finibus vel sed enim. Vivamus tincidunt, velit eu suscipit molestie, erat neque mattis tellus, non finibus nisl mauris et mi. ', '20000', '4'),
(5, 'Product 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut placerat nunc, sit amet fermentum purus. Praesent finibus est sed efficitur laoreet. Sed facilisis nibh at molestie auctor. Donec malesuada tortor ac diam facilisis suscipit. In in tristique neque. Pellentesque consequat felis ligula, vel accumsan ligula fermentum ac. Mauris arcu ante, volutpat sit amet ex ac, tincidunt elementum metus. Vivamus vitae finibus nunc, id suscipit metus. Ut id ante turpis. Sed vel aliquet nisl. Sed sagittis tristique quam. Donec eget nulla in sapien congue finibus vel sed enim. Vivamus tincidunt, velit eu suscipit molestie, erat neque mattis tellus, non finibus nisl mauris et mi. ', '40000', '5');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `stock` varchar(100) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `created_at` text,
  `updated_at` text,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `name`, `description`, `stock`, `price`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Product 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mollis mauris. Pellentesque aliquam eget augue sit amet pellentesque. Phasellus tempor consequat risus ut pretium. Curabitur egestas, lectus nec fringilla sodales, nisl sem vestibulum turpis, vel tincidunt ante est id justo. Donec eu libero malesuada, rhoncus justo ac, pellentesque eros. Cras at iaculis nulla. Curabitur aliquam at enim eu ultrices. Mauris ut dignissim ligula. Aliquam erat volutpat. Etiam elementum nisl lectus, ac dictum ipsum fermentum non. Proin commodo ultricies quam, sed consequat sapien congue ut. Proin porttitor, diam ut maximus porta, ex est luctus ipsum, in sagittis ipsum lorem in arcu. Duis ac lacus eget risus commodo gravida. Ut auctor aliquam eros, a sollicitudin purus vestibulum non. Aenean ut libero vitae arcu varius molestie non vitae est. ', '100', '2000', '2020-11-19 09:31:02', '\'2020-11-19 09:33:55\'\n', 'https://vinylwindowspro.ca/wp-content/uploads/2016/10/dummy.jpg'),
(2, 'Product 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mollis mauris. Pellentesque aliquam eget augue sit amet pellentesque. Phasellus tempor consequat risus ut pretium. Curabitur egestas, lectus nec fringilla sodales, nisl sem vestibulum turpis, vel tincidunt ante est id justo. Donec eu libero malesuada, rhoncus justo ac, pellentesque eros. Cras at iaculis nulla. Curabitur aliquam at enim eu ultrices. Mauris ut dignissim ligula. Aliquam erat volutpat. Etiam elementum nisl lectus, ac dictum ipsum fermentum non. Proin commodo ultricies quam, sed consequat sapien congue ut. Proin porttitor, diam ut maximus porta, ex est luctus ipsum, in sagittis ipsum lorem in arcu. Duis ac lacus eget risus commodo gravida. Ut auctor aliquam eros, a sollicitudin purus vestibulum non. Aenean ut libero vitae arcu varius molestie non vitae est. ', '50', '10000', '\'2020-11-19 09:31:37\'\n', '\'2020-11-19 09:34:08\'\n', 'https://vinylwindowspro.ca/wp-content/uploads/2016/10/dummy.jpg'),
(3, 'Product 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mollis mauris. Pellentesque aliquam eget augue sit amet pellentesque. Phasellus tempor consequat risus ut pretium. Curabitur egestas, lectus nec fringilla sodales, nisl sem vestibulum turpis, vel tincidunt ante est id justo. Donec eu libero malesuada, rhoncus justo ac, pellentesque eros. Cras at iaculis nulla. Curabitur aliquam at enim eu ultrices. Mauris ut dignissim ligula. Aliquam erat volutpat. Etiam elementum nisl lectus, ac dictum ipsum fermentum non. Proin commodo ultricies quam, sed consequat sapien congue ut. Proin porttitor, diam ut maximus porta, ex est luctus ipsum, in sagittis ipsum lorem in arcu. Duis ac lacus eget risus commodo gravida. Ut auctor aliquam eros, a sollicitudin purus vestibulum non. Aenean ut libero vitae arcu varius molestie non vitae est. ', '20', '5000', '\'2020-11-19 09:33:00\'\n', '\'2020-11-19 09:34:19\'\n', 'https://vinylwindowspro.ca/wp-content/uploads/2016/10/dummy.jpg'),
(4, 'Product 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mollis mauris. Pellentesque aliquam eget augue sit amet pellentesque. Phasellus tempor consequat risus ut pretium. Curabitur egestas, lectus nec fringilla sodales, nisl sem vestibulum turpis, vel tincidunt ante est id justo. Donec eu libero malesuada, rhoncus justo ac, pellentesque eros. Cras at iaculis nulla. Curabitur aliquam at enim eu ultrices. Mauris ut dignissim ligula. Aliquam erat volutpat. Etiam elementum nisl lectus, ac dictum ipsum fermentum non. Proin commodo ultricies quam, sed consequat sapien congue ut. Proin porttitor, diam ut maximus porta, ex est luctus ipsum, in sagittis ipsum lorem in arcu. Duis ac lacus eget risus commodo gravida. Ut auctor aliquam eros, a sollicitudin purus vestibulum non. Aenean ut libero vitae arcu varius molestie non vitae est. ', '10', '20000', '\'2020-11-19 09:33:13\'\n', '\'2020-11-19 09:34:32\'\n', 'https://vinylwindowspro.ca/wp-content/uploads/2016/10/dummy.jpg'),
(5, 'Product 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mollis mauris. Pellentesque aliquam eget augue sit amet pellentesque. Phasellus tempor consequat risus ut pretium. Curabitur egestas, lectus nec fringilla sodales, nisl sem vestibulum turpis, vel tincidunt ante est id justo. Donec eu libero malesuada, rhoncus justo ac, pellentesque eros. Cras at iaculis nulla. Curabitur aliquam at enim eu ultrices. Mauris ut dignissim ligula. Aliquam erat volutpat. Etiam elementum nisl lectus, ac dictum ipsum fermentum non. Proin commodo ultricies quam, sed consequat sapien congue ut. Proin porttitor, diam ut maximus porta, ex est luctus ipsum, in sagittis ipsum lorem in arcu. Duis ac lacus eget risus commodo gravida. Ut auctor aliquam eros, a sollicitudin purus vestibulum non. Aenean ut libero vitae arcu varius molestie non vitae est. ', '5', '40000', '\'2020-11-19 09:33:27\'\n', '\'2020-11-19 09:34:46\'\n', 'https://vinylwindowspro.ca/wp-content/uploads/2016/10/dummy.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);
