"use strict";

document.querySelector("#store_basket").addEventListener("click", function () {
  document.querySelector("#store_basket_content").style.display = "flex";
});
document.querySelector("#close-basket").addEventListener("click", function () {
  document.querySelector("#store_basket_content").style.display = "none";
});
localStorage.setItem("basket", {});
document.querySelectorAll(".buy_button").forEach(function (el) {
  el.addEventListener("click", function () {
    console.log(localStorage["Od 6 cal do 6.4 cal-Przekątna ekranu"]);
  });
});