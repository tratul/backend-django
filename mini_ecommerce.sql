-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 09:39 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add token', 7, 'add_tokenproxy'),
(26, 'Can change token', 7, 'change_tokenproxy'),
(27, 'Can delete token', 7, 'delete_tokenproxy'),
(28, 'Can view token', 7, 'view_tokenproxy'),
(29, 'Can add site', 8, 'add_site'),
(30, 'Can change site', 8, 'change_site'),
(31, 'Can delete site', 8, 'delete_site'),
(32, 'Can view site', 8, 'view_site'),
(33, 'Can add User', 9, 'add_user'),
(34, 'Can change User', 9, 'change_user'),
(35, 'Can delete User', 9, 'delete_user'),
(36, 'Can view User', 9, 'view_user'),
(37, 'Can add Product', 10, 'add_product'),
(38, 'Can change Product', 10, 'change_product'),
(39, 'Can delete Product', 10, 'delete_product'),
(40, 'Can view Product', 10, 'view_product'),
(41, 'Can add Order', 11, 'add_order'),
(42, 'Can change Order', 11, 'change_order'),
(43, 'Can delete Order', 11, 'delete_order'),
(44, 'Can view Order', 11, 'view_order'),
(45, 'Can add Shipping Address', 12, 'add_shippingaddress'),
(46, 'Can change Shipping Address', 12, 'change_shippingaddress'),
(47, 'Can delete Shipping Address', 12, 'delete_shippingaddress'),
(48, 'Can view Shipping Address', 12, 'view_shippingaddress'),
(49, 'Can add Order Item', 13, 'add_orderitem'),
(50, 'Can change Order Item', 13, 'change_orderitem'),
(51, 'Can delete Order Item', 13, 'delete_orderitem'),
(52, 'Can view Order Item', 13, 'view_orderitem'),
(53, 'Can add blacklisted token', 14, 'add_blacklistedtoken'),
(54, 'Can change blacklisted token', 14, 'change_blacklistedtoken'),
(55, 'Can delete blacklisted token', 14, 'delete_blacklistedtoken'),
(56, 'Can view blacklisted token', 14, 'view_blacklistedtoken'),
(57, 'Can add outstanding token', 15, 'add_outstandingtoken'),
(58, 'Can change outstanding token', 15, 'change_outstandingtoken'),
(59, 'Can delete outstanding token', 15, 'delete_outstandingtoken'),
(60, 'Can view outstanding token', 15, 'view_outstandingtoken');

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(11, 'orders', 'order'),
(13, 'orders', 'orderitem'),
(12, 'orders', 'shippingaddress'),
(10, 'products', 'product'),
(5, 'sessions', 'session'),
(8, 'sites', 'site'),
(14, 'token_blacklist', 'blacklistedtoken'),
(15, 'token_blacklist', 'outstandingtoken'),
(9, 'users', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-26 09:10:36.277297'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-12-26 09:10:36.358807'),
(3, 'auth', '0001_initial', '2021-12-26 09:10:36.764143'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-12-26 09:10:36.850442'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-12-26 09:10:36.859337'),
(6, 'auth', '0004_alter_user_username_opts', '2021-12-26 09:10:36.868105'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-12-26 09:10:36.877034'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-12-26 09:10:36.882764'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-12-26 09:10:36.897332'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-12-26 09:10:36.905675'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-12-26 09:10:36.915155'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-12-26 09:10:36.934144'),
(13, 'auth', '0011_update_proxy_permissions', '2021-12-26 09:10:36.943460'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-12-26 09:10:36.952517'),
(15, 'users', '0001_initial', '2021-12-26 09:10:37.384404'),
(16, 'admin', '0001_initial', '2021-12-26 09:10:37.552754'),
(17, 'admin', '0002_logentry_remove_auto_add', '2021-12-26 09:10:37.563917'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-26 09:10:37.573486'),
(19, 'authtoken', '0001_initial', '2021-12-26 09:10:37.677608'),
(20, 'authtoken', '0002_auto_20160226_1747', '2021-12-26 09:10:37.701091'),
(21, 'authtoken', '0003_tokenproxy', '2021-12-26 09:10:37.707075'),
(22, 'products', '0001_initial', '2021-12-26 09:10:37.744973'),
(23, 'orders', '0001_initial', '2021-12-26 09:10:38.135522'),
(24, 'products', '0002_remove_product_image', '2021-12-26 09:10:38.152749'),
(25, 'products', '0003_alter_product_name_alter_product_price', '2021-12-26 09:10:38.261535'),
(26, 'sessions', '0001_initial', '2021-12-26 09:10:38.343950'),
(27, 'sites', '0001_initial', '2021-12-26 09:10:38.397042'),
(28, 'sites', '0002_alter_domain_unique', '2021-12-26 09:10:38.425181'),
(29, 'token_blacklist', '0001_initial', '2021-12-27 11:45:23.225318'),
(30, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2021-12-27 11:45:23.252612'),
(31, 'token_blacklist', '0003_auto_20171017_2007', '2021-12-27 11:45:23.278998'),
(32, 'token_blacklist', '0004_auto_20171017_2013', '2021-12-27 11:45:23.396163'),
(33, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2021-12-27 11:45:23.430563'),
(34, 'token_blacklist', '0006_auto_20171017_2113', '2021-12-27 11:45:23.455002'),
(35, 'token_blacklist', '0007_auto_20171017_2214', '2021-12-27 11:45:34.008683'),
(36, 'token_blacklist', '0008_migrate_to_bigautofield', '2021-12-27 11:45:34.569717'),
(37, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2021-12-27 11:45:34.591813'),
(38, 'token_blacklist', '0011_linearizes_history', '2021-12-27 11:45:34.599726');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ne35gpylefe37rni0lp74k3zud8g3nqz', '.eJxVjMsOwiAQRf-FtSGdAaS4dN9vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yguAsTpd2MKj1R3EO9Ub02GVtdlZrkr8qBdTi2m5_Vw_w4K9fKtjUuoIVC2hBhpsCMDO2NGhKzdoNBpZbSLkCwAWraG0KkEGYLls0Hx_gDArjat:1n1Ped:DQPQhR_IwKpk0eq34mEzBUJ5ki2ZN61Xx8jByn9JnhU', '2022-01-09 09:17:23.054784');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(254) NOT NULL,
  `totalPrice` decimal(7,2) DEFAULT NULL,
  `isPaid` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_order`
--

INSERT INTO `orders_order` (`id`, `slug`, `totalPrice`, `isPaid`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'a5770b6a-caed-4240-a551-92421209e8e2', '8000.00', 1, '2021-12-26 09:31:23.914092', '2021-12-26 09:33:15.166364', 1),
(2, 'f3d183e2-2893-4b9f-9ca1-cd3c72f523ec', '1323.00', 0, '2021-12-28 08:12:46.849107', '2021-12-28 08:12:46.849107', 2),
(3, '0e1b627e-0986-42ec-bb4e-1f0a7b8c0367', '3323.00', 0, '2021-12-28 08:13:34.529273', '2021-12-28 08:13:34.529273', 2),
(4, 'a8e1adec-44cb-4a27-b8bd-ccc3d62bd24c', '1623.00', 0, '2021-12-28 08:14:42.574323', '2021-12-28 08:14:42.574323', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderitem`
--

CREATE TABLE `orders_orderitem` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(254) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_orderitem`
--

INSERT INTO `orders_orderitem` (`id`, `slug`, `qty`, `price`, `created_at`, `updated_at`, `order_id`, `product_id`) VALUES
(1, '06598af5-15cf-4452-9174-e223ebe5ff80', 4, '8000.00', '2021-12-26 09:31:23.927202', '2021-12-26 09:31:23.928198', 1, 2),
(2, '6a308e0e-bacd-4a98-952e-0f20dfb91de1', 1, '123.00', '2021-12-28 08:12:46.863107', '2021-12-28 08:12:46.863107', 2, 5),
(3, '4527793d-617c-4e2c-950b-9a9fc6521256', 1, '1200.00', '2021-12-28 08:12:46.872854', '2021-12-28 08:12:46.872854', 2, 4),
(4, '07457171-5445-45aa-a75c-49378d28d346', 1, '123.00', '2021-12-28 08:13:34.546195', '2021-12-28 08:13:34.547192', 3, 5),
(5, '0d0c3403-b9cc-49e0-930b-760eb3d21fc3', 1, '1200.00', '2021-12-28 08:13:34.555189', '2021-12-28 08:13:34.555189', 3, 4),
(6, 'af47ab35-e979-426d-8f01-29b8b8a70f4d', 1, '2000.00', '2021-12-28 08:13:34.571895', '2021-12-28 08:13:34.571895', 3, 3),
(7, '07acb62b-d272-47de-8fe0-6b4df47fb74e', 1, '123.00', '2021-12-28 08:14:42.584257', '2021-12-28 08:14:42.584257', 4, 5),
(8, '6969d5cd-141d-4939-ab77-b45b4cee7950', 1, '1500.00', '2021-12-28 08:14:42.602194', '2021-12-28 08:14:42.602194', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_shippingaddress`
--

CREATE TABLE `orders_shippingaddress` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(254) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postalCode` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `shippingPrice` decimal(7,2) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_shippingaddress`
--

INSERT INTO `orders_shippingaddress` (`id`, `slug`, `address`, `city`, `postalCode`, `country`, `shippingPrice`, `created_at`, `updated_at`, `order_id`) VALUES
(1, '8791c9bd-74c0-4efb-82e2-e4743be0bac3', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', NULL, '2021-12-26 09:31:23.920076', '2021-12-26 09:31:23.920076', 1),
(2, 'f8f33571-a5f8-4f43-9641-3798bff5032e', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', NULL, '2021-12-28 08:12:46.854093', '2021-12-28 08:12:46.854093', 2),
(3, '4e5d741e-354f-4819-a92b-0ec024447aa7', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', NULL, '2021-12-28 08:13:34.533265', '2021-12-28 08:13:34.533265', 3),
(4, 'b79cfe4d-3dc1-4674-9a15-48d6edaec4dd', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', NULL, '2021-12-28 08:14:42.578089', '2021-12-28 08:14:42.578089', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(254) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` decimal(7,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `name`, `slug`, `description`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'P One', 'p-one-0f0d4ff7-2d78-48b8-b711-626ec882235b', 'Nice', '1500.00', 9, '2021-12-26 09:16:28.318733', '2021-12-28 08:14:42.605875'),
(2, 'P Two Updated', 'p-two-39708ee7-5720-424d-ab5a-f513f9d47f02', 'Nice', '2000.00', 8, '2021-12-26 09:16:43.479717', '2021-12-26 09:31:23.933196'),
(3, 'P Three', 'p-three-fd6f657f-6785-4811-90b7-58c8b4995b77', 'Nice', '2000.00', 11, '2021-12-26 09:16:52.294921', '2021-12-28 08:13:34.582626'),
(4, 'Shoes', 'shoes-700e1b84-c708-45dc-8995-d8c6b6aa2bcc', 'Bata, Lotto, Appex', '1200.00', 11, '2021-12-27 10:21:02.166672', '2021-12-28 08:13:34.559034'),
(5, 'seff', 'seff-71b538a7-3f6e-4b88-972b-1cd6694bad69', 'srfrwfr', '123.00', 11, '2021-12-27 11:15:35.034012', '2021-12-28 08:14:42.589259');

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

INSERT INTO `token_blacklist_blacklistedtoken` (`id`, `blacklisted_at`, `token_id`) VALUES
(1, '2021-12-27 11:45:42.695430', 1),
(2, '2021-12-27 11:46:56.942710', 2),
(3, '2021-12-27 11:48:01.390617', 3),
(4, '2021-12-27 11:55:58.730142', 4),
(5, '2021-12-28 05:59:38.617433', 5),
(6, '2021-12-28 06:00:32.645848', 7),
(7, '2021-12-28 06:01:34.182636', 8),
(8, '2021-12-28 06:02:12.787319', 9),
(9, '2021-12-28 06:03:15.094897', 10),
(10, '2021-12-28 06:04:02.812296', 11),
(11, '2021-12-28 06:09:08.131877', 12),
(12, '2021-12-28 06:10:07.927511', 13),
(13, '2021-12-28 06:10:34.274969', 14),
(14, '2021-12-28 06:12:00.908788', 15),
(15, '2021-12-28 06:12:39.290041', 16),
(16, '2021-12-28 06:12:57.553566', 17),
(17, '2021-12-28 06:13:12.639747', 18),
(18, '2021-12-28 06:37:21.994311', 19),
(19, '2021-12-28 06:37:58.661564', 20),
(20, '2021-12-28 06:41:17.536955', 21),
(21, '2021-12-28 06:42:35.150504', 22),
(22, '2021-12-28 06:45:35.406666', 23),
(23, '2021-12-28 06:45:47.372594', 24),
(24, '2021-12-28 06:47:24.264403', 25),
(25, '2021-12-28 06:47:35.018132', 26),
(26, '2021-12-28 06:49:18.454717', 27),
(27, '2021-12-28 06:50:20.192506', 28),
(28, '2021-12-28 06:50:50.128702', 29),
(29, '2021-12-28 06:52:29.648660', 30),
(30, '2021-12-28 06:52:52.437764', 31),
(31, '2021-12-28 06:53:57.019677', 32),
(32, '2021-12-28 06:56:07.128155', 33),
(33, '2021-12-28 06:56:22.470114', 34),
(34, '2021-12-28 06:58:13.015696', 35),
(35, '2021-12-28 06:58:28.951854', 36),
(36, '2021-12-28 07:07:42.337623', 37),
(37, '2021-12-28 07:08:13.498421', 38);

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `jti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzE3NjYxNCwiaWF0IjoxNjQwNTg0NjE0LCJqdGkiOiIyNTJlMjM2OWZjMzI0OTY0ODU0MGFlMTc2NDQ5ZTMxZiIsInVzZXJfaWQiOjF9.nI5-5e00Q0SWThSAzZQCVHpXAuotiH4REqkQeAWE60E', NULL, '2022-01-26 05:56:54.000000', NULL, '252e2369fc3249648540ae176449e31f'),
(2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzE5NzU5NiwiaWF0IjoxNjQwNjA1NTk2LCJqdGkiOiIzZTJlZThmMDdmNzY0YWEzYmEyZDlhMGQyZmE5ZGFlOSIsInVzZXJfaWQiOjF9.yWHiFy4jBcp5w3QBXuMVpfVkdMXqCjGtmRd6R4o0aZc', '2021-12-27 11:46:36.128099', '2022-01-26 11:46:36.000000', 1, '3e2ee8f07f764aa3ba2d9a0d2fa9dae9'),
(3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzE5NzY1NywiaWF0IjoxNjQwNjA1NjU3LCJqdGkiOiIyNmU3YjJiZmFjZmY0MGQ1ODUzMTRjMDQzYzBhZGQwYSIsInVzZXJfaWQiOjF9.PYkWcuXNdQ7uNEqY_z3lTI-pGPBA4KXf_O-9HQYunpM', '2021-12-27 11:47:37.888715', '2022-01-26 11:47:37.000000', 1, '26e7b2bfacff40d585314c043c0add0a'),
(4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzE5NjAxMiwiaWF0IjoxNjQwNjA0MDEyLCJqdGkiOiIyOTc1ZDI4Y2EyNjc0Yzk3OWRkZWU1NDU3OGQ1ODJhOSIsInVzZXJfaWQiOjJ9.lII-5lx-RgIRKaCzTXxzy8JKYMdG8E0oRPnbEQYe31g', NULL, '2022-01-26 11:20:12.000000', NULL, '2975d28ca2674c979ddee54578d582a9'),
(5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzE5ODE3MiwiaWF0IjoxNjQwNjA2MTcyLCJqdGkiOiIxZjJkMmVjYjk1MmM0NTgxOGE4ZjE5ODAyZjdhNDRmYyIsInVzZXJfaWQiOjJ9.1b1IIn2QNhvDpq6F3y5ncSsKsFNAbFwE7VW5v_kKhvA', '2021-12-27 11:56:12.761602', '2022-01-26 11:56:12.000000', 2, '1f2d2ecb952c45818a8f19802f7a44fc'),
(6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzIyMjIzNSwiaWF0IjoxNjQwNjMwMjM1LCJqdGkiOiJkMTdlZTQ5YmMwYmY0NTE2OWNiMjU2YTc4NWEyZWVjMCIsInVzZXJfaWQiOjF9.vXuLOlwOlX1vLLqPFZWntjhb2JYXGFt2PcwoKEqNmg0', '2021-12-27 18:37:15.813395', '2022-01-26 18:37:15.000000', 1, 'd17ee49bc0bf45169cb256a785a2eec0'),
(7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2MzE4NywiaWF0IjoxNjQwNjcxMTg3LCJqdGkiOiJiNzFkOGI1N2JkNGI0M2ZiODY0Y2RmMDkxOWFlMzlkOSIsInVzZXJfaWQiOjF9.Zh62h7CpS4_1psj8g4fPU1FN8ZBc3PEzhENmc2WMcnE', '2021-12-28 05:59:47.281458', '2022-01-27 05:59:47.000000', 1, 'b71d8b57bd4b43fb864cdf0919ae39d9'),
(8, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2MzI2NCwiaWF0IjoxNjQwNjcxMjY0LCJqdGkiOiJlMmU2MDhlZmZmNzk0YTIzOTM3NjIxMmY0MjgzOTJiZCIsInVzZXJfaWQiOjF9.dL-pQO7sVlENJ6ol0DN8zUT7qHaIVmHs1GL_idGA9N8', '2021-12-28 06:01:04.624797', '2022-01-27 06:01:04.000000', 1, 'e2e608efff794a239376212f428392bd'),
(9, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2MzMwNSwiaWF0IjoxNjQwNjcxMzA1LCJqdGkiOiJjODUwNThjOWNiMDE0ZmFhODRlODUwOWY4YjY1OWU5NiIsInVzZXJfaWQiOjJ9.SQRXMDNABoLWv-9PClN5M5oobJMZnxfjT9xWRnhqA4c', '2021-12-28 06:01:45.659917', '2022-01-27 06:01:45.000000', 2, 'c85058c9cb014faa84e8509f8b659e96'),
(10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2MzM4NSwiaWF0IjoxNjQwNjcxMzg1LCJqdGkiOiJkOGU0MzZjNzkxZjA0OGRmOGNmZWE5NmM2YjA5ODQ5ZiIsInVzZXJfaWQiOjF9.7fHD1UYyzH6_zVp-qap3hYiur8ROUzXzRsHd4ele4Cw', '2021-12-28 06:03:05.102551', '2022-01-27 06:03:05.000000', 1, 'd8e436c791f048df8cfea96c6b09849f'),
(11, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2MzQwNywiaWF0IjoxNjQwNjcxNDA3LCJqdGkiOiIxNzE1OWI1N2NhOTA0YTA5OTY5MzUxNDU5MTFlNWVlNyIsInVzZXJfaWQiOjJ9.UfoL1y0A4Wr88GL0hGI5fmV2xVwzYZtMr1ZF5oUSmOw', '2021-12-28 06:03:27.260903', '2022-01-27 06:03:27.000000', 2, '17159b57ca904a0996935145911e5ee7'),
(12, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2MzQ1MSwiaWF0IjoxNjQwNjcxNDUxLCJqdGkiOiJlYzg1MzQ5N2U5ODI0ZTZlOGJiNmExNzUwYWQ5ZjQzYyIsInVzZXJfaWQiOjF9.VxtWCsvc8kZrJ_HlQISOUK6PRD8x7Q_-GEMUSkN27E4', '2021-12-28 06:04:11.747442', '2022-01-27 06:04:11.000000', 1, 'ec853497e9824e6e8bb6a1750ad9f43c'),
(13, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2Mzc2MywiaWF0IjoxNjQwNjcxNzYzLCJqdGkiOiI4Y2E1NDlkYmE5NWQ0MGIzODcyYWQ3Y2E5MDMxZWE1ZCIsInVzZXJfaWQiOjJ9.rKefWGpjhP1j544-EGnNiReko7qEdHZATxeenoOEQdY', '2021-12-28 06:09:23.625176', '2022-01-27 06:09:23.000000', 2, '8ca549dba95d40b3872ad7ca9031ea5d'),
(14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2MzgxNSwiaWF0IjoxNjQwNjcxODE1LCJqdGkiOiI4NWRjN2ZmN2VmODg0MWI1OTg3Yjc3OTljNTE5YTNlYSIsInVzZXJfaWQiOjF9.FsliPlcVMPQo3GNi0jNH7zShKARnvkStq9aOMUjcf-U', '2021-12-28 06:10:15.898268', '2022-01-27 06:10:15.000000', 1, '85dc7ff7ef8841b5987b7799c519a3ea'),
(15, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2Mzg1MCwiaWF0IjoxNjQwNjcxODUwLCJqdGkiOiIyNmMwZTRlZGY5Mjc0ODFiYmM4ZTc3NzMxMzYyZWU3MiIsInVzZXJfaWQiOjJ9.bVjEZuevvWaX2AQXBDTytg0Nq9RTM1AR89t-z2JgYag', '2021-12-28 06:10:50.389341', '2022-01-27 06:10:50.000000', 2, '26c0e4edf927481bbc8e77731362ee72'),
(16, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2Mzk1MiwiaWF0IjoxNjQwNjcxOTUyLCJqdGkiOiJjNDVjMGI0NjkwZDk0OWY4YWIzNmE5N2RhZmEyY2ZkYyIsInVzZXJfaWQiOjF9.oNdKmcLSW_3VhfMU0LCv2vfVBacN7v7bHQBihkLOoxM', '2021-12-28 06:12:32.572577', '2022-01-27 06:12:32.000000', 1, 'c45c0b4690d949f8ab36a97dafa2cfdc'),
(17, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2Mzk2OSwiaWF0IjoxNjQwNjcxOTY5LCJqdGkiOiI1ZDlhNjU2Yjc3MjY0ODcwYWU2ZDk5MDRmZmEyNTcxMCIsInVzZXJfaWQiOjJ9.Z3dr3w7bfcXMPl3NOpySKXbf-gGuLX2pnitlAYnm56w', '2021-12-28 06:12:49.244160', '2022-01-27 06:12:49.000000', 2, '5d9a656b77264870ae6d9904ffa25710'),
(18, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2Mzk4OCwiaWF0IjoxNjQwNjcxOTg4LCJqdGkiOiJjYWUwNjcwZWFmNDY0NjRjYjA0NWE2ZjJmMjdmMzQ2MyIsInVzZXJfaWQiOjF9.anVW4CVJVYrCpJDS_Rbbb5-dEchiUoXkPOi0jzhQMTQ', '2021-12-28 06:13:08.168735', '2022-01-27 06:13:08.000000', 1, 'cae0670eaf46464cb045a6f2f27f3463'),
(19, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NDAwMSwiaWF0IjoxNjQwNjcyMDAxLCJqdGkiOiIzM2Q4MmZjODBiNTU0MTI1ODc1ODU3YjdlMmExNDQ2NyIsInVzZXJfaWQiOjJ9.lKQA2rT9OhRO61jMmfipmIsHO32uLS2XdKnABvoWPsM', '2021-12-28 06:13:21.501979', '2022-01-27 06:13:21.000000', 2, '33d82fc80b554125875857b7e2a14467'),
(20, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NTQ1NSwiaWF0IjoxNjQwNjczNDU1LCJqdGkiOiIxYWViYzM2MTZkYzA0NzdhYjEyNDMyNGIzZTc1NjY4MiIsInVzZXJfaWQiOjJ9.BU2y2H3lFwipKdkbutZrQW83y27sN57F7aS2c6ih5OA', '2021-12-28 06:37:35.964224', '2022-01-27 06:37:35.000000', 2, '1aebc3616dc0477ab124324b3e756682'),
(21, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NTQ4NiwiaWF0IjoxNjQwNjczNDg2LCJqdGkiOiI3YTJjODc0ZTVkZGY0OWNkYmUyNjYwZDM2Yjc0ZGQ1OSIsInVzZXJfaWQiOjJ9.cux8smuxDkOHu3H-Ji4TaFZ8c3HsaTFCtO9XnPgOvPA', '2021-12-28 06:38:06.330076', '2022-01-27 06:38:06.000000', 2, '7a2c874e5ddf49cdbe2660d36b74dd59'),
(22, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NTY4NiwiaWF0IjoxNjQwNjczNjg2LCJqdGkiOiJhODc3YzAyMzMyZTk0M2Y4YTNkYjkwNDNiN2M2ZGI0YiIsInVzZXJfaWQiOjF9.WFBfLQdBrSioB76fO1gLTh5ZLvY8-7skfw8VsvZ_JcU', '2021-12-28 06:41:26.949838', '2022-01-27 06:41:26.000000', 1, 'a877c02332e943f8a3db9043b7c6db4b'),
(23, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NTc2NiwiaWF0IjoxNjQwNjczNzY2LCJqdGkiOiI2MjMwY2YxZGIzMmE0MDEwODNiMjdhOTdhYzgzMjNmOSIsInVzZXJfaWQiOjF9.0E3GoXyMdoSqwiwRwhbvY3McweXE4J75l21yQIvlJKQ', '2021-12-28 06:42:46.308307', '2022-01-27 06:42:46.000000', 1, '6230cf1db32a401083b27a97ac8323f9'),
(24, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NTk0MywiaWF0IjoxNjQwNjczOTQzLCJqdGkiOiIzYWUxMDMyMWI3OTY0MjA1YmYxZWIzNTZlZjE1OTFhZiIsInVzZXJfaWQiOjJ9.CfT71RXpYhXX_P0fvmVCNUsemFZ02qwk6mtz8v7KDNU', '2021-12-28 06:45:43.499313', '2022-01-27 06:45:43.000000', 2, '3ae10321b7964205bf1eb356ef1591af'),
(25, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NTk1NiwiaWF0IjoxNjQwNjczOTU2LCJqdGkiOiJlOGM0OGFlNGU4YTI0ZGM3OGY3N2MxZWU4ZWUzZmMwNyIsInVzZXJfaWQiOjF9.HBWUmRdcdObgLVofrQ57aOPCM3qtGxa67zAbMpL8dsw', '2021-12-28 06:45:56.124377', '2022-01-27 06:45:56.000000', 1, 'e8c48ae4e8a24dc78f77c1ee8ee3fc07'),
(26, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjA1MiwiaWF0IjoxNjQwNjc0MDUyLCJqdGkiOiJmYWM1MmIwZjUzMmU0MjE5OTg0MGI0NjAxZjUwNmVmNiIsInVzZXJfaWQiOjF9.B1UvFVjbTWPOwzOaPnwfaw54aiovJn_eFGqMPwXwV7Q', '2021-12-28 06:47:32.775908', '2022-01-27 06:47:32.000000', 1, 'fac52b0f532e42199840b4601f506ef6'),
(27, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjA2MywiaWF0IjoxNjQwNjc0MDYzLCJqdGkiOiIxZDkzYzVmNDU0Nzc0NjM0YWJhYmQ0MGI4YzY5ZDJmOCIsInVzZXJfaWQiOjJ9.W3cpE65bVngU4Kx6GgJQrN7OiUpVPBqyNsyF-eWRLjk', '2021-12-28 06:47:43.912292', '2022-01-27 06:47:43.000000', 2, '1d93c5f454774634ababd40b8c69d2f8'),
(28, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjE2NiwiaWF0IjoxNjQwNjc0MTY2LCJqdGkiOiI1YzgwNDI2MTlkNjY0NmIwYTQ2OGVkN2ZiZjc3OTg2MyIsInVzZXJfaWQiOjJ9.fYwtTONXXXfj4vSjuCmgGj8Yt58JcG3Xw_MCOSZhzJE', '2021-12-28 06:49:26.477627', '2022-01-27 06:49:26.000000', 2, '5c8042619d6646b0a468ed7fbf779863'),
(29, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjIzOSwiaWF0IjoxNjQwNjc0MjM5LCJqdGkiOiIzOTIzNTM4ZTQ0YzE0MmU4OWMyOThjMmYzZDVmYzBhYiIsInVzZXJfaWQiOjJ9.w9yuwKnM46aCkIjjXmhsZ6IREE9Q4gP4-OPTxYeMK58', '2021-12-28 06:50:39.414244', '2022-01-27 06:50:39.000000', 2, '3923538e44c142e89c298c2f3d5fc0ab'),
(30, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjI1NywiaWF0IjoxNjQwNjc0MjU3LCJqdGkiOiI1NjUxMTllYTBhMjA0NDIxOWE3YzkzZmU1ZWU1OTFkMiIsInVzZXJfaWQiOjF9.ViOkW31wBW145cBEn4YUDuc3e8Zx4zdDbaNl0vZQwqk', '2021-12-28 06:50:57.553141', '2022-01-27 06:50:57.000000', 1, '565119ea0a2044219a7c93fe5ee591d2'),
(31, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjM2MCwiaWF0IjoxNjQwNjc0MzYwLCJqdGkiOiJiNDliZjM3MWVhNTY0OGUxYjIzZTQ0NTNlZTcxZGRmMiIsInVzZXJfaWQiOjJ9.toukmpyq8gLut1H7eu888RyyxUPP8r6QREHVZ0888yA', '2021-12-28 06:52:40.583843', '2022-01-27 06:52:40.000000', 2, 'b49bf371ea5648e1b23e4453ee71ddf2'),
(32, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjM4MiwiaWF0IjoxNjQwNjc0MzgyLCJqdGkiOiI0MzM4YWJlMmMwNzI0NmIxOTI5NGUwMzg2Yzc4MGY5YiIsInVzZXJfaWQiOjF9.vJ18s0d-7BIDgWxQes1RhCM9T7jfNZjLCWsunyHtqpk', '2021-12-28 06:53:02.977661', '2022-01-27 06:53:02.000000', 1, '4338abe2c07246b19294e0386c780f9b'),
(33, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjQ0OSwiaWF0IjoxNjQwNjc0NDQ5LCJqdGkiOiJmZGI5MzFkZGE5MzI0NTcxOTE5MTYwOTBkNTAzZjk5NyIsInVzZXJfaWQiOjF9.BLK2RU3sJ3N7LVc2fRJsSsFYUug12T-2leve_RD_aCk', '2021-12-28 06:54:09.022342', '2022-01-27 06:54:09.000000', 1, 'fdb931dda932457191916090d503f997'),
(34, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjU3NSwiaWF0IjoxNjQwNjc0NTc1LCJqdGkiOiJiMDM0YzM3ZjFkMTk0ODU4YWE5M2IwNTgyMzZhZDgwYSIsInVzZXJfaWQiOjF9.46HfMlPr6xfSQHuYAFDODzRV3a6jjmvmxHZAfSOhx_8', '2021-12-28 06:56:15.154726', '2022-01-27 06:56:15.000000', 1, 'b034c37f1d194858aa93b058236ad80a'),
(35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjU5MSwiaWF0IjoxNjQwNjc0NTkxLCJqdGkiOiI5NjI5YjE5MTAxMDI0NGY3OTNlY2Y2OGY2ODU2YTBhZiIsInVzZXJfaWQiOjJ9.gJIfrNAkPLNZvLCWZZul-A8LNP3M3r7RXF3stpHbYS8', '2021-12-28 06:56:31.320127', '2022-01-27 06:56:31.000000', 2, '9629b191010244f793ecf68f6856a0af'),
(36, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjcwMSwiaWF0IjoxNjQwNjc0NzAxLCJqdGkiOiIxNWU4ZDZhZWU4NDc0ODNmYjQ5ZmZkMjkzNmFjNjVhMSIsInVzZXJfaWQiOjF9.0lSmYpnAV4YHzvxe4hJ4eZuWrDntFT2z4cAkst544o0', '2021-12-28 06:58:21.426787', '2022-01-27 06:58:21.000000', 1, '15e8d6aee847483fb49ffd2936ac65a1'),
(37, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NjcxOCwiaWF0IjoxNjQwNjc0NzE4LCJqdGkiOiIxNGY5MTI2N2RmYmE0OTgxYWY3MDBiYjFkNzU0MWQzMyIsInVzZXJfaWQiOjJ9.F3c1hLQQJ1_my-ADF3PC0-Kx1ED9ZljhVo6eOfw9ijw', '2021-12-28 06:58:38.776708', '2022-01-27 06:58:38.000000', 2, '14f91267dfba4981af700bb1d7541d33'),
(38, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NzI2OSwiaWF0IjoxNjQwNjc1MjY5LCJqdGkiOiI1MDA5MzU1NDc2MDk0YmRhODYxMTczZTNmMDZiZmE1MyIsInVzZXJfaWQiOjF9.kmoEJ46RXencLKxkgAjJfzgr7cWPcMLB5tdrOrv6sF8', '2021-12-28 07:07:49.994146', '2022-01-27 07:07:49.000000', 1, '5009355476094bda861173e3f06bfa53'),
(39, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0MzI2NzMwMywiaWF0IjoxNjQwNjc1MzAzLCJqdGkiOiI0MTcxY2I0NjM1Y2Y0MWVjOWZmZTI3OWNjNTk5M2I4NSIsInVzZXJfaWQiOjJ9.8sUicG3LyzWkQ0F00Z-t07EVh6veWd9b4bJVhF_oSPE', '2021-12-28 07:08:23.006683', '2022-01-27 07:08:23.000000', 2, '4171cb4635cf41ec9ffe279cc5993b85');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(254) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(254) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `email`, `username`, `name`, `slug`, `updated_at`, `is_staff`, `is_superuser`, `is_active`, `last_login`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$JBLxDypWoXja5PWAgFTi1U$iTJ65a7nXc6YTTQlfptaaXWFg672Z6j48bcoOcO5fAY=', 'admin@admin.com', 'admin__02451', NULL, '6a7f7c89-b4cc-48e4-afeb-61abd479f655', '2021-12-26 09:11:14.438470', 1, 1, 1, '2021-12-26 09:17:23.046362', '2021-12-26 09:11:14.439469'),
(2, 'pbkdf2_sha256$320000$DPBD4YWoOBsNFW0Aiu3qgn$K/v+J3gyndrgmVEyGr3muJLvU2S1GMQhim3UbYxICVI=', 'hasan@gmail.com', 'hasan__dhe61', 'hasan', 'f8ea3f37-ae5e-467e-8533-abbdb6170a9f', '2021-12-27 11:10:47.242206', 0, 0, 1, NULL, '2021-12-27 11:10:47.242206');

-- --------------------------------------------------------

--
-- Table structure for table `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_users_user_id` (`user_id`);

--
-- Indexes for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderitem_product_id_afe4254a_fk_products_product_id` (`product_id`);

--
-- Indexes for table `orders_shippingaddress`
--
ALTER TABLE `orders_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`);

--
-- Indexes for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  ADD KEY `token_blacklist_outs_user_id_83bc629a_fk_users_use` (`user_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_shippingaddress`
--
ALTER TABLE `orders_shippingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  ADD CONSTRAINT `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderitem_product_id_afe4254a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- Constraints for table `orders_shippingaddress`
--
ALTER TABLE `orders_shippingaddress`
  ADD CONSTRAINT `orders_shippingaddress_order_id_da2e8a03_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`);

--
-- Constraints for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`);

--
-- Constraints for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
