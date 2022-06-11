-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2021 at 12:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tshu2_cidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_cms`
--

CREATE TABLE `ci_cms` (
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timedate` timestamp NOT NULL DEFAULT current_timestamp(),
  `filename` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_cms`
--

INSERT INTO `ci_cms` (`title`, `description`, `timedate`, `filename`, `author_id`, `article_id`) VALUES
('Basic Bootstrap Landing Page', '<h2>Step One: Download & Install a Text Editor:</h2>\r\nThe first step before we start coding is to download and install a text editor. Now we can code with notepad but it will be a pretty miserable experience so I recommend using Visual Studio Code or VS Code as it\'s more commonly known as. VS Code is free, lightweight, fast and it has a lot of third party extensions which will come in handy as you grow as web developer. Here\'s a download link to VS Code.\r\n\r\nhttps://code.visualstudio.com/download\r\n\r\n<h2> Step Two: Create The File Structure: </h2>\r\nThis is pretty important because this is where you will store all your files for creating your bootstrap landing page. In my case I created a folder called \"bootstrap-landing-page\" and inside it I made three more folders called \"js\", \"img\" & \"css\" plus an index.html file. We won\'t be using the \"js\", \"img\" and \"CSS\" folders today but this is the standard file structure so I recommend making them anyways. Make sure everything is in lowercase and make sure it is index.html and nothing different. If you need a reference just look at the inserted image.\r\n\r\n<h2>Step Three: Open the Bootstrap Folder you created: </h2>\r\nOkay now you should open the Bootstrap folder you just created. Right click on the folder and click \"Open with code\" and it should instantly open the folder you created with it\'s subfolders in VS Code.\r\n\r\n<h2>Step Four: Open the index.html page in the browser:</h2>\r\nNow I would double click the index.html page and open it in the browser. You should see nothing but that\'s okay because we haven\'t started coding.\r\n\r\n<h2>Step Five: Add some boilerplate bootstrap code:</h2>\r\nOkay now the fun begins. We get to start coding. First I would go to https://getbootstrap.com/docs/5.0/getting-started/introduction/ and copy the starter template and past it into your blank index.html page. When you refresh the index.html page in the browser you should see \"Hello, World!\" printed out. \r\n\r\n<h2>Step Six: Modify the starter template:</h2>\r\nOkay now we can modify the starter template. First after the opening body tag I would put a opening div with a class of \"container\" and I would place the closing div right before the closing body tag. \r\n\r\n<h2>Step Seven: Adding some navigation:</h2>\r\nNext we will add some navigation. I would go to https://getbootstrap.com/docs/5.0/components/navbar/ and scroll down until the last navigation example and just before form navigation. I would copy that sample code and paste it in vs code and before the opening h1 and closing h1 tag. At point I would modify the names of the nav items to fit your needs as well.\r\n\r\n<h2>Step Eight: Centering the title:</h2>\r\nOkay now we should change the left aligned title to a center aligned one. To do so I would add a class of \"text-center\" to the opening h1 tag.\r\n\r\n<h2>Step Nine: Adding some text:</h2>\r\nOkay to finish everything off. I am going to add some text. After your closing h1 tag I would make a opening  p tag and closing p tag. In between the opening p and closing p tag I would put lorem150 and press enter to get some dummy text. \r\n\r\nIf everything went well then your page should like the GIF demo I have inserted. With this basic bootstrap template. You can do many things. Good luck and happy coding. ', '2021-04-23 17:48:20', 'Demo.gif', 5, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_cms`
--
ALTER TABLE `ci_cms`
  ADD PRIMARY KEY (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_cms`
--
ALTER TABLE `ci_cms`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
