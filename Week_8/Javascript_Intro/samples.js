// Sample 1

// function eat (food) {
//     console.log('Eating some ' + food);
// 	}

// eat("pizza");

// Sample 2 - For Loop

// for (i = 1; i <= 42; i += 1) {
//     console.log(i);
// 	}

// Sample 3 - While Loop

// var i = 1;

// while (i <= 42){
// 	console.log(i);
// 	i++;
// 	}

// Sample 4 - forEach Loop

// var foods = ["Pizza", "Cookies", "Bread"]

// foods.forEach(function(food){
// 	console.log(food);
// 	})

// or

// var foods = ["Pizza", "Cookies", "Bread"]

// function logFood(food){
// 	console.log(food)
// 	}

// foods.forEach(logFood);

// Sample 5 - Map Loop

// var foods = ["Pizza", "Cookies", "Bread"]

// var capsFoods = foods.map(function(food){
// 	return food.toUpperCase();
// 	})

// console.log(capsFoods);

// Sample 6 - Reduce Loop

// var foods = ["Pizza", "Cookies", "Bread"]

// var foodMsg = foods.reduce(function(pre, food){
// 	return pre + " and " + food;
// 	})

// console.log(foodMsg);

// Sample 7 - Filter Loop

// var foods = ["Pizza", "Cookies", "Bread"]

// var breadless = foods.filter(function(food){
// 	return food !== "Bread";
// 	});

// console.log(breadless);

// Sample 8

// var someVariable = "Hello";

// console.log(7 == "7");
// Returns true, == only compares by value

// console.log(7 === "7");
// Returns false, === compares with value and type

// Sample 9

// var food = "Pizza";
// if (food === "Pizza") {
// 	console.log("Pizza is my favorite food too!");
// } else if (food === "Sushi") {
// 	console.log("Sushi is pretty good..");
// } else {
// 	console.log("That's weird..");
// }

// Sample 10

var numbers = '80:70:90:100';

function averageColon(num){
	var array = num.split(":");
	console.log(array);
	var total = array.reduce(function(number1,number2){
			return parseInt(number1) + parseInt(number2);
		});
	return total / array.length;
}

console.log(averageColon(numbers));
