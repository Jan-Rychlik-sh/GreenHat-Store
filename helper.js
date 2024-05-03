// Usuń zaznaczenie checkboxów i wyczyść localStorage po kliknięciu przycisku
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
  });

// Słuchaj zmiany stanu checkboxów i zapisuj je w localStorage
let boxes = document.querySelectorAll("input[type='checkbox']");
for (let box of boxes) {
  box.addEventListener("change", function () {
    localStorage.setItem(box.id, box.checked);
    console.log("Zapisano stan checkboxa: " + box.id + " = " + box.checked);
  });

  console.log(box.id);
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
  console.log(
    "Zapisano stan opcji: " +
      selectedOption.id +
      " = " +
      selectedOption.selected
  );
});

// Pobierz kontener divów .product
let mainContent = document.getElementById("main-content");

// Pobierz wszystkie divy o klasie .product
let products = mainContent.querySelectorAll(".product");

// Przekształć wynik z NodeList do tablicy, aby użyć metody sort
let productsArray = Array.from(products);

// Posortuj tablicę divów .product względem ich dzieci o klasie .price
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

// Wyczyść kontener
mainContent.innerHTML = "";

// Ponownie wstaw posortowane divy .product do kontenera
productsArray.forEach((product) => {
  mainContent.appendChild(product);
});
