let main = document.getElementById("main-content");
let container = document.getElementById("container");
let nav = document.getElementById("nav");

window.addEventListener("resize", function () {
  main.style.width = container.offsetWidth - nav.offsetWidth + "px";
});
window.addEventListener("load", function () {
  main.style.width = container.offsetWidth - nav.offsetWidth + "px";
});

let inputs = document.querySelectorAll("input[type='number']");
inputs.forEach((input) => {
  input.value = 0;
});
document.getElementById("brightness").value = 100;
