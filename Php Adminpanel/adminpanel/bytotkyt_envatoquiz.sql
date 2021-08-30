-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2020 at 07:17 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bytotkyt_envatoquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `username`, `email`, `password`, `mobile`, `image`, `role`) VALUES
(1, 'admin', 'admin', 'bytotech@gmail.com', 'admin', '+918956239566', 'profile.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `chatters`
--

CREATE TABLE `chatters` (
  `name` text NOT NULL,
  `seen` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `chat_room_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`chat_room_id`, `user_id`, `name`, `status`, `created_at`) VALUES
(1, '1,6,5,39', 'Material Design', '1', '2016-01-05 19:57:40'),
(6, '1,5,6,45', 'Android Support Design Library', '1', '2016-01-05 19:58:46'),
(7, '1,5,31,52,56,61', 'Android Studio', '1', '2016-01-05 19:58:46'),
(8, '1,5,9,11,12,35,37', 'Realtime Chat App', '1', '2016-01-05 19:58:46'),
(13, '2,4,3,6,5,7,9,29', 'firebase tilte demo', '1', '2019-04-27 04:57:23'),
(14, '7,10,9,21,6,5,33,26,42,47', 'Current Affairs', '1', '2020-02-06 17:30:59'),
(15, '11,60', 'testing', '0', '2020-02-06 18:08:52'),
(17, '30', 'testing', '0', '2020-02-08 07:14:50'),
(18, '37', 'ughhh', '0', '2020-02-08 09:21:12'),
(19, '45,53', 'Sport', '1', '2020-02-09 11:47:16'),
(20, '44,52,58', 'sport', '1', '2020-02-09 11:58:14'),
(21, '58,60', 'sehat', '1', '2020-02-10 16:12:09'),
(22, '63', 'Telugu', '1', '2020-02-11 07:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `current_affers`
--

CREATE TABLE `current_affers` (
  `id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `descr` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_affers`
--

INSERT INTO `current_affers` (`id`, `date`, `title`, `descr`, `image`) VALUES
(3, '18/09/18', 'ISRO launches two satellites NovaSAR and S1-4 using PSLV-C42', '<p>Indian Space Research Organisation&nbsp;<strong>(ISRO)</strong> successfully launched two satellites&mdash; NovaSAR and S1-4-belonging to United Kingdom (UK) based Surrey Satelli... ........ currentaffairs.gktoday.in/month/current-affairs-september-2018 &copy; GKToday</p>\r\n', '61947_Japan-launches-ASTRO-H-satellite-to-study-black-holes-150x150.jpg'),
(4, '02/10/18', 'PM Narendra Modi conferred UNEP Champions of Earth Award 2018', '<p>Prime Minister Narendra Modi was conferred with United Nation&rsquo;s Champions of the Earth Award by UN Secretary General Antonio Guterres at ceremony in Delhi. He is among the six winners who received this award.&nbsp;</p>\r\n', '42228_Champions-of-Earth-Award.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `descri_prepa`
--

CREATE TABLE `descri_prepa` (
  `id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `descr` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descri_prepa`
--

INSERT INTO `descri_prepa` (`id`, `date`, `title`, `descr`, `image`) VALUES
(2, '25/10/18', 'Sky News Arabic', '<p>reee</p>\r\n', '15739_architecture-art-building-165559.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `editional_vocab`
--

CREATE TABLE `editional_vocab` (
  `id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `descr` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editional_vocab`
--

INSERT INTO `editional_vocab` (`id`, `date`, `title`, `descr`, `image`) VALUES
(1, '22/10/18', '[The Hindu] Amritsar disaster: avoidable tragedy', '<p>In a shocking and terrible disaster, at least 61 people were crushed by a train at Amritsar in Punjab on Friday while they were watching the burning of Ravan effigy on the occasion of Dussehra. The Amritsar train accident took place near Joda Phatak area of Choura Bazar. The train was en route from Jalandhar to Amritsar.</p>\r\n', '17413_images (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hot_gk`
--

CREATE TABLE `hot_gk` (
  `id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `descr` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hot_gk`
--

INSERT INTO `hot_gk` (`id`, `date`, `title`, `descr`, `image`) VALUES
(1, '01/10/18', 'English', '<p>grammer</p>\r\n', '482_38_21-04-2018_Getafe_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` int(11) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descr` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_news`
--

INSERT INTO `latest_news` (`id`, `date`, `title`, `descr`, `image`) VALUES
(1, '06/08/19', 'होम | देश | धारा 370 को हटाए जाने पर कांग्रेस के पूर्व अध्यक्ष राहुल गांधी ने दिया बयान', '<p>केंद्र सरकार द्वारा जम्मू-कश्मीर से धारा 370 हटाए जाने पर कांग्रेस के पूर्व अध्यक्ष&nbsp;<a href=\"https://khabar.ndtv.com/news/india/milind-deora-proposes-sachin-pilot-or-jyotiraditya-scindia-for-congress-president-2080197\" target=\"_self\">राहुल गांधी (Rahul Gandhi)</a>&nbsp;ने पहली बार प्रतिक्रिया दी है.&nbsp;<a href=\"https://khabar.ndtv.com/news/india/priyanka-gandhi-vadra-can-unite-the-congress-as-president-says-karn-singh-2080160\" target=\"_self\">उन्होंने (Rahul Gandhi)</a>&nbsp;NDTV से कहा कि चुकि वह अब पार्टी के अध्यक्ष नहीं है इसलिए वह इस मुद्दे पर बैठक नहीं बुला सकते. सूत्रों से मिला जानकारी के अनुसार धारा 370 हटाए जाने को लेकर पहले कांग्रेस पार्टी के अंदर स्थिति साफ नहीं थी लेकिन अब पार्टी में इस फैसले का विरोध करने पर सहमति बन गई है. कांग्रेस के अनुसार जिस तरह से इस धारा को हटाया गया है वह तरीका सही नहीं है.&nbsp;</p>\r\n', '94437_99db79fb9c4ab753e8cfdad71192e33e.png'),
(2, '26/08/19', 'पूर्व पीएम मनमोहन सिंह की सुरक्षा में कटौती, SPG नहीं अब Z+ कवर', '<p align=\"justify\">पूर्व प्रधानमंत्री मनमोहन सिंह से स्पेशल प्रोटेक्शन ग्रुप (एसपीजी) की सुरक्षा वापस ले ली गई है. इस बाबत गृह मंत्रालय ने कहा कि वर्तमान सुरक्षा कवर की समीक्षा की गई है. यह समीक्षा सुरक्षा एजेंसियों की ओर से संभावित खतरे को देखते हुए की जाती है. गृह मंत्रालय की ओर से कहा गया है कि एसपीजी सुरक्षा हटाए जाने के बाद मनमोहन सिंह को जेड प्लस की सुरक्षा कवर दी जाएगी.</p>\r\n\r\n<p align=\"justify\">गृह मंत्रालय ने पिछले महीने भी देश के कई बड़े नेताओं को मुहैया कराई जाने वाली सुरक्षा की समीक्षा की थी. गृह मंत्रालय की ओर से जारी आदेश के मुताबिक, आरजेडी अध्यक्ष लालू प्रसाद यादव, बीएसपी सांसद सतीश चंद्र मिश्रा, यूपी बीजेपी के नेता संगीत सोम, बीजेपी सांसद राजीव प्रताप रूडी की सुरक्षा घटा दी गई.</p>\r\n', '54334_manmohan_singh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `chat_room_id`, `user_id`, `message`, `created_at`) VALUES
(1, 13, 2, 'hello', '0000-00-00 00:00:00'),
(2, 13, 2, 'hello', '0000-00-00 00:00:00'),
(3, 13, 2, 'hello', '0000-00-00 00:00:00'),
(4, 13, 2, 'hello', '0000-00-00 00:00:00'),
(5, 13, 2, 'hello', '0000-00-00 00:00:00'),
(6, 13, 2, 'hello', '0000-00-00 00:00:00'),
(7, 13, 2, 'hello', '0000-00-00 00:00:00'),
(8, 13, 2, 'hello', '2019-05-01 14:41:42'),
(9, 13, 2, 'hello', '2019-05-01 18:12:21'),
(10, 13, 6, 'hello', '2020-02-05 13:26:53'),
(11, 13, 6, 'all friend where are you', '2020-02-05 13:27:29'),
(12, 13, 5, 'how r you...', '2020-02-05 13:28:08'),
(13, 8, 5, 'hhhhiiiiii', '2020-02-05 13:29:51'),
(14, 7, 5, 'heyyyy', '2020-02-05 13:30:11'),
(15, 6, 5, 'jskk', '2020-02-05 13:30:22'),
(16, 1, 6, 'hmmm', '2020-02-05 13:30:35'),
(17, 1, 5, 'yesss', '2020-02-05 13:30:44'),
(18, 1, 5, 'heyyyy', '2020-02-05 13:30:54'),
(19, 6, 5, 'kkk', '2020-02-05 13:31:10'),
(20, 6, 5, 'g', '2020-02-05 13:31:23'),
(21, 8, 5, 'jskkk', '2020-02-05 13:32:02'),
(22, 13, 7, 'hi', '2020-02-06 22:54:29'),
(23, 13, 9, 'hi', '2020-02-06 22:59:08'),
(24, 8, 9, 'hi', '2020-02-06 22:59:21'),
(25, 14, 7, 'hi', '2020-02-06 23:01:04'),
(26, 14, 10, 'hello', '2020-02-06 23:03:46'),
(27, 14, 9, 'hi', '2020-02-06 23:28:28'),
(28, 8, 11, 'hwllo', '2020-02-06 23:38:39'),
(29, 8, 12, 'hello rasel', '2020-02-07 00:26:21'),
(31, 14, 21, 'hello', '2020-02-07 10:14:49'),
(35, 1, 6, 'yes rahul', '2020-02-07 10:26:17'),
(36, 6, 6, 'GM rahul', '2020-02-07 10:26:36'),
(37, 13, 6, 'GM friend', '2020-02-07 10:26:55'),
(39, 14, 6, 'hi', '2020-02-07 10:27:50'),
(40, 14, 6, 'hi', '2020-02-07 10:27:50'),
(41, 14, 5, 'jskkk', '2020-02-07 10:28:18'),
(42, 13, 29, 'uuhj', '2020-02-07 22:02:45'),
(43, 13, 29, 'uuhj', '2020-02-07 22:02:46'),
(44, 7, 31, 'hi', '2020-02-08 01:36:25'),
(45, 14, 33, 'hii', '2020-02-08 07:54:58'),
(46, 8, 35, 'hh', '2020-02-08 10:58:16'),
(47, 18, 37, 'hi', '2020-02-08 14:51:17'),
(48, 18, 37, 'hello', '2020-02-08 14:51:23'),
(49, 8, 37, 'hi', '2020-02-08 14:51:33'),
(50, 14, 26, 'hello', '2020-02-08 22:26:22'),
(51, 1, 39, 'hello', '2020-02-08 23:10:09'),
(52, 14, 42, 'bb', '2020-02-09 16:36:01'),
(53, 14, 42, 'bb', '2020-02-09 16:36:02'),
(54, 6, 45, 'What is this chat all about', '2020-02-09 17:16:47'),
(55, 19, 45, 'Hi there is it OK if I come tomorrow morning or tomorrow morning to arrange the pickup for the', '2020-02-09 17:17:44'),
(56, 14, 47, 'hy', '2020-02-09 20:48:00'),
(57, 20, 52, 'Hi', '2020-02-10 10:47:27'),
(58, 7, 52, 'hi', '2020-02-10 10:47:35'),
(59, 19, 53, 'Hello all chuhu', '2020-02-10 11:40:32'),
(60, 7, 56, 'hello', '2020-02-10 14:19:34'),
(61, 21, 58, 'hali', '2020-02-10 21:42:16'),
(62, 20, 58, 'hi', '2020-02-10 21:42:26'),
(63, 20, 58, 'whats up man ?', '2020-02-10 21:42:38'),
(64, 21, 60, '.??', '2020-02-11 04:15:41'),
(65, 15, 60, 'nice', '2020-02-11 04:15:57'),
(66, 21, 58, 'I want to ask a question', '2020-02-11 04:54:42'),
(67, 7, 61, 'hi', '2020-02-11 05:29:34'),
(68, 22, 63, 'ttt', '2020-02-11 12:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL,
  `quiz_id` int(10) NOT NULL,
  `q_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `question_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `no_of_answer` varchar(5) CHARACTER SET utf8 NOT NULL,
  `q_thumbnail` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `choice_a` varchar(100) CHARACTER SET utf8 NOT NULL,
  `choice_b` varchar(100) CHARACTER SET utf8 NOT NULL,
  `choice_c` varchar(100) CHARACTER SET utf8 NOT NULL,
  `choice_d` varchar(100) CHARACTER SET utf8 NOT NULL,
  `choice_e` varchar(100) CHARACTER SET utf8 NOT NULL,
  `answer` varchar(100) CHARACTER SET utf8 NOT NULL,
  `explanation` varchar(255) CHARACTER SET utf8 NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `que_back_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `quiz_id`, `q_title`, `question_type`, `no_of_answer`, `q_thumbnail`, `choice_a`, `choice_b`, `choice_c`, `choice_d`, `choice_e`, `answer`, `explanation`, `file_type`, `que_back_image`) VALUES
(1, 1, 'The first letter of the first word in a sentence should be', 'regular', '4', '', 'a large letter', 'a capital letter', 'the capital letter', 'an capital letter', '', 'Choice_B', 'a capital letter\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.pngeng_grm.png>'),
(2, 1, 'The order of a basic positive sentence is', 'regular', '4', '', 'Subject-Verb-Object ', 'Verb-Object-Subject', 'Verb-Object-line', 'Subject-Verb-line', '', 'Choice_A', 'Subject-Verb-Object \n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.pngeng_grm.png>'),
(3, 1, 'Every sentence must have a subject and', 'regular', '4', '', ' a verb', 'an object', ' an verb', ' the verb', '', 'Choice_A', ' a verb\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.pngeng_grm.png>'),
(4, 1, 'A plural subject needs', 'regular', '4', '', 'a singular verb', 'a plural verb', 'the plural verb', 'an plural verb', '', 'Choice_B', 'a plural verb\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.pngeng_grm.png>'),
(5, 1, 'When two singular subjects are connected by or, use', 'regular', '4', '', 'a singular verb', 'a plural verb', 'an singular verb', 'the singular verb', '', 'Choice_A', 'a singular verb\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/eng_grm.pngeng_grm.png>'),
(6, 2, 'વિશેષણ ઓળખાવો : જરા દૂધ આપો.', 'regular', '4', '', 'દર્શક વાચક', 'સંખ્યા વાચક', 'ગુણ વાચક', 'પરિમાણ વાચક', '', 'Choice_D', 'પરિમાણ વાચક\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.pngguj_grm.png>'),
(7, 2, 'રૂઢીપ્રયોગનો અર્થ લખો : કાળસ કાઢવું', 'regular', '4', '', 'આખર આવવી', 'દશા બદલવી', 'આફત આવવી', 'મારી નાખવું', '', 'Choice_D', 'મારી નાખવું\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.pngguj_grm.png>'),
(8, 2, 'શબ્દસમૂહ માટે એક શબ્દ આપો : જેમાં બધા પ્રકારનો મેળ હોય તે.', 'regular', '4', '', 'સામંજસ્ય', 'ભરપૂર', 'સમકરણ', 'બહુમેળ', '', 'Choice_A', 'સામંજસ્ય\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.pngguj_grm.png>'),
(9, 2, 'સંધી છોડો : પ્રતિચ્છાયા', 'regular', '4', '', 'પ્રતિ+છાયા', 'પ્રતી+અચ્છાયા', 'પ્રતિ+અચ્છાયા', 'પ્રતી+છાયા', '', 'Choice_A', 'પ્રતિ+છાયા\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.pngguj_grm.png>'),
(10, 2, '\"અલંકાર ઓળખાવો : તને મળવાનું મને એવું છે મન, મળવાને એક કરું ધરતી ગગન. \"', 'regular', '4', '', 'અંત્યાનુપ્રાસ', 'ઉત્પ્રેક્ષા', 'ઉપમા', 'રૂપક', '', 'Choice_A', 'અંત્યાનુપ્રાસ\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/guj_grm.pngguj_grm.png>'),
(11, 3, 'रंचक-रंजक शब्द युग्म का अर्थ है ?', 'regular', '4', '', 'दातून-काजल', 'रिक्त-खून', 'रत्न-सर्प', 'थोड़ा-मेंहदी', '', 'Choice_D', 'थोड़ा-मेंहदी\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/hinidi.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/hinidi.pnghinidi.png>'),
(12, 3, 'पार्थक्य का संधि विच्छेद होगा_', 'regular', '4', '', 'पृथक्+अ', 'पृथक्+य', 'पार्थ+ क्य', 'पर्थक्+य', '', 'Choice_B', 'पृथक्+य\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/hinidi.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/hinidi.pnghinidi.png>'),
(13, 3, 'मात्रा के आधार पर स्वरो की संख्या होती है ?', 'regular', '4', '', '9', '10', '11', 'इनमें से कोई नहीं', '', 'Choice_C', '10\n<img src =\"http://bytotech.com/envato/quiz/Qusestion_Images/hinidi.png\" />', 'text', '<img src = http://bytotech.com/envato/quiz/Qusestion_Images/hinidi.pnghinidi.png>');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `qz_id` int(11) NOT NULL,
  `quiz_title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `cat_id` int(10) NOT NULL,
  `sub_cat_id` int(10) NOT NULL,
  `no_of_question` varchar(200) CHARACTER SET utf8 NOT NULL,
  `quiz_time` time NOT NULL,
  `dates` varchar(100) NOT NULL,
  `paid_category` varchar(200) CHARACTER SET utf8 NOT NULL,
  `paid_price` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `q_thumbnail_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`qz_id`, `quiz_title`, `cat_id`, `sub_cat_id`, `no_of_question`, `quiz_time`, `dates`, `paid_category`, `paid_price`, `q_thumbnail_image`) VALUES
(1, 'English Grammer', 17, 65, '', '00:05:00', '2020-02-05', '', '0', 'eng_grm.png'),
(2, 'Gujarati Vykran', 18, 64, '', '00:05:00', '2020-02-05', '', '0', 'guj_grm.png'),
(3, 'Hindi vykran', 19, 66, '', '00:03:00', '2020-02-05', '', '0', 'hinidi.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aboutus`
--

CREATE TABLE `tbl_aboutus` (
  `id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aboutus`
--

INSERT INTO `tbl_aboutus` (`id`, `description`) VALUES
(1, '<p><strong>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry.</strong></p>\r\n\r\n<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cid`, `category_name`, `category_image`, `status`) VALUES
(17, 'English', '44177_depositphotos_91239302-stock-illustration-word-english-watercolor.jpg', 1),
(18, 'Gujarati', '70412_gujarati.jpg', 1),
(19, 'Hindi', '77567_hinidi.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contactus`
--

CREATE TABLE `tbl_contactus` (
  `id` int(11) NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `lattitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `landline_number` varchar(15) NOT NULL,
  `skype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contactus`
--

INSERT INTO `tbl_contactus` (`id`, `address`, `lattitude`, `longitude`, `email`, `mobile_number`, `landline_number`, `skype`) VALUES
(1, '<p>801, Dev Prime,&nbsp;<br />\r\nopp palladium Building,&nbsp;<br />\r\nOff to Sabarmati Ford Showroom, S.G.Highway,&nbsp;<br />\r\nMakarba, Ahmedabad, Gujarat 380058</p>\r\n', '22.9986992', '72.5010674', 'bytotechsolution@gmail.com', '+91 960150131', ' +91 79 4003 48', 'live:bytotechsolution');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `title`, `description`, `image`, `date`) VALUES
(3, 'Welcome Quiz', '<p>Hello Welcome member</p>\r\n', '', ''),
(4, 'our new quiz update', '<p>our new quiz update</p>\r\n', '', ''),
(5, 'New update quiz', 'Please update our new app', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qz_id` int(11) NOT NULL,
  `payment_status` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `user_id`, `qz_id`, `payment_status`) VALUES
(19, 1, 119, '1'),
(21, 13, 119, '1'),
(22, 2147483647, 119, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_score`
--

CREATE TABLE `tbl_score` (
  `id` int(11) NOT NULL,
  `qz_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `quiz_time` varchar(200) NOT NULL,
  `score` float NOT NULL,
  `total_score` varchar(100) NOT NULL,
  `total_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_score`
--

INSERT INTO `tbl_score` (`id`, `qz_id`, `user_id`, `quiz_time`, `score`, `total_score`, `total_time`) VALUES
(2, 120, '106511184090904978843', '00:00:03', -0.25, '2', '00:20:00'),
(3, 121, '1818337268244125', '00:00:02', 1, '1', '00:10:10'),
(4, 120, '1818337268244125', '00:00:04', 2, '0.75', '00:20:00'),
(5, 120, '110842657470946279865', '00:00:08', 0.75, '2', '00:20:00'),
(6, 117, '110842657470946279865', '00:00:11', 1, '-0.25', '00:10:00'),
(8, 121, '106511184090904978843', '00:00:03', 1, '1', '00:10:10'),
(9, 118, '110842657470946279865', '00:00:10', 1, '1', '00:15:00'),
(10, 1, '5', '0:4:18', -1.25, '5', '0:0:8'),
(11, 2, '5', '0:0:19', -1.25, '5', '0:2:58'),
(12, 3, '5', '0:0:2', 1.75, '3', '0:2:19'),
(13, 1, '7', '0:0:33', -1.5, '5', '00:05:00'),
(14, 3, '7', '0:0:8', -0.75, '3', '00:03:00'),
(15, 1, '9', '0:4:14', -1.25, '5', '0:0:7'),
(16, 2, '9', '0:0:14', 0, '5', '00:05:00'),
(17, 2, '7', '0:0:9', 1.25, '5', '00:05:00'),
(18, 1, '10', '0:0:7', -0.25, '5', '00:05:00'),
(19, 1, '11', '0:1:2', 3.75, '5', '00:05:00'),
(20, 2, '11', '0:0:11', -0.75, '5', '00:05:00'),
(21, 1, '12', '0:0:6', -0.25, '5', '00:05:00'),
(22, 1, '15', '0:0:4', 1, '5', '00:05:00'),
(23, 1, '16', '0:0:11', -0.25, '5', '00:05:00'),
(24, 1, '17', '0:0:59', 0, '5', '00:05:00'),
(25, 1, '18', '0:0:6', 1, '5', '00:05:00'),
(26, 1, '19', '0:1:10', -1.25, '5', '00:05:00'),
(27, 1, '20', '0:0:4', -0.25, '5', '00:05:00'),
(28, 3, '20', '0:2:44', -0.75, '3', '0:0:3'),
(29, 2, '20', '0:0:13', 2.25, '5', '00:05:00'),
(30, 3, '21', '0:0:13', 0.5, '3', '00:03:00'),
(31, 1, '24', '0:0:5', -0.25, '5', '00:05:00'),
(32, 1, '28', '0:0:6', -0.25, '5', '00:05:00'),
(33, 1, '30', '0:0:20', 0, '5', '00:05:00'),
(34, 1, '32', '0:0:10', 1, '5', '00:05:00'),
(35, 1, '33', '0:4:17', 1.25, '5', '0:0:7'),
(36, 1, '31', '0:4:38', 1.25, '5', '0:0:3'),
(37, 1, '34', '0:0:17', 0, '5', '00:05:00'),
(38, 3, '35', '0:2:37', -0.5, '3', '0:0:6'),
(39, 1, '38', '0:0:5', -0.25, '5', '00:05:00'),
(40, 1, '26', '0:0:6', 3.75, '5', '0:0:13'),
(41, 5, '26', '0:0:7', -0.25, '1', '00:05:00'),
(42, 1, '39', '0:1:7', 2, '5', '00:05:00'),
(43, 5, '6', '0:4:34', 1, '1', '0:0:9'),
(44, 2, '41', '0:0:9', -0.25, '5', '00:05:00'),
(45, 3, '42', '0:0:3', 1, '3', '00:03:00'),
(46, 5, '45', '0:0:9', 1, '1', '00:05:00'),
(47, 1, '43', '0:0:8', -0.25, '5', '00:05:00'),
(48, 5, '44', '0:0:14', -0.25, '1', '00:05:00'),
(49, 1, '44', '0:1:3', 6.5, '5', '00:05:00'),
(50, 3, '47', '0:0:14', 0.5, '3', '0:2:38'),
(51, 1, '48', '0:2:28', 1, '5', '0:0:27'),
(52, 1, '49', '0:0:16', 0, '5', '00:05:00'),
(53, 1, '50', '0:0:5', -0.25, '5', '00:05:00'),
(54, 3, '50', '0:0:3', -0.25, '3', '00:03:00'),
(55, 1, '51', '0:0:6', -0.25, '5', '00:05:00'),
(56, 1, '52', '0:0:7', 0, '5', '0:4:13'),
(57, 3, '52', '0:0:9', 1.75, '3', '00:03:00'),
(58, 1, '55', '0:0:4', -0.25, '5', '00:05:00'),
(59, 3, '56', '0:0:5', 1, '3', '00:03:00'),
(60, 1, '58', '0:4:24', 0, '5', '0:0:6'),
(61, 1, '59', '0:4:38', -1.25, '5', '0:0:4'),
(62, 1, '60', '0:3:54', 1.25, '5', '0:0:15'),
(63, 1, '61', '0:4:29', 2.5, '5', '0:0:8'),
(64, 3, '61', '0:0:40', 1.75, '3', '00:03:00'),
(65, 1, '62', '0:0:5', -0.25, '5', '00:05:00'),
(66, 1, '63', '0:0:18', 0, '5', '00:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `app_email` varchar(255) NOT NULL,
  `app_version` varchar(255) NOT NULL,
  `app_author` varchar(255) NOT NULL,
  `app_contact` varchar(255) NOT NULL,
  `app_website` varchar(255) NOT NULL,
  `app_description` text NOT NULL,
  `app_developed_by` varchar(255) NOT NULL,
  `app_privacy_policy` text NOT NULL,
  `app_terms_conditions` text NOT NULL,
  `app_from_email` varchar(255) DEFAULT NULL,
  `app_admin_email` varchar(255) DEFAULT NULL,
  `api_all_order_by` varchar(255) NOT NULL,
  `api_latest_limit` int(3) NOT NULL,
  `api_cat_order_by` varchar(255) NOT NULL,
  `api_cat_post_order_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `app_name`, `app_logo`, `app_email`, `app_version`, `app_author`, `app_contact`, `app_website`, `app_description`, `app_developed_by`, `app_privacy_policy`, `app_terms_conditions`, `app_from_email`, `app_admin_email`, `api_all_order_by`, `api_latest_limit`, `api_cat_order_by`, `api_cat_post_order_by`) VALUES
(1, 'Quiz', 'QUIZ.png', 'info@bytotech.com', '1.0.0', 'bytotech', '+91 9601501313', 'www.bytotech.com', '<p>We collect the minimum amount of information about you that is commensurate with providing you with a satisfactory service. This policy indicates the type of processes that may result in data being collected about you. Your use of this website gives us the right to collect that information.&nbsp;</p>\r\n', 'bytotech', '<p><strong>We are committed to protecting your privacy</strong></p>\r\n\r\n<p>We collect the minimum amount of information about you that is commensurate with providing you with a satisfactory service. This policy indicates the type of processes that may result in data being collected about you. Your use of this website gives us the right to collect that information.&nbsp;</p>\r\n\r\n<p><strong>Information Collected</strong></p>\r\n\r\n<p>We may collect any or all of the information that you give us depending on the type of transaction you enter into, including your name, address, telephone number, and email address, together with data about your use of the website. Other information that may be needed from time to time to process a request may also be collected as indicated on the website.</p>\r\n\r\n<p><strong>Information Use</strong></p>\r\n\r\n<p>We use the information collected primarily to process the task for which you visited the website. Data collected in the UK is held in accordance with the Data Protection Act. All reasonable precautions are taken to prevent unauthorised access to this information. This safeguard may require you to provide additional forms of identity should you wish to obtain information about your account details.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Your Internet browser has the in-built facility for storing small files - &quot;cookies&quot; - that hold information which allows a website to recognise your account. Our website takes advantage of this facility to enhance your experience. You have the ability to prevent your computer from accepting cookies but, if you do, certain functionality on the website may be impaired.</p>\r\n\r\n<p><strong>Disclosing Information</strong></p>\r\n\r\n<p>We do not disclose any personal information obtained about you from this website to third parties unless you permit us to do so by ticking the relevant boxes in registration or competition forms. We may also use the information to keep in contact with you and inform you of developments associated with us. You will be given the opportunity to remove yourself from any mailing list or similar device. If at any time in the future we should wish to disclose information collected on this website to any third party, it would only be with your knowledge and consent.&nbsp;</p>\r\n\r\n<p>We may from time to time provide information of a general nature to third parties - for example, the number of individuals visiting our website or completing a registration form, but we will not use any information that could identify those individuals.&nbsp;</p>\r\n\r\n<p>In addition Dummy may work with third parties for the purpose of delivering targeted behavioural advertising to the Dummy website. Through the use of cookies, anonymous information about your use of our websites and other websites will be used to provide more relevant adverts about goods and services of interest to you. For more information on online behavioural advertising and about how to turn this feature off, please visit youronlinechoices.com/opt-out.</p>\r\n\r\n<p><strong>Changes to this Policy</strong></p>\r\n\r\n<p>Any changes to our Privacy Policy will be placed here and will supersede this version of our policy. We will take reasonable steps to draw your attention to any changes in our policy. However, to be on the safe side, we suggest that you read this document each time you use the website to ensure that it still meets with your approval.</p>\r\n\r\n<p><strong>Contacting Us</strong></p>\r\n\r\n<p>If you have any questions about our Privacy Policy, or if you want to know what information we have collected about you, please email us at hd@dummy.com. You can also correct any factual errors in that information or require us to remove your details form any list under our control.</p>\r\n', '<p><strong>We are committed to protecting your privacy</strong></p>\r\n\r\n<p>We collect the minimum amount of information about you that is commensurate with providing you with a satisfactory service. This policy indicates the type of processes that may result in data being collected about you. Your use of this website gives us the right to collect that information.&nbsp;</p>\r\n\r\n<p><strong>Information Collected</strong></p>\r\n\r\n<p>We may collect any or all of the information that you give us depending on the type of transaction you enter into, including your name, address, telephone number, and email address, together with data about your use of the website. Other information that may be needed from time to time to process a request may also be collected as indicated on the website.</p>\r\n\r\n<p><strong>Information Use</strong></p>\r\n\r\n<p>We use the information collected primarily to process the task for which you visited the website. Data collected in the UK is held in accordance with the Data Protection Act. All reasonable precautions are taken to prevent unauthorised access to this information. This safeguard may require you to provide additional forms of identity should you wish to obtain information about your account details.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Your Internet browser has the in-built facility for storing small files - &quot;cookies&quot; - that hold information which allows a website to recognise your account. Our website takes advantage of this facility to enhance your experience. You have the ability to prevent your computer from accepting cookies but, if you do, certain functionality on the website may be impaired.</p>\r\n\r\n<p><strong>Disclosing Information</strong></p>\r\n\r\n<p>We do not disclose any personal information obtained about you from this website to third parties unless you permit us to do so by ticking the relevant boxes in registration or competition forms. We may also use the information to keep in contact with you and inform you of developments associated with us. You will be given the opportunity to remove yourself from any mailing list or similar device. If at any time in the future we should wish to disclose information collected on this website to any third party, it would only be with your knowledge and consent.&nbsp;</p>\r\n\r\n<p>We may from time to time provide information of a general nature to third parties - for example, the number of individuals visiting our website or completing a registration form, but we will not use any information that could identify those individuals.&nbsp;</p>\r\n', 'info@bytotech.com', 'info@bytotech.com', '', 10, 'pid', 'ASC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory_list`
--

CREATE TABLE `tbl_subcategory_list` (
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subcategory_list`
--

INSERT INTO `tbl_subcategory_list` (`mid`, `cid`, `menu_name`, `menu_image`, `status`) VALUES
(64, 18, 'Vykran', '6506_gujarati.jpg', 1),
(65, 17, 'Grammer', '45888_18225_depositphotos_91239302-stock-illustration-word-english-watercolor.jpg', 1),
(66, 19, 'Vykran', '15115_hinidi.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `fb_id` varchar(255) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 NOT NULL,
  `token` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_type`, `fb_id`, `name`, `email`, `password`, `phone`, `image`, `token`, `status`, `date`) VALUES
(2, 'Normal', '', 'jitendra', 'jitendra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', 'http://bytotech.com/sscquiz/images/registrationimage/6_10-05-2018_14553_Badshah.jpg', 'dUr4PKVGzuY:APA91bEMsXgdBZu_wq9lucm5wg0EiFFyL4AjQfpun_wsND4_HJpGsO2ZevauHev8-hv41DQ_lypDg5X6N0KCls8n5eANNB5FVcu63AbKUsv_XmASm6xVDTLgUmZeZrzCFDV9FpK-h28t', '1', '2020-02-07 07:19:38'),
(3, 'Normal', '', 'pradip bhuva', 'pradip@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'http://bytotech.com/sscquiz/images/registrationimage/IMG_20181012_222501761.jpg', 'eupUlp1SJIE:APA91bGyA3XYbdRfSm2FCZ2SPSoup1KZ1bUORnQU1WcdalYNTb6j52qR4dncCK74ZXBEJhPMCULLKhvwQlXyhmIEZb4y6pPrsdxvognMp_muKiMd-RtSUd0pkmxvpy4sFSHXydOJAoqR', '1', '2020-02-07 07:19:38'),
(4, 'Normal', '', 'jitendra', 'jitendra1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', 'http://192.168.1.22/sscquiz/images/registrationimage/', '', '1', '2020-02-07 07:31:26'),
(5, 'Normal', '', 'Rahul patel patidar', 'rahul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9988998899', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200202-WA0000.jpg', 'fh2F32IFwKw:APA91bG8LDdivsanU--RDpEZwAyqgVwr3C2UiQtZ10ZtAgEl8u9IXsiISIrdnCQqsxarBK-O6XQD9S1jJRHtwGCTxMijW8WoPKhbSzXNfDN6vJYgCn066bd6wDgemkdztk1c32X1FgGq', '1', '2020-02-07 07:31:24'),
(6, 'Normal', '', 'pratik', 'pratik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8956325369', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200120-WA0035.jpg', 'fzALVzeIAm4:APA91bHvqbt0EA8Nqxxp83-NO5Uo9JkdAJkrEn-OhscAwuCUK4mFBBQR9Q_KIv4X_aufLzj-ngHkvZ6XimaEBHoGuonWZ6XJqIm9AXG5fR2xtx0QfDZFLx5wzeoQzOILlMXuKke7sq6g', '1', '2020-02-07 07:31:29'),
(7, 'Normal', '', 'Vil', 'vilnitz11@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9742806170', 'http://bytotech.com/envato/quiz/images/registrationimage/images-(34).jpeg', 'cZaHQirelRA:APA91bFDqQ_gyNVy65jYfSdBVi9l2QRCDT9bsezH3ZKmztbOvLgKDSXGGndm8xj45K47Y2eyKA5eeX4gIEDCKeUnL5qcUEYdKcA-wdhQTS9g8Arx_XoR4mXX-C4YpdO4k8KuSbq94_xk', '1', '2020-02-07 07:51:06'),
(8, 'Normal', '', 'Ahmed', 'c3g102@gmail.com', 'a5a49c57ce96adff564282be25ffa065', '6366828680', 'http://bytotech.com/envato/quiz/images/registrationimage/20200205_100953.jpg', 'dwCQjtzP9sw:APA91bFmAYl6pFkxNgeCpcnPnpQDqYOE1R5rf9iDBeXI1dW_5KjG5Sz4tleJJ0JZ0eU5YuZu0Zr7rCJW0xb4MraJLL3162NO8xX6N-P1BbRrQK78D6tLvt3fkXz4oQHLJkKJKBeJbA3h', '0', '2020-02-07 07:19:38'),
(9, 'Normal', '', 'test 1', 'test@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '999999999999', 'http://bytotech.com/envato/quiz/images/registrationimage/1581010035301.jpg', 'dDD-5tJ_KxI:APA91bHlkS-IJ8K2WLUFXtkGAXdm2fUu-MO6zChbf82Cr3GoGKOtzBpKUEkGz2lRtNAVJyHR9EOUrjM1t4yuolvnin3uqF8LLhF1FC6rg0GsKLJHQN92Dk1gvL0L9WbBDWGUhYt5eWae', '0', '2020-02-07 07:19:38'),
(10, 'Normal', '', 'samir', 'ahmidsamir9@gmail.com', '25fce9ba0ce66b82148637dfc19a0832', '123456', 'http://bytotech.com/envato/quiz/images/registrationimage/1581010373525.jpg', 'fR2YtRSo5BQ:APA91bEnE3JIJr1j_Q-F7JxQJLanfL_Bo6tChfHvOdwMG8SWLD0PlQ_5n7UVPzbCAuNyyxd5h0aP50K_SQ5f2cCR7X4s2qOJi857jkiJlho3o3YdYnmZyDCVnIuuzNAh1aYLQz4R0j7Z', '0', '2020-02-07 07:19:38'),
(11, 'Normal', '', 'test', 'anupamhalderju@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200206-WA0022.jpg', 'f8nZi3JoK_c:APA91bFhYsoGL_i3v_QrchYdNbrw4SCCP58YmdTB2653_fKXOezF4x6u5d7rG5z6q4UA0vAqfRapujOj8nEkX8m4DAfrzatmQqtPQY4grbzQdc2DRFK3JVWTDLSQVXv0VAnaX9oYhb-o', '0', '2020-02-07 07:19:38'),
(12, 'Normal', '', 'hasan', 'ptmuids955@bizcomail.com', '24445027ef5ecbc3d0e7938639da6f51', '01853201211', 'http://bytotech.com/envato/quiz/images/registrationimage/Screenshot_20200207-003244.jpg', 'dR2p8KMM3vs:APA91bHTy1l_4Zq60hMuEujQ7OmU5eDeTV3HqGSuEUSsUL-UZwQ1vZ-WfF0XGQ-An01Y8OZD-plMtcOBC6G12S3rt6YY75nvFr2qeLn848Pyf9KDQ3wKBVRqHPAp86bVdd6oCaov8Bx7', '0', '2020-02-07 07:19:38'),
(13, 'Normal', '', 'lesh', 'leshmepresh@gmail.com', '3a0c67b5092529de7741cd77a4f6beeb', '55885669988', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200205-WA0001.jpg', 'cTDKIEr2IF8:APA91bFE9HtJbgWBV51816VZM-qrdxYNjDExC22KGTz_CnZ5dkhmnBo79mJQnvnV3_ku1fGrRbjNKalTKYoCU0KlS8QoiPBNZp3DrdV8cjzAKuybfxG9uFFbys-1dbswuh2rHCXThko6', '0', '2020-02-07 07:19:38'),
(14, 'Normal', '', 'Amar', 'mailyoapps@gmail.com', 'd01b8c6ea1a64ba2510df7cee1e4d604', '1234567890', 'http://bytotech.com/envato/quiz/images/registrationimage/child-817373_1920.jpg', 'egHi7kZzUDc:APA91bHxvUmyj8tdCw3U-veFspWfq1-sjMGsvbzvKTikC-7cErc3_pieQY-F-vo9GseywgXsOqx3KzPIWkdY9k8RVsCakinJP1tp77MrWSf0jeoGj6lcAFZ92ANS_p_rTx_Gl39HRjN8', '0', '2020-02-07 07:19:38'),
(15, 'Normal', '', 'יגחג', 'mastertriviaisrael@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '74', 'http://bytotech.com/envato/quiz/images/registrationimage/20200120_152526.png', 'e7RzIY6J9Cc:APA91bFEUoQuXPczIO7hsKoo6MY4wjC0UAj9cufSJK-6dgXu9mOZ0-1Az3Fu06b2nEHOo8euMkF-J0FnJhht-sWJ8ed8KyOGUd1naemcP-AgDNB7Htjk4wJ3G88l7eP_zdMqgS6-iEqi', '0', '2020-02-07 07:19:38'),
(16, 'Normal', '', 'XxX', 'xxxx@xxxx.com', 'e10adc3949ba59abbe56e057f20f883e', '0039', 'http://bytotech.com/envato/quiz/images/registrationimage/user.png', 'fN8pZMlb8TE:APA91bFcl4nmyVfUgxGko0YVDht2xAiz0Mc0_2jJK4hxgh0ka-pvb-xH8C322Mtm-Xmc0ebtuDhRlxPNX9HHsYrb9xzR3DtRRtNuzoxlNjhyLPuRLvRkg3SwZ4scupZTGblO6d2awh-s', '0', '2020-02-07 07:19:38'),
(17, 'Normal', '', 'test', 'test@gmail4.com', 'cc03e747a6afbbcbf8be7668acfebee5', '01111', 'http://bytotech.com/envato/quiz/images/registrationimage/50-beautiful-modern-gates-and-fences-for-small-big-houses.png', 'dBcStXQSpSk:APA91bGHRCQ8FgnsF4UZQjZiQbsLv1H_uQ9TUjlJxze-ONLaAUXEY9O-5IVPtOkSnHFcqFzVx2UtxZV4_b26A5gNVhMOb3yHwn24_JSqAnLahbyWNvfeGe4X5s7A7TTUugoyW4_HsIUF', '0', '2020-02-07 07:19:38'),
(18, 'Normal', '', 'Susa', 'maxpetrutsa@gmail.com', '02c75fb22c75b23dc963c7eb91a062cc', '9547771112', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200130_191429.jpg', 'ckTSYFpu_Rk:APA91bH4oxJ1z9nj_8KL9Wn0-a5o66JcLHjJTGGz57Tl_2tuGZ3wsbR8cbSX2pGSZGFI5K69y3RD8jgFu7Q_QarHbMsLbyD3iUt05l9GKu0zfSgCXcSL8MuhNrvk7TWbJBjSiGRidCW3', '0', '2020-02-07 07:19:38'),
(19, 'Normal', '', 'Test user', 'testuser@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1239876450', 'http://bytotech.com/envato/quiz/images/registrationimage/1581042998749.jpg', 'en9VnJaXvT4:APA91bF4VSre-KL8NBN_7A9jrXgadS8U0EAl7N1Yp8lXqBxX4bROsk4_02vrKTNdLxknv-VRGI9Dg86SDSqOj-odScKIf10Y4xfyxTIVhPvK9pUxDgoQNsC7_LkIRM5pdnxxd-oN3vi1', '0', '2020-02-07 07:19:38'),
(20, 'Normal', '', 'test', 'test@email.com', '9cc553720b5ab1720fc66dadc92b08fa', '856754895', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200203_115738.jpg', 'ewTFlBb5dk0:APA91bEoYIwtTALxTmvUIoPpcG7sWyG2lD2EzT7SnGbxHQmi0-gG26AgahXsX1eGUZXqhxPdgRXGW22wfkHRhRD8M72GZuhMny7JwXbYFQpSkBUBv4qCf42a1fjWU53_IaZLglGB-1xk', '0', '2020-02-07 07:19:38'),
(21, 'Normal', '', 'bittu', 'blpp.com@gmail.com', 'e0ec043b3f9e198ec09041687e4d4e8d', '9999999999', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200125_203202.jpg', 'e7QB1k19My0:APA91bFRJVpK1ECIjS0MXzEZsbz9ubGKHaU4tx13qglHRiDyItfp2ZMznJVw8jTGEFRW6o0yIWGSm7xPVvzW07S2HzeX_4dN2N75P4OMXo9I50goUq5H09bQojithLaOJfNPcF4kxN6y', '0', '2020-02-07 07:19:38'),
(22, 'Normal', '', 'jeet patel', 'jeet@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9988669988', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200206-WA0015.jpg', '', '1', '2020-02-07 07:50:35'),
(23, 'Normal', '', 'mitesh patel', 'mitesh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8899889988', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200206-WA0016.jpg', 'fh2F32IFwKw:APA91bG8LDdivsanU--RDpEZwAyqgVwr3C2UiQtZ10ZtAgEl8u9IXsiISIrdnCQqsxarBK-O6XQD9S1jJRHtwGCTxMijW8WoPKhbSzXNfDN6vJYgCn066bd6wDgemkdztk1c32X1FgGq', '1', '2020-02-07 07:53:56'),
(24, 'Normal', '', 'rahman', 'shuwaib11@gmail.com', 'e9b74cd3c4c1600ee591fd56360b89db', '01825248609', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200206_031150.jpg', 'fG3BcTK5gUo:APA91bHxaxpTCHohRaHecCXjgYxYquJ8_b1gh8uba2fUvRpsjAIMqhh2SCy5b_Y8wujpjUjId4ztbx6c-jqcd30-mI8ByRlT-FQAJCSjdsAdo0YqwnLB4qAak6LIrMYjyoJ98pSFOImp', '1', '2020-02-07 10:26:10'),
(25, 'Normal', '', 'test', 'test@test.com', 'e10adc3949ba59abbe56e057f20f883e', '123456789', 'http://bytotech.com/envato/quiz/images/registrationimage/1581073051333.jpg', 'c0D1YR2rCmc:APA91bEH8zx39R5fTPwjQBdXF2PNNd0OKSir-6jyeNJMAyUyeO_vOD6XeLHkLbwfsLcz3V8Cgjgapsjh3OcjWi7CbhX1TNOp36PA3Dd6G8oWauPMNzrxdORhd4J79LGTRvw2dvsHbxgr', '1', '2020-02-07 10:57:54'),
(26, 'Normal', '', 'Ike user', 'ikeuser@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1236549870', 'http://bytotech.com/envato/quiz/images/registrationimage/1580898556484.jpg', 'flxFGtJ81oM:APA91bExVgnww2uB-VorIf3WHJrKrfgjudRk2wdsSsIsPx-NJDX9yOvhcYmVJ5-7tlZz8u9pHHGgIifUch1dybg4tIls0FIbnOEVfzABzgqpnIex6-Is9eqadV8ydCvXVHX-4vPl7Eud', '1', '2020-02-07 12:04:50'),
(27, 'Normal', '', 'thenv', 'bvhhg@gghm.vin', 'e10adc3949ba59abbe56e057f20f883e', '9874258742', 'http://bytotech.com/envato/quiz/images/registrationimage/EFFECTS.jpg', 'fRYYtKETaXQ:APA91bFHMt_Ux-VAtSTPbyk_EKf1Q5PCcmvpEUphJVhI8RgtJXsZRQeZ7zQdUGPmLeonvxyEtGyGQzaUR4fNVDWhHh2nlZtZ0lo9i42J1ZBpc-XCH4Nj0cHEWWUqgdNVqJ38OkbabUzd', '1', '2020-02-07 15:03:49'),
(28, 'Normal', '', 'mk', 'mahendra1616@gmail.com', '6b0dc2cf1a8d7efaa1aafdac598cbc61', '8078633954', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200207_182541.jpg', 'fIT3c6NMn9E:APA91bHU1z7JRlogdqXIsEIoJ-_qf7-m3LnM2HtKBMQNuN__gHAY_gXJn0ie1-c9EjVPkR9m0CWychCms6CiGW472Btffnm1zJPgGHvkgDIpXdrMnobgUCDBheNvTDNbIonJNFo9-frg', '1', '2020-02-07 16:15:55'),
(29, 'Normal', '', 'thoau112', 'thoaihhn@gmail.com', '0d85b4add646ea6596106e41c0563118', '0869074990', 'http://bytotech.com/envato/quiz/images/registrationimage/Screenshot_2020-02-06-18-56-03-918_com.mservice.momotransfer.png', 'cQ8RhdvEc50:APA91bGN7faAj7uKAAM9Yiog46-v9L3HE_X0W5nlnaDBHMzm-_pJRSUFS5DlmdGH5XB4WrssEp9PI7agDWPI1hXbXJnyNxpLZWYAlaXuKt7jZEey8NrzNYSO8h8xsqvrQX45ajCksKIB', '1', '2020-02-07 16:31:30'),
(30, 'Normal', '', 'ksh user', 'iken412@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0987654321', 'http://bytotech.com/envato/quiz/images/registrationimage/1581093377915.jpg', 'fVJjoA6dsXI:APA91bGOp-XQ-yUp5ukiVd7LY_lSF78bJDXiFo9LNESn2n510u3Sv5WpKcgBhEkCQGiAPbGNhN1sblf6FZBZL50RHbiSpJczhhpEKO6q24KYhQ7_9IhvvzLrj6spZv9Gb8FbOcJOUjTQ', '1', '2020-02-07 20:28:17'),
(31, 'Normal', '', 'mahavir', 'win.bhilai@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9827900000', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200206_135746_939.jpg', 'dNnW590uEk0:APA91bFhRmj9Od0R1jOKEcLxxEl-ZSKtZoJndOOO4ix_h7i4hMOqWSECPo-xrKiGbUj3vzdkv3c3BLrOId77Of1T8bLEBh6oi-vVXEwIvZylOH2lyTxN_OSAt6p2IRwhvfUfqCyccqpr', '1', '2020-02-07 20:03:01'),
(32, 'Normal', '', 'tegaapie', 'tegaapie@gmail.com', '25d55ad283aa400af464c76d713c07ad', '8324060000', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200207_154905.jpg', 'cNDElhM8MiA:APA91bGOj5IQ-irgywPvc9VCFOBkXB_Hfg_TcQJFOt46BGxAQnq04e4eclp7XAfdobK2Uw4yKD0yHNIdJtGyUZEhdGjO9W-pdfxzRan-sUN29r5d2ODQKoPumrefdFFjslsDn2MLCIGF', '1', '2020-02-07 21:45:14'),
(33, 'Normal', '', 'nishu', 'yournishu@gmail.com', 'dea29c3274664598565272adda6ea050', '9907072232', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200206_162921.jpg', 'dB-EMsGU2rM:APA91bGIc7sw9Va3TPLLeIN1uxjuTcvyli71z82V27LZ24uHXDeZO00rPfZDtKOUM8q20y-il2TwfXNKKZVxQJ83W2QCmPBrZaS43hlavxff0fpEjDb2m23FhOCrg_SvT7ii8iTF98f8', '1', '2020-02-08 02:23:50'),
(34, 'Normal', '', 'avi', 'aviworld1947@gmail.com', 'fa050ef15889317adacf80d86b47e2ec', '9874857482', 'http://bytotech.com/envato/quiz/images/registrationimage/ANIMALS05-1.jpg', 'd2OJTDhIw2w:APA91bEVUST3s-k0yay_MXnwpQrlj0T5M8kNi-MO3g8jnF9xhhukDDYNmYS62XA_JThRwgSm0OAdfE_g9ifS5s0AhY0jbc0aPgWIV4Jj7vLZ_qER0qTCW4MhGFvAoxd7FK4nSQdxbxkU', '1', '2020-02-08 03:23:21'),
(35, 'Normal', '', 'sbns', 'a@gmail.com', 'b196801ffd03bf67b733f01585a90645', '9565329', 'http://bytotech.com/envato/quiz/images/registrationimage/20200205_215732.png', 'eabcx9pufhI:APA91bEQrcINHYUbp19LwJdDItA8AvB3ydCX4-gceVC3NYqd0RSiOLicMQJqGoU3-E78gFVLG_ASTx9rj-QgpLpLX2aQogpDlOL9_KJJinLVy5XWL5yAjYyA3SYq_tSaW5U-apj6_8JJ', '1', '2020-02-08 05:27:19'),
(36, 'Normal', '', 'rishi', 'anandrishi446@gmail.com', '73d46f9d223a707449983e95935d403d', '8257805268', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20180226_184455.jpg', 'fphPeiXIzsQ:APA91bECUW6RMIvykk3cEFrIPPdRWGotkQTktzRf1ZMa-qpK5bCCx02fnywdzhF1M4KQ5foI77ZBzAr_9ZhMOb36z_FMCPj_Z3Wa6yYStS4BXgvg6z6vll60GeVwwwTuc5r4sk_e1qlE', '1', '2020-02-08 05:43:09'),
(37, 'Normal', '', 'Pagalavan', 'tamilchatnetwork@gmail.com', '4297f44b13955235245b2497399d7a93', '8667602105', 'http://bytotech.com/envato/quiz/images/registrationimage/63582_32f2eef96dc2a3a773e2d784dcf3b406.jpg', 'fXXHdgdqfN8:APA91bFpLULy_yyiKJ-slb6Aelx-BdAsavQ4PoIbFfg3ncZqwAplCtU4sIS_q5NGAREsKsQrJnt0s6D5HJwKvjY2OZCGB7ng3jhvDpOA3Ro4t83oBzPckuId_z0ASlX9NVNO7kPMs6-D', '1', '2020-02-08 09:20:56'),
(38, 'Normal', '', 'apocanhi', 'apeltorh319@gmail.com', '05252d3ab1825c4f51ef7797d46dde56', '05442186941', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200208_154106_758.jpg', 'dQFSRsGcfGI:APA91bFL6QwYRuhAjLh0NxIiKVzIlje5aRRLTkzRyiGrQSrwHtH8sCdyRHcP2VF0TAAY5KWw642I0Vp2tc_exHAh1_sd61mf00NF_C4cNN-9F18CSztXd1iID5-H8CUcZBmHxpGbgnyX', '1', '2020-02-08 13:52:41'),
(39, 'Normal', '', 'Samad', 'samad@mail.com', '25f9e794323b453885f5181f1b624d0b', '012345679', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200201_193541.jpg', 'e1sUAbL7lPM:APA91bEA8KvkkK0-L2PcpCWgS72-2lnsqw-hFk56IUyX61equj-DswNzGl77G6tD1Zoq8X7ZNmjCekQAsOyaflUPDt8N952DY8-4T1LC6pA1hln8Z0hw5YdRt4nZzTC-lF-LPCWKWHjM', '1', '2020-02-08 17:39:19'),
(40, 'Normal', '', 'arun', 'anchalbxr800@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9955724735', 'http://bytotech.com/envato/quiz/images/registrationimage/Screenshot_2020-02-09-06-54-12-089_com.facebook.katana.png', 'f5CmhV9odgk:APA91bEIQfrLuWEcVdgy5hD4b3xv7As7rufEPprSDZm4ml21cQGVMqTdUk7ELFUXgw8dnqo1YKUziTvsQ5uD1H3jVDHRl-HeKCjAKBRtMgijvMUiVAJw4JvIaIwu-lrN51rI4OOCMxRB', '1', '2020-02-09 09:33:57'),
(41, 'Normal', '', 'naval', 'navalkishororaon@gmail.com', '8fca9d876ba4e93c349144ee52deaced', '7004830642', 'http://bytotech.com/envato/quiz/images/registrationimage/1581243218522.jpg', 'dhAsOvLNB1w:APA91bE6oFcLxM2_vM8if1gy3KYuMewm29IF23mwaNAJFE1JxPMkaaZ_P-wpUCro8UR3KAg5G-HrroGDSyZEKYt2gnnrU2C2Lv-mN3fWW8upVQGOax6cQaxTAzsJoWQoVXxe1sptqK26', '1', '2020-02-09 10:14:20'),
(42, 'Normal', '', 'kumar', 'message.kpb@gmail.com', '0c8abdb962f042d1857c66dd26b0c87b', '8609042002', 'http://bytotech.com/envato/quiz/images/registrationimage/Passports.jpg', 'diotPBdrVOM:APA91bHPvLfB1pXzBUCmKXAtnIBxc62oQ9R6vZ78KRKWPruho4Ln-jOo5UlEs9mU3CgzdpjUvz55KbHe-wrnotNBeatQcPaY6EI78tQCRmqZUcWLih8v7wzN7R65yWe_nhk6Ygf_lASb', '1', '2020-02-09 11:05:40'),
(43, 'Normal', '', 'Soven', 'sovenroy288@gmail.com', '5b381813bb8faa3621a008ca3690d66c', '7407629716', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200203_084538.jpg', 'fPX3ZfBGVGE:APA91bFtPLSE2_GEbXqcXGlaCK1nq9CroTlmL8PiHfziyQ7XTbCAFWtXNEUqirJ79lcErEoqMpeSnTqPDmeLTeQ1P5vlP-bf0dxaf7dx_iru8XWqkLekA4jHztDefcJm4Xv6AFZGZBW6', '1', '2020-02-09 11:09:05'),
(44, 'Normal', '', 'SUBHASISH PRADHAN', 'subhamon2011@gmail.com', 'e38d2c50198126c76cf4d1ac0026b310', '8637027057', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200207_105433.jpg', 'eoPpQxn8xAA:APA91bHCj4lBi4Z9KFej0TtH97we4PbdUkaeWiwuIPsJEZ99eDb5YKlkfFxxYvWMKJsDf0tl4lKBFOWVpCSGmCXrJOdorzq4cFG6PIecMqo3gst9uHzyektzuldD-9O9hcx4eiipOtCo', '1', '2020-02-09 11:21:17'),
(45, 'Normal', '', 'Bosko', 'sawkmiebosko@gmail.com', 'f550a28114d636149d933b8f1fc914ba', '9856127840', 'http://bytotech.com/envato/quiz/images/registrationimage/28108.jpg', 'fKTPh0NpNYs:APA91bHbqfrVO3T40TCDZG_LaWrAiDIH9HKPcEtJFOymBVU9e1GBtG5c9paolKXAtZLPw_IEQARPuoQKQydxHR9-K73_Pz1b7LYOuaOzakYwIliVa0_QjGri3ZP475cgOZmIrlSbZUTC', '1', '2020-02-09 11:45:54'),
(46, 'Normal', '', 'Bapi Singha', 'bpsingha1996@gmail.com', 'f5f6db560ef3f112e0d47fa14fce67ba', '9901579359', 'http://bytotech.com/envato/quiz/images/registrationimage/FB_IMG_1576578677940.jpg', 'fr3Fj3040IU:APA91bEIGJLGIt-Z_j4uUP9npUjcVK0FtM-vtJ7Jnt6gzH1dDYnMR1Y742ddcaStScKYLisNyOeic12v_HylLfncqAs1eh9sNW31Y6Ri4LzEQ308jUJU-930rdajuCdrjzSa6jVkyjve', '1', '2020-02-09 13:56:16'),
(47, 'Normal', '', 'Suresh sabu', 'myquerybargarh@gmail.com', 'a38a819f33e725f91d08e6a49b3d4302', '9938952071', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200207_141707.jpg', 'cBR_6RGttvU:APA91bH8uAt-EyIMV_zcIKhjdkoMZNRVTGu8rOcsd4ZlmWiBK4IhAuxfnqFB0YzfIEolIJ8lWhBgWeZyEh4qTlO80ewfFFOQSM_DxHKQFkTGNpFGhGFANrEYr6zesixhkXxfAkeMkJHa', '1', '2020-02-09 15:15:38'),
(48, 'Normal', '', 'test', 'testtest@test.com', '05a671c66aefea124cc08b76ea6d30bb', '25463256325', 'http://bytotech.com/envato/quiz/images/registrationimage/1581263704336.jpg', 'csXMcAm1c-4:APA91bGDixIVw103TGPRkcvk1pxo0gjBQZHjMZnQdxVwilggvfPaqdgI3qH91kEG6zotV7BQ1zSns4T-iyJJRZK7B5ddl539M1nvc2QnduC66Bh4xs4p0AieXyeLu7BatbnEko4r0puH', '1', '2020-02-09 15:55:54'),
(49, 'Normal', '', 'kik kik', 'kik@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2356892356', 'http://bytotech.com/envato/quiz/images/registrationimage/1581265995096.jpg', 'c1GrlzFRdaI:APA91bEBM5UOVGXocICRWsnRGfzNS3lBSWZWv8fIKeeiV7qeU_x2hcSNRT9LGqmGsfB02DiviO0bHJMR-vxQ9_oQ8JHZe0ysi7Cz6KyuQaXfgDuqcScsYux2kDmip8eu3q4aVhlyG8L6', '1', '2020-02-09 16:33:40'),
(50, 'Normal', '', 'pedrin', 'pedrin@correo.com', 'ef5990ab47b058fad4024ddf71fd6440', '1234567890', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200204-WA0005.jpg', 'cANA7FoALpo:APA91bEr50Kk6TjFklpwOEuzYKWdo8_LqCLqX-P0SpnEB9wEy-ksg8UyNvVhJt4Y0rb9hRZj4ga_MnHlrIksTwdzEAYD7ucgn_i-KHErNZuozAwZXfJAu6KzpTYzeVjy5PdwmkvNzLBy', '1', '2020-02-09 17:20:27'),
(51, 'Normal', '', 'ssbala', 'ssbalaeee@gmail.com', 'cda86eb5f8abaf23f81d98efed5b14f1', '9488000990', 'http://bytotech.com/envato/quiz/images/registrationimage/Beautiful-Blue-Butterfly-HD-Mobile-Wallpaper.jpg', 'csNyE0uV-8k:APA91bEUv4xlFVhNKA8XR0FnIcmpR-G9BVrwZoPICM0fycDVFR9e-Nz62sx7NZfgH7NXAKCPydVSlkSlsu-m1M7eKii3Z0-4mv7Jn6wn9GNvhT4jyKBFpaRiuKXhVudxXcuhZl872ygQ', '1', '2020-02-10 02:35:14'),
(52, 'Normal', '', 'raju', 'srihariraju@mns.com', 'e10adc3949ba59abbe56e057f20f883e', '999999999', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20190909_183907.jpg', 'd5pvl2eF7Go:APA91bHa-TTgml1cJHjbZiSBPQ8TUs52SWZv-c2gGuAtKf1BXAH8bsN0AVZ4Iy2uZntIhAezTmsXxTco0Hrz0gWwJzKBOJLuE0ZYpWji_x1yh3Ts-B8Jd8uJnK1tMtw8ywMZS39V_jrc', '1', '2020-02-10 05:14:35'),
(53, 'Normal', '', 'gappu', 'jenysupergirl@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9211420007', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200203_110004.jpg', 'ehJONPlloE8:APA91bGDrz1BivNxxKM-qgts8gDyve5Dh7UEl-WfN3QLqYBWuHnMvf_HNrEXbCkHVgPgT6DT4fcwTxmHitdbLAN83cv6kUfW2UG-9Fk86C42VdHpYjY3X89RYnAVHnsdN58EYFl9ylYb', '1', '2020-02-10 06:09:58'),
(54, 'Normal', '', 'pratap', 'yvsgroupinfotech@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '6281605463', 'http://bytotech.com/envato/quiz/images/registrationimage/FB_IMG_1581310125102.jpg', 'fEAdcXpI2so:APA91bHmKtxGGP6coQFYYbeZtEJ1QCVCYsPMGE-_9592xISdvx7ZGzImJqLnHxT0j6rcZ1AodQNi7A8jLWT8ZSHwv2jfTbjoCHszzjJmM9Z4yvh3vrF2CiCNT0Va-4I0Z2d74GPappPX', '1', '2020-02-10 07:09:33'),
(55, 'Normal', '', 'amar', 'amar@gmail.com', 'c0b9963cca3816a39eff2a947a21cf0b', '082327777886', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG_20200209_105813.jpg', 'dueXdnTnvG0:APA91bG-QZaFfKKSCBY81G4hLL6PJ0F8rIVei_dWgGmxzu5Ak3-tHdC4dWOBXesh_iC-A31-DdzFbWmsZRmK2ZMZ2D4mlOmxn1lcZHFTnAyVQj9CgPgVX3H_6Six67lmeT8jsXNPZrNS', '1', '2020-02-10 08:11:42'),
(56, 'Normal', '', 'raj kumar', 'zjdjfjf@gmskf.com', 'affa9d4fb7eccf90ec4f092d2049bcd7', '1234567980', 'http://bytotech.com/envato/quiz/images/registrationimage/VID-20181221-WA0035.jpg', 'eCI4WyrSbjg:APA91bENupY5k7bn2vLbtTl6JfRZQPakZ7rKYZpfPVWdGmEBJ0qjEd-_gjg3Jx3F86_TlGXvqCX8wCBKiPzBg0Du9WElzUOU-oR-WcLSDPqL_QnF_rIhquKFQqOJjmidKrDN2hrmmI3C', '1', '2020-02-10 08:49:02'),
(57, 'Normal', '', 'Rt', 'sdd@sdd.com', '762f9e766ea96b0821de5a2ae4045f69', '1234567890', 'http://bytotech.com/envato/quiz/images/registrationimage/1581341942636.jpg', 'ezjVc55VGo0:APA91bHZ0mNnl1UUwM5Pl_WH-G3B-3L2TdZXjwtLhT4gi28UpKMxq-3En1ocd-DwS-zu-OKqSFo52Tl7i7I0FlcHIAXbb71X-oELiBOgl5PzBLKSmD1vPiMBOCIXHPxIZEK0dIOffJ5A', '1', '2020-02-10 13:40:22'),
(58, 'Normal', '', 'Heru', 'promoke2.ih@gmail.com', 'f0ede5d570b3ccbc9a46b91b53b0165f', '08992527511', 'http://bytotech.com/envato/quiz/images/registrationimage/IMG-20200210-WA0003.jpg', 'dBaxRexhly4:APA91bE49z-qwGz_wwzJmsjrwDF3uyFtus79P42XkzUidCvzhQi65Kx0nmpVyO5RFarcbv4mBWYRalODesqYMBov6kdL5Ezq7fpoKM0Ge424Z7JwWdMX61TOguLIDFSuWnqTdPBya38I', '1', '2020-02-10 16:09:46'),
(59, 'Normal', '', 'NAOSIM', 'naosimfake@gmail.com', '361633153a464830a1fe85dec5efab17', '3169101094946', 'http://bytotech.com/envato/quiz/images/registrationimage/unnamed.jpg', 'du1AT8D5etA:APA91bEM3qtAX76A8q4RSpvn7MF-5XMIFdIHnh02L9n_y61JzMe7ISNHqLXG6tPWh-wRE4mmfSth4xGEWTOgktsRueKCbyAUC3nCiHFqJeaLTDcvGhXl2Z62v5FNI_FzMSnA7RWHI1tS', '1', '2020-02-10 22:36:21'),
(60, 'Normal', '', 'ouemgi', 'ouemgi@ou.com', 'e10adc3949ba59abbe56e057f20f883e', '085329555666', 'http://bytotech.com/envato/quiz/images/registrationimage/httpso-id.ihago.netikxd0e5ffe4ce2a17b49ae57e812372665e7.png.png', 'cSm6Qg7TFw4:APA91bFh_n6uorcKYyMS5Hw0lTK_zJaBOhaZL1eP_gJYp1g03MWJNpG8JetOLJ6aDxjKHGxfwEKnJffZ10P3C0VqBi59agWvNWKZYN_ZHT4Ix2uN50h_J1IDIxv6dvQ1L3tDoZ2ddufz', '1', '2020-02-10 22:41:18'),
(61, 'Normal', '', 'Abc', 'abc@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1234567890', 'http://bytotech.com/envato/quiz/images/registrationimage/82592636_776125972897199_4822779284454113280_n.jpg', 'c6DstAvCo20:APA91bG2lMJ3ugKrJLCSEq7AnlWj_52clqOI50yCnmkVdlpg97WBn3OS7dHQUA7jXoM78_j33QZReU8-n5kax4PMVl8V5oSTJ2seqJsdrWwd5SU_CyBL8Nt8MggvKk2JnquiZdmD-9bF', '1', '2020-02-10 23:55:49'),
(62, 'Normal', '', 'vuathongtin', 'vuathongtin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0773599297', 'http://bytotech.com/envato/quiz/images/registrationimage/495249e93cdc19f7ec035e8c995b6a2f.jpeg', 'dUVCyDDb2P8:APA91bEvux9L-jD7B9liLzJpLzJZWTrZtZTkoO8a046Q9RIZGnZxFBZ4h51A7HPTZCAVm43wlng1FhCKlgOOpK8Kwjpn7YzBU8nUFlQO6LMkef_9VyDSWsqqVyHtJCC0kSHcfsXoNhOg', '1', '2020-02-11 05:15:47'),
(63, 'Normal', '', 'Mahesh', 'testuser007@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9865321478', 'http://bytotech.com/envato/quiz/images/registrationimage/—Pngtree—flat-simple-and-clean-vegetable_5047421.png', 'fcNlZcrXzcs:APA91bFPt7YCsfpCy7B12aL0SWFuBHLQFQyOOcoiSvESkAUqWTLkbHbqv90nNgugmXvLZ-cdm3po1U6frm_TxPSC8EUqpvDv9uACL7msFkorjD4L3H8Q2xTlusFmG3c-qmB4nHKLQvqx', '1', '2020-02-11 07:11:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`chat_room_id`);

--
-- Indexes for table `current_affers`
--
ALTER TABLE `current_affers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `descri_prepa`
--
ALTER TABLE `descri_prepa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editional_vocab`
--
ALTER TABLE `editional_vocab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hot_gk`
--
ALTER TABLE `hot_gk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`qz_id`);

--
-- Indexes for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_contactus`
--
ALTER TABLE `tbl_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_score`
--
ALTER TABLE `tbl_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcategory_list`
--
ALTER TABLE `tbl_subcategory_list`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `chat_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `current_affers`
--
ALTER TABLE `current_affers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `descri_prepa`
--
ALTER TABLE `descri_prepa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `editional_vocab`
--
ALTER TABLE `editional_vocab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hot_gk`
--
ALTER TABLE `hot_gk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `qz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_contactus`
--
ALTER TABLE `tbl_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_subcategory_list`
--
ALTER TABLE `tbl_subcategory_list`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
