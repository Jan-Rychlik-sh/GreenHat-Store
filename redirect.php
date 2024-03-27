<?php
if (!isset($_GET["objectName"]) || !isset($_GET["filter"])) {
    header("Location: index.php");
}
$objectName = $_GET["objectName"];
$filter = $_GET["filter"];
$filter = htmlentities($filter, ENT_QUOTES, "UTF-8");
var_dump($objectName);
var_dump($filter);

switch ($objectName) {
    case "Smartphones":
        switch ($filter) {
            case "Wszystkie smartfony ":
                $filtersArray = array("");
            case "Długi okres wsparcia":
                $whichFilterItAppliesTo = 'Ostateczny możliwy system operacyjny';
                $filtersArray = array(
                    "IN(", "android 23,", "android 22", "android 21", "android 20", "android 19", "android 18", "ios 22", "ios 21", "ios 20", ")"
                );
            case "Dobry aparat":
                $whichFilterItAppliesTo = 'Rozdzielczość nagrywanego wideo tył';
                $filtersArray = array(
                    "IN(", '4K@30fps', '4K@60fps', '8K@24fps', '8K@30fps', 'powyżej 8K@30fps', ")"
                );
            case "Dobry procesor":
                $whichFilterItAppliesTo = "Taktowanie procesora";
                $whichFilterItAppliesTo2 = "Prędkość Pamięci RAM";
                $filtersArray1 = array(
                    "IN(", "od 2.9 Ghz do 3.5 Ghz",
                    "powyżej 3.5 Ghz", ")"
                );
                $filtersArray2 = array(
                    "IN(", "od 2601 MHz do 3200 MHz", "od 3200 MHz do 5000 MHz", "Powyżej 5000 MHz", ")"
                );
            case "Dużo pamięci wewnętrznej":
                $whichFilterItAppliesTo = "Pamięć Wbudowana";
                $filtersArray = array("IN(", "1000 GB i więcej", "512GB", "256GB", ")");
            case "Dużo RAM-u":
                $whichFilterItAppliesTo = "Pamięć RAM";
                $filtersArray = array(
                    "IN(", "Powyżej 16GB", "16GB", "12GB", ")"
                );
            case "Stare flagowce i średniaki z nowym Androidem +4 lata wsparcia (od nas)":
                $whichFilterItAppliesTo = "Rok Premiery";
                $filtersArray = array(
                    "IN(", "2017", "2018", "2019", "2020", "2021", ")"
                );
        }
        break;
    case "Phones":
        //Tu nic nie ma
        break;
    case "PhoneCharging":
        //Tu nic nie ma
        break;
    case "SmartphoneAccessories":
        //Tu nic nie ma
        break;
    case "Laptops":
        //Tu nic nie ma
        break;
    case "HeadphonesAndSpeakers":
        //Tu nic nie ma
        break;
    case "TabletsAndEbooks":
        //Tu nic nie ma
        break;
    case "ComputersAndComponents":
        //Tu nic nie ma
        break;
    case "ComputerAccessories":
        //Tu nic nie ma
        break;
    case "AboutUs":
        //Tu nic nie ma
        break;
}
