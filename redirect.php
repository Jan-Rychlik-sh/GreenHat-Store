<?php

if (!isset($_GET["objectName"]) || !isset($_GET["filter"])) {
    header("Location: index.php");
}
session_start();
$filtersByCategory = [
    "Smartphones" => [
        "Wszystkie smartfony " => [
            "filter" => "",
        ],
        "Długi okres wsparcia" => [
            "filter" => "ostateczny_mozliwy_system_operacyjny",
            "values" => ["android 23", "android 22", "android 21", "android 20", "android 19", "android 18", "ios 22", "ios 21", "ios 20"],
        ],
        "Dobry aparat" => [
            "filter" => "rozdzielczosc_aparatu_tylu__mpx_",
            "values" => ['4K@30fps', '4K@60fps', '8K@24fps', '8K@30fps', 'powyżej 8K@30fps'],
        ],
        "Dobry procesor" => [
            "filters" => [
                [
                    "filter" => "taktowanie_procesora",
                    "values" => ["od 2.9 Ghz do 3.5 Ghz", "powyżej 3.5 Ghz"],
                ],
                [
                    "filter" => "predkosc_pamieci_ram",
                    "values" => ["od 2601 MHz do 3200 MHz", "od 3200 MHz do 5000 MHz", "Powyżej 5000 MHz"],
                ],
            ],
        ],
        "Dużo pamięci wewnętrznej" => [
            "filter" => "pamiec_wbudowana",
            "values" => ["1000 GB i więcej", "512GB", "256GB"],
        ],
        "Dużo RAM-u" => [
            "filter" => "pamiec_ram",
            "values" => ["Powyżej 16GB", "16GB", "12GB"],
        ],
        "Stare flagowce i średniaki z nowym Androidem 4 lata wsparcia od nas" => [
            "filter" => "rok_premiery",
            "values" => ["2017", "2018", "2019", "2020", "2021"],
        ],
    ],
    "Phones" => [],
    "PhoneCharging" => [],
    "SmartphoneAccessories" => [],
    "Laptops" => [],
    "HeadphonesAndSpeakers" => [],
    "TabletsAndEbooks" => [],
    "ComputersAndComponents" => [],
    "ComputerAccessories" => [],
    "AboutUs" => [],
];

// Przykład użycia:
$_SESSION["category"] = $_GET["objectName"];
$buforCategory = $_SESSION["category"];
$filterName = $_GET["filter"];
echo $_SESSION["category"];
echo $filterName;


if (isset($filtersByCategory[$_SESSION["category"]][$filterName])) {
    $filterData = $filtersByCategory[$_SESSION["category"]][$filterName];

    // Sprawdzenie, czy klucz "filter" istnieje w tablicy $filterData
    if (isset($filterData["filter"])) {
        $filter = $filterData["filter"];
        $values = isset($filterData["values"]) ? $filterData["values"] : [];
    } elseif (isset($filterData["filters"])) {
        // Jeśli mamy tablicę filtrów, przetwarzamy je oddzielnie
        foreach ($filterData["filters"] as $filterItem) {
            $filter = $filterItem["filter"];
            $values = $filterItem["values"];
            // Tutaj można wykonać operacje na każdym filtrze osobno
            var_dump($filter);
            var_dump($values);
        }
    }

    var_dump($values);
    echo "<br><br>";
    var_dump($_SESSION["category"]);
    echo "<br><br>";
    var_dump($filter);
    echo "<br><br>";
    var_dump($filterData);
    $_SESSION['category'] = strtolower($_SESSION['category']);

    $_SESSION['sql'] = "SELECT * FROM " . strtolower($_SESSION["category"]);

    if (!empty($values)) {
        $filterString = "`$filter` IN ('" . implode("', '", $values) . "')";
        $_SESSION['sql'] .= " WHERE " . $_SESSION['category'] . ".$filterString";
    }

    // Jeśli mamy więcej niż jeden filtr, dodajemy warunek do istniejącego zapytania
    if (isset($filterData["filters"]) && count($filterData["filters"]) > 1) {
        $_SESSION['sql'] .= " AND " . $_SESSION['category'] . ".";
        foreach ($filterData["filters"] as $index => $filterItem) {
            $filterValues = implode("', '", $filterItem["values"]);
            $filterString = "`{$filterItem["filter"]}` IN ('$filterValues')";
            $_SESSION['sql'] .= $filterString;
            // Jeśli to nie jest ostatni filtr, dodajemy operator "AND"
            if ($index < count($filterData["filters"]) - 1) {
                $_SESSION['sql'] .= " AND " . $_SESSION['category'] . ".";
            }
        }
    }

    echo "<br><br>" . $_SESSION['sql'];
    $_SESSION["category"] = $buforCategory;
    header("Location: storeProducts.php");
}


//To jest robocze, gdybym dorobił tabelki dla pozostałych kategori ten else if byłby zbędny, ale nie mam czasu więc na razie ten else if zostaje
else if (!isset($filtersByCategory[$_SESSION["category"]][$filterName]) and $_SESSION["category"] == "Smartphones") {
    $_SESSION["category"] = strtolower($_SESSION["category"]);
    $_SESSION['sql'] = "SELECT * FROM " . $_SESSION["category"];
    echo "<br><br>" . $_SESSION['sql'];
    $_SESSION["category"] = $buforCategory;
    header("Location: storeProducts.php");
} else {
    echo "<br>Ta strona jest w trakcie budowy<br>";
    echo "<a href='index.php'>Powrót do strony głównej.</a>";
}
