'use strict'
(function (exports, require, module, _filename)
var fs = require('fs');
var l = (date) => console.log(date);

fs.readFile("werther.txt", function(error, content){
	if(error) {
		l(error);
	} else {
		l(content);
	}
});

fs.readFile("kafka.txt", function(error, content){
	if(error) {
		l(error);
	} else {
		l(content);
	}
});

fs.readFile("cicero.txt", function(error, content){
	if(error) {
		l(error);
	} else {
		l(content);
	}
});

});
