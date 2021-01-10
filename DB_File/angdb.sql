-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 02:59 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`) VALUES
(13, 'What are the best online shopping hacks?', 'SA free extension from the chrome web store which automatically applies the best coupon to your shopping basket. Let me explain how this works. Install the Shopper.com Extension from the chrome web store. Once installed, visit any of your favourite shopping websites say Myntra, Amazon, Ajio etc. Next, add the items to your cart and click checkout. Following screen pop-ups and start applying the working coupons at the checkout page.'),
(14, 'What are the major differences between Python and R for data science?', 'Both Python and R have vast software ecosystems and communities, so either language is suitable for almost any data science task. That said, there are some areas in which one is stronger than the other.\r\n\r\nWhere Python Excels\r\n\r\nThe majority of deep learning research is done in Python, so tools such as Keras and PyTorch have \"Python-first\" development. You can learn about these topics in Introduction to Deep Learning in Keras and Introduction to Deep Learning in PyTorch.\r\n\r\nWhere R Excels\r\n\r\nA lot of statistical modeling research is conducted in R, so there\'s a wider variety of model types to choose from. If you regularly have questions about the best way to model data, R is the better option.'),
(15, 'What is the importance of time in every student\'s life?', 'Time is very important in a studentâ€™s life.The way you utilize it make the time worth being remembered.The time spent making your career is remembered throughout your Life. The time spent only enjoying is appreciated only at that moment or may be some days or may be some months.Few years the line,you feel the guilt.You feel the regret.Remembring that time brings pain.Those enjoyments make you feel sad.\r\n\r\nTime can make you or it can take you.Utilize your time wisely in making a good career.Spend your time exploring something new,spend your time learning something new.'),
(17, 'What is the importance of time in every student\'s life?', 'Time is very important in a studentâ€™s life.The way you utilize it make the time worth being remembered.The time spent making your career is remembered throughout your Life. The time spent only enjoying is appreciated only at that moment or may be some days or may be some months.Few years the line,you feel the guilt.You feel the regret.Remembring that time brings pain.Those enjoyments make you feel sad.\r\n\r\nTime can make you or it can take you.Utilize your time wisely in making a good career.Spend your time exploring something new,spend your time learning something new.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'jhbbhujb', 'kul@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
