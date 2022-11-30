document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
//want to make it so that users can input a place, click the submit button,
// and have the input box clear out & the new item appended to the list.
  // --- your code here!
  const addPlace = (e)=> {
    e.preventDefault()
    const newItem = document.querySelector(".favorite-input")
    const newFav = newItem.value;
    newItem.value = ""
    const newLi = document.createElement("li");
    newLi.textContent = newFav;
    const favList = document.getElementById("sf-places")
    favList.appendChild(newLi)
  }
  const listSubmitButton = document.querySelector(".favorite-submit");
   listSubmitButton.addEventListener("click", addPlace)
  // adding new photos

  // --- your code here!



});
