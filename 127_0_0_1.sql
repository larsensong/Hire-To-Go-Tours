-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 02:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--
CREATE DATABASE IF NOT EXISTS `carrental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carrental`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-09-24 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'alan@gmail.com', 3, '12/12/2020', '24/12/2020', 'i need it now', 1, '2023-09-20 15:42:48'),
(6, 'emeldah@gmail.com', 7, '12/12/2020', '24/12/2020', 'eosr', 1, '2023-09-21 16:18:06'),
(7, 'emeldah@gmail.com', 6, '12/12/2020', '24/12/2020', 'book', 1, '2023-09-21 16:20:10'),
(8, 'user12345@gmail.com', 5, '12/09/2023', '13/09/2023', 'need it now', 1, '2023-09-25 12:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(3, 'Audi', '2023-09-21 13:07:39', NULL),
(7, 'Land Rover', '2023-09-21 13:09:10', NULL),
(12, 'Toyota', '2023-09-21 13:10:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Hire To Go Tours Tower First Avenue. Opposite ALX Learners Hub.', 'Hiretogohelpline@gmail.com', '071234567');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'alan', 'alan@gmail.com', '0725238327', 'Kindly update your cars', '2023-09-20 18:08:44', NULL),
(2, 'alan', 'alan@gmail.com', '0725238327', 'Kindly update your cars', '2023-09-20 18:17:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																		<div style=\"text-align: justify;\"><div>&nbsp; &nbsp; <span style=\"font-weight: bold;\">&nbsp;<span style=\"font-size: large;\"> 1. Acceptance of Terms</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">By using the services provided by Hire to Go Tours, including our website, you agree to comply with and be bound by the following terms and conditions. If you do not agree with these terms and conditions, please do not use our services.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; <span style=\"font-weight: bold;\">&nbsp; &nbsp; 2. Definitions</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">\"Hire to Go Tours\" refers to the company providing car rental services.</span></div><div><span style=\"font-size: large;\">\"You\" and \"Customer\" refer to the user or entity renting a vehicle through our services.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; &nbsp; &nbsp;<span style=\"font-weight: bold;\"> 3. Vehicle Rental</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3.1. Eligibility: To rent a vehicle from Hire to Go Tours, you must be at least 21 years old and possess a valid driver\'s license.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3.2. Booking: All vehicle rentals are subject to availability. We reserve the right to refuse or cancel any booking at our discretion.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3.3. Vehicle Condition: The customer agrees to inspect the rented vehicle for any existing damage and report it to Hire to Go Tours immediately. Failure to do so may result in the customer being held responsible for the damage.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3.4. Return: The vehicle must be returned in the same condition as when rented, with a full tank of fuel, and at the agreed-upon return time. Late returns may incur additional charges.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; &nbsp;<span style=\"font-weight: bold;\"> &nbsp; 4. Payment</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">4.1. Rates: Vehicle rental rates are based on the pricing displayed at the time of booking.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">4.2. Payment Methods: We accept payments via Cash, Creditcard or M-Pesa. Payments are due at the time of booking or as specified in your rental agreement.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">4.3. Security Deposit: A security deposit may be required at the time of rental to cover potential damages, fines, or additional charges. The deposit will be refunded after the rental period, subject to inspection.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; &nbsp;<span style=\"font-weight: bold;\"> &nbsp; 5. Cancellations and Modifications</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">5.1. Cancellations: Customers may cancel a reservation, but cancellation fees may apply. Refer to our cancellation policy for details.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">5.2. Modifications: Changes to your booking may be subject to additional charges. Contact our customer support for assistance with modifications.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; &nbsp; <span style=\"font-weight: bold;\">&nbsp; 6. Liability and Insurance</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">6.1. Liability: Customers are responsible for all traffic violations, fines, and damages incurred during the rental period.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">6.2. Insurance: Hire to Go Tours provides insurance coverage for rented vehicles. Please refer to our insurance policy for coverage details and any additional options available.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-weight: bold; font-size: large;\">&nbsp; &nbsp; &nbsp; 7. Privacy Policy</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">7.1. Privacy: We collect and store personal information as described in our Privacy Policy. By using our services, you consent to the collection and use of your information as outlined in our Privacy Policy.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; &nbsp; <span style=\"font-weight: bold;\">&nbsp; 8. Termination</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">Hire to Go Tours reserves the right to terminate or suspend your access to our services at any time, for any reason, without notice.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; &nbsp; <span style=\"font-weight: bold;\">&nbsp; 9. Changes to Terms</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">We may update these terms and conditions at any time without notice. Please review them periodically for changes.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">&nbsp; &nbsp; <span style=\"font-weight: bold;\">&nbsp; 10. Contact Information</span></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">For questions or concerns about these terms and conditions or our services, please contact us at&nbsp; hiretogocustomerhelp@hotmail.com.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">By using Hire to Go Tours\' services, you acknowledge that you have read, understood, and agreed to these terms and conditions.</span></div></div>										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<div><span style=\"font-size: large;\">At Hire to Go Tours, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you use our website and services. By accessing or using our website and services, you agree to the practices described in this Privacy Policy.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">1. Information We Collect</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">1.1. Personal Information: When you make a booking or inquire about our services, we may collect personal information such as your name, contact details (including email address and phone number), billing information, and other relevant details necessary for your reservation.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">1.2. Usage Information: We may collect information about how you use our website and services, including your IP address, device type, browser type, and pages visited. We may also use cookies and similar technologies to gather this information.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">2. How We Use Your Information</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">2.1. Booking and Reservation: We use your personal information to process bookings, reservations, and payments for our car hire services.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">2.2. Communication: We may use your contact information to send you booking confirmations, updates, promotional offers, and important information about your reservation.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">2.3. Customer Support: We may use your information to provide customer support and address inquiries or issues related to your bookings.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">2.4. Marketing: With your consent, we may use your information to send you marketing communications about our services, promotions, and special offers. You can opt-out of these communications at any time.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">2.5. Improvement of Services: We use data to analyze and improve our website and services, including customization based on user preferences and feedback.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3. Disclosure of Your Information</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3.1. Service Providers: We may share your information with third-party service providers, such as payment processors and car rental companies, to facilitate your bookings and reservations.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3.2. Legal Compliance: We may disclose your information when required by law or to protect our rights, privacy, safety, or property.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">4. Data Security</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">We take the security of your information seriously and implement reasonable measures to protect it from unauthorized access, disclosure, alteration, or destruction.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">5. Your Choices</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">5.1. Access and Correction: You may access and update your personal information by logging into your account on our website.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">5.2. Marketing Preferences: You can opt-out of receiving marketing communications from us at any time by following the instructions provided in those communications.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">6. Cookies</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">We use cookies and similar technologies to collect usage information and enhance your browsing experience. You can manage your cookie preferences through your browser settings.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">7. Children\'s Privacy</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">Our services are not directed at individuals under the age of 18, and we do not knowingly collect personal information from minors.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">8. Changes to this Privacy Policy</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">We may update this Privacy Policy from time to time to reflect changes in our practices or for other operational, legal, or regulatory reasons. We will notify you of any material changes through our website or other appropriate means.</span></div>										\r\n										'),
(3, 'About Us ', 'aboutus', '																																																																																																														<div style=\"text-align: justify;\"><h2><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></h2><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">Welcome to Hire to Go Tours, your premier destination for unforgettable car hire experiences tailored to elevate your journey. Whether you\'re exploring a new city, embarking on a road trip adventure, or simply need reliable transportation for your tours, we\'re here to make your travel dreams come true.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></div><h1><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp;<span style=\"font-weight: bold;\"> &nbsp; &nbsp; &nbsp;Our Story</span></span></h1><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp;At Hire to Go Tours, we believe that every journey is a story waiting to be told. Founded by passionate travel enthusiasts, our company was born out of a deep love for exploring new places and connecting with people from all walks of life. We understand the thrill of the open road and the joy of discovering hidden gems along the way.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp;Our journey began with a simple mission: to provide travelers with exceptional car hire services that offer comfort, convenience, and affordability. Over the years, we have grown and evolved, expanding our fleet and services to meet the diverse needs of our valued customers.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></div><h1><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp; &nbsp; &nbsp; <span style=\"font-weight: bold;\">Why Choose Us</span></span></h1><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp; 1.Diverse Fleet</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">We offer a wide range of meticulously maintained vehicles to suit your needs, from compact cars for city exploration to spacious SUVs for family adventures. Our fleet is equipped with the latest safety and entertainment features to ensure a comfortable ride.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp; 2.Customized Tours</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">We understand that every traveler is unique. That\'s why we offer customizable tour packages designed to cater to your specific interests and preferences. Whether you\'re interested in cultural excursions, scenic drives, or foodie adventures, we\'ve got you covered.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp; 3.Affordable Pricing</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">We believe that memorable travel experiences shouldn\'t break the bank. Our competitive pricing ensures that you get the most value for your money, allowing you to explore more and worry less about your budget.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp; 4.Exceptional Customer Service</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">Our dedicated customer support team is available 24/7 to assist you with any inquiries, changes, or concerns you may have. Your satisfaction is our priority, and we\'re here to ensure your journey is smooth from start to finish.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></div><h1><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp; &nbsp; &nbsp;<span style=\"font-weight: bold;\"> &nbsp;Join Us on Your Next Adventure</span></span></h1><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp;At Hire to Go Tours, we\'re not just a car hire company; we\'re your trusted travel companion. Whether you\'re planning a solo escape, a family vacation, or a group tour, we invite you to join us on your next adventure. Let us be a part of your story and help you create lasting memories on the road.</span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\"><br></span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large;\">&nbsp;Contact us today to book your vehicle and start your journey with Hire to Go Tours. We can\'t wait to be a part of your travel story!</span></div></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(4, 'FAQs', 'faqs', '										<h2><span style=\"font-weight: bold;\">Frequently Asked Questions (FAQs) - Hire to Go Tours</span></h2><div><br></div><div><span style=\"font-size: large;\">1. What types of vehicles do you offer for hire?</span></div><div><span style=\"font-size: large;\">We offer a wide range of vehicles, including cars, SUVs, vans, and minibuses to accommodate various group sizes and preferences.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">2. How do I make a reservation?</span></div><div><span style=\"font-size: large;\">Making a reservation is easy! You can book online through our website, or you can contact our customer service team at [phone number] for assistance.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">3. What information do I need to provide when making a reservation?</span></div><div><span style=\"font-size: large;\">We\'ll need your name, contact information, rental dates, and any specific vehicle preferences. Please have your driver\'s license and payment information ready when booking.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">4. Can I cancel or modify my reservation?</span></div><div><span style=\"font-size: large;\">Yes, you can modify or cancel your reservation. However, please review our cancellation policy on our website or contact our customer service team for details.<br></span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">5. What is your cancellation policy?</span></div><div><span style=\"font-size: large;\">Our cancellation policy varies based on the rental type and the time of cancellation. Please refer to our Terms and Conditions page for specific details.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">6. Is there a minimum age requirement to rent a vehicle?</span></div><div><span style=\"font-size: large;\">Yes, the minimum age to rent a vehicle is typically 21 years old. However, there may be age restrictions for certain vehicle types. Check our Terms and Conditions for more information.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">7. Do you offer additional services like GPS, child seats, or insurance?</span></div><div><span style=\"font-size: large;\">Yes, we offer various add-on services such as GPS navigation, child seats, and insurance options. You can include these services when making your reservation online or inquire with our customer service team.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">8. How do I pick up and drop off the rental vehicle?</span></div><div><span style=\"font-size: large;\">We have convenient pick-up and drop-off locations. You can choose your preferred location when making a reservation. Our staff will provide you with detailed instructions.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">9. Can I rent a vehicle for a one-way trip or an extended period?</span></div><div><span style=\"font-size: large;\">Yes, we offer one-way rentals and extended rental options. Please contact our customer service team for special arrangements and pricing.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">10. What payment methods do you accept?</span></div><div><span style=\"font-size: large;\">- We accept major credit cards, debit cards, and cash payments in some locations. Please check our payment policy for more details.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">11. Is there a mileage limit on rentals?</span></div><div><span style=\"font-size: large;\">- Most of our rentals come with unlimited mileage. However, specific mileage restrictions may apply to certain vehicle types. Please check your rental agreement for details.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">12. How do I report a problem with the rental vehicle during my trip?</span></div><div><span style=\"font-size: large;\">- If you encounter any issues with your rental vehicle, please contact our 24/7 customer support hotline at [emergency contact number] for immediate assistance.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">13. Do you offer discounts for frequent renters or group bookings?</span></div><div><span style=\"font-size: large;\">- Yes, we have special discounts for frequent renters and group bookings. Contact our customer service team to inquire about available discounts.</span></div><div><span style=\"font-size: large;\"><br></span></div><div><span style=\"font-size: large;\">14. What do I do in case of an accident or emergency while using the rental vehicle?</span></div><div><span style=\"font-size: large;\">- In case of an accident or emergency, ensure your safety and the safety of others involved. Then, contact local authorities and inform us immediately by calling our emergency hotline at [070123456].</span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'larsenmulamba@gmail.com', '2023-09-20 18:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'alan@gmail.com', 'Great service guys', '2023-09-20 15:46:11', 0),
(2, 'emeldah@gmail.com', 'Service amazing', '2023-09-20 18:36:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Larsen Mulamba', 'larsenmulamba@gmail.com', '4297f44b13955235245b2497399d7a93', '7769745787', NULL, NULL, NULL, NULL, '2023-09-19 14:07:40', NULL),
(2, 'alan', 'alan@gmail.com', '386277b8eb8bb52a332f9df9a6da473d', '0725238327', NULL, NULL, NULL, NULL, '2023-09-20 13:59:22', NULL),
(3, 'Emelda', 'emeldah@gmail.com', 'e2d30e586f8cb9835317ff9bf307b6fd', '12345', NULL, NULL, NULL, NULL, '2023-09-20 18:25:13', NULL),
(4, 'larsen', 'user123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1234567', NULL, NULL, NULL, NULL, '2023-09-25 12:35:49', NULL),
(5, 'larsen1', 'user12345@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1234567', NULL, NULL, NULL, NULL, '2023-09-25 12:38:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` float DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'sdfsdf', NULL, 'sdfsdf', 0, NULL, 0, 0, 'about_us_img4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-20 15:32:51', NULL),
(2, 'jeep', NULL, 'Mercedes', 2000, NULL, 2017, 5, 'recent-car-1.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-09-20 15:39:22', NULL),
(3, 'jeep', 1, 'rfdfds', 23232, 'Petrol', 2017, 5, 'about_us_img4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2023-09-20 15:40:44', NULL),
(4, 'Jeep', 2, 'Offroad Car', 700, 'Petrol', 2020, 4, 'testimonial-bg.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-09-20 18:34:25', NULL),
(5, 'Audi A3', 3, 'The Audi A3 is a compact luxury sedan that offers a balance between sportiness and practicality. It comes with a range of engines, including petrol, diesel, and hybrid options, catering to a variety of preferences.', 300, 'Petrol', 2017, 5, 'pexels-sofía-nuñez-18167337.jpg', 'pexels-mike-bird-1035108.jpg', 'pexels-lalesh-aldarwish-168938.jpg', 'pexels-mike-bird-1009871.jpg', 'pexels-ryan-west-1719648.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-09-21 13:24:59', NULL),
(6, ' Land Rover Defender ', 7, 'The Defender is renowned for its exceptional off-road capabilities. It features a robust four-wheel-drive system, solid axles, high approach and departure angles, and advanced terrain response systems that allow it to tackle a wide range of challenging terrains.', 4000, 'Diesel', 2017, 5, 'pexels-dave-diangelo-1431240.jpg', 'pexels-kipras-zabeliauskas-5704258.jpg', 'pexels-sami-abdullah-9155311.jpg', 'pexels-frans-van-heerden-1450230.jpg', 'pexels-sami-abdullah-7542822.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, '2023-09-21 13:36:15', NULL),
(7, 'Toyota FJ Cruiser', 12, 'The FJ Cruiser is a retro-inspired SUV with a distinctive, boxy design. It\'s known for its off-road prowess, thanks to features like a robust four-wheel-drive system, high ground clearance, and off-road traction control', 4000, 'Diesel', 2019, 7, 'pexels-oziel-gómez-2893697.jpg', 'pexels-erik-mclean-17519372.jpg', 'pexels-twilight-kenya-14510928.jpg', 'pexels-erik-mclean-17519379.jpg', 'pexels-erik-mclean-17519365.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-09-21 13:46:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'hire to go  database', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"carrental\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"carrental\",\"table\":\"admin\"},{\"db\":\"carrental\",\"table\":\"tblbooking\"},{\"db\":\"carrental\",\"table\":\"tbltestimonial\"},{\"db\":\"carrental\",\"table\":\"tblsubscribers\"},{\"db\":\"carrental\",\"table\":\"tblbrands\"},{\"db\":\"carrental\",\"table\":\"tblvehicles\"},{\"db\":\"carrental\",\"table\":\"tblusers\"},{\"db\":\"carrental\",\"table\":\"tblpages\"},{\"db\":\"carrental\",\"table\":\"tblcontactusinfo\"},{\"db\":\"carrental\",\"table\":\"tblcontactusquery\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-09-25 12:47:51', '{\"Console\\/Mode\":\"show\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
