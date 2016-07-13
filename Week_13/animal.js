var Animal = function(name, noise){
	this.makeNoise = function(){ 
		console.log("I'm a method, because I belong to an object");
	}
}

function notAMethod(){
	console.log("I'm not a method, because I don't belong to a particular class/object");
}
