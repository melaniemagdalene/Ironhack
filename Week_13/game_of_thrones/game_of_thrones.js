var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    console.log("Title: " + episodes[1].title + " Episode: " + episodes[1].episode_number);
    console.log(episodes[0].description);
    console.log("Rating: " + episodes[0].rating);
}
fs.readFile("./episodes.json", 'utf8', fileActions);
