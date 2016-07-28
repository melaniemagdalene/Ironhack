$(document).ready(function() {
	if ("geolocation" in navigator){
		console.log("We have geolocation");

		var options = {
			timeout: 3000,
			enableHighAccuracy: true
		};

		navigator.geolocation.getCurrentPosition(onLocation, onError, options);
	} else {
		alert("We do not have geolcation");
	}
})

function onLocation(position) {
	console.log(position);

	var latitude = position.coords.latitude;
	var longitude = position.coords.longitude;

	var url = `https://maps.googleapis.com/maps/api/staticmap?center=${latitude},${longitude}&zoom=17&size=400x300`
	$("#map").prop("src", url);
}

function onError(err) {
	console.log(err);
}
