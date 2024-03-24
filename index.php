<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GreenHat-Store</title>
    <link rel="stylesheet" href="dist/style.css">
    <link rel="shortcut icon" href="img/logo.ico" type="image/x-icon">
    <script async defer src="fix-width.js"></script>
    <script async defer src="arrow-menu.js"></script>
    <script async defer src="colors-user-change.js"></script>
</head>

<body>
    <div id="colors-change">Kolory</div>
    <div id="colors-change-options">
        <span>Zmieniaj kolory</span>
        <div id="close-colors">X</div>
        <div style="clear: both;"></div>
        <label>
            <caption>hueRotate:</caption>
            <input type="number" name="hueRotate" id="hueRotate">
        </label><br>
        <label>
            <caption>invert:</caption>
            <input type="number" name="invert" id="invert">
        </label><br>
        <label>
            <caption>sepia:</caption>
            <input type="number" name="sepia" id="sepia">
        </label><br>
        <label>
            <caption>brightness:</caption>
            <input type="number" name="brightness" id="brightness">
        </label>
    </div>
    <div id="container">
        <header id="main-site-header">
            <h1 id="logo">
                <div id="logo-name">
                    GreenHat Store
                </div> Witaj na stronie sklepu z telefonami i komputerami, jednym z większych w Polsce.
            </h1>
        </header>
        <div id="next-block">
            <div id="left">
                <nav id="nav">
                    <ul>
                        <li>
                            <h3>Smartfony</h3>
                            <div class="arrow-menu" id="am1">></div>
                        </li>
                        <li>
                            <h3>Telefony</h3>
                            <div class="arrow-menu" id="am2">></div>
                        </li>
                        <li>
                            <h3>Ładowanie telefonu</h3>
                            <div class="arrow-menu" id="am3">></div>
                        </li>
                        <li>
                            <h3>Akcesoria do smartfonów</h3>
                            <div class="arrow-menu" id="am4">></div>
                        </li>
                        <li>
                            <h3>Laptopy</h3>
                            <div class="arrow-menu" id="am5">></div>
                        </li>
                        <li>
                            <h3>Podzespoły do komputerów</h3>
                            <div class="arrow-menu" id="am6">></div>
                        </li>
                        <li>
                            <h3>Słuchawki</h3>
                            <div class="arrow-menu" id="am7">></div>
                        </li>
                        <li>
                            <h3>Głośniki</h3>
                            <div class="arrow-menu" id="am8">></div>
                        </li>
                        <li>
                            <h3>Komputery</h3>
                            <div class="arrow-menu" id="am9">></div>
                        </li>
                        <li>
                            <h3>O nas</h3>
                            <div class="arrow-menu" id="am10">></div>
                        </li>
                    </ul>
                </nav>
                <form method="post"></form>
            </div>
            <main id="main-content"></main>
        </div>
        <footer></footer>
    </div>
</body>

</html>