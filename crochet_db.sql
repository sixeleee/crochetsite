-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2025 at 04:42 PM
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
-- Database: `crochet_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_favorite`
--

CREATE TABLE `accounts_favorite` (
  `id` bigint(20) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `pattern_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_favorite`
--

INSERT INTO `accounts_favorite` (`id`, `date_added`, `pattern_id`, `product_id`, `user_id`) VALUES
(6, '2025-10-07 12:15:13.006936', NULL, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add pattern', 7, 'add_pattern'),
(26, 'Can change pattern', 7, 'change_pattern'),
(27, 'Can delete pattern', 7, 'delete_pattern'),
(28, 'Can view pattern', 7, 'view_pattern'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add inquiry', 9, 'add_inquiry'),
(34, 'Can change inquiry', 9, 'change_inquiry'),
(35, 'Can delete inquiry', 9, 'delete_inquiry'),
(36, 'Can view inquiry', 9, 'view_inquiry'),
(37, 'Can add favorite', 10, 'add_favorite'),
(38, 'Can change favorite', 10, 'change_favorite'),
(39, 'Can delete favorite', 10, 'delete_favorite'),
(40, 'Can view favorite', 10, 'view_favorite');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ezAVFrXHvJRffkfaOYp7QV$bAJbrL70A/Wr7mWBIe3YAiyqDYX0sn1s6HzspQqBRSo=', '2025-10-07 12:15:57.671140', 1, 'lee', '', '', 'sixela.lee29@gmail.com', 1, 1, '2025-10-07 05:15:13.701553'),
(2, 'pbkdf2_sha256$600000$fOYhEIrVz3IzU4Zm3lcQc7$Dc0w2Z0MTbmcWbo3wA+fJX7ALmZuWs1x6ilrQuD0cdI=', '2025-10-07 07:03:06.533915', 0, 'chix', 'Chicken', 'Palamig', 'chicken@gmail.com', 0, 1, '2025-10-07 07:03:06.044505'),
(3, 'pbkdf2_sha256$600000$zJICalk0RYH0vetFX93Gib$nMCCFtVfYUliMSrfBsRwDK6UBTHII6ooWpmtVJ59DXM=', '2025-10-07 12:15:07.976676', 0, 'jen', 'Jenela', 'Fang', 'jen@gmail.com', 0, 1, '2025-10-07 12:15:07.515967');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-10-07 05:27:50.428778', '1', 'Amigurumi Blueberry Turtle', 1, '[{\"added\": {}}]', 8, 1),
(2, '2025-10-07 05:27:59.598706', '1', 'Amigurumi Blueberry Turtle', 2, '[]', 8, 1),
(3, '2025-10-07 05:29:31.236512', '2', 'Amigurumi Teddy Bear', 1, '[{\"added\": {}}]', 8, 1),
(4, '2025-10-07 05:31:17.084774', '3', 'Tulip in a Pot', 1, '[{\"added\": {}}]', 8, 1),
(5, '2025-10-07 05:45:32.135091', '1', 'Crochet Flower Boquest Coaster', 1, '[{\"added\": {}}]', 7, 1),
(6, '2025-10-07 06:00:42.404709', '1', 'Crochet Flower Boquet Coaster', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Description\", \"Materials\", \"Tutorial steps\"]}}]', 7, 1),
(7, '2025-10-07 06:46:04.612163', '4', 'Red Fruity Halabong Pouch', 1, '[{\"added\": {}}]', 8, 1),
(8, '2025-10-07 06:48:04.867498', '5', 'Laptop Bag/Sleeve', 1, '[{\"added\": {}}]', 8, 1),
(9, '2025-10-07 06:50:07.459884', '6', '18 oz  Tumbler Sleeve', 1, '[{\"added\": {}}]', 8, 1),
(10, '2025-10-07 07:00:04.924273', '2', 'Strawberry Plushie', 1, '[{\"added\": {}}]', 7, 1),
(11, '2025-10-07 07:00:32.469303', '2', 'Strawberry Plushie', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(12, '2025-10-07 07:11:25.076130', '3', 'No-Sew Crochet Mushroom Jewelry Holder/Trinket Dish', 1, '[{\"added\": {}}]', 7, 1),
(13, '2025-10-07 11:45:06.754516', '2', 'Strawberry Plushie', 2, '[{\"changed\": {\"fields\": [\"Youtube link\"]}}]', 7, 1),
(14, '2025-10-07 12:12:21.633110', '2', 'Inquiry from Chicken Palamig about Laptop Bag/Sleeve - pending', 2, '[{\"changed\": {\"fields\": [\"Admin response\", \"Response date\"]}}]', 9, 1),
(15, '2025-10-07 12:12:32.708530', '2', 'Inquiry from Chicken Palamig about Laptop Bag/Sleeve - resolved', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(16, '2025-10-07 12:16:36.518956', '3', 'Inquiry from Jenela Fang about 18 oz  Tumbler Sleeve - resolved', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Admin response\", \"Response date\"]}}]', 9, 1),
(17, '2025-10-07 12:18:40.548320', '3', 'Inquiry from Jenela Fang about 18 oz  Tumbler Sleeve - responded', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(18, '2025-10-07 12:36:14.178749', '4', 'Inquiry from Jenela Fang about Laptop Bag/Sleeve - responded', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Admin response\", \"Response date\"]}}]', 9, 1),
(19, '2025-10-07 12:39:12.504699', '5', 'Inquiry from Jenela Fang about Red Fruity Halabong Pouch - responded', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Admin response\", \"Response date\"]}}]', 9, 1),
(20, '2025-10-07 12:42:28.012137', '5', 'Inquiry from Jenela Fang about Red Fruity Halabong Pouch - responded', 2, '[{\"changed\": {\"fields\": [\"Admin response\"]}}]', 9, 1),
(21, '2025-10-07 13:35:04.353261', '4', 'Green Orchid Set', 1, '[{\"added\": {}}]', 7, 1),
(22, '2025-10-07 13:37:51.724109', '5', 'Hibiscus Tote Bag', 1, '[{\"added\": {}}]', 7, 1),
(23, '2025-10-07 13:41:57.223611', '6', 'Y2K Cherry Heart Tapestry', 1, '[{\"added\": {}}]', 7, 1),
(24, '2025-10-07 13:44:40.281421', '7', 'Bucket Hat', 1, '[{\"added\": {}}]', 7, 1),
(25, '2025-10-07 13:53:37.235756', '7', 'Crochet Hook Set of 3', 1, '[{\"added\": {}}]', 8, 1),
(26, '2025-10-07 14:35:20.631085', '8', 'Pure Cotton Yarn', 1, '[{\"added\": {}}]', 8, 1),
(27, '2025-10-07 14:37:36.906890', '9', 'Jisulife Fan 9 Cherry Cover', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'accounts', 'favorite'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'patterns', 'pattern'),
(6, 'sessions', 'session'),
(9, 'store', 'inquiry'),
(8, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'store', '0001_initial', '2025-10-07 05:13:57.561832'),
(2, 'patterns', '0001_initial', '2025-10-07 05:13:57.581532'),
(3, 'contenttypes', '0001_initial', '2025-10-07 05:13:57.608844'),
(4, 'auth', '0001_initial', '2025-10-07 05:13:57.877354'),
(5, 'accounts', '0001_initial', '2025-10-07 05:13:57.981690'),
(6, 'admin', '0001_initial', '2025-10-07 05:13:58.046081'),
(7, 'admin', '0002_logentry_remove_auto_add', '2025-10-07 05:13:58.054653'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-07 05:13:58.064411'),
(9, 'contenttypes', '0002_remove_content_type_name', '2025-10-07 05:13:58.105771'),
(10, 'auth', '0002_alter_permission_name_max_length', '2025-10-07 05:13:58.139017'),
(11, 'auth', '0003_alter_user_email_max_length', '2025-10-07 05:13:58.153478'),
(12, 'auth', '0004_alter_user_username_opts', '2025-10-07 05:13:58.163022'),
(13, 'auth', '0005_alter_user_last_login_null', '2025-10-07 05:13:58.187662'),
(14, 'auth', '0006_require_contenttypes_0002', '2025-10-07 05:13:58.191416'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2025-10-07 05:13:58.199516'),
(16, 'auth', '0008_alter_user_username_max_length', '2025-10-07 05:13:58.213522'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2025-10-07 05:13:58.227091'),
(18, 'auth', '0010_alter_group_name_max_length', '2025-10-07 05:13:58.243668'),
(19, 'auth', '0011_update_proxy_permissions', '2025-10-07 05:13:58.260309'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2025-10-07 05:13:58.274351'),
(21, 'sessions', '0001_initial', '2025-10-07 05:13:58.294772'),
(22, 'patterns', '0002_rename_image_pattern_image_and_more', '2025-10-07 05:38:39.825018'),
(23, 'patterns', '0003_pattern_difficulty_pattern_estimated_time_and_more', '2025-10-07 05:55:24.094659'),
(24, 'patterns', '0004_alter_pattern_youtube_link', '2025-10-07 11:42:12.599588'),
(25, 'store', '0002_inquiry_admin_response_inquiry_response_date_and_more', '2025-10-07 12:10:24.228527'),
(26, 'store', '0003_inquiry_user', '2025-10-07 12:34:11.353591');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8iiyomkv6say2unwlwrsp0jnoyt56spg', '.eJxVjEEOwiAQRe_C2hBKEAaX7j0DGWZGqRpISrtqvLtt0oVu_3vvryrhMpe0dJnSyOqiBnX63TLSS-oO-In10TS1Ok9j1ruiD9r1rbG8r4f7d1Cwl612DETO3kUY2RGdmTwORJKjA4kBLLMnT8ybxsYLAFoxwRNaCCaqzxc37jmP:1v68oq:HkFPEpxjx_9iq1X5TO_P5IbkKpqSdLAPKFADgOvbHgg', '2025-10-21 14:37:36.941015');

-- --------------------------------------------------------

--
-- Table structure for table `patterns_pattern`
--

CREATE TABLE `patterns_pattern` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `youtube_link` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `difficulty` varchar(20) NOT NULL,
  `estimated_time` varchar(100) NOT NULL,
  `finished_size` varchar(100) NOT NULL,
  `materials` longtext NOT NULL,
  `tutorial_steps` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patterns_pattern`
--

INSERT INTO `patterns_pattern` (`id`, `title`, `category`, `description`, `youtube_link`, `image`, `created_at`, `updated_at`, `difficulty`, `estimated_time`, `finished_size`, `materials`, `tutorial_steps`) VALUES
(1, 'Crochet Flower Boquet Coaster', 'home_decor', 'Brighten up your coffee table with this handmade crochet flower bouquet coaster—each stitch blooms with charm and color. It’s the kind of cozy detail that makes your space feel like home.', 'https://youtu.be/mVRBxiLlWyA?si=gX6nuQsceo-JbW63', 'patterns/Screenshot_2025-10-07_135830.png', '2025-10-07 05:45:32.108481', '2025-10-07 06:00:42.402616', 'beginner', '', '', 'Materials Needed\r\n- Acrylic yarn in various colors (for flowers, leaves, and base)\r\n- 4.0 mm crochet hook\r\n- Scissors\r\n- Yarn needle', 'Step-by-Step Instructions\r\n1. Crochet the Flower Motifs\r\n- Start with a magic ring.\r\n- Chain 2 (does not count as a stitch).\r\n- Work 5 double crochets into the ring.\r\n- Remove hook from the loop, insert it into the first double crochet, reinsert the loop, and pull through to form a popcorn stitch.\r\n- Chain 2 between each popcorn stitch.\r\n- Repeat to make 5–6 petals per flower.\r\n- Fasten off and weave in ends.\r\n- Make multiple flowers in different colors.\r\n2. Crochet the Leaves\r\n- Use green yarn.\r\n- Chain 6.\r\n- Work single crochet, half double crochet, double crochet, half double crochet, single crochet across the chain.\r\n- Slip stitch to finish and fasten off.\r\n- Make 2–3 leaves per coaster.\r\n3. Create the Base Coaster\r\n- Use a neutral or contrasting yarn color.\r\n- Start with a magic ring.\r\n- Round 1: Chain 2, work 12 double crochets into the ring, slip stitch to join.\r\n- Round 2: Chain 2, work 2 double crochets in each stitch around (24 stitches), slip stitch to join.\r\n- Round 3: Continue increasing evenly to reach desired diameter (typically 5.5 inches or 14 cm).\r\n- Fasten off and weave in ends.\r\n4. Assemble the Bouquet\r\n- Arrange flowers and leaves on the base.\r\n- Use yarn needle to stitch each motif securely onto the coaster.\r\n- Make sure the arrangement is balanced and covers the base nicely.\r\n5. Finishing Touches\r\n- Weave in all loose ends.\r\n- Gently shape the coaster with your hands.\r\n- Optionally block the piece to flatten and set the shape.'),
(2, 'Strawberry Plushie', 'amigurumi', 'Sweet, squishy, and full of charm.', NULL, 'patterns/40_Ugly_Christmas_Sweater_Ideas_That_You_May_Need_This_Holiday_Season.jpg', '2025-10-07 07:00:04.922877', '2025-10-07 11:45:06.752020', 'intermediate', '', '', 'Materials Needed:\r\n- Red yarn (worsted weight or soft plush yarn)\r\n- Green yarn (for the leafy top)\r\n- Small amount of yellow or white yarn/thread (for seeds)\r\n- Crochet hook (size appropriate for your yarn, usually 3.5mm–4mm)\r\n- Fiberfill stuffing\r\n- Yarn needle\r\n- Scissors', 'Step-by-Step Instructions:\r\n1. Start with the Strawberry Body (Red Yarn)\r\n- Round 1: Make a magic ring, then crochet 6 single crochets (sc) into the ring. Pull tight.\r\n- Round 2: Increase in each stitch around (12 sc).\r\n- Round 3: 1 sc, inc repeat around (18 sc).\r\n- Round 4: 2 sc, inc repeat around (24 sc).\r\n- Rounds 5–10: Work even (24 sc each round) to build height.\r\n- Round 11: 2 sc, dec repeat around (18 sc).\r\n- Round 12: 1 sc, dec repeat around (12 sc).\r\n- Round 13: Decrease around (6 sc), stuff with fiberfill before closing.\r\n- Finish: Fasten off and weave in the end.\r\n2. Add the Leafy Top (Green Yarn)\r\n- Make 5–6 small leaves:\r\n- Chain 4, turn, sc in 2nd chain from hook, hdc, dc.\r\n- Slip stitch into the base, repeat for each leaf.\r\n- Sew the leaves to the top of the strawberry.\r\n3. Embroider the Seeds\r\n- Use yellow or white thread to stitch small “V” shapes randomly across the body.'),
(3, 'No-Sew Crochet Mushroom Jewelry Holder/Trinket Dish', 'home_decor', 'No-sew mushroom-shaped jewelry holder or trinket dish—perfect for storing rings, earrings, or tiny treasures with a whimsical touch.', 'https://youtu.be/zGWkT_EJFy0?si=rujHdBW4QcDUc0CD', 'patterns/No-Sew_Crochet_Mushroom_Jewelry_Holder_Trinket_Dish_Tutorial.jpg', '2025-10-07 07:11:25.073560', '2025-10-07 07:11:25.073610', 'intermediate', '', '', 'Materials Needed:\r\n- Worsted weight yarn (in mushroom cap and stem colors)\r\n- Crochet hook (size recommended for your yarn)\r\n- Yarn needle\r\n- Scissors', '1. Crochet the Mushroom Cap (Top Dish)\r\n- Start with a magic ring.\r\n- Work in continuous rounds, increasing to form a shallow bowl shape.\r\n- Use double crochet or half-double crochet stitches for a smooth curve.\r\n- Add white spots using surface slip stitches or small appliqués.\r\n2. Crochet the Mushroom Stem (Base)\r\n- Begin with a magic ring.\r\n- Increase to form a flat circle for the base.\r\n- Then work even rounds to build up the stem height.\r\n- Shape it like a small cylinder or dome depending on your preference.\r\n3. Attach Cap to Stem\r\n- No sewing needed—use crochet slip stitches to join the cap and stem directly.\r\n- Stuff lightly if desired for firmness.\r\n4. Finishing Touches\r\n- Weave in ends.\r\n- Optionally, add a loop or decorative edging.'),
(4, 'Green Orchid Set', 'clothing', 'The top features a fitted bodice with delicate stitchwork and a scoop neckline, while the shorts offer a comfortable, high-waisted fit with subtle texture. Ideal for warm weather, this set evokes the lush beauty of orchids with its soft green hues and breathable design.', NULL, 'patterns/crochet_knit_green_orchid_set_rcsx0iG.jpg', '2025-10-07 13:35:04.351513', '2025-10-07 13:35:04.351539', 'advanced', '', '', 'Materials Needed\r\n- Cotton yarn in green orchid shades (light green, moss, or mint)\r\n- Crochet hook (size 3.5mm–4mm)\r\n- Stitch markers\r\n- Measuring tape\r\n- Yarn needle\r\n- Scissors\r\n- Elastic band (for shorts waistband)', 'Step-by-Step Procedure\r\nSleeveless Top\r\n- Gauge & Measurements\r\n- Measure bust, waist, and desired top length.\r\n- Make a gauge swatch to ensure sizing accuracy.\r\n- Foundation Chain\r\n- Chain the number of stitches to match bust width.\r\n- Join in the round or work flat depending on design.\r\n- Bodice\r\n- Use half double crochet (hdc) or shell stitch for texture.\r\n- Work in rounds or rows until reaching underarm level.\r\n- Armholes & Neckline\r\n- Shape armholes by skipping stitches or creating straps.\r\n- For scoop neck: decrease stitches gradually at center front.\r\n- Finishing\r\n- Add edging around neckline and armholes (e.g., picot or scallop).\r\n- Weave in ends and block the top for shape.\r\n\r\nShorts\r\n- Waistband\r\n- Chain to fit waist circumference.\r\n- Work 4–5 rows of single crochet (sc) or rib stitch.\r\n- Insert elastic band and fold waistband over it.\r\n- Body\r\n- Work in rounds using hdc or granny stitch.\r\n- Increase slightly at hips for shaping.\r\n- Leg Openings\r\n- Split the round into two leg holes.\r\n- Work each leg separately, adjusting length as desired.\r\n- Finishing\r\n- Add decorative edging to leg hems.\r\n- Weave in ends and block the shorts.'),
(5, 'Hibiscus Tote Bag', 'accessories', 'Featuring bold hibiscus flower motifs in rich reds, pinks, or yellows against a neutral or leafy green background, this spacious tote combines beauty and function. Perfect for beach days, market strolls, or casual outings, it showcases floral charm with sturdy craftsmanship.', 'https://youtu.be/43CB4CAacpM?si=nPRfe8AcwsTh0y5Q', 'patterns/Hibiscus_tote_bag.jpg', '2025-10-07 13:37:51.722143', '2025-10-07 13:37:51.722175', 'beginner', '', '', 'Materials Needed\r\n- Worsted weight cotton yarn (colors: hibiscus red/pink/yellow, leaf green, cream or beige)\r\n- Crochet hook (size 4mm–5mm)\r\n- Stitch markers\r\n- Yarn needle\r\n- Scissors\r\n- Optional: fabric lining, magnetic snap or button', 'Step-by-Step Procedure\r\n\r\nBase & Body\r\n- Foundation\r\n- Chain 40–50 stitches (adjust for desired width).\r\n- Work 6–8 rows of single crochet (sc) for a sturdy base.\r\n- Body\r\n- Switch to half double crochet (hdc) or granny stitch.\r\n- Work in rounds or rows until reaching desired height (approx. 12–14 inches).\r\n- Optional: alternate colors for stripes or leafy background.\r\n\r\nHibiscus Flower Motifs\r\n- Petals\r\n- Use red/pink/yellow yarn.\r\n- Chain 6, slip stitch to form ring.\r\n- Work 5 petals: each petal = (sc, hdc, dc, hdc, sc) into ring.\r\n- Fasten off and weave in ends.\r\n- Leaves\r\n- Use green yarn.\r\n- Chain 8, work leaf shape using sc, hdc, dc, then mirror on other side.\r\n- Make 2–3 leaves per flower.\r\n- Assembly\r\n- Sew or crochet hibiscus flowers and leaves onto the tote body.\r\n- Arrange in a cluster or scattered pattern.\r\n\r\nHandles & Finishing- Handles\r\n- Chain 60–70 for each strap.\r\n- Work 4–5 rows of sc for thickness.\r\n- Attach securely to top edges of tote.\r\n- Optional Lining\r\n- Cut fabric to fit interior.\r\n- Sew in place for added durability.\r\n- Closure\r\n- Add a magnetic snap or button if desired.'),
(6, 'Y2K Cherry Heart Tapestry', 'home_decor', 'The Y2K Cherry Heart Tapestry is a playful, nostalgic wall hanging that blends early 2000s pop aesthetics with cozy crochet charm.', NULL, 'patterns/Y2K_Crochet_Cherry_Heart_Tapestry_Pattern_PDF_Digital_Download_-_Etsy_3aWJjiI.jpg', '2025-10-07 13:41:57.211102', '2025-10-07 13:41:57.211130', 'advanced', '', '', 'Materials Needed\r\n- Worsted weight yarn in:\r\n- Cherry red\r\n- Leaf green\r\n- Bubblegum pink\r\n- White or pastel background\r\n- Crochet hook (size 4mm–5mm)\r\n- Yarn needle\r\n- Scissors\r\n- Wooden dowel or metal rod (for hanging)\r\n- Optional: beads, sequins, fringe', 'Step-by-Step Procedure\r\nDesign Planning\r\n- Sketch or Chart\r\n- Draw a pixel-style chart of cherries inside a heart.\r\n- Use graph paper or digital charting tools.\r\n- Each square = 1 stitch (suggested: single crochet or tapestry stitch).\r\n- Color Mapping\r\n- Assign yarn colors to each section:\r\n- Red for cherries\r\n- Green for stems/leaves\r\n- Pink for heart\r\n- White/pastel for background\r\n\r\nCrochet Base\r\n- Foundation Chain\r\n- Chain width of tapestry (e.g., 60–80 stitches).\r\n- Work in single crochet rows for a flat canvas.\r\n- Tapestry Technique\r\n- Carry unused yarn behind stitches.\r\n- Switch colors according to chart.\r\n- Keep tension even to avoid puckering.\r\n- Cherry & Heart Motifs\r\n- Begin motifs after 5–10 rows of background.\r\n- Use bobbins or separate yarn balls for clean color changes.\r\n- Optional: embroider highlights on cherries for shine.\r\n\r\nFinishing Touches- Border\r\n- Add a simple sc or shell stitch border in pink or white.\r\n- Hanging Sleeve\r\n- Crochet a top loop or sleeve to insert dowel/rod.\r\n- Extras\r\n- Add fringe, beads, or sequins for sparkle.\r\n- Block the tapestry to smooth and shape.'),
(7, 'Bucket Hat', 'accessories', 'A crochet bucket hat is a soft, structured hat with a rounded crown and flared brim. It’s lightweight, breathable, and stylish — perfect for sunny days or casual wear. The design is simple yet versatile, allowing for solid colors, stripes, or playful motifs.', 'https://youtu.be/S5uGYg28zpI?si=Cj0zCCYVdRb3JYEV', 'patterns/Buckets.jpg', '2025-10-07 13:44:40.279547', '2025-10-07 13:44:40.279579', 'beginner', '', '', 'Materials Needed\r\n- Worsted or DK weight cotton yarn (any color)\r\n- Crochet hook (4mm–5mm)\r\n- Stitch markers\r\n- Yarn needle\r\n- Scissors', 'Step-by-Step Procedure\r\nCrown\r\n- Magic Ring\r\n- Begin with a magic ring.\r\n- Round 1: 6 single crochet (sc) into ring.\r\n- Increase Rounds\r\n- Round 2: 2 sc in each stitch (12 sts).\r\n- Round 3: 1 sc, 2 sc in next repeat (18 sts).\r\n- Continue increasing by 6 stitches per round until the circle is ~6.5 inches in diameter.\r\n\r\nSide Walls\r\n- Straight Rounds\r\n- Work even rounds (no increases) in sc or half double crochet (hdc).\r\n- Continue until the hat height reaches ~5–6 inches from the crown.\r\n\r\nBrim\r\n- Flared Edge\r\n- Begin increasing again: 2 sc in every 6th stitch.\r\n- Work 3–5 rounds, increasing slightly each round for a gentle flare.\r\n- Finishing\r\n- Add a slip stitch edge for structure.\r\n- Weave in ends and block lightly if needed.');

-- --------------------------------------------------------

--
-- Table structure for table `store_inquiry`
--

CREATE TABLE `store_inquiry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `date_sent` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `admin_response` longtext NOT NULL,
  `response_date` datetime(6) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_inquiry`
--

INSERT INTO `store_inquiry` (`id`, `name`, `email`, `message`, `date_sent`, `product_id`, `admin_response`, `response_date`, `status`, `user_id`) VALUES
(1, 'Chicken Palamig', 'cicken@gmail.com', 'Whats the size of this? Does the price varies in terms of sizes and colors?', '2025-10-07 07:04:10.901297', 5, '', NULL, 'pending', NULL),
(2, 'Chicken Palamig', 'cicken@gmail.com', 'What size is this? Does price varies? What hook size did you use?', '2025-10-07 12:11:28.007310', 5, '12 inch. Yes. 12mm', '2025-10-07 12:12:17.000000', 'resolved', NULL),
(3, 'Jenela Fang', 'jen@gmail.com', 'Can I know the price of 32 oz?', '2025-10-07 12:15:43.975531', 6, '300 Peso', '2025-10-07 12:16:34.000000', 'responded', NULL),
(4, 'Jenela Fang', 'sixela.lee29@gmail.com', 'What size is this? How much if 15-17 inch?', '2025-10-07 12:34:59.781314', 5, 'for 15 inch 950 pesos. every inch add 100 pesos.', '2025-10-07 12:36:12.000000', 'responded', 1),
(5, 'Jenela Fang', 'sixela.lee29@gmail.com', 'Can I have 15 pieces next week?What size is this?', '2025-10-07 12:37:39.757862', 4, 'Yes.3.5 inch x 3 inches.  If sure buyer reach us on facebook.', '2025-10-07 12:39:11.000000', 'responded', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `price`, `description`, `image`, `created_at`) VALUES
(1, 'Amigurumi Blueberry Turtle', 650.00, 'This little blueberry turtle is crocheted with love and a splash of whimsy. Its soft shell is stitched in rich blueberry tones, and its tiny flippers are perfect for cuddles or shelf-sitting. A sweet gift for turtle fans, fruit lovers, or anyone who appreciates quirky, cozy creations.', 'products/turtle.jpg', '2025-10-07 05:27:50.426909'),
(2, 'Amigurumi Teddy Bear', 850.00, 'This handmade teddy bear is all heart—crocheted with soft yarn and stitched with care. A perfect cuddle companion or shelf buddy. Whether gifted or kept, it brings a touch of warmth and charm wherever it goes.', 'products/gizmo.jpg', '2025-10-07 05:29:31.235097'),
(3, 'Tulip in a Pot', 350.00, 'This crochet tulip is stitched with soft acrylic yarn using a 4.0 mm hook, giving it a smooth, sturdy finish that holds its shape beautifully. Nestled in a tiny pot, the tulip adds a splash of spring to any space—no watering needed. A sweet handmade piece that’s perfect for gifting or brightening up your desk.', 'products/redtulips.jpg', '2025-10-07 05:31:17.073251'),
(4, 'Red Fruity Halabong Pouch', 100.00, 'This playful halabong pouch is bursting with citrusy charm—hand-crocheted in vibrant orange yarn with a textured peel-like stitch and topped with a leafy green drawstring closure. It’s the perfect size for coins, lip balm, or tiny treasures, and adds a juicy pop of personality to your bag or desk.', 'products/543fed77-b5e1-4f1c-9408-e40e911a86b2.jpg', '2025-10-07 06:46:04.610837'),
(5, 'Laptop Bag/Sleeve', 850.00, 'Chunky, soft, and surprisingly sturdy—this laptop sleeve made from t-shirt yarn is a perfect blend of function and style. The thick yarn offers natural padding to protect your device, while the stretchy texture hugs it snugly. Add a button flap, zipper, or even a strap for extra flair, and play with colors for a bold or minimalist look. It’s eco-friendly, too—upcycled fashion that works hard and looks good doing it.', 'products/59807d53-8ff0-46eb-af6a-15dd0fe908db.jpg', '2025-10-07 06:48:04.865681'),
(6, '18 oz  Tumbler Sleeve', 120.00, 'Wrap your tumbler in comfort with this handmade sleeve, crocheted from 100% cotton yarn for a soft, breathable, and eco-friendly touch. It keeps your hands cool, your drink cozy, and adds a splash of personality to your daily sip.', 'products/b32a44b8-8c51-4558-8683-8cf37fcfaf8b.jpg', '2025-10-07 06:50:07.458303'),
(7, 'Crochet Hook Set of 3', 850.00, 'Pastel Spring Flower Polymer Clay Crochet Hook Set of 3. Each hook is sculpted with whimsical blossoms and leafy accents, making them not only functional but irresistibly cute. Ideal for crafters who love a touch of charm in their tools.', 'products/hook.jpg', '2025-10-07 13:53:37.233926'),
(8, 'Pure Cotton Yarn', 55.00, 'Sold per piece.  \r\n\r\nPure cotton yarn is made entirely from natural cotton fibers, without blends or synthetic additives. It\'s prized for its softness, breathability, and versatility, making it ideal for garments, accessories, and home décor.\r\n\r\nKey Characteristics\r\n- Fiber Content: 100% cotton\r\n- Texture: Smooth, soft, and slightly matte\r\n- Weight Options: Available in lace, sport, DK, worsted, and bulky\r\n- Color Range: Comes in solids, pastels, brights, and hand-dyed variations\r\n- Finish: Can be mercerized (shiny and strong) or unmercerized (soft and matte)', 'products/crochet_aesthetic_pictures.jpg', '2025-10-07 14:35:20.628755'),
(9, 'Jisulife Fan 9 Cherry Cover', 175.00, 'Can be customized. \r\n\r\nThe Jisulife Life 9 fan cover is available as a crocheted accessory, handmade from cotton yarn to fit the handheld fan snugly while adding a soft, decorative touch.', 'products/88e23f6b-608a-4dc5-b4d5-a072794bdaa1.jpg', '2025-10-07 14:37:36.904990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_favorite`
--
ALTER TABLE `accounts_favorite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_favorite_user_id_product_id_9f63f9cf_uniq` (`user_id`,`product_id`),
  ADD UNIQUE KEY `accounts_favorite_user_id_pattern_id_9840ffb1_uniq` (`user_id`,`pattern_id`),
  ADD KEY `accounts_favorite_pattern_id_9064f8d1_fk_patterns_pattern_id` (`pattern_id`),
  ADD KEY `accounts_favorite_product_id_ac6cab2e_fk_store_product_id` (`product_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `patterns_pattern`
--
ALTER TABLE `patterns_pattern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_inquiry`
--
ALTER TABLE `store_inquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_inquiry_product_id_207aea41_fk_store_product_id` (`product_id`),
  ADD KEY `store_inquiry_user_id_f8d9ee16_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_favorite`
--
ALTER TABLE `accounts_favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patterns_pattern`
--
ALTER TABLE `patterns_pattern`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_inquiry`
--
ALTER TABLE `store_inquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_favorite`
--
ALTER TABLE `accounts_favorite`
  ADD CONSTRAINT `accounts_favorite_pattern_id_9064f8d1_fk_patterns_pattern_id` FOREIGN KEY (`pattern_id`) REFERENCES `patterns_pattern` (`id`),
  ADD CONSTRAINT `accounts_favorite_product_id_ac6cab2e_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `accounts_favorite_user_id_081a5fb5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_inquiry`
--
ALTER TABLE `store_inquiry`
  ADD CONSTRAINT `store_inquiry_product_id_207aea41_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_inquiry_user_id_f8d9ee16_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
