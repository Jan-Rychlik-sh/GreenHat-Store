-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Mar 2024, 09:22
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `gh_store`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filters`
--

CREATE TABLE `filters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `forWhichProduct` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `filters`
--

INSERT INTO `filters` (`id`, `name`, `forWhichProduct`) VALUES
(1, 'Ocena Użytkowników', 'Smartphone'),
(2, 'Rok premiery', 'Smartphone'),
(3, 'Marka', 'Smartphone'),
(4, 'Przekątna ekranu', 'Smartphone'),
(5, 'Zagięty ekran', 'Smartphone'),
(6, 'Rozdzielczość ekranu', 'Smartphone'),
(7, 'Odświeżanie Ekranu [Hz]', 'Smartphone'),
(8, 'Technologia ekranu', 'Smartphone'),
(9, 'Składany ekran', 'Smartphone'),
(10, 'Materiał wykonania', 'Smartphone'),
(11, 'System Operacyjny', 'Smartphone'),
(12, 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(13, 'Wodoodporność', 'Smartphone'),
(14, 'Dual sim', 'Smartphone'),
(15, 'Jack na słuchawki przewodowe', 'Smartphone'),
(16, 'Slot na kartę SD', 'Smartphone'),
(17, 'Typ złącza USB', 'Smartphone'),
(18, '5G', 'Smartphone'),
(19, 'NFC', 'Smartphone'),
(20, 'Standard BlueTooth', 'Smartphone'),
(21, 'Bardzo Szybki Internet', 'Smartphone'),
(22, 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphone'),
(23, 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphone'),
(24, 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(25, 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(27, 'Taktowanie procesora', 'Smartphone'),
(28, 'Marka procesora', 'Smartphone'),
(29, 'Prędkość Pamięci RAM', 'Smartphone'),
(30, 'Pamięć RAM', 'Smartphone'),
(31, 'Pamięć Wbudowana', 'Smartphone'),
(32, 'Pojemność Baterii [mAh]', 'Smartphone'),
(33, 'Ładowanie Bezprzewodowe', 'Smartphone'),
(34, 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(35, 'Wymienna Bateria', 'Smartphone');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `main_site_arrow_menu_options_childs`
--

CREATE TABLE `main_site_arrow_menu_options_childs` (
  `id` int(4) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `main_site_arrow_menu_options_childs`
--

INSERT INTO `main_site_arrow_menu_options_childs` (`id`, `type`, `description`, `img`) VALUES
(1, 'Smartphone', 'Wszystkie smartfony ', 'img/arrow-menu-images/Smartphone1/all-phones.webp'),
(2, 'Smartphone', 'Długi okres wsparcia', 'img/arrow-menu-images/Smartphone1/long-support.webp'),
(3, 'Smartphone', 'Dobry aparat', 'img/arrow-menu-images/Smartphone1/good-camera.webp'),
(4, 'Smartphone', 'Dobry procesor', 'img/arrow-menu-images/Smartphone1/good-core.webp'),
(5, 'Smartphone', 'Dużo pamięci wewnętrznej', 'img/arrow-menu-images/Smartphone1/1TB.webp'),
(6, 'Smartphone', 'Dużo RAM-u', 'img/arrow-menu-images/Smartphone1/RAM.webp'),
(7, 'Smartphone', 'Stare flagowce i średniaki z nowym Androidem +4 lata wsparcia (od nas)', 'img/arrow-menu-images/Smartphone1/old-flagship.webp'),
(15, 'Phone', 'Telefon komórkowy', 'img/arrow-menu-images/Phones2/cell-phone.jpg'),
(16, 'Phone', 'Telefon stacjonarny przewodowy', 'img/arrow-menu-images/Phones2/corded-phone.jpg'),
(17, 'Phone', 'Telefon stacjonarny bezprzewodowy', 'img/arrow-menu-images/Phones2/wireless-phone.jpg'),
(18, 'PhoneCharging', 'Przejściówka do telefonu', 'img/arrow-menu-images/PhoneCharging3/phone-adapter.png'),
(19, 'PhoneCharging', 'Ładowarka do telefonu', 'img/arrow-menu-images/PhoneCharging3/PhoneWireCharger.png'),
(20, 'PhoneAccesPhoneCharging', 'Ładowarka bezprzewodowa', 'img/arrow-menu-images/PhoneCharging3/PhoneWirelessCharger.png'),
(21, 'PhoneCharging', 'PowerBank', 'img/arrow-menu-images/PhoneCharging3/Powerbank.png'),
(22, 'PhoneCharging', 'Kabel do telefonu', 'img/arrow-menu-images/PhoneCharging3/wires.png'),
(23, 'SmartphoneAccessories', 'Etui na telefony', 'img/arrow-menu-images/SmartphoneAccesories4/etui.png'),
(24, 'SmartphoneAccessories', 'Szkła hartowane', 'img/arrow-menu-images/SmartphoneAccesories4/glassForSmartphone.png'),
(25, 'SmartphoneAccessories', 'Karty pamięci SD', 'img/arrow-menu-images/SmartphoneAccesories4/SD.png'),
(26, 'SmartphoneAccessories', 'Folie ochronne', 'img/arrow-menu-images/SmartphoneAccesories4/foilForPhone.png'),
(27, 'SmartphoneAccessories', 'Uchwyty do roweru', 'img/arrow-menu-images/SmartphoneAccesories4/handleForBike.png'),
(28, 'SmartphoneAccessories', 'Uchwyty do samochodu', 'img/arrow-menu-images/SmartphoneAccesories4/handleForCar.png'),
(29, 'LaptopAndAccessories', 'Wszystkie laptopy', 'img/arrow-menu-images/LaptopAndAccessories5/AllLaptops.png'),
(30, 'LaptopAndAccessories', 'Laptopy gamingowe (do grafiki)', 'img/arrow-menu-images/LaptopAndAccessories5/GamingLaptop.png'),
(31, 'LaptopAndAccessories', 'Macbooki', 'img/arrow-menu-images/LaptopAndAccessories5/macbook.png'),
(32, 'LaptopAndAccessories', 'Chromebooki', 'img/arrow-menu-images/LaptopAndAccessories5/chromebook.png'),
(33, 'LaptopAndAccessories', 'Laptop 2w1', 'img/arrow-menu-images/LaptopAndAccessories5/2w1.png'),
(34, 'LaptopAndAccessories', 'Torba na laptop', 'img/arrow-menu-images/LaptopAndAccessories5/LaptopBag.png'),
(35, 'LaptopAndAccessories', 'Bateria do laptopa', 'img/arrow-menu-images/LaptopAndAccessories5/LaptopBattery.png'),
(36, 'LaptopAndAccessories', 'Ładowarka do laptopa', 'img/arrow-menu-images/LaptopAndAccessories5/LaptopCharger.png'),
(37, 'HeadphonesAndSpeakers', 'Słuchawki nauszne', 'img/arrow-menu-images/HeadPhonesAndSpeakers6/OnEar.png'),
(38, 'HeadphonesAndSpeakers', 'Słuchawki Kostne', 'img/arrow-menu-images/HeadPhonesAndSpeakers6/bone.png'),
(39, 'HeadphonesAndSpeakers', 'Słuchawki Douszne', 'img/arrow-menu-images/HeadPhonesAndSpeakers6/InEar.png'),
(40, 'HeadphonesAndSpeakers', 'Direct pitch', 'img/arrow-menu-images/HeadPhonesAndSpeakers6/DirectPitch.png'),
(41, 'HeadphonesAndSpeakers', 'Głośniki', 'img/arrow-menu-images/HeadPhonesAndSpeakers6/speaker.png'),
(42, 'TabletsAndEbooks', 'Wszystkie tablety', 'img/arrow-menu-images/TabletsAndEbooks7/AllTablet.png'),
(43, 'TabletsAndEbooks', 'iPad', 'img/arrow-menu-images/TabletsAndEbooks7/iPad.png'),
(44, 'TabletsAndEbooks', 'Czytniki Ebooków', 'img/arrow-menu-images/TabletsAndEbooks7/ebook.png'),
(45, 'TabletsAndEbooks', 'Etui na tablet', 'img/arrow-menu-images/TabletsAndEbooks7/etui.png'),
(46, 'TabletsAndEbooks', 'Folia na tablet', 'img/arrow-menu-images/TabletsAndEbooks7/Foil.png'),
(47, 'TabletsAndEbooks', 'Szkło ochronne na tablet', 'img/arrow-menu-images/TabletsAndEbooks7/Glass.png'),
(48, 'TabletsAndEbooks', 'Rysik do tabletu', 'img/arrow-menu-images/TabletsAndEbooks7/Pen.png'),
(49, 'ComputersAndComponents', 'Komputery PC', 'img/arrow-menu-images/ComputersAndComponents8/PC.png'),
(50, 'ComputersAndComponents', 'Komputery Gamingowe', 'img/arrow-menu-images/ComputersAndComponents8/GamingPC.png'),
(51, 'ComputersAndComponents', 'All in One', 'img/arrow-menu-images/ComputersAndComponents8/AllInOne.png'),
(52, 'ComputersAndComponents', 'Karty Graficzne', 'img/arrow-menu-images/ComputersAndComponents8/GraphicCard.png'),
(53, 'ComputersAndComponents', 'Zasilacze', 'img/arrow-menu-images/ComputersAndComponents8/ComputerCharger.png'),
(54, 'ComputersAndComponents', 'Procesory', 'img/arrow-menu-images/ComputersAndComponents8/processor.png'),
(55, 'ComputersAndComponents', 'RAM', 'img/arrow-menu-images/ComputersAndComponents8/RAM.png'),
(56, 'ComputersAndComponents', 'Płyty główne', 'img/arrow-menu-images/ComputersAndComponents8/motherboard.png'),
(57, 'ComputersAndComponents', 'Obudowy do PC', 'img/arrow-menu-images/ComputersAndComponents8/case.png'),
(58, 'ComputersAndComponents', 'Chłodzenie', 'img/arrow-menu-images/ComputersAndComponents8/cooling.png'),
(59, 'ComputersAndComponents', 'Napęd optyczny', 'img/arrow-menu-images/ComputersAndComponents8/OpticalDrive.png'),
(60, 'ComputersAndComponents', 'Dyski', 'img/arrow-menu-images/ComputersAndComponents8/SSD.png'),
(61, 'ComputerAccessories', 'Karty sieciowe', 'img/arrow-menu-images/ComputerAccessories9/NetCard.png'),
(62, 'ComputerAccessories', 'Klawiatury', 'img/arrow-menu-images/ComputerAccessories9/keyboard.png'),
(63, 'ComputerAccessories', 'Myszki', 'img/arrow-menu-images/ComputerAccessories9/mouse.png'),
(64, 'ComputerAccessories', 'Monitory', 'img/arrow-menu-images/ComputerAccessories9/Monitor.png'),
(65, 'ComputerAccessories', 'Pendrive', 'img/arrow-menu-images/ComputerAccessories9/pendrive.png'),
(66, 'ComputerAccessories', 'Karty dźwiękowe', 'img/arrow-menu-images/ComputerAccessories9/SoundCard.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `forWhichFilter` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `options`
--

INSERT INTO `options` (`id`, `name`, `forWhichFilter`, `type`) VALUES
(1, '0', 'Ocena Użytkowników', 'Smartphone'),
(2, '1', 'Ocena Użytkowników', 'Smartphone'),
(3, '2', 'Ocena Użytkowników', 'Smartphone'),
(4, '3', 'Ocena Użytkowników', 'Smartphone'),
(5, '4', 'Ocena Użytkowników', 'Smartphone'),
(6, '5', 'Ocena Użytkowników', 'Smartphone'),

(7, '2017', 'Rok Premiery', 'Smartphone'),
(8, '2018', 'Rok Premiery', 'Smartphone'),
(9, '2019', 'Rok Premiery', 'Smartphone'),
(10, '2020', 'Rok Premiery', 'Smartphone'),
(11, '2021', 'Rok Premiery', 'Smartphone'),
(12, '2022', 'Rok Premiery', 'Smartphone'),
(13, '2023', 'Rok Premiery', 'Smartphone'),
(14, '2024', 'Rok Premiery', 'Smartphone'),

(15, 'apple', 'Marka', 'Smartphone'),
(16, 'samsung', 'Marka', 'Smartphone'),
(17, 'google', 'Marka', 'Smartphone'),
(18, 'motorola', 'Marka', 'Smartphone'),
(19, 'xiaomi', 'Marka', 'Smartphone'),
(20, 'honor', 'Marka', 'Smartphone'),
(21, 'BBK Electronics (oppo, vivo, realme, one+)', 'Marka', 'Smartphone'),
(22, 'Transsion (infinix, tecno)', 'Marka', 'Smartphone'),
(23, 'asus', 'Marka', 'Smartphone'),
(24, 'zte/nubia', 'Marka', 'Smartphone'),
(25, 'htc', 'Marka', 'Smartphone'),
(26, 'tcl', 'Marka', 'Smartphone'),
(27, 'huawei', 'Marka', 'Smartphone'),
(28, 'sony', 'Marka', 'Smartphone'),
(29, 'myphone', 'Marka', 'Smartphone'),

(30, 'Poniżej 6 cal', 'Przekątna ekranu', 'Smartphone'),
(31, 'Od 6 cal-6.4 cal', 'Przekątna ekranu', 'Smartphone'),
(32, 'Od 6.5 cal-6.9 cal', 'Przekątna ekranu', 'Smartphone'),
(33, 'Od 7 cal', 'Przekątna ekranu', 'Smartphone'),

(34, 'Tak', 'Zagięty ekran', 'Smartphone'),
(35, 'Nie', 'Zagięty ekran', 'Smartphone'),

(36, 'Poniżej HD 1280 x 720p', 'Rozdzielczość Ekranu', 'Smartphone'),
(37, 'od HD 1280 x 720p do FullHD 1980 x 1080', 'Rozdzielczość Ekranu', 'Smartphone'),
(38, 'od FullHD 1980 x 1080 do 2K 2560 x 1440', 'Rozdzielczość Ekranu', 'Smartphone'),
(39, 'więcej niż 2K 2560 x 1440', 'Rozdzielczość Ekranu', 'Smartphone'),

(40, '60Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphone'),
(41, '90Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphone'),
(42, '120Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphone'),
(43, '144Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphone'),
(44, '165Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphone'),

(45, 'oled/amoled/poled', 'Technologia ekranu', 'Smartphone'),
(46, 'ips', 'Technologia ekranu', 'Smartphone'),
(47, 'tft/led/hd+/ltps/pls', 'Technologia ekranu', 'Smartphone'),

(48, 'tak', 'Składany ekran', 'Smartphone'),
(49, 'nie', 'Składany ekran', 'Smartphone'),

(50, 'tytan', 'Materiał wykonania', 'Smartphone'),
(51, 'metal', 'Materiał wykonania', 'Smartphone'),
(52, 'tworzywo sztuczne', 'Materiał wykonania', 'Smartphone'),
(53, 'skóra wegańska', 'Materiał wykonania', 'Smartphone'),

(54, 'android', 'System Operacyjny', 'Smartphone'),
(55, 'ios', 'System Operacyjny', 'Smartphone'),
(56, 'hms (huawei)', 'System Operacyjny', 'Smartphone'),

(57, 'android 23', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(58, 'android 22', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(59, 'android 21', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(60, 'android 20', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(61, 'android 19', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(62, 'android 18', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(63, 'android 17', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(64, 'android 16', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(65, 'android 15', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(66, 'android 14', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(67, 'android 13', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(68, 'android 12', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(69, 'android 10', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(70, 'android 9', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(71, 'android HMS', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(72, 'ios 22', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(73, 'ios 21', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(74, 'ios 20', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(75, 'ios 19', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(76, 'ios 18', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(77, 'ios 17', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(78, 'ios 16', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(79, 'ios 15', 'Ostateczny możliwy system operacyjny', 'Smartphone'),
(80, 'ios 14', 'Ostateczny możliwy system operacyjny', 'Smartphone'),

(81, 'tak', 'Wodoodporność', 'Smartphone'),
(82, 'nie', 'Wodoodporność', 'Smartphone'),

(83, 'tak', 'Dual sim', 'Smartphone'),
(84, 'nie', 'Dual sim', 'Smartphone'),

(85, 'tak', 'Jack na słuchawki przewodowe', 'Smartphone'),
(86, 'nie', 'Jack na słuchawki przewodowe', 'Smartphone'),

(87, 'tak', 'Slot na kartę SD', 'Smartphone'),
(88, 'nie', 'Slot na kartę SD', 'Smartphone'),

(89, 'usb c (zalecane)', 'Typ złącza USB', 'Smartphone'),
(90, 'microusb b', 'Typ złącza USB', 'Smartphone'),
(91, 'lightning', 'Typ złącza USB', 'Smartphone'),

(92, 'tak', '5G', 'Smartphone'),
(93, 'nie', '5G', 'Smartphone'),

(94, 'tak', 'NFC', 'Smartphone'),
(95, 'nie', 'NFC', 'Smartphone'),

(96, '5.4', 'Standard BlueTooth', 'Smartphone'),
(97, '5.3', 'Standard BlueTooth', 'Smartphone'),
(98, '5.2', 'Standard BlueTooth', 'Smartphone'),
(99, '5.1', 'Standard BlueTooth', 'Smartphone'),
(100, '5', 'Standard BlueTooth', 'Smartphone'),
(101, '4.2', 'Standard BlueTooth', 'Smartphone'),
(102, '4.1', 'Standard BlueTooth', 'Smartphone'),
(103, '4', 'Standard BlueTooth', 'Smartphone'),

(104, 'tak', 'Bardzo Szybki Internet', 'Smartphone'),
(105, 'nie', 'Bardzo Szybki Internet', 'Smartphone'),

(106, 'poniżej 12', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphone'),
(107, 'od 12 do 24', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphone'),
(108, 'od 25 do 50', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphone'),
(109, 'od 51 do 108', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphone'),
(110, 'powyżej 108', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphone'),

(111, 'poniżej 5', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphone'),
(112, 'od 5 do 8', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphone'),
(113, 'od 9 do 25', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphone'),
(114, 'powyżej 25', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphone'),

(115, 'poniżej FullHD@30fps (niezalecane)', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(116, 'FullHD@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(117, 'FullHD@60fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(118, '2K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(119, '2K@60fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(120, '4K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(121, '4K@60fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(122, '8K@24fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(123, '8K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),
(124, 'powyżej 8K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphone'),

(125, 'poniżej FullHD@30fps (niezalecane)', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(126, 'FullHD@30fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(127, 'FullHD@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(128, '2k@30fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(129, '2k@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(130, '4k@30fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(131, '4k@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),
(132, 'powyżej 4k@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphone'),

(133, 'poniżej 2 Ghz', 'Taktowanie procesora', 'Smartphone'),
(134, 'od 2 Ghz do 2.4 Ghz', 'Taktowanie procesora', 'Smartphone'),
(135, 'od 2.5 Ghz do 2.8 Ghz', 'Taktowanie procesora', 'Smartphone'),
(136, 'od 2.9 Ghz do 3.5 Ghz', 'Taktowanie procesora', 'Smartphone'),
(137, 'powyżej 3.5 Ghz', 'Taktowanie procesora', 'Smartphone'),

(138, 'Qualcom', 'Marka procesora', 'Smartphone'),
(139, 'Mediatek', 'Marka procesora', 'Smartphone'),
(140, 'Samsung Exynos', 'Marka procesora', 'Smartphone'),
(141, 'Apple', 'Marka procesora', 'Smartphone'),
(142, 'Google Tensor', 'Marka procesora', 'Smartphone'),
(143, 'Unisoc', 'Marka procesora', 'Smartphone'),
(144, 'Kirin (Huawei)', 'Marka procesora', 'Smartphone'),

(145, 'Poniżej 1600 MHz', 'Prędkość Pamięci RAM', 'Smartphone'),
(146, 'od 1600 MHz do 2200 MHz', 'Prędkość Pamięci RAM', 'Smartphone'),
(147, 'od 2001 MHz do 2600 MHz', 'Prędkość Pamięci RAM', 'Smartphone'),
(148, 'od 2601 MHz do 3200 MHz', 'Prędkość Pamięci RAM', 'Smartphone'),
(149, 'od 3200 MHz do 5000 MHz', 'Prędkość Pamięci RAM', 'Smartphone'),
(150, 'Powyżej 5000 MHz', 'Prędkość Pamięci RAM', 'Smartphone'),

(151, 'Powyżej 16GB', 'Pamięć RAM', 'Smartphone'),
(152, '16GB', 'Pamięć RAM', 'Smartphone'),
(153, '12GB', 'Pamięć RAM', 'Smartphone'),
(154, '8GB', 'Pamięć RAM', 'Smartphone'),
(155, '6GB', 'Pamięć RAM', 'Smartphone'),
(156, '4GB', 'Pamięć RAM', 'Smartphone'),
(157, '3GB', 'Pamięć RAM', 'Smartphone'),
(158, '2GB', 'Pamięć RAM', 'Smartphone'),

(159, '1000 GB i więcej', 'Pamięć Wbudowana', 'Smartphone'),
(160, '512GB', 'Pamięć Wbudowana', 'Smartphone'),
(161, '256GB', 'Pamięć Wbudowana', 'Smartphone'),
(162, '128GB', 'Pamięć Wbudowana', 'Smartphone'),
(163, '64GB', 'Pamięć Wbudowana', 'Smartphone'),
(164, '32GB', 'Pamięć Wbudowana', 'Smartphone'),

(165, 'Powyżej 6000 mAH', 'Pojemność Baterii [mAh]', 'Smartphone'),
(166, '5500mAH do 6000mAH', 'Pojemność Baterii [mAh]', 'Smartphone'),
(167, '5000mAH do 5499mAH', 'Pojemność Baterii [mAh]', 'Smartphone'),
(168, 'od 4500mAH do 4999mAH', 'Pojemność Baterii [mAh]', 'Smartphone'),
(169, 'od 4500mAH do 4999mAH', 'Pojemność Baterii [mAh]', 'Smartphone'),
(170, 'od 4000mAH do 4499mAH', 'Pojemność Baterii [mAh]', 'Smartphone'),
(171, 'poniżej 4000mAH', 'Pojemność Baterii [mAh]', 'Smartphone'),

(172, 'tak', 'Ładowanie Bezprzewodowe', 'Smartphone'),
(173, 'nie', 'Ładowanie Bezprzewodowe', 'Smartphone'),

(174, 'powyżej 100W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(175, 'od 60W-100W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(176, 'od 35W-59W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(177, 'od 15W-34W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(178, 'poniżej 15W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),

(179, 'tak', 'Wymienna Bateria', 'Smartphone'),
(180, 'nie', 'Wymienna Bateria', 'Smartphone');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forWhichProduct` (`forWhichProduct`);

--
-- Indeksy dla tabeli `main_site_arrow_menu_options_childs`
--
ALTER TABLE `main_site_arrow_menu_options_childs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`);

--
-- Indeksy dla tabeli `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `main_site_arrow_menu_options_childs`
--
ALTER TABLE `main_site_arrow_menu_options_childs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT dla tabeli `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_ibfk_1` FOREIGN KEY (`forWhichProduct`) REFERENCES `main_site_arrow_menu_options_childs` (`type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
