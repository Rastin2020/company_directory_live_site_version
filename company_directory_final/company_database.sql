-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 02:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `locationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `locationID`) VALUES
(1, 'Human Resources', 1),
(2, 'Sales', 2),
(3, 'Marketing', 2),
(4, 'Legal', 1),
(5, 'Services', 1),
(6, 'Research and Development', 3),
(7, 'Product Management', 3),
(8, 'Training', 4),
(9, 'Support', 4),
(10, 'Engineering', 5),
(11, 'Accounting', 5),
(12, 'Business Development', 3);

-- --------------------------------------------------------

--
-- Table structure for table `detailed_location`
--

CREATE TABLE `detailed_location` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` text NOT NULL,
  `locationID` int(11) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailed_location`
--

INSERT INTO `detailed_location` (`id`, `name`, `locationID`, `location`) VALUES
(1, 'Human Resources', 1, 'London'),
(2, 'Sales', 2, 'New York'),
(3, 'Marketing', 2, 'New York'),
(4, 'Legal', 1, 'London'),
(5, 'Services', 1, 'London'),
(6, 'Research and Development', 3, 'Paris'),
(7, 'Product Management', 3, 'Paris'),
(8, 'Training', 4, 'Munich'),
(9, 'Support', 4, 'Munich'),
(10, 'Engineering', 5, 'Rome'),
(11, 'Accounting', 5, 'Rome'),
(12, 'Business Development', 3, 'Paris');

-- --------------------------------------------------------

--
-- Table structure for table `final`
--

CREATE TABLE `final` (
  `id` int(11) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `jobTitle` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `departmentID` int(11) NOT NULL,
  `department` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final`
--

INSERT INTO `final` (`id`, `firstName`, `lastName`, `jobTitle`, `email`, `departmentID`, `department`) VALUES
(1, 'Rosana', 'Heffron', '', 'rheffron0@ibm.com', 1, ''),
(2, 'Kris', 'Kovnot', '', 'kkovnot1@google.nl', 2, ''),
(3, 'Vera', 'Kisbee', '', 'vkisbee2@nih.gov', 2, ''),
(4, 'Aveline', 'Edgson', '', 'aedgson3@wikispaces.com', 3, ''),
(5, 'Bertie', 'Wittke', '', 'bwittke4@yahoo.com', 4, ''),
(6, 'Demetre', 'Cossam', '', 'dcossam5@washington.edu', 5, ''),
(7, 'Annabela', 'McGavigan', '', 'amcgavigan6@wp.com', 4, ''),
(8, 'Crichton', 'McAndrew', '', 'cmcandrew7@zdnet.com', 1, ''),
(9, 'Cordula', 'Plain', '', 'cplain8@google.ca', 5, ''),
(10, 'Glen', 'McDougle', '', 'gmcdougle9@meetup.com', 6, ''),
(11, 'Theo', 'Audas', '', 'taudasa@newsvine.com', 7, ''),
(12, 'Spense', 'Jolliss', '', 'sjollissb@wufoo.com', 8, ''),
(13, 'Leopold', 'Carl', '', 'lcarlc@paginegialle.it', 9, ''),
(14, 'Barr', 'MacAllan', '', 'bmacalland@github.com', 5, ''),
(15, 'Suzie', 'Cromer', '', 'scromere@imageshack.us', 1, ''),
(16, 'Tracee', 'Gisbourn', '', 'tgisbournf@bloglines.com', 10, ''),
(17, 'Taylor', 'St. Quintin', '', 'tstquinting@chronoengine.com', 10, ''),
(18, 'Lin', 'Klassmann', '', 'lklassmannh@indiatimes.com', 10, ''),
(19, 'Lay', 'Fintoph', '', 'lfintophi@goo.gl', 11, ''),
(20, 'Moishe', 'Flinn', '', 'mflinnj@list-manage.com', 12, ''),
(21, 'Gay', 'Bickford', '', 'gbickfordk@scientificamerican.com', 6, ''),
(22, 'Erik', 'Lindback', '', 'elindbackl@virginia.edu', 8, ''),
(23, 'Tamarra', 'Ace', '', 'tacem@vinaora.com', 9, ''),
(24, 'Barbara-anne', 'Rooksby', '', 'brooksbyn@issuu.com', 12, ''),
(25, 'Lucien', 'Allsup', '', 'lallsupo@goo.ne.jp', 9, ''),
(26, 'Jackelyn', 'Imlach', '', 'jimlachp@google.it', 11, ''),
(27, 'Virge', 'Bootes', '', 'vbootesq@oracle.com', 2, ''),
(28, 'Rafferty', 'Matasov', '', 'rmatasovr@4shared.com', 4, ''),
(29, 'Vanya', 'Goulder', '', 'vgoulders@phoca.cz', 9, ''),
(30, 'Bonita', 'McGonagle', '', 'bmcgonaglet@microsoft.com', 1, ''),
(31, 'Allx', 'Whaley', '', 'awhaleyu@bbb.org', 1, ''),
(32, 'Mavis', 'Lernihan', '', 'mlernihanv@netscape.com', 5, ''),
(33, 'Vern', 'Durling', '', 'vdurlingw@goo.gl', 1, ''),
(34, 'Myles', 'Minchi', '', 'mminchix@smugmug.com', 7, ''),
(35, 'Anitra', 'Coleridge', '', 'acoleridgey@nbcnews.com', 6, ''),
(36, 'Ailis', 'Brewster', '', 'abrewsterz@businesswire.com', 7, ''),
(37, 'Rahal', 'Tute', '', 'rtute10@pinterest.com', 6, ''),
(38, 'Warner', 'Blonden', '', 'wblonden11@spiegel.de', 12, ''),
(39, 'Melvyn', 'Canner', '', 'mcanner12@eepurl.com', 4, ''),
(40, 'Ryann', 'Giampietro', '', 'rgiampietro13@theguardian.com', 4, ''),
(41, 'Harwell', 'Jefferys', '', 'hjefferys14@jimdo.com', 10, ''),
(42, 'Lanette', 'Buss', '', 'lbuss15@51.la', 4, ''),
(43, 'Lissie', 'Reddington', '', 'lreddington16@w3.org', 9, ''),
(44, 'Dore', 'Braidford', '', 'dbraidford17@google.com.br', 11, ''),
(45, 'Lizabeth', 'Di Franceshci', '', 'ldifranceshci18@mediafire.com', 8, ''),
(46, 'Felic', 'Sharland', '', 'fsharland19@myspace.com', 12, ''),
(47, 'Duff', 'Quail', '', 'dquail1a@vimeo.com', 9, ''),
(48, 'Brendis', 'Shivell', '', 'bshivell1b@un.org', 1, ''),
(49, 'Nevile', 'Schimaschke', '', 'nschimaschke1c@hexun.com', 10, ''),
(50, 'Jon', 'Calbaithe', '', 'jcalbaithe1d@netvibes.com', 4, ''),
(51, 'Emmery', 'Darben', '', 'edarben1e@mapquest.com', 10, ''),
(52, 'Staford', 'Whitesel', '', 'swhitesel1f@nasa.gov', 6, ''),
(53, 'Benjamin', 'Hawkslee', '', 'bhawkslee1g@hubpages.com', 7, ''),
(54, 'Myrle', 'Speer', '', 'mspeer1h@tripod.com', 3, ''),
(55, 'Matthus', 'Banfield', '', 'mbanfield1i@angelfire.com', 3, ''),
(56, 'Annadiana', 'Drance', '', 'adrance1j@omniture.com', 3, ''),
(57, 'Rinaldo', 'Fandrey', '', 'rfandrey1k@bbc.co.uk', 2, ''),
(58, 'Roanna', 'Standering', '', 'rstandering1l@cocolog-nifty.com', 3, ''),
(59, 'Lorrie', 'Fattorini', '', 'lfattorini1m@geocities.jp', 9, ''),
(60, 'Talbot', 'Andrassy', '', 'tandrassy1n@bigcartel.com', 4, ''),
(61, 'Cindi', 'O\'Mannion', '', 'comannion1o@ameblo.jp', 11, ''),
(62, 'Pancho', 'Mullineux', '', 'pmullineux1p@webmd.com', 1, ''),
(63, 'Cynthy', 'Peyntue', '', 'cpeyntue1q@amazon.co.jp', 6, ''),
(64, 'Kristine', 'Christal', '', 'kchristal1r@behance.net', 8, ''),
(65, 'Dniren', 'Reboulet', '', 'dreboulet1s@360.cn', 7, ''),
(66, 'Aggy', 'Napier', '', 'anapier1t@sciencedirect.com', 3, ''),
(67, 'Gayleen', 'Hessay', '', 'ghessay1u@exblog.jp', 4, ''),
(68, 'Cull', 'Snoden', '', 'csnoden1v@so-net.ne.jp', 1, ''),
(69, 'Vlad', 'Crocombe', '', 'vcrocombe1w@mtv.com', 7, ''),
(70, 'Georgeanna', 'Joisce', '', 'gjoisce1x@google.com.au', 6, ''),
(71, 'Ursola', 'Berthomieu', '', 'uberthomieu1y@un.org', 4, ''),
(72, 'Mair', 'McKirdy', '', 'mmckirdy1z@ovh.net', 1, ''),
(73, 'Erma', 'Runnalls', '', 'erunnalls20@spiegel.de', 8, ''),
(74, 'Heida', 'Gallone', '', 'hgallone21@hostgator.com', 10, ''),
(75, 'Christina', 'Denge', '', 'cdenge22@canalblog.com', 12, ''),
(76, 'Wilone', 'Fredi', '', 'wfredi23@gizmodo.com', 7, ''),
(77, 'Stormie', 'Bolderstone', '', 'sbolderstone24@globo.com', 11, ''),
(78, 'Darryl', 'Pool', '', 'dpool25@vistaprint.com', 11, ''),
(79, 'Nikolas', 'Mager', '', 'nmager26@nifty.com', 5, ''),
(80, 'Brittney', 'Gaskal', '', 'bgaskal27@weather.com', 10, ''),
(81, 'Field', 'Gresty', '', 'fgresty28@networkadvertising.org', 4, ''),
(82, 'Martina', 'Tremoulet', '', 'mtremoulet29@sciencedaily.com', 3, ''),
(83, 'Robena', 'Ivanyutin', '', 'rivanyutin2a@mozilla.org', 2, ''),
(84, 'Reagen', 'Corner', '', 'rcorner2b@qq.com', 11, ''),
(85, 'Eveleen', 'Sulter', '', 'esulter2c@nature.com', 6, ''),
(86, 'Christy', 'Dunbobbin', '', 'cdunbobbin2d@feedburner.com', 8, ''),
(87, 'Winthrop', 'Lansley', '', 'wlansley2e@alibaba.com', 8, ''),
(88, 'Lissa', 'Insley', '', 'linsley2f@friendfeed.com', 3, ''),
(89, 'Shell', 'Risebarer', '', 'srisebarer2g@patch.com', 10, ''),
(90, 'Cherianne', 'Liddyard', '', 'cliddyard2h@com.com', 2, ''),
(91, 'Brendan', 'Fooks', '', 'bfooks2i@utexas.edu', 2, ''),
(92, 'Edmund', 'Tace', '', 'etace2j@hatena.ne.jp', 9, ''),
(93, 'Ki', 'Tomasini', '', 'ktomasini2k@cnbc.com', 10, ''),
(94, 'Chadd', 'McGettrick', '', 'cmcgettrick2l@simplemachines.org', 10, ''),
(95, 'Dulcie', 'Baudi', '', 'dbaudi2m@last.fm', 3, ''),
(96, 'Barnebas', 'Mowbray', '', 'bmowbray2n@cbslocal.com', 1, ''),
(97, 'Stefanie', 'Anker', '', 'sanker2o@hud.gov', 5, ''),
(98, 'Cherye', 'de Cullip', '', 'cdecullip2p@loc.gov', 10, ''),
(99, 'Sinclare', 'Deverall', '', 'sdeverall2q@ow.ly', 6, ''),
(100, 'Shae', 'Johncey', '', 'sjohncey2r@bluehost.com', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `final_1`
--

CREATE TABLE `final_1` (
  `id` int(11) NOT NULL DEFAULT 0,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `jobTitle` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `departmentID` int(11) NOT NULL,
  `department` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final_1`
--

INSERT INTO `final_1` (`id`, `firstName`, `lastName`, `jobTitle`, `email`, `departmentID`, `department`) VALUES
(1, 'Rosana', 'Heffron', '', 'rheffron0@ibm.com', 1, 'Human Resources'),
(2, 'Kris', 'Kovnot', '', 'kkovnot1@google.nl', 2, 'Sales'),
(3, 'Vera', 'Kisbee', '', 'vkisbee2@nih.gov', 2, 'Sales'),
(4, 'Aveline', 'Edgson', '', 'aedgson3@wikispaces.com', 3, 'Marketing'),
(5, 'Bertie', 'Wittke', '', 'bwittke4@yahoo.com', 4, 'Legal'),
(6, 'Demetre', 'Cossam', '', 'dcossam5@washington.edu', 5, 'Services'),
(7, 'Annabela', 'McGavigan', '', 'amcgavigan6@wp.com', 4, 'Legal'),
(8, 'Crichton', 'McAndrew', '', 'cmcandrew7@zdnet.com', 1, 'Human Resources'),
(9, 'Cordula', 'Plain', '', 'cplain8@google.ca', 5, 'Services'),
(10, 'Glen', 'McDougle', '', 'gmcdougle9@meetup.com', 6, 'Research and Development'),
(11, 'Theo', 'Audas', '', 'taudasa@newsvine.com', 7, 'Product Management'),
(12, 'Spense', 'Jolliss', '', 'sjollissb@wufoo.com', 8, 'Training'),
(13, 'Leopold', 'Carl', '', 'lcarlc@paginegialle.it', 9, 'Support'),
(14, 'Barr', 'MacAllan', '', 'bmacalland@github.com', 5, 'Services'),
(15, 'Suzie', 'Cromer', '', 'scromere@imageshack.us', 1, 'Human Resources'),
(16, 'Tracee', 'Gisbourn', '', 'tgisbournf@bloglines.com', 10, 'Engineering'),
(17, 'Taylor', 'St. Quintin', '', 'tstquinting@chronoengine.com', 10, 'Engineering'),
(18, 'Lin', 'Klassmann', '', 'lklassmannh@indiatimes.com', 10, 'Engineering'),
(19, 'Lay', 'Fintoph', '', 'lfintophi@goo.gl', 11, 'Accounting'),
(20, 'Moishe', 'Flinn', '', 'mflinnj@list-manage.com', 12, 'Business Development'),
(21, 'Gay', 'Bickford', '', 'gbickfordk@scientificamerican.com', 6, 'Research and Development'),
(22, 'Erik', 'Lindback', '', 'elindbackl@virginia.edu', 8, 'Training'),
(23, 'Tamarra', 'Ace', '', 'tacem@vinaora.com', 9, 'Support'),
(24, 'Barbara-anne', 'Rooksby', '', 'brooksbyn@issuu.com', 12, 'Business Development'),
(25, 'Lucien', 'Allsup', '', 'lallsupo@goo.ne.jp', 9, 'Support'),
(26, 'Jackelyn', 'Imlach', '', 'jimlachp@google.it', 11, 'Accounting'),
(27, 'Virge', 'Bootes', '', 'vbootesq@oracle.com', 2, 'Sales'),
(28, 'Rafferty', 'Matasov', '', 'rmatasovr@4shared.com', 4, 'Legal'),
(29, 'Vanya', 'Goulder', '', 'vgoulders@phoca.cz', 9, 'Support'),
(30, 'Bonita', 'McGonagle', '', 'bmcgonaglet@microsoft.com', 1, 'Human Resources'),
(31, 'Allx', 'Whaley', '', 'awhaleyu@bbb.org', 1, 'Human Resources'),
(32, 'Mavis', 'Lernihan', '', 'mlernihanv@netscape.com', 5, 'Services'),
(33, 'Vern', 'Durling', '', 'vdurlingw@goo.gl', 1, 'Human Resources'),
(34, 'Myles', 'Minchi', '', 'mminchix@smugmug.com', 7, 'Product Management'),
(35, 'Anitra', 'Coleridge', '', 'acoleridgey@nbcnews.com', 6, 'Research and Development'),
(36, 'Ailis', 'Brewster', '', 'abrewsterz@businesswire.com', 7, 'Product Management'),
(37, 'Rahal', 'Tute', '', 'rtute10@pinterest.com', 6, 'Research and Development'),
(38, 'Warner', 'Blonden', '', 'wblonden11@spiegel.de', 12, 'Business Development'),
(39, 'Melvyn', 'Canner', '', 'mcanner12@eepurl.com', 4, 'Legal'),
(40, 'Ryann', 'Giampietro', '', 'rgiampietro13@theguardian.com', 4, 'Legal'),
(41, 'Harwell', 'Jefferys', '', 'hjefferys14@jimdo.com', 10, 'Engineering'),
(42, 'Lanette', 'Buss', '', 'lbuss15@51.la', 4, 'Legal'),
(43, 'Lissie', 'Reddington', '', 'lreddington16@w3.org', 9, 'Support'),
(44, 'Dore', 'Braidford', '', 'dbraidford17@google.com.br', 11, 'Accounting'),
(45, 'Lizabeth', 'Di Franceshci', '', 'ldifranceshci18@mediafire.com', 8, 'Training'),
(46, 'Felic', 'Sharland', '', 'fsharland19@myspace.com', 12, 'Business Development'),
(47, 'Duff', 'Quail', '', 'dquail1a@vimeo.com', 9, 'Support'),
(48, 'Brendis', 'Shivell', '', 'bshivell1b@un.org', 1, 'Human Resources'),
(49, 'Nevile', 'Schimaschke', '', 'nschimaschke1c@hexun.com', 10, 'Engineering'),
(50, 'Jon', 'Calbaithe', '', 'jcalbaithe1d@netvibes.com', 4, 'Legal'),
(51, 'Emmery', 'Darben', '', 'edarben1e@mapquest.com', 10, 'Engineering'),
(52, 'Staford', 'Whitesel', '', 'swhitesel1f@nasa.gov', 6, 'Research and Development'),
(53, 'Benjamin', 'Hawkslee', '', 'bhawkslee1g@hubpages.com', 7, 'Product Management'),
(54, 'Myrle', 'Speer', '', 'mspeer1h@tripod.com', 3, 'Marketing'),
(55, 'Matthus', 'Banfield', '', 'mbanfield1i@angelfire.com', 3, 'Marketing'),
(56, 'Annadiana', 'Drance', '', 'adrance1j@omniture.com', 3, 'Marketing'),
(57, 'Rinaldo', 'Fandrey', '', 'rfandrey1k@bbc.co.uk', 2, 'Sales'),
(58, 'Roanna', 'Standering', '', 'rstandering1l@cocolog-nifty.com', 3, 'Marketing'),
(59, 'Lorrie', 'Fattorini', '', 'lfattorini1m@geocities.jp', 9, 'Support'),
(60, 'Talbot', 'Andrassy', '', 'tandrassy1n@bigcartel.com', 4, 'Legal'),
(61, 'Cindi', 'O\'Mannion', '', 'comannion1o@ameblo.jp', 11, 'Accounting'),
(62, 'Pancho', 'Mullineux', '', 'pmullineux1p@webmd.com', 1, 'Human Resources'),
(63, 'Cynthy', 'Peyntue', '', 'cpeyntue1q@amazon.co.jp', 6, 'Research and Development'),
(64, 'Kristine', 'Christal', '', 'kchristal1r@behance.net', 8, 'Training'),
(65, 'Dniren', 'Reboulet', '', 'dreboulet1s@360.cn', 7, 'Product Management'),
(66, 'Aggy', 'Napier', '', 'anapier1t@sciencedirect.com', 3, 'Marketing'),
(67, 'Gayleen', 'Hessay', '', 'ghessay1u@exblog.jp', 4, 'Legal'),
(68, 'Cull', 'Snoden', '', 'csnoden1v@so-net.ne.jp', 1, 'Human Resources'),
(69, 'Vlad', 'Crocombe', '', 'vcrocombe1w@mtv.com', 7, 'Product Management'),
(70, 'Georgeanna', 'Joisce', '', 'gjoisce1x@google.com.au', 6, 'Research and Development'),
(71, 'Ursola', 'Berthomieu', '', 'uberthomieu1y@un.org', 4, 'Legal'),
(72, 'Mair', 'McKirdy', '', 'mmckirdy1z@ovh.net', 1, 'Human Resources'),
(73, 'Erma', 'Runnalls', '', 'erunnalls20@spiegel.de', 8, 'Training'),
(74, 'Heida', 'Gallone', '', 'hgallone21@hostgator.com', 10, 'Engineering'),
(75, 'Christina', 'Denge', '', 'cdenge22@canalblog.com', 12, 'Business Development'),
(76, 'Wilone', 'Fredi', '', 'wfredi23@gizmodo.com', 7, 'Product Management'),
(77, 'Stormie', 'Bolderstone', '', 'sbolderstone24@globo.com', 11, 'Accounting'),
(78, 'Darryl', 'Pool', '', 'dpool25@vistaprint.com', 11, 'Accounting'),
(79, 'Nikolas', 'Mager', '', 'nmager26@nifty.com', 5, 'Services'),
(80, 'Brittney', 'Gaskal', '', 'bgaskal27@weather.com', 10, 'Engineering'),
(81, 'Field', 'Gresty', '', 'fgresty28@networkadvertising.org', 4, 'Legal'),
(82, 'Martina', 'Tremoulet', '', 'mtremoulet29@sciencedaily.com', 3, 'Marketing'),
(83, 'Robena', 'Ivanyutin', '', 'rivanyutin2a@mozilla.org', 2, 'Sales'),
(84, 'Reagen', 'Corner', '', 'rcorner2b@qq.com', 11, 'Accounting'),
(85, 'Eveleen', 'Sulter', '', 'esulter2c@nature.com', 6, 'Research and Development'),
(86, 'Christy', 'Dunbobbin', '', 'cdunbobbin2d@feedburner.com', 8, 'Training'),
(87, 'Winthrop', 'Lansley', '', 'wlansley2e@alibaba.com', 8, 'Training'),
(88, 'Lissa', 'Insley', '', 'linsley2f@friendfeed.com', 3, 'Marketing'),
(89, 'Shell', 'Risebarer', '', 'srisebarer2g@patch.com', 10, 'Engineering'),
(90, 'Cherianne', 'Liddyard', '', 'cliddyard2h@com.com', 2, 'Sales'),
(91, 'Brendan', 'Fooks', '', 'bfooks2i@utexas.edu', 2, 'Sales'),
(92, 'Edmund', 'Tace', '', 'etace2j@hatena.ne.jp', 9, 'Support'),
(93, 'Ki', 'Tomasini', '', 'ktomasini2k@cnbc.com', 10, 'Engineering'),
(94, 'Chadd', 'McGettrick', '', 'cmcgettrick2l@simplemachines.org', 10, 'Engineering'),
(95, 'Dulcie', 'Baudi', '', 'dbaudi2m@last.fm', 3, 'Marketing'),
(96, 'Barnebas', 'Mowbray', '', 'bmowbray2n@cbslocal.com', 1, 'Human Resources'),
(97, 'Stefanie', 'Anker', '', 'sanker2o@hud.gov', 5, 'Services'),
(98, 'Cherye', 'de Cullip', '', 'cdecullip2p@loc.gov', 10, 'Engineering'),
(99, 'Sinclare', 'Deverall', '', 'sdeverall2q@ow.ly', 6, 'Research and Development'),
(100, 'Shae', 'Johncey', '', 'sjohncey2r@bluehost.com', 10, 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `final_table`
--

CREATE TABLE `final_table` (
  `id` int(11) NOT NULL DEFAULT 0,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `department` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final_table`
--

INSERT INTO `final_table` (`id`, `firstName`, `lastName`, `email`, `department`, `location`) VALUES
(1, 'Rosana', 'Heffron', 'rheffron0@ibm.com', 'Human Resources', 'London'),
(2, 'Kris', 'Kovnot', 'kkovnot1@google.nl', 'Sales', 'New York'),
(3, 'Vera', 'Kisbee', 'vkisbee2@nih.gov', 'Sales', 'New York'),
(4, 'Aveline', 'Edgson', 'aedgson3@wikispaces.com', 'Marketing', 'New York'),
(5, 'Bertie', 'Wittke', 'bwittke4@yahoo.com', 'Legal', 'London'),
(6, 'Demetre', 'Cossam', 'dcossam5@washington.edu', 'Services', 'London'),
(7, 'Annabela', 'McGavigan', 'amcgavigan6@wp.com', 'Legal', 'London'),
(8, 'Crichton', 'McAndrew', 'cmcandrew7@zdnet.com', 'Human Resources', 'London'),
(9, 'Cordula', 'Plain', 'cplain8@google.ca', 'Services', 'London'),
(10, 'Glen', 'McDougle', 'gmcdougle9@meetup.com', 'Research and Development', 'Paris'),
(11, 'Theo', 'Audas', 'taudasa@newsvine.com', 'Product Management', 'Paris'),
(12, 'Spense', 'Jolliss', 'sjollissb@wufoo.com', 'Training', 'Munich'),
(13, 'Leopold', 'Carl', 'lcarlc@paginegialle.it', 'Support', 'Munich'),
(14, 'Barr', 'MacAllan', 'bmacalland@github.com', 'Services', 'London'),
(15, 'Suzie', 'Cromer', 'scromere@imageshack.us', 'Human Resources', 'London'),
(16, 'Tracee', 'Gisbourn', 'tgisbournf@bloglines.com', 'Engineering', 'Rome'),
(17, 'Taylor', 'St. Quintin', 'tstquinting@chronoengine.com', 'Engineering', 'Rome'),
(18, 'Lin', 'Klassmann', 'lklassmannh@indiatimes.com', 'Engineering', 'Rome'),
(19, 'Lay', 'Fintoph', 'lfintophi@goo.gl', 'Accounting', 'Rome'),
(20, 'Moishe', 'Flinn', 'mflinnj@list-manage.com', 'Business Development', 'Paris'),
(21, 'Gay', 'Bickford', 'gbickfordk@scientificamerican.com', 'Research and Development', 'Paris'),
(22, 'Erik', 'Lindback', 'elindbackl@virginia.edu', 'Training', 'Munich'),
(24, 'Barbara-anne', 'Rooksby', 'brooksbyn@issuu.com', 'Business Development', 'Paris'),
(26, 'Jackelyn', 'Imlach', 'jimlachp@google.it', 'Accounting', 'Rome'),
(27, 'Virge', 'Bootes', 'vbootesq@oracle.com', 'Sales', 'New York'),
(28, 'Rafferty', 'Matasov', 'rmatasovr@4shared.com', 'Legal', 'London'),
(29, 'Vanya', 'Goulder', 'vgoulders@phoca.cz', 'Support', 'Munich'),
(30, 'Bonita', 'McGonagle', 'bmcgonaglet@microsoft.com', 'Human Resources', 'London'),
(31, 'Allx', 'Whaley', 'awhaleyu@bbb.org', 'Human Resources', 'London'),
(32, 'Mavis', 'Lernihan', 'mlernihanv@netscape.com', 'Services', 'London'),
(33, 'Vern', 'Durling', 'vdurlingw@goo.gl', 'Human Resources', 'London'),
(34, 'Myles', 'Minchi', 'mminchix@smugmug.com', 'Product Management', 'Paris'),
(35, 'Anitra', 'Coleridge', 'acoleridgey@nbcnews.com', 'Research and Development', 'Paris'),
(36, 'Ailis', 'Brewster', 'abrewsterz@businesswire.com', 'Product Management', 'Paris'),
(37, 'Rahal', 'Tute', 'rtute10@pinterest.com', 'Research and Development', 'Paris'),
(38, 'Warner', 'Blonden', 'wblonden11@spiegel.de', 'Business Development', 'Paris'),
(39, 'Melvyn', 'Canner', 'mcanner12@eepurl.com', 'Legal', 'London'),
(40, 'Ryann', 'Giampietro', 'rgiampietro13@theguardian.com', 'Legal', 'London'),
(41, 'Harwell', 'Jefferys', 'hjefferys14@jimdo.com', 'Engineering', 'Rome'),
(42, 'Lanette', 'Buss', 'lbuss15@51.la', 'Legal', 'London'),
(43, 'Lissie', 'Reddington', 'lreddington16@w3.org', 'Support', 'Munich'),
(44, 'Dore', 'Braidford', 'dbraidford17@google.com.br', 'Accounting', 'Rome'),
(45, 'Lizabeth', 'Di Franceshci', 'ldifranceshci18@mediafire.com', 'Training', 'Munich'),
(46, 'Felic', 'Sharland', 'fsharland19@myspace.com', 'Business Development', 'Paris'),
(47, 'Duff', 'Quail', 'dquail1a@vimeo.com', 'Support', 'Munich'),
(48, 'Brendis', 'Shivell', 'bshivell1b@un.org', 'Human Resources', 'London'),
(49, 'Nevile', 'Schimaschke', 'nschimaschke1c@hexun.com', 'Engineering', 'Rome'),
(50, 'Jon', 'Calbaithe', 'jcalbaithe1d@netvibes.com', 'Legal', 'London'),
(51, 'Emmery', 'Darben', 'edarben1e@mapquest.com', 'Engineering', 'Rome'),
(52, 'Staford', 'Whitesel', 'swhitesel1f@nasa.gov', 'Research and Development', 'Paris'),
(53, 'Benjamin', 'Hawkslee', 'bhawkslee1g@hubpages.com', 'Product Management', 'Paris'),
(54, 'Myrle', 'Speer', 'mspeer1h@tripod.com', 'Marketing', 'New York'),
(55, 'Matthus', 'Banfield', 'mbanfield1i@angelfire.com', 'Marketing', 'New York'),
(56, 'Annadiana', 'Drance', 'adrance1j@omniture.com', 'Marketing', 'New York'),
(57, 'Rinaldo', 'Fandrey', 'rfandrey1k@bbc.co.uk', 'Sales', 'New York'),
(58, 'Roanna', 'Standering', 'rstandering1l@cocolog-nifty.com', 'Marketing', 'New York'),
(59, 'Lorrie', 'Fattorini', 'lfattorini1m@geocities.jp', 'Support', 'Munich'),
(60, 'Talbot', 'Andrassayo', 'tandrassyn1@bigcartel.com', 'Legal', 'London'),
(61, 'Cindi', 'O\'Mannion', 'comannion1o@ameblo.jp', 'Accounting', 'Rome'),
(62, 'Pancho', 'Mullineux', 'pmullineux1p@webmd.com', 'Human Resources', 'London'),
(63, 'Cynthy', 'Peyntue', 'cpeyntue1q@amazon.co.jp', 'Research and Development', 'Paris'),
(64, 'Kristine', 'Christal', 'kchristal1r@behance.net', 'Training', 'Munich'),
(65, 'Dniren', 'Reboulet', 'dreboulet1s@360.cn', 'Product Management', 'Paris'),
(66, 'Aggy', 'Napier', 'anapier1t@sciencedirect.com', 'Marketing', 'New York'),
(67, 'Gayleen', 'Hessay', 'ghessay1u@exblog.jp', 'Legal', 'London'),
(68, 'Cull', 'Snoden', 'csnoden1v@so-net.ne.jp', 'Human Resources', 'London'),
(69, 'Vlad', 'Crocombe', 'vcrocombe1w@mtv.com', 'Product Management', 'Paris'),
(70, 'Georgeanna', 'Joisce', 'gjoisce1x@google.com.au', 'Research and Development', 'Paris'),
(71, 'Ursola', 'Berthomieu', 'uberthomieu1y@un.org', 'Legal', 'London'),
(72, 'Mair', 'McKirdy', 'mmckirdy1z@ovh.net', 'Human Resources', 'London'),
(73, 'Erma', 'Runnalls', 'erunnalls20@spiegel.de', 'Training', 'Munich'),
(74, 'Heida', 'Gallone', 'hgallone21@hostgator.com', 'Engineering', 'Rome'),
(75, 'Christina', 'Denge', 'cdenge22@canalblog.com', 'Business Development', 'Paris'),
(76, 'Wilone', 'Fredi', 'wfredi23@gizmodo.com', 'Product Management', 'Paris'),
(77, 'Stormie', 'Bolderstone', 'sbolderstone24@globo.com', 'Accounting', 'Rome'),
(78, 'Darryl', 'Pool', 'dpool25@vistaprint.com', 'Accounting', 'Rome'),
(79, 'Nikolas', 'Mager', 'nmager26@nifty.com', 'Services', 'London'),
(80, 'Brittney', 'Gaskal', 'bgaskal27@weather.com', 'Engineering', 'Rome'),
(81, 'Field', 'Gresty', 'fgresty28@networkadvertising.org', 'Legal', 'London'),
(82, 'Martina', 'Tremoulet', 'mtremoulet29@sciencedaily.com', 'Marketing', 'New York'),
(83, 'Robena', 'Ivanyutin', 'rivanyutin2a@mozilla.org', 'Sales', 'New York'),
(84, 'Reagen', 'Corner', 'rcorner2b@qq.com', 'Accounting', 'Rome'),
(85, 'Eveleen', 'Sulter', 'esulter2c@nature.com', 'Research and Development', 'Paris'),
(86, 'Christy', 'Dunbobbin', 'cdunbobbin2d@feedburner.com', 'Training', 'Munich'),
(87, 'Winthrop', 'Lansley', 'wlansley2e@alibaba.com', 'Training', 'Munich'),
(88, 'Lissa', 'Insley', 'linsley2f@friendfeed.com', 'Marketing', 'New York'),
(89, 'Shell', 'Risebarer', 'srisebarer2g@patch.com', 'Engineering', 'Rome'),
(90, 'Cherianne', 'Liddyard', 'cliddyard2h@com.com', 'Sales', 'New York'),
(91, 'Brendan', 'Fooks', 'bfooks2i@utexas.edu', 'Sales', 'New York'),
(92, 'Edmund', 'Tace', 'etace2j@hatena.ne.jp', 'Support', 'Munich'),
(93, 'Ki', 'Tomasini', 'ktomasini2k@cnbc.com', 'Engineering', 'Rome'),
(94, 'Chadd', 'McGettrick', 'cmcgettrick2l@simplemachines.org', 'Engineering', 'Rome'),
(95, 'Duclie', 'Baudi', 'dbaudi@lastfm.net', 'Marketing', 'NewYork'),
(96, 'Barnebas', 'Mowbray', 'bmowbray2n@cbslocal.com', 'Human Resources', 'London'),
(97, 'Stefanie', 'Anker', 'sanker2o@hud.gov', 'Services', 'London'),
(98, 'Cherye', 'de Cullip', 'cdecullip2p@loc.gov', 'Engineering', 'Rome'),
(99, 'Sinclare', 'Deverall', 'sdeverall2q@ow.ly', 'Research and Development', 'Paris'),
(100, 'Shae', 'Johncey', 'sjohncey2r@bluehost.com', 'Engineering', 'Rome');

-- --------------------------------------------------------

--
-- Table structure for table `final_table_backup`
--

CREATE TABLE `final_table_backup` (
  `id` int(11) NOT NULL DEFAULT 0,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `department` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final_table_backup`
--

INSERT INTO `final_table_backup` (`id`, `firstName`, `lastName`, `email`, `department`, `location`) VALUES
(1, 'Rosana', 'Heffron', 'rheffron0@ibm.com', 'Human Resources', 'London'),
(2, 'Kris', 'Kovnot', 'kkovnot1@google.nl', 'Sales', 'New York'),
(3, 'Vera', 'Kisbee', 'vkisbee2@nih.gov', 'Sales', 'New York'),
(4, 'Aveline', 'Edgson', 'aedgson3@wikispaces.com', 'Marketing', 'New York'),
(5, 'Bertie', 'Wittke', 'bwittke4@yahoo.com', 'Legal', 'London'),
(6, 'Demetre', 'Cossam', 'dcossam5@washington.edu', 'Services', 'London'),
(7, 'Annabela', 'McGavigan', 'amcgavigan6@wp.com', 'Legal', 'London'),
(8, 'Crichton', 'McAndrew', 'cmcandrew7@zdnet.com', 'Human Resources', 'London'),
(9, 'Cordula', 'Plain', 'cplain8@google.ca', 'Services', 'London'),
(10, 'Glen', 'McDougle', 'gmcdougle9@meetup.com', 'Research and Development', 'Paris'),
(11, 'Theo', 'Audas', 'taudasa@newsvine.com', 'Product Management', 'Paris'),
(12, 'Spense', 'Jolliss', 'sjollissb@wufoo.com', 'Training', 'Munich'),
(13, 'Leopold', 'Carl', 'lcarlc@paginegialle.it', 'Support', 'Munich'),
(14, 'Barr', 'MacAllan', 'bmacalland@github.com', 'Services', 'London'),
(15, 'Suzie', 'Cromer', 'scromere@imageshack.us', 'Human Resources', 'London'),
(16, 'Tracee', 'Gisbourn', 'tgisbournf@bloglines.com', 'Engineering', 'Rome'),
(17, 'Taylor', 'St. Quintin', 'tstquinting@chronoengine.com', 'Engineering', 'Rome'),
(18, 'Lin', 'Klassmann', 'lklassmannh@indiatimes.com', 'Engineering', 'Rome'),
(19, 'Lay', 'Fintoph', 'lfintophi@goo.gl', 'Accounting', 'Rome'),
(20, 'Moishe', 'Flinn', 'mflinnj@list-manage.com', 'Business Development', 'Paris'),
(21, 'Gay', 'Bickford', 'gbickfordk@scientificamerican.com', 'Research and Development', 'Paris'),
(22, 'Erik', 'Lindback', 'elindbackl@virginia.edu', 'Training', 'Munich'),
(23, 'Tamarra', 'Ace', 'tacem@vinaora.com', 'Support', 'Munich'),
(24, 'Barbara-anne', 'Rooksby', 'brooksbyn@issuu.com', 'Business Development', 'Paris'),
(25, 'Lucien', 'Allsup', 'lallsupo@goo.ne.jp', 'Support', 'Munich'),
(26, 'Jackelyn', 'Imlach', 'jimlachp@google.it', 'Accounting', 'Rome'),
(27, 'Virge', 'Bootes', 'vbootesq@oracle.com', 'Sales', 'New York'),
(28, 'Rafferty', 'Matasov', 'rmatasovr@4shared.com', 'Legal', 'London'),
(29, 'Vanya', 'Goulder', 'vgoulders@phoca.cz', 'Support', 'Munich'),
(30, 'Bonita', 'McGonagle', 'bmcgonaglet@microsoft.com', 'Human Resources', 'London'),
(31, 'Allx', 'Whaley', 'awhaleyu@bbb.org', 'Human Resources', 'London'),
(32, 'Mavis', 'Lernihan', 'mlernihanv@netscape.com', 'Services', 'London'),
(33, 'Vern', 'Durling', 'vdurlingw@goo.gl', 'Human Resources', 'London'),
(34, 'Myles', 'Minchi', 'mminchix@smugmug.com', 'Product Management', 'Paris'),
(35, 'Anitra', 'Coleridge', 'acoleridgey@nbcnews.com', 'Research and Development', 'Paris'),
(36, 'Ailis', 'Brewster', 'abrewsterz@businesswire.com', 'Product Management', 'Paris'),
(37, 'Rahal', 'Tute', 'rtute10@pinterest.com', 'Research and Development', 'Paris'),
(38, 'Warner', 'Blonden', 'wblonden11@spiegel.de', 'Business Development', 'Paris'),
(39, 'Melvyn', 'Canner', 'mcanner12@eepurl.com', 'Legal', 'London'),
(40, 'Ryann', 'Giampietro', 'rgiampietro13@theguardian.com', 'Legal', 'London'),
(41, 'Harwell', 'Jefferys', 'hjefferys14@jimdo.com', 'Engineering', 'Rome'),
(42, 'Lanette', 'Buss', 'lbuss15@51.la', 'Legal', 'London'),
(43, 'Lissie', 'Reddington', 'lreddington16@w3.org', 'Support', 'Munich'),
(44, 'Dore', 'Braidford', 'dbraidford17@google.com.br', 'Accounting', 'Rome'),
(45, 'Lizabeth', 'Di Franceshci', 'ldifranceshci18@mediafire.com', 'Training', 'Munich'),
(46, 'Felic', 'Sharland', 'fsharland19@myspace.com', 'Business Development', 'Paris'),
(47, 'Duff', 'Quail', 'dquail1a@vimeo.com', 'Support', 'Munich'),
(48, 'Brendis', 'Shivell', 'bshivell1b@un.org', 'Human Resources', 'London'),
(49, 'Nevile', 'Schimaschke', 'nschimaschke1c@hexun.com', 'Engineering', 'Rome'),
(50, 'Jon', 'Calbaithe', 'jcalbaithe1d@netvibes.com', 'Legal', 'London'),
(51, 'Emmery', 'Darben', 'edarben1e@mapquest.com', 'Engineering', 'Rome'),
(52, 'Staford', 'Whitesel', 'swhitesel1f@nasa.gov', 'Research and Development', 'Paris'),
(53, 'Benjamin', 'Hawkslee', 'bhawkslee1g@hubpages.com', 'Product Management', 'Paris'),
(54, 'Myrle', 'Speer', 'mspeer1h@tripod.com', 'Marketing', 'New York'),
(55, 'Matthus', 'Banfield', 'mbanfield1i@angelfire.com', 'Marketing', 'New York'),
(56, 'Annadiana', 'Drance', 'adrance1j@omniture.com', 'Marketing', 'New York'),
(57, 'Rinaldo', 'Fandrey', 'rfandrey1k@bbc.co.uk', 'Sales', 'New York'),
(58, 'Roanna', 'Standering', 'rstandering1l@cocolog-nifty.com', 'Marketing', 'New York'),
(59, 'Lorrie', 'Fattorini', 'lfattorini1m@geocities.jp', 'Support', 'Munich'),
(60, 'Talbot', 'Andrassy', 'tandrassy1n@bigcartel.com', 'Legal', 'London'),
(61, 'Cindi', 'O\'Mannion', 'comannion1o@ameblo.jp', 'Accounting', 'Rome'),
(62, 'Pancho', 'Mullineux', 'pmullineux1p@webmd.com', 'Human Resources', 'London'),
(63, 'Cynthy', 'Peyntue', 'cpeyntue1q@amazon.co.jp', 'Research and Development', 'Paris'),
(64, 'Kristine', 'Christal', 'kchristal1r@behance.net', 'Training', 'Munich'),
(65, 'Dniren', 'Reboulet', 'dreboulet1s@360.cn', 'Product Management', 'Paris'),
(66, 'Aggy', 'Napier', 'anapier1t@sciencedirect.com', 'Marketing', 'New York'),
(67, 'Gayleen', 'Hessay', 'ghessay1u@exblog.jp', 'Legal', 'London'),
(68, 'Cull', 'Snoden', 'csnoden1v@so-net.ne.jp', 'Human Resources', 'London'),
(69, 'Vlad', 'Crocombe', 'vcrocombe1w@mtv.com', 'Product Management', 'Paris'),
(70, 'Georgeanna', 'Joisce', 'gjoisce1x@google.com.au', 'Research and Development', 'Paris'),
(71, 'Ursola', 'Berthomieu', 'uberthomieu1y@un.org', 'Legal', 'London'),
(72, 'Mair', 'McKirdy', 'mmckirdy1z@ovh.net', 'Human Resources', 'London'),
(73, 'Erma', 'Runnalls', 'erunnalls20@spiegel.de', 'Training', 'Munich'),
(74, 'Heida', 'Gallone', 'hgallone21@hostgator.com', 'Engineering', 'Rome'),
(75, 'Christina', 'Denge', 'cdenge22@canalblog.com', 'Business Development', 'Paris'),
(76, 'Wilone', 'Fredi', 'wfredi23@gizmodo.com', 'Product Management', 'Paris'),
(77, 'Stormie', 'Bolderstone', 'sbolderstone24@globo.com', 'Accounting', 'Rome'),
(78, 'Darryl', 'Pool', 'dpool25@vistaprint.com', 'Accounting', 'Rome'),
(79, 'Nikolas', 'Mager', 'nmager26@nifty.com', 'Services', 'London'),
(80, 'Brittney', 'Gaskal', 'bgaskal27@weather.com', 'Engineering', 'Rome'),
(81, 'Field', 'Gresty', 'fgresty28@networkadvertising.org', 'Legal', 'London'),
(82, 'Martina', 'Tremoulet', 'mtremoulet29@sciencedaily.com', 'Marketing', 'New York'),
(83, 'Robena', 'Ivanyutin', 'rivanyutin2a@mozilla.org', 'Sales', 'New York'),
(84, 'Reagen', 'Corner', 'rcorner2b@qq.com', 'Accounting', 'Rome'),
(85, 'Eveleen', 'Sulter', 'esulter2c@nature.com', 'Research and Development', 'Paris'),
(86, 'Christy', 'Dunbobbin', 'cdunbobbin2d@feedburner.com', 'Training', 'Munich'),
(87, 'Winthrop', 'Lansley', 'wlansley2e@alibaba.com', 'Training', 'Munich'),
(88, 'Lissa', 'Insley', 'linsley2f@friendfeed.com', 'Marketing', 'New York'),
(89, 'Shell', 'Risebarer', 'srisebarer2g@patch.com', 'Engineering', 'Rome'),
(90, 'Cherianne', 'Liddyard', 'cliddyard2h@com.com', 'Sales', 'New York'),
(91, 'Brendan', 'Fooks', 'bfooks2i@utexas.edu', 'Sales', 'New York'),
(92, 'Edmund', 'Tace', 'etace2j@hatena.ne.jp', 'Support', 'Munich'),
(93, 'Ki', 'Tomasini', 'ktomasini2k@cnbc.com', 'Engineering', 'Rome'),
(94, 'Chadd', 'McGettrick', 'cmcgettrick2l@simplemachines.org', 'Engineering', 'Rome'),
(95, 'Dulcie', 'Baudi', 'dbaudi2m@last.fm', 'Marketing', 'New York'),
(96, 'Barnebas', 'Mowbray', 'bmowbray2n@cbslocal.com', 'Human Resources', 'London'),
(97, 'Stefanie', 'Anker', 'sanker2o@hud.gov', 'Services', 'London'),
(98, 'Cherye', 'de Cullip', 'cdecullip2p@loc.gov', 'Engineering', 'Rome'),
(99, 'Sinclare', 'Deverall', 'sdeverall2q@ow.ly', 'Research and Development', 'Paris'),
(100, 'Shae', 'Johncey', 'sjohncey2r@bluehost.com', 'Engineering', 'Rome');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`) VALUES
(1, 'London'),
(2, 'New York'),
(3, 'Paris'),
(4, 'Munich'),
(5, 'Rome');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `jobTitle` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `departmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`id`, `firstName`, `lastName`, `jobTitle`, `email`, `departmentID`) VALUES
(1, 'Rosana', 'Heffron', '', 'rheffron0@ibm.com', 1),
(2, 'Kris', 'Kovnot', '', 'kkovnot1@google.nl', 2),
(3, 'Vera', 'Kisbee', '', 'vkisbee2@nih.gov', 2),
(4, 'Aveline', 'Edgson', '', 'aedgson3@wikispaces.com', 3),
(5, 'Bertie', 'Wittke', '', 'bwittke4@yahoo.com', 4),
(6, 'Demetre', 'Cossam', '', 'dcossam5@washington.edu', 5),
(7, 'Annabela', 'McGavigan', '', 'amcgavigan6@wp.com', 4),
(8, 'Crichton', 'McAndrew', '', 'cmcandrew7@zdnet.com', 1),
(9, 'Cordula', 'Plain', '', 'cplain8@google.ca', 5),
(10, 'Glen', 'McDougle', '', 'gmcdougle9@meetup.com', 6),
(11, 'Theo', 'Audas', '', 'taudasa@newsvine.com', 7),
(12, 'Spense', 'Jolliss', '', 'sjollissb@wufoo.com', 8),
(13, 'Leopold', 'Carl', '', 'lcarlc@paginegialle.it', 9),
(14, 'Barr', 'MacAllan', '', 'bmacalland@github.com', 5),
(15, 'Suzie', 'Cromer', '', 'scromere@imageshack.us', 1),
(16, 'Tracee', 'Gisbourn', '', 'tgisbournf@bloglines.com', 10),
(17, 'Taylor', 'St. Quintin', '', 'tstquinting@chronoengine.com', 10),
(18, 'Lin', 'Klassmann', '', 'lklassmannh@indiatimes.com', 10),
(19, 'Lay', 'Fintoph', '', 'lfintophi@goo.gl', 11),
(20, 'Moishe', 'Flinn', '', 'mflinnj@list-manage.com', 12),
(21, 'Gay', 'Bickford', '', 'gbickfordk@scientificamerican.com', 6),
(22, 'Erik', 'Lindback', '', 'elindbackl@virginia.edu', 8),
(23, 'Tamarra', 'Ace', '', 'tacem@vinaora.com', 9),
(24, 'Barbara-anne', 'Rooksby', '', 'brooksbyn@issuu.com', 12),
(25, 'Lucien', 'Allsup', '', 'lallsupo@goo.ne.jp', 9),
(26, 'Jackelyn', 'Imlach', '', 'jimlachp@google.it', 11),
(27, 'Virge', 'Bootes', '', 'vbootesq@oracle.com', 2),
(28, 'Rafferty', 'Matasov', '', 'rmatasovr@4shared.com', 4),
(29, 'Vanya', 'Goulder', '', 'vgoulders@phoca.cz', 9),
(30, 'Bonita', 'McGonagle', '', 'bmcgonaglet@microsoft.com', 1),
(31, 'Allx', 'Whaley', '', 'awhaleyu@bbb.org', 1),
(32, 'Mavis', 'Lernihan', '', 'mlernihanv@netscape.com', 5),
(33, 'Vern', 'Durling', '', 'vdurlingw@goo.gl', 1),
(34, 'Myles', 'Minchi', '', 'mminchix@smugmug.com', 7),
(35, 'Anitra', 'Coleridge', '', 'acoleridgey@nbcnews.com', 6),
(36, 'Ailis', 'Brewster', '', 'abrewsterz@businesswire.com', 7),
(37, 'Rahal', 'Tute', '', 'rtute10@pinterest.com', 6),
(38, 'Warner', 'Blonden', '', 'wblonden11@spiegel.de', 12),
(39, 'Melvyn', 'Canner', '', 'mcanner12@eepurl.com', 4),
(40, 'Ryann', 'Giampietro', '', 'rgiampietro13@theguardian.com', 4),
(41, 'Harwell', 'Jefferys', '', 'hjefferys14@jimdo.com', 10),
(42, 'Lanette', 'Buss', '', 'lbuss15@51.la', 4),
(43, 'Lissie', 'Reddington', '', 'lreddington16@w3.org', 9),
(44, 'Dore', 'Braidford', '', 'dbraidford17@google.com.br', 11),
(45, 'Lizabeth', 'Di Franceshci', '', 'ldifranceshci18@mediafire.com', 8),
(46, 'Felic', 'Sharland', '', 'fsharland19@myspace.com', 12),
(47, 'Duff', 'Quail', '', 'dquail1a@vimeo.com', 9),
(48, 'Brendis', 'Shivell', '', 'bshivell1b@un.org', 1),
(49, 'Nevile', 'Schimaschke', '', 'nschimaschke1c@hexun.com', 10),
(50, 'Jon', 'Calbaithe', '', 'jcalbaithe1d@netvibes.com', 4),
(51, 'Emmery', 'Darben', '', 'edarben1e@mapquest.com', 10),
(52, 'Staford', 'Whitesel', '', 'swhitesel1f@nasa.gov', 6),
(53, 'Benjamin', 'Hawkslee', '', 'bhawkslee1g@hubpages.com', 7),
(54, 'Myrle', 'Speer', '', 'mspeer1h@tripod.com', 3),
(55, 'Matthus', 'Banfield', '', 'mbanfield1i@angelfire.com', 3),
(56, 'Annadiana', 'Drance', '', 'adrance1j@omniture.com', 3),
(57, 'Rinaldo', 'Fandrey', '', 'rfandrey1k@bbc.co.uk', 2),
(58, 'Roanna', 'Standering', '', 'rstandering1l@cocolog-nifty.com', 3),
(59, 'Lorrie', 'Fattorini', '', 'lfattorini1m@geocities.jp', 9),
(60, 'Talbot', 'Andrassy', '', 'tandrassy1n@bigcartel.com', 4),
(61, 'Cindi', 'O\'Mannion', '', 'comannion1o@ameblo.jp', 11),
(62, 'Pancho', 'Mullineux', '', 'pmullineux1p@webmd.com', 1),
(63, 'Cynthy', 'Peyntue', '', 'cpeyntue1q@amazon.co.jp', 6),
(64, 'Kristine', 'Christal', '', 'kchristal1r@behance.net', 8),
(65, 'Dniren', 'Reboulet', '', 'dreboulet1s@360.cn', 7),
(66, 'Aggy', 'Napier', '', 'anapier1t@sciencedirect.com', 3),
(67, 'Gayleen', 'Hessay', '', 'ghessay1u@exblog.jp', 4),
(68, 'Cull', 'Snoden', '', 'csnoden1v@so-net.ne.jp', 1),
(69, 'Vlad', 'Crocombe', '', 'vcrocombe1w@mtv.com', 7),
(70, 'Georgeanna', 'Joisce', '', 'gjoisce1x@google.com.au', 6),
(71, 'Ursola', 'Berthomieu', '', 'uberthomieu1y@un.org', 4),
(72, 'Mair', 'McKirdy', '', 'mmckirdy1z@ovh.net', 1),
(73, 'Erma', 'Runnalls', '', 'erunnalls20@spiegel.de', 8),
(74, 'Heida', 'Gallone', '', 'hgallone21@hostgator.com', 10),
(75, 'Christina', 'Denge', '', 'cdenge22@canalblog.com', 12),
(76, 'Wilone', 'Fredi', '', 'wfredi23@gizmodo.com', 7),
(77, 'Stormie', 'Bolderstone', '', 'sbolderstone24@globo.com', 11),
(78, 'Darryl', 'Pool', '', 'dpool25@vistaprint.com', 11),
(79, 'Nikolas', 'Mager', '', 'nmager26@nifty.com', 5),
(80, 'Brittney', 'Gaskal', '', 'bgaskal27@weather.com', 10),
(81, 'Field', 'Gresty', '', 'fgresty28@networkadvertising.org', 4),
(82, 'Martina', 'Tremoulet', '', 'mtremoulet29@sciencedaily.com', 3),
(83, 'Robena', 'Ivanyutin', '', 'rivanyutin2a@mozilla.org', 2),
(84, 'Reagen', 'Corner', '', 'rcorner2b@qq.com', 11),
(85, 'Eveleen', 'Sulter', '', 'esulter2c@nature.com', 6),
(86, 'Christy', 'Dunbobbin', '', 'cdunbobbin2d@feedburner.com', 8),
(87, 'Winthrop', 'Lansley', '', 'wlansley2e@alibaba.com', 8),
(88, 'Lissa', 'Insley', '', 'linsley2f@friendfeed.com', 3),
(89, 'Shell', 'Risebarer', '', 'srisebarer2g@patch.com', 10),
(90, 'Cherianne', 'Liddyard', '', 'cliddyard2h@com.com', 2),
(91, 'Brendan', 'Fooks', '', 'bfooks2i@utexas.edu', 2),
(92, 'Edmund', 'Tace', '', 'etace2j@hatena.ne.jp', 9),
(93, 'Ki', 'Tomasini', '', 'ktomasini2k@cnbc.com', 10),
(94, 'Chadd', 'McGettrick', '', 'cmcgettrick2l@simplemachines.org', 10),
(95, 'Dulcie', 'Baudi', '', 'dbaudi2m@last.fm', 3),
(96, 'Barnebas', 'Mowbray', '', 'bmowbray2n@cbslocal.com', 1),
(97, 'Stefanie', 'Anker', '', 'sanker2o@hud.gov', 5),
(98, 'Cherye', 'de Cullip', '', 'cdecullip2p@loc.gov', 10),
(99, 'Sinclare', 'Deverall', '', 'sdeverall2q@ow.ly', 6),
(100, 'Shae', 'Johncey', '', 'sjohncey2r@bluehost.com', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final`
--
ALTER TABLE `final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `final`
--
ALTER TABLE `final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
