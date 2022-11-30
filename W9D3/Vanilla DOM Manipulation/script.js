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

  const showPhotoForm = (e) => {
    //grab the container that holds the photo form
    const photoFormCont = document.querySelector(".photo-form-container");
    // if the class name does not have keyword hidden, add hidden
    if (photoFormCont.className === "photo-form-container"){
      photoFormCont.className = "photo-form-container hidden"
    // otherwise set the classname to not hidden
    }else{
      photoFormCont.className = "photo-form-container"
    }
  }
  // grab the photoFormShow button
  const photoFormShowButton = document.querySelector(".photo-show-button");
  // when you click that button run the showPhotoForm function
  photoFormShowButton.addEventListener("click", showPhotoForm);

  const submitPhotoForm = (e) => {
    e.preventDefault();
    const newPhotoUrlInput = document.querySelector(".photo-url-input")
    const newPhoto = newPhotoUrlInput.value;
    newPhotoUrlInput.value = ""
    const newImg = document.createElement("img")
    newImg.src = newPhoto;
    const newListItem = document.createElement("li")
    newListItem.appendChild(newImg);
    const dogUrlList = document.querySelector(".dog-photos")
    dogUrlList.appendChild(newListItem)
  }

  const submitImgButton = document.querySelector(".photo-url-submit")
  submitImgButton.addEventListener("click", submitPhotoForm)
});  
  
   
 