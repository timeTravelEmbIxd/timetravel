-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 16. Dez 2015 um 10:06
-- Server-Version: 10.1.9-MariaDB
-- PHP-Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `timetravel_v1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `id_record` int(11) NOT NULL,
  `id_pattern` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `matches`
--

INSERT INTO `matches` (`id`, `id_record`, `id_pattern`) VALUES
(36, 74, 'hate'),
(35, 67, 'love'),
(34, 64, 'love'),
(33, 63, 'love'),
(32, 62, 'hate'),
(31, 61, 'hate'),
(30, 60, 'love'),
(29, 59, 'hate'),
(28, 59, 'love'),
(27, 58, 'love'),
(26, 57, 'hate'),
(25, 55, 'love'),
(37, 80, 'love'),
(38, 81, 'love'),
(39, 86, 'love'),
(40, 87, 'love'),
(41, 88, 'love'),
(42, 89, 'love'),
(43, 90, 'hate'),
(44, 91, 'love'),
(45, 92, 'love'),
(46, 93, 'love'),
(47, 94, 'love'),
(48, 95, 'love'),
(49, 96, 'love'),
(50, 97, 'love'),
(51, 98, 'love'),
(52, 99, 'love'),
(53, 100, 'love'),
(54, 101, 'love'),
(55, 102, 'love'),
(56, 103, 'love'),
(57, 104, 'love'),
(58, 105, 'love'),
(59, 106, 'love'),
(60, 107, 'love'),
(61, 108, 'hate'),
(62, 109, 'love'),
(63, 110, 'love'),
(64, 111, 'love'),
(65, 113, 'hate');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `patterns`
--

CREATE TABLE `patterns` (
  `id` int(11) NOT NULL,
  `pattern` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `patterns`
--

INSERT INTO `patterns` (`id`, `pattern`) VALUES
(1, 'love'),
(2, 'hate');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `records`
--

CREATE TABLE `records` (
  `id` int(255) NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `transcript` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `records`
--

INSERT INTO `records` (`id`, `file`, `transcript`) VALUES
(78, 'audio_12-14-2015_05-08-19.wav', 'we have a lot of background noise even so it sweethearts for this thing to do you realize what is spoken and what is not spoken for example right here and speaking much longer now than 5 seconds and its still recording and Im stopping now'),
(77, 'audio_12-14-2015_05-07-52.wav', 'so Im going to start and tell you something'),
(76, 'audio_12-11-2015_03-23-53.wav', 'mother f*****'),
(75, 'audio_12-11-2015_03-23-42.wav', 'Minecraft'),
(74, 'audio_12-11-2015_03-23-27.wav', 'I really hate you microwave'),
(73, 'audio_12-11-2015_03-22-43.wav', 'Pittsburgh'),
(72, 'audio_12-11-2015_03-22-13.wav', 'Aloha menu'),
(71, 'audio_12-11-2015_03-21-35.wav', 'call Andrea, star'),
(70, 'audio_12-11-2015_03-20-52.wav', 'Free Press'),
(69, 'audio_12-11-2015_03-20-24.wav', 'discount'),
(68, 'audio_12-11-2015_03-17-27.wav', 'Robbins Brothers'),
(67, 'audio_12-11-2015_03-03-45.wav', 'reload the page of love'),
(60, 'audio_12-10-2015_07-21-04.wav', 'I love you'),
(61, 'audio_12-10-2015_07-21-31.wav', 'I hate you'),
(62, 'audio_12-10-2015_07-21-39.wav', 'I dont know what to say hate'),
(63, 'audio_12-10-2015_07-21-45.wav', 'I love you again'),
(64, 'audio_12-10-2015_07-23-01.wav', 'I love you so much'),
(65, 'audio_12-11-2015_03-02-48.wav', 'say something'),
(66, 'audio_12-11-2015_03-03-33.wav', 'restart and open the console'),
(79, 'audio_12-15-2015_01-32-46.wav', 'art recognition'),
(80, 'audio_12-15-2015_01-32-55.wav', 'I love you'),
(81, 'audio_12-15-2015_01-43-54.wav', 'Im trying to fix this Mission and I love you'),
(82, 'audio_12-15-2015_01-54-43.wav', 'baby buffalo'),
(83, 'audio_12-15-2015_01-54-51.wav', 'Barbie'),
(84, 'audio_12-15-2015_01-54-58.wav', 'oh no no no'),
(85, 'audio_12-15-2015_01-55-49.wav', 'no no no'),
(86, 'audio_12-15-2015_01-55-57.wav', 'I love you'),
(87, 'audio_12-15-2015_02-01-31.wav', 'I love you'),
(88, 'audio_12-15-2015_02-02-18.wav', 'I love you'),
(89, 'audio_12-15-2015_02-10-02.wav', 'I hate you and I love you'),
(90, 'audio_12-15-2015_02-10-16.wav', 'I hate you'),
(91, 'audio_12-15-2015_02-10-31.wav', 'I love you and I hate you'),
(92, 'audio_12-15-2015_02-23-37.wav', 'I love you'),
(93, 'audio_12-15-2015_02-23-55.wav', 'I love you'),
(94, 'audio_12-15-2015_02-40-37.wav', 'I love you'),
(95, 'audio_12-15-2015_02-41-22.wav', 'love'),
(96, 'audio_12-15-2015_02-43-19.wav', 'I love you'),
(97, 'audio_12-15-2015_02-45-15.wav', 'f*** I love you'),
(98, 'audio_12-15-2015_02-52-55.wav', 'I love you'),
(99, 'audio_12-15-2015_03-05-03.wav', 'I love you'),
(100, 'audio_12-15-2015_03-06-53.wav', 'I love you'),
(101, 'audio_12-15-2015_03-43-31.wav', 'I love you'),
(102, 'audio_12-15-2015_03-44-41.wav', 'I love you'),
(103, 'audio_12-15-2015_03-46-49.wav', 'I love you'),
(104, 'audio_12-15-2015_03-47-28.wav', 'I love you'),
(105, 'audio_12-15-2015_03-51-14.wav', 'I love you'),
(106, 'audio_12-15-2015_03-52-24.wav', 'I love you'),
(107, 'audio_12-15-2015_03-54-18.wav', 'I love you'),
(108, 'audio_12-15-2015_03-57-04.wav', 'I hate you'),
(109, 'audio_12-15-2015_03-57-15.wav', 'I love you'),
(110, 'audio_12-15-2015_03-59-20.wav', 'I love him him him'),
(111, 'audio_12-15-2015_04-03-19.wav', 'I love you John Malkovich'),
(112, 'audio_12-15-2015_04-04-07.wav', 'I just ate John Malkovich'),
(113, 'audio_12-15-2015_04-04-36.wav', 'I just hate John Malkovich');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `patterns`
--
ALTER TABLE `patterns`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT für Tabelle `patterns`
--
ALTER TABLE `patterns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `records`
--
ALTER TABLE `records`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
