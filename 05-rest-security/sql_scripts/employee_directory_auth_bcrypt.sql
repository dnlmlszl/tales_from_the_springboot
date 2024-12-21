-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:8889
-- Létrehozás ideje: 2024. Dec 21. 22:03
-- Kiszolgáló verziója: 8.0.35
-- PHP verzió: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `employee_directory`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(50) COLLATE utf8mb3_hungarian_ci NOT NULL,
  `authority` varchar(50) COLLATE utf8mb3_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('john', 'ROLE_EMPLOYEE'),
('mary', 'ROLE_EMPLOYEE'),
('mary', 'ROLE_MANAGER'),
('susan', 'ROLE_ADMIN'),
('susan', 'ROLE_EMPLOYEE'),
('susan', 'ROLE_MANAGER');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `employee`
--

CREATE TABLE `employee` (
  `id` int NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `email`) VALUES
(1, 'Khalid', 'Phuttko', 'kal@lmdcodes.com'),
(2, 'Emma', 'Baumgarten', 'emma@lmdcodes.com'),
(3, 'Avani', 'Gupta', 'avani@lmdcodes.com'),
(5, 'Juan', 'Vega', 'juan@lmdcodes.com'),
(6, 'Timothy', 'Patterson', 'tim@lmdcodes.com'),
(7, 'Matt', 'Lee', 'matt@lmdcodes.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE utf8mb3_hungarian_ci NOT NULL,
  `password` varchar(68) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `enabled` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
('john', '{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q', 1),
('mary', '{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q', 1),
('susan', '{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `authorities`
--
ALTER TABLE `authorities`
  ADD UNIQUE KEY `authorities_idx_1` (`username`,`authority`);

--
-- A tábla indexei `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
