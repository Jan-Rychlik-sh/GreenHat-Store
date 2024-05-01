// const details = document.querySelectorAll("details");
// let filters = [];

// details.forEach((detail) => {
//   detail.addEventListener("change", function checkOptions() {
//     let obj = {
//       filterName: FixTextToDatabaseFormat(
//         detail.querySelector("summary").innerText
//       ),
//       options: Array.from(detail.querySelectorAll("label input"))
//         .filter((input) => input.checked)
//         .map((input) => input.name),
//     };
//     PushToFilters(obj);
//     console.table(filters);
//     console.log(filters);
//   });
// });

// function PushToFilters(obj) {
//   // Usuń istniejący filtr o tej samej nazwie z filters
//   filters = filters.filter((filter) => filter.filterName !== obj.filterName);

//   // Jeśli nowy filtr ma niepustą tablicę opcji, dodaj go do filters
//   if (obj.options.length > 0) {
//     filters.push(obj);
//   }
// }

// //zmienienie nazwy filtra na taką jak w BD
// function FixTextToDatabaseFormat(text) {
//   const polishToEnglish = {
//     ą: "a",
//     ć: "c",
//     ę: "e",
//     ł: "l",
//     ń: "n",
//     ó: "o",
//     ś: "s",
//     ź: "z",
//     ż: "z",
//     Ą: "A",
//     Ć: "C",
//     Ę: "E",
//     Ł: "L",
//     Ń: "N",
//     Ó: "O",
//     Ś: "S",
//     Ź: "Z",
//     Ż: "Z",
//   };

//   return text
//     .split("")
//     .map((char) => {
//       if ([" ", "[", "]"].includes(char)) {
//         return "_";
//       } else if (char in polishToEnglish) {
//         return polishToEnglish[char];
//       } else {
//         return char;
//       }
//     })
//     .join("")
//     .toLowerCase();
// }

// function sendFiltersToPHP() {
//   // Konwersja tablicy filters na JSON
//   let jsonData = JSON.stringify(filters);

//   // Utworzenie obiektu FormData
//   let formData = new FormData();
//   formData.append("filters", jsonData);

//   // Utworzenie obiektu XMLHttpRequest
//   let xhr = new XMLHttpRequest();

//   // Ustawienie metody i adresu URL dla żądania POST
//   xhr.open("POST", "storeProducts.php", true);

//   // Obsługa zdarzenia onreadystatechange
//   xhr.onreadystatechange = function () {
//     if (xhr.readyState === 4 && xhr.status === 200) {
//       console.log(xhr.responseText);
//       // Tutaj możesz obsłużyć odpowiedź z serwera, jeśli jest taka potrzeba
//     }
//   };

//   // Wysłanie danych
//   xhr.send(formData);
// }

// // Pobranie przycisku "POKAŻ"
// let showButton = document.querySelector(".filter_button");

// // Dodanie nasłuchiwania na kliknięcie przycisku "POKAŻ"
// showButton.addEventListener("click", function () {
//   // Wywołanie funkcji do wysyłania danych do PHP
//   sendFiltersToPHP();
// });

// Usuń zaznaczenie checkboxów i wyczyść localStorage po kliknięciu przycisku
document
  .querySelector(".remove_filters")
  .addEventListener("click", function () {
    let checkboxes = document.querySelectorAll("form input[type='checkbox']");
    for (let chbx of checkboxes) {
      chbx.checked = false; // Odznacz checkbox
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
