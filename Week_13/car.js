var Car = function(model, noise){
	this.model = model;
	this.noise = noise;
	this.wheel = 4;

	this.makeNoise = function(){
		console.log(this.noise + "!!!");
	}
};

var bmw = new Car("i8", "Brrrr")
bmw.makeNoise()
bmw.model;
console.log(bmw.model);

bmw.color = "blue";
console.log(bmw.color);
