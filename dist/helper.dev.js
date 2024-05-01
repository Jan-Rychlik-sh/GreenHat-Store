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
// Usuń zaznaczenie checkboxów i wyczyść localStorage po kliknięciu przycisku
document.querySelector(".remove_filters").addEventListener("click", function () {
  var checkboxes = document.querySelectorAll("form input[type='checkbox']");
  var _iteratorNormalCompletion = true;
  var _didIteratorError = false;
  var _iteratorError = undefined;

  try {
    for (var _iterator = checkboxes[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
      var chbx = _step.value;
      chbx.checked = false; // Odznacz checkbox

      localStorage.removeItem(chbx.id); // Usuń z localStorage
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

  var options = document.querySelectorAll("option.sort_option");
  var _iteratorNormalCompletion2 = true;
  var _didIteratorError2 = false;
  var _iteratorError2 = undefined;

  try {
    for (var _iterator2 = options[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
      var option = _step2.value;
      option.selected = false; //Odznacz opcję

      localStorage.removeItem(option.id); // usuwamy z localStorage
    }
  } catch (err) {
    _didIteratorError2 = true;
    _iteratorError2 = err;
  } finally {
    try {
      if (!_iteratorNormalCompletion2 && _iterator2["return"] != null) {
        _iterator2["return"]();
      }
    } finally {
      if (_didIteratorError2) {
        throw _iteratorError2;
      }
    }
  }
}); // Słuchaj zmiany stanu checkboxów i zapisuj je w localStorage

var boxes = document.querySelectorAll("input[type='checkbox']");
var _iteratorNormalCompletion3 = true;
var _didIteratorError3 = false;
var _iteratorError3 = undefined;

try {
  var _loop = function _loop() {
    var box = _step3.value;
    box.addEventListener("change", function () {
      localStorage.setItem(box.id, box.checked);
      console.log("Zapisano stan checkboxa: " + box.id + " = " + box.checked);
    }); // Sprawdź, czy istnieje zapis w localStorage i ustaw stan checkboxa zgodnie z nim

    if (localStorage.getItem(box.id) === "true") {
      box.checked = true; // Zaznacz checkbox
    }
  };

  for (var _iterator3 = boxes[Symbol.iterator](), _step3; !(_iteratorNormalCompletion3 = (_step3 = _iterator3.next()).done); _iteratorNormalCompletion3 = true) {
    _loop();
  }
} catch (err) {
  _didIteratorError3 = true;
  _iteratorError3 = err;
} finally {
  try {
    if (!_iteratorNormalCompletion3 && _iterator3["return"] != null) {
      _iterator3["return"]();
    }
  } finally {
    if (_didIteratorError3) {
      throw _iteratorError3;
    }
  }
}

var select = document.querySelector("select.sort_select");
var options = select.querySelectorAll("option");
var _iteratorNormalCompletion4 = true;
var _didIteratorError4 = false;
var _iteratorError4 = undefined;

try {
  for (var _iterator4 = options[Symbol.iterator](), _step4; !(_iteratorNormalCompletion4 = (_step4 = _iterator4.next()).done); _iteratorNormalCompletion4 = true) {
    var option = _step4.value;

    if (localStorage.getItem(option.id) === "true") {
      option.selected = true; // Zaznacz optiona
    }
  } // Słuchaj zmiany selecta i zapisuj jego wartość w localStorage

} catch (err) {
  _didIteratorError4 = true;
  _iteratorError4 = err;
} finally {
  try {
    if (!_iteratorNormalCompletion4 && _iterator4["return"] != null) {
      _iterator4["return"]();
    }
  } finally {
    if (_didIteratorError4) {
      throw _iteratorError4;
    }
  }
}

select.addEventListener("change", function () {
  var _iteratorNormalCompletion5 = true;
  var _didIteratorError5 = false;
  var _iteratorError5 = undefined;

  try {
    for (var _iterator5 = options[Symbol.iterator](), _step5; !(_iteratorNormalCompletion5 = (_step5 = _iterator5.next()).done); _iteratorNormalCompletion5 = true) {
      var option = _step5.value;
      option.removeAttribute("selected");
      localStorage.removeItem(option.id);
    }
  } catch (err) {
    _didIteratorError5 = true;
    _iteratorError5 = err;
  } finally {
    try {
      if (!_iteratorNormalCompletion5 && _iterator5["return"] != null) {
        _iterator5["return"]();
      }
    } finally {
      if (_didIteratorError5) {
        throw _iteratorError5;
      }
    }
  }

  var selectedOption = select.options[select.selectedIndex];
  localStorage.setItem(selectedOption.id, selectedOption.selected);
  console.log("Zapisano stan opcji: " + selectedOption.id + " = " + selectedOption.selected);
});