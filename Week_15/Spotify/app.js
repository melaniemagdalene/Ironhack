$(document).ready(function() {

    $('.js-artist-form').on("submit", function(event) {
        event.preventDefault();

        var searchTerm = $(".js-artist-input").val();

        $.ajax({
            url: `https://api.spotify.com/v1/search?type=artist&query=${searchTerm}`,
            success: showArtists,
            error: artistError,
        })
    })

    $(".js-artist-list").on("click", ".artist-li", function(event) {
        var artistId = $(event.currentTarget).data("artist-id")
        var artistName = $(event.currentTarget).data("artist-name")

        $.ajax({
            url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
            success: function(response){
                showAlbums(response, artistName);
            },
            error: albumError
        })
        // Use data attribute to get artist id out of LI
    })
})

function showAlbums(response, artistName) {
    $(".modal-artist-name").text(artistName);
    var albums = response.items;
    albums.forEach(appendAlbum);
    $(".modal").modal("show");
}


function appendAlbum(album) {
    var html = `
        <li class="album-li">
            ${album.name}
        </li>
    `

    $('.modal-artist-name').append(html);
}

function albumError(err) {
    console.log(err);
}


function showArtists(response) {
    console.log("Response", response);
    var artists = response.artists.items;

    artists.forEach(appendArtist);
}

function appendArtist(artist) {
    var artistImage;

    if (artist.images[0]){
        artistImage = artist.images[0].url
    } else {
        artistImage = "http://placehold.it/200x200"
    }

    var html = `
        <li class="artist-li" data-artist-id=${artist.id} data-artist-name="${artist.name}">
            <h3>${artist.name}</h3>
            <img src=${artistImage}>
        </li>
    `
    $(".js-artist-list").append(html)
}

function artistError(err) {
    console.log("Error!", err.responsetext);
}
