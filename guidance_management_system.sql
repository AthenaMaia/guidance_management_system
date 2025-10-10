-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2025 at 08:13 PM
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
-- Database: `guidance_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `original_contract_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carried_over_from_id` bigint(20) UNSIGNED DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `contract_date` date NOT NULL,
  `contract_image` varchar(255) DEFAULT NULL,
  `total_days` int(11) DEFAULT NULL,
  `completed_days` int(11) DEFAULT NULL,
  `status` enum('In Progress','Completed') NOT NULL DEFAULT 'In Progress',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contract_type` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `student_id`, `original_contract_id`, `carried_over_from_id`, `semester_id`, `contract_date`, `contract_image`, `total_days`, `completed_days`, `status`, `created_at`, `updated_at`, `contract_type`, `start_date`, `end_date`, `remarks`, `deleted_at`, `is_hidden`) VALUES
(1, 566, NULL, NULL, 1, '2025-10-08', NULL, NULL, NULL, 'Completed', '2025-10-07 00:35:36', '2025-10-07 00:36:22', 'deloading', NULL, NULL, NULL, NULL, 0),
(2, 566, NULL, NULL, 1, '2025-10-05', NULL, 20, NULL, 'In Progress', '2025-10-07 00:36:09', '2025-10-07 00:36:09', 'Community Service', '2025-10-15', '2025-11-04', NULL, NULL, 0),
(3, 509, NULL, NULL, 1, '2025-10-07', NULL, NULL, NULL, 'In Progress', '2025-10-07 00:36:49', '2025-10-07 00:36:49', 'Misconduct', NULL, NULL, NULL, NULL, 0),
(4, 566, 1, NULL, 2, '2025-10-08', NULL, NULL, NULL, 'Completed', '2025-10-07 00:45:41', '2025-10-07 00:45:41', 'deloading', NULL, NULL, NULL, NULL, 0),
(5, 566, 2, NULL, 2, '2025-10-05', NULL, 20, NULL, 'Completed', '2025-10-07 00:45:41', '2025-10-07 01:32:12', 'Community Service', '2025-10-15', '2025-11-04', NULL, NULL, 0),
(6, 509, 3, NULL, 2, '2025-10-07', NULL, NULL, NULL, 'In Progress', '2025-10-07 00:47:33', '2025-10-10 07:54:42', 'Misconduct', NULL, NULL, 'Aliqua sed ad amet aliquip minim tempor labore et ut dolor. Incididunt consectetur sed incididunt adipiscing sit. Do magna commodo tempor aliqua aliqua. Magna commodo commodo ad do adipiscing ut adipiscing ad aliqua dolore aliquip aliqua lorem. Exercitation ad dolor dolore ea sed ut incididunt eiusmod consectetur enim ullamco laboris enim aliqua. Ad consectetur commodo minim ipsum ex do labore lorem elit sed sit ad.\r\n\r\nEa consectetur quis sed nostrud dolor tempor tempor enim quis sit lorem sed ullamco adipiscing. Ex minim aliquip ea ipsum consequat elit labore ad consectetur nisi sit veniam ex. Ut dolor enim aliquip commodo ullamco.\r\n\r\nAliqua aliquip ut do ea adipiscing ullamco tempor. Aliqua labore exercitation lorem consequat elit do et ut consequat amet magna aliqua. Nisi nostrud consectetur elit eiusmod ut nostrud lorem ea sed elit aliqua. Ad sit elit do laboris magna adipiscing laboris eiusmod elit.\r\n\r\nUt ad aliquip do consequat ex adipiscing ut ullamco enim. Et aliqua ipsum nisi incididunt ea veniam amet tempor nisi exercitation consequat ut ea lorem. Commodo aliqua ut elit minim ut labore dolore. Ut enim laboris sed quis ea do enim dolore adipiscing exercitation aliqua veniam. Ut ullamco labore do aliquip aliquip.\r\n\r\nEx eiusmod ullamco amet dolore et elit aliqua sed ut ea nisi dolor nostrud. Ad et lorem sit sed aliqua. Ut ex ullamco eiusmod dolor dolor ut quis labore elit laboris. Nostrud ad dolore ad do nostrud ex minim aliqua eiusmod commodo adipiscing ad nisi laboris.\r\n\r\nAd ut incididunt ad ea ullamco minim aliqua aliquip do ut labore ut dolor sit. Do ad aliqua et tempor consequat laboris quis ullamco incididunt enim magna veniam ut. Do ex adipiscing ut nisi magna ullamco ullamco do sed eiusmod sit.\r\n\r\nConsequat ipsum eiusmod aliquip consectetur quis ad. Labore nostrud tempor labore consectetur veniam. Ut lorem ut dolore ad dolore. Ut et quis magna ipsum aliqua aliqua ex sed elit laboris commodo ad incididunt. Magna ipsum enim lorem commodo quis ad commodo.\r\n\r\nDo magna laboris magna commodo aliquip ad incididunt quis ullamco nisi lorem incididunt ut consectetur. Aliqua ipsum minim dolor enim aliqua. Do commodo sit commodo elit dolor consectetur ut et ipsum ut.\r\n\r\nUllamco labore enim nostrud et ad nisi amet. Ad aliqua minim eiusmod ad incididunt ipsum et veniam ut amet magna consequat ad do. Ut exercitation commodo et ut aliquip. Ut ullamco amet ut consequat exercitation ut ea magna ex magna. Amet ullamco veniam nisi et ex exercitation nostrud. Ipsum dolore dolor elit minim dolor sit ipsum quis ut enim ad do.\r\n\r\nDo elit ut adipiscing et quis nostrud veniam incididunt elit. Aliquip enim lorem dolor consectetur ullamco aliqua tempor minim laboris dolore ex ut et. Laboris minim aliqua sed ea ea nisi quis. Consectetur ad aliquip nisi tempor magna eiusmod laboris tempor incididunt sit consectetur. Adipiscing ut elit tempor adipiscing commodo magna.\r\n\r\nEx commodo minim nisi magna sit ut. Dolor consequat laboris labore ipsum lorem ad veniam exercitation nisi laboris. Ad ipsum ullamco ut ut ut ad labore ea. Ut magna do do eiusmod eiusmod aliquip tempor ipsum ut ad ut do commodo.\r\n\r\nUt tempor et consectetur sed nostrud nostrud ullamco exercitation laboris aliquip minim adipiscing ad labore. Nisi ad laboris ut quis sed quis ut adipiscing nisi aliqua minim. Amet veniam ex tempor magna lorem elit et consectetur ex dolor aliquip. Ipsum labore enim ipsum nisi ipsum. Elit exercitation minim ut nisi consequat dolore consequat ut ipsum ullamco laboris sit.\r\n\r\nAliqua consectetur veniam aliquip minim ullamco adipiscing tempor minim ut nostrud consequat ut. Veniam ut dolor ut consequat exercitation. Exercitation ut dolore nisi exercitation ex commodo eiusmod labore ullamco. Ex ut do tempor adipiscing ipsum sit incididunt enim et ut magna consequat sed. Lorem incididunt et sed ipsum ad adipiscing laboris. Exercitation lorem quis eiusmod consectetur sit.\r\n\r\nSed eiusmod labore sit aliquip aliquip ad dolore. Nostrud veniam consequat incididunt sed ea exercitation. Ullamco labore exercitation amet ad enim do sit amet minim minim ut.\r\n\r\nEa aliquip ea et ipsum enim veniam consectetur ex et labore sed. Aliquip laboris sit lorem ut nisi aliqua sed aliquip do ea magna elit laboris. Labore quis do eiusmod amet exercitation ut sit laboris ut aliqua commodo ad et dolore.\r\n\r\nIncididunt ad ut dolor tempor nostrud ullamco. Laboris ut do tempor enim ut. Ipsum ad sit aliquip do sit laboris exercitation nisi dolor ex sed. Ex commodo nostrud quis ex enim veniam laboris ut lorem quis aliqua. Nostrud ut ut nisi aliquip elit magna do lorem et elit. Nisi consequat quis do ad quis amet exercitation labore ut nisi commodo.\r\n\r\nUt labore magna minim nostrud veniam ut quis do do lorem ut. Exercitation labore ut sed adipiscing enim incididunt veniam sit dolor magna ipsum magna aliquip. Consequat ipsum ipsum amet minim do aliquip ut eiusmod do dolor ut.\r\n\r\nAmet sit commodo laboris ut lorem ex. Ullamco minim nisi amet dolor laboris aliquip ullamco consectetur dolor commodo exercitation. Sed ullamco consectetur nisi do quis ipsum ea nisi amet. Elit quis aliquip enim lorem ex minim magna laboris lorem nostrud ut nostrud ut ut. Laboris aliquip veniam ut dolor ex sit incididunt ea.\r\n\r\nIpsum tempor quis sed aliqua laboris elit tempor. Enim ex ut laboris aliqua incididunt aliquip ea ut laboris. Incididunt dolor consectetur ut laboris tempor nisi magna aliquip. Tempor et exercitation et sed commodo do aliqua.\r\n\r\nUllamco minim ad do ea sed minim ex nisi consequat dolor nisi laboris. Quis do nostrud tempor nisi laboris amet. Ipsum sit ad consequat magna ea. Tempor ullamco commodo elit ut lorem ad aliquip ipsum et ut tempor sit aliquip.', NULL, 0),
(7, 483, NULL, NULL, 2, '2025-10-07', NULL, NULL, NULL, 'In Progress', '2025-10-07 01:34:02', '2025-10-07 01:34:02', 'Cheating', NULL, NULL, NULL, NULL, 0),
(8, 483, 7, NULL, 3, '2025-10-07', NULL, NULL, NULL, 'In Progress', '2025-10-07 01:35:05', '2025-10-10 07:55:10', 'Cheating', NULL, NULL, 'Aliqua sed ad amet aliquip minim tempor labore et ut dolor. Incididunt consectetur sed incididunt adipiscing sit. Do magna commodo tempor aliqua aliqua. Magna commodo commodo ad do adipiscing ut adipiscing ad aliqua dolore aliquip aliqua lorem. Exercitation ad dolor dolore ea sed ut incididunt eiusmod consectetur enim ullamco laboris enim aliqua. Ad consectetur commodo minim ipsum ex do labore lorem elit sed sit ad.\r\n\r\nEa consectetur quis sed nostrud dolor tempor tempor enim quis sit lorem sed ullamco adipiscing. Ex minim aliquip ea ipsum consequat elit labore ad consectetur nisi sit veniam ex. Ut dolor enim aliquip commodo ullamco.\r\n\r\nAliqua aliquip ut do ea adipiscing ullamco tempor. Aliqua labore exercitation lorem consequat elit do et ut consequat amet magna aliqua. Nisi nostrud consectetur elit eiusmod ut nostrud lorem ea sed elit aliqua. Ad sit elit do laboris magna adipiscing laboris eiusmod elit.\r\n\r\nUt ad aliquip do consequat ex adipiscing ut ullamco enim. Et aliqua ipsum nisi incididunt ea veniam amet tempor nisi exercitation consequat ut ea lorem. Commodo aliqua ut elit minim ut labore dolore. Ut enim laboris sed quis ea do enim dolore adipiscing exercitation aliqua veniam. Ut ullamco labore do aliquip aliquip.\r\n\r\nEx eiusmod ullamco amet dolore et elit aliqua sed ut ea nisi dolor nostrud. Ad et lorem sit sed aliqua. Ut ex ullamco eiusmod dolor dolor ut quis labore elit laboris. Nostrud ad dolore ad do nostrud ex minim aliqua eiusmod commodo adipiscing ad nisi laboris.\r\n\r\nAd ut incididunt ad ea ullamco minim aliqua aliquip do ut labore ut dolor sit. Do ad aliqua et tempor consequat laboris quis ullamco incididunt enim magna veniam ut. Do ex adipiscing ut nisi magna ullamco ullamco do sed eiusmod sit.\r\n\r\nConsequat ipsum eiusmod aliquip consectetur quis ad. Labore nostrud tempor labore consectetur veniam. Ut lorem ut dolore ad dolore. Ut et quis magna ipsum aliqua aliqua ex sed elit laboris commodo ad incididunt. Magna ipsum enim lorem commodo quis ad commodo.\r\n\r\nDo magna laboris magna commodo aliquip ad incididunt quis ullamco nisi lorem incididunt ut consectetur. Aliqua ipsum minim dolor enim aliqua. Do commodo sit commodo elit dolor consectetur ut et ipsum ut.\r\n\r\nUllamco labore enim nostrud et ad nisi amet. Ad aliqua minim eiusmod ad incididunt ipsum et veniam ut amet magna consequat ad do. Ut exercitation commodo et ut aliquip. Ut ullamco amet ut consequat exercitation ut ea magna ex magna. Amet ullamco veniam nisi et ex exercitation nostrud. Ipsum dolore dolor elit minim dolor sit ipsum quis ut enim ad do.\r\n\r\nDo elit ut adipiscing et quis nostrud veniam incididunt elit. Aliquip enim lorem dolor consectetur ullamco aliqua tempor minim laboris dolore ex ut et. Laboris minim aliqua sed ea ea nisi quis. Consectetur ad aliquip nisi tempor magna eiusmod laboris tempor incididunt sit consectetur. Adipiscing ut elit tempor adipiscing commodo magna.\r\n\r\nEx commodo minim nisi magna sit ut. Dolor consequat laboris labore ipsum lorem ad veniam exercitation nisi laboris. Ad ipsum ullamco ut ut ut ad labore ea. Ut magna do do eiusmod eiusmod aliquip tempor ipsum ut ad ut do commodo.\r\n\r\nUt tempor et consectetur sed nostrud nostrud ullamco exercitation laboris aliquip minim adipiscing ad labore. Nisi ad laboris ut quis sed quis ut adipiscing nisi aliqua minim. Amet veniam ex tempor magna lorem elit et consectetur ex dolor aliquip. Ipsum labore enim ipsum nisi ipsum. Elit exercitation minim ut nisi consequat dolore consequat ut ipsum ullamco laboris sit.\r\n\r\nAliqua consectetur veniam aliquip minim ullamco adipiscing tempor minim ut nostrud consequat ut. Veniam ut dolor ut consequat exercitation. Exercitation ut dolore nisi exercitation ex commodo eiusmod labore ullamco. Ex ut do tempor adipiscing ipsum sit incididunt enim et ut magna consequat sed. Lorem incididunt et sed ipsum ad adipiscing laboris. Exercitation lorem quis eiusmod consectetur sit.\r\n\r\nSed eiusmod labore sit aliquip aliquip ad dolore. Nostrud veniam consequat incididunt sed ea exercitation. Ullamco labore exercitation amet ad enim do sit amet minim minim ut.\r\n\r\nEa aliquip ea et ipsum enim veniam consectetur ex et labore sed. Aliquip laboris sit lorem ut nisi aliqua sed aliquip do ea magna elit laboris. Labore quis do eiusmod amet exercitation ut sit laboris ut aliqua commodo ad et dolore.\r\n\r\nIncididunt ad ut dolor tempor nostrud ullamco. Laboris ut do tempor enim ut. Ipsum ad sit aliquip do sit laboris exercitation nisi dolor ex sed. Ex commodo nostrud quis ex enim veniam laboris ut lorem quis aliqua. Nostrud ut ut nisi aliquip elit magna do lorem et elit. Nisi consequat quis do ad quis amet exercitation labore ut nisi commodo.\r\n\r\nUt labore magna minim nostrud veniam ut quis do do lorem ut. Exercitation labore ut sed adipiscing enim incididunt veniam sit dolor magna ipsum magna aliquip. Consequat ipsum ipsum amet minim do aliquip ut eiusmod do dolor ut.\r\n\r\nAmet sit commodo laboris ut lorem ex. Ullamco minim nisi amet dolor laboris aliquip ullamco consectetur dolor commodo exercitation. Sed ullamco consectetur nisi do quis ipsum ea nisi amet. Elit quis aliquip enim lorem ex minim magna laboris lorem nostrud ut nostrud ut ut. Laboris aliquip veniam ut dolor ex sit incididunt ea.\r\n\r\nIpsum tempor quis sed aliqua laboris elit tempor. Enim ex ut laboris aliqua incididunt aliquip ea ut laboris. Incididunt dolor consectetur ut laboris tempor nisi magna aliquip. Tempor et exercitation et sed commodo do aliqua.\r\n\r\nUllamco minim ad do ea sed minim ex nisi consequat dolor nisi laboris. Quis do nostrud tempor nisi laboris amet. Ipsum sit ad consequat magna ea. Tempor ullamco commodo elit ut lorem ad aliquip ipsum et ut tempor sit aliquip.', NULL, 0),
(9, 483, NULL, NULL, 3, '2025-10-10', NULL, NULL, NULL, 'In Progress', '2025-10-10 08:23:36', '2025-10-10 08:23:36', 'deloading', NULL, NULL, 'cmcm', NULL, 0),
(10, 721, NULL, NULL, 3, '2025-10-11', NULL, NULL, NULL, 'In Progress', '2025-10-10 08:24:54', '2025-10-10 08:24:54', 'deloading', NULL, NULL, 'chdhhdu', NULL, 0),
(11, 721, NULL, NULL, 3, '2025-10-10', NULL, 20, NULL, 'In Progress', '2025-10-10 08:27:28', '2025-10-10 08:27:28', 'Community Service', '2025-10-17', '2025-11-06', 'dfndksfdn', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contract_images`
--

CREATE TABLE `contract_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contract_images`
--

INSERT INTO `contract_images` (`id`, `contract_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 4, 'contract_images/zIKFhwP9sEbFwDrGmNvZxvLpjvmkvMPeq5Z3VMDv.png', '2025-10-10 08:20:35', '2025-10-10 08:20:35'),
(3, 10, 'contract_images/fg2RSBArMiwDF9gnvII6XepRqP05e4BOmewqtOlN.jpg', '2025-10-10 08:26:37', '2025-10-10 08:26:37'),
(4, 11, 'contract_images/Ckngz7sGs08sAGVxd1I7IV1r3VLFakdVaaAVjdlK.jpg', '2025-10-10 08:27:28', '2025-10-10 08:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `requires_total_days` tinyint(1) NOT NULL DEFAULT 0,
  `requires_start_date` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contract_types`
--

INSERT INTO `contract_types` (`id`, `type`, `created_at`, `updated_at`, `requires_total_days`, `requires_start_date`) VALUES
(6, 'deloading', '2025-06-24 20:03:27', '2025-06-24 20:03:27', 0, 0),
(7, 'Misconduct', '2025-07-07 20:10:11', '2025-07-07 20:10:11', 0, 0),
(8, 'Community Service', '2025-07-19 19:35:20', '2025-07-19 19:38:00', 1, 1),
(9, 'Cheating', '2025-07-19 19:38:53', '2025-07-19 19:42:28', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `counselings`
--

CREATE TABLE `counselings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `original_counseling_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `counseling_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'In Progress',
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remarks` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counselings`
--

INSERT INTO `counselings` (`id`, `original_counseling_id`, `student_id`, `semester_id`, `counseling_date`, `status`, `image_path`, `created_at`, `updated_at`, `remarks`) VALUES
(1, NULL, 566, 1, '2025-10-06', 'In Progress', NULL, '2025-10-07 00:38:33', '2025-10-07 00:38:33', NULL),
(2, NULL, 509, 1, '2025-10-01', 'Completed', NULL, '2025-10-07 00:38:47', '2025-10-07 00:39:00', NULL),
(3, 1, 566, 2, '2025-10-06', 'In Progress', NULL, '2025-10-07 00:45:41', '2025-10-10 07:58:24', 'Aliqua sed ad amet aliquip minim tempor labore et ut dolor. Incididunt consectetur sed incididunt adipiscing sit. Do magna commodo tempor aliqua aliqua. Magna commodo commodo ad do adipiscing ut adipiscing ad aliqua dolore aliquip aliqua lorem. Exercitation ad dolor dolore ea sed ut incididunt eiusmod consectetur enim ullamco laboris enim aliqua. Ad consectetur commodo minim ipsum ex do labore lorem elit sed sit ad.\r\n\r\nEa consectetur quis sed nostrud dolor tempor tempor enim quis sit lorem sed ullamco adipiscing. Ex minim aliquip ea ipsum consequat elit labore ad consectetur nisi sit veniam ex. Ut dolor enim aliquip commodo ullamco.\r\n\r\nAliqua aliquip ut do ea adipiscing ullamco tempor. Aliqua labore exercitation lorem consequat elit do et ut consequat amet magna aliqua. Nisi nostrud consectetur elit eiusmod ut nostrud lorem ea sed elit aliqua. Ad sit elit do laboris magna adipiscing laboris eiusmod elit.\r\n\r\nUt ad aliquip do consequat ex adipiscing ut ullamco enim. Et aliqua ipsum nisi incididunt ea veniam amet tempor nisi exercitation consequat ut ea lorem. Commodo aliqua ut elit minim ut labore dolore. Ut enim laboris sed quis ea do enim dolore adipiscing exercitation aliqua veniam. Ut ullamco labore do aliquip aliquip.\r\n\r\nEx eiusmod ullamco amet dolore et elit aliqua sed ut ea nisi dolor nostrud. Ad et lorem sit sed aliqua. Ut ex ullamco eiusmod dolor dolor ut quis labore elit laboris. Nostrud ad dolore ad do nostrud ex minim aliqua eiusmod commodo adipiscing ad nisi laboris.\r\n\r\nAd ut incididunt ad ea ullamco minim aliqua aliquip do ut labore ut dolor sit. Do ad aliqua et tempor consequat laboris quis ullamco incididunt enim magna veniam ut. Do ex adipiscing ut nisi magna ullamco ullamco do sed eiusmod sit.\r\n\r\nConsequat ipsum eiusmod aliquip consectetur quis ad. Labore nostrud tempor labore consectetur veniam. Ut lorem ut dolore ad dolore. Ut et quis magna ipsum aliqua aliqua ex sed elit laboris commodo ad incididunt. Magna ipsum enim lorem commodo quis ad commodo.\r\n\r\nDo magna laboris magna commodo aliquip ad incididunt quis ullamco nisi lorem incididunt ut consectetur. Aliqua ipsum minim dolor enim aliqua. Do commodo sit commodo elit dolor consectetur ut et ipsum ut.\r\n\r\nUllamco labore enim nostrud et ad nisi amet. Ad aliqua minim eiusmod ad incididunt ipsum et veniam ut amet magna consequat ad do. Ut exercitation commodo et ut aliquip. Ut ullamco amet ut consequat exercitation ut ea magna ex magna. Amet ullamco veniam nisi et ex exercitation nostrud. Ipsum dolore dolor elit minim dolor sit ipsum quis ut enim ad do.\r\n\r\nDo elit ut adipiscing et quis nostrud veniam incididunt elit. Aliquip enim lorem dolor consectetur ullamco aliqua tempor minim laboris dolore ex ut et. Laboris minim aliqua sed ea ea nisi quis. Consectetur ad aliquip nisi tempor magna eiusmod laboris tempor incididunt sit consectetur. Adipiscing ut elit tempor adipiscing commodo magna.\r\n\r\nEx commodo minim nisi magna sit ut. Dolor consequat laboris labore ipsum lorem ad veniam exercitation nisi laboris. Ad ipsum ullamco ut ut ut ad labore ea. Ut magna do do eiusmod eiusmod aliquip tempor ipsum ut ad ut do commodo.\r\n\r\nUt tempor et consectetur sed nostrud nostrud ullamco exercitation laboris aliquip minim adipiscing ad labore. Nisi ad laboris ut quis sed quis ut adipiscing nisi aliqua minim. Amet veniam ex tempor magna lorem elit et consectetur ex dolor aliquip. Ipsum labore enim ipsum nisi ipsum. Elit exercitation minim ut nisi consequat dolore consequat ut ipsum ullamco laboris sit.\r\n\r\nAliqua consectetur veniam aliquip minim ullamco adipiscing tempor minim ut nostrud consequat ut. Veniam ut dolor ut consequat exercitation. Exercitation ut dolore nisi exercitation ex commodo eiusmod labore ullamco. Ex ut do tempor adipiscing ipsum sit incididunt enim et ut magna consequat sed. Lorem incididunt et sed ipsum ad adipiscing laboris. Exercitation lorem quis eiusmod consectetur sit.\r\n\r\nSed eiusmod labore sit aliquip aliquip ad dolore. Nostrud veniam consequat incididunt sed ea exercitation. Ullamco labore exercitation amet ad enim do sit amet minim minim ut.\r\n\r\nEa aliquip ea et ipsum enim veniam consectetur ex et labore sed. Aliquip laboris sit lorem ut nisi aliqua sed aliquip do ea magna elit laboris. Labore quis do eiusmod amet exercitation ut sit laboris ut aliqua commodo ad et dolore.\r\n\r\nIncididunt ad ut dolor tempor nostrud ullamco. Laboris ut do tempor enim ut. Ipsum ad sit aliquip do sit laboris exercitation nisi dolor ex sed. Ex commodo nostrud quis ex enim veniam laboris ut lorem quis aliqua. Nostrud ut ut nisi aliquip elit magna do lorem et elit. Nisi consequat quis do ad quis amet exercitation labore ut nisi commodo.\r\n\r\nUt labore magna minim nostrud veniam ut quis do do lorem ut. Exercitation labore ut sed adipiscing enim incididunt veniam sit dolor magna ipsum magna aliquip. Consequat ipsum ipsum amet minim do aliquip ut eiusmod do dolor ut.\r\n\r\nAmet sit commodo laboris ut lorem ex. Ullamco minim nisi amet dolor laboris aliquip ullamco consectetur dolor commodo exercitation. Sed ullamco consectetur nisi do quis ipsum ea nisi amet. Elit quis aliquip enim lorem ex minim magna laboris lorem nostrud ut nostrud ut ut. Laboris aliquip veniam ut dolor ex sit incididunt ea.\r\n\r\nIpsum tempor quis sed aliqua laboris elit tempor. Enim ex ut laboris aliqua incididunt aliquip ea ut laboris. Incididunt dolor consectetur ut laboris tempor nisi magna aliquip. Tempor et exercitation et sed commodo do aliqua.\r\n\r\nUllamco minim ad do ea sed minim ex nisi consequat dolor nisi laboris. Quis do nostrud tempor nisi laboris amet. Ipsum sit ad consequat magna ea. Tempor ullamco commodo elit ut lorem ad aliquip ipsum et ut tempor sit aliquip.'),
(4, 2, 509, 2, '2025-10-01', 'Completed', NULL, '2025-10-07 00:47:33', '2025-10-07 00:47:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counseling_images`
--

CREATE TABLE `counseling_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `counseling_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counseling_images`
--

INSERT INTO `counseling_images` (`id`, `counseling_id`, `image_path`, `created_at`, `updated_at`, `type`) VALUES
(1, 3, 'counseling_images/x7J4reWx93PHhgLO4h2oGDV1ctf4mkhm3imIsdgO.jpg', '2025-10-10 08:49:20', '2025-10-10 08:49:20', 'form'),
(2, 3, 'counseling_images/5C6Zl6gMivESWgQXkhndtjwQbO3sKc1fIOYynxfY.jpg', '2025-10-10 08:49:31', '2025-10-10 08:49:31', 'id_card');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `created_at`, `updated_at`) VALUES
(2, 'Associate in Computer Technology', '2025-06-21 09:26:35', '2025-06-21 09:26:35'),
(3, 'BS Computer Science', '2025-06-21 09:26:45', '2025-06-21 09:26:45'),
(6, 'BS Information Technology', '2025-07-07 20:04:31', '2025-07-07 20:04:31'),
(7, 'ACT-AD', '2025-07-15 00:50:29', '2025-07-15 00:50:29'),
(8, 'ACT-NT', '2025-07-18 19:18:42', '2025-07-18 19:18:42'),
(9, 'BSCS', '2025-07-18 19:18:47', '2025-07-18 19:18:47'),
(10, 'BSIT', '2025-07-18 19:18:52', '2025-07-18 19:18:52'),
(11, 'none', '2025-08-10 03:23:28', '2025-08-10 03:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_07_092335_create_students_table', 1),
(5, '2025_06_07_131807_create_contracts_table', 2),
(6, '2025_06_07_134254_create_referrals_table', 3),
(7, '2025_06_11_062142_create_semesters_table', 4),
(8, '2025_06_11_100512_create_student_semester_enrollments_table', 5),
(9, '2025_06_11_102359_create_student_semester_enrollments_table', 6),
(10, '2025_06_11_105353_add_is_active_to_semesters_table', 7),
(11, '2025_06_12_083225_create_student_semester_enrollments_table', 8),
(12, '2025_06_12_113551_create_contracts_table', 9),
(13, '2025_06_13_103437_add_middle_name_and_suffix_to_students_table', 10),
(14, '2025_06_16_055043_create_counselings_table', 11),
(15, '2025_06_16_083507_add_to_students_table', 12),
(16, '2025_06_17_000000_update_age_to_birthday_in_students_table', 13),
(17, '2025_06_17_000001_add_parent_guardian_to_students_table', 13),
(18, '2025_06_17_000002_add_contract_image_to_contracts_table', 13),
(19, '2025_06_18_132914_create_student_profiles_table', 13),
(20, '2025_06_18_141022_make_parent_guardian_name_nullable', 14),
(21, '2025_06_18_155323_create_student_profiles_table', 15),
(22, '2025_06_19_085758_add_more_fields_to_student_profiles', 16),
(23, '2025_06_21_114220_add_to_students_table', 17),
(24, '2025_06_21_145531_create_course_year_sections_table', 18),
(25, '2025_06_21_153356_create_courses_table', 19),
(26, '2025_06_21_153358_create_years_table', 19),
(27, '2025_06_21_153401_create_sections_table', 19),
(28, '2025_06_22_042334_create_contract_types_table', 20),
(29, '2025_06_22_064150_add_to_contracts_table', 21),
(30, '2025_06_22_092044_create_referrals_table', 22),
(31, '2025_06_22_124745_create_referral_reasons_table', 23),
(32, '2025_06_22_151033_create_counselings_table', 24),
(33, '2025_06_23_014820_add_semester_id_to_referrals_table', 25),
(34, '2025_06_23_022603_add_semester_id_to_counselings_table', 26),
(35, '2025_06_23_064109_create_school_years_table', 27),
(36, '2025_06_24_131201_contract_image', 28),
(37, '2025_06_24_145018_add_to_student_profile', 29),
(38, '2025_06_24_151930_create_referral_images_table', 30),
(39, '2025_06_24_151956_create_referral_images_table', 30),
(40, '2025_06_24_153324_create_referral_images_table', 31),
(41, '2025_06_24_153410_referral_images', 31),
(42, '2025_06_24_153439_counseling_images', 31),
(43, '2025_07_01_121316_create_student_movements_table', 32),
(44, '2025_07_01_124847_create_student_transitions_table', 33),
(45, '2025_07_01_150526_add_type_to_counseling_images_table', 34),
(46, '2025_07_01_151841_rename_id_card_to_type_in_counseling_images_table', 35),
(47, '2025_07_01_154529_add_status_to_counselings_table', 36),
(48, '2025_07_01_181407_add_remarks_to_counselings_table', 37),
(49, '2025_07_03_042336_add_semester_id_to_student_transitions_table', 38),
(50, '2025_07_03_132158_add_student_id_to_student_transition', 39),
(51, '2025_07_03_143420_update_transition_type_enum_on_student_transition_table', 39),
(52, '2025_07_03_150842_update_transition_type_enum_on_student_transitions_table', 40),
(53, '2025_07_03_155143_add_to_student_transition_table', 41),
(54, '2025_07_03_161529_modify_student_id_in_student_transitions_table', 42),
(55, '2025_07_03_164526_make_student_id_nullable_in_student_transition_table', 43),
(56, '2025_07_04_071712_update_transition_type_enum_on_student_transitions', 44),
(57, '2025_07_04_072702_update_transition_type_enum_on_student_transitions', 45);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `original_referral_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `remarks` longtext DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `referral_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `original_referral_id`, `student_id`, `semester_id`, `reason`, `remarks`, `image_path`, `referral_date`, `created_at`, `updated_at`) VALUES
(1, NULL, 566, 1, 'Failing Grades', NULL, NULL, '2025-10-08', '2025-10-07 00:37:23', '2025-10-07 00:37:23'),
(2, NULL, 566, 1, 'Failing Grades', NULL, NULL, '2025-10-08', '2025-10-07 00:37:25', '2025-10-07 00:37:25'),
(3, NULL, 509, 1, 'Failing Grades', NULL, NULL, '2025-10-06', '2025-10-07 00:38:00', '2025-10-07 00:38:00'),
(4, 1, 566, 2, 'Failing Grades', 'Aliqua sed ad amet aliquip minim tempor labore et ut dolor. Incididunt consectetur sed incididunt adipiscing sit. Do magna commodo tempor aliqua aliqua. Magna commodo commodo ad do adipiscing ut adipiscing ad aliqua dolore aliquip aliqua lorem. Exercitation ad dolor dolore ea sed ut incididunt eiusmod consectetur enim ullamco laboris enim aliqua. Ad consectetur commodo minim ipsum ex do labore lorem elit sed sit ad.\r\n\r\nEa consectetur quis sed nostrud dolor tempor tempor enim quis sit lorem sed ullamco adipiscing. Ex minim aliquip ea ipsum consequat elit labore ad consectetur nisi sit veniam ex. Ut dolor enim aliquip commodo ullamco.\r\n\r\nAliqua aliquip ut do ea adipiscing ullamco tempor. Aliqua labore exercitation lorem consequat elit do et ut consequat amet magna aliqua. Nisi nostrud consectetur elit eiusmod ut nostrud lorem ea sed elit aliqua. Ad sit elit do laboris magna adipiscing laboris eiusmod elit.\r\n\r\nUt ad aliquip do consequat ex adipiscing ut ullamco enim. Et aliqua ipsum nisi incididunt ea veniam amet tempor nisi exercitation consequat ut ea lorem. Commodo aliqua ut elit minim ut labore dolore. Ut enim laboris sed quis ea do enim dolore adipiscing exercitation aliqua veniam. Ut ullamco labore do aliquip aliquip.\r\n\r\nEx eiusmod ullamco amet dolore et elit aliqua sed ut ea nisi dolor nostrud. Ad et lorem sit sed aliqua. Ut ex ullamco eiusmod dolor dolor ut quis labore elit laboris. Nostrud ad dolore ad do nostrud ex minim aliqua eiusmod commodo adipiscing ad nisi laboris.\r\n\r\nAd ut incididunt ad ea ullamco minim aliqua aliquip do ut labore ut dolor sit. Do ad aliqua et tempor consequat laboris quis ullamco incididunt enim magna veniam ut. Do ex adipiscing ut nisi magna ullamco ullamco do sed eiusmod sit.\r\n\r\nConsequat ipsum eiusmod aliquip consectetur quis ad. Labore nostrud tempor labore consectetur veniam. Ut lorem ut dolore ad dolore. Ut et quis magna ipsum aliqua aliqua ex sed elit laboris commodo ad incididunt. Magna ipsum enim lorem commodo quis ad commodo.\r\n\r\nDo magna laboris magna commodo aliquip ad incididunt quis ullamco nisi lorem incididunt ut consectetur. Aliqua ipsum minim dolor enim aliqua. Do commodo sit commodo elit dolor consectetur ut et ipsum ut.\r\n\r\nUllamco labore enim nostrud et ad nisi amet. Ad aliqua minim eiusmod ad incididunt ipsum et veniam ut amet magna consequat ad do. Ut exercitation commodo et ut aliquip. Ut ullamco amet ut consequat exercitation ut ea magna ex magna. Amet ullamco veniam nisi et ex exercitation nostrud. Ipsum dolore dolor elit minim dolor sit ipsum quis ut enim ad do.\r\n\r\nDo elit ut adipiscing et quis nostrud veniam incididunt elit. Aliquip enim lorem dolor consectetur ullamco aliqua tempor minim laboris dolore ex ut et. Laboris minim aliqua sed ea ea nisi quis. Consectetur ad aliquip nisi tempor magna eiusmod laboris tempor incididunt sit consectetur. Adipiscing ut elit tempor adipiscing commodo magna.\r\n\r\nEx commodo minim nisi magna sit ut. Dolor consequat laboris labore ipsum lorem ad veniam exercitation nisi laboris. Ad ipsum ullamco ut ut ut ad labore ea. Ut magna do do eiusmod eiusmod aliquip tempor ipsum ut ad ut do commodo.\r\n\r\nUt tempor et consectetur sed nostrud nostrud ullamco exercitation laboris aliquip minim adipiscing ad labore. Nisi ad laboris ut quis sed quis ut adipiscing nisi aliqua minim. Amet veniam ex tempor magna lorem elit et consectetur ex dolor aliquip. Ipsum labore enim ipsum nisi ipsum. Elit exercitation minim ut nisi consequat dolore consequat ut ipsum ullamco laboris sit.\r\n\r\nAliqua consectetur veniam aliquip minim ullamco adipiscing tempor minim ut nostrud consequat ut. Veniam ut dolor ut consequat exercitation. Exercitation ut dolore nisi exercitation ex commodo eiusmod labore ullamco. Ex ut do tempor adipiscing ipsum sit incididunt enim et ut magna consequat sed. Lorem incididunt et sed ipsum ad adipiscing laboris. Exercitation lorem quis eiusmod consectetur sit.\r\n\r\nSed eiusmod labore sit aliquip aliquip ad dolore. Nostrud veniam consequat incididunt sed ea exercitation. Ullamco labore exercitation amet ad enim do sit amet minim minim ut.\r\n\r\nEa aliquip ea et ipsum enim veniam consectetur ex et labore sed. Aliquip laboris sit lorem ut nisi aliqua sed aliquip do ea magna elit laboris. Labore quis do eiusmod amet exercitation ut sit laboris ut aliqua commodo ad et dolore.\r\n\r\nIncididunt ad ut dolor tempor nostrud ullamco. Laboris ut do tempor enim ut. Ipsum ad sit aliquip do sit laboris exercitation nisi dolor ex sed. Ex commodo nostrud quis ex enim veniam laboris ut lorem quis aliqua. Nostrud ut ut nisi aliquip elit magna do lorem et elit. Nisi consequat quis do ad quis amet exercitation labore ut nisi commodo.\r\n\r\nUt labore magna minim nostrud veniam ut quis do do lorem ut. Exercitation labore ut sed adipiscing enim incididunt veniam sit dolor magna ipsum magna aliquip. Consequat ipsum ipsum amet minim do aliquip ut eiusmod do dolor ut.\r\n\r\nAmet sit commodo laboris ut lorem ex. Ullamco minim nisi amet dolor laboris aliquip ullamco consectetur dolor commodo exercitation. Sed ullamco consectetur nisi do quis ipsum ea nisi amet. Elit quis aliquip enim lorem ex minim magna laboris lorem nostrud ut nostrud ut ut. Laboris aliquip veniam ut dolor ex sit incididunt ea.\r\n\r\nIpsum tempor quis sed aliqua laboris elit tempor. Enim ex ut laboris aliqua incididunt aliquip ea ut laboris. Incididunt dolor consectetur ut laboris tempor nisi magna aliquip. Tempor et exercitation et sed commodo do aliqua.\r\n\r\nUllamco minim ad do ea sed minim ex nisi consequat dolor nisi laboris. Quis do nostrud tempor nisi laboris amet. Ipsum sit ad consequat magna ea. Tempor ullamco commodo elit ut lorem ad aliquip ipsum et ut tempor sit aliquip.', NULL, '2025-10-08', '2025-10-07 00:45:41', '2025-10-10 07:56:50'),
(5, 2, 566, 2, 'Failing Grades', NULL, NULL, '2025-10-08', '2025-10-07 00:45:41', '2025-10-07 00:45:41'),
(6, 3, 509, 2, 'Failing Grades', NULL, NULL, '2025-10-06', '2025-10-07 00:47:33', '2025-10-07 00:47:33'),
(7, NULL, 483, 3, 'Absences', NULL, NULL, '2025-10-10', '2025-10-10 08:40:05', '2025-10-10 08:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `referral_images`
--

CREATE TABLE `referral_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referral_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_images`
--

INSERT INTO `referral_images` (`id`, `referral_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 7, 'referral_images/MNFObHYk7okXwPwmx12EDTrFMaZBS9eWUz617aPP.jpg', '2025-10-10 08:40:05', '2025-10-10 08:40:05'),
(2, 7, 'referral_images/d1irOTkATcP3IvjzfN6Q2egchEq5lEJTAiJ4TwI7.jpg', '2025-10-10 08:45:50', '2025-10-10 08:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `referral_reasons`
--

CREATE TABLE `referral_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_reasons`
--

INSERT INTO `referral_reasons` (`id`, `reason`, `created_at`, `updated_at`) VALUES
(1, 'Failing Grades', '2025-07-21 08:13:34', '2025-07-21 08:13:34'),
(2, 'Absences', '2025-07-21 08:13:39', '2025-07-21 08:13:39'),
(3, 'Poor Study Habits', '2025-07-21 08:13:49', '2025-07-21 08:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `school_years`
--

CREATE TABLE `school_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `school_year` varchar(9) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_years`
--

INSERT INTO `school_years` (`id`, `created_at`, `updated_at`, `start_date`, `end_date`, `school_year`, `is_active`) VALUES
(1, '2025-09-24 03:52:45', '2025-09-24 03:52:45', '2025-08-24', '2026-05-25', '2025-2026', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `created_at`, `updated_at`) VALUES
(1, 'A', '2025-06-21 08:55:48', '2025-06-21 08:55:48'),
(2, 'B', '2025-06-21 09:31:39', '2025-06-21 09:31:39'),
(3, 'C', '2025-06-21 09:31:43', '2025-06-21 09:31:43'),
(5, 'D', '2025-07-07 20:04:55', '2025-07-07 20:04:55'),
(6, 'Grad', '2025-08-10 03:23:51', '2025-08-10 03:23:51'),
(9, 'N/A', '2025-09-24 03:53:20', '2025-09-24 03:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester` enum('1st','2nd','Summer') NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `school_year_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `semester`, `is_current`, `created_at`, `updated_at`, `is_active`, `school_year_id`) VALUES
(1, '1st', 0, '2025-09-24 03:52:45', '2025-10-07 01:34:26', 0, 1),
(2, '2nd', 0, '2025-10-07 00:44:20', '2025-10-07 01:34:26', 0, 1),
(3, 'Summer', 1, '2025-10-07 01:34:26', '2025-10-07 01:34:26', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sQ11Qv2qlvuqZKwWKBcyTk5BPgZLe3eSyrFUkJ5D', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQVZtcXZlWkxpV2pEOG5UOFFpV0RuN0ZOZVJDQk85VjFYU1RnUkFleCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760119167);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `suffix` enum('Jr.','Sr.','III','IV','None') DEFAULT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `home_address` varchar(255) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `parent_guardian_name` varchar(255) DEFAULT NULL,
  `parent_guardian_contact` varchar(255) NOT NULL,
  `number_of_sisters` int(10) UNSIGNED DEFAULT NULL,
  `number_of_brothers` int(10) UNSIGNED DEFAULT NULL,
  `ordinal_position` int(10) UNSIGNED DEFAULT NULL,
  `enrollment_status` enum('Enrolled','Not Enrolled') NOT NULL DEFAULT 'Enrolled',
  `enrollment_date` date DEFAULT NULL,
  `enrolled_semester` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `fathers_name` varchar(255) DEFAULT NULL,
  `mothers_name` varchar(255) DEFAULT NULL,
  `student_contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `first_name`, `middle_name`, `last_name`, `birthday`, `suffix`, `gender`, `course`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrollment_status`, `enrollment_date`, `enrolled_semester`, `created_at`, `updated_at`, `deleted_at`, `section`, `fathers_name`, `mothers_name`, `student_contact`) VALUES
(1, '2025-02907', 'NADZMI', 'GAPUR', 'ABAH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(2, '2025-02904', 'AZMEER GHAN', 'LAKIAN', 'ABDULGANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(3, '2025-02697', 'ROVHIC CHAWEE', 'ALESNA', 'AGEAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(4, '2025-01218', 'AINEE HANA', 'TAN', 'AHAMAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(5, '2025-02590', 'MUADZ', 'MUHARRAM', 'AHARAJA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(6, '2025-02109', 'AMILHAN', 'MANCERAS', 'AKBARA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(7, '2025-01689', 'RHAINIEL', 'GREGORIO', 'ALAVERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(8, '2020-01165', 'HANNAH MAE', 'GONZALES', 'ALCONABA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(9, '2025-02586', 'YASHER', '', 'ALEJO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(10, '2025-02574', 'IBRAHIM MUHAMMAD', 'DAMMANG', 'ALIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(11, '2025-03378', 'MACK CHANDLER', 'WEE SIT', 'ALIPALO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(12, '2025-02587', 'JAQUELINE', 'DUMAN-AG', 'ALPAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(13, '2025-02141', 'JERIC', 'LINTO', 'ALVAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(14, '2025-00318', 'JESSA MAE', 'JAUCULAN', 'ALVAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(15, '2025-02118', 'CRISMAR', 'SALOMON', 'ANCHETA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(16, '2025-02607', 'EJAY', 'SOTTO', 'APARICIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(17, '2025-02598', 'ROJEN', 'GENTURALES', 'ARNADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(18, '2025-02597', 'AL ZAID', 'JANVINCE SADJARI', 'ASMARIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(19, '2025-00358', 'PETER JAMES', 'MANALO', 'AUXTERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(20, '2025-02972', 'ONYX', 'FERRER', 'BAGARINAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(21, '2025-00580', 'MUTALIB', 'ALAJA', 'BAKILI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(22, '2025-02122', 'MOHAMMAD RIDZMAR-YAQEEN', 'DAHAM', 'BANGAHAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(23, '2025-01362', 'ROBB CHRYZLEHR', 'AQUINO', 'BANGUIH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(24, '2025-00246', 'JOHN RAYNES', 'MONTEHERMOSO', 'BARIGUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(25, '2025-02127', 'RUELYN', 'PINGKIAN', 'BETSER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(26, '2025-02106', 'CHRISTIAN JOSHUA', 'FELICIANO', 'CABUAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(27, '2025-00457', 'PATRICK BONN', 'EVARIENTOS', 'CAMPOMANES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(28, '2023-00750', 'GILLIAN IRISH', 'EDUARTE', 'CERVANTES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(29, '2025-02701', 'ADONIS JR', 'SAYSON', 'CINCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(30, '2025-02608', 'PATRICK MAEZ', 'SAKALURAN', 'CLIMACO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(31, '2025-01351', 'OMAR', 'ISMALI', 'DAGAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(32, '2025-00740', 'ALNASHREN', 'BETONIO', 'DAHIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(33, '2025-01791', 'SHEINA LOVE', 'ABDULKADIL', 'DELA CRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(34, '2025-02921', 'JOHNFREY', 'BILLONES', 'ENGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(35, '2025-01219', 'EMILY LAVIN', 'MACADAMI', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(36, '2025-01344', 'ARCHILLES', 'HALILONG', 'ESPIRITU', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(37, '2025-02274', 'REECH LOWRENCE', 'BAGATUA', 'EUSTAQUIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(38, '2025-01178', 'ALVIC KIN', 'QUE', 'FABIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(39, '2025-01246', 'JOSHUA', 'PEPITO', 'FLORES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(40, '2025-02969', 'SAM', 'DANIEL', 'GALLEPOSO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(41, '2025-02128', 'RICH CEZARINA', 'LAYCA ALFON', 'HITGANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(42, '2025-01042', 'EZEKIEL', 'MAT', 'IMPE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(43, '2025-02906', 'DREZA HANNA', 'IBRAHIM', 'JAJI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(44, '2025-03461', 'CHRISTIAAN BENEDICT', 'LOPEZ', 'JALA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(45, '2025-02089', 'PATHRICK JAMES', 'NERI', 'LAGONERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(46, '2025-02417', 'IAN GERVIC', 'BELMONTE', 'LIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(47, '2025-01358', 'KURT DANIEL', 'NARCISO', 'MAGBANUA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(48, '2025-02112', 'KRIS DEN', 'MARK PINO', 'MAGHUYOP', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL),
(49, '2025-02864', 'JHERYANNE', 'JULIAN', 'MAMANTAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(50, '2025-00867', 'FERDAUSI', 'NAWADIL', 'MAMISCAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(51, '2025-02717', 'ALLYSA', 'NAVARRO', 'MOHAMMAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(52, '2025-03220', 'MARIANNE VENICE', 'N/A', 'OCAMPO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(53, '2025-02609', 'ALLEN ROSE', 'GABIO', 'ORTEGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(54, '2025-01701', 'KASANDRA', 'SANTOS', 'ORTEGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(55, '2025-02125', 'ABDALLAH', 'JAIYARI', 'PALLUH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(56, '2025-02829', 'JOHN JOSHUA', 'MICABALO', 'PATRICIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(57, '2025-02479', 'PRINCESS KISSES', 'JAMEE MONTIN', 'PEÑA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(58, '2025-01220', 'KRIS MARIANE', 'DRAGON', 'PEREYRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(59, '2025-00469', 'AVIV PILARAINE', 'TINDOC', 'PEREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(60, '2025-02270', 'SAITH ANGELO', 'TORIBIO', 'PONTILLAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(61, '2025-00650', 'CARL IAN', 'REYES', 'PRIAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(62, '2025-03364', 'ANGEL GRACE', 'PAING', 'PUERTO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(63, '2025-00538', 'CRISDIANTHY', 'LUKUH', 'PULA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(64, '2025-02101', 'MATTHEW KARL', 'BELLOTINDOS', 'QUINTE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(65, '2025-00296', 'CASSANDRA ASHLEY', 'BAYABOS', 'SAILELA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(66, '2025-02698', 'WAJ WANNAH', 'INTANG', 'SANCHEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(67, '2025-02719', 'JAYFAR', 'HUSSIN', 'SAPPAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(68, '2025-00716', 'KRYZEL JOY', 'SALAHOP', 'SOLAMBAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(69, '2025-02680', 'YLLISHEDRINE', 'HAMDANI', 'TAGAYAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(70, '2025-00169', 'NOVIE JOZANE', 'DICHOSO', 'TAMPARONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(71, '2025-00272', 'REYMER', 'BOLO', 'TAROG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(72, '2025-03016', 'WILMALYN', 'DAUP', 'TATI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(73, '2025-03339', 'PRECIOUS GRACE', 'ACQUIATAN', 'TORRALBA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(74, '2025-00326', 'DARELL', 'DELEON', 'TUBLE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(75, '2025-00633', 'KHALID', 'LADJA', 'UDDIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(76, '2025-00290', 'ELLICE ROSE', 'SOLANO', 'VICENTE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(77, '2025-02601', 'RURIK RAE', 'RELLON', 'VILLALOBOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(78, '2025-01590', 'PAUL GREGORY', 'HASSAN', 'VILLAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(79, '2025-02913', 'KEVIN', 'CAMPOSO', 'VILLARUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(80, '2024-03531', 'SHERHAYA', 'ALFARO', 'ABDURAJAK', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(81, '2023-04734', 'AHMAD GEVAR', 'ISAHAC', 'ADVAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(82, '2024-03480', 'RHAIZA', 'YONGOT', 'ALBERTO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(83, '2024-03655', 'MARK JOHN', 'SALAS', 'ANDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(84, '2024-01709', 'NEIL ALDEN', 'JULIAN', 'ANGELES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(85, '2024-03471', 'JASHIER VAN', 'DEL ROSARIO', 'AVILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(86, '2024-04182', 'FLORALYN', 'HIPOLANI', 'BERNARDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(87, '2024-03728', 'JOHAN', 'CABARDO', 'BUENAVENTURA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(88, '2024-04599', 'ARSUHUD', 'ARADJI', 'CADIR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(89, '2024-04520', 'RALPH KEVIN', 'ALCANTARA', 'CASIRAYA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(90, '2023-04497', 'DANLEY', 'HICKS', 'CHIONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(91, '2020-01788', 'JAYVEN JOHN', 'MAMONTA', 'CLAPANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(92, '2024-04094', 'DANICA', 'CAMASURA', 'CUSTODIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(93, '2024-01504', 'DANNETH', 'BUHION', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(94, '2024-03574', 'ERIC JR', 'DELOS REYES', 'FERMO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(95, '2024-01796', 'PAOLO', 'SANTOS', 'GARCIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(96, '2024-03481', 'JOHN ROZILLER', 'TOLENTIN', 'GOMISONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(97, '2024-03478', 'NEITHAN DENIEL', 'BAUTISTA', 'GULA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(98, '2023-05093', 'KARL MARX', 'DOSPUEBLOS', 'NARVAEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(99, '2024-03473', 'XYRILLE DIANA', 'ARANETA', 'NUÑEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(100, '2023-06127', 'ANTHONY', 'JACINTO', 'OMAMALIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(101, '2024-01704', 'AJ', 'ACABO', 'POLLES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(102, '2024-03715', 'ALJON', 'VELARIO', 'REYES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(103, '2024-03601', 'AXL JAY', 'PONCE', 'SALAZAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(104, '2023-04366', 'MOHAMMAD AL', 'KHAIBAR QUE', 'SALIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(105, '2024-03474', 'SHEIKH ALFAEZ', 'JOE', 'SAMSON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(106, '2023-05232', 'GHAFFRIE', 'PASICARAN', 'SONNY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(107, '2024-04619', 'HALIPA', 'GANDAWALI', 'SUAILI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(108, '2024-03130', 'MUAMMAR', 'AMILASAN', 'TIBLANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(109, '2024-03606', 'JAYMIE MARGARET', 'CASTILLO', 'TUBLE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(110, '2023-04004', 'FREDERICK FRANCISC', 'O', 'BEJERANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(111, '2023-04496', 'KEN HENSLEY', 'RULE', 'CHIONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(112, '2023-03997', 'EARL JANCEE', 'JACOMILLA', 'COLMINAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(113, '2023-03996', 'JACOB JUDIEL', 'RIVERA', 'CORDERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(114, '2023-04176', 'RONEL', 'LIM', 'FRANCISCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(115, '2023-03993', 'MA. ERICHA', 'MAAGHOP', 'GUANZON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(116, '2023-04733', 'AL MUDZEER', 'MOHAMMAD', 'JULAIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(117, '2023-03059', 'PAOLO LORENZO', 'GANTAO', 'LONGCOB', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(118, '2023-04008', 'CLINT LLOYD', 'SACRISTAN', 'MANONGONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(119, '2019-01948', 'WYNRY', 'ESMALI', 'PERIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(120, '2025-02223', 'NOWAR', 'MAMASALAGAT', 'ADALA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(121, '2025-03446', 'LUJILLE', 'ALCAZAR', 'ALAS AS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(122, '2025-01885', 'CHARISSE JANE', 'ALVAREZ', 'ALEJANDRO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(123, '2025-02262', 'ABDULBAKI', 'BAKIL', 'ALRASHID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(124, '2025-02606', 'ZYNAB REIN', 'ALAMA', 'AMIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(125, '2025-03537', 'MARC EDCEL', 'MORENO', 'AMPARADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(126, '2025-02281', 'CYVEL', 'BELMONTE', 'ANGELES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(127, '2025-02600', 'YAEL SHAUN', 'BAASA', 'ANTOQUE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(128, '2025-03031', 'JOSHUA', 'PELAYO', 'ARABI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(129, '2025-02596', 'LEXTER', 'TUMAWIS', 'ARANETA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(130, '2025-00178', 'ATHEA ANDREA', 'GATINAO', 'ASOY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(131, '2025-03532', 'AISHWARYA', 'YUSOP', 'ATEGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(132, '2025-02282', 'JOHN ZECHARIAH', 'PEREZ', 'BASILIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(133, '2025-02411', 'JULIANA SAMANTHA', 'SARTE', 'BELLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(134, '2025-02253', 'RANIER', 'LEGARTE', 'BEZAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(135, '2025-01265', 'NICOLE', 'FERNANDO', 'CADAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(136, '2025-02284', 'MISHAAL', 'CORONEL', 'CELESIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(137, '2025-02271', 'ARYANA RANE', 'VILLEGAS', 'CUSTODIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(138, '2025-00310', 'ALDUJANA', 'SAHIBADDIN', 'DAIE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(139, '2025-00477', 'NEIL', 'LASAM', 'DALOG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(140, '2024-03759', 'EUGANE', 'WATIWAT', 'DELA CRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(141, '2025-01763', 'GIAN HENDRICK', 'CARDONA', 'DELA CRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(142, '2025-02200', 'JAYMAR', 'ESCUDERO', 'DELOS SANTOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(143, '2025-00237', 'IVER JAMES', 'VILLAFLORES', 'DEQUINA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(144, '2025-01869', 'ALEJANDRO', 'ANTIQUINA', 'DUMANAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(145, '2025-00183', 'ASHLEY MAE', 'ATILANO', 'ELLIMA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(146, '2025-02303', 'GERALD', 'DECIERDO', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(147, '2025-02604', 'LUKE GABRIEL', 'SANTOS', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(148, '2025-02593', 'IAN DOMINICK', 'RAMILLANO', 'ESCUDERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(149, '2025-00427', 'JOSH ENZO', 'DAYTO', 'FRANCISCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(150, '2025-00551', 'JOSH', 'CIMARA', 'GALO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(151, '2025-02343', 'JOHN PAUL', 'DENUSTA', 'GREGORIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(152, '2025-01795', 'MEINARD', 'KANANING', 'GREGORIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(153, '2025-00445', 'KRISTIAN', 'ROJAS', 'GUEVARA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(154, '2025-02234', 'EURESSE', 'ROGADOR', 'GUNDAYA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(155, '2025-00458', 'FATIMA AHYESSA', 'UDJA', 'HUSSIEN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(156, '2025-02277', 'JABAR', 'ESCANDALLO', 'HUSSIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(157, '2025-02217', 'JERSON', 'ABAH', 'INDAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(158, '2025-00421', 'FREZY', 'TAPIA', 'INDANGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(159, '2025-02397', 'MOH. AL-RAFFY', 'RASID', 'INGOH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(160, '2025-02241', 'NUR-MOHAMMAD ZAARR', 'LEE', 'IRAJI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(161, '2025-02605', 'FAUZAN', 'GARDUQUE', 'ISMAEL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(162, '2025-02618', 'ALLAN JAY', 'CABIARA', 'JALAGAT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(163, '2025-02231', 'NURFATIMA', 'DUMPASAN', 'JALAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(164, '2025-02602', 'ALEXANDER', 'VILLACAMPA', 'JASARENO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(165, '2025-02592', 'FATIMA IZREENA', 'MOHAMMAD NUR', 'JIMLANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(166, '2025-02603', 'ANGELIE ROSE', 'ALAMBATANG', 'JOCSING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(167, '2025-00582', 'CLAUSSENJOHN', 'PARTOSA', 'JUMAH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(168, '2025-00306', 'ALI-ADZMAR', 'IBRAHIM', 'KATIBIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(169, '2025-01881', 'LINZIE', 'ATILANO', 'LACASTESANTOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(170, '2025-02276', 'BHEN-ALIH', 'ADJAJUL', 'LAKIBUL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(171, '2025-02273', 'MARIA QUISHA', 'PEREZ', 'LEONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(172, '2025-02243', 'MATT ANGELO', 'LARRACOCHEA', 'LIAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(173, '2025-02280', 'YZAC CHAD', 'ESONA', 'LIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(174, '2025-02291', 'ALTHONNIE STEVENZ', 'GONTIÑAS', 'LING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(175, '2025-02363', 'JAIMEER', 'SADJARI', 'MAANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(176, '2025-00464', 'MARLY ANN', 'JOY ARCILLAS', 'MACASO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(177, '2025-01324', 'AL-MUHMIN', 'UTOHJALI', 'MANAYO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(178, '2025-03447', 'JHON EARL', 'GUEVARA', 'MARAVILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(179, '2025-00486', 'CZARINA', 'SARTE', 'MONTANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(180, '2020-01919', 'AZMEIR ARIF', 'BUSTAMANTE', 'MUDJAHIRIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(181, '2025-00648', 'JENNY', 'LANTIZA', 'OMATANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(182, '2025-02360', 'CRIS JERECHO', 'DADAN', 'PABUTAWAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(183, '2025-02039', 'AARON JAMES', 'INCLAN', 'PEREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(184, '2025-02584', 'JULIA JANE', 'SALILIG', 'RODRIGUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(185, '2025-03208', 'AYAH', 'SALI', 'SAHAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(186, '2025-02104', 'LOUIE MARTIN', 'ELMA', 'SANTIAGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(187, '2025-02242', 'SHIRHENDI', 'ABADIES', 'SARAJAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(188, '2025-02212', 'FATIMA SHEJAMAE', 'ABIL', 'SAYADI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(189, '2025-01193', 'CLARISSA MAE', 'T', 'SIERRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(190, '2025-03324', 'FAIZALIYA', 'PIMPING', 'SINTAAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(191, '2025-00161', 'KYLE MICHAEL', 'ARANAS', 'SOLIS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(192, '2025-03357', 'REY JHON', 'RAMOS', 'SONET', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(193, '2025-02614', 'FILVEN', 'MAGABO', 'SUAILI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(194, '2025-03554', 'JUSTIN AARON', 'ASANA', 'SUAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(195, '2025-02199', 'AARON JOHN', 'CUARTOCRUZ', 'TALAOGON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(196, '2025-00406', 'ABDIL AZIZ', 'MAGHUYOP', 'TANTONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(197, '2025-00861', 'REGINE', 'OMO', 'TAYAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(198, '2025-02361', 'JILLIAN', 'JACOB', 'ULAMA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(199, '2024-04598', 'REA', 'ASMAD', 'ADJAWIE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(200, '2024-04605', 'YAZZINE', 'AALLIAN', 'ALBANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(201, '2024-03457', 'PAULINE', 'PAULINE', 'ALONZO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(202, '2023-05089', 'NOVIE WEDSEV', 'JAILANI', 'ALVARADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(203, '2024-01294', 'MARIAJELLY', 'DELGADO', 'ATILANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(204, '2024-02235', 'FRANKINCENSE', 'BANUELOS', 'BABARAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(205, '2024-03272', 'FAHAD', 'NONNONG', 'BADANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(206, '2024-01283', 'JHOROSS DELOS', 'REYES', 'BATOBALANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(207, '2024-03210', 'JOHN LYNZ', 'ENOY', 'BLANCA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(208, '2021-03183', 'ANGELO', 'ENIEGO', 'BOON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(209, '2024-03632', 'CANE', 'VANZUELA', 'CABREROS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(210, '2023-04358', 'TRISHA MAE', 'VINCOY', 'CLIMACO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(211, '2024-03465', 'RICHARD', 'PALALON', 'DESAMERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(212, '2024-01628', 'JOSHUA', 'MARTINEZ', 'FALCASANTOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(213, '2024-02590', 'ULYSSIS', 'FERNANDEZ', 'GALAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(214, '2024-03215', 'RAMON LLOYD', 'ARIQUE', 'GARCIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(215, '2024-03443', 'ARCHIHAR', 'ISHIKAWA', 'IMAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `student_id`, `first_name`, `middle_name`, `last_name`, `birthday`, `suffix`, `gender`, `course`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrollment_status`, `enrollment_date`, `enrolled_semester`, `created_at`, `updated_at`, `deleted_at`, `section`, `fathers_name`, `mothers_name`, `student_contact`) VALUES
(216, '2024-03275', 'ELTON JOHN', 'LOON', 'JAVIER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(217, '2024-03131', 'REGENIA', 'SAHIKAL', 'JULSALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(218, '2024-04756', 'ARVY JAMES', 'DICEN', 'LUCERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(219, '2024-03189', 'ADA SABINA', 'CASTRO', 'MOLINA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(220, '2014-03914', 'DANECA DIANA', 'ASMAWIL', 'MURADJAM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(221, '2024-03164', 'ADZHAR', 'AHMAD', 'NAGUIB', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(222, '2024-03276', 'JULIANNE GAY', 'SAMSON', 'OBIDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(223, '2024-04588', 'ABDUL AZIS', 'MACALANDAP', 'RADIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(224, '2024-01258', 'JOEM MARIE', 'RED SOLAMILLO', 'RAMIREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(225, '2023-05234', 'REYNAN', 'RAMOS', 'RUSIANA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(226, '2024-03031', 'RAJIK', 'APALAL', 'SALIH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(227, '2024-03226', 'ALAIN LORIEN', 'CORTES', 'SILAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(228, '2024-03424', 'GIAN BRYLE', 'VILLANUEVA', 'SOMBRIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(229, '2024-03076', 'ALHAYTHAM', 'ABDULAJID', 'SULAYMAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(230, '2024-03273', 'IAN VINCENT', 'ABARIDO', 'TORRALBA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(231, '2023-04177', 'GIAN YUVAL', 'LUMAWAN', 'USMAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(232, '2024-04921', 'ADRIAN', 'BARBON', 'VEGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(233, '2024-03171', 'VHINZ DANIELLE', 'JIMLAN', 'VIÑA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(234, '2023-02547', 'RENAN', 'FERNANDO', 'ZAMORA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(235, '2023-02393', 'SALMAN', 'LINDET', 'ALIH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(236, '2023-05178', 'JOSIE', 'ORTEGA', 'BANALO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(237, '2023-04009', 'KURTAL DRICH', 'CERVANTES', 'CANILANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(238, '2023-04014', 'JOHN PAUL', 'ISIDRO', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(239, '2023-04171', 'ANGEL', 'MOHAMAD', 'GARCIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(240, '2021-01257', 'BEN AZIZ', 'HASAN', 'HASSAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(241, '2020-00769', 'MOH.AHMED ZHAREEH', 'OMAR', 'JAMERI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL),
(242, '2023-04015', 'ALEXANDRA STEFFI', 'MATA', 'MADRAZO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(243, '2023-04002', 'JOHN CARLO', 'ARCILLAS', 'PARDILLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(244, '2023-04272', 'RIDZWAN', 'HASHIM', 'SAMPANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(245, '2023-03995', 'HEZEKIAH QUEENE', 'RODRIGUEZ', 'SARITA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(246, '2023-03999', 'IRA', 'CABANAYAN', 'SARMIENTO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(247, '2023-04032', 'KRIZZIA MAY', 'SUICO', 'VALLECER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(248, '2023-04005', 'ASHLEY FAYE', 'MAPULA', 'VEGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(249, '2023-03719', 'MARVIN PAUL', 'TRUMATA', 'ZARAGOZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(250, '2015-02718', 'ALYACHER', 'MUKARIM', 'SALIHUDDIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(251, '2024-04447', 'MUADZ', 'AHAMAD', 'AHMAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(252, '2025-00095', 'CRISLENE JANE', 'GARCIA', 'ALAS-AS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(253, '2025-02474', 'ALRADA', 'ARABANI', 'ALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(254, '2025-01892', 'ANAS', 'MAANI', 'ALOM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(255, '2025-00282', 'MOHAMMAD ZAIN', 'A', 'AMIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(256, '2025-00154', 'ERAM MAE', 'ALMEDALLA', 'ANCAJAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(257, '2022-00036', 'LAURENCE IVANHOE', 'BRAGADO', 'ANCHETA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(258, '2025-00312', 'RIANNE JOYCE', 'ALFEREZ', 'ANGLES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(259, '2020-03616', 'RODERICO', 'AMPUAN', 'ARCEO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(260, '2025-00699', 'NATHANIEL', 'HALMAIN', 'ARCIAGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(261, '2025-00742', 'RUDOLF DEE', 'PESCADERO', 'ARISTON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(262, '2025-00092', 'AL-HAFIDZ', 'PIAGO', 'BAHJIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(263, '2025-01099', 'LEANDRO', 'MARCOS', 'BAJE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(264, '2023-05235', 'FATIMA SHADIYA', 'AKMAD', 'BASSAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(265, '2025-00455', 'SHAWN EDISON', 'ANOJADA', 'BENIGNO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(266, '2023-01103', 'STEPHEN MAVERICK', 'ALZATE', 'BOBON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(267, '2025-01207', 'RAMIL DELA', 'CRUZ', 'BUGAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(268, '2025-00280', 'NORIELLE JOHN', 'DEQUIN', 'BUHAWE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(269, '2025-00657', 'AMEERSHAH', 'JAMAR', 'BUKLAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(270, '2025-00364', 'ARIES', 'MENDOZA', 'CABATO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(271, '2025-00598', 'VENNICE JAYNE', 'MICKA GARCING', 'COMPAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(272, '2025-01086', 'ELLA GRACE', 'MANALON', 'DADAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(273, '2025-00691', 'MIKYLLA', 'SAAVEDRA', 'DELOS REYES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(274, '2025-01755', 'JULLIAN EDGAR', 'PAUL OPUNE', 'DELOY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(275, '2025-00443', 'XEINALEINE', 'RECTO', 'EDUARTE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(276, '2025-01337', 'DATU JOHARI', 'INDAMA', 'ESMAIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(277, '2025-00898', 'ELAINE JANE', 'PESTAÑO', 'ESPIRITU', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(278, '2025-01591', 'MERYLL JOY', 'SILVANO', 'EVANGELISTA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(279, '2025-00492', 'VAUGHN', 'MAGALLANES', 'EVANGELISTA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(280, '2023-00981', 'JOHN MICHAEL', 'VINCENT OCLARIT', 'FLORES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(281, '2025-00601', 'XANDREA KATE', 'BARRIENTOS', 'GALIMBA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(282, '2025-01306', 'RUFISA', 'ABDA', 'GAPOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(283, '2025-03070', 'HERMIONE AHNYA', 'W', 'GECANA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(284, '2025-02034', 'JIM DANIEL', 'LOSTE', 'HANDANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(285, '2021-05091', 'AL-AHMAD', 'MALDISA', 'HASSAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(286, '2025-00756', 'PRINCE JAN', 'MARI ESPERAT', 'HERRERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(287, '2025-01076', 'CASSIDY VYOJ', 'PIÑERO', 'HIMODO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(288, '2025-01130', 'FRANCO ANTONIO', 'JUATON', 'HUERTA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(289, '2025-00651', 'AL-KAIZER', 'ELLE', 'JALAIDI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(290, '2025-02286', 'KURT JUSTINE', 'MARAVILLAS', 'JAVIER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(291, '2025-00605', 'REGAN', 'MAHAIL', 'KALNAIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(292, '2025-01626', 'AL-BARDEEN', 'JUMLANI', 'KAMLON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(293, '2021-02177', 'BRIAN KEN', 'ELLOREN', 'LADROMA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(294, '2025-01008', 'CHARMELLE', 'SAMORANO', 'LAGARE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(295, '2025-01102', 'SHERWIN JR', 'TOMAMPOS', 'LIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(296, '2025-00281', 'MICHELLE', 'BULLESCER', 'LORETE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(297, '2025-01355', 'AL-QASAWI', 'DDELOSREYES', 'MAALUM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(298, '2025-00497', 'GIAN LORENZO', 'SIGUIENTE', 'MACHUTES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(299, '2025-01473', 'ANDRAE NATHANIEL', 'D', 'MAHUSAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(300, '2025-00248', 'LOWER', 'OBERO', 'MALINIS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(301, '2025-00434', 'JAY JASPER', 'NUÑEZ', 'MANOGURA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(302, '2025-01263', 'EDLOGIN FAY', 'LANDIAO', 'MANUEL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(303, '2025-01190', 'CARL MARCEL', 'ONG', 'MAPA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(304, '2023-00669', 'CHRISTOPHER EUGNE', 'DE GUZMAN', 'MEDINA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(305, '2025-01865', 'KELVIN', 'QUIMBO', 'MIRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(306, '2025-00595', 'GERALD', 'MHAR', 'MORTEL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(307, '2025-00594', 'ALQAHHAR', 'HUSIN', 'MUNJILUL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(308, '2025-00386', 'AILA', 'MAY', 'NATIVIDAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(309, '2025-00612', 'RENNETH', 'LANDAP', 'OBAG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(310, '2025-01372', 'JANRICSON', 'LUBRIDO', 'OMPOY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(311, '2025-00408', 'DEXTER JAY', 'MENESES', 'ONG CHUA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(312, '2025-00165', 'LEBRON JAMES', 'DOMINGO', 'OREN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(313, '2025-00142', 'ACE LORENZ', 'CRUZ', 'PATONGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(314, '2025-01853', 'FRANCE IVAN', 'LAZARO', 'PEDRO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(315, '2025-00488', 'ZAKI', 'JUMALA', 'PEÑAREDONDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(316, '2025-00701', 'JANUAR STANLEY', 'BARREDO', 'REYES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(317, '2025-01864', 'AL-SHARIF', 'HATAMAN', 'ROJAS MATEO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(318, '2025-00628', 'BRYAN', 'PAYAO', 'SAAVEDRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(319, '2025-00325', 'DAVIJEAN', 'FRANCISCO', 'SAAVEDRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(320, '2025-00213', 'JASMIR', 'ARANETA', 'SADDALANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(321, '2025-01737', 'SEDRICK CURT', 'DORHAM', 'SAKALURAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(322, '2025-00715', 'CEDRIC', 'NATIVIDAD', 'SANTIAGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(323, '2025-00748', 'DARIUS JAMES', 'MOLINA', 'SERITO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(324, '2025-00089', 'NELEE EMERY', 'ACUÑA', 'SINGSON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(325, '2025-01790', 'LANDIS ANGELO', 'JUPIA', 'TARRO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(326, '2025-00404', 'SWEET', 'C', 'TIONGCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(327, '2025-00552', 'NEILEA FRANCHESKA', 'JAVIER', 'TOLEDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(328, '2025-01342', 'JAMES PETER', 'ABAD', 'TOREJAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(329, '2025-02275', 'JARED EZEKIEL', 'PACTOL', 'TUASON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(330, '2025-01144', 'VAN CLAUDE', 'CAUTIVAR', 'VALEROS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(331, '2025-01071', 'MAIKA', 'JANE', 'VELARDE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(332, '2025-00368', 'CHRISTOPHER', 'BACAY', 'YABO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(333, '2024-03685', 'IRIS JUHRA', 'BAYLON', 'ABDULLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(334, '2021-02741', 'NUR', 'AMIL', 'ABDULMAJID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(335, '2023-01812', 'LIMUEL REY', 'BANDICO', 'ACABAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(336, '2024-01378', 'THEODORE', 'VALESCO', 'ADANZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(337, '2023-01203', 'ANGELO JAY', 'LARGO', 'ALERIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(338, '2024-01270', 'LUIS MIGUEL', 'ATILANO', 'ALFARO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(339, '2024-01727', 'NURHANA', 'CASAN', 'AMINULLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(340, '2023-02197', 'MATTJHEVIC', 'ENGALLADO', 'ANASTACIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(341, '2024-02491', 'THIESHA GWYNETH', 'MIGUEL', 'BAGNAAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(342, '2022-05150', 'EMIR', 'CHANDUMAL', 'BAHJIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(343, '2023-02529', 'LANCE', 'LUNA', 'BANTOTO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(344, '2022-01146', 'ADRIAN PAUL', 'MAGASA', 'BARCELONA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(345, '2024-01743', 'RHON JAMES', 'GUEVARRA', 'BARCELONA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(346, '2023-05781', 'JUSTIN RAE', 'SOQUE', 'BEDUYA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(347, '2024-01318', 'ALELY', 'PACIFICO', 'BITUN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(348, '2024-01159', 'JELORD XYREN', 'CAPA', 'BOJOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(349, '2023-02657', 'MERSON', 'RODRIGUEZ', 'CAEL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(350, '2023-02265', 'NOVI', 'MALICAY', 'DIAZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(351, '2024-01635', 'PATRICK JOHN', 'TOSE', 'DURAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(352, '2024-03450', 'HUWAYDA', 'SALIDDIN', 'EL ZAIN HASSAN ABULQASSIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(353, '2024-02928', 'ANDIE ADRIAN', 'MAQUINAY', 'ENTONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(354, '2024-01573', 'RENZ DAVID', 'DELA PAZ', 'ESPIRITU', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(355, '2024-02094', 'JESSA MAE', 'CASTILLO', 'FERRER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(356, '2023-00235', 'EMMANUEL GABRIEL', 'MORATA', 'FRINCILLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(357, '2019-00642', 'DANIEL MAVERICK', 'ATILANO', 'GADAYAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(358, '2024-01569', 'ARWEEN', 'ALEÑO', 'GARCING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(359, '2021-05373', 'MILES KEVIN', 'VILLANUEVA', 'GONZALES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(360, '2021-01194', 'MICHAELLA', 'ESTRELLA', 'HABIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(361, '2021-05155', 'REYNEL JOSH', 'DOMINGO', 'HEBRON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(362, '2024-01412', 'RAZEL', 'TUBLE', 'HERODIAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(363, '2024-01203', 'JOSE NOLAN', 'GAMALIEL BACOLOD', 'IGLESIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(364, '2018-04086', 'ALFAHAD', 'TAHIL', 'ISDIHAJI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(365, '2021-03009', 'MOHAMMAD HADJAD', 'FRANCISCO', 'JAMERI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(366, '2024-01334', 'JOVEL JOY', 'LOYOLA', 'JANDUGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(367, '2022-02197', 'EMMANUEL PJ', 'LOON', 'JAVIER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(368, '2024-01395', 'KEVIN TRAZIE', 'CAMPOMANES', 'LIBRERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(369, '2023-01224', 'JASMIN', 'MONSANTO', 'MAJID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(370, '2022-01451', 'RAMSES', 'SIOTE', 'MANALO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(371, '2024-04615', 'ASHRAFF', 'ARAB', 'MANGKABONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(372, '2018-01751', 'EMIR JEREMIAH', 'LUCMAN', 'MARCELINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(373, '2021-05092', 'JERICHO ADORE', 'EUBANK', 'MEMORACION', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(374, '2023-01925', 'ELIZABETH ARBIE', 'DELOS REYES', 'MORALES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(375, '2023-02136', 'AL SHARIEF', 'LACHICA', 'MUDRIKAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(376, '2024-01647', 'KIMBERLY JIREH', 'REYES', 'NATIVIDAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(377, '2022-01180', 'ISRAEL', 'SABADO', 'OCAMPO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(378, '2024-01182', 'JHON CLEIN', 'TORIBIO', 'PAGAROGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(379, '2024-02612', 'KHEM', 'MICOLOB', 'PALIQUERON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(380, '2023-00481', 'FLORENZ DALE', 'CLIMACO', 'PAÑA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(381, '2023-01619', 'MATHEW JG', 'SANTOS', 'PAYOPELIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(382, '2023-01263', 'JOEL JOSH', 'JR G', 'QUE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(383, '2019-01184', 'ROVIC', 'FERMIN', 'RAMOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(384, '2024-01352', 'ADRIAN BENEDICT', 'DOMUGHO', 'RIVERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(385, '2024-02721', 'JAMES BENEDICT', 'AYONTING', 'ROJAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(386, '2024-01459', 'GRAZIELLA MARIFE', 'SANTIAGO', 'SAAVEDRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(387, '2024-02093', 'ALI HASSAN', 'AMIRUL', 'SALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(388, '2023-01379', 'GIAN CODY', 'MIDEL', 'SALILIG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(389, '2024-01170', 'MICAH', 'GAPOL', 'SEDIGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(390, '2023-01358', 'KURT PHILIP', 'PATACSIL', 'SENALDE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(391, '2024-02707', 'JOEBERT', 'SOTRINA', 'SINTOY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(392, '2024-01346', 'KITT HARLEY', 'BILLONES', 'SY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(393, '2024-01767', 'FAREED', 'GODOY', 'TAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(394, '2019-02571', 'ELIEZER', 'OTADORA', 'VILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(395, '2024-02613', 'MIKO', 'RAMOS', 'ZAMORA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(396, '2023-01075', 'FATIMA SHEENA', 'SHARIFA TAJI', 'ABUBAKAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(397, '2021-01863', 'IONYJAL AZIZ', 'FLORES', 'AMIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(398, '2023-01100', 'ASANUL', 'IBRAHIM', 'ASANUL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(399, '2023-02223', 'TRISHA FHAYE', 'FRANCISCO', 'AT-AT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(400, '2022-01449', 'ALJAMAL', 'JAMILON', 'AYUB', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(401, '2023-00030', 'MEZJRA', 'MAE', 'BAGTASOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(402, '2023-01955', 'EDRIS', 'SAPPAYANI', 'BAKAUN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(403, '2022-05080', 'MISSY', 'ELNAR', 'BALANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(404, '2023-02779', 'REYMARD', 'TORRIÑO', 'BENGIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(405, '2023-01295', 'SHAH RUKH', 'KHAN DELEÑA', 'BIAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(406, '2023-01932', 'RICHMOND JAY', 'BICOY', 'BREGUNDOT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(407, '2023-03935', 'JUDE MICHAEL', 'VESAGAS', 'BRILLANTES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(408, '2023-00717', 'VHAN LOUIE', 'NEE', 'BULANADI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(409, '2023-01099', 'MHYCO GISELO', 'PEREZ', 'BUNAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(410, '2022-01060', 'YUSEF', 'TANDICO', 'CAMLIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(411, '2023-01236', 'RALPH CHESTER', 'MONZALES', 'CANDIDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(412, '2023-02192', 'KIARA', 'LOZANO', 'CANDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(413, '2023-00727', 'ETHAN WAYNE', 'NODADO', 'CASSION', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(414, '2023-01755', 'DIANA MAE', 'TORRALBA', 'CASTILLON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(415, '2023-00642', 'FRANCO ADRIANNE', 'RIVERA', 'CENIZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(416, '2023-01326', 'MARGIE MARIE', 'VERACRUZ', 'CLARION', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(417, '2023-00645', 'VANIEL JOHN', 'GARCIA', 'CORNELIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(418, '2023-00607', 'ODREC ANGELO', 'BAGNOL', 'CREDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(419, '2023-01604', 'ANTONIO JR', 'LAPURGA', 'CRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(420, '2020-00397', 'ANDRE LEE', 'RODRIGUEZ', 'CUYUGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(421, '2023-00231', 'YAN MARK', 'VILLAS', 'DARUNDAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(422, '2023-00116', 'EDILBERTO JR', 'MATEO', 'DELA CRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(423, '2023-02465', 'CRISCEL ANN', 'ALVAREZ', 'DELOS REYES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(424, '2022-05130', 'LOURENCE', 'MENDOZA', 'DEVILA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(425, '2023-02123', 'JANUS', 'RAPIZ', 'DOMINIC', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(426, '2023-01754', 'EROS DENZ', 'LABRADOR', 'ETAC', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(427, '2023-01080', 'CYRELL RAFAEL', 'AGUILAR', 'FELIX', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(428, '2023-01053', 'FRANCIS VAUGHN', 'DAUBA', 'FRANCISCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(429, '2023-01043', 'LONIEL MARLO', 'MEDINA', 'GAPOL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `student_id`, `first_name`, `middle_name`, `last_name`, `birthday`, `suffix`, `gender`, `course`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrollment_status`, `enrollment_date`, `enrolled_semester`, `created_at`, `updated_at`, `deleted_at`, `section`, `fathers_name`, `mothers_name`, `student_contact`) VALUES
(430, '2023-03376', 'EMMAN NICHOLAS', 'BLABE BAUTISTA', 'IDULSA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL),
(431, '2021-00511', 'INNA MALDIA', 'ISMAIL', 'ISNAJI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(432, '2023-03371', 'SAAD BIN', 'AIN MUCTAR', 'JANDUL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(433, '2023-01769', 'KHOFERSHINE', 'LUMANTAM', 'JAVAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(434, '2023-00259', 'SHANE HART', 'DURAN', 'JIMENEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(435, '2023-01234', 'JULHADZ', 'SARAMAN', 'JINNO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(436, '2023-02467', 'AL MASHUD', 'HADJAIL', 'JUMLI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(437, '2023-00027', 'NEIL', 'JAM', 'JUSON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(438, '2023-01319', 'JEHANA', 'HALIL', 'KAIRAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(439, '2023-00371', 'RONE PAULLAN', 'GELLECANIA', 'KULONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(440, '2023-01365', 'HUDHAIFAH', 'ABDULA', 'LABANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(441, '2023-00232', 'KALVIN SALIM', 'ALAIN', 'LAKUPING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(442, '2023-00495', 'HANS ADRIAN', 'ACOSTA', 'LAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(443, '2022-01089', 'JOHN DAVE', 'BRIGOLE', 'LIBRADILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(444, '2022-01191', 'SHEER MICHAEL', 'CAMPOMANES', 'LIBRERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(445, '2023-03986', 'CARLOS ANGELO', 'SIGUIENTE', 'MACHUTES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(446, '2023-00493', 'JELAINE MAY', 'CARMELOTES', 'MACIAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(447, '2023-01575', 'MARLO', 'BAYLEN', 'MANON OG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(448, '2023-02775', 'BRIXELL LLOYD', 'DELA CRUZ', 'MESA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(449, '2023-01459', 'GABRIEL', 'BELIGOLO', 'MODILLAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(450, '2023-01073', 'KHALID', 'FRANCISCO', 'MOHAMMAD ALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(451, '2022-01056', 'SHARIEF KUNDO', 'LACHICA', 'MUDRIKAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(452, '2023-00274', 'ACE JOHN', 'MALUNES', 'NIEVA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(453, '2023-01549', 'NESTY', 'VILLALON', 'OMONGOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(454, '2022-01101', 'ADRIAN', 'UNDECIMO', 'ORADA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(455, '2023-00486', 'OLIVE FAITH', 'AHAT', 'PADIOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(456, '2023-03373', 'SANDARA JANE', 'BILAO', 'PASA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(457, '2022-00469', 'FRANDILBERT', 'LONGNO', 'PERUSO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(458, '2023-02048', 'AUSTIN KELLY', 'VILLARTA', 'RAMILLANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(459, '2023-02273', 'RASHID FRANCES', 'MIGUEL', 'REMIGIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(460, '2023-01257', 'JAZZPER', 'DIMAIN', 'ROQUE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(461, '2022-01093', 'JAYTHOON', 'LOMONGO', 'SAHIBUL JR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(462, '2022-02193', 'AR ARIF', 'ABDUHASAN', 'SALUAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(463, '2023-00241', 'CARL WAYNE', 'ALALONG', 'SALUDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(464, '2022-01063', 'JUSTIN JOSE', 'BAUTISTA', 'SALVADOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(465, '2023-01270', 'EMMANUELLE', 'DELGADO', 'SANTOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(466, '2023-02172', 'PAUL ADRIAN', 'PATIGAYON', 'SEUPON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(467, '2023-01198', 'MARIELLE NIXIE', 'DALOGDOG', 'SIMBAJON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(468, '2023-02058', 'MARIANE', 'LOUISE', 'SORIANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(469, '2023-02054', 'WINSTON', 'TRINIDAD', 'TABOTABO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(470, '2023-01528', 'JEFFSLAZIR AUGEIGHT', 'MATULAC', 'TAMPUS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(471, '2022-01230', 'KHADIJA', 'PAYA', 'TIKING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(472, '2022-01202', 'NIÑA LOURDES', 'LACERONA', 'TOLENTINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(473, '2023-02210', 'ROBERTO RJ', 'BADAR', 'TORIBIO III', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(474, '2023-05237', 'ZAIN', 'ABITONA', 'TURABIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(475, '2021-02967', 'CRISDEE', 'MADJILON', 'TUTOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(476, '2023-00480', 'GORBIE', 'TEVES', 'ULGASAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(477, '2021-00200', 'VLADIMIR', 'CAUTIVAR', 'VALEROS II', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(478, '2023-00598', 'ALKEN', 'TIMBAS', 'VALLEDOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(479, '2023-01218', 'CLINT JESMAR', 'CASAMAYOR', 'VARONA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(480, '2023-05856', 'AHMAD FEYAZ', 'ADOH', 'YAHIYA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(481, '2023-00267', 'LANDREI', 'RAFANAN', 'ZERNA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(482, '2022-01049', 'RUDERICK', 'ALICER', 'ABALOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(483, '2022-01048', 'MARIE ANDRE', 'KWANGYING', 'ABAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(484, '2020-01156', 'ABDEL KHALIQ', 'BANGSA', 'ABDULLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(485, '2022-01548', 'JOMARK', 'JALMAANI', 'ABELLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(486, '2022-01087', 'LANCE MUTHALIB', 'TORIBIO', 'AHIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(487, '2022-02967', 'GARWAZ', 'AMBALI', 'AKILAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(488, '2022-01106', 'JAMAL', 'ALUMBRE', 'AL BADI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(489, '2022-01195', 'RENALD IAN', 'VILLALOBOS', 'ALAMA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(490, '2022-01055', 'JOHN KYLE', 'TOBELAN', 'ALAS AS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(491, '2022-03838', 'AYANA JADE', 'FABIAN', 'ALEJO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(492, '2021-01491', 'HANS', 'CHRISTIAN', 'ALFARAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(493, '2022-05054', 'DANIELA MARIE', 'BAUNILLO', 'ALPEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(494, '2022-01162', 'APRIL', 'ROSE', 'ALVAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(495, '2022-01080', 'SHARMAINE', 'ISNAIN', 'AMBULA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(496, '2022-02131', 'JOEVIN', 'CONCEPCION', 'ANSOC', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(497, '2021-01500', 'LEONARD', 'GUTIERREZ', 'ARAGONCILLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(498, '2022-01156', 'JAMEEL', 'ABBAS', 'AWAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(499, '2022-01161', 'AVZHER', 'UAYAN', 'BAAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(500, '2022-01109', 'YOUSEF AL', 'MCMHIR JIMLANI', 'BADUA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(501, '2022-05037', 'FRITZIE MAE', 'DELA CRUZ', 'BALAGOSA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(502, '2021-01252', 'NUR', 'BENITO', 'BALLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(503, '2022-01145', 'DAVE', 'JAMIR', 'BASA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(504, '2022-01214', 'GINA-LENN', 'TESORO', 'BEJOC', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(505, '2022-04032', 'DEAN REIGHT', 'FUENTES', 'BILLEDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(506, '2022-01075', 'STEPHANIE MEI', 'ALZATE', 'BOBON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(507, '2021-00175', 'ART MICHAEL', 'EBOL', 'CADIZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(508, '2022-01095', 'THERIS ELDRENE', 'MACASO', 'CARROZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(509, '2022-01053', 'ATHENA MAIA', 'TULABING', 'CASIÑO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(510, '2022-01111', 'HERWAYNE JOHN', 'HASIL', 'CAWILI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(511, '2020-01187', 'ERICO MANUEL', 'DELOS REYES', 'CHIONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(512, '2021-01455', 'EDWIN JR', 'ADONA', 'COMEROS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(513, '2022-01167', 'RAY VINCENT', 'DELOS SANTOS', 'CONCEPCION', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(514, '2017-00030', 'AIMMAN', 'ABDULLAH', 'CONVOCAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(515, '2022-05178', 'ROMELYN', 'FRANCISCO', 'DANGARAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(516, '2021-01116', 'CYRUS BON', 'ABELADO', 'DIMAIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(517, '2022-02128', 'ADREANNA JADE', 'ABLAO', 'ESTEBAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(518, '2021-00149', 'SHAN KHYLE', 'DENISON', 'ESTRADA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(519, '2022-01151', 'CHRISTIAN JUDE', 'PITOGO', 'FAMINIANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(520, '2022-01082', 'REY URSUS', 'ACUÑA', 'FLORES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(521, '2022-00631', 'MARVERICK', 'ONTOG', 'FRANCISCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(522, '2013-01125', 'JEFFTYREL', 'ALVAREZ', 'GANA AN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(523, '2022-01074', 'LESLER JOHN', 'DELA CRUZ', 'GANTALAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(524, '2022-01078', 'MEG RYAN', 'VEGA', 'GOMEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(525, '2021-04293', 'NAILA', 'TAJI', 'HALILUDDIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(526, '2022-01076', 'GERBY', 'PALISBO', 'HALLASGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(527, '2022-01099', 'ANTHONY MARC', 'TORIO', 'HUESCA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(528, '2022-01149', 'MOISES', 'DALMACIO', 'JAVIER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(529, '2022-05084', 'MYKE', 'FRANCIZ', 'JIMENEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(530, '2020-02505', 'AHMADNUR', 'HADJULA', 'JUL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(531, '2022-01064', 'GERALD LLOYD', 'SANTOS', 'LABACANACRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(532, '2021-00253', 'ZACHARY JOSIAH', 'MEJICA', 'LABANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(533, '2022-05098', 'KIANN LLOYD', 'EBAL', 'LAYAM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(534, '2019-01419', 'BLU CARLO', 'GARCIA', 'LIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(535, '2022-01094', 'MATTHEW ED', 'MIAO', 'LIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(536, '2022-05043', 'ALFAITH MAE', 'MALANOG', 'LUZON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(537, '2022-01084', 'REIGN IAN', 'CARREON', 'MAGNO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(538, '2022-01475', 'REZIER JOHN', 'OLIVERIO', 'MAGNO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(539, '2022-01193', 'RANDOLF MARIE', 'GENA', 'MARBA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(540, '2021-05480', 'ELOUISA JOY', 'ALVIAR', 'MARCELINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(541, '2022-01079', 'JOHN MATHEW', 'BAGUIO', 'MAURICIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(542, '2015-02692', 'ALVAN JAY', 'CANENCIA', 'MAYRAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(543, '2022-01190', 'JOSH', 'ABIL', 'MENDOZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(544, '2022-01077', 'FATIMA VIANCA', 'BOCALAN', 'MUSA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(545, '2022-01110', 'JETHRO EZEKIEL', 'REYES', 'NATIVIDAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(546, '2022-01104', 'EMMANUEL', 'JOHN', 'NUÑEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(547, '2022-01085', 'PAUL DANIEL', 'JABINAR', 'OJALES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(548, '2022-01105', 'JAZZER', 'ARBOLEDA', 'ONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(549, '2022-01050', 'RUTHIEMY', 'KILAT', 'ORIBELLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(550, '2021-00221', 'ROLAND JAY', 'JAUD', 'PADA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(551, '2022-01090', 'CARL MOSSES', 'BARCELON', 'RAMOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(552, '2022-01052', 'JERARD', 'JAMILON', 'REGALADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(553, '2022-01108', 'JOHN', 'HAROLD', 'REMIGIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(554, '2022-01092', 'ASHLY ROSE', 'SARDAN', 'ROSCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(555, '2022-01058', 'JOHN CASPER', 'GALANAN', 'SANTOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(556, '2022-01122', 'ALFAISAL', 'MUHALLI', 'SAPPARI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(557, '2022-01066', 'ALDRIKZ', 'NATIVIDAD', 'SUAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(558, '2021-03512', 'ALFRED', 'SAMSON', 'TAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(559, '2022-01088', 'ALLEN BERNARD', 'MOSQUERA', 'TAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(560, '2022-05134', 'MOH. AHADDIN ', 'DAUP', 'TATI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(561, '2022-01199', 'MARIE COLLEEN', 'ELLO', 'TINGAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(562, '2022-01148', 'HUI', 'FON', 'TULAWE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(563, '2022-01059', 'AL STEVEN', 'JOHN PENUELA', 'TUMIMBANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(564, '2022-01710', 'INDIRA', 'MOJON', 'ULAH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(565, '2020-01317', 'USHLIE MAE', 'URBANO', 'UNGAYA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(566, '2022-01091', 'PUTLI RAHEMA', 'ORO', 'USAMA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(567, '2022-01061', 'GREYBIN JON', 'SANTOS', 'VALEROS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(568, '2021-02267', 'RONALD', 'LACEDA', 'ALJAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(569, '2021-01114', 'MICAELA', 'DIVINA', 'ANGELES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(570, '2021-01466', 'CASSANDRA MAE', 'ASUNCION', 'BACO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(571, '2021-00847', 'REGINE', 'BANCIL', 'BAGALANGIT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(572, '2021-00166', 'XAVIER KIM', 'SAAVEDRA', 'BALITA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(573, '2021-01522', 'GLENN FORD', 'SIAROT', 'BONHART', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(574, '2021-00530', 'RANIELLE DAE', 'ALDABE', 'DELOS REYES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(575, '2021-04626', 'KRISTOFER IVAN', 'AREVALO', 'DOLAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(576, '2021-02209', 'JOPEL', 'EROLON', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(577, 'ESU-IPIL-2019-00030', 'STEPHANIE', 'PASCULADO', 'ESTOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(578, '2021-00267', 'JEFFREY NIÑO', 'GALVEZ', 'FRANCISCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(579, 'ESU-TUNG-2021-02844', 'KRISTINA MARIE', 'VENTURA', 'GADEM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(580, '2021-00185', 'NOIME', 'DEVERA', 'GAJIGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(581, '2021-00807', 'JOHNNERI', 'JOHNNERI', 'GARCIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(582, '2020-01254', 'JAPETH', 'ALBERTO', 'GOMEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(583, '2021-00020', 'JAZHEM', 'MUDIAKARIN', 'HAMID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(584, '2021-05023', 'DAVE MATTHEW', 'MORTE', 'IGNACIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(585, '2021-02169', 'CARL TREBOR', 'PILAPIL', 'KATALBAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(586, '2021-02591', 'JOVINCE', 'ESPIRITU', 'LACASTESANTOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(587, '2021-03935', 'JEIKA BRYLL', 'STEPHANNIE CARPIO', 'LAGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(588, '2021-00398', 'ANGELO JOHN', 'SINSUAN', 'LANDIAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(589, '2020-04202', 'BENMAR', 'PAUNDOG', 'LOBATON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(590, '2021-04780', 'ROSHELLE', 'DUKA', 'MUHAJIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(591, '2021-00211', 'ARKEO JEWEL', 'LABANG', 'PAUSAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(592, '2021-00940', 'ALJAMER', 'HYNSON', 'TAJALA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(593, '2021-01484', 'EDWIN', 'LACANARIA', 'TANORA JR.', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(594, '2021-00192', 'EZEKIEL JUDE', 'VALERO', 'VILLOCILLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(595, '2021-00126', 'FRED ANTHONY', 'DURAN', 'YU', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(596, '2024-03551', 'KIM ADRIAN', 'TORRES', 'ADALA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(597, '2024-04975', 'JOSE RAUL', 'BORONGAN', 'ADASA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(598, '2025-01654', 'MUHAMMAD SALMAN', 'AMIL', 'AIYUB', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(599, '2025-00496', 'YASSER', 'MAULANA', 'AJIJUN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(600, '2025-00640', 'JAN TROY', 'SONNY', 'ALGAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(601, '2025-00222', 'PAULA', 'SAHIMUDDIN', 'ANDAH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(602, '2022-01383', 'RANDY', 'ARRABACA', 'ANGELES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(603, '2025-00367', 'CHRISTIAN JAMES', 'ALVAREZ', 'ARBONIDA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(604, '2025-00119', 'RV', 'RONQUILLO', 'ARCENA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(605, '2025-00245', 'ROMEO', 'DUHAYLUNGSOD', 'ASTILLERO JR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(606, '2025-00372', 'NICKA VEA', 'PAGAYONAN', 'ATILANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(607, '2024-02529', 'ADRIAN ANDREY', 'MANALO', 'AUSTRIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(608, '2025-00359', 'ALIH', 'ESCOBAR', 'BACARAMAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(609, '2025-00338', 'CHRISTIAN PAUL', 'SAROSAL', 'BACUEL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(610, '2025-00329', 'PATRICIA MAE', 'PEREZ', 'BADILLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(611, '2025-01539', 'TRIXY', 'JULIAN', 'BALUCA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(612, '2025-02001', 'IAN JAMES', 'MAZO', 'BONIFACIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(613, '2025-00567', 'MARC JOSHUA', 'CAMPANER', 'CALUMPONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(614, '2025-01260', 'ERNEST DARIN', 'PASAAN', 'CONCEPCION', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(615, '2025-00428', 'JOHN CARL', 'PADILLA', 'CORDOVA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(616, '2025-01275', 'RHEY MATTHEW', 'BANCAIRIN', 'CRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(617, '2025-00521', 'RADZKHAN', 'KASIM', 'DAKKAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(618, '2025-01781', 'JOHN CARL', 'AGUIRRE', 'DELA TORRE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(619, '2025-00499', 'ANTONIO III', 'APOLINARIO', 'DEPOSITARIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL),
(620, '2025-02841', 'ROD ANGEL', 'TUBANZA', 'DOCTOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(621, '2025-00300', 'ARIEANE', 'BASILIO', 'ELLICA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(622, '2025-00416', 'MICHAELL', 'FERNANDO', 'ELUM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(623, '2025-01829', 'MARC VINCENT', 'PIÑERO', 'ENGINCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(624, '2025-01962', 'JELYAN SHA', 'GALANAN', 'EYAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(625, '2025-00122', 'JACKY LHEEYANNE', 'SUE', 'FERNANDEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(626, '2025-01172', 'KHARLLE MARC', 'HAHNJELO CHIU', 'GABO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(627, '2025-01801', 'KENNETH WILJOHN', 'AMATORIO', 'GALOPE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(628, '2025-00476', 'RYNES KYLE', 'BALAIS', 'GEALON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(629, '2025-00266', 'MARC HEZEKIEL', 'DAGALEA', 'GONGOB', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(630, '2025-02818', 'RUTH ANTONIETTE', 'BARTOLOME', 'HAMPANGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(631, '2025-00632', 'KHALID JUAINI', 'AMADO', 'HANDA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(632, '2025-01365', 'MOHAMMAD JASSIM', 'OLASO', 'HASSAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(633, '2025-02815', 'AL-JIEVAN', 'JACKARIA', 'IMBAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(634, '2025-01579', 'EDRIANA MAE', 'ANTONIO', 'ITURRALDE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(635, '2025-00638', 'LORENZO GABRIEL', 'MAGDAYAO', 'JAVIER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(636, '2025-02287', 'JAMESHAMEER', 'BAIRULLA', 'JIMSON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(637, '2025-01890', 'LOUIS', 'ADRIAN', 'JULIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(638, '2025-02814', 'FATIMA SHARRA', 'SARAWI', 'JUMAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(639, '2025-00602', 'AL-KHAISER', 'SINGSON', 'KASIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(640, '2025-01013', 'LESTER', 'GEGONE', 'LAMO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(641, '2025-00945', 'MAYNARD', 'ROMANO', 'LEGASPI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(642, '2025-00618', 'JHAY NATHANIEL', 'YAP', 'MABOLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(643, '2025-00398', 'BRANDON ROSS', 'CALIXTRO', 'MANDI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `student_id`, `first_name`, `middle_name`, `last_name`, `birthday`, `suffix`, `gender`, `course`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrollment_status`, `enrollment_date`, `enrolled_semester`, `created_at`, `updated_at`, `deleted_at`, `section`, `fathers_name`, `mothers_name`, `student_contact`) VALUES
(644, '2025-00512', 'JAIRUS KYLE', 'SOLER', 'MARTILLANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(645, '2022-00814', 'RANDALL WALLACE', 'ESPINOSA', 'MERCADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(646, '2025-00909', 'FATIMAH JEHANNE', 'NAWALI', 'MIHASUN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(647, '2025-00525', 'KENECHE', 'BASINANG', 'MUSA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(648, '2025-01186', 'WARJAMIL', 'UMLANG', 'NASSAE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(649, '2025-00360', 'ANGELO', 'CORAZA', 'NAVIDAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(650, '2025-00333', 'DANIEL JOSEPH', 'ARABEJO', 'OBIDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(651, '2025-01070', 'KRYSTEL ANN', 'SILAY', 'OMATANG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(652, '2025-00739', 'GABRIEL RHENZ', 'NIKOLAI REYES', 'PAREL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(653, '2025-01345', 'ROSE-ANN', 'GUZMAN', 'PRAICO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(654, '2025-00305', 'NADZRA', 'JADIL', 'QUE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(655, '2025-00483', 'CARL', 'JOSHUA', 'RAMONAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(656, '2025-00991', 'JOHN RAFAEL', 'BADA', 'RAMOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(657, '2025-00934', 'EXCEL JAN', 'ARAZA', 'RELUYA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(658, '2025-00348', 'ADRIENNE', 'REMIGIO', 'ROSALADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(659, '2025-00399', 'AL-SAUD', 'ABDULHAKIM', 'SADDARI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(660, '2025-01757', 'YUSEF-HALBI', 'KADIL', 'SALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(661, '2025-00243', 'CAITLIN MAE', 'BALAN', 'SAMONTE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(662, '2025-00523', 'REYMIE', 'RAMILLANO', 'SANTURAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(663, '2025-00332', 'JOSS KAISSER', 'ANDUNG', 'SAPLAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(664, '2025-00090', 'RAIN', 'VALERIE', 'SELGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(665, '2025-00186', 'CHRISTIAN BHONG', 'BENIGNO', 'SERNA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(666, '2025-00370', 'CASSANDRA ANGELICA', 'GONZALES', 'SOLIS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(667, '2025-00637', 'KURT IVAN', 'MANFRED', 'TABLANDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(668, '2025-00832', 'KEITH DENISE', 'DELOS REYES', 'TAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(669, '2023-00990', 'AARON AZIIZ', 'MIANG', 'TANGKAAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(670, '2025-00261', 'JHYNO EDRAIN', 'ARCIPE', 'TANGLAO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(671, '2025-00103', 'KRYSSA FRANZ', 'DAYTO', 'TARROZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(672, '2025-01831', 'AL-QUIDZRA', 'FRANCISCO', 'TULAWIE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(673, '2025-00606', 'ABBY', 'PANGAN', 'UNGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(674, '2025-01900', 'GIAN MATTHEW', 'TURCO', 'VELASQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(675, '2025-00574', 'TERRANCE JEZREEL', 'MANAIT', 'YENKO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(676, '2024-03351', 'KENNETH REEVES', 'CUIZON', 'BADILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(677, '2025-03057', 'RICHARD', 'B', 'BANQUERIGO JR.', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(678, '2024-01500', 'PRINCESS', 'LORAINE', 'BARTOLOME', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(679, '2024-01387', 'MARK LESTER', 'NURULLA', 'CORDOVILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(680, '2024-01609', 'ARJAY', 'ARJAY', 'DARAMAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(681, '2015-03845', 'ALKHAMIR', 'KUNDING', 'DATU DAKULA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(682, '2024-01691', 'MARC ROLAND', 'DAGAYLOAN', 'DE ZENA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(683, '2024-01765', 'KEVIN KRISTOFFER', 'NUQUI', 'DELA CRUZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(684, '2024-02051', 'JESSA', 'ABAYLE', 'FLORES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(685, '2024-02448', 'BRYAN JAMES', 'ALFONSO', 'GARCIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(686, '2024-02866', 'QAISER', 'TUTTUH', 'HAMID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(687, '2024-01400', 'AL JOHN', 'TOLOSA', 'ISMAEL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(688, '2024-01614', 'ADAM NATHANIEL', 'ARAMAN', 'ITURALDE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(689, '2024-03298', 'ZHANJIANAH', 'TABILIN', 'JAJI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(690, '2024-02878', 'DAICIREE', 'MAQUILANG', 'LABADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(691, '2024-01751', 'EDRIAN JAMES', 'LATINGA', 'LABASTILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(692, '2024-02230', 'LIBERTY', 'VILLAJUAN', 'LIBRE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(693, '2024-03485', 'PATRICK ANGELO', 'MATLI', 'LLORENTE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(694, '2024-01601', 'BENEDICT', 'SANSON', 'LORENZO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(695, '2024-01201', 'JOY MARVIE', 'LAGRIMAS', 'LUCERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(696, '2024-01335', 'RIZZY LOURESSE', 'ALCAIDE', 'MACARAMPAT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(697, '2023-02672', 'GREALLE SJEEG', 'DEL ROSARIO', 'MASUKI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(698, '2024-01453', 'ALWINA', 'JARADIL', 'MOHAMMAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(699, '2024-04747', 'XEAN', 'JOACHIM', 'OCAPAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(700, '2025-02823', 'RASHEED', 'SALASAIN', 'OMAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(701, '2024-01297', 'PALMER VINCENT', 'BENID', 'ONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(702, '2025-02817', 'RILEY RUST', 'ABAD', 'ONRUBIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(703, '2024-03547', 'KURT ANTHONY', 'MARCOS', 'ORTEGA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(704, '2023-03078', 'AL MUDZHABAR', 'ALLAMA', 'PAKKIH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(705, '2024-03287', 'RAZDY', 'ALIH', 'PUNGUTAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(706, '2024-01708', 'JEOFF NIKKO', 'AMABAO', 'RICAFORT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(707, '2024-02042', 'EULA GRACIELLA', 'FAYLUGA', 'RODRIGUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(708, '2020-00073', 'ROY JHAN', 'CALOTES', 'RODRIGUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(709, '2024-03345', 'ANGEL NICOLE', 'AYAWAN', 'ROJAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(710, '2024-02088', 'MARC GABRIEL', 'DILAPDILAP', 'ROMERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(711, '2024-01460', 'JOHNY JANE', 'SAMSON', 'SAAVEDRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(712, '2024-01341', 'PRINCESS SHAIRA', 'MAE BAYABOS', 'SAILELA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(713, '2024-02650', 'ABNER JR', 'BERSABAL', 'SUBIBI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(714, '2024-01888', 'DIXON JR', 'COLUMBRES', 'TRUMATA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(715, '2023-00789', 'ROY CHRISTIAN', 'SILAY', 'VILLANUEVA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(716, '2024-02633', 'ALEJANDRO', 'MATA', 'ZAMBALES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(717, '2024-01442', 'KERR XANDREX', 'CHUA', 'ZARAGOZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(718, '2023-01565', 'AVREY DOREEN', 'CONCEPCION', 'ABARRO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(719, '2023-01612', 'MOHAMMAD AZEEM', 'SAMDAIN', 'ABDU', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(720, '2023-00378', 'ALFAHAD', 'LAHAMAN', 'ADIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(721, '2023-00080', 'ADRIAN', 'BAGUIO', 'AGRAVIADOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(722, '2023-00186', 'ADRIAN ARVIN', 'MOSQUEDA', 'ALVAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(723, '2023-02126', 'JUSTIN JAMES', 'EMBOLODE', 'ALVIAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(724, '2023-00302', 'CYDRICK', 'VILLANUEVA', 'AMPARAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(725, '2022-01447', 'JOHN ERICK', 'CASTRO', 'ANACLETO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(726, '2023-01373', 'FARWENDA', 'UKAIL', 'ANCHETA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(727, '2023-00003', 'NURIZA', 'PINUANG', 'ANCHETA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(728, '2023-00217', 'MATHEW', 'TUBLE', 'ANGELES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(729, '2023-00305', 'ERICA', 'CAÑIZARES', 'AQUINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(730, '2023-01345', 'MOHAMMAD RASHDY', 'LADJABANGSA', 'AROBIE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(731, '2023-00010', 'HANNAH JEAN', 'TABAY', 'BALIMBINGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(732, '2023-00131', 'EARL KIAN', 'ANASTACIO', 'BANCAYRIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(733, '2023-00333', 'MATT AXEL', 'VARELA', 'BELTRAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(734, '2023-00423', 'GLADIEL TERRENZE', 'T', 'BERNABE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(735, '2023-00395', 'RAYTHEON DWAIN', 'JOHN ALEMANE', 'BETING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(736, '2022-01412', 'REYNAN', 'MANGUDLAY', 'BULANON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(737, '2023-00455', 'FAIRUDZ', 'LAKIBUL', 'CALVI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(738, '2023-00002', 'JENSON', 'LEGADOS', 'CANONES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(739, '2023-00462', 'ISAIAH JAMES', 'REYES', 'CARPIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(740, '2023-00100', 'NEAL JEAN', 'LAPE', 'CLARO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(741, '2023-00064', 'JOHN LLOYD', 'LICONG', 'CLIMACO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(742, '2023-00756', 'JOVANIE', 'GUMABON', 'CONCEPCION', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(743, '2023-00438', 'COLLEN', 'BRIONES', 'CUENTO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(744, '2023-00711', 'SHEENA DIANNE', 'LIM', 'DE GUZMAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(745, '2023-00349', 'DANNY', 'DELAPEÑA', 'DINGLASA JR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(746, '2023-01340', 'DANICA JEZZYLANN', 'GAY MANANGAN', 'DIONALDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(747, '2023-01727', 'DHARELLE', 'GUMIPAT', 'EBOL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(748, '2023-00179', 'PAOLO', 'ALFARO', 'EIJANSANTOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(749, '2023-00077', 'PAOLO', 'GREGORIO', 'EUBANK', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(750, '2023-00433', 'RHIMAND NIÑO', 'MACAPILI', 'FERNANDEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(751, '2023-00400', 'MIKHAIL IVAN', 'DANTE RUBIO', 'GALBAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(752, '2025-03107', 'ANGELO DE', 'PEDRO', 'GALLEROS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(753, '2018-03497', 'JOSHUA', 'GONZALES', 'GRANADA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(754, '2023-00124', 'JUNAIRAH', 'BAYAN', 'GUARINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(755, '2023-00292', 'CHARLES DOMINIC', 'OCSONA', 'GUMONDAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(756, '2023-00675', 'GANDYKHAN', 'CATIS', 'HADJULA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(757, '2023-01036', 'ALSHAIK', 'MUHALLI', 'HASSAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(758, '2023-00615', 'CHRISTIAN', 'DULACA', 'HERMINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(759, '2023-00625', 'MICHEAL LAURENCE', 'TORRALBA', 'HIPOLITO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(760, '2023-00779', 'ROD ANGELO', 'BENEDICT VENDIOLA', 'IGNACIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(761, '2023-00181', 'AR RAUF', 'JADDANI', 'IMAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(762, '2023-00207', 'BENEDICT', 'CARACA', 'JAMBRE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(763, '2023-00330', 'ALSAMHEL', 'JAUJAN', 'JAWADIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(764, '2023-04178', 'MOHAMMAD ALHUSSAIN', 'LEE', 'KALAYAKAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(765, '2023-00770', 'JASLIM', 'TINGKAHAN', 'KARIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(766, '2023-05244', 'SHADIA', 'GARDUQUE', 'LAGOYO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(767, '2022-02030', 'WILJEM', 'WILJEM', 'LAUREANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(768, '2023-01405', 'ERIC', 'BANQUIAO', 'LIBRADILLA JR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(769, '2023-05245', 'RYSELLE', 'PINEDA', 'LIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(770, '2023-00189', 'ERZHAD DOMINIC', 'SANA', 'LUTIAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(771, '2023-00294', 'PHEINZ RENEIL', 'TAMBIS', 'MAGNUN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(772, '2023-05246', 'VENNASSHIER', 'AMINULLA', 'MALALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(773, '2023-05247', 'FELIXANDRA', 'PALTINGCA', 'MALICAY', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(774, '2023-01266', 'DEN ABHAR', 'BARAHAMA', 'MAMIALA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(775, '2023-00939', 'KENNETH', 'QUIMBO', 'MIRA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(776, '2023-00140', 'FRANCIS JOHN', 'DIPUTADO', 'MIRAVILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(777, '2023-00383', 'EVANN LUKE', 'FRANCISCO', 'MONCADA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(778, '2023-00165', 'CHARLES LESLIE', 'SILDA', 'MORGAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(779, '2023-00458', 'ERN FRANCIS', 'ALVAREZ', 'NATIVIDAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(780, '2023-01267', 'FERROSE MARIE', 'JARALVE', 'OBIAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(781, '2023-00688', 'MARK CHRISTIAN', 'EBONA', 'OSUMO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(782, '2023-01520', 'PIA', 'BANUA', 'PENDERGAT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(783, '2023-01627', 'ASHLEY JADE', 'MIRANDA', 'QUICHO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(784, '2023-00716', 'MITZIE ANNE', 'VILLAFLORES', 'RAMOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(785, '2023-00428', 'JOHN ZANDER', 'SALVADOR', 'REMILLETE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(786, '2022-02743', 'HEIDI LYNN', 'PEREZ', 'RUBIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(787, '2023-05249', 'AMEER', 'SABALDE', 'SABTAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(788, '2023-00874', 'KRISTINE JANA', 'CHUA', 'SABUERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(789, '2023-01900', 'JAYNA', 'LOMONGO', 'SAHIBUL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(790, '2023-00283', 'ALDRIAN', 'MUKSAN', 'SAHID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(791, '2023-00995', 'AHMAD WAQEIN', 'JAMITO', 'SALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(792, '2022-01384', 'RHADZMIEL', 'BARA', 'SALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(793, '2023-05250', 'MARK', 'LUIS', 'SALVADOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(794, '2022-01469', 'IRENE', 'FUENTEBELLA', 'SANER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(795, '2023-00049', 'AHLAN NOUR', 'JAMIRUDDIN', 'SENCIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(796, '2023-01211', 'JOHN LAURENCE', 'MATIMATICO', 'SOLIJON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(797, '2023-05252', 'MARIAN CLAIRE', 'VERGARA', 'TALAID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(798, '2022-01407', 'MCNEELSON', 'TIBLAN', 'TAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(799, '2023-00018', 'JUSTINE', 'ALAH', 'TOONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(800, '2023-00490', 'CLAIRE', 'VIDAS', 'TUBLE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(801, '2023-01243', 'RAFSANJANI', 'MAULIDAN', 'UNAID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(802, '2023-02466', 'AMANI', 'UPAO', 'URI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(803, '2023-00937', 'AL ASRAFF', 'JIRIPAE', 'USMAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(804, '2023-00324', 'ALBRIANE JAY', 'ERUELA', 'USMAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(805, '2023-00558', 'DIANA MARI', 'EDAMA', 'VARGAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(806, '2023-01655', 'PAUL BENEDICT', 'ROBIS', 'VILLACURA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(807, '2023-01526', 'STEPHANIE', 'GANUB', 'VILLAMOR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(808, '2023-00368', 'ASHLEY NICOLE', 'NATIVIDAD', 'VILLANUEVA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL),
(809, '2023-00960', 'MARIA VICTORIA', 'JEAN MATA', 'ZAMBALES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(810, '2023-00023', 'ALDRICH', 'ENRIQUEZ', 'ZOSOBRADO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(811, '2022-00573', 'ZARHANNA', 'GALLETO', 'ABDULHARID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(812, '2022-01408', 'SHEIK AISHIR', 'SUAIB', 'ALIBASA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(813, '2022-00851', 'MOHAMMAD AMEER', 'INDAL', 'ALPHA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(814, '2022-01610', 'HEDRIAN DUNN', 'PASTORES', 'ALVAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(815, '2022-00607', 'FRANCK JUMAR', 'PELAYO', 'AMING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(816, '2019-01065', 'NUR ALI', 'PASANG', 'ANUPOL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(817, '2022-01518', 'ANTONIO', 'MIGUEL', 'APOSTOL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(818, '2022-01470', 'XENDREX', 'MANGONA', 'ARASAD', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(819, '2020-01877', 'ANGELO', 'ROJAS', 'BELLO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(820, '2022-00764', 'RHODMIN LOU', 'BRIONES', 'BERIOSO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(821, '2022-00572', 'DANISA', 'TOLORIO', 'BILIRAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(822, '2022-01374', 'JOHN PATRICK', 'ESTACIO', 'BUCOL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(823, '2022-01365', 'JOHN MCHALES', 'PATIÑO', 'BUENAVENTURA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(824, '2022-01427', 'CLARENCE', 'GOMEZ', 'CABRERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(825, '2022-00586', 'KERTH NATHANIEL', 'DUQUE', 'CANDA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(826, '2017-00391', 'GERHUB', 'RAMOS', 'DALAGUIT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(827, '2022-01621', 'ANDY', 'RILG', 'DINAMPO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(828, '2020-00664', 'MARJOUK', 'MUSA', 'ELLIH', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(829, '2022-04953', 'EARN LAWRENCE', 'MACADAMI', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(830, '2022-01369', 'ROBBY PATRICK', 'BAUTISTA', 'ENRIQUEZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(831, '2022-00603', 'RAYYAN', 'ALBAR', 'ESCANDAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(832, '2022-00570', 'JULIANA MIKYLA', 'MILLAN', 'ESCUDERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(833, '2022-01411', 'AARON JESS', 'ABUCAY', 'FLORES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(834, '2022-00843', 'CHRISTIAN', 'CAÑETE', 'FRANCISCO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(835, '2022-01468', 'NICHARD', 'DIAZ', 'GAJELES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(836, '2022-01396', 'LADY MELODILUZ', 'AMATORIO', 'GALOPE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(837, '2022-00809', 'AR SHAREEF', 'ADJARANI', 'HABER', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(838, '2022-00848', 'ALKHABIR', 'GATINAO', 'HAJIHIL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(839, '2022-00811', 'OMBRE', 'VASQES', 'HAMSIRANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(840, '2022-00803', 'ROLAND DAVE', 'BULAGAO', 'IRABON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(841, '2022-00771', 'MOHAMMAD AL', 'ESSA AQUILAN', 'JAMILON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(842, '2022-00790', 'JOHN EMMAN', 'LAKIAN', 'JUAQUERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(843, '2022-04927', 'ARZEL', 'LAKIAN', 'KALINGGALAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(844, '2022-00846', 'JHUDE', 'VELARIO', 'MADROÑAL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(845, '2022-00596', 'CLIFFORD', 'VILLAGANAS', 'MAGNO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(846, '2019-01187', 'CHRISTIAN', '', 'MARCOS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(847, '2022-00750', 'KAREL', 'INOCENTE', 'MORALES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(848, '2021-00328', 'JADEN', 'LIM', 'MOSOT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(849, '2022-01616', 'JOHN BASIL', 'ANDRE PEPITO', 'MULA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(850, '2022-02503', 'GUILMAR', 'ACABO', 'QUIMBA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(851, '2022-05248', 'ABU JAHID', 'HATAMAN', 'ROJAS MATEO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(852, '2022-01368', 'EJAY', 'GAYACAO', 'RULONA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(853, '2022-01394', 'PRINCESS', 'FRANCISCO', 'SAGARIO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(854, '2022-00590', 'MOHAMMAD ALDRIN', 'NAWADIL', 'SAID', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(855, '2022-01067', 'JULIANA MAE', 'ELLOREG', 'SALATAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(856, '2011-01795', 'VENARD JHON', 'CABAHUG', 'SALIDO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(857, '2022-01320', 'MARWINA', 'DAMALAN', 'SAMSON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `student_id`, `first_name`, `middle_name`, `last_name`, `birthday`, `suffix`, `gender`, `course`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrollment_status`, `enrollment_date`, `enrolled_semester`, `created_at`, `updated_at`, `deleted_at`, `section`, `fathers_name`, `mothers_name`, `student_contact`) VALUES
(858, '2022-00786', 'SANTIAGO', 'LABSILICA', 'SANTIAGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(859, '2022-04534', 'JO LOUIS', 'BALDOS', 'SARDANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(860, '2022-00829', 'KENDRICK', 'URO', 'SERRANO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(861, '2022-00760', 'JONES IVAN', 'LUNGAS', 'SEVILLA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(862, '2022-01409', 'ALEKXIZ', 'TAN', 'SOLIS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(863, '2022-01370', 'ALDWIN', 'NATIVIDAD', 'SUAREZ', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(864, '2022-00772', 'ABDEL AZIZ', 'BAITING', 'TEBBENG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(865, '2022-01473', 'BRYLLE', 'MITRA', 'UMIPIG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(866, '2022-01375', 'IAN BULLET', 'JOHN QUIZON', 'URMANITA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(867, '2021-02102', 'CARLOS GABRIELLE', 'BUNGCASAN', 'VALERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(868, '2022-01378', 'NOELLENE PEARL', 'ARNOCO', 'VILLARCAMPO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(869, '2020-01874', 'ABDEL NAIF', 'PAKING', 'BALACUIT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(870, '2019-00907', 'RASHIDA', 'LAPINIG', 'BERTO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(871, '2021-05289', 'ANAS MOHAMMAD', 'EMBAY', 'DEMONTEVERDE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(872, '2020-03755', 'KEITH JOHN', 'R', 'GONZALES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(873, '2021-00428', 'IVAN', 'SAGRADO', 'GUERRERO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(874, '2020-01908', 'HAFIZ', 'JAMIRI', 'JAMIRI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(875, '2018-03053', 'MARK KENNETH', 'GIL', 'LAGARNIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(876, '2020-01913', 'KIMHAR', 'ALPHA', 'LIM', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(877, '2018-02809', 'MARC JOHN', 'COSME', 'MAGBANUA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(878, '2020-02717', 'AL RASHID', 'ENESANDO', 'MAHALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(879, '2021-00459', 'NICO JADE', 'DUMPIT', 'PLANAS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(880, '2020-01938', 'DOROTHY SHAINE', 'QUIBILAN', 'SAMSON', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(881, '2021-01059', 'NURHALISHA', 'SALIH', 'SARI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(882, '2021-02302', 'RIEANBOB', 'UMIPIG', 'SIBUL', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(883, '2021-00700', 'SOPHIA', 'ESPINOSA', 'TOLOSA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(884, '2021-00623', 'YURIKO JOAQUIN', 'SANTIAGO', 'TORRES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(885, '2018-02454', 'GABRIEL', 'MONTAÑER', 'YBERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(886, '2025-03229', 'LAURIE JAYNE', 'SAAVEDRA', 'AGUILAR', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(887, '2008-00622', 'AL-SAAD', 'JAINAL', 'ALASA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(888, '2025-03149', 'AL RAJAB', 'HUSSAIN', 'AMING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(889, '2024-05012', 'ARVIN CRIS', 'BANAT', 'ANGELES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(890, '2015-04060', 'YUSOP', 'LAHAMAN', 'ARALI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(891, '2024-04974', 'JOBEN', 'LARROZA', 'BAIGTU', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(892, '2018-02331', 'SHERARD CHRIS', 'BAYANI', 'BANQUERIGO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(893, '2004-30238', 'MICHAEL', 'NATIVIDAD', 'BELARMINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(894, '2025-03337', 'ALVIN', 'BENITEZ', 'BERDANDINO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(895, '2022-04921', 'SARAH MAE', 'ALFARO', 'CAMENFORTE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(896, '2025-03230', 'VINCE LORDWILL', 'SOLIS', 'CONSTANTE', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(897, '2007-00805', 'JOEAN MARK', 'BENAVINTE', 'HIOLIN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(898, '2018-02330', 'VIN CZAR', 'RAVECHE', 'JAILANI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(899, '2019-01198', 'MOHAMMAD SALI', 'SANGKA', 'JAUHARI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(900, '2022-04773', 'JENDEN', 'MAHARI', 'JULKAMRI', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(901, '01-3383-05', 'JERWIN', 'P', 'KUNNIG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(902, '2025-03380', 'IAN DAVE', 'EVARDO', 'LEMERA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(903, '2025-03148', 'HAMIER-KHAN', 'MAMMAH', 'LINCOLN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(904, '2025-03150', 'MASHUR', 'ISMAEL', 'LINDONG', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(905, '2016-00083', 'AZLINA ZANARIAH', 'MUHIDDIN', 'MALIK', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(906, '2009-00939', 'EMILY', 'A', 'MATULAC', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(907, '2018-03141', 'WENCEL ANGELO', 'ALFARO', 'MATURAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(908, 'ESU-TUNG-2018-00737', 'JAYMARK', 'FERNANDEZ', 'MENDOZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(909, '2025-03151', 'NAGDIR', 'BADIH', 'MUHADJA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(910, '2025-03336', 'JUMEL', 'MANLANGIT', 'MURING', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(911, '2024-04431', 'GLAIZA', 'KALBI', 'MUSTAPHA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(912, '2015-01497', 'FATIMA MERCY', 'ABDULSABUR', 'ONRUBIA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(913, '2025-03379', 'JOHN EARL', 'RACINES', 'QUIROS', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(914, '95037505', 'JAYSON', 'V', 'REYES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(915, '2012-01492', 'JERICO', 'BERNARDO', 'TAN', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(916, '2020-02175', 'ROSELYN', 'ABIERA', 'TARROZA', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(917, '2018-02329', 'MARK ANTHONY', 'DAR', 'TUBAT', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(918, '2025-03228', 'JAYSON', 'SABACHO', 'TUBO', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL),
(919, '2024-04430', 'CELSO JR', 'ERANG', 'VAILOCES', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 'n/a', 'n/a', NULL, NULL, NULL, 'Enrolled', NULL, NULL, '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_address` varchar(255) DEFAULT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `mother_occupation` varchar(255) DEFAULT NULL,
  `parent_guardian_name` varchar(255) DEFAULT NULL,
  `parent_guardian_contact` varchar(255) DEFAULT NULL,
  `number_of_sisters` int(11) DEFAULT NULL,
  `number_of_brothers` int(11) DEFAULT NULL,
  `ordinal_position` int(11) DEFAULT NULL,
  `enrolled_semester` varchar(255) DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  `year_level` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `student_id`, `semester_id`, `course`, `section`, `created_at`, `updated_at`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrolled_semester`, `enrollment_date`, `year_level`, `deleted_at`) VALUES
(1, 1, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(2, 2, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(3, 3, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(4, 4, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(5, 5, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(6, 6, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(7, 7, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(8, 8, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(9, 9, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(10, 10, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(11, 11, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(12, 12, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(13, 13, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(14, 14, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(15, 15, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(16, 16, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(17, 17, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(18, 18, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(19, 19, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(20, 20, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(21, 21, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(22, 22, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(23, 23, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(24, 24, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(25, 25, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(26, 26, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(27, 27, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(28, 28, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(29, 29, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(30, 30, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(31, 31, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(32, 32, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(33, 33, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(34, 34, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(35, 35, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(36, 36, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(37, 37, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(38, 38, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(39, 39, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(40, 40, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(41, 41, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(42, 42, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(43, 43, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(44, 44, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(45, 45, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(46, 46, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(47, 47, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(48, 48, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:53', '2025-09-24 03:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(49, 49, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(50, 50, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(51, 51, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(52, 52, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(53, 53, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(54, 54, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(55, 55, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(56, 56, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(57, 57, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(58, 58, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(59, 59, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(60, 60, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(61, 61, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(62, 62, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(63, 63, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(64, 64, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(65, 65, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(66, 66, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(67, 67, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(68, 68, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(69, 69, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(70, 70, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(71, 71, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(72, 72, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(73, 73, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(74, 74, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(75, 75, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(76, 76, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(77, 77, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(78, 78, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(79, 79, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(80, 80, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(81, 81, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(82, 82, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(83, 83, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(84, 84, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(85, 85, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(86, 86, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(87, 87, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(88, 88, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(89, 89, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(90, 90, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(91, 91, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(92, 92, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(93, 93, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(94, 94, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(95, 95, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(96, 96, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(97, 97, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(98, 98, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(99, 99, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(100, 100, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(101, 101, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(102, 102, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(103, 103, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(104, 104, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(105, 105, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(106, 106, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(107, 107, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(108, 108, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(109, 109, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(110, 110, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(111, 111, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(112, 112, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(113, 113, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(114, 114, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(115, 115, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(116, 116, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(117, 117, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(118, 118, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(119, 119, 1, 'ACT-AD', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(120, 120, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(121, 121, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(122, 122, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(123, 123, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(124, 124, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(125, 125, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(126, 126, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(127, 127, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(128, 128, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(129, 129, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(130, 130, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(131, 131, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(132, 132, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(133, 133, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(134, 134, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(135, 135, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(136, 136, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(137, 137, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(138, 138, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(139, 139, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(140, 140, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(141, 141, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(142, 142, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(143, 143, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(144, 144, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(145, 145, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(146, 146, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(147, 147, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(148, 148, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(149, 149, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(150, 150, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(151, 151, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(152, 152, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(153, 153, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(154, 154, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(155, 155, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(156, 156, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(157, 157, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(158, 158, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(159, 159, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(160, 160, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(161, 161, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(162, 162, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(163, 163, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(164, 164, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(165, 165, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(166, 166, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(167, 167, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(168, 168, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(169, 169, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(170, 170, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(171, 171, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(172, 172, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(173, 173, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(174, 174, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(175, 175, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(176, 176, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(177, 177, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(178, 178, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(179, 179, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(180, 180, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(181, 181, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(182, 182, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(183, 183, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(184, 184, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(185, 185, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(186, 186, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(187, 187, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(188, 188, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(189, 189, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(190, 190, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(191, 191, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(192, 192, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(193, 193, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(194, 194, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(195, 195, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(196, 196, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(197, 197, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(198, 198, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(199, 199, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(200, 200, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(201, 201, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(202, 202, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(203, 203, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(204, 204, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(205, 205, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(206, 206, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(207, 207, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(208, 208, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(209, 209, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(210, 210, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(211, 211, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(212, 212, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(213, 213, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(214, 214, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(215, 215, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(216, 216, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(217, 217, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(218, 218, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(219, 219, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(220, 220, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(221, 221, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(222, 222, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(223, 223, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(224, 224, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(225, 225, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(226, 226, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(227, 227, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(228, 228, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(229, 229, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(230, 230, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(231, 231, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(232, 232, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(233, 233, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(234, 234, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(235, 235, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(236, 236, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(237, 237, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(238, 238, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(239, 239, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(240, 240, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:54', '2025-09-24 03:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(241, 241, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(242, 242, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(243, 243, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(244, 244, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(245, 245, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(246, 246, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(247, 247, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(248, 248, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(249, 249, 1, 'ACT-NT', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(250, 250, 1, 'BS CS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(251, 251, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(252, 252, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(253, 253, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(254, 254, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(255, 255, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(256, 256, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(257, 257, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(258, 258, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(259, 259, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(260, 260, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(261, 261, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(262, 262, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(263, 263, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(264, 264, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(265, 265, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(266, 266, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(267, 267, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(268, 268, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(269, 269, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(270, 270, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(271, 271, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(272, 272, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(273, 273, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(274, 274, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(275, 275, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(276, 276, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(277, 277, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(278, 278, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(279, 279, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(280, 280, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(281, 281, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(282, 282, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(283, 283, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(284, 284, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(285, 285, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(286, 286, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(287, 287, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(288, 288, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(289, 289, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(290, 290, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(291, 291, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(292, 292, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(293, 293, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(294, 294, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(295, 295, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(296, 296, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(297, 297, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(298, 298, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(299, 299, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(300, 300, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(301, 301, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(302, 302, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(303, 303, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(304, 304, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(305, 305, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(306, 306, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(307, 307, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(308, 308, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(309, 309, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(310, 310, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(311, 311, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(312, 312, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(313, 313, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(314, 314, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(315, 315, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(316, 316, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(317, 317, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(318, 318, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(319, 319, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(320, 320, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(321, 321, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(322, 322, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(323, 323, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(324, 324, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(325, 325, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(326, 326, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(327, 327, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(328, 328, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(329, 329, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(330, 330, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(331, 331, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(332, 332, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(333, 333, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(334, 334, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(335, 335, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(336, 336, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(337, 337, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(338, 338, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(339, 339, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(340, 340, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL);
INSERT INTO `student_profiles` (`id`, `student_id`, `semester_id`, `course`, `section`, `created_at`, `updated_at`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrolled_semester`, `enrollment_date`, `year_level`, `deleted_at`) VALUES
(341, 341, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(342, 342, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(343, 343, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(344, 344, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(345, 345, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(346, 346, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(347, 347, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(348, 348, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(349, 349, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(350, 350, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(351, 351, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(352, 352, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(353, 353, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(354, 354, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(355, 355, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(356, 356, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(357, 357, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(358, 358, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(359, 359, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(360, 360, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(361, 361, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(362, 362, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(363, 363, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(364, 364, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(365, 365, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(366, 366, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(367, 367, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(368, 368, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(369, 369, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(370, 370, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(371, 371, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(372, 372, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(373, 373, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(374, 374, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(375, 375, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(376, 376, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(377, 377, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(378, 378, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(379, 379, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(380, 380, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(381, 381, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(382, 382, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(383, 383, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(384, 384, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(385, 385, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(386, 386, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(387, 387, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(388, 388, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(389, 389, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(390, 390, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(391, 391, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(392, 392, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(393, 393, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(394, 394, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(395, 395, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(396, 396, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(397, 397, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(398, 398, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(399, 399, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(400, 400, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(401, 401, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(402, 402, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(403, 403, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(404, 404, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(405, 405, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(406, 406, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(407, 407, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(408, 408, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(409, 409, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(410, 410, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(411, 411, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(412, 412, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(413, 413, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(414, 414, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(415, 415, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(416, 416, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(417, 417, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(418, 418, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(419, 419, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(420, 420, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(421, 421, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(422, 422, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(423, 423, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(424, 424, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(425, 425, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(426, 426, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(427, 427, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(428, 428, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(429, 429, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(430, 430, 1, 'BSCS', 'N/A', '2025-09-24 03:55:55', '2025-09-24 03:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(431, 431, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(432, 432, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(433, 433, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(434, 434, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(435, 435, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(436, 436, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(437, 437, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(438, 438, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(439, 439, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(440, 440, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(441, 441, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(442, 442, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(443, 443, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(444, 444, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(445, 445, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(446, 446, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(447, 447, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(448, 448, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(449, 449, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(450, 450, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(451, 451, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(452, 452, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(453, 453, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(454, 454, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(455, 455, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(456, 456, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(457, 457, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(458, 458, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(459, 459, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(460, 460, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(461, 461, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(462, 462, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(463, 463, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(464, 464, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(465, 465, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(466, 466, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(467, 467, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(468, 468, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(469, 469, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(470, 470, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(471, 471, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(472, 472, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(473, 473, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(474, 474, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(475, 475, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(476, 476, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(477, 477, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(478, 478, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(479, 479, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(480, 480, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(481, 481, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(482, 482, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(483, 483, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(484, 484, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(485, 485, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(486, 486, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(487, 487, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(488, 488, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(489, 489, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(490, 490, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(491, 491, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(492, 492, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(493, 493, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(494, 494, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(495, 495, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(496, 496, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(497, 497, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(498, 498, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(499, 499, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(500, 500, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(501, 501, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(502, 502, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(503, 503, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(504, 504, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(505, 505, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(506, 506, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(507, 507, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(508, 508, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(509, 509, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(510, 510, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(511, 511, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(512, 512, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(513, 513, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(514, 514, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(515, 515, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(516, 516, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(517, 517, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(518, 518, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(519, 519, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(520, 520, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(521, 521, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(522, 522, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(523, 523, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(524, 524, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(525, 525, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(526, 526, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(527, 527, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(528, 528, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(529, 529, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(530, 530, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(531, 531, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(532, 532, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(533, 533, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(534, 534, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(535, 535, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(536, 536, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(537, 537, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(538, 538, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(539, 539, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(540, 540, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(541, 541, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(542, 542, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(543, 543, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(544, 544, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(545, 545, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(546, 546, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(547, 547, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(548, 548, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(549, 549, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(550, 550, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(551, 551, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(552, 552, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(553, 553, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(554, 554, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(555, 555, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(556, 556, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(557, 557, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(558, 558, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(559, 559, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(560, 560, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(561, 561, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(562, 562, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(563, 563, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(564, 564, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(565, 565, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(566, 566, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(567, 567, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(568, 568, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(569, 569, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(570, 570, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(571, 571, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(572, 572, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(573, 573, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(574, 574, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(575, 575, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(576, 576, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(577, 577, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(578, 578, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(579, 579, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(580, 580, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(581, 581, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(582, 582, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(583, 583, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(584, 584, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(585, 585, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(586, 586, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(587, 587, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(588, 588, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(589, 589, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(590, 590, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(591, 591, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(592, 592, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(593, 593, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(594, 594, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(595, 595, 1, 'BSCS', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(596, 596, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(597, 597, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(598, 598, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(599, 599, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(600, 600, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(601, 601, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(602, 602, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(603, 603, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(604, 604, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(605, 605, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(606, 606, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(607, 607, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(608, 608, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(609, 609, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(610, 610, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(611, 611, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(612, 612, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(613, 613, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(614, 614, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(615, 615, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(616, 616, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(617, 617, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(618, 618, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(619, 619, 1, 'BSIT', 'N/A', '2025-09-24 03:55:56', '2025-09-24 03:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(620, 620, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(621, 621, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(622, 622, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(623, 623, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(624, 624, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(625, 625, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(626, 626, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(627, 627, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(628, 628, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(629, 629, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(630, 630, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(631, 631, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(632, 632, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(633, 633, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(634, 634, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(635, 635, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(636, 636, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(637, 637, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(638, 638, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(639, 639, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(640, 640, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(641, 641, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(642, 642, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(643, 643, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(644, 644, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(645, 645, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(646, 646, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(647, 647, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(648, 648, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(649, 649, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(650, 650, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(651, 651, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(652, 652, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(653, 653, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(654, 654, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(655, 655, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(656, 656, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(657, 657, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(658, 658, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(659, 659, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(660, 660, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(661, 661, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(662, 662, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(663, 663, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(664, 664, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(665, 665, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(666, 666, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(667, 667, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(668, 668, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(669, 669, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(670, 670, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(671, 671, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(672, 672, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(673, 673, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(674, 674, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(675, 675, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(676, 676, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(677, 677, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(678, 678, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(679, 679, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(680, 680, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(681, 681, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(682, 682, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL);
INSERT INTO `student_profiles` (`id`, `student_id`, `semester_id`, `course`, `section`, `created_at`, `updated_at`, `home_address`, `father_occupation`, `mother_occupation`, `parent_guardian_name`, `parent_guardian_contact`, `number_of_sisters`, `number_of_brothers`, `ordinal_position`, `enrolled_semester`, `enrollment_date`, `year_level`, `deleted_at`) VALUES
(683, 683, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(684, 684, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(685, 685, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(686, 686, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(687, 687, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(688, 688, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(689, 689, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(690, 690, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(691, 691, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(692, 692, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(693, 693, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(694, 694, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(695, 695, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(696, 696, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(697, 697, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(698, 698, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(699, 699, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(700, 700, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(701, 701, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(702, 702, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(703, 703, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(704, 704, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(705, 705, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(706, 706, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(707, 707, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(708, 708, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(709, 709, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(710, 710, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(711, 711, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(712, 712, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(713, 713, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(714, 714, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(715, 715, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(716, 716, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(717, 717, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(718, 718, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(719, 719, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(720, 720, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(721, 721, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(722, 722, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(723, 723, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(724, 724, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(725, 725, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(726, 726, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(727, 727, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(728, 728, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(729, 729, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(730, 730, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(731, 731, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(732, 732, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(733, 733, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(734, 734, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(735, 735, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(736, 736, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(737, 737, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(738, 738, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(739, 739, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(740, 740, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(741, 741, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(742, 742, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(743, 743, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(744, 744, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(745, 745, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(746, 746, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(747, 747, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(748, 748, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(749, 749, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(750, 750, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(751, 751, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(752, 752, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(753, 753, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(754, 754, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(755, 755, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(756, 756, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(757, 757, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(758, 758, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(759, 759, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(760, 760, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(761, 761, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(762, 762, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(763, 763, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(764, 764, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(765, 765, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(766, 766, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(767, 767, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(768, 768, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(769, 769, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(770, 770, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(771, 771, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(772, 772, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(773, 773, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(774, 774, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(775, 775, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(776, 776, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(777, 777, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(778, 778, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(779, 779, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(780, 780, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(781, 781, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(782, 782, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(783, 783, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(784, 784, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(785, 785, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(786, 786, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(787, 787, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(788, 788, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(789, 789, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(790, 790, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(791, 791, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(792, 792, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(793, 793, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(794, 794, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(795, 795, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(796, 796, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(797, 797, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(798, 798, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(799, 799, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(800, 800, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(801, 801, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(802, 802, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(803, 803, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(804, 804, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(805, 805, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(806, 806, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(807, 807, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(808, 808, 1, 'BSIT', 'N/A', '2025-09-24 03:55:57', '2025-09-24 03:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(809, 809, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(810, 810, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(811, 811, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(812, 812, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(813, 813, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(814, 814, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(815, 815, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(816, 816, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(817, 817, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(818, 818, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(819, 819, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(820, 820, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(821, 821, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(822, 822, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(823, 823, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(824, 824, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(825, 825, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(826, 826, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(827, 827, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(828, 828, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(829, 829, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(830, 830, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(831, 831, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(832, 832, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(833, 833, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(834, 834, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(835, 835, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(836, 836, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(837, 837, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(838, 838, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(839, 839, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(840, 840, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(841, 841, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(842, 842, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(843, 843, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(844, 844, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(845, 845, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(846, 846, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(847, 847, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(848, 848, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(849, 849, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(850, 850, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(851, 851, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(852, 852, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(853, 853, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(854, 854, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(855, 855, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(856, 856, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(857, 857, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(858, 858, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(859, 859, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(860, 860, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(861, 861, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(862, 862, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(863, 863, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(864, 864, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(865, 865, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(866, 866, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(867, 867, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(868, 868, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(869, 869, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(870, 870, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(871, 871, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(872, 872, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(873, 873, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(874, 874, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(875, 875, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(876, 876, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(877, 877, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(878, 878, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(879, 879, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(880, 880, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(881, 881, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(882, 882, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(883, 883, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(884, 884, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(885, 885, 1, 'BSIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL),
(886, 886, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(887, 887, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(888, 888, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(889, 889, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(890, 890, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(891, 891, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(892, 892, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(893, 893, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(894, 894, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(895, 895, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(896, 896, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(897, 897, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(898, 898, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(899, 899, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(900, 900, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(901, 901, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(902, 902, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(903, 903, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(904, 904, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(905, 905, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(906, 906, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(907, 907, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(908, 908, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(909, 909, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(910, 910, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(911, 911, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(912, 912, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(913, 913, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(914, 914, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(915, 915, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(916, 916, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(917, 917, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(918, 918, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(919, 919, 1, 'MIT', 'N/A', '2025-09-24 03:55:58', '2025-09-24 03:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(920, 566, 2, 'BSCS', 'C', '2025-10-07 00:45:41', '2025-10-07 00:45:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(921, 1, 2, 'ACT-AD', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(922, 482, 2, 'BSCS', 'A', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(923, 483, 2, 'BSCS', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(924, 718, 2, 'BSIT', 'D', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(925, 719, 2, 'BSIT', 'C', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(926, 2, 2, 'ACT-AD', 'C', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(927, 811, 2, 'BSIT', 'A', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(928, 484, 2, 'BSCS', 'C', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(929, 333, 2, 'BSCS', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(930, 334, 2, 'BSCS', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(931, 80, 2, 'ACT-AD', 'D', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(932, 485, 2, 'BSCS', 'A', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(933, 396, 2, 'BSCS', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(934, 335, 2, 'BSCS', 'D', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(935, 596, 2, 'BSIT', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(936, 120, 2, 'ACT-NT', 'C', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(937, 336, 2, 'BSCS', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(938, 597, 2, 'BSIT', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(939, 720, 2, 'BSIT', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(940, 199, 2, 'ACT-NT', 'D', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(941, 81, 2, 'ACT-AD', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL),
(942, 3, 2, 'ACT-AD', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(943, 721, 2, 'BSIT', 'C', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL),
(944, 886, 2, 'Associate in Computer Technology', 'B', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grad', NULL),
(945, 4, 2, 'ACT-AD', 'D', '2025-10-07 00:46:51', '2025-10-07 00:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL),
(946, 509, 2, 'BSCS', 'B', '2025-10-07 00:47:33', '2025-10-07 00:47:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(947, 483, 3, 'BSCS', 'A', '2025-10-07 01:35:05', '2025-10-07 01:35:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL),
(948, 721, 3, 'BSIT', 'C', '2025-10-10 07:59:22', '2025-10-10 07:59:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_semester_enrollments`
--

CREATE TABLE `student_semester_enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `is_enrolled` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_transition`
--

CREATE TABLE `student_transition` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `original_transition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `transition_type` enum('None','Shifting In','Shifting Out','Transferring In','Transferring Out','Dropped','Returning Student','Graduated') NOT NULL,
  `from_program` varchar(255) DEFAULT NULL,
  `to_program` varchar(255) DEFAULT NULL,
  `reason_leaving` text DEFAULT NULL,
  `reason_returning` text DEFAULT NULL,
  `leave_reason` text DEFAULT NULL,
  `transition_date` date NOT NULL,
  `remark` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_transition`
--

INSERT INTO `student_transition` (`id`, `original_transition_id`, `last_name`, `first_name`, `middle_name`, `transition_type`, `from_program`, `to_program`, `reason_leaving`, `reason_returning`, `leave_reason`, `transition_date`, `remark`, `created_at`, `updated_at`, `semester_id`, `student_id`) VALUES
(1, NULL, 'AGRAVIADOR', 'ADRIAN', NULL, 'Returning Student', NULL, NULL, NULL, NULL, NULL, '2025-10-10', 'Aliqua sed ad amet aliquip minim tempor labore et ut dolor. Incididunt consectetur sed incididunt adipiscing sit. Do magna commodo tempor aliqua aliqua. Magna commodo commodo ad do adipiscing ut adipiscing ad aliqua dolore aliquip aliqua lorem. Exercitation ad dolor dolore ea sed ut incididunt eiusmod consectetur enim ullamco laboris enim aliqua. Ad consectetur commodo minim ipsum ex do labore lorem elit sed sit ad.\r\n\r\nEa consectetur quis sed nostrud dolor tempor tempor enim quis sit lorem sed ullamco adipiscing. Ex minim aliquip ea ipsum consequat elit labore ad consectetur nisi sit veniam ex. Ut dolor enim aliquip commodo ullamco.\r\n\r\nAliqua aliquip ut do ea adipiscing ullamco tempor. Aliqua labore exercitation lorem consequat elit do et ut consequat amet magna aliqua. Nisi nostrud consectetur elit eiusmod ut nostrud lorem ea sed elit aliqua. Ad sit elit do laboris magna adipiscing laboris eiusmod elit.\r\n\r\nUt ad aliquip do consequat ex adipiscing ut ullamco enim. Et aliqua ipsum nisi incididunt ea veniam amet tempor nisi exercitation consequat ut ea lorem. Commodo aliqua ut elit minim ut labore dolore. Ut enim laboris sed quis ea do enim dolore adipiscing exercitation aliqua veniam. Ut ullamco labore do aliquip aliquip.\r\n\r\nEx eiusmod ullamco amet dolore et elit aliqua sed ut ea nisi dolor nostrud. Ad et lorem sit sed aliqua. Ut ex ullamco eiusmod dolor dolor ut quis labore elit laboris. Nostrud ad dolore ad do nostrud ex minim aliqua eiusmod commodo adipiscing ad nisi laboris.\r\n\r\nAd ut incididunt ad ea ullamco minim aliqua aliquip do ut labore ut dolor sit. Do ad aliqua et tempor consequat laboris quis ullamco incididunt enim magna veniam ut. Do ex adipiscing ut nisi magna ullamco ullamco do sed eiusmod sit.\r\n\r\nConsequat ipsum eiusmod aliquip consectetur quis ad. Labore nostrud tempor labore consectetur veniam. Ut lorem ut dolore ad dolore. Ut et quis magna ipsum aliqua aliqua ex sed elit laboris commodo ad incididunt. Magna ipsum enim lorem commodo quis ad commodo.\r\n\r\nDo magna laboris magna commodo aliquip ad incididunt quis ullamco nisi lorem incididunt ut consectetur. Aliqua ipsum minim dolor enim aliqua. Do commodo sit commodo elit dolor consectetur ut et ipsum ut.\r\n\r\nUllamco labore enim nostrud et ad nisi amet. Ad aliqua minim eiusmod ad incididunt ipsum et veniam ut amet magna consequat ad do. Ut exercitation commodo et ut aliquip. Ut ullamco amet ut consequat exercitation ut ea magna ex magna. Amet ullamco veniam nisi et ex exercitation nostrud. Ipsum dolore dolor elit minim dolor sit ipsum quis ut enim ad do.\r\n\r\nDo elit ut adipiscing et quis nostrud veniam incididunt elit. Aliquip enim lorem dolor consectetur ullamco aliqua tempor minim laboris dolore ex ut et. Laboris minim aliqua sed ea ea nisi quis. Consectetur ad aliquip nisi tempor magna eiusmod laboris tempor incididunt sit consectetur. Adipiscing ut elit tempor adipiscing commodo magna.\r\n\r\nEx commodo minim nisi magna sit ut. Dolor consequat laboris labore ipsum lorem ad veniam exercitation nisi laboris. Ad ipsum ullamco ut ut ut ad labore ea. Ut magna do do eiusmod eiusmod aliquip tempor ipsum ut ad ut do commodo.\r\n\r\nUt tempor et consectetur sed nostrud nostrud ullamco exercitation laboris aliquip minim adipiscing ad labore. Nisi ad laboris ut quis sed quis ut adipiscing nisi aliqua minim. Amet veniam ex tempor magna lorem elit et consectetur ex dolor aliquip. Ipsum labore enim ipsum nisi ipsum. Elit exercitation minim ut nisi consequat dolore consequat ut ipsum ullamco laboris sit.\r\n\r\nAliqua consectetur veniam aliquip minim ullamco adipiscing tempor minim ut nostrud consequat ut. Veniam ut dolor ut consequat exercitation. Exercitation ut dolore nisi exercitation ex commodo eiusmod labore ullamco. Ex ut do tempor adipiscing ipsum sit incididunt enim et ut magna consequat sed. Lorem incididunt et sed ipsum ad adipiscing laboris. Exercitation lorem quis eiusmod consectetur sit.\r\n\r\nSed eiusmod labore sit aliquip aliquip ad dolore. Nostrud veniam consequat incididunt sed ea exercitation. Ullamco labore exercitation amet ad enim do sit amet minim minim ut.\r\n\r\nEa aliquip ea et ipsum enim veniam consectetur ex et labore sed. Aliquip laboris sit lorem ut nisi aliqua sed aliquip do ea magna elit laboris. Labore quis do eiusmod amet exercitation ut sit laboris ut aliqua commodo ad et dolore.\r\n\r\nIncididunt ad ut dolor tempor nostrud ullamco. Laboris ut do tempor enim ut. Ipsum ad sit aliquip do sit laboris exercitation nisi dolor ex sed. Ex commodo nostrud quis ex enim veniam laboris ut lorem quis aliqua. Nostrud ut ut nisi aliquip elit magna do lorem et elit. Nisi consequat quis do ad quis amet exercitation labore ut nisi commodo.\r\n\r\nUt labore magna minim nostrud veniam ut quis do do lorem ut. Exercitation labore ut sed adipiscing enim incididunt veniam sit dolor magna ipsum magna aliquip. Consequat ipsum ipsum amet minim do aliquip ut eiusmod do dolor ut.\r\n\r\nAmet sit commodo laboris ut lorem ex. Ullamco minim nisi amet dolor laboris aliquip ullamco consectetur dolor commodo exercitation. Sed ullamco consectetur nisi do quis ipsum ea nisi amet. Elit quis aliquip enim lorem ex minim magna laboris lorem nostrud ut nostrud ut ut. Laboris aliquip veniam ut dolor ex sit incididunt ea.\r\n\r\nIpsum tempor quis sed aliqua laboris elit tempor. Enim ex ut laboris aliqua incididunt aliquip ea ut laboris. Incididunt dolor consectetur ut laboris tempor nisi magna aliquip. Tempor et exercitation et sed commodo do aliqua.\r\n\r\nUllamco minim ad do ea sed minim ex nisi consequat dolor nisi laboris. Quis do nostrud tempor nisi laboris amet. Ipsum sit ad consequat magna ea. Tempor ullamco commodo elit ut lorem ad aliquip ipsum et ut tempor sit aliquip.', '2025-10-10 07:59:22', '2025-10-10 07:59:22', 3, 721);

-- --------------------------------------------------------

--
-- Table structure for table `student_transition_images`
--

CREATE TABLE `student_transition_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_transition_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_transition_images`
--

INSERT INTO `student_transition_images` (`id`, `student_transition_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'transition_images/mJaK8tHUU9iNg7SXL2figTFd2hQ1uBOmK5r3cH9v.jpg', '2025-10-10 08:48:46', '2025-10-10 08:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'sub_admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(2, 'Main Admin', 'admin@gmail.com', '2025-06-07 01:36:36', '$2y$12$Y83WxVW5AVkWHww5wrNnLODa34Na.KLgccmE3mA2dehNzMNXro4kO', 'Wd5944wBxVa3rsk1fvtACp9mmc6Cw6Cl13MemBjDGuBqBJ0iMdEnVqWnspGp', '2025-06-07 01:35:09', '2025-07-13 06:44:07', 'admin'),
(6, 'Rahema Usama', 'rahema@gmail.com', NULL, '$2y$12$6vMKX3tWmoYX6CFVb.QwW.S1OlU/bRrB49Eqn2JncRmm6L6Z5xZDG', NULL, '2025-07-13 06:28:09', '2025-07-13 06:28:09', 'sub_admin'),
(7, 'Marjorie Rojas', 'marjorie@gmail.com', NULL, '$2y$12$19.z368x2WA3aVHxiGWebea6a4Elhz4kkhoK.6cQuMXdrfWyW5OJu', NULL, '2025-07-13 06:32:49', '2025-07-13 06:32:49', 'admin'),
(8, 'Athena Maia', 'athena@gmail.com', NULL, '$2y$12$AagK5su71OVhfZAx6Oz6H.f6cI0NMSgMrgJUFgLCix6EsNMOoSplK', NULL, '2025-07-13 06:42:11', '2025-07-13 06:42:11', 'sub_admin');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year_level`, `created_at`, `updated_at`) VALUES
(1, '1', '2025-07-01 22:48:49', '2025-07-01 22:48:49'),
(2, '2', '2025-07-01 22:48:53', '2025-07-01 22:48:53'),
(3, '3', '2025-07-01 22:48:56', '2025-07-01 22:48:56'),
(6, '4', '2025-07-07 20:04:48', '2025-07-07 20:04:48'),
(7, '5', '2025-08-10 03:23:36', '2025-08-10 03:23:36'),
(8, 'Grad', '2025-08-10 03:23:44', '2025-08-10 03:23:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_student_id_foreign` (`student_id`),
  ADD KEY `contracts_semester_id_foreign` (`semester_id`),
  ADD KEY `contracts_carried_over_from_id_foreign` (`carried_over_from_id`),
  ADD KEY `fk_original_contract` (`original_contract_id`);

--
-- Indexes for table `contract_images`
--
ALTER TABLE `contract_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_images_contract_id_foreign` (`contract_id`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contract_types_type_unique` (`type`);

--
-- Indexes for table `counselings`
--
ALTER TABLE `counselings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counselings_student_id_foreign` (`student_id`),
  ADD KEY `counselings_semester_id_foreign` (`semester_id`),
  ADD KEY `counselings_original_fk` (`original_counseling_id`);

--
-- Indexes for table `counseling_images`
--
ALTER TABLE `counseling_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counseling_images_counseling_id_foreign` (`counseling_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_student_id_foreign` (`student_id`),
  ADD KEY `referrals_semester_id_foreign` (`semester_id`),
  ADD KEY `fk_original_referral` (`original_referral_id`);

--
-- Indexes for table `referral_images`
--
ALTER TABLE `referral_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_images_referral_id_foreign` (`referral_id`);

--
-- Indexes for table `referral_reasons`
--
ALTER TABLE `referral_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_years`
--
ALTER TABLE `school_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_year` (`school_year`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_id_unique` (`student_id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_profiles_student_id_semester_id_unique` (`student_id`,`semester_id`),
  ADD KEY `student_profiles_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `student_semester_enrollments`
--
ALTER TABLE `student_semester_enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_semester_enrollments_student_id_semester_id_unique` (`student_id`,`semester_id`),
  ADD KEY `student_semester_enrollments_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `student_transition`
--
ALTER TABLE `student_transition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_transition_semester_id_foreign` (`semester_id`),
  ADD KEY `student_transition_original_transition_id_foreign` (`original_transition_id`);

--
-- Indexes for table `student_transition_images`
--
ALTER TABLE `student_transition_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contract_images`
--
ALTER TABLE `contract_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `counselings`
--
ALTER TABLE `counselings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `counseling_images`
--
ALTER TABLE `counseling_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `referral_images`
--
ALTER TABLE `referral_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `referral_reasons`
--
ALTER TABLE `referral_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school_years`
--
ALTER TABLE `school_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=949;

--
-- AUTO_INCREMENT for table `student_semester_enrollments`
--
ALTER TABLE `student_semester_enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_transition`
--
ALTER TABLE `student_transition`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_transition_images`
--
ALTER TABLE `student_transition_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_carried_over_from_id_foreign` FOREIGN KEY (`carried_over_from_id`) REFERENCES `contracts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contracts_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contracts_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_original_contract` FOREIGN KEY (`original_contract_id`) REFERENCES `contracts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contract_images`
--
ALTER TABLE `contract_images`
  ADD CONSTRAINT `contract_images_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `counselings`
--
ALTER TABLE `counselings`
  ADD CONSTRAINT `counselings_original_fk` FOREIGN KEY (`original_counseling_id`) REFERENCES `counselings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `counselings_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `counselings_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `counseling_images`
--
ALTER TABLE `counseling_images`
  ADD CONSTRAINT `counseling_images_counseling_id_foreign` FOREIGN KEY (`counseling_id`) REFERENCES `counselings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `fk_original_referral` FOREIGN KEY (`original_referral_id`) REFERENCES `referrals` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `referrals_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `referrals_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_images`
--
ALTER TABLE `referral_images`
  ADD CONSTRAINT `referral_images_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `referrals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_semester_enrollments`
--
ALTER TABLE `student_semester_enrollments`
  ADD CONSTRAINT `student_semester_enrollments_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_semester_enrollments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_transition`
--
ALTER TABLE `student_transition`
  ADD CONSTRAINT `student_transition_original_transition_id_foreign` FOREIGN KEY (`original_transition_id`) REFERENCES `student_transition` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_transition_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
