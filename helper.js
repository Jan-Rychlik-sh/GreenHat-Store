// Usuń zaznaczenie checkboxów i wyczyść localStorage po kliknięciu przycisku oraz wyczyść pudełko z informacją o zaznaczonych opcjach
document
  .querySelector(".remove_filters")
  .addEventListener("click", function () {
    let checkboxes = document.querySelectorAll("form input[type='checkbox']");
    for (let chbx of checkboxes) {
      chbx.removeAttribute("checked");
      localStorage.removeItem(chbx.id); // Usuń z localStorage
    }
    let options = document.querySelectorAll("option.sort_option");
    for (let option of options) {
      option.selected = false; //Odznacz opcję
      localStorage.removeItem(option.id); // usuwamy z localStorage
    }
    document.getElementById("active_filters_description").innerHTML = ""; //Czyścimy pudełko z informacją o zaznaczonych opcjach
  });

// Słuchaj zmiany stanu checkboxów i zapisuj je w localStorage
let boxes = document.querySelectorAll("input[type='checkbox']");
for (let box of boxes) {
  box.addEventListener("change", function () {
    localStorage.setItem(box.id, box.checked);
  });

  // Sprawdź, czy istnieje zapis w localStorage i ustaw stan checkboxa zgodnie z nim
  if (localStorage.getItem(box.id) === "true") {
    box.checked = true; // Zaznacz checkbox
  }
}

let select = document.querySelector("select.sort_select");
let options = select.querySelectorAll("option");
for (let option of options) {
  if (localStorage.getItem(option.id) === "true") {
    option.selected = true; // Zaznacz optiona
  }
}

// Słuchaj zmiany selecta i zapisuj jego wartość w localStorage
select.addEventListener("change", function () {
  for (let option of options) {
    option.removeAttribute("selected");
    localStorage.removeItem(option.id);
  }
  let selectedOption = select.options[select.selectedIndex];
  localStorage.setItem(selectedOption.id, selectedOption.selected);
});

//Sortowanie elementów strony
if (document.querySelector("select").value != "Najlepiej oceniane") {
  let mainContent = document.getElementById("main-content");
  let products = mainContent.querySelectorAll(".product");
  if (products.length > 0) {
    let productsArray = Array.from(products);
    productsArray.sort((a, b) => {
      let priceA = parseFloat(
        a.querySelector(".price").innerText.replace("zł", "")
      );
      let priceB = parseFloat(
        b.querySelector(".price").innerText.replace("zł", "")
      );
      if (document.querySelector("select").value == "Od najtańszego")
        return priceA - priceB; // Sortowanie rosnąco
      else if (document.querySelector("select").value == "Od najdroższego")
        return priceB - priceA; // Sortowanie malejąco
    });
    mainContent.innerHTML = "";
    productsArray.forEach((product) => {
      mainContent.appendChild(product);
    });
  }
}

function fixTextToDatabaseFormat(text) {
  // Sprawdź czy text jest łańcuchem znaków
  if (typeof text !== "string") {
    throw new Error('Argument "text" musi być łańcuchem znaków.');
  }

  var polishToEnglish = {
    ą: "a",
    ć: "c",
    ę: "e",
    ł: "l",
    ń: "n",
    ó: "o",
    ś: "s",
    ź: "z",
    ż: "z",
    Ą: "A",
    Ć: "C",
    Ę: "E",
    Ł: "L",
    Ń: "N",
    Ó: "O",
    Ś: "S",
    Ź: "Z",
    Ż: "Z",
  };

  // Zamień polskie znaki na ich angielskie odpowiedniki
  text = text.replace(/[ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]/g, function (match) {
    return polishToEnglish[match];
  });

  // Zamień spacje, nawiasy kwadratowe i nawiasy okrągłe na podkreślenia
  text = text.replace(/[\s\[\]()-]/g, "_");

  // Zamień wszystkie litery na małe
  text = text.toLowerCase();

  return text;
}

//Ta funkcja Wyświtli aktywne filtry wraz z aktywnymi opcjami
function printActiveFilters() {
  let article = document.getElementById("active_filters_description");
  var detailsWithCheckbox = document.querySelectorAll(
    'details input[type="checkbox"]:checked'
  );
  let titleOfLabelWithCheckedBoxes = Array.from(detailsWithCheckbox).map(
    (box) => {
      box.closest("details").setAttribute("open", "");
      return box.closest("label").title;
    }
  );
  //Usunięcie powtarzających się elementów
  titleOfLabelWithCheckedBoxes = new Set(titleOfLabelWithCheckedBoxes);
  titleOfLabelWithCheckedBoxes = Array.from(titleOfLabelWithCheckedBoxes);
  for (let tl of titleOfLabelWithCheckedBoxes) {
    let section = document.createElement("section");
    section.classList.add("checkedFilterInfo");
    let checkedFiltersTitle = document.createElement("h4");
    checkedFiltersTitle.innerHTML = tl;
    let ul = document.createElement("ul");
    detailsWithCheckbox.forEach((checkbox) => {
      let li = document.createElement("li");
      li.innerHTML = checkbox.id.substring(0, checkbox.id.indexOf("-"));
      if (
        fixTextToDatabaseFormat(checkedFiltersTitle.innerText) ==
        checkbox.id.substring(checkbox.id.indexOf("-") + 1)
      ) {
        ul.appendChild(li);
      }
      section.appendChild(checkedFiltersTitle);
      section.appendChild(ul);
    });
    article.appendChild(section);
  }
}
printActiveFilters();

document.querySelectorAll(".check").forEach((el) => {
  el.addEventListener("click", function () {
    let checkboxes = document.querySelectorAll("form input[type='checkbox']");
    for (let chbx of checkboxes) {
      chbx.removeAttribute("checked");
      localStorage.removeItem(chbx.id); // Usuń z localStorage
    }
    let options = document.querySelectorAll("option.sort_option");
    for (let option of options) {
      option.selected = false; //Odznacz opcję
      localStorage.removeItem(option.id); // usuwamy z localStorage
    }
    document.getElementById("active_filters_description").innerHTML = ""; //Czyścimy pudełko z informacją o zaznaczonych opcjach
  });
});
