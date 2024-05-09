<?php
session_start();
if (!isset($_POST["phone_name"])) {
    header("Location: storeProducts.php");
}
?>
<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GHS - <?php echo $_POST["phone_name"] ?></title>
    <link rel="stylesheet" href="dist/style.css">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    <script async defer src="colors-user-change.js"></script>
    <link rel="stylesheet" href="dist/product-styles.css">
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
                <span id="logo-description"><?php echo $_POST["phone_name"] ?></span>
            </h1>
        </header>
        <div id="next-block">
            <main id="main-content">
                <?php
                $sql = "SELECT * FROM smartphones_parameters WHERE name='" . $_POST["phone_name"] . "'";
                $connect = new mysqli("localhost", "root", "", "gh_store");
                $rezult4 = $connect->query($sql);
                while ($row = $rezult4->fetch_assoc()) {
                    $row2Result = $connect->query("SELECT * FROM smartphones_parameters WHERE name='" . $row['name'] . "';");
                    $row2 = $row2Result->fetch_assoc();
                    echo '
                    <div class="top_product_section">
                        <h2>
                            <div class="product_title">' . $row2['name'] . ' ' . $row2['pamiec_ram'] . '/' . $row2['pamiec_wbudowana'] . '&nbsp;&nbsp;<span class="product_rating">' . $row2['ocena_uzytkownikow'] . ' <img id="star" src="img/storeProducts/star.png" width="25" alt="gwiazdek"></span>
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
                                Przekątna ekranu: ' . $row2['przekatna_ekranu'] . '</div>
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
                            <div class="product_param" id="link">
                                <a href="#more_info">Więcej parametrów tutaj: </a>
                            </div>
                            <div class="price">' . $row2['cena'] . '</div>
                        </div>
                    </div>
                    <button class="buy buy_button">Do Koszyka</button>';
                }
                $connect->close();
                ?>
            </main>
            <div id="more_info">
                <header>
                    <h1>Dane Urządzenia</h1>
                    <div id="close_more_info">x</div>
                </header>
                <article id="params_and_info_box">
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
                    $rezult5 = $connect->query("SELECT * FROM filters");
                    while ($row = $rezult5->fetch_assoc()) {
                        $rezult6 = $connect->query("SELECT " . FixTextToDatabaseFormat($row["name"]) . " FROM smartphones_parameters WHERE name='" . $_POST["phone_name"] . "'");
                        echo
                        '<div class="product_specific_param">
                            <div class="product_field">' . $row["name"] . ': </div>
                            <div class="product_field_value">' . ($rezult6->fetch_assoc()[FixTextToDatabaseFormat($row["name"])]) . ' </div>
                        </div>';
                    }
                    $connect->close();
                    ?>
                </article>
            </div>
        </div>
    </div>
    <script>
        document.querySelector("#link").addEventListener("click", () => {
            document.querySelector("#more_info").style.display = "block";
        });
        document.querySelector("#close_more_info").addEventListener("click", () => {
            document.querySelector("#more_info").style.display = "none";
        });
    </script>
</body>

</html>