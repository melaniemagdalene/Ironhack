$(document).on("ready", function() {
	$(".form-control").on("click", function () {
		$.ajax({
			type: "GET",
			url: "https://api.spotify.com/v1/search?type=artist&query=SEARCHTERM",
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
