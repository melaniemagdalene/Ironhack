'use strict'

var nets = require('nets');
var l = (data) => console.log(date)

nets("werther.txt", function(error, response, content){
	if(error) {
	l("Hey something went wrong! See:" + error);
	} else {
	l(content.toString());
	}
});
