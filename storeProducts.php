<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GHS - <?php echo $_SESSION["category"]; ?></title>
    <link rel="stylesheet" href="dist/style.css">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    <script async defer src="helper.js"></script>
    <script async defer src="colors-user-change.js"></script>
</head>

<body>

    <div id="colors-change-options">
        <span>Zmieniaj kolory</span>
        <div id="close-colors">X</div>
        <div style="clear: both;"></div>
        <form method="post">
            <label>
                <span class="captions">hue-rotate</span>
                <input type="number" value="0" name="hueRotate" id="hueRotate">
            </label><br>
            <label>
                <span class="captions">invert</span>
                <input type="number" value="0" name="invert" id="invert">
            </label><br>
            <label>
                <span class="captions">sepia</span>
                <input type="number" value="0" name="sepia" id="sepia">
            </label><br>
            <label>
                <span class="captions">brightness</span>
                <input type="number" value="100" name="brightness" id="brightness">
            </label>
        </form>
    </div>
    <div id="colors-change">Kolory</div>
    <div id="container">


        <header id="main-site-header">
            <h1 id="logo">
                <a href="index.php">
                    <div id="logo-name" title="Powrót do strony głównej">GreenHat Store
                    </div>
                </a>
                <span id="logo-description"><?php echo $_SESSION["category"]; ?></span>
            </h1>
        </header>
        <div id="next-block">
            <div id="left">
                <nav id="nav">
                    <form method="post">
                        <button type="reset" class="button remove_filters">Usuń filtry</button>
                        <div class="sort">
                            <span>Sortuj według: </span>
                            <select name="sort" id="sortSelection" class="sort_select">
                                <option class="sort_option" id="so1">Najlepiej oceniane</option>
                                <option class="sort_option" id="so2">Od najtańszego</option>
                                <option class="sort_option" id="so3">Od najdroższego</option>
                            </select>
                        </div>
                        <div id="active_filters">
                            <h3>Aktywne filtry (aby usunąć filtry kliknij przycisk: Usuń filtry lub odznacz je ręcznie):</h3>
                            <article id="active_filters_description">
                            </article>
                        </div>
                        <?php
                        function FixTextToDatabaseFormat($text)
                        {
                            $polishToEnglish = array(
                                'ą' => 'a',
                                'ć' => 'c',
                                'ę' => 'e',
                                'ł' => 'l',
                                'ń' => 'n',
                                'ó' => 'o',
                                'ś' => 's',
                                'ź' => 'z',
                                'ż' => 'z',
                                'Ą' => 'A',
                                'Ć' => 'C',
                                'Ę' => 'E',
                                'Ł' => 'L',
                                'Ń' => 'N',
                                'Ó' => 'O',
                                'Ś' => 'S',
                                'Ź' => 'Z',
                                'Ż' => 'Z'
                            );

                            // Zamień polskie znaki na ich angielskie odpowiedniki
                            $text = strtr($text, $polishToEnglish);

                            // Zamień spacje, nawiasy kwadratowe i nawiasy okrągłe na podkreślenia
                            $text = preg_replace('/[\s\[\]()]|-\z/', '_', $text);

                            // Zamień wszystkie litery na małe
                            $text = strtolower($text);

                            return $text;
                        }



                        $connect = new mysqli("localhost", "root", "", "gh_store");
                        $rezult2 = $connect->query("SELECT name FROM filters WHERE forWhichProduct='" . $_SESSION["category"] . "';");

                        if ($rezult2->num_rows > 0) {
                            function generateChecbox($checked, $row, $row2)
                            {
                                echo "<label class='optionFilter' title='" . $row["name"] . "'><caption class='FilterDescription'>" . $row2["name"] . "</caption><input type='checkbox' class='optionCheckbox' $checked name='" . $row2["name"] . "-" . FixTextToDatabaseFormat($row["name"]) . "' id='" . $row2["name"] . "-" . FixTextToDatabaseFormat($row["name"]) . "' ></label><hr>";
                                //Dodanie do localStorage filtrów domyślnie zaznaczonych z powodu kliknięcia w daną opcję w pliku index.php
                                echo <<<HTML
                                <script>
                                    var checkboxesPHPuserChoosedOption = document.querySelectorAll("input[type='checkbox']:checked");
                                    for (let box of checkboxesPHPuserChoosedOption) {
                                        if (box.hasAttribute("checked")) {
                                            localStorage.setItem(box.id, true);
                                        }
                                    }
                                </script>
                                HTML;
                            }
                            while ($row = $rezult2->fetch_assoc()) {
                                echo "<details>" . "<summary>" . $row["name"] . "</summary>";

                                // Wykonaj zapytanie dla każdego filtra
                                $rezult3 = $connect->query("SELECT * FROM options WHERE `type`='" . $_SESSION["category"] . "' AND forWhichFilter='" . $row["name"] . "'");
                                while ($row2 = $rezult3->fetch_assoc()) {
                                    if (str_contains($_SESSION['sql'], "'" . $row2["name"] . "'") && $_SESSION['first_time_generate'] == true) {
                                        generateChecbox("checked", $row, $row2);
                                    } else {
                                        generateChecbox("", $row, $row2);
                                    }
                                }

                                echo "</details>";
                            }
                            $_SESSION['first_time_generate'] = false;
                        }

                        ?>
                        <button class="button">POKAŻ</button>
                    </form>
                </nav>
            </div>
            <main id="main-content">
                <?php
                // Inicjalizacja zapytania SQL
                $sql = "SELECT * FROM smartphones";

                // Inicjalizacja tablicy asocjacyjnej na filtry i opcje
                $filtersAndOptions = [];

                // Iteracja po polach formularza POST
                foreach ($_POST as $fieldName => $value) {
                    // Podziel nazwę pola formularza na nazwę opcji i filtru
                    $parts = explode("-", $fieldName);

                    // Sprawdź, czy udało się podzielić nazwę na dwie części (opcję i filtr)
                    if (count($parts) === 2) {
                        $optionName = $parts[0];
                        $filterName = $parts[1];

                        // Dodaj opcję i filtr do tablicy asocjacyjnej
                        if (!isset($filtersAndOptions[$filterName])) {
                            $filtersAndOptions[$filterName] = [];
                        }
                        $filtersAndOptions[$filterName][] = $optionName;
                    }
                }

                // Sprawdzenie, czy są wybrane filtry i opcje
                if (!empty($filtersAndOptions)) {
                    // Dodanie warunków WHERE dla każdego filtra i odpowiadających mu opcji
                    $whereConditions = [];
                    foreach ($filtersAndOptions as $filterName => $options) {
                        // Zamiana polskich znaków na angielskie odpowiedniki w nazwach filtrów
                        $filterName = FixTextToDatabaseFormat($filterName);

                        // Formatowanie opcji dla danego filtra
                        $optionsString = "'" . implode("', '", $options) . "'";
                        $optionsString = str_replace("_", " ", $optionsString);
                        // Dodanie warunku WHERE dla danego filtra
                        $whereConditions[] = "$filterName IN ($optionsString)";
                    }
                    // Połączenie warunków WHERE za pomocą operatora logicznego AND
                    $whereClause = implode(" AND ", $whereConditions);

                    // Dodanie warunku WHERE do zapytania SQL
                    $sql .= " WHERE $whereClause";
                }


                // Dodanie sortowania
                if (isset($_POST['sort'])) {
                    $_SESSION['sorting'] = $_POST['sort'];
                    switch ($_SESSION['sorting']) {
                        case "Najlepiej oceniane":
                            $_SESSION['sorting'] = " ORDER BY ocena_uzytkownikow DESC";
                            break;
                        case "Od najtańszego":
                            $_SESSION['sorting'] = " ORDER BY cena ASC";
                            break;
                        case "Od najdroższego":
                            $_SESSION['sorting'] = " ORDER BY cena DESC";
                            break;
                    }
                    if (isset($_SESSION['sorting'])) {
                        $sql .= $_SESSION['sorting'];
                    }
                }

                $connect = new mysqli("localhost", "root", "", "gh_store");
                $rezult4 = $connect->query($sql);
                while ($row = $rezult4->fetch_assoc()) {
                    $row2Result = $connect->query("SELECT * FROM smartphones_parameters WHERE name='" . $row['name'] . "';");
                    $row2 = $row2Result->fetch_assoc();
                    echo '<div class="product">
                    <div class="top_product_section">
                        <h2>
                            <div class="product_title">' . $row2['name'] . ' ' . $row2['pamiec_ram'] . '/' . $row2['pamiec_wbudowana'] . '&nbsp;&nbsp;<span class="product_rating">' . $row2['ocena_uzytkownikow'] . ' <img src="img/storeProducts/star.png" width="25" alt="gwiazdek"></span>
                            </div>
                        </h2>
                    </div>
                    <div class="bottom_product_section">
                        <figure id="product_image">
                            <img src="img/storeProducts/smartphones/' . $row2['sciezka_do_zdjecia'] . '" alt="' . $row['name'] . '">
                            <figcaption>' . $row['marka'] . '</figcaption>
                        </figure>
                        <div class="product_info">
                            <div class="product_param">
                                Pamięć wewnętrzna: ' . $row2['pamiec_wbudowana'] . '</div>
                            <div class="product_param">
                                Pamięć RAM: ' . $row2['pamiec_ram'] . '</div>
                            <div class="product_param">
                                Pojemność baterii: ' . $row2['pojemnosc_baterii__mah_'] . '</div>
                            <div class="product_param">
                                Taktowanie Procesora: ' . $row2['taktowanie_procesora'] . '</div>
                            <div class="product_param">
                                Marka procesora: ' . $row2['marka_procesora'] . '</div>
                            <div class="product_param">
                                Rozdzielczość nagrywanego wideo tył: ' . $row2['rozdzielczosc_nagrywanego_wideo_tyl'] . '</div>
                            <div class="product_param">
                                System Operacyjny: ' . $row2['system_operacyjny'] . ' - ostateczna możliwa wersja: ' . $row2['ostateczny_mozliwy_system_operacyjny'] . '</div>
                            <div class="price">' . $row2['cena'] . '</div>
                            <button class="buy">Kup</button>
                        </div>
                    </div>
                </div>';
                }
                $connect->close();

                // Wyświetlenie zbudowanego zapytania SQL
                echo "<div>Kliknij przycisk \"POKAŻ\", aby zobaczyć oferty!</div>";

                ?>

            </main>
        </div>
    </div>
</body>

</html>