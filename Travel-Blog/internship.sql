-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Tem 2021, 09:44:00
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `internship`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(10) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `content` text NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'Article'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `contents`
--

INSERT INTO `contents` (`id`, `title`, `description`, `date`, `content`, `user_name`, `type`) VALUES
(7, 'yeni 1 yazı daha', 'descriptio', '2021-07-02', 'Content', 'Joe', 'post');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registerdate` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `registerdate`) VALUES
(1, 'Joe   ', 'Tribbiani   ', 'joey@foodyartist.com', '$2y$10$GN2u0BpY8uXHYIbsttCkiO/vCNE/ARzmc77AU84IJBeIVNlP2DUhe', NULL),
(7, 'Duygu', 'Çınar', 'duygu@design.com', '$2y$10$03CAXuZijGINTrjtu5M0tOck9rg4/j4xK/nR1k9Ckotv9EDjOizYu', '2021-09-17'),
(8, 'testName', 'testSurname', 'testEmail@email.com', '$2y$10$tEG.ptqwVciFBJ2LnA7v0OeONVSiw8pqA2kExQUkGHyRckG7paObu', '2021-01-01'),
(10, 'test', 'surtest', 'test@test.net', '$2y$10$.UUsHddLvw13gz10t5NJweGUSdF.HP.uZnm7AxQRM3XtPwkI0EkPu', '2021-07-02');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`,`user_name`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
