"use strict";

// Usuń zaznaczenie checkboxów i wyczyść localStorage po kliknięciu przycisku
document.querySelector(".remove_filters").addEventListener("click", function () {
  var checkboxes = document.querySelectorAll("form input[type='checkbox']");
  var _iteratorNormalCompletion = true;
  var _didIteratorError = false;
  var _iteratorError = undefined;

  try {
    for (var _iterator = checkboxes[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
      var chbx = _step.value;
      chbx.removeAttribute("checked");
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
  var _loop2 = function _loop2() {
    var box = _step3.value;
    box.addEventListener("change", function () {
      localStorage.setItem(box.id, box.checked);
      console.log("Zapisano stan checkboxa: " + box.id + " = " + box.checked);
    });
    console.log(box.id); // Sprawdź, czy istnieje zapis w localStorage i ustaw stan checkboxa zgodnie z nim

    if (localStorage.getItem(box.id) === "true") {
      box.checked = true; // Zaznacz checkbox
    }
  };

  for (var _iterator3 = boxes[Symbol.iterator](), _step3; !(_iteratorNormalCompletion3 = (_step3 = _iterator3.next()).done); _iteratorNormalCompletion3 = true) {
    _loop2();
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
}); //Sortowanie elementów strony

if (document.querySelector("select").value != "Najlepiej oceniane") {
  var mainContent = document.getElementById("main-content");
  var products = mainContent.querySelectorAll(".product");
  console.log(products = mainContent.querySelectorAll(".product"));

  if (products.length > 0) {
    var productsArray = Array.from(products);
    productsArray.sort(function (a, b) {
      var priceA = parseFloat(a.querySelector(".price").innerText.replace("zł", ""));
      var priceB = parseFloat(b.querySelector(".price").innerText.replace("zł", ""));
      if (document.querySelector("select").value == "Od najtańszego") return priceA - priceB; // Sortowanie rosnąco
      else if (document.querySelector("select").value == "Od najdroższego") return priceB - priceA; // Sortowanie malejąco
    });
    mainContent.innerHTML = "";
    productsArray.forEach(function (product) {
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
    Ż: "Z"
  }; // Zamień polskie znaki na ich angielskie odpowiedniki

  text = text.replace(/[ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]/g, function (match) {
    return polishToEnglish[match];
  }); // Zamień spacje, nawiasy kwadratowe i nawiasy okrągłe na podkreślenia

  text = text.replace(/[\s\[\]()-]/g, "_"); // Zamień wszystkie litery na małe

  text = text.toLowerCase();
  return text;
} //Ta funkcja Wyświtli aktywne filtry wraz z aktywnymi opcjami


function printActiveFilters() {
  var article = document.getElementById("active_filters_description");
  var detailsWithCheckbox = document.querySelectorAll('details input[type="checkbox"]:checked');
  var titleOfLabelWithCheckedBoxes = Array.from(detailsWithCheckbox).map(function (box) {
    box.closest("details").setAttribute("open", "");
    return box.closest("label").title;
  }); //Usunięcie powtarzających się elementów

  titleOfLabelWithCheckedBoxes = new Set(titleOfLabelWithCheckedBoxes);
  titleOfLabelWithCheckedBoxes = Array.from(titleOfLabelWithCheckedBoxes);
  var _iteratorNormalCompletion6 = true;
  var _didIteratorError6 = false;
  var _iteratorError6 = undefined;

  try {
    var _loop = function _loop() {
      var tl = _step6.value;
      var section = document.createElement("section");
      section.classList.add("checkedFilterInfo");
      var checkedFiltersTitle = document.createElement("h4");
      checkedFiltersTitle.innerHTML = tl;
      var ul = document.createElement("ul");
      detailsWithCheckbox.forEach(function (checkbox) {
        var li = document.createElement("li");
        li.innerHTML = checkbox.id.substring(0, checkbox.id.indexOf("-"));
        console.log(checkbox.id.substring(checkbox.id.indexOf("-") + 1));
        console.log(fixTextToDatabaseFormat(checkedFiltersTitle.innerText));

        if (fixTextToDatabaseFormat(checkedFiltersTitle.innerText) == checkbox.id.substring(checkbox.id.indexOf("-") + 1)) {
          ul.appendChild(li);
        }

        section.appendChild(checkedFiltersTitle);
        section.appendChild(ul);
      });
      article.appendChild(section);
    };

    for (var _iterator6 = titleOfLabelWithCheckedBoxes[Symbol.iterator](), _step6; !(_iteratorNormalCompletion6 = (_step6 = _iterator6.next()).done); _iteratorNormalCompletion6 = true) {
      _loop();
    }
  } catch (err) {
    _didIteratorError6 = true;
    _iteratorError6 = err;
  } finally {
    try {
      if (!_iteratorNormalCompletion6 && _iterator6["return"] != null) {
        _iterator6["return"]();
      }
    } finally {
      if (_didIteratorError6) {
        throw _iteratorError6;
      }
    }
  }

  console.log(titleOfLabelWithCheckedBoxes);
}

printActiveFilters();