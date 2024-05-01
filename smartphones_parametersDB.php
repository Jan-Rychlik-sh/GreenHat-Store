<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://unpkg.com/mvp.css">
    <script async defer src="colors-user-change.js"></script>
    <link rel="stylesheet" href="dist/style.css">
    <link rel="stylesheet" href="dist/DB-styles.css">
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
        <?php
        if (isset($_POST["nazwa"]) && trim($_POST['nazwa']) != "") {
            $sql = "INSERT INTO smartphones_parameters VALUES 
        (NULL, '" .
                htmlentities($_POST["nazwa"], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST["Ocena_Użytkowników"], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST["Rok_Premiery"], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Marka'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Przekątna_ekranu'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Zagięty_ekran'], ENT_QUOTES, "UTF-8") . "','" .
                htmlentities($_POST['Rozdzielczość_Ekranu'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Odświeżanie_Ekranu_Hz'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Technologia_ekranu'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Składany_ekran'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['System_Operacyjny'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Ostateczny_możliwy_system_operacyjny'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Wodoodporność'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Dual_sim'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Jack_na_słuchawki_przewodowe'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Slot_na_kartę_SD'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Typ_złącza_USB'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['5G'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST["NFC"], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Standard_BlueTooth'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Bardzo_Szybki_Internet'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['rozdzielczość_aparatu_tylnego_Mpx'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['rozdzielczość_aparatu_przedniego_Mpx'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Rozdzielczość_nagrywanego_wideo_tył'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Rozdzielczość_nagrywanego_wideo_przód'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Taktowanie_procesora'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Marka_procesora'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Prędkość_Pamięci_RAM'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Pamięć_RAM'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Pamięć_Wbudowana'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Pojemność_Baterii_mAh'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Ładowanie_Bezprzewodowe'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Szybkość_Ładowania_Przewodowego'], ENT_QUOTES, "UTF-8") . "', '" .
                htmlentities($_POST['Wymienna_Bateria'], ENT_QUOTES, "UTF-8") . "','" .
                htmlentities($_POST['Cena'], ENT_QUOTES, "UTF-8") . "'" . ",'" .
                htmlentities($_POST['Sciezka_Do_Zdjecia'], ENT_QUOTES, "UTF-8") . "'" .
                ");";
            $connect = new mysqli("localhost", "root", "", "gh_store");
            if ($connect->query($sql)) {
                echo "Udało się";
                $connect->close();
            } else {
                echo "Błąd";
            }
            echo $sql;
            exit();
        }
        ?>
        <header>Tu wpisz dokładne parametry urządzenia</header>
        <form method="post">
            <label>
                <input type="text" required="required" name="nazwa" placeholder="nazwa urządzenia">
            </label>
            <label>
                <input required="required" placeholder="ocena użytkowników" name="Ocena_Użytkowników">
            </label>
            <label>
                <input required="required" placeholder="rok premiery" name="Rok_Premiery">
            </label>
            <label>
                <input required="required" placeholder="marka" name="Marka">
            </label>
            <label>
                <input required="required" placeholder="Przekątna ekranu" name="Przekątna_ekranu">
            </label>
            <label>
                <input required="required" placeholder="Zagięty ekran" name="Zagięty_ekran">
            </label>
            <label>
                <input required="required" placeholder="Rozdzielczość Ekranu" name="Rozdzielczość_Ekranu">
            </label>
            <label>
                <input required="required" placeholder="Odświeżanie Ekranu_Hz" name="Odświeżanie_Ekranu_Hz">
            </label>
            <label>
                <input required="required" placeholder="Technologia ekranu" name="Technologia_ekranu">
            </label>
            <label>
                <input required="required" placeholder="Składany ekran" name="Składany_ekran">
            </label>
            <label>
                <input required="required" placeholder="System Operacyjny" name="System_Operacyjny">
            </label>
            <label>
                <input required="required" placeholder="Ostateczny możliwy system operacyjny" name="Ostateczny_możliwy_system_operacyjny">
            </label>
            <label>
                <input required="required" placeholder="Wodoodporność" name="Wodoodporność">
            </label>
            <label>
                <input required="required" placeholder="Dual sim" name="Dual_sim">
            </label>
            <label>
                <input required="required" placeholder="Jack na słuchawki przewodowe" name="Jack_na_słuchawki_przewodowe">
            </label>
            <label>
                <input required="required" placeholder="Slot na kartę SD" name="Slot_na_kartę_SD">
            </label>
            <label>
                <input required="required" placeholder="Typ złącza USB" name="Typ_złącza_USB">
            </label>
            <label>
                <input required="required" placeholder="5G" name="5G">
            </label>
            <label>
                <input required="required" placeholder="NFC" name="NFC">
            </label>
            <label>
                <input required="required" placeholder="Standard BlueTooth" name="Standard_BlueTooth">
            </label>
            <label>
                <input required="required" placeholder="Bardzo Szybki Internet" name="Bardzo_Szybki_Internet">
            </label>
            <label>
                <input required="required" placeholder="rozdzielczość aparatu tylnego Mpx" name="rozdzielczość_aparatu_tylnego_Mpx">
            </label>
            <label>
                <input required="required" placeholder="rozdzielczość aparatu przedniego Mpx" name="rozdzielczość_aparatu_przedniego_Mpx">
            </label>
            <label>
                <input required="required" placeholder="Rozdzielczość nagrywanego_wideo_tył" name="Rozdzielczość_nagrywanego_wideo_tył">
            </label>
            <label>
                <input required="required" placeholder="Rozdzielczość nagrywanego_wideo_przód" name="Rozdzielczość_nagrywanego_wideo_przód">
            </label>
            <label>
                <input required="required" placeholder="Taktowanie procesora" name="Taktowanie_procesora">
            </label>
            <label>
                <input required="required" placeholder="Marka procesora" name="Marka_procesora">
            </label>
            <label>
                <input required="required" placeholder="Prędkość Pamięci RAM" name="Prędkość_Pamięci_RAM">
            </label>
            <label>
                <input required="required" placeholder="Pamięć RAM" name="Pamięć_RAM">
            </label>
            <label>
                <input required="required" placeholder="Pamięć Wbudowana" name="Pamięć_Wbudowana">
            </label>
            <label>
                <input required="required" placeholder="Pojemność Baterii mAh" name="Pojemność_Baterii_mAh">
            </label>
            <label>
                <input required="required" placeholder="Ładowanie Bezprzewodowe" name="Ładowanie_Bezprzewodowe">
            </label>
            <label>
                <input required="required" placeholder="Szybkość Ładowania Przewodowego" name="Szybkość_Ładowania_Przewodowego">
            </label>
            <label>
                <input required="required" placeholder="Wymienna Bateria" name="Wymienna_Bateria">
            </label>
            <label>
                <input required="required" placeholder="Cena" name="Cena">
            </label>
            <label>
                <input required="required" placeholder="Sciezka Do Zdjecia" name="Sciezka_Do_Zdjecia">
            </label>
            <button type="submit">Zapisz w bazie danych</button>
        </form>
    </div>
</body>

</html>