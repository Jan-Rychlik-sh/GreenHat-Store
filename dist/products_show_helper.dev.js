"use strict";

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
document.querySelector(".remove_filters").addEventListener("click", function () {
  var checkboxes = document.querySelector("form").querySelectorAll("input[type='checkbox']");
  var _iteratorNormalCompletion = true;
  var _didIteratorError = false;
  var _iteratorError = undefined;

  try {
    for (var _iterator = checkboxes[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
      var chbx = _step.value;
      chbx.removeAttribute("checked");
    }
  } catch (err) {
    _didIteratorError = true;
    _iteratorError = err;
  } finally {
    try {
      if (!_iteratorNormalCompletion && _iterator["return"] != null) {
        _iterator["return"]();
      }
    } finally {
      if (_didIteratorError) {
        throw _iteratorError;
      }
    }
  }
});