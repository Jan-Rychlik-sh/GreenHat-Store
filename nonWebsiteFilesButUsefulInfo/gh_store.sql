-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Maj 2024, 14:57
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
(1, 'Ocena Użytkowników', 'Smartphones'),
(2, 'Rok premiery', 'Smartphones'),
(3, 'Marka', 'Smartphones'),
(4, 'Przekątna ekranu', 'Smartphones'),
(5, 'Zagięty ekran', 'Smartphones'),
(6, 'Rozdzielczość ekranu', 'Smartphones'),
(7, 'Odświeżanie Ekranu [Hz]', 'Smartphones'),
(8, 'Technologia ekranu', 'Smartphones'),
(9, 'Składany ekran', 'Smartphones'),
(11, 'System Operacyjny', 'Smartphones'),
(12, 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(13, 'Wodoodporność', 'Smartphones'),
(14, 'Dual sim', 'Smartphones'),
(15, 'Jack na słuchawki przewodowe', 'Smartphones'),
(16, 'Slot na kartę SD', 'Smartphones'),
(17, 'Typ złącza USB', 'Smartphones'),
(18, '5G', 'Smartphones'),
(19, 'NFC', 'Smartphones'),
(20, 'Standard BlueTooth', 'Smartphones'),
(21, 'Bardzo Szybki Internet', 'Smartphones'),
(22, 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphones'),
(23, 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphones'),
(24, 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(25, 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(27, 'Taktowanie procesora', 'Smartphones'),
(28, 'Marka procesora', 'Smartphones'),
(29, 'Prędkość Pamięci RAM', 'Smartphones'),
(30, 'Pamięć RAM', 'Smartphones'),
(31, 'Pamięć Wbudowana', 'Smartphones'),
(32, 'Pojemność Baterii [mAh]', 'Smartphones'),
(33, 'Ładowanie Bezprzewodowe', 'Smartphones'),
(34, 'Szybkość Ładowania Przewodowego', 'Smartphones'),
(35, 'Wymienna Bateria', 'Smartphones'),
(36, 'cena', 'Smartphones');

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
(7, 'Smartphone', 'Stare flagowce i średniaki z nowym Androidem 4 lata wsparcia od nas', 'img/arrow-menu-images/Smartphone1/old-flagship.webp'),
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
(30, 'LaptopAndAccessories', 'Laptopy gamingowe lub do grafiki', 'img/arrow-menu-images/LaptopAndAccessories5/GamingLaptop.png'),
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
(1, '0', 'Ocena Użytkowników', 'Smartphones'),
(2, '1', 'Ocena Użytkowników', 'Smartphones'),
(3, '2', 'Ocena Użytkowników', 'Smartphones'),
(4, '3', 'Ocena Użytkowników', 'Smartphones'),
(5, '4', 'Ocena Użytkowników', 'Smartphones'),
(6, '5', 'Ocena Użytkowników', 'Smartphones'),
(7, '2017', 'Rok Premiery', 'Smartphones'),
(8, '2018', 'Rok Premiery', 'Smartphones'),
(9, '2019', 'Rok Premiery', 'Smartphones'),
(10, '2020', 'Rok Premiery', 'Smartphones'),
(11, '2021', 'Rok Premiery', 'Smartphones'),
(12, '2022', 'Rok Premiery', 'Smartphones'),
(13, '2023', 'Rok Premiery', 'Smartphones'),
(14, '2024', 'Rok Premiery', 'Smartphones'),
(15, 'apple', 'Marka', 'Smartphones'),
(16, 'samsung', 'Marka', 'Smartphones'),
(17, 'google', 'Marka', 'Smartphones'),
(18, 'motorola', 'Marka', 'Smartphones'),
(19, 'xiaomi', 'Marka', 'Smartphones'),
(20, 'honor', 'Marka', 'Smartphones'),
(21, 'BBK Electronics (oppo, vivo, realme, one+)', 'Marka', 'Smartphones'),
(22, 'Transsion (infinix, tecno)', 'Marka', 'Smartphones'),
(23, 'asus', 'Marka', 'Smartphones'),
(24, 'zte/nubia', 'Marka', 'Smartphones'),
(25, 'htc', 'Marka', 'Smartphones'),
(26, 'tcl', 'Marka', 'Smartphones'),
(27, 'huawei', 'Marka', 'Smartphones'),
(28, 'sony', 'Marka', 'Smartphones'),
(29, 'myphone', 'Marka', 'Smartphones'),
(30, 'Poniżej 6 cal', 'Przekątna ekranu', 'Smartphones'),
(31, 'Od 6 cal do 6.4 cal', 'Przekątna ekranu', 'Smartphones'),
(32, 'Od 6.5 cal do 6.9 cal', 'Przekątna ekranu', 'Smartphones'),
(33, 'Od 7 cal', 'Przekątna ekranu', 'Smartphones'),
(34, 'Tak', 'Zagięty ekran', 'Smartphones'),
(35, 'Nie', 'Zagięty ekran', 'Smartphones'),
(36, 'Poniżej HD 1280 x 720p', 'Rozdzielczość Ekranu', 'Smartphones'),
(37, 'od HD 1280 x 720p do FullHD 1980 x 1080', 'Rozdzielczość Ekranu', 'Smartphones'),
(38, 'od FullHD 1980 x 1080 do 2K 2560 x 1440', 'Rozdzielczość Ekranu', 'Smartphones'),
(39, 'więcej niż 2K 2560 x 1440', 'Rozdzielczość Ekranu', 'Smartphones'),
(40, '60Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphones'),
(41, '90Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphones'),
(42, '120Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphones'),
(43, '144Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphones'),
(44, '165Hz', 'Odświeżanie Ekranu [Hz]', 'Smartphones'),
(45, 'oled/amoled/poled', 'Technologia ekranu', 'Smartphones'),
(46, 'ips', 'Technologia ekranu', 'Smartphones'),
(47, 'tft/led/hd+/ltps/pls', 'Technologia ekranu', 'Smartphones'),
(48, 'tak', 'Składany ekran', 'Smartphones'),
(49, 'nie', 'Składany ekran', 'Smartphones'),
(54, 'android', 'System Operacyjny', 'Smartphones'),
(55, 'ios', 'System Operacyjny', 'Smartphones'),
(56, 'hms (huawei)', 'System Operacyjny', 'Smartphones'),
(57, 'android 23', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(58, 'android 22', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(59, 'android 21', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(60, 'android 20', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(61, 'android 19', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(62, 'android 18', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(63, 'android 17', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(64, 'android 16', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(65, 'android 15', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(66, 'android 14', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(67, 'android 13', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(68, 'android 12', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(69, 'android 10', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(70, 'android 9', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(71, 'android HMS', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(72, 'ios 22', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(73, 'ios 21', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(74, 'ios 20', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(75, 'ios 19', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(76, 'ios 18', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(77, 'ios 17', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(78, 'ios 16', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(79, 'ios 15', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(80, 'ios 14', 'Ostateczny możliwy system operacyjny', 'Smartphones'),
(81, 'tak', 'Wodoodporność', 'Smartphones'),
(82, 'nie', 'Wodoodporność', 'Smartphones'),
(83, 'tak', 'Dual sim', 'Smartphones'),
(84, 'nie', 'Dual sim', 'Smartphones'),
(85, 'tak', 'Jack na słuchawki przewodowe', 'Smartphones'),
(86, 'nie', 'Jack na słuchawki przewodowe', 'Smartphones'),
(87, 'tak', 'Slot na kartę SD', 'Smartphones'),
(88, 'nie', 'Slot na kartę SD', 'Smartphones'),
(89, 'usb c (zalecane)', 'Typ złącza USB', 'Smartphones'),
(90, 'microusb b', 'Typ złącza USB', 'Smartphones'),
(91, 'lightning', 'Typ złącza USB', 'Smartphones'),
(92, 'tak', '5G', 'Smartphones'),
(93, 'nie', '5G', 'Smartphones'),
(94, 'tak', 'NFC', 'Smartphones'),
(95, 'nie', 'NFC', 'Smartphones'),
(96, '5.4', 'Standard BlueTooth', 'Smartphones'),
(97, '5.3', 'Standard BlueTooth', 'Smartphones'),
(98, '5.2', 'Standard BlueTooth', 'Smartphones'),
(99, '5.1', 'Standard BlueTooth', 'Smartphones'),
(100, '5', 'Standard BlueTooth', 'Smartphones'),
(101, '4.2', 'Standard BlueTooth', 'Smartphones'),
(102, '4.1', 'Standard BlueTooth', 'Smartphones'),
(103, '4', 'Standard BlueTooth', 'Smartphones'),
(104, 'tak', 'Bardzo Szybki Internet', 'Smartphones'),
(105, 'nie', 'Bardzo Szybki Internet', 'Smartphones'),
(106, 'poniżej 12', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphones'),
(107, 'od 12 do 24', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphones'),
(108, 'od 25 do 50', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphones'),
(109, 'od 51 do 108', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphones'),
(110, 'powyżej 108', 'rozdzielczość aparatu tylnego [Mpx]', 'Smartphones'),
(111, 'poniżej 5', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphones'),
(112, 'od 5 do 8', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphones'),
(113, 'od 9 do 25', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphones'),
(114, 'powyżej 25', 'rozdzielczość aparatu przedniego [Mpx]', 'Smartphones'),
(115, 'poniżej FullHD@30fps (niezalecane)', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(116, 'FullHD@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(117, 'FullHD@60fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(118, '2K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(119, '2K@60fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(120, '4K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(121, '4K@60fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(122, '8K@24fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(123, '8K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(124, 'powyżej 8K@30fps', 'Rozdzielczość nagrywanego wideo tył', 'Smartphones'),
(125, 'poniżej FullHD@30fps (niezalecane)', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(126, 'FullHD@30fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(127, 'FullHD@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(128, '2k@30fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(129, '2k@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(130, '4k@30fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(131, '4k@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(132, 'powyżej 4k@60fps', 'Rozdzielczość nagrywanego wideo przód', 'Smartphones'),
(133, 'poniżej 2 Ghz', 'Taktowanie procesora', 'Smartphones'),
(134, 'od 2 Ghz do 2.4 Ghz', 'Taktowanie procesora', 'Smartphones'),
(135, 'od 2.5 Ghz do 2.8 Ghz', 'Taktowanie procesora', 'Smartphones'),
(136, 'od 2.9 Ghz do 3.5 Ghz', 'Taktowanie procesora', 'Smartphones'),
(137, 'powyżej 3.5 Ghz', 'Taktowanie procesora', 'Smartphones'),
(138, 'Qualcom', 'Marka procesora', 'Smartphones'),
(139, 'Mediatek', 'Marka procesora', 'Smartphones'),
(140, 'Samsung Exynos', 'Marka procesora', 'Smartphones'),
(141, 'Apple', 'Marka procesora', 'Smartphones'),
(142, 'Google Tensor', 'Marka procesora', 'Smartphones'),
(143, 'Unisoc', 'Marka procesora', 'Smartphones'),
(144, 'Kirin (Huawei)', 'Marka procesora', 'Smartphones'),
(145, 'Poniżej 1600 MHz', 'Prędkość Pamięci RAM', 'Smartphones'),
(146, 'od 1600 MHz do 2200 MHz', 'Prędkość Pamięci RAM', 'Smartphones'),
(147, 'od 2001 MHz do 2600 MHz', 'Prędkość Pamięci RAM', 'Smartphones'),
(148, 'od 2601 MHz do 3200 MHz', 'Prędkość Pamięci RAM', 'Smartphones'),
(149, 'od 3200 MHz do 5000 MHz', 'Prędkość Pamięci RAM', 'Smartphones'),
(150, 'Powyżej 5000 MHz', 'Prędkość Pamięci RAM', 'Smartphones'),
(151, 'Powyżej 16GB', 'Pamięć RAM', 'Smartphones'),
(152, '16GB', 'Pamięć RAM', 'Smartphones'),
(153, '12GB', 'Pamięć RAM', 'Smartphones'),
(154, '8GB', 'Pamięć RAM', 'Smartphones'),
(155, '6GB', 'Pamięć RAM', 'Smartphones'),
(156, '4GB', 'Pamięć RAM', 'Smartphones'),
(157, '3GB', 'Pamięć RAM', 'Smartphones'),
(158, '2GB', 'Pamięć RAM', 'Smartphones'),
(159, '1000 GB i więcej', 'Pamięć Wbudowana', 'Smartphones'),
(160, '512GB', 'Pamięć Wbudowana', 'Smartphones'),
(161, '256GB', 'Pamięć Wbudowana', 'Smartphones'),
(162, '128GB', 'Pamięć Wbudowana', 'Smartphones'),
(163, '64GB', 'Pamięć Wbudowana', 'Smartphones'),
(164, '32GB', 'Pamięć Wbudowana', 'Smartphones'),
(165, 'Powyżej 6000 mAH', 'Pojemność Baterii [mAh]', 'Smartphones'),
(166, '5500mAH do 6000mAH', 'Pojemność Baterii [mAh]', 'Smartphones'),
(167, '5000mAH do 5499mAH', 'Pojemność Baterii [mAh]', 'Smartphones'),
(168, 'od 4500mAH do 4999mAH', 'Pojemność Baterii [mAh]', 'Smartphones'),
(169, 'od 4500mAH do 4999mAH', 'Pojemność Baterii [mAh]', 'Smartphones'),
(170, 'od 4000mAH do 4499mAH', 'Pojemność Baterii [mAh]', 'Smartphones'),
(171, 'poniżej 4000mAH', 'Pojemność Baterii [mAh]', 'Smartphones'),
(172, 'tak', 'Ładowanie Bezprzewodowe', 'Smartphones'),
(173, 'nie', 'Ładowanie Bezprzewodowe', 'Smartphones'),
(174, 'powyżej 100W', 'Szybkość Ładowania Przewodowego', 'Smartphones'),
(175, '60W do 100W', 'Szybkość Ładowania Przewodowego', 'Smartphones'),
(176, '35W do 59W', 'Szybkość Ładowania Przewodowego', 'Smartphones'),
(177, '15W do 34W', 'Szybkość Ładowania Przewodowego', 'Smartphones'),
(178, 'poniżej 15W', 'Szybkość Ładowania Przewodowego', 'Smartphones'),
(179, 'tak', 'Wymienna Bateria', 'Smartphones'),
(180, 'nie', 'Wymienna Bateria', 'Smartphones'),
(182, '0 do 500zł', 'cena', 'Smartphones'),
(183, '501 do 1000zł', 'cena', 'Smartphones'),
(184, '1001 do 1600zł', 'cena', 'Smartphones'),
(185, '1601 do 2200zł', 'cena', 'Smartphones'),
(186, '2201 do 3000zł', 'cena', 'Smartphones'),
(187, '3000 do 4000zł', 'cena', 'Smartphones'),
(188, '4000 do 10000zł', 'cena', 'Smartphones');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ocena_uzytkownikow` varchar(255) DEFAULT NULL,
  `rok_premiery` varchar(255) DEFAULT NULL,
  `marka` varchar(255) DEFAULT NULL,
  `przekatna_ekranu` varchar(255) DEFAULT NULL,
  `zagiecie_ekranu` varchar(255) DEFAULT NULL,
  `rozdzielczosc_ekranu` varchar(255) DEFAULT NULL,
  `odswiezanie_ekranu__hz_` varchar(255) DEFAULT NULL,
  `technologia_ekranu` varchar(255) DEFAULT NULL,
  `skladany_ekran` varchar(255) DEFAULT NULL,
  `system_operacyjny` varchar(255) DEFAULT NULL,
  `ostateczny_mozliwy_system_operacyjny` varchar(255) DEFAULT NULL,
  `wodoodpornosc` varchar(255) DEFAULT NULL,
  `dual_sim` varchar(255) DEFAULT NULL,
  `jack_na_sluchawki_przewodowe` varchar(255) DEFAULT NULL,
  `slot_na_karte_sd` varchar(255) DEFAULT NULL,
  `typ_zlacza_usb` varchar(255) DEFAULT NULL,
  `piec_g` varchar(255) DEFAULT NULL,
  `nfc` varchar(255) DEFAULT NULL,
  `standard_bluetooth` varchar(255) DEFAULT NULL,
  `bardzo_szybki_internet` varchar(255) DEFAULT NULL,
  `rozdzielczosc_aparatu_tylu__mpx_` varchar(255) DEFAULT NULL,
  `rozdzielczosc_aparatu_przedniego__mpx_` varchar(255) DEFAULT NULL,
  `rozdzielczosc_nagrywanego_wideo_tyl` varchar(255) DEFAULT NULL,
  `rozdzielczosc_nagrywanego_wideo_przod` varchar(255) DEFAULT NULL,
  `taktowanie_procesora` varchar(255) DEFAULT NULL,
  `marka_procesora` varchar(255) DEFAULT NULL,
  `predkosc_pamieci_ram` varchar(255) DEFAULT NULL,
  `pamiec_ram` varchar(255) DEFAULT NULL,
  `pamiec_wbudowana` varchar(255) DEFAULT NULL,
  `pojemnosc_baterii__mah_` varchar(255) DEFAULT NULL,
  `ladowanie_bezprzewodowe` varchar(255) DEFAULT NULL,
  `szybkosc_ladowania_przewodowego` varchar(255) DEFAULT NULL,
  `wymienna_bateria` varchar(255) DEFAULT NULL,
  `cena` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `smartphones`
--

INSERT INTO `smartphones` (`id`, `name`, `ocena_uzytkownikow`, `rok_premiery`, `marka`, `przekatna_ekranu`, `zagiecie_ekranu`, `rozdzielczosc_ekranu`, `odswiezanie_ekranu__hz_`, `technologia_ekranu`, `skladany_ekran`, `system_operacyjny`, `ostateczny_mozliwy_system_operacyjny`, `wodoodpornosc`, `dual_sim`, `jack_na_sluchawki_przewodowe`, `slot_na_karte_sd`, `typ_zlacza_usb`, `piec_g`, `nfc`, `standard_bluetooth`, `bardzo_szybki_internet`, `rozdzielczosc_aparatu_tylu__mpx_`, `rozdzielczosc_aparatu_przedniego__mpx_`, `rozdzielczosc_nagrywanego_wideo_tyl`, `rozdzielczosc_nagrywanego_wideo_przod`, `taktowanie_procesora`, `marka_procesora`, `predkosc_pamieci_ram`, `pamiec_ram`, `pamiec_wbudowana`, `pojemnosc_baterii__mah_`, `ladowanie_bezprzewodowe`, `szybkosc_ladowania_przewodowego`, `wymienna_bateria`, `cena`) VALUES
(7, 'iPhone 13 4/512', '5', '2021', 'apple', 'Od 6 cal do 6.4 cal', 'Nie', 'od FullHD 1980 x 1080 do 2K 2560 x 1440', '60Hz', 'oled/amoled/poled', 'nie', 'ios', 'ios 21', 'tak', 'tak', 'nie', 'nie', 'usb c (zalecane)', 'tak', 'tak', '5.1', 'tak', 'od 12 do 24', 'od 9 do 25', '4K@60fps', '4K@30fps', 'od 2.9 Ghz do 3.5 Ghz', 'Apple', 'od 3200 MHz do 5000 MHz', '4GB', '512GB', 'poniżej 4000mAH', 'tak', '15W do 34W', 'nie', '1800 do 2500zł'),
(14, 'Google Pixel 7 8/256', '3', '2022', 'google', 'Od 6 cal do 6.4 cal', 'Nie', 'od FullHD 1980 x 1080 do 2K 2560 x 1440', '90Hz', 'oled/amoled/poled', 'nie', 'android', 'android 21', 'tak', 'tak', 'nie', 'nie', 'usb c (zalecane)', 'tak', 'tak', '5.2', 'tak', 'od 25 do 50', 'od 9 do 25', '4K@60fps', '4K@30fps', 'od 2.9 Ghz do 3.5 Ghz', 'Google Tensor', 'od 2601 MHz do 3200 MHz', '8GB', '256GB', 'od 4000mAH do 4499mAH', 'tak', '15W do 34W', 'nie', '1800 do 2500zł');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `smartphones_parameters`
--

CREATE TABLE `smartphones_parameters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ocena_uzytkownikow` varchar(255) DEFAULT NULL,
  `rok_premiery` varchar(255) DEFAULT NULL,
  `marka` varchar(255) DEFAULT NULL,
  `przekatna_ekranu` varchar(255) DEFAULT NULL,
  `zagiecie_ekranu` varchar(255) DEFAULT NULL,
  `rozdzielczosc_ekranu` varchar(255) DEFAULT NULL,
  `odswiezanie_ekranu__hz_` varchar(255) DEFAULT NULL,
  `technologia_ekranu` varchar(255) DEFAULT NULL,
  `skladany_ekran` varchar(255) DEFAULT NULL,
  `system_operacyjny` varchar(255) DEFAULT NULL,
  `ostateczny_mozliwy_system_operacyjny` varchar(255) DEFAULT NULL,
  `wodoodpornosc` varchar(255) DEFAULT NULL,
  `dual_sim` varchar(255) DEFAULT NULL,
  `jack_na_sluchawki_przewodowe` varchar(255) DEFAULT NULL,
  `slot_na_karte_sd` varchar(255) DEFAULT NULL,
  `typ_zlacza_usb` varchar(255) DEFAULT NULL,
  `5G` varchar(40) DEFAULT NULL,
  `nfc` varchar(255) DEFAULT NULL,
  `standard_bluetooth` varchar(255) DEFAULT NULL,
  `bardzo_szybki_internet` varchar(255) DEFAULT NULL,
  `rozdzielczosc_aparatu_tylu__mpx_` varchar(255) DEFAULT NULL,
  `rozdzielczosc_aparatu_przedniego__mpx_` varchar(255) DEFAULT NULL,
  `rozdzielczosc_nagrywanego_wideo_tyl` varchar(255) DEFAULT NULL,
  `rozdzielczosc_nagrywanego_wideo_przod` varchar(255) DEFAULT NULL,
  `taktowanie_procesora` varchar(255) DEFAULT NULL,
  `marka_procesora` varchar(255) DEFAULT NULL,
  `predkosc_pamieci_ram` varchar(255) DEFAULT NULL,
  `pamiec_ram` varchar(255) DEFAULT NULL,
  `pamiec_wbudowana` varchar(255) DEFAULT NULL,
  `pojemnosc_baterii__mah_` varchar(255) DEFAULT NULL,
  `ladowanie_bezprzewodowe` varchar(255) DEFAULT NULL,
  `szybkosc_ladowania_przewodowego` varchar(255) DEFAULT NULL,
  `wymienna_bateria` varchar(255) DEFAULT NULL,
  `cena` varchar(255) DEFAULT NULL,
  `sciezka_do_zdjecia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `smartphones_parameters`
--

INSERT INTO `smartphones_parameters` (`id`, `name`, `ocena_uzytkownikow`, `rok_premiery`, `marka`, `przekatna_ekranu`, `zagiecie_ekranu`, `rozdzielczosc_ekranu`, `odswiezanie_ekranu__hz_`, `technologia_ekranu`, `skladany_ekran`, `system_operacyjny`, `ostateczny_mozliwy_system_operacyjny`, `wodoodpornosc`, `dual_sim`, `jack_na_sluchawki_przewodowe`, `slot_na_karte_sd`, `typ_zlacza_usb`, `5G`, `nfc`, `standard_bluetooth`, `bardzo_szybki_internet`, `rozdzielczosc_aparatu_tylu__mpx_`, `rozdzielczosc_aparatu_przedniego__mpx_`, `rozdzielczosc_nagrywanego_wideo_tyl`, `rozdzielczosc_nagrywanego_wideo_przod`, `taktowanie_procesora`, `marka_procesora`, `predkosc_pamieci_ram`, `pamiec_ram`, `pamiec_wbudowana`, `pojemnosc_baterii__mah_`, `ladowanie_bezprzewodowe`, `szybkosc_ladowania_przewodowego`, `wymienna_bateria`, `cena`, `sciezka_do_zdjecia`) VALUES
(4, 'iPhone 13 4/512', '5', '2021', 'Apple', '6.1 Cal', 'Nie', '1170 x 2532 px', '60Hz', 'OLED/AMOLED', 'Nie', 'iOS 16', 'iOS 21', 'Tak', 'Tak', 'Nie', 'Nie', 'USB-c', 'Tak', 'Tak', '5.1', 'Tak', '12 MP &amp; 12 MP', '12Mpx', '4k@60fps', '4k@30fps', '2 x 3.2 GHz &amp; 4 x 2 GHz (Apple A15 Bionic)', 'Apple A15 Bionic', '4000MHz', '4GB', '512GB', '3240 mAh', 'Tak', '20W', 'Nie', '2499zł', 'iPhone13.jpg'),
(7, 'Google Pixel 7 8/256', '3', '2022', 'google', '6.3Cal', 'Nie', '1080 x 2400 px', '90Hz', 'OLED/AMOLED', 'Nie', 'Android 14', 'Android 21', 'Tak', 'Tak', 'Nie', 'Nie', 'USB-c', 'Tak', 'Tak', '5.2', 'Tak', '50 MP &amp; 12 MP', '10.8MP', '4k@60fps', '4k@30fps', '2 x 2.85 GHz &amp; 2 x 2.35 GHz &amp; 4 x 1.8 GHz (Google Tensor G2)', 'Google Tensor G2', '2800MHz', '8GB', '256GB', '4355 mAh', 'Tak', '30W', 'Nie', '2000zł', 'Pixel7.jpg');

--
-- Indeksy dla zrzutów tabel
--

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
-- Indeksy dla tabeli `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `smartphones_parameters`
--
ALTER TABLE `smartphones_parameters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `main_site_arrow_menu_options_childs`
--
ALTER TABLE `main_site_arrow_menu_options_childs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT dla tabeli `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT dla tabeli `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `smartphones_parameters`
--
ALTER TABLE `smartphones_parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
