-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: website-db:3306
-- Tiempo de generación: 26-09-2021 a las 02:20:53
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baubyte_website`
--
CREATE DATABASE IF NOT EXISTS `baubyte_website` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `baubyte_website`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administradores. La parte superior de la cadena alimentaria.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '127.0.0.1', 'baubyte', NULL, '2021-09-20 10:59:01', 0),
(2, '127.0.0.1', 'admin@baubyte.com.ar', 1, '2021-09-20 10:59:25', 1),
(3, '127.0.0.1', 'admin@baubyte.com.ar', 1, '2021-09-20 15:35:42', 1),
(4, '127.0.0.1', 'admin@baubyte.com.ar', 1, '2021-09-21 08:27:31', 1),
(5, '::1', 'admin@baubyte.com.ar', 1, '2021-09-21 13:19:47', 1),
(6, '::1', 'admin@baubyte.com.ar', 1, '2021-09-21 13:23:00', 1),
(7, '::1', 'admin@baubyte.com.ar', 1, '2021-09-22 08:21:46', 1),
(8, '::1', 'admin@baubyte.com.ar', 1, '2021-09-23 10:46:09', 1),
(9, '::1', 'admin@baubyte.com.ar', 1, '2021-09-23 13:54:54', 1),
(10, '172.18.0.1', 'admin@baubyte.com.ar', 1, '2021-09-23 19:58:57', 1),
(11, '172.18.0.1', 'admin@baubyte.com.ar', 1, '2021-09-25 13:29:09', 1),
(12, '172.18.0.1', 'admin@baubyte.com.ar', 1, '2021-09-25 19:09:51', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'admin-website', 'El usuario puede acceder al panel de administración.'),
(2, 'gestionar-usuarios', 'El usuario puede crear, eliminar o modificar a los usuarios.'),
(3, 'roles-permisos', 'El usuario puede editar y definir permisos para un rol.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_users_permissions`
--

INSERT INTO `auth_users_permissions` (`user_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiences`
--

CREATE TABLE `experiences` (
  `id` int(12) UNSIGNED NOT NULL,
  `company` varchar(120) NOT NULL,
  `specialty_es` varchar(120) NOT NULL,
  `specialty_en` varchar(120) NOT NULL,
  `description_es` text,
  `description_en` text,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `specialty_es`, `specialty_en`, `description_es`, `description_en`, `start`, `end`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prefectura Naval Argentina', 'Soporte It', 'IT Support', '', '', '2010-04-01', '2012-10-01', '2021-09-23 21:24:38', '2021-09-25 19:35:24', '2021-09-25 19:35:24'),
(2, 'Prefectura Naval Argentina', 'Desallorador Full Stack', 'Full Stack Developer', '', '', '2012-01-10', '2021-09-25', '2021-09-23 22:26:53', '2021-09-25 19:25:26', NULL),
(3, 'Matelab Software Factory', 'Desarrollador Full Stack', 'Full Stack Developer', '', '', '2019-07-11', '2021-09-06', '2021-09-23 22:52:37', '2021-09-25 19:25:33', NULL),
(4, 'The Bit', 'Desallorador Full Stack', 'Full Stack Developer', '', '', '2021-09-11', '2021-09-25', '2021-09-23 22:54:51', '2021-09-25 19:25:36', NULL),
(5, 'Prefectura Naval Argentina', 'Soporte It', 'It Support', '', '', '2010-04-01', '2012-10-01', '2021-09-25 19:11:28', '2021-09-25 19:24:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(18, '2021-09-03-145911', 'App\\Database\\Migrations\\AddSkills', 'default', 'App', 1632087938, 1),
(19, '2021-09-03-150049', 'App\\Database\\Migrations\\AddTeams', 'default', 'App', 1632087939, 1),
(20, '2021-09-03-150113', 'App\\Database\\Migrations\\AddPortfolios', 'default', 'App', 1632087939, 1),
(21, '2021-09-15-183140', 'App\\Database\\Migrations\\AddExperiences', 'default', 'App', 1632087939, 1),
(22, '2021-09-15-183251', 'App\\Database\\Migrations\\AddStudies', 'default', 'App', 1632087940, 1),
(23, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1632087952, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(12) UNSIGNED NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `image` varchar(40) NOT NULL,
  `website_url_es` varchar(100) DEFAULT NULL,
  `website_url_en` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id` int(12) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `surname` varchar(120) NOT NULL,
  `avatar` varchar(40) NOT NULL,
  `email_contact` varchar(100) DEFAULT NULL,
  `description_es` text,
  `description_en` text,
  `specialty_es` varchar(100) NOT NULL,
  `specialty_en` varchar(100) DEFAULT NULL,
  `language_es` varchar(100) DEFAULT NULL,
  `language_en` varchar(100) DEFAULT NULL,
  `github_url` varchar(100) DEFAULT NULL,
  `linkedin_url` varchar(100) DEFAULT NULL,
  `instagram_url` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `surname`, `avatar`, `email_contact`, `description_es`, `description_en`, `specialty_es`, `specialty_en`, `language_es`, `language_en`, `github_url`, `linkedin_url`, `instagram_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Martín Jose', 'Pared Baez', '1632179114_197cc6af066cf1c3e59f.jpg', 'paredbaez.martin@gmail.com', 'Desarrollador full stack con más de una década de experiencia trabajando con PHP, MySQL creando aplicaciones completas tanto del lado del back-end como del front-end.', 'Full Stack developer with more than a decade of experience working with PHP, MySQL creating complete applications both on the back-end side and the front-end.', 'Desarrolador Full Stack', 'Full Stack Developer', 'Español Nativo, Ingles Básico.', 'Native Spanish, Basic English.', 'https://github.com/baubyte', 'https://www.linkedin.com/in/mparedbaez/', 'https://www.instagram.com/tincho.pared/', '2021-09-19 19:14:04', '2021-09-25 19:44:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` int(12) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `percentage` int(12) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `skills`
--

INSERT INTO `skills` (`id`, `name`, `percentage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PHP', 90, '2021-09-21 20:35:24', '2021-09-21 20:35:24', NULL),
(2, 'JAVA', 60, '0000-00-00 00:00:00', '2021-09-22 16:47:38', NULL),
(3, 'PYTHON', 80, '2021-09-22 12:45:18', '2021-09-22 12:45:18', NULL),
(4, 'SQL', 80, '2021-09-22 13:06:19', '2021-09-22 14:11:15', NULL),
(5, 'CSS', 75, '2021-09-22 14:20:15', '2021-09-22 14:20:15', NULL),
(6, 'SASS', 60, '2021-09-22 14:20:33', '2021-09-22 14:20:33', NULL),
(7, 'HTML', 90, '2021-09-22 14:20:54', '2021-09-22 14:20:54', NULL),
(10, 'C++', 70, '2021-09-22 16:02:37', '2021-09-22 16:02:37', NULL),
(11, 'C#', 50, '2021-09-22 16:02:47', '2021-09-23 13:56:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studies`
--

CREATE TABLE `studies` (
  `id` int(12) UNSIGNED NOT NULL,
  `entity` varchar(120) NOT NULL,
  `title_es` varchar(120) NOT NULL,
  `title_en` varchar(120) NOT NULL,
  `description_es` text,
  `description_en` text,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `studies`
--

INSERT INTO `studies` (`id`, `entity`, `title_es`, `title_en`, `description_es`, `description_en`, `start`, `end`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Universidad Tecnológica Nacional', 'Profesional Webmaster', 'Professional Webmaster', '', '', '2015-03-01', '2015-07-31', '2021-09-25 21:28:53', '2021-09-25 22:30:15', NULL),
(2, 'Universidad Tecnológica Nacional', 'Experto Universitario En Php Y Mysql', 'University Expert In Php And Mysql', '', '', '2017-03-01', '2017-07-31', '2021-09-25 22:43:11', '2021-09-25 22:43:11', NULL),
(3, 'Universida Nacional De Lomas De Zamora', 'Tecnicatura En Programación De Computadoras', 'Technicura In Computer Programming', '', '', '2019-03-01', '2021-08-07', '2021-09-25 22:45:44', '2021-09-25 22:45:44', NULL),
(4, 'Universidad Tecnológica Nacional', 'Desarrollador Profesional Full Stack Javascript', 'Professional Developer Full Stack Javascript', '', '', '2021-08-25', NULL, '2021-09-25 22:55:01', '2021-09-25 23:13:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@baubyte.com.ar', 'baubyte', '$2y$10$df0ljJ4mMj9OA2d/YbZ8z.zPQgPNnLx44RlMyrQstR4A28yzu9wAe', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-09-19 18:46:01', '2021-09-19 18:46:01', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indices de la tabla `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indices de la tabla `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indices de la tabla `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indices de la tabla `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `surname` (`surname`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `studies`
--
ALTER TABLE `studies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `studies`
--
ALTER TABLE `studies`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
