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
    <!-- <script async defer src="fix.js"></script> -->
    <script async defer src="colors-user-change.js"></script>
</head>

<body>

    <div id="colors-change-options">
        <span>Zmieniaj kolory</span>
        <div id="close-colors">X</div>
        <div style="clear: both;"></div>
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
                    <div class="sort">
                        <span>Sortuj według: </span>
                        <select name="sort" id="sortSelection">
                            <option value="">Najlepiej oceniane</option>
                            <option value="">Od najtańszego</option>
                            <option value="">Od najdroższego</option>
                        </select>
                    </div>
                    <?php
                    $connect = new mysqli("localhost", "root", "", "gh_store");
                    $rezult2 = $connect->query("SELECT name FROM filters WHERE forWhichProduct='" . $_SESSION["category"] . "';");

                    if ($rezult2->num_rows > 0) {
                        while ($row = $rezult2->fetch_assoc()) {
                            echo "<details>" . "<summary>" . $row["name"] . "</summary>";

                            // Wykonaj zapytanie dla każdego filtra
                            $rezult3 = $connect->query("SELECT * FROM options WHERE `type`='" . $_SESSION["category"] . "' AND forWhichFilter='" . $row["name"] . "'");

                            while ($row2 = $rezult3->fetch_assoc()) {
                                echo "<label class='optionFilter'>" . $row2["name"] . "<input type='checkbox' class='optionCheckbox'></label><hr>";
                            }

                            echo "</details>";
                        }
                    }

                    ?>
                    <button>FILTRUJ</button>
                </nav>
                <form method="post"></form>
            </div>
            <main id="main-content"></main>
        </div>
        <footer>&u0142; &aacute;</footer>
    </div>
</body>

</html>