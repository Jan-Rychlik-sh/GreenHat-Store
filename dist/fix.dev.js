"use strict";

var main = document.getElementById("main-content");
var container = document.getElementById("container");
var nav = document.getElementById("nav");
window.addEventListener("resize", function () {
  main.style.width = container.offsetWidth - nav.offsetWidth + "px";
});
window.addEventListener("load", function () {
  main.style.width = container.offsetWidth - nav.offsetWidth + "px";
});
var inputs = document.querySelectorAll("input[type='number']");
inputs.forEach(function (input) {
  input.value = 0;
});
document.getElementById("brightness").value = 100;