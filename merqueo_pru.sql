-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2018 a las 16:36:57
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `merqueo_pru`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` int(255) NOT NULL,
  `type_document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `document`, `type_document`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Jaylen Langosh', 1, 'Ramiro Willms', 'klegros@example.net', '$2y$10$NTQI/VxLRb1eLjNNgg0x7OKXob//az2DtGL1zEvaFpjU/8ZFvIxwO', '2018-09-01 23:56:06', '2018-09-01 23:56:06'),
(2, 'Kayden Ebert', 1, 'Vito Casper', 'norris.kassulke@example.org', '$2y$10$NTQI/VxLRb1eLjNNgg0x7OKXob//az2DtGL1zEvaFpjU/8ZFvIxwO', '2018-09-01 23:56:43', '2018-09-01 23:56:43'),
(3, 'Vincent Bechtelar', 1, 'Bethel Price', 'eabshire@example.com', '$2y$10$kj4Wj0XPccccUhCzTVqbJ.o8zR7uY/v1AGc3wrNaDhnLz6h47HAwe', '2018-09-01 23:56:51', '2018-09-01 23:56:51'),
(4, 'Mrs. Delilah Bergnaum DDS', 257, 'Kelton Cremin MD', 'zdeckow@example.com', '$2y$10$kj4Wj0XPccccUhCzTVqbJ.o8zR7uY/v1AGc3wrNaDhnLz6h47HAwe', '2018-09-01 23:57:17', '2018-09-01 23:57:17'),
(5, 'Linnie Koch DDS', 651724, 'Dr. Arjun Crooks V', 'pearline.lueilwitz@example.com', '$2y$10$kj4Wj0XPccccUhCzTVqbJ.o8zR7uY/v1AGc3wrNaDhnLz6h47HAwe', '2018-09-01 23:57:21', '2018-09-01 23:57:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
