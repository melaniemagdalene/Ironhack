var Viking = function(name, health, attack){
	this.name = name;
	this.health = health;
	this.attack = attack;

	this.attack = function(){
		console.log(this.attack + "!!!");
	}
};

var viking1 = new Viking("Josh", 100, 8);
var viking2 = new Viking("Faraz", 100, 5);

viking1.attack(viking2);

console.log(viking2.health);

