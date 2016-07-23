$(document).on("ready", function() {
	$(".hello-button").on("click", function () {
		$.ajax({
			type: "GET",
			url: "https://ironhack-characters.herokuapp.com/characters",
			success: function (response) {
				console.log("Success!");
				console.log(response);	
			},

			error: function (error) {
				console.log("Error!");
				console.log(error.responseText);
			}
		});
	});
});
