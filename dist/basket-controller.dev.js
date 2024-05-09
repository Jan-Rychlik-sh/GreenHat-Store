"use strict";

document.addEventListener("DOMContentLoaded", function () {
  // Tutaj umieść kod, który ma zostać wykonany po załadowaniu całej zawartości strony
  var sum = 0;
  document.querySelector("#store_basket").addEventListener("click", function () {
    document.querySelector("#store_basket_content").style.display = "flex";
  });
  document.querySelector("#close-basket").addEventListener("click", function () {
    document.querySelector("#store_basket_content").style.display = "none";
  });
  localStorage.setItem("basket", {});
  document.querySelectorAll(".buy_button").forEach(function (el) {
    el.addEventListener("click", function () {
      var number = parseInt(this.id);
      var product = document.getElementById(number + "product").textContent;
      var img_product_image = document.getElementById(number + "img_product_image").cloneNode(true);
      var price = document.getElementById(number + "price").textContent;
      sum += parseInt(price); //Element usuwający z koszyka produkt

      var remove_product = document.createElement("div");
      remove_product.innerHTML = "X";
      remove_product.classList.add("remove_product");
      remove_product.id = number + "remove_product";
      remove_product.style.cursor = "pointer"; // Tworzymy kontener dla pojedynczego produktu

      var OneProductContainer = document.createElement("div");
      OneProductContainer.classList.add("OneProductContainer");
      OneProductContainer.id = number + "OneProductContainer"; // Tworzymy elementy dla nazwy, obrazka i ceny produktu

      var productName = document.createElement("div");
      productName.textContent = product;
      var productPrice = document.createElement("div");
      productPrice.textContent = "Cena: " + price; //Kontener dla prawej zawartości produktu

      var AddedProductDescription = document.createElement("div");
      AddedProductDescription.classList.add("AddedProductDescription");
      AddedProductDescription.appendChild(productName);
      AddedProductDescription.appendChild(productPrice); // Dodajemy elementy do kontenera

      OneProductContainer.appendChild(img_product_image);
      OneProductContainer.appendChild(AddedProductDescription);
      OneProductContainer.appendChild(remove_product);
      remove_product.addEventListener("click", function () {
        document.querySelector("#product_to_buy").removeChild(document.getElementById(number + "OneProductContainer"));
        sum = parseInt(sum) - parseInt(price);
        document.querySelector("#sum").innerHTML = sum + "zł";
      }); // Dodajemy kontener z pojedynczym produktem do listy produktów do kupienia

      document.querySelector("#product_to_buy").appendChild(OneProductContainer);
      document.querySelector("#sum").innerHTML = sum + "zł";
    });
  });
});