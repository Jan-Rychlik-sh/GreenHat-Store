<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GreenHat-Store</title>
    <link rel="stylesheet" href="dist/style.css">
    <link rel="shortcut icon" href="img/logo.ico" type="image/x-icon">
    <script async defer src="fix.js"></script>
    <script async defer src="colors-user-change.js"></script>
</head>


<body id="body">
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
                <div id="logo-name">
                    GreenHat Store
                </div>
                <span id="logo-description">Witaj na stronie sklepu z telefonami i komputerami, jednym z większych w Polsce.</span>
            </h1>
        </header>
        <div id="next-block">
            <div id="left">
                <nav id="nav">
                    <ul>
                        <li id="o1">
                            <h3>Smartfony</h3>
                            <div class="arrow-menu" id="am1">></div>
                        </li>
                        <li id="o2">
                            <h3>Telefony</h3>
                            <div class="arrow-menu" id="am2">></div>
                        </li>
                        <li id="o3">
                            <h3>Ładowanie telefonu</h3>
                            <div class="arrow-menu" id="am3">></div>
                        </li>
                        <li id="o4">
                            <h3>Akcesoria do smartfonów</h3>
                            <div class="arrow-menu" id="am4">></div>
                        </li>
                        <li id="o5">
                            <h3>Laptopy i Akcesoria</h3>
                            <div class="arrow-menu" id="am5">></div>
                        </li>
                        <li id="o6">
                            <h3>Słuchawki i głośniki komputerowe</h3>
                            <div class="arrow-menu" id="am6">></div>
                        </li>
                        <li id="o7">
                            <h3>Tablety i E-booki</h3>
                            <div class="arrow-menu" id="am7">></div>
                        </li>
                        <li id="o8">
                            <h3>Komputery i Podzespoły</h3>
                            <div class="arrow-menu" id="am8">></div>
                        </li>
                        <li id="o9">
                            <h3>Dodatki do komputera</h3>
                            <div class="arrow-menu" id="am9">></div>
                        </li>
                    </ul>
                </nav>
                <form method="post"></form>
            </div>
            <main id="main-content"></main>
        </div>
        <footer>&u0142; &aacute;</footer>
    </div>
    <?php
    $connect = new mysqli("localhost", "root", "", "gh_store");
    $rezultat1 = $connect->query("SELECT description, img FROM main_site_arrow_menu_options_childs");

    // Przetwarzanie wyników zapytania
    $switchSrc = [];
    $switchDescription = [];
    while ($row = $rezultat1->fetch_assoc()) {
        $switchSrc[] = $row['img'];
        $switchDescription[] = $row['description'];
    }
    ?>

    <script>
        let functionsName = [
            "Smartphones",
            "Phones",
            "PhoneCharging",
            "SmartphoneAccessories",
            "Laptops",
            "HeadphonesAndSpeakers",
            "TabletsAndEbooks",
            "ComputersAndComponents",
            "ComputerAccessories",
            "AboutUs",
        ];

        let main2 = document.querySelector("main");
        let lis = [];
        for (let i = 1; i <= functionsName.length - 1; i++) {
            lis.push(document.querySelector(`li#o${i}`));
        }
        console.log(lis);

        function setEventListeners() {
            lis.forEach((li, i) => {
                function n() {
                    showMenu(functionsName[i], i + 1, n);
                }
                li.addEventListener("click", n);
            });
        }
        setEventListeners();

        function showMenu(objectName, elementIndex, eventListener) {
            main2.innerHTML = "";
            let switchSrc = [];
            let switchDesc = [];
            // Wykorzystanie danych w kodzie JavaScript
            let switchImages = <?php echo json_encode($switchSrc); ?>;
            let switchDescription = <?php echo json_encode($switchDescription); ?>;
            console.log(switchImages);
            console.log(objectName);
            switch (objectName) {
                case "Smartphones":
                    for (let i = 0; i < switchImages.length; i++) {
                        if (switchImages[i].includes("Smartphone1")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    }
                    break;
                case "Phones":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("Phones2")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "PhoneCharging":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("PhoneCharging3")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "SmartphoneAccessories":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("SmartphoneAccesories4")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "Laptops":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("LaptopAndAccessories5")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "HeadphonesAndSpeakers":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("HeadPhonesAndSpeakers6")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "TabletsAndEbooks":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("TabletsAndEbooks7")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "ComputersAndComponents":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("ComputersAndComponents8")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "ComputerAccessories":
                    for (let i = 0; i < switchImages.length; i++)
                        if (switchImages[i].includes("ComputerAccessories9")) {
                            switchSrc.push(switchImages[i]);
                            switchDesc.push(switchDescription[i])
                        }
                    break;
                case "AboutUs":
                    switchSrc = "img/arrow-menu-images/Smartphone/1TB.webp";
                    break;
            }
            let j = 3;
            console.log(switchDesc);
            let thisElement = document.querySelector(`#o${elementIndex}`);
            for (let i = 0; i < switchSrc.length; i++) {
                let arrowMenuElement = document.createElement("div");
                arrowMenuElement.classList.add("arrowMenuElement");

                let aHref = document.createElement("a");
                aHref.id = "redirector";

                // Ustawienie adresu URL z parametrami objectName i filter
                aHref.href = `redirect.php?objectName=${objectName}&filter=${switchDesc[i]}`;

                let figure = document.createElement("figure");
                let image = document.createElement("img");
                image.src = switchSrc[i];
                image.width = "100";

                let figcaption = document.createElement("figcaption");
                figcaption.innerHTML = switchDesc[i];

                main2.appendChild(arrowMenuElement);
                arrowMenuElement.appendChild(aHref);
                aHref.appendChild(figure);
                figure.appendChild(image);
                figure.appendChild(figcaption);
            }
        }
    </script>

</body>

</html>