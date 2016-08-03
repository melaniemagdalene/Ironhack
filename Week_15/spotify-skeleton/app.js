$(document).ready(function() {
    
    $('.js-artist-form').on("submit", function(event){
        event.preventDefault();

        var searchTerm = $(".js-artist-input").val();

		$.ajax({
			type: 'GET',
			url: `https://api.spotify.com/v1/search?type=track&query=${searchTerm}`,
			success: playSong,
			error: songError,
		});
	});	
    $('.js-player').trigger('play');

    $('.btn-play').on('click', function(event){
		$('.btn-play').toggleClass('playing');    
		if ($('.btn-play').hasClass('playing')){
		$('.js-player').trigger('play')
		} else {
		$('.js-player').trigger('pause')
		}
	});
  // $('.js-player').trigger('pause');
  // $('.js-player').prop('currentTime');

})

	function playSong(response) {
		console.log("RESPONSES", response);
		var track = response.tracks.items;
		var artist = response.tracks.items;
		var cover = response.tracks.items;
			// Displays objects
			// console.log(response);
			// console.log(track);
			// console.log(cover);
		printTrack(track);
		printArtist(artist);
		printCover(cover);
	}

	function printTrack(track) {
		var trackName = track[0].name;
		var html = `
			<ul>
			${trackName}
			</ul>
			`
		$('.title').html(html);
	}

	function printArtist(artist) {
		var artistName = artist[0].artists[0].name;
			// console.log(artistName);
		var html = `
			${artistName}
			`
		$('.author').text(html);
	}

	function printCover(cover) {
		var coverName = cover[0].album.images[0];
		console.log(coverName);

		$('.the-image').prop('src', coverName.url);
	}

	function songError(err) {
		console.log("Error!");
	}
