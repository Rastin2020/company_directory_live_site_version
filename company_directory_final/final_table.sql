-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 01:03 PM
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
-- Database: `heroku_4330d5263f3317a`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
