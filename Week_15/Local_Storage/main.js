$(document).ready(function() {
	var $color_button = $(".color-changer");

	function loadDefaultColor(){
	  if (window.localStorage.getItem("bg-color")){
	    var savedColor = window.localStorage.getItem("bg-color");
	    $("body").css("background-color", savedColor)
	  }
	}

	function changeColor(event){
	  var color = $(event.target).data("color");
	  $("body").css("background-color", color);
	  window.localStorage.setItem("bg-color", color)
	}

	loadDefaultColor();
	$color_button.on("click", changeColor);


	// if (window.localStorage.getItem("images")) {
	// 	// Get the urls
	// 	var savedImage.forEach(function(imageUrl){
	// 		$(."image-container").append(image)
	// 	})
		// Append urls to the page

		window.localStorage.setItem("images", "[]");
	}

	$(".js-image-button").on("click", function() {
		var imageUrl = prompt("Enter a URL to display your favorite image:");
		var myImage = `
			<img src=${imageURL}>
		`;
		$(".image-container").append(myImage);

		// Get the array out of localStorage, and parse it as JSON
		var storedImages = JSON.parse(window.localStorage.getItem("images"))
		
		// Push the new image to that array
		storedImages.push(imageUrl);

		// Put the new array back in localStorage
		localStorage.setItem("images", JSON.stringify(storedImages));
	})
})
