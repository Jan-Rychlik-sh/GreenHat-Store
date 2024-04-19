<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://unpkg.com/mvp.css">
    <style>
        * {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 25px;
        }

        label {
            display: block;
            margin: 5px;
        }
    </style>
</head>

<body>
    <?php
    if (isset($_POST["nazwa"]) && trim($_POST['nazwa']) != "") {
        $sql = "INSERT INTO smartphones VALUES (NULL, '" . $_POST["nazwa"] . "', '" . $_POST["Ocena_Użytkowników"] . "', '" . $_POST["Rok_Premiery"] . "', '" . $_POST['Marka'] . "', '" . $_POST['Przekątna_ekranu'] . "', '" . $_POST['Zagięty_ekran'] . "','" . $_POST['Rozdzielczość_Ekranu'] . "', '" . $_POST['Odświeżanie_Ekranu_Hz'] . "', '" . $_POST['Technologia_ekranu'] . "', '" . $_POST['Składany_ekran'] . "', '" . $_POST['System_Operacyjny'] . "', '" . $_POST['Ostateczny_możliwy_system_operacyjny'] . "', '" . $_POST['Wodoodporność'] . "', '" . $_POST['Dual_sim'] . "', '" . $_POST['Jack_na_słuchawki_przewodowe'] . "', '" . $_POST['Slot_na_kartę_SD'] . "', '" . $_POST['Typ_złącza_USB'] . "', '" . $_POST['5G'] . "', '" . $_POST["NFC"] . "', '" . $_POST['Standard_BlueTooth'] . "', '" . $_POST['Bardzo_Szybki_Internet'] . "', '" . $_POST['rozdzielczość_aparatu_tylnego_Mpx'] . "', '" . $_POST['rozdzielczość_aparatu_przedniego_Mpx'] . "', '" . $_POST['Rozdzielczość_nagrywanego_wideo_tył'] . "', '" . $_POST['Rozdzielczość_nagrywanego_wideo_przód'] . "', '" . $_POST['Taktowanie_procesora'] . "', '" . $_POST['Marka_procesora'] . "', '" . $_POST['Prędkość_Pamięci_RAM'] . "', '" . $_POST['Pamięć_RAM'] . "', '" . $_POST['Pamięć_Wbudowana'] . "', '" . $_POST['Pojemność_Baterii_mAh'] . "', '" . $_POST['Ładowanie_Bezprzewodowe'] . "', '" . $_POST['Szybkość_Ładowania_Przewodowego'] . "', '" . $_POST['Wymienna_Bateria'] . "');";
        $connect = new mysqli("localhost", "root", "", "gh_store");
        if ($connect->query($sql)) {
            echo "Udało się";
        } else {
            echo "Błąd";
        }
        echo $sql;
        exit();
    }
    ?>
    <form method="post">
        <input type="text" name="nazwa" placeholder="nazwa urządzenia">
        <label>
            <caption>Ocena Użytkowników</caption>
            <select required="required" name="Ocena_Użytkowników">
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
        </label>
        <label>
            <caption>Rok Premiery</caption>
            <select required="required" name="Rok_Premiery">
                <option>2017</option>
                <option>2018</option>
                <option>2019</option>
                <option>2020</option>
                <option>2021</option>
                <option>2022</option>
                <option>2023</option>
                <option>2024</option>
            </select>
        </label>
        <label>
            <caption>Marka</caption>
            <select required="required" name="Marka">
                <option>apple</option>
                <option>samsung</option>
                <option>google</option>
                <option>motorola</option>
                <option>xiaomi</option>
                <option>honor</option>
                <option>BBK Electronics (oppo, vivo, realme, one+)</option>
                <option>Transsion (infinix, tecno)</option>
                <option>asus</option>
                <option>zte/nubia</option>
                <option>htc</option>
                <option>tcl</option>
                <option>huawei</option>
                <option>sony</option>
                <option>myphone</option>
            </select>
        </label>
        <label>
            <caption>Przekątna ekranu</caption>
            <select required="required" name="Przekątna_ekranu">
                <option>Poniżej 6 cal</option>
                <option>Od 6 cal-6.4 cal</option>
                <option>Od 6.5 cal-6.9 cal</option>
                <option>Od 7 cal</option>
            </select>
        </label>
        <label>
            <caption>Zagięty ekran</caption>
            <select required="required" name="Zagięty_ekran">
                <option>Tak</option>
                <option>Nie</option>
            </select>
        </label>
        <label>
            <caption>Rozdzielczość Ekranu</caption>
            <select required="required" name="Rozdzielczość_Ekranu">
                <option>Poniżej HD 1280 x 720p</option>
                <option>od HD 1280 x 720p do FullHD 1980 x 1080</option>
                <option>od FullHD 1980 x 1080 do 2K 2560 x 1440</option>
                <option>więcej niż 2K 2560 x 1440</option>
            </select>
        </label>
        <label>
            <caption>Odświeżanie Ekranu [Hz]</caption>
            <select required="required" name="Odświeżanie_Ekranu_Hz">
                <option>60Hz</option>
                <option>90Hz</option>
                <option>120Hz</option>
                <option>144Hz</option>
                <option>165Hz</option>
            </select>
        </label>
        <label>
            <caption>Technologia ekranu</caption>
            <select required="required" name="Technologia_ekranu">
                <option>oled/amoled/poled</option>
                <option>ips</option>
                <option>tft/led/hd+/ltps/pls</option>
            </select>
        </label>
        <label>
            <caption>Składany ekran</caption>
            <select required="required" name="Składany_ekran">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>System Operacyjny</caption>
            <select required="required" name="System_Operacyjny">
                <option>android</option>
                <option>ios</option>
                <option>hms (huawei)</option>
            </select>
        </label>
        <label>
            <caption>Ostateczny możliwy system operacyjny</caption>
            <select required="required" name="Ostateczny_możliwy_system_operacyjny">
                <option>android 23</option>
                <option>android 22</option>
                <option>android 21</option>
                <option>android 20</option>
                <option>android 19</option>
                <option>android 18</option>
                <option>android 17</option>
                <option>android 16</option>
                <option>android 15</option>
                <option>android 14</option>
                <option>android 13</option>
                <option>android 12</option>
                <option>android 10</option>
                <option>android 9</option>
                <option>android HMS</option>
                <option>ios 22</option>
                <option>ios 21</option>
                <option>ios 20</option>
                <option>ios 19</option>
                <option>ios 18</option>
                <option>ios 17</option>
                <option>ios 16</option>
                <option>ios 15</option>
                <option>ios 14</option>
            </select>
        </label>
        <label>
            <caption>Wodoodporność</caption>
            <select required="required" name="Wodoodporność">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>Dual sim</caption>
            <select required="required" name="Dual_sim">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>Jack na słuchawki przewodowe</caption>
            <select required="required" name="Jack_na_słuchawki_przewodowe">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>Slot na kartę SD</caption>
            <select required="required" name="Slot_na_kartę_SD">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>Typ złącza USB</caption>
            <select required="required" name="Typ_złącza_USB">
                <option>usb c (zalecane)</option>
                <option>microusb b</option>
                <option>lightning</option>
            </select>
        </label>
        <label>
            <caption>5G</caption>
            <select required="required" name="5G">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>NFC</caption>
            <select required="required" name="NFC">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>Standard BlueTooth</caption>
            <select required="required" name="Standard_BlueTooth">
                <option>5.4</option>
                <option>5.3</option>
                <option>5.2</option>
                <option>5.1</option>
                <option>5</option>
                <option>4.2</option>
                <option>4.1</option>
                <option>4</option>
            </select>
        </label>
        <label>
            <caption>Bardzo Szybki Internet</caption>
            <select required="required" name="Bardzo_Szybki_Internet">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>rozdzielczość aparatu tylnego [Mpx]</caption>
            <select required="required" name="rozdzielczość_aparatu_tylnego_Mpx">
                <option>poniżej 12</option>
                <option>od 12 do 24</option>
                <option>od 25 do 50</option>
                <option>od 51 do 108</option>
                <option>powyżej 108</option>
            </select>
        </label>
        <label>
            <caption>rozdzielczość aparatu przedniego [Mpx]</caption>
            <select required="required" name="rozdzielczość_aparatu_przedniego_Mpx">
                <option>poniżej 5</option>
                <option>od 5 do 8</option>
                <option>od 9 do 25</option>
                <option>powyżej 25</option>
            </select>
        </label>
        <label>
            <caption>Rozdzielczość nagrywanego wideo tył</caption>
            <select required="required" name="Rozdzielczość_nagrywanego_wideo_tył">
                <option>poniżej FullHD@30fps (niezalecane)</option>
                <option>FullHD@30fps</option>
                <option>FullHD@60fps</option>
                <option>2K@30fps</option>
                <option>2K@60fps</option>
                <option>4K@30fps</option>
                <option>4K@60fps</option>
                <option>8K@24fps</option>
                <option>8K@30fps</option>
                <option>powyżej 8K@30fps</option>
            </select>
        </label>
        <label>
            <caption>Rozdzielczość nagrywanego wideo przód</caption>
            <select required="required" name="Rozdzielczość_nagrywanego_wideo_przód">
                <option>poniżej FullHD@30fps (niezalecane)</option>
                <option>FullHD@30fps</option>
                <option>FullHD@60fps</option>
                <option>2K@30fps</option>
                <option>2K@60fps</option>
                <option>4K@30fps</option>
                <option>4K@60fps</option>
                <option>powyżej 4k@60fps</option>
            </select>
        </label>
        <label>
            <caption>Taktowanie procesora</caption>
            <select required="required" name="Taktowanie_procesora">
                <option>poniżej 2 Ghz</option>
                <option>od 2 Ghz do 2.4 Ghz</option>
                <option>od 2.5 Ghz do 2.8 Ghz</option>
                <option>od 2.9 Ghz do 3.5 Ghz</option>
                <option>powyżej 3.5 Ghz</option>
            </select>
        </label>
        <label>
            <caption>Marka procesora</caption>
            <select required="required" name="Marka_procesora">
                <option>Qualcom</option>
                <option>Mediatek</option>
                <option>Samsung Exynos</option>
                <option>Apple</option>
                <option>Google Tensor</option>
                <option>Unisoc</option>
                <option>Kirin (Huawei)</option>
            </select>
        </label>
        <label>
            <caption>Prędkość Pamięci RAM</caption>
            <select required="required" name="Prędkość_Pamięci_RAM">
                <option>Poniżej 1600 MHz</option>
                <option>od 1600 MHz do 2200 MHz</option>
                <option>od 2001 MHz do 2600 MHz</option>
                <option>od 2601 MHz do 3200 MHz</option>
                <option>od 3200 MHz do 5000 MHz</option>
                <option>Powyżej 5000 MHz</option>
            </select>
        </label>
        <label>
            <caption>Pamięć RAM</caption>
            <select required="required" name="Pamięć_RAM">
                <option>Powyżej 16GB</option>
                <option>16GB</option>
                <option>12GB</option>
                <option>8GB</option>
                <option>6GB</option>
                <option>4GB</option>
                <option>3GB</option>
                <option>2GB</option>
            </select>
        </label>
        <label>
            <caption>Pamięć Wbudowana</caption>
            <select required="required" name="Pamięć_Wbudowana">
                <option>1000 GB i więcej</option>
                <option>512GB</option>
                <option>256GB</option>
                <option>128GB</option>
                <option>64GB</option>
                <option>32GB</option>
            </select>
        </label>
        <label>
            <caption>Pojemność Baterii [mAh]</caption>
            <select required="required" name="Pojemność_Baterii_mAh">
                <option>Powyżej 6000 mAH</option>
                <option>5500mAH do 6000mAH</option>
                <option>5000mAH do 5499mAH</option>
                <option>od 4500mAH do 4999mAH</option>
                <option>od 4500mAH do 4999mAH</option>
                <option>od 4000mAH do 4499mAH</option>
                <option>poniżej 4000mAH</option>
            </select>
        </label>
        <label>
            <caption>Ładowanie Bezprzewodowe</caption>
            <select required="required" name="Ładowanie_Bezprzewodowe">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <label>
            <caption>Szybkość Ładowania Przewodowego</caption>
            <select required="required" name="Szybkość_Ładowania_Przewodowego">
                <option>powyżej 100W</option>
                <option>60W-100W</option>
                <option>35W-59W</option>
                <option>15W-34W</option>
                <option>poniżej 15W</option>
            </select>
        </label>
        <label>
            <caption>Wymienna Bateria</caption>
            <select required="required" name="Wymienna_Bateria">
                <option>tak</option>
                <option>nie</option>
            </select>
        </label>
        <button type="submit">Zapisz w bazie danych</button>
    </form>
</body>

</html>