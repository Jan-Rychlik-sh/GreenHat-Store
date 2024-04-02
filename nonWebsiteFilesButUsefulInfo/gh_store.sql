-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Kwi 2024, 10:54
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
(10, 'Materiał wykonania', 'Smartphones'),
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
(35, 'Wymienna Bateria', 'Smartphones');

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
(175, '60W-100W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(176, '35W-59W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(177, '15W-34W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(178, 'poniżej 15W', 'Szybkość Ładowania Przewodowego', 'Smartphone'),
(179, 'tak', 'Wymienna Bateria', 'Smartphone'),
(180, 'nie', 'Wymienna Bateria', 'Smartphone'),
(181, 'tak', 'Bardzo Szybki Internet', 'Smartphone');

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
  `material_wykonania` varchar(255) DEFAULT NULL,
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
  `wymienna_bateria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `smartphones`
--

INSERT INTO `smartphones` (`id`, `name`, `ocena_uzytkownikow`, `rok_premiery`, `marka`, `przekatna_ekranu`, `zagiecie_ekranu`, `rozdzielczosc_ekranu`, `odswiezanie_ekranu__hz_`, `technologia_ekranu`, `skladany_ekran`, `material_wykonania`, `system_operacyjny`, `ostateczny_mozliwy_system_operacyjny`, `wodoodpornosc`, `dual_sim`, `jack_na_sluchawki_przewodowe`, `slot_na_karte_sd`, `typ_zlacza_usb`, `piec_g`, `nfc`, `standard_bluetooth`, `bardzo_szybki_internet`, `rozdzielczosc_aparatu_tylu__mpx_`, `rozdzielczosc_aparatu_przedniego__mpx_`, `rozdzielczosc_nagrywanego_wideo_tyl`, `rozdzielczosc_nagrywanego_wideo_przod`, `taktowanie_procesora`, `marka_procesora`, `predkosc_pamieci_ram`, `pamiec_ram`, `pamiec_wbudowana`, `pojemnosc_baterii__mah_`, `ladowanie_bezprzewodowe`, `szybkosc_ladowania_przewodowego`, `wymienna_bateria`) VALUES
(1, 'Apple iPhone 15 Pro Max 8GB/1TB', '5', '2023', 'apple', 'Od 6.5 cal-6.9 cal', 'Nie', 'więcej niż 2K 2560 x 1440', '120Hz', 'oled/amoled/poled', 'nie', 'tytan', 'ios', 'ios 22', 'tak', 'tak', 'nie', 'nie', 'usb c (zalecane)', 'tak', 'tak', '5.1', 'tak', 'od 25 do 50', 'od 9 do 25', '4K@60fps', '4k@30fps', 'powyżej 3.5 Ghz', 'Apple', 'Powyżej 5000 MHz', '8GB', '1000 GB i więcej', 'od 4000mAH do 4499mAH', 'tak', '35W-59W', 'nie'),
(2, 'Example Fon', 'myphone', '2024', '', 'Od 6.5 cal-6.9 cal', 'Nie', 'więcej niż 2K 2560 x 1440', '120Hz', 'oled/amoled/poled', 'nie', 'tytan', 'ios', 'ios 22', 'tak', 'tak', 'nie', 'nie', 'usb c (zalecane)', 'tak', 'tak', '5.1', 'tak', 'od 25 do 50', 'od 9 do 25', '4K@60fps', '4k@30fps', 'od 2.9 Ghz do 3.5 Ghz', 'Apple', 'Powyżej 5000 MHz', '12GB', '512GB', '5000mAH do 5499mAH', 'tak', '35W-59W', 'nie'),
(3, 'Example Fon', 'myphone', '2024', '', 'Od 6.5 cal-6.9 cal', 'Nie', 'więcej niż 2K 2560 x 1440', '120Hz', 'oled/amoled/poled', 'nie', 'tytan', 'ios', 'ios 22', 'tak', 'tak', 'nie', 'nie', 'usb c (zalecane)', 'tak', 'tak', '5.1', 'tak', 'od 25 do 50', 'od 9 do 25', '4K@60fps', '4k@30fps', 'od 2.9 Ghz do 3.5 Ghz', 'Apple', 'Powyżej 5000 MHz', '12GB', '512GB', '5000mAH do 5499mAH', 'tak', '35W-59W', 'nie');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT dla tabeli `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
