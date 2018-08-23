function selectCategory() {

  const images = document.querySelectorAll(".button-icons img");
  images.forEach((img) => {
  img.addEventListener("click", (event) => {
    // cat = event.currentTarget.name;
    images.forEach((x) => {
      x.classList.remove("selected");
    });
    const category = event.target.dataset.name ;
    event.target.classList.add("selected");
  document.getElementById('instrument_category').value = category;
  });
});

  // select all instrument images
  // for each image, listen for a click
  // get instrument category
  // select category input
  // fill the category input with the category chosen
}








export {selectCategory}
