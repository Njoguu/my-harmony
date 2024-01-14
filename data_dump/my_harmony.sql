-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 01:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_harmony`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `musician_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `release_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `musician_id`, `title`, `release_year`) VALUES
(1, 1, 'Size 8 Chartbusters', 2017),
(2, 2, 'Vanity', 2016),
(3, 2, 'Chapter IV', 2021),
(4, 3, 'Nipe Macho', 2013),
(5, 3, 'Unikumbuke', 2008),
(6, 3, 'Kwa Kanisa La Kristu', 2013),
(7, 3, 'Hararat', 2023),
(8, 3, 'Relax', 2020),
(9, 4, 'Omusalapa', 2017),
(10, 4, 'Kibali', 2012),
(11, 4, 'Narudisha', 2018),
(12, 4, 'Anatenda', 2021),
(13, 4, 'Msaidizi', 2018),
(14, 4, 'Sitolia', 2018),
(15, 5, 'SWEET NDWALE', 2021),
(16, 5, 'ANINGNING DANCE', 2021),
(17, 5, 'ITS OUR SEASON', 2021),
(18, 5, 'WORTHY', 2021),
(19, 6, 'Mungu Mkuu', 2014),
(20, 6, 'Matendo', 2017),
(21, 6, 'Waweza', 2014),
(22, 6, 'Celebrate', 2019),
(23, 6, 'Umenitosha', 2018),
(24, 6, 'Yesu', 2021),
(25, 6, 'Subiri', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `photo_url`, `description`) VALUES
(1, 'Size 8', 'https://i0.wp.com/www.k24tv.co.ke/wp-content/uploads/2022/03/Size-8.jpg', 'Linet Munyali (born 4 August 1987),[1] professionally known as Size 8, is a Kenyan singer, songwriter and actress. Formerly a secular artist, Size 8 is known for her singles \"Shamba Boy\" and \"Moto\". In April 2013, she released her first gospel single \"Mateke\". As an actress, she had a small role in the legal comedy Mashtaka.'),
(2, 'Daddy Owen', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT_EfMyW6Jrp-EQowpj21HBzTS0am7VhURO13X-ArWP9PsAyMuk', 'Owen Mwatia popularly known as Daddy Owen was born on Friday 1, 1982,[1] is a Kenyan contemporary Christian music (CCM) artist and songwriter from Kakamega, Kenya. Owen is the brother to Kenyan Award-winning gospel musician Rufftone. He is a member of the Kenya Assemblies of God Church, Buru Buru, Nairobi and is signed to Beats & Blessings family. Daddy Owen was married to Farida Wambui (2 April 2016) and has since separated in 2021.'),
(3, 'Christina Shusho', 'https://i0.wp.com/www.news9.co.ke/wp-content/uploads/2023/11/shusho-1.jpg?fit=800%2C500&ssl=1', 'Christina Shusho is a famous, popular, and widely celebrated Gospel artist whose music is many people\'s favorite. Her most popular tracks include \'Bwana Umenichunguza\', \'Mtetezi Wangu\', \'Nampenda\', and \'Unikumbuke\'.'),
(4, 'Gloria Muliro', 'https://mdundo.com/media/articles/1606974726_1151_b.jpg', 'Gloria Owendi, commonly referred to as Gloria Muliro, is a Kenyan Gospel musician and songwriter. In 2005, she released her first studio album, titled Omwami Aletsa. As of 2013, Muliro had four albums to her name, the most successful being Kibali, which has the popular song \"Sitolia\" featuring Willy Paul'),
(5, 'Mbuvi', 'https://cdn.standardmedia.co.ke/images/wysiwyg/images/j1RyUJHmdOO5YccuhY9s7GGZ1SCev43dkFKmaMHa.jpg', 'Dr Mbuvi is a Kenyan award-winning contemporary gospel singer, comedian, and TV presenter.[1] Born Victor Mbuvi, he drew his love for music from his childhood and inspiration from his mother who died in 1999, a year before Dr Mbuvi launched his music career. Dr Mbuvi joined a group called His Image, who performed a cappella and various renditions of other artistes’ works.[2] We even modernised a Luo gospel folk song Niwara Nono. In 2001, he briefly teamed up with music producer R Kay and a friend to form Injili Group, which recorded Nisamehe – his first ever hit song'),
(6, 'Evelyn Wanjiru', 'https://www.ralingo.com/wp-content/uploads/2020/03/evelyn-wanjiru.jpg', 'Evelyn Wanjiru Agundabweni (born 6 May 1990) is a Kenyan gospel singer, worship leader, music director, songwriter, hostess of the annual event \"Praise Atmosphere\" and co-founder of Bwenieve production. She is best known for her hit songs \"Mungu Mkuu\", \"Celebrate\", \"Jehovah Elohim\", \"Waweza,\" \"Hossana,\" \"Nikufahamu\" and \"Tulia.\"');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `lyrics` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`) VALUES
(6, 1, 'Afadhali Yesu', 'Nimepanda nimeshuka,\r\nMilima mabonde na mito nimevuka,\r\nNimeosa! Nimesota!\r\nNimekosa mpaka mpaka nimekopa,\r\nNimeamini binadamu ole wangu roho wakanivunja\r\nNiliambiwa nikakana,\r\nMimi mwenyewe nimekuja ona,\r\nTunachothamini hakitufanyi tufurahi\r\nOhh!\r\nNajiuliza furaha yangu ni nani...\r\nAfadhali Yesu\r\nAfadhali yeh! Aliyena Yesu,\r\nNimesaka saka saka mbali sana\r\nNikipata pata bado nataka more\r\nNimesaka saka saka pes asana\r\nNikipata pata bado nataka more\r\nMakossa yangu na dhambi zangu\r\nMatendo yangu yale nina juta\r\nUmechukuwa umeondoa\r\nUlisema huta yakumbuka\r\nTunachothamini hakitufanyi tufurahi\r\nOhh!\r\nNajiuliza furaha yangu ni nani...\r\nAfadhali Yesu\r\nAfadhali yeh! Aliyena Yesu,'),
(7, 1, 'Mateke', 'Oh mateke eee\r\nYesu amempa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nYesu amemupa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru\r\nWengi walinitazama wakidhani kuwa mi niko sawa\r\nPesa, magari, na show kila mahali\r\nUkweli ni kuwa sikukuwa na amani\r\nMachozi kila mara, huzuni kanijaa\r\nNilisumbuka we, nililia eh\r\nNilisumbuka we, hapo ndipo Yesu\r\nYesu amemupa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nYesu amemupa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru\r\nHuko nyumbani, mashida zakuandama\r\nStima maji, hata bwana alienda\r\nMarafiki nao, zao wanakusemasema\r\nHapa kule, wapi utaenda\r\nUsilie we, usisumbuke eh\r\nUsilie we, sema nami sasa\r\nYesu amempa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nYesu amempa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru\r\nKwa sababu ya mateke zake Yesu\r\nShetani naye, yeye ameshindwa\r\nKwa sababu ya mateke zake\r\nShida nazo, zote zimekwisha\r\nYesu amemupa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nYesu amemupa shetani mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru\r\nMateke, mateke, mateke\r\nSababu ya mateke, mimi niko huru'),
(8, 1, 'Ni Yesu', 'Ni Yesu, kweli ni Yesu\r\nNi Yesu, kweli ni Yesu uuh\r\nHallelujah He is worthy of all our praise\r\nHallelujah He is worthy of all our praise\r\nCelebrate, come on celebrate Jesus!\r\nCelebrate, come on celebrate is worthy our praise\r\nHe worthy our praise, He is worthy our praise\r\n\r\nAmetenda, ametenda mema\r\nAmeshinda, ameshinda vita\r\nBendera yake yapepea eeh\r\nKwani kifo ameshinda eeh\r\nBendera yake yapepea eeh\r\nKwani kifo ameshinda eeh\r\n\r\nNi Yesu, kweli ni Yesu\r\nNi Yesu, kweli ni Yesu uuh\r\nHallelujah He is worthy of all our praise\r\nHallelujah He is worthy of all our praise\r\nCelebrate, come on celebrate Jesus!\r\nCelebrate, come on celebrate is worthy our praise\r\nHe worthy our praise, He is worthy our praise\r\n\r\nMakofi kama ameweza, ametenda mema\r\nAmeweza eeh\r\nMakofi kama ameweza, ameshinda vita, Ameweza eeh\r\nBendera yake yapepea eeh\r\nKwani kifo ameshinda eeh\r\nBendera yake yapepea eeh\r\nKwani kifo ameshinda eeh\r\n\r\nNi Yesu, kweli ni Yesu\r\nNi Yesu, kweli ni Yesu uuh\r\nHallelujah He is worthy of all our praise\r\nHallelujah He is worthy of all our praise\r\nCelebrate, come on celebrate Jesus!\r\nCelebrate, come on celebrate is worthy our praise\r\nHe worthy our praise, He is worthy our praise'),
(9, 1, 'Jemedari', 'Yale ametenda ii\r\nYale ametenda eya\r\nYale ametenda ii\r\nYale ametenda eya\r\n\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\n\r\nAmekuwa mkali\r\nTangu enzi za kale\r\nYeye jemedari\r\nHabadiliki kamwe\r\n\r\nKawapa waisraeli tumaini\r\nAyubu na mateso ya shetani\r\nNampa pongezi jemedari wangu mwenyezi\r\nHata nikosee nipotee\r\nYeye yunami\r\nHata nikosee nipotee\r\nYeye yunami\r\n\r\nYale ametenda ii\r\nYale ametenda eya\r\nYale ametenda ii\r\nYale ametenda eya\r\n\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\n\r\nYale ametenda ii\r\nYale ametenda eya\r\nYale ametenda ii\r\nYale ametenda eya\r\n\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\n\r\nAmekuwa mkali\r\nTangu enzi za kale\r\nYaye jemedari\r\nHabadiliki kamwe\r\n\r\nKawapa waisraeli tumaini\r\nAyubu na mateso ya shetani\r\nNampa pongezi jemedari wangu mwenyezi\r\n\r\nHata nikosee nipotee\r\nYeye yunami\r\nHata nikosee nipotee\r\nYeye yunami\r\n\r\nYale ametenda ii\r\nYale ametenda eya\r\nYale ametenda ii\r\nYale ametenda eya\r\n\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\n\r\nYale ametenda ii\r\nYale ametenda eya\r\nYale ametenda ii\r\nYale ametenda eya\r\n\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\n\r\nKama amenitendea mimi\r\nHata wewe (hata wewe)\r\nAtakutendea\r\nKama amenitendea mimi\r\nHata wewe (hata wewe)\r\nAtakutendea\r\n\r\nCheza kwa yesu aa aa aaa\r\nRuka kwa yesu aa aa iii\r\n\r\nKama amenitendea mimi\r\nHata wewe (hata wewe)\r\nAtakutendea\r\nKama amenitendea mimi\r\nHata wewe (hata wewe)\r\nAtakutendea\r\n\r\nCheza kwa yesu aa aa aaa\r\nRuka kwa yesu aa aa iii\r\n\r\nYale ametenda ii\r\nYale ametenda eya\r\nYale ametenda ii\r\nYale ametenda eya\r\n\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\nYale ametenda eya\r\n\r\nEya eya eya\r\nYale ametenda eya'),
(10, 1, 'Pale Pale', 'Pale umenitoa Baba\r\n\r\nPale unanipeleka\r\n\r\nSiko pale pale ningependa kuwa\r\n\r\nPia silo pale pale pale nilianzia\r\n\r\nSiko pale pale ningependa kuwa\r\n\r\nPia siko pale pale pale nlianzia\r\n\r\nWewe ndiye Baba unayepeana\r\n\r\nMaana Kula kitu ni chako\r\n\r\nWewe ndiye Bwana unayeongezana\r\n\r\nTukiwa waaminifu na kidogo\r\n\r\nBadala ya njia kombokombo\r\n\r\nAfadhali nianze na kidogo(eeh eeh)\r\n\r\nUliniahidi(uliniahidi)\r\n\r\nUtanibariki (utanibariki)\r\n\r\nSina la bidi\r\n\r\nKusema ashante\r\n\r\nPale umenitoa Baba\r\n\r\nPale unanipeleka\r\n\r\nSiko pale pale ningependa kuwa\r\n\r\nPia siko pale pale pale nlianzia\r\n\r\nSiko pale pale ningependa kuwa\r\n\r\nPia siko pale pale pale nlianzia\r\n\r\nAliye na kidogo anataka nyingi\r\n\r\nAliye na nyingi anataka Amani\r\n\r\nHicho ndicho kizungumkuti\r\n\r\nCha Mali\r\n\r\nTutafute ufalme wa mungu kwanza\r\n\r\nBadala ya njia kombokombo\r\n\r\nAfadhali nianze na kidogo (eeh eeh)\r\n\r\nUliniahidi (uliniahidi)\r\n\r\nUtanibariki (utanibariki)\r\n\r\nSina la bidi\r\n\r\nKusema ashante\r\n\r\nPale umenitoa Baba\r\n\r\nPale unanipeleka\r\n\r\nSiko pale pale ningependa kuwa\r\n\r\nPia siko pale pale pale nlianzia\r\n\r\nSiko pale pale ningependa kuwa\r\n\r\nPia siko pale pale pale nlianzia\r\n\r\nSiko pale pale\r\n\r\nNamba nane size eiiiiiiight'),
(11, 1, 'Yuko Nawewe', 'This one is for you\r\n\r\nMoyoni waumia.aaaahhh\r\n\r\nThis one is for you\r\n\r\nKila mara waliaaaaa\r\n\r\nJacky b\r\n\r\nHe will never leave you\r\n\r\nHe will never forsake you\r\n\r\nHe will never leave you believe it when i say\r\n\r\nHe will never leave you\r\n\r\nHe will never forsake you\r\n\r\nHe will never leave you believe it when i say\r\n\r\nYuko na wewe, yuko na wewe eeehh\r\n\r\nVuta machozi Yesu yuko na wewe\r\n\r\nYuko na wewe, yuko na wewe eeehhh\r\n\r\nVuta machozi, Yesu yuko na wewe.eeeehhh.eenhe\r\n\r\nNikiangalia vizuri\r\n\r\nUko nyumbani pekee yako\r\n\r\nKila kitu kilienda mrama\r\n\r\nNi kama wanakuchukia\r\n\r\nUnaona ni vizuri\r\n\r\nUkichukua maisha yako\r\n\r\nHizo zote ni uongo wa shetani\r\n\r\nNeno lake Bwana lasema\r\n\r\nHe will never leave you\r\n\r\nHe will never forsake you\r\n\r\nHe will never leave you believe it when i say\r\n\r\nHe will never leave you\r\n\r\nHe will never forsake you\r\n\r\nHe will never leave you believe it when i say\r\n\r\nYuko na wewe, yuko na wewe eeehh\r\n\r\nVuta machozi Yesu yuko na wewe.eehh\r\n\r\nYuko na wewe, yuko na wewe.eeehhh\r\n\r\nVuta machozi Yesu yuko na wewe.eeeehhh.eeennhe\r\n\r\nAmka furahia kwani Yesu ana upendo wa milele\r\n\r\nRuka sherehekea kwani kwake kuna amani tele\r\n\r\nUsijalishwe na za dunia kwani kwa Yesu kuna yote\r\n\r\nUsiskize uongo wa shetani neno lake bwana lasema\r\n\r\nHe will never leave you\r\n\r\nHe will never forsake you\r\n\r\nHe will never leave you believe it when i say\r\n\r\nHe will never leave you\r\n\r\nHe will never forsake you\r\n\r\nHe will never leave you believe it when i say\r\n\r\nYuko na wewe, yuko na wewe eeehh\r\n\r\nVuta machozi Yesu yuko na wewe.eehh\r\n\r\nYuko na wewe, yuko na wewe.eeehh\r\n\r\nVuta machozi Yesu yuko na wewe.eeehhh eeenhe'),
(12, 1, 'Vidonge', NULL),
(13, 1, 'Moto', NULL),
(14, 2, 'Vanity', NULL),
(15, 2, 'Wewe Ni Mungu', NULL),
(16, 2, 'Kazi Ya Msalaba', NULL),
(17, 2, 'Am Blessed', NULL),
(18, 2, 'Jumapili', NULL),
(19, 2, 'Okokroko', NULL),
(20, 3, 'Donjo', NULL),
(21, 3, 'Narejea Kwako', NULL),
(22, 3, 'Neema Yake', NULL),
(23, 3, 'Yahweh', NULL),
(24, 3, 'Baba Wewe', NULL),
(25, 3, 'Tundu La Simba', NULL),
(26, 3, 'Sina Noma', NULL),
(27, 3, 'King', NULL),
(28, 3, 'Follow', NULL),
(29, 4, 'Mapito', NULL),
(30, 4, 'Mungu Akiwa', NULL),
(31, 4, 'Mungu Wa Huruma', NULL),
(32, 4, 'Ni Kwa Neema', NULL),
(33, 5, 'Unikumbuke', NULL),
(34, 5, 'Bwana Umenichunguza', NULL),
(35, 5, 'Mshukuru Bwana', NULL),
(36, 5, 'Adamu', NULL),
(37, 6, 'Ebenezer', NULL),
(38, 6, 'Mali Ya Bwana', NULL),
(39, 7, 'Hararat', NULL),
(40, 7, 'Agana', NULL),
(41, 7, 'Kaa', NULL),
(42, 7, 'Kando Ya Mito', NULL),
(43, 8, 'Mifupa Mikavu', NULL),
(44, 8, 'Relax', NULL),
(45, 8, 'Muujiza', NULL),
(46, 8, 'Jina Lako Yesu', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `musician_id` (`musician_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`musician_id`) REFERENCES `artists` (`id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
