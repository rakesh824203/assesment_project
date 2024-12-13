-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 12:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rakesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `scraped_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `rating`, `description`, `scraped_at`) VALUES
(1, 'Essence Mascara Lash Princess', 9.99, 4.94, 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', '2024-12-12 12:11:03'),
(2, 'Eyeshadow Palette with Mirror', 19.99, 3.28, 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', '2024-12-12 12:11:03'),
(3, 'Powder Canister', 14.99, 3.82, 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '2024-12-12 12:11:03'),
(4, 'Red Lipstick', 12.99, 2.51, 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', '2024-12-12 12:11:03'),
(5, 'Red Nail Polish', 8.99, 3.91, 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', '2024-12-12 12:11:03'),
(6, 'Calvin Klein CK One', 49.99, 4.85, 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', '2024-12-12 12:11:03'),
(7, 'Chanel Coco Noir Eau De', 129.99, 2.76, 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', '2024-12-12 12:11:03'),
(8, 'Dior J\'adore', 89.99, 3.31, 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', '2024-12-12 12:11:03'),
(9, 'Dolce Shine Eau de', 69.99, 2.68, 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', '2024-12-12 12:11:03'),
(10, 'Gucci Bloom Eau de', 79.99, 2.69, 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', '2024-12-12 12:11:03'),
(11, 'Annibale Colombo Bed', 1899.99, 4.14, 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', '2024-12-12 12:11:03'),
(12, 'Annibale Colombo Sofa', 2499.99, 3.08, 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', '2024-12-12 12:11:03'),
(13, 'Bedside Table African Cherry', 299.99, 4.48, 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '2024-12-12 12:11:03'),
(14, 'Knoll Saarinen Executive Conference Chair', 499.99, 4.11, 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', '2024-12-12 12:11:03'),
(15, 'Wooden Bathroom Sink With Mirror', 799.99, 3.26, 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', '2024-12-12 12:11:03'),
(16, 'Apple', 1.99, 2.96, 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', '2024-12-12 12:11:03'),
(17, 'Beef Steak', 12.99, 2.83, 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', '2024-12-12 12:11:03'),
(18, 'Cat Food', 8.99, 2.88, 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '2024-12-12 12:11:03'),
(19, 'Chicken Meat', 9.99, 4.61, 'Fresh and tender chicken meat, suitable for various culinary preparations.', '2024-12-12 12:11:03'),
(20, 'Cooking Oil', 4.99, 4.01, 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', '2024-12-12 12:11:03'),
(21, 'Cucumber', 1.49, 4.71, 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', '2024-12-12 12:11:03'),
(22, 'Dog Food', 10.99, 2.74, 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', '2024-12-12 12:11:03'),
(23, 'Eggs', 2.99, 4.46, 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', '2024-12-12 12:11:03'),
(24, 'Fish Steak', 14.99, 4.83, 'Quality fish steak, suitable for grilling, baking, or pan-searing.', '2024-12-12 12:11:03'),
(25, 'Green Bell Pepper', 1.29, 4.28, 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', '2024-12-12 12:11:03'),
(26, 'Green Chili Pepper', 0.99, 4.43, 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', '2024-12-12 12:11:03'),
(27, 'Honey Jar', 6.99, 3.50, 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', '2024-12-12 12:11:03'),
(28, 'Ice Cream', 5.49, 3.77, 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '2024-12-12 12:11:03'),
(29, 'Juice', 3.99, 3.41, 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', '2024-12-12 12:11:03'),
(30, 'Kiwi', 2.49, 4.37, 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', '2024-12-12 12:11:03'),
(31, 'Essence Mascara Lash Princess', 9.99, 4.94, 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', '2024-12-12 12:11:10'),
(32, 'Eyeshadow Palette with Mirror', 19.99, 3.28, 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', '2024-12-12 12:11:10'),
(33, 'Powder Canister', 14.99, 3.82, 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '2024-12-12 12:11:10'),
(34, 'Red Lipstick', 12.99, 2.51, 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', '2024-12-12 12:11:10'),
(35, 'Red Nail Polish', 8.99, 3.91, 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', '2024-12-12 12:11:10'),
(36, 'Calvin Klein CK One', 49.99, 4.85, 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', '2024-12-12 12:11:10'),
(37, 'Chanel Coco Noir Eau De', 129.99, 2.76, 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', '2024-12-12 12:11:10'),
(38, 'Dior J\'adore', 89.99, 3.31, 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', '2024-12-12 12:11:10'),
(39, 'Dolce Shine Eau de', 69.99, 2.68, 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', '2024-12-12 12:11:10'),
(40, 'Gucci Bloom Eau de', 79.99, 2.69, 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', '2024-12-12 12:11:10'),
(41, 'Annibale Colombo Bed', 1899.99, 4.14, 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', '2024-12-12 12:11:10'),
(42, 'Annibale Colombo Sofa', 2499.99, 3.08, 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', '2024-12-12 12:11:10'),
(43, 'Bedside Table African Cherry', 299.99, 4.48, 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '2024-12-12 12:11:10'),
(44, 'Knoll Saarinen Executive Conference Chair', 499.99, 4.11, 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', '2024-12-12 12:11:10'),
(45, 'Wooden Bathroom Sink With Mirror', 799.99, 3.26, 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', '2024-12-12 12:11:10'),
(46, 'Apple', 1.99, 2.96, 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', '2024-12-12 12:11:10'),
(47, 'Beef Steak', 12.99, 2.83, 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', '2024-12-12 12:11:10'),
(48, 'Cat Food', 8.99, 2.88, 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '2024-12-12 12:11:10'),
(49, 'Chicken Meat', 9.99, 4.61, 'Fresh and tender chicken meat, suitable for various culinary preparations.', '2024-12-12 12:11:10'),
(50, 'Cooking Oil', 4.99, 4.01, 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', '2024-12-12 12:11:10'),
(51, 'Cucumber', 1.49, 4.71, 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', '2024-12-12 12:11:10'),
(52, 'Dog Food', 10.99, 2.74, 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', '2024-12-12 12:11:10'),
(53, 'Eggs', 2.99, 4.46, 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', '2024-12-12 12:11:10'),
(54, 'Fish Steak', 14.99, 4.83, 'Quality fish steak, suitable for grilling, baking, or pan-searing.', '2024-12-12 12:11:10'),
(55, 'Green Bell Pepper', 1.29, 4.28, 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', '2024-12-12 12:11:10'),
(56, 'Green Chili Pepper', 0.99, 4.43, 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', '2024-12-12 12:11:10'),
(57, 'Honey Jar', 6.99, 3.50, 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', '2024-12-12 12:11:10'),
(58, 'Ice Cream', 5.49, 3.77, 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '2024-12-12 12:11:10'),
(59, 'Juice', 3.99, 3.41, 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', '2024-12-12 12:11:10'),
(60, 'Kiwi', 2.49, 4.37, 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', '2024-12-12 12:11:10'),
(61, 'Essence Mascara Lash Princess', 9.99, 4.94, 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', '2024-12-12 12:15:37'),
(62, 'Eyeshadow Palette with Mirror', 19.99, 3.28, 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', '2024-12-12 12:15:37'),
(63, 'Powder Canister', 14.99, 3.82, 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '2024-12-12 12:15:37'),
(64, 'Red Lipstick', 12.99, 2.51, 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', '2024-12-12 12:15:37'),
(65, 'Red Nail Polish', 8.99, 3.91, 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', '2024-12-12 12:15:37'),
(66, 'Calvin Klein CK One', 49.99, 4.85, 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', '2024-12-12 12:15:37'),
(67, 'Chanel Coco Noir Eau De', 129.99, 2.76, 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', '2024-12-12 12:15:37'),
(68, 'Dior J\'adore', 89.99, 3.31, 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', '2024-12-12 12:15:37'),
(69, 'Dolce Shine Eau de', 69.99, 2.68, 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', '2024-12-12 12:15:37'),
(70, 'Gucci Bloom Eau de', 79.99, 2.69, 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', '2024-12-12 12:15:37'),
(71, 'Annibale Colombo Bed', 1899.99, 4.14, 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', '2024-12-12 12:15:37'),
(72, 'Annibale Colombo Sofa', 2499.99, 3.08, 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', '2024-12-12 12:15:37'),
(73, 'Bedside Table African Cherry', 299.99, 4.48, 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '2024-12-12 12:15:37'),
(74, 'Knoll Saarinen Executive Conference Chair', 499.99, 4.11, 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', '2024-12-12 12:15:37'),
(75, 'Wooden Bathroom Sink With Mirror', 799.99, 3.26, 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', '2024-12-12 12:15:37'),
(76, 'Apple', 1.99, 2.96, 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', '2024-12-12 12:15:37'),
(77, 'Beef Steak', 12.99, 2.83, 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', '2024-12-12 12:15:37'),
(78, 'Cat Food', 8.99, 2.88, 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '2024-12-12 12:15:37'),
(79, 'Chicken Meat', 9.99, 4.61, 'Fresh and tender chicken meat, suitable for various culinary preparations.', '2024-12-12 12:15:37'),
(80, 'Cooking Oil', 4.99, 4.01, 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', '2024-12-12 12:15:37'),
(81, 'Cucumber', 1.49, 4.71, 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', '2024-12-12 12:15:37'),
(82, 'Dog Food', 10.99, 2.74, 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', '2024-12-12 12:15:37'),
(83, 'Eggs', 2.99, 4.46, 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', '2024-12-12 12:15:37'),
(84, 'Fish Steak', 14.99, 4.83, 'Quality fish steak, suitable for grilling, baking, or pan-searing.', '2024-12-12 12:15:37'),
(85, 'Green Bell Pepper', 1.29, 4.28, 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', '2024-12-12 12:15:37'),
(86, 'Green Chili Pepper', 0.99, 4.43, 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', '2024-12-12 12:15:37'),
(87, 'Honey Jar', 6.99, 3.50, 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', '2024-12-12 12:15:37'),
(88, 'Ice Cream', 5.49, 3.77, 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '2024-12-12 12:15:37'),
(89, 'Juice', 3.99, 3.41, 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', '2024-12-12 12:15:37'),
(90, 'Kiwi', 2.49, 4.37, 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', '2024-12-12 12:15:37'),
(91, 'Essence Mascara Lash Princess', 9.99, 4.94, 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', '2024-12-12 12:15:51'),
(92, 'Eyeshadow Palette with Mirror', 19.99, 3.28, 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', '2024-12-12 12:15:51'),
(93, 'Powder Canister', 14.99, 3.82, 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '2024-12-12 12:15:51'),
(94, 'Red Lipstick', 12.99, 2.51, 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', '2024-12-12 12:15:51'),
(95, 'Red Nail Polish', 8.99, 3.91, 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', '2024-12-12 12:15:51'),
(96, 'Calvin Klein CK One', 49.99, 4.85, 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', '2024-12-12 12:15:51'),
(97, 'Chanel Coco Noir Eau De', 129.99, 2.76, 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', '2024-12-12 12:15:51'),
(98, 'Dior J\'adore', 89.99, 3.31, 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', '2024-12-12 12:15:51'),
(99, 'Dolce Shine Eau de', 69.99, 2.68, 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', '2024-12-12 12:15:51'),
(100, 'Gucci Bloom Eau de', 79.99, 2.69, 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', '2024-12-12 12:15:51'),
(101, 'Annibale Colombo Bed', 1899.99, 4.14, 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', '2024-12-12 12:15:51'),
(102, 'Annibale Colombo Sofa', 2499.99, 3.08, 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', '2024-12-12 12:15:51'),
(103, 'Bedside Table African Cherry', 299.99, 4.48, 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '2024-12-12 12:15:51'),
(104, 'Knoll Saarinen Executive Conference Chair', 499.99, 4.11, 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', '2024-12-12 12:15:51'),
(105, 'Wooden Bathroom Sink With Mirror', 799.99, 3.26, 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', '2024-12-12 12:15:51'),
(106, 'Apple', 1.99, 2.96, 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', '2024-12-12 12:15:51'),
(107, 'Beef Steak', 12.99, 2.83, 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', '2024-12-12 12:15:51'),
(108, 'Cat Food', 8.99, 2.88, 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '2024-12-12 12:15:51'),
(109, 'Chicken Meat', 9.99, 4.61, 'Fresh and tender chicken meat, suitable for various culinary preparations.', '2024-12-12 12:15:51'),
(110, 'Cooking Oil', 4.99, 4.01, 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', '2024-12-12 12:15:51'),
(111, 'Cucumber', 1.49, 4.71, 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', '2024-12-12 12:15:51'),
(112, 'Dog Food', 10.99, 2.74, 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', '2024-12-12 12:15:51'),
(113, 'Eggs', 2.99, 4.46, 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', '2024-12-12 12:15:51'),
(114, 'Fish Steak', 14.99, 4.83, 'Quality fish steak, suitable for grilling, baking, or pan-searing.', '2024-12-12 12:15:51'),
(115, 'Green Bell Pepper', 1.29, 4.28, 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', '2024-12-12 12:15:51'),
(116, 'Green Chili Pepper', 0.99, 4.43, 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', '2024-12-12 12:15:51'),
(117, 'Honey Jar', 6.99, 3.50, 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', '2024-12-12 12:15:51'),
(118, 'Ice Cream', 5.49, 3.77, 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '2024-12-12 12:15:51'),
(119, 'Juice', 3.99, 3.41, 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', '2024-12-12 12:15:51'),
(120, 'Kiwi', 2.49, 4.37, 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', '2024-12-12 12:15:51'),
(121, 'Essence Mascara Lash Princess', 9.99, 4.94, 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', '2024-12-12 12:15:56'),
(122, 'Eyeshadow Palette with Mirror', 19.99, 3.28, 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', '2024-12-12 12:15:56'),
(123, 'Powder Canister', 14.99, 3.82, 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '2024-12-12 12:15:56'),
(124, 'Red Lipstick', 12.99, 2.51, 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', '2024-12-12 12:15:56'),
(125, 'Red Nail Polish', 8.99, 3.91, 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', '2024-12-12 12:15:56'),
(126, 'Calvin Klein CK One', 49.99, 4.85, 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', '2024-12-12 12:15:56'),
(127, 'Chanel Coco Noir Eau De', 129.99, 2.76, 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', '2024-12-12 12:15:56'),
(128, 'Dior J\'adore', 89.99, 3.31, 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', '2024-12-12 12:15:56'),
(129, 'Dolce Shine Eau de', 69.99, 2.68, 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', '2024-12-12 12:15:56'),
(130, 'Gucci Bloom Eau de', 79.99, 2.69, 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', '2024-12-12 12:15:56'),
(131, 'Annibale Colombo Bed', 1899.99, 4.14, 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', '2024-12-12 12:15:56'),
(132, 'Annibale Colombo Sofa', 2499.99, 3.08, 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', '2024-12-12 12:15:56'),
(133, 'Bedside Table African Cherry', 299.99, 4.48, 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '2024-12-12 12:15:56'),
(134, 'Knoll Saarinen Executive Conference Chair', 499.99, 4.11, 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', '2024-12-12 12:15:56'),
(135, 'Wooden Bathroom Sink With Mirror', 799.99, 3.26, 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', '2024-12-12 12:15:56'),
(136, 'Apple', 1.99, 2.96, 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', '2024-12-12 12:15:56'),
(137, 'Beef Steak', 12.99, 2.83, 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', '2024-12-12 12:15:56'),
(138, 'Cat Food', 8.99, 2.88, 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '2024-12-12 12:15:56'),
(139, 'Chicken Meat', 9.99, 4.61, 'Fresh and tender chicken meat, suitable for various culinary preparations.', '2024-12-12 12:15:56'),
(140, 'Cooking Oil', 4.99, 4.01, 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', '2024-12-12 12:15:56'),
(141, 'Cucumber', 1.49, 4.71, 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', '2024-12-12 12:15:56'),
(142, 'Dog Food', 10.99, 2.74, 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', '2024-12-12 12:15:56'),
(143, 'Eggs', 2.99, 4.46, 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', '2024-12-12 12:15:56'),
(144, 'Fish Steak', 14.99, 4.83, 'Quality fish steak, suitable for grilling, baking, or pan-searing.', '2024-12-12 12:15:56'),
(145, 'Green Bell Pepper', 1.29, 4.28, 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', '2024-12-12 12:15:56'),
(146, 'Green Chili Pepper', 0.99, 4.43, 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', '2024-12-12 12:15:56'),
(147, 'Honey Jar', 6.99, 3.50, 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', '2024-12-12 12:15:56'),
(148, 'Ice Cream', 5.49, 3.77, 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '2024-12-12 12:15:56'),
(149, 'Juice', 3.99, 3.41, 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', '2024-12-12 12:15:56'),
(150, 'Kiwi', 2.49, 4.37, 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', '2024-12-12 12:15:56'),
(151, 'Essence Mascara Lash Princess', 9.99, 4.94, 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', '2024-12-12 12:16:17'),
(152, 'Eyeshadow Palette with Mirror', 19.99, 3.28, 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', '2024-12-12 12:16:17'),
(153, 'Powder Canister', 14.99, 3.82, 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '2024-12-12 12:16:17'),
(154, 'Red Lipstick', 12.99, 2.51, 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', '2024-12-12 12:16:17'),
(155, 'Red Nail Polish', 8.99, 3.91, 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', '2024-12-12 12:16:17'),
(156, 'Calvin Klein CK One', 49.99, 4.85, 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', '2024-12-12 12:16:17'),
(157, 'Chanel Coco Noir Eau De', 129.99, 2.76, 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', '2024-12-12 12:16:17'),
(158, 'Dior J\'adore', 89.99, 3.31, 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', '2024-12-12 12:16:17'),
(159, 'Dolce Shine Eau de', 69.99, 2.68, 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', '2024-12-12 12:16:17'),
(160, 'Gucci Bloom Eau de', 79.99, 2.69, 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', '2024-12-12 12:16:17'),
(161, 'Annibale Colombo Bed', 1899.99, 4.14, 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', '2024-12-12 12:16:17'),
(162, 'Annibale Colombo Sofa', 2499.99, 3.08, 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', '2024-12-12 12:16:17'),
(163, 'Bedside Table African Cherry', 299.99, 4.48, 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '2024-12-12 12:16:17'),
(164, 'Knoll Saarinen Executive Conference Chair', 499.99, 4.11, 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', '2024-12-12 12:16:17'),
(165, 'Wooden Bathroom Sink With Mirror', 799.99, 3.26, 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', '2024-12-12 12:16:17'),
(166, 'Apple', 1.99, 2.96, 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', '2024-12-12 12:16:17'),
(167, 'Beef Steak', 12.99, 2.83, 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', '2024-12-12 12:16:17'),
(168, 'Cat Food', 8.99, 2.88, 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '2024-12-12 12:16:17'),
(169, 'Chicken Meat', 9.99, 4.61, 'Fresh and tender chicken meat, suitable for various culinary preparations.', '2024-12-12 12:16:17'),
(170, 'Cooking Oil', 4.99, 4.01, 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', '2024-12-12 12:16:17'),
(171, 'Cucumber', 1.49, 4.71, 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', '2024-12-12 12:16:17'),
(172, 'Dog Food', 10.99, 2.74, 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', '2024-12-12 12:16:17'),
(173, 'Eggs', 2.99, 4.46, 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', '2024-12-12 12:16:17'),
(174, 'Fish Steak', 14.99, 4.83, 'Quality fish steak, suitable for grilling, baking, or pan-searing.', '2024-12-12 12:16:17'),
(175, 'Green Bell Pepper', 1.29, 4.28, 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', '2024-12-12 12:16:17'),
(176, 'Green Chili Pepper', 0.99, 4.43, 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', '2024-12-12 12:16:17'),
(177, 'Honey Jar', 6.99, 3.50, 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', '2024-12-12 12:16:17'),
(178, 'Ice Cream', 5.49, 3.77, 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '2024-12-12 12:16:17'),
(179, 'Juice', 3.99, 3.41, 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', '2024-12-12 12:16:17'),
(180, 'Kiwi', 2.49, 4.37, 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', '2024-12-12 12:16:17'),
(181, 'Essence Mascara Lash Princess', 9.99, 4.94, 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', '2024-12-12 12:16:21'),
(182, 'Eyeshadow Palette with Mirror', 19.99, 3.28, 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', '2024-12-12 12:16:21'),
(183, 'Powder Canister', 14.99, 3.82, 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '2024-12-12 12:16:21'),
(184, 'Red Lipstick', 12.99, 2.51, 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', '2024-12-12 12:16:21'),
(185, 'Red Nail Polish', 8.99, 3.91, 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', '2024-12-12 12:16:21'),
(186, 'Calvin Klein CK One', 49.99, 4.85, 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', '2024-12-12 12:16:21'),
(187, 'Chanel Coco Noir Eau De', 129.99, 2.76, 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', '2024-12-12 12:16:21'),
(188, 'Dior J\'adore', 89.99, 3.31, 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', '2024-12-12 12:16:21'),
(189, 'Dolce Shine Eau de', 69.99, 2.68, 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', '2024-12-12 12:16:21'),
(190, 'Gucci Bloom Eau de', 79.99, 2.69, 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', '2024-12-12 12:16:21'),
(191, 'Annibale Colombo Bed', 1899.99, 4.14, 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', '2024-12-12 12:16:21'),
(192, 'Annibale Colombo Sofa', 2499.99, 3.08, 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', '2024-12-12 12:16:21'),
(193, 'Bedside Table African Cherry', 299.99, 4.48, 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '2024-12-12 12:16:21'),
(194, 'Knoll Saarinen Executive Conference Chair', 499.99, 4.11, 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', '2024-12-12 12:16:21'),
(195, 'Wooden Bathroom Sink With Mirror', 799.99, 3.26, 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', '2024-12-12 12:16:21'),
(196, 'Apple', 1.99, 2.96, 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', '2024-12-12 12:16:21'),
(197, 'Beef Steak', 12.99, 2.83, 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', '2024-12-12 12:16:21'),
(198, 'Cat Food', 8.99, 2.88, 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '2024-12-12 12:16:21'),
(199, 'Chicken Meat', 9.99, 4.61, 'Fresh and tender chicken meat, suitable for various culinary preparations.', '2024-12-12 12:16:21'),
(200, 'Cooking Oil', 4.99, 4.01, 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', '2024-12-12 12:16:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
