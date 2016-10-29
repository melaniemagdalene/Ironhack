var fs = require('fs');

function slideLoader (file) {
	function splitSlides (err) {
		if (err) {
			console.log('Oh, no! Error!', err);
		}
	}
	fs.readFile(file, 'utf8', splitSlides);
}

module.exports = slideLoader;
