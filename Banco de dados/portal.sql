-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2025 at 03:10 AM
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
-- Database: `portal`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `token`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Economia', 'economia', 1, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(2, 'Política', 'politica', 4, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(3, 'Entretenimento', 'entretenimento', 1, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(4, 'Policial', 'policial', 4, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(5, 'Mundo', 'mundo', 2, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(6, 'Tecnologia', 'tecnologia', 5, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(7, 'Casa', 'casa', 1, '2025-04-02 21:20:49', '2025-04-02 21:20:49'),
(8, 'Manual-Mundo', 'manual_mundo', 1, '2025-04-02 21:22:41', '2025-04-02 21:22:41'),
(9, 'Vida', 'vida', 10, '2025-04-03 04:04:21', '2025-04-03 04:04:21');

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
(5, '2025_03_30_004747_create_news_table', 2),
(7, '2025_03_30_012513_create_categories_table', 3),
(55, '2025_03_30_203500_create_news_table', 4),
(75, '2025_03_31_203500_create_news_table', 6),
(134, '0001_01_01_000000_create_users_table', 7),
(135, '0001_01_01_000001_create_cache_table', 7),
(136, '0001_01_01_000002_create_jobs_table', 7),
(137, '2025_03_31_020321_create_categories_table', 7),
(138, '2025_03_31_021218_create_news_table', 7),
(139, '2025_03_31_021219_add_category_id_to_news_table', 7),
(140, '2025_04_01_191134_add_access_level_to_users_table', 7),
(141, '2025_04_01_230858_add_cover_and_id_user_to_news_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `id_user`, `title`, `subtitle`, `text`, `created_at`, `updated_at`, `cover`) VALUES
(1, 3, 2, 'Quos sint labore veniam sit.', 'Laborum quia voluptas tempora.', 'Minima mollitia dignissimos porro voluptatibus natus. Quod cumque quia hic consectetur. Qui consequatur sit nemo.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(2, 6, 1, 'Harum non voluptate explicabo atque assumenda.', 'Voluptatem necessitatibus omnis perspiciatis magni eum molestiae sit.', 'Doloremque consequatur animi rerum cum ipsam. Voluptatum vero ut modi necessitatibus quasi quaerat. Rerum sint nihil earum accusamus excepturi.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(3, 4, 5, 'Cumque incidunt quo aperiam aliquid sed hic omnis non.', 'Tempora velit provident voluptatem ex.', 'Qui eos quas est. Corporis voluptatem laborum vel a. Culpa ut omnis eveniet. Dolorum rem atque beatae quis temporibus doloremque error.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(4, 1, 4, 'Velit veniam qui aperiam magnam.', 'Nam vel eos labore commodi dolorem ea.', 'Quia asperiores totam eius quod repudiandae. Nulla omnis dolores ut ullam modi dolore libero dolores. Omnis labore aperiam sequi quasi.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(5, 2, 4, 'Maiores at omnis quis maiores maiores.', 'Aperiam laudantium praesentium dicta est dolor hic.', 'Quidem nobis quae dolore. Adipisci minima laboriosam enim ut qui officiis. Id eius illo et possimus harum totam. Exercitationem sit dolorem consequatur tempora.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(6, 6, 5, 'Id voluptas dolore omnis veniam quo unde.', 'Pariatur sed ut maxime exercitationem.', 'Unde repellat autem voluptates enim perferendis perspiciatis. Voluptates dolorem nulla iure praesentium quis. Sunt voluptates delectus totam repellendus quam commodi animi.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(7, 6, 4, 'Nostrum illo totam praesentium maiores velit dolorum.', 'Et omnis aut adipisci qui.', 'Alias reiciendis sequi dolorem ea. Rerum enim in cupiditate illo rem et dolor. Suscipit exercitationem rerum laboriosam distinctio velit. Distinctio eveniet recusandae ut consequatur nemo.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(8, 5, 5, 'Eligendi vel voluptatem nihil quis quam voluptas temporibus sit.', 'Doloremque voluptatem quos sint enim aut.', 'Id eum ut excepturi et perferendis. Libero aperiam quidem et voluptas quis officiis eos modi. Ullam iure facilis aut dolores in.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(9, 5, 1, 'Praesentium quod quis eum sapiente aliquid magnam.', 'Aut totam eveniet magnam.', 'Iste asperiores qui qui ut vero impedit similique sequi. Iure veritatis vero ducimus. Est rerum sint eum vitae explicabo. Quia culpa omnis nesciunt sed nihil hic quidem.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(10, 2, 3, 'Quia ut dignissimos dignissimos.', 'Alias est sed quo vel.', 'Et officia vitae rerum. Voluptate qui soluta saepe quibusdam qui dolor. Sunt a dolorum molestiae. Atque sit minus et et.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(11, 3, 4, 'Eligendi quidem fuga perspiciatis adipisci.', 'Aut sequi deleniti voluptatibus quisquam magni dolorem laboriosam.', 'Placeat tempora libero natus et vitae. Consequatur sint culpa suscipit id. Nulla vel aut soluta architecto ullam. Cumque id at quos dignissimos.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(12, 1, 3, 'Eius nostrum fugit officiis deserunt dignissimos.', 'Est perspiciatis adipisci sit explicabo distinctio ullam accusamus.', 'Accusamus libero et et sequi debitis vel omnis. Ut assumenda omnis incidunt et provident cumque ut. Beatae aliquid fugiat consequatur molestiae qui ipsam. Inventore odit adipisci cumque commodi.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(13, 3, 4, 'Modi odit voluptatibus ullam et sit ipsam.', 'Sint natus voluptatem eaque et iste et.', 'Pariatur dolorem non facilis non ullam. Omnis eaque dolor iste omnis iure. Eum aliquam voluptatem facere illo molestias consequatur. Blanditiis voluptate eos nemo est magni esse.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(14, 3, 3, 'Voluptatem magnam eum magnam aspernatur cupiditate.', 'Placeat facere sed voluptas eum.', 'Inventore officia ut vel atque. Incidunt rem ad animi vel at dicta omnis. Enim laborum incidunt quisquam autem. Modi nulla porro dolor dolores velit saepe consequatur.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(15, 6, 2, 'Iusto suscipit fuga sed iusto amet alias minima qui.', 'Voluptatem autem amet architecto dolor.', 'Aliquam facilis et expedita beatae et sunt. Adipisci ut voluptatem vel rerum tempora aut voluptas quibusdam. Officia iste et eveniet.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(16, 6, 1, 'Minus numquam sed explicabo ut delectus voluptatem sed harum.', 'Et et non neque culpa.', 'Est et minima enim non. Aliquam voluptatem culpa veritatis vero non. Adipisci est praesentium ut sunt sapiente impedit totam.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(17, 6, 1, 'Tempore mollitia veniam quas harum possimus.', 'Sed facere earum harum ut velit repellendus.', 'Velit est blanditiis atque dolorum voluptates enim. Et rerum aut et aliquam. Quasi commodi corporis omnis officia optio alias. Asperiores rerum et magnam explicabo ut minima quidem.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(18, 6, 5, 'Ullam et qui voluptas quis est fugiat quae.', 'Enim consequatur et repudiandae adipisci aut non.', 'Veniam facilis nobis harum blanditiis qui. Molestias vero nesciunt culpa voluptas quasi. Culpa et atque harum repellendus deleniti eligendi. Ut quaerat tempora quia.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(19, 5, 5, 'Tempore aliquid nulla illo temporibus voluptatem eum.', 'Porro cumque molestias vero non commodi hic.', 'Et laudantium eveniet aperiam nihil velit. Occaecati commodi et laborum. Sapiente quia non nobis incidunt nobis omnis aut. Corrupti natus enim quas optio modi sit.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(20, 2, 4, 'Perferendis aut corporis quidem corrupti non.', 'Doloremque dignissimos facilis ut corporis modi.', 'Est minus eum vero nemo. Dolor omnis nulla vel mollitia alias soluta. Tempore eos corporis et. Delectus sunt quam autem cum sit adipisci.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(21, 2, 5, 'Quasi aut inventore dolorum non.', 'Eius molestiae ut aut vero ipsum voluptatem eos ea.', 'Non laboriosam doloremque eius et. Minus voluptatem exercitationem et minima quisquam voluptatem. Ut praesentium tenetur qui perferendis praesentium dolorum. Aliquid iure consequatur vel.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(22, 6, 2, 'Iste eum ut et reprehenderit consequatur mollitia esse enim.', 'Et doloribus neque ipsa dignissimos dignissimos ipsa.', 'Dignissimos enim aperiam sed beatae sed. Ut alias aspernatur non ullam ratione nostrum. Commodi dignissimos praesentium doloremque est dolore et corrupti. Sapiente ea ut explicabo et expedita qui ut.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(23, 4, 4, 'Quia et perferendis ut natus.', 'Qui nihil maxime laudantium quod repudiandae hic tempora et.', 'Odio aut voluptas ab possimus maiores officia quidem. Sunt qui eum voluptas et quasi ea inventore.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(24, 5, 2, 'Esse ex cum dolorum ut.', 'Veritatis et odio veniam unde repudiandae soluta.', 'Commodi repudiandae ab quas aliquid eos. Quidem voluptatum expedita quae. Amet nobis aspernatur est omnis voluptatem eum. Et numquam esse libero expedita itaque molestias.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(25, 3, 4, 'o rato roeu a roupa deo rei de roma', 'Possimus ex voluptatem et reiciendis ullam quas.', 'Dolores nulla repellendus doloremque tempora minus veritatis. Et non iusto rem qui repudiandae non exercitationem est. Non tenetur odit quia dicta et.', '2025-04-02 15:54:52', '2025-04-02 15:54:52', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(26, 5, 8, 'Jovem de 17 anos morre após ataque de tubarão em praia de surfe na Austrália', 'Incidente aconteceu nesta segunda-feira (3), em uma ilha australiana. Adolescente chegou a ser socorrida, mas não resistiu aos ferimentos.', 'Uma jovem de 17 anos morreu após ser atacada por um tubarão enquanto estava nadando em uma ilha da Austrália nesta segunda-feira (3). Este é o terceiro ataque fatal desse tipo em pouco mais de cinco semanas no país. \r\n\r\nAs equipes de resgate correram para tentar salvar a menina, mas ela \"sucumbiu aos ferimentos\" cerca de 15 minutos depois, segundo a polícia. \r\n\r\nEste é o segundo ataque fatal de tubarão desde o início do ano na Austrália e o terceiro desde 28 de dezembro. Em 2 de janeiro, testemunhas viram um tubarão atacar um surfista de 28 anos em uma praia conhecida como Granites, no sul da Austrália.\r\n\r\nAlguns dias antes, um tubarão matou um pastor de 40 anos que pescava com sua família nas águas da Grande Barreira de Corais, na ilha de Humpy, na costa leste do país.    \r\n\r\nMais de 1.200 incidentes envolvendo tubarões foram registrados na Austrália desde 1791 e mais de 250 resultaram em morte, de acordo com dados nacionais.      \r\n\r\nAs mordidas mais graves são causadas por tubarões-brancos, tubarões-touro e tubarões-tigre.', '2025-04-03 03:04:55', '2025-04-03 03:04:55', 'J0uMFlXIQJIMDXakyI791qISwEBdTsUn5UDjaVmd.jpg'),
(27, 1, 10, 'Notícia teste', 'resumo do teste', 'Texto do texte', '2025-04-03 04:03:53', '2025-04-03 04:03:53', '1PNoZ0DOALeFKOrfsVyXM9uDO6IP4jwsacCOwdeX.jpg');

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
('8R28OBeXzSIMD0t4G3WT5sj4t7Aiqek97LrlzbpX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHFxdExZQnJseU5aNmg3TjZkM25ueGh5blVGdFJUWDBFQ1llcGdhWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ub3RpY2lhL2ltYWdlbS8xUE5vWjBET0FMZUZLT3Jmc1Z5WE05dURPNklQNGp3c2FjQ093ZGVYLmpwZyI7fX0=', 1743642413);

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
  `access_level` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `access_level`, `created_at`, `updated_at`) VALUES
(1, 'Syble Watsica', 'carlos@gmail.com', '2025-04-02 15:54:52', '$2y$12$c9drzPX4yI8S2OkoBKdweuW6OcVwd8ZyZ8bK1hGrk0Z9spsmHYgk2', 'Gtwc29KqmnoNGKzLVGwkbLGSwShLxfMIPhDghCvlb6sHM8MAMYjn0FIzrr63', 2, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(2, 'Liliane Mertz', 'carmen14@example.com', '2025-04-02 15:54:52', '$2y$12$c9drzPX4yI8S2OkoBKdweuW6OcVwd8ZyZ8bK1hGrk0Z9spsmHYgk2', 'zkP9EjrRWL', 2, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(3, 'Ludwig Erdman', 'maribel54@example.org', '2025-04-02 15:54:52', '$2y$12$c9drzPX4yI8S2OkoBKdweuW6OcVwd8ZyZ8bK1hGrk0Z9spsmHYgk2', 'T55U5i256k', 2, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(4, 'Freddy Gerhold Sr.', 'rohan.jammie@example.org', '2025-04-02 15:54:52', '$2y$12$c9drzPX4yI8S2OkoBKdweuW6OcVwd8ZyZ8bK1hGrk0Z9spsmHYgk2', 'I71Aot4YrV', 2, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(5, 'Annabell Pacocha', 'senger.keenan@example.com', '2025-04-02 15:54:52', '$2y$12$c9drzPX4yI8S2OkoBKdweuW6OcVwd8ZyZ8bK1hGrk0Z9spsmHYgk2', 'npcAZmbjkv', 2, '2025-04-02 15:54:52', '2025-04-02 15:54:52'),
(6, 'Carlos Jonas', 'carlos5@gmail.com', NULL, '$2y$12$D0UNpt2MEJ8oYEit2KQkNOaiXhScRE088CalWYlybzYxnmAR1LscW', NULL, 2, '2025-04-03 02:55:45', '2025-04-03 02:55:45'),
(7, 'carlos jonas', 'carlos6@gmail.com', NULL, '$2y$12$lAqMLC58JOxekP/XMXy6IuZQdXLLlTdnnlXI4Xl8jqBEdytCX99je', NULL, 2, '2025-04-03 02:58:47', '2025-04-03 02:58:47'),
(8, 'carlos jonas7', 'carlos7@gmail.com', NULL, '$2y$12$6vwbYQg6qX6JLLbnVw3toOfXyhLgdfZMa97Ld.uk2gnFCgPa0RsuG', NULL, 2, '2025-04-03 03:01:04', '2025-04-03 03:01:04'),
(9, 'Carlos Jonas Pereira Da Fonseca', 'ca@gmail.com', NULL, '$2y$12$7Ta2sB1zVQU0aLDKvn9GHOzx/BPsfvG0Q.B.4Rizy9vlkySpsIkJy', NULL, 2, '2025-04-03 03:25:55', '2025-04-03 03:25:55'),
(10, 'Beto antônio', 'beto@gmail.com', NULL, '$2y$12$9R5RljnaqcRg/8eT/pJ9remKz6wjXMYbcFOek2Mb29agEJE4zeYqS', NULL, 2, '2025-04-03 04:02:59', '2025-04-03 04:02:59');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_token_unique` (`token`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
