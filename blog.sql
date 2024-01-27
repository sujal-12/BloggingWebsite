-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 09:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(5, 'Wild Life', 'This is description for wild life category.'),
(7, 'Science &amp; Innovation Technology', 'This is science &amp; technology description.'),
(8, 'Uncategorized', 'This is the description for uncategorized category.'),
(11, 'Art', 'This is the description for Art category.'),
(13, 'Food', 'This is the description for food category.'),
(15, 'Travel', 'This is description for travel category.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(11, 'Art is a diverse range of human activity', 'The various visual arts exist within a continuum that ranges from purely aesthetic purposes at one end to purely utilitarian purposes at the other. Such a polarity of purpose is reflected in the commonly used terms artist and artisan, the latter understood as one who gives considerable attention to the utilitarian. This should by no means be taken as a rigid scheme, however.', '1702198211blog58.jpg', '2023-12-10 07:22:08', 11, 5, 0),
(12, 'Elephants are the largest living land animals.', 'Elephants are scattered throughout sub-Saharan Africa, South Asia, and Southeast Asia and are found in different habitats, including savannahs, forests, deserts, and marshes. They are herbivorous, and they stay near water when it is accessible. They are considered to be keystone species, due to their impact on their environments.', '1702197222blog76.jpg', '2023-12-10 07:23:54', 5, 5, 0),
(14, 'Travel is the movement of people between distant geographical locations. ', '  Travel is the activity of going from one place to another place.[1] When a person makes the same trip every day to work or school, this type of traveling is usually called &quot;commuting.&quot; Some people travel to other cities as part of their job. This is called &quot;business travel.&quot; When many people travel to a distant place to stay, it is called &quot;human migration&quot;.', '1702204363blog35.jpg', '2023-12-10 09:44:27', 15, 5, 0),
(15, 'India is one of the top-ranking countries in the field of basic research', '  Indian Science has come to be regarded as one of the most powerful instruments of growth and development, especially in the emerging scenario and competitive economy. In the wake of the recent developments and the new demands that are being placed on the S&amp;T system, it is necessary for us to embark on some major science projects which have relevance to national needs and which will also be relevant for tomorrow&#039;s technology. The Department of Science &amp; Technology plays a pivotal role in promotion of science &amp; technology in the country.', '1702204415blog15.jpg', '2023-12-10 09:52:03', 7, 5, 0),
(16, 'Parrots are birds of the order Psittaciformes.', '  They have a compact body with a large head and a short neck. Their beaks are short, strong and curved. The two parts of the beak are very strong and used to break fruits and seeds. The tongue is large and strong. Most parrots can fly, though some lost their powers of flight after they came to live on oceanic islands. The kakapo is an example.', '1702204784blog48.jpg', '2023-12-10 10:38:56', 5, 21, 0),
(17, 'Peacocks are the male versions of the Peafowl birds.', '  Peacocks are the male versions of the Peafowl birds. This name has been provided to two different species of these birds which are the prime members of the family of Pheasants. There are different types of birds belonging to this family and the peacock bird is just one of them. These birds are mostly known for their feathers and the bright color of their skin. Peacocks are known to be very proud creatures. In these notes, we are going to learn some interesting facts about Peacocks such as the scientific name of peacock, the different habitats, their diet, their description, and much more.\r\n\r\nRefer this link for more : https://youtu.be/YzGgIb5MnjA?si=yjjJ3txcE1HUI7Mw', '1702204968blog89.jpg', '2023-12-10 10:42:27', 5, 21, 0),
(18, 'Information about coloured sparrows.', '  Male House Sparrows are brightly colored birds with gray heads, white cheeks, a black bib, and rufous neck &ndash; although in cities you may see some that are dull and grubby. Females are a plain buffy-brown overall with dingy gray-brown underparts. Their backs are noticeably striped with buff, black, and brown.', '1702205299blog56.jpg', '2023-12-10 10:47:58', 5, 22, 0),
(19, 'Gondeshwar Temple', '  The Gondeshwar Temple (IAST: Gondeśvara) is an 11th-12th century Hindu temple located in Sinnar, a town in the Nashik district of Maharashtra, India. It features a panchayatana plan; with a main shrine dedicated to Shiva; and four subsidiary shrines dedicated to Surya, Vishnu, Parvati, and Ganesha.', '1702206093gondeshwar.jpeg', '2023-12-10 11:01:10', 15, 21, 0),
(21, 'Nashik is the best climate city', '  Panchvati is situated on the left banks of sacred river Godavari in Nashik city.\r\n\r\nClose to Kalaram temple there are some very old and lofty banyan trees which are believed to be sprung from five banyans which gave its name to Panchvati.The name &lsquo;Panchvati&rsquo; is derived from the words Panch which means five and Vati which means banyan tree. This is the site where Sita Gumph or Sita&rsquo;s Cave is situated . Kalaram temple , Kapaleshwar temple, Ganga Godavari temple, Sunder Narayan temple, Talkuteshwar temple,temple, NilkantheshwarGoraram mandir Murlidhar Mandir,Tilbhandeshwar mandir, Balaji temple, Sandvyachi devi temple, Vitthal temple, Pataleshwar temple,Naroshankar temple, Ramkund, Karthikswami temple,Dutondya maruti , Katya maruti temple, Panchmukhi Hanuman temple , Bhadrakali temple,Katpurthala monuments are located in and around Panchavati area.Nashik has earned name of the Banaras of western India due to large no of temples.', '1702215927blog22.jpg', '2023-12-10 13:45:09', 15, 22, 0),
(22, 'Puneri Misal', '  Punekars have always prided themselves on their well-known, misal pav. Rightly so, nobody does Misal Pav better than Pune. The authentic Maharashtrian dish is the right amount of spicy tangy and delicious! The recipe of the famous breakfast dish includes cooked pulses like matki cooked to a tangy curry with farsan and onions. The texture and flavour of the dish vary from region to region. While Kolhapuri misal is an amalgamation of hot spices, Puneri misal is subtle. Pune, as a city has a lot to offer, especially when it comes to local delicacies like misal pav. If you are in Pune or from Pune, these hotspots should be on your list to find your favourite misal pav in the city.', '1702220548blog13.jpg', '2023-12-10 15:02:01', 13, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(5, 'sujal', 'sarangdhar', 'sujal1', 'abc@gmail.com', '$2y$10$uMG1CgOWhb0Tm8I.4J49IeY9mKb6Vau6rISdmus36dpODiYOnhNSO', '1702080196avatar2.jpg', 1),
(21, 'vijay', 'patil', 'vijay1', 'vijay@gmail.com', '$2y$10$AtcLoBL8TeU345fbY2/mTegSsX7RalLWspsp/hQHoyCIDZz./fGb6', '1702204632avatar15.jpg', 0),
(22, 'sumedh', 'sarangdhar', 'sumedh1', 'sumedh@gmail.com', '$2y$10$cPzTvlBSZXW19HbCKpXcT.BKbkNLFB6Vzmf.aP6WIDEO36rbjSbtm', '1702205103avatar8.jpg', 1),
(24, 'shivam', 'mishra', 'shivam1', 'shivam@gmail.com', '$2y$10$P1QYol3JCnAIgtaXolzxKef1Fc33M37naa3Jn0koi8qZzChQNrdZu', '1702220400avatar13.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_category` (`category_id`),
  ADD KEY `fk_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
