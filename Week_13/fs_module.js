// fs refers to file system

// In javaScript, tasks should normally be asynchronous

// To interact with files, require the fs module
var fs = require('fs');

// Callback
function print (error, content){
	console.log(content);
}

// 1. readFile needs three arguements, starting with the path of the file
// 2. Need the file's encoding
// 3. Callback
fs.readFile('file.txt', 'utf8', print);
