"use strict";

document.querySelector("head").innerHTML += "<style>#container{filter: ".concat(localStorage.getItem("filters_website_color"), ";}</style>");
document.querySelector("#colors-change").addEventListener("click", function () {
  document.querySelector("#colors-change-options").style.display = "block";
  document.querySelector("#close-colors").addEventListener("click", function () {
    document.querySelector("#colors-change-options").style.display = "none";
  });
  var inputs = document.querySelectorAll("input[type='number']");
  var captions = document.querySelectorAll(".captions");
  var filters = [];
  var values = [];
  captions.forEach(function (caption) {
    filters.push(caption.innerHTML);
  }); // Zdefiniowanie changeFilter przed jej wywołaniem

  var changeFilter = function changeFilter() {
    // Użyj join(' ') do połączenia wszystkich wartości filtrów w jeden ciąg
    var filterValue = values.join(" ");
    document.getElementById("container").style.filter = filterValue;
    localStorage.removeItem("filters_website_color");
    localStorage.setItem("filters_website_color", filterValue);
    document.querySelector("head").innerHTML += "<style>#container{filter: ".concat(localStorage.getItem("filters_website_color"), ";}</style>");
  };

  inputs.forEach(function (input, index) {
    input.addEventListener("change", function () {
      var existingFilterIndex = values.findIndex(function (value) {
        return value.includes(filters[index]);
      });

      if (existingFilterIndex !== -1) {
        values.splice(existingFilterIndex, 1);
      }

      if (filters[index] == "hue-rotate") values.push("".concat(filters[index], "(").concat(input.value, "deg)"));else values.push("".concat(filters[index], "(").concat(input.value, "%)"));
      changeFilter();
    });
  });
});