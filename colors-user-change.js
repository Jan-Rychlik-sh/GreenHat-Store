document.querySelector(
  "head"
).innerHTML += `<style>#container{filter: ${localStorage.getItem(
  "filters_website_color"
)};}</style>`;
document.querySelector("#colors-change").addEventListener("click", function () {
  document.querySelector("#colors-change-options").style.display = "block";
  document
    .querySelector("#close-colors")
    .addEventListener("click", function () {
      document.querySelector("#colors-change-options").style.display = "none";
    });

  let inputs = document.querySelectorAll("input[type='number']");
  let captions = document.querySelectorAll(".captions");
  let filters = [];
  let values = [];

  captions.forEach(function (caption) {
    filters.push(caption.innerHTML);
  });

  // Zdefiniowanie changeFilter przed jej wywołaniem
  let changeFilter = () => {
    // Użyj join(' ') do połączenia wszystkich wartości filtrów w jeden ciąg
    let filterValue = values.join(" ");
    document.getElementById("container").style.filter = filterValue;
    localStorage.removeItem("filters_website_color");
    localStorage.setItem("filters_website_color", filterValue);
    document.querySelector(
      "head"
    ).innerHTML += `<style>#container{filter: ${localStorage.getItem(
      "filters_website_color"
    )};}</style>`;
  };

  inputs.forEach(function (input, index) {
    input.addEventListener("change", function () {
      let existingFilterIndex = values.findIndex((value) =>
        value.includes(filters[index])
      );
      if (existingFilterIndex !== -1) {
        values.splice(existingFilterIndex, 1);
      }
      if (filters[index] == "hue-rotate")
        values.push(`${filters[index]}(${input.value}deg)`);
      else values.push(`${filters[index]}(${input.value}%)`);
      changeFilter();
    });
  });
});
