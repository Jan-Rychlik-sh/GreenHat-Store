let main = document.getElementById("main-content");
let container = document.getElementById("container");
let nav = document.getElementById("nav");

window.addEventListener("resize", function () {
  main.style.width = container.offsetWidth - nav.offsetWidth + "px";
});
window.addEventListener("load", function () {
  main.style.width = container.offsetWidth - nav.offsetWidth + "px";
});
