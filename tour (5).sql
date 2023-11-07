-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 01:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking_record`
--

CREATE TABLE `booking_record` (
  `bid` int(11) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `total_person` int(11) NOT NULL,
  `room` enum('single','distributed','','') NOT NULL,
  `e_contact` bigint(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `payement_status` enum('PENDING','SUCCESSFUL','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_record`
--

INSERT INTO `booking_record` (`bid`, `pname`, `full_name`, `phone_no`, `email`, `date`, `total_person`, `room`, `e_contact`, `address`, `payement_status`) VALUES
(58, 'HIMACHAL', 'Rishab', 6266832433, 'rahul@gmail.com', '2023-10-25', 8, 'single', 9826258857, 'new market delhi', ''),
(65, 'HIMACHAL', 'Sneha Dubey', 6266832433, 'rahulrajak7080@gmail.com', '2023-10-26', 5, 'single', 9826258857, 'Gole ka mandir', ''),
(66, 'HOLIDAYS', 'shashank', 6266832433, 'rahulrajak7080@gmail.com', '2023-10-28', 5, 'single', 9826258857, 'Pragati vihar', 'PENDING'),
(67, 'HIMACHAL', 'Shashank Dubey', 7987564716, 'shashankdubey1130@gmail.com', '2023-10-26', 1, 'single', 7987564716, 'D9, Pragati Vihar, Gole Ka Mandir, Gwalior', 'PENDING'),
(68, 'MALDIVES', 'Nimit', 6266832433, 'rahulrajak7080@gmail.com', '2023-10-28', 3, 'single', 6266832433, 'Noida', 'PENDING'),
(69, 'EUROPE', 'Neha', 6266832433, 'rahulrajak7080@gmail.com', '2023-10-28', 5, 'single', 9826258857, 'Ujjain', 'PENDING'),
(70, 'RAJASTHAN', 'Priyanka Sharma', 8349173243, 'harshverma09022001@gmail.com', '2023-11-09', 150, 'single', 9826258857, '27/7, House adsf;laksdfja;sdlfkj', 'PENDING'),
(71, 'KASHMIR', 'Sneha', 6266832433, 'rahulrajak7080@gmail.com', '2023-11-01', 15, 'single', 9826258857, 'D-9 pragati vihar colony ', 'PENDING'),
(72, 'KASHMIR', 'Priyanka', 6266832433, 'rahulrajak7080@gmail.com', '2023-11-02', 15, 'single', 9826258857, 'pragati vihar', 'PENDING'),
(73, 'KASHMIR', 'Vishal', 6266832433, 'rahulrajak7080@gmail.com', '2023-12-01', 15, 'distributed', 6266832433, 'new delhi', 'PENDING'),
(74, 'MALDIVES', 'nimmi', 6266832433, 'rahulrajak7080@gmail.com', '2023-12-01', 150, '', 6266832433, 'new', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_record`
--

CREATE TABLE `complaint_record` (
  `cid` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `c_topics` enum('Booking Related','Payment Related','Cancellation Related','General Enquiry Related','Technical Issue Related','Feedback') NOT NULL,
  `c_file` varchar(255) NOT NULL,
  `c_message` longtext NOT NULL,
  `reply` longtext NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_record`
--

INSERT INTO `complaint_record` (`cid`, `email`, `c_topics`, `c_file`, `c_message`, `reply`) VALUES
(9, 'rahul@gmail.com', 'General Enquiry Related', 'alone-stars-purple-background-hd-wallpaper-preview.jpg', 'this is my mistake', 'Solved ho chuka hai'),
(11, 'rahulrajak7080@gmail.com', 'Payment Related', 'Resume_final.pdf', 'hey', 'Pending'),
(35, 'rahulrajak7080@gmail.com', 'Payment Related', 'Final1.pdf', 'Their is some issue in my payment please verify', 'Solved'),
(38, 'harshverma09022001@gmail.com', 'Booking Related', '', 'fffffffff', 'Pending'),
(39, 'harshverma09022001@gmail.com', 'Feedback', '', 'retretretrer', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `package_images`
--

CREATE TABLE `package_images` (
  `pname` varchar(20) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_images`
--

INSERT INTO `package_images` (`pname`, `images`) VALUES
('GUJRAT', 'gujrat1.jpg'),
('GUJRAT', 'gujrat2.jpg'),
('GUJRAT', 'gujrat3.jpg'),
('RAJASTHAN', 'rajasthan1.jpg'),
('RAJASTHAN', 'rajasthan2.jpg'),
('RAJASTHAN', 'rajasthan3.jpg'),
('HIMACHAL', 'himachal1.jpg'),
('HIMACHAL', 'himachal2.jpg'),
('HIMACHAL', 'himachal3.jpg'),
('KASHMIR', 'kashmir1.jpg'),
('KASHMIR', 'kashmir2.jpg'),
('KASHMIR', 'kashmir3.jpg'),
('DUBAI', 'dubai1.jpg'),
('DUBAI', 'dubai2.jpg'),
('DUBAI', 'dubai3.jpg'),
('SINGAPUR', 'singapur1.jpg'),
('SINGAPUR', 'singapur2.jpg'),
('SINGAPUR', 'singapur3.jpg'),
('MALDIVES', 'maldives1.jpg'),
('MALDIVES', 'maldives2.jpg'),
('MALDIVES', 'maldives3.jpg'),
('EUROPE', 'europe1.jpg'),
('EUROPE', 'europe2.jpg'),
('EUROPE', 'europe3.jpg'),
('MALESIYA', 'malesiya1.jpg'),
('MALESIYA', 'malesiya2.jpg'),
('MALESIYA', 'malesiya3.jpg'),
('HOLIDAYS', 'amazing1.jpg'),
('HOLIDAYS', 'amazing2.jpg'),
('HOLIDAYS', 'amazing3.jpg'),
('MANALI', 'manali1.jpg'),
('MANALI', 'manali2.jpg'),
('MANALI', 'manali3.jpg'),
('SPIRITUAL', 'spritual1.jpg'),
('SPIRITUAL', 'spritual2.jpg'),
('SPIRITUAL', 'spritual3.jpg'),
('GOA', 'goa1.jpg'),
('GOA', 'goa2.jpg'),
('GOA', 'goa3.jpg'),
('EGYPT', 'egypt1.jpg'),
('EGYPT', 'egypt2.jpg'),
('EGYPT', 'egypt3.jpg'),
('ANDAMAN', 'andaman2.jpg'),
('ANDAMAN', 'andaman4.jpg'),
('ANDAMAN', 'andaman3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `package_record`
--

CREATE TABLE `package_record` (
  `ptype` varchar(255) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `price` varchar(20) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_record`
--

INSERT INTO `package_record` (`ptype`, `pname`, `duration`, `description`, `price`, `logo`) VALUES
('Indian Destination', 'ANDAMAN', '5 DAYS - 4 NIGHT', 'The Andaman and Nicobar Islands, nestled in the Bay of Bengal, offer a diverse range of attractions for tourists. Port Blair, the capital, boasts historic sites like the Cellular Jail. Havelock Island, with its white sandy beaches and water sports, is a favorite, while Neil Island offers tranquility and natural beauty. Ross Island showcases colonial remnants, and Baratang Island\'s mangrove forests and limestone caves beckon nature enthusiasts. Barren Island\'s active volcano, Elephant Beach\'s water adventures, and North Bay Island\'s vibrant marine life add to the allure. Long Island is a serene getaway, and the Mahatma Gandhi Marine National Park teems with biodiversity and coral reefs, making the Andaman Islands a haven for diverse experiences.', '₹40,000', 'andman.jpg'),
('International Destinations', 'DUBAI', '4 DAYS - 3 NIGHT', 'Dubai: A Glittering Oasis in the Desert Welcome to Dubai, a city of dreams and wonders that seamlessly blends tradition and modernity. Begin your journey by marveling at the world\'s tallest skyscraper, the Burj Khalifa, before exploring the enchanting Old Dubai, where the Al Fahidi Historic District and the Dubai Museum stand as testaments to the city\'s rich heritage. Dive into the sensory extravaganza of the Gold and Spice Souks, and then cruise along the Dubai Creek in a traditional abra. Enjoy the opulence of Palm Jumeirah and the iconic Atlantis, The Palm resort, and indulge in retail therapy at the Mall of the Emirates. Conclude your trip with a desert safari, experiencing the mesmerizing dunes and cultural performances. Dubai offers a unique blend of luxury, culture, and adventure, making it a destination unlike any other.', '₹50,000', 'dubai.jpg'),
('Travelbug Special', 'EGYPT', '7 DAYS - 6 NIGHT', 'Egypt: A Journey Through Time and Myth Embark on a mesmerizing odyssey through Egypt, where ancient wonders and timeless history await. Begin your adventure in Cairo, where the enigmatic Sphinx and awe-inspiring Pyramids of Giza stand as a testament to mankind\'s ingenuity. Immerse yourself in the treasures of the Egyptian Museum, and explore the vibrant bazaars of Khan El Khalili. Sail along the legendary Nile River aboard a traditional felucca, discovering the temples of Luxor and Karnak, and the Valley of the Kings on the West Bank. Conclude your journey in the laid-back atmosphere of Aswan, marveling at the grandeur of Abu Simbel. Egypt\'s unparalleled blend of ancient marvels and contemporary culture promises an unforgettable voyage through time and myth.', '₹70,000', 'egypt.jpg'),
('International Destinations', 'EUROPE', '9 DAYS - 8 NIGHT', 'Europe: A Tapestry of Timeless Treasures Embark on a once-in-a-lifetime journey through Europe, where every city is a living museum, and each landscape a masterpiece. Start in the romantic city of Paris, with its iconic Eiffel Tower and charming Montmartre. Travel to the historic streets of Rome, where ancient ruins and Vatican City&#039;s grandeur await. Explore the fairytale cities of Prague and Vienna before winding through the picturesque villages of the Swiss Alps. Amsterdam&#039;s canals and Barcelona&#039;s artistry beckon, and finally, experience the cosmopolitan allure of London. With diverse cultures, art, history, and culinary delights at every turn, Europe is a boundless mosaic of unforgettable moments and cultural wonders.', '₹50,000', 'europe.jpg'),
('Travelbug Special', 'GOA', '4 DAYS - 3 NIGHT', 'Goa: Where Sun, Sand, and Culture Unite Embark on a sun-kissed adventure in Goa, India&#039;s beach paradise, where pristine beaches, vibrant culture, and colonial history converge. Start your journey in North Goa, with its bustling markets, water sports, and iconic beaches like Baga and Calangute. Explore the rich history of Old Goa, home to magnificent churches and cathedrals. Then, head south for quieter, serene beaches like Palolem and Agonda, surrounded by lush greenery. Delve into Goa&#039;s unique blend of Indian and Portuguese influences through its cuisine, architecture, and festivals. Whether you seek relaxation on the sandy shores or a taste of the lively nightlife, Goa promises an unforgettable escape where every moment is a celebration of life.', '₹12,000', 'goa.jpg'),
('Indian Destination', 'GUJRAT', '3 DAYS - 2 NIGHTS', 'Gujarat: A Cultural Odyssey Embark on a cultural odyssey through the vibrant state of Gujarat, India. Starting in Ahmedabad, delve into the rich history of its old city, known for intricate pols (neighborhoods) and delectable street cuisine. Explore the awe-inspiring temples of Somnath and Dwarka, visit the fascinating stepwells of Adalaj, and experience the bustling markets of Vadodara. Marvel at the white desert of Kutch during the Rann Utsav, and discover the tranquil beauty of Saputara hill station. This tour offers a captivating blend of culture, history, and natural beauty in the heart of India.', '₹10,000', 'gujrat.jpg'),
('Indian Destination', 'HIMACHAL', '6 DAYS - 5 NIGHT', 'Himachal Pradesh: The Himalayan Haven Prepare for an unforgettable journey through Himachal Pradesh, India&#039;s Himalayan haven, where lofty peaks, lush valleys, and serene landscapes create the perfect backdrop for a breathtaking adventure. Starting in Shimla, the former British summer capital, explore colonial architecture and lush greenery, then venture to Manali for thrilling outdoor pursuits amidst the Himalayan beauty. Discover the spiritual aura of Dharamshala, home to the Dalai Lama, before heading to the hidden gem of Spiti Valley, where ancient monasteries and dramatic landscapes await. Conclude your expedition in the scenic town of Kullu, known for its scenic beauty and colorful markets. This tour is a mesmerizing journey through the natural and cultural treasures of Himachal Pradesh.', '₹18,000', 'himachal.jpg'),
('Travelbug Special', 'HOLIDAYS', '4DAYS - 5NIGHT', 'Amazing Holidays: Your Gateway to Unforgettable Adventures With Amazing Holidays, your dream vacation becomes a reality. Our expertly curated tours take you to the world&#039;s most breathtaking destinations, whether you seek cultural immersion, natural wonders, or pure relaxation. From the mystical temples of Asia to the pristine beaches of the Maldives, we craft unforgettable experiences that cater to every traveler&#039;s desire. Impeccable planning, luxurious accommodations, and a commitment to your safety ensure that you can fully savor the magic of each destination, worry-free. Join us and embark on a journey of a lifetime, where every moment is an opportunity for discovery and wonder.', '₹20,000', 'amazing.jpg'),
('Indian Destination', 'KASHMIR', '7 DAYS - 6 NIGHT', 'Kashmir: The Paradise on Earth Embark on a spellbinding journey to Kashmir, often referred to as the &quot;Paradise on Earth,&quot; where pristine Himalayan landscapes meet serene lakes, lush gardens, and a rich cultural tapestry. Beginning in Srinagar, the capital, you&#039;ll glide through the iconic Dal Lake on a shikara, explore the Mughal Gardens, and stroll through the bustling markets. The journey then takes you to Gulmarg, a meadow of flowers and adventure, offering scenic vistas and thrilling activities. Proceed to Pahalgam, a tranquil valley known for its rustic charm and breathtaking natural beauty. Lastly, visit Sonmarg, the &quot;Meadow of Gold,&quot; surrounded by snow-capped peaks. This tour promises an unforgettable experience in one of the world&#039;s most picturesque destinations.', '₹20,000', 'Kashmir.jpg'),
('International Destinations', 'MALDIVES', '10 DAYS - 9 NIGHT', 'Maldives: A Tropical Paradise Unveiled Welcome to the Maldives, where crystal-clear turquoise waters meet powdery white-sand beaches in a breathtaking display of natural beauty. Your journey in this island nation begins with a warm Maldivian welcome and a short seaplane ride to your private overwater villa or beachfront bungalow. Spend your days snorkeling among vibrant coral reefs, indulging in spa treatments, or simply lounging by the azure sea. Explore the vibrant marine life on a sunset cruise or enjoy a romantic dinner under the stars. With its luxury resorts, water villas, and unmatched tranquility, the Maldives promises an unforgettable escape in the lap of tropical paradise.', '₹45,000', 'maldives.jpg'),
('International Destinations', 'MALESIYA', '8 DAYS - 7 NIGHT', 'Malaysia: A Tapestry of Diversity and Natural Beauty Welcome to Malaysia, a land of contrasts where modernity and tradition coexist harmoniously. Begin your journey in the vibrant capital, Kuala Lumpur, with its iconic Petronas Twin Towers and cultural treasures like Batu Caves. Explore Penang&#039;s historic Georgetown, a UNESCO World Heritage Site, known for its rich culinary scene and colonial architecture. Then, venture into the lush rainforests of Borneo to encounter orangutans and proboscis monkeys in their natural habitat. Continue to Langkawi for pristine beaches and island-hopping adventures. Whether you&#039;re exploring bustling cities or immersing yourself in nature, Malaysia&#039;s cultural diversity and stunning landscapes promise an enriching and unforgettable travel experience.     User EGYPT TOUR IN ONE PARA ChatGPT Egypt: A Journey Through Time and Myth Embark on a mesmerizing odyssey through Egypt, where ancient wonders and timeless history await. Begin your adventure in Cairo, where the enigmatic Sphinx and awe-inspiring Pyramids of Giza stand as a testament to mankind&#039;s ingenuity. Immerse yourself in the treasures of the Egyptian Museum, and', '₹40,000', 'malesiya.jpg'),
('Travelbug Special', 'MANALI', '7 DAYS - 6 NIGHT', 'Manali: Gateway to Himalayan Serenity Nestled in the lap of the Himalayas, Manali beckons with its captivating landscapes and serene ambiance. Start your adventure in this charming hill station by exploring the bustling markets of Old Manali and savoring local cuisine. Immerse yourself in the tranquility of Solang Valley, where you can partake in thrilling adventures like paragliding and zorbing. Venture further to Rohtang Pass for panoramic mountain vistas and snow-capped peaks. Visit ancient temples, including Hidimba Devi Temple, and unwind by the Beas River. Manali offers a perfect blend of natural beauty, adventure, and cultural richness for an unforgettable escape in the Himalayas.', '₹28,000', 'manali.jpg'),
('Indian Destination', 'RAJASTHAN', '4 DAYS - 3 NIGHT', 'Rajasthan: A Regal Odyssey Embark on a regal odyssey through Rajasthan, India&#039;s Land of Kings, where ancient traditions and majestic palaces await your discovery. Starting in Jaipur, the Pink City, immerse yourself in the vibrant markets and explore architectural wonders like the Amber Fort and City Palace. Journey through the desert to Jodhpur, the Blue City, to witness the imposing Mehrangarh Fort and the enchanting blue-painted houses. Udaipur, the City of Lakes, enchants with its serene lakes and palatial splendor, including the City Palace and Lake Palace. Finally, experience the desert&#039;s magic in Jaisalmer, with its golden sand dunes and exquisite havelis. This tour is a royal tapestry of Rajasthan&#039;s diverse heritage and grandeur.', '₹20,000', 'rajasthan.jpg'),
('International Destinations', 'SINGAPUR', '7 DAYS - 6 NIGHT', 'Singapore: The Lion City&#039;s Enchanting Fusion Welcome to Singapore, a mesmerizing blend of modernity and tradition in the heart of Southeast Asia. Begin your journey with a visit to Gardens by the Bay, where futuristic Supertrees and lush greenery create a stunning spectacle. Explore the vibrant streets of Chinatown, Little India, and Kampong Glam, each offering a unique cultural experience. Don&#039;t miss the iconic Merlion Park and Sentosa Island&#039;s family-friendly attractions. Indulge in world-class shopping along Orchard Road and savor a tantalizing array of culinary delights at hawker centers. Singapore&#039;s impeccable cleanliness, efficient transport, and multicultural charm make it an ideal destination for a seamless and captivating travel experience.', '₹38,000', 'singapur.jpg'),
('Travelbug Special', 'SPIRITUAL', '3 DAYS - 2 NIGHT', 'Kedarnath: A Spiritual Pilgrimage to the Himalayan Abode of Lord Shiva Embark on a sacred journey to Kedarnath, a place of divine significance nestled in the Himalayan heights of Uttarakhand, India. Your pilgrimage begins in the picturesque town of Guptkashi, a gateway to Kedarnath, where you&#039;ll prepare for your spiritual trek. The pilgrimage trail takes you through stunning vistas of lush meadows, pristine rivers, and snow-capped peaks, as you ascend to Kedarnath Temple, dedicated to Lord Shiva. This ancient temple, surrounded by breathtaking mountains, holds deep spiritual importance. Experience the soul-stirring aarti (ritual prayer) in the temple, followed by moments of reflection and devotion. Kedarnath offers not only a spiritual awakening but also an opportunity to connect with nature&#039;s grandeur in one of the holiest and most awe-inspiring corners of the Himalayas.', '₹20,000', 'spritual.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment_record`
--

CREATE TABLE `payment_record` (
  `p_id` int(50) NOT NULL,
  `bid` int(20) NOT NULL,
  `payment_type` enum('credit card','','','') NOT NULL,
  `card_holder` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_record`
--

INSERT INTO `payment_record` (`p_id`, `bid`, `payment_type`, `card_holder`, `card_number`) VALUES
(78, 58, 'credit card', 'dfg5', '1236524589657'),
(79, 58, 'credit card', 'rahul', '123654758596'),
(80, 59, 'credit card', 'Kartikey', '123525263545'),
(81, 61, 'credit card', 'rahul5', '1234'),
(82, 61, 'credit card', 'rahul', '123456325251'),
(83, 62, 'credit card', 'Lakshmi5', '648532751290'),
(84, 62, 'credit card', 'Lakshmi', '523645217820'),
(85, 64, 'credit card', 'Sneha', '253642896152'),
(86, 64, 'credit card', 'Sneha Dubey', '2563485962765'),
(87, 64, 'credit card', 'Sneha Dubey', '259631458762'),
(88, 65, 'credit card', 'Sneha Dubey', '253642668546');

-- --------------------------------------------------------

--
-- Table structure for table `user_record`
--

CREATE TABLE `user_record` (
  `fname` varchar(20) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `gender` enum('M','F','O','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`fname`, `phone`, `email`, `pass`, `gender`) VALUES
('Harsh Verma', 8349173243, 'harshverma09022001@gmail.com', '123', 'M'),
('Katikey soni', 6266832433, 'kartikeysoni@gmail.com', '123', 'M'),
('Rahul Rajak', 6266832433, 'rahul@gmail.com', '123', 'M'),
('Rahul', 6266832433, 'rahulrajak7080@gmail.com', '123', 'M'),
('Shashank Kumar Dubey', 7987564716, 'shashankdubey1130@gmail.com', '12345678', 'M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `booking_record`
--
ALTER TABLE `booking_record`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `complaint_record`
--
ALTER TABLE `complaint_record`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `package_images`
--
ALTER TABLE `package_images`
  ADD KEY `dfg` (`pname`);

--
-- Indexes for table `package_record`
--
ALTER TABLE `package_record`
  ADD PRIMARY KEY (`pname`);

--
-- Indexes for table `payment_record`
--
ALTER TABLE `payment_record`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user_record`
--
ALTER TABLE `user_record`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_record`
--
ALTER TABLE `booking_record`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `complaint_record`
--
ALTER TABLE `complaint_record`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payment_record`
--
ALTER TABLE `payment_record`
  MODIFY `p_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `package_images`
--
ALTER TABLE `package_images`
  ADD CONSTRAINT `dfg` FOREIGN KEY (`pname`) REFERENCES `package_record` (`pname`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
