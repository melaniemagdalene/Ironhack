var planet =[
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
            ];

var myRover = {
  position: [10, 5], 
  direction: 'f'
};

var obstacle1 = {
  position: [1][5],
  name: "X"
};

var obstacle2 = {
  position: [5][8],
  name: "O"
};

function goForward(rover, command){
  var move = command.split('');

  for (i = 0; i < move.length; i++){
    var letter = move[i];

      // Switch Statement

      switch(letter){
      case 'f':
        if (rover.position[0] > 0){
            rover.position[0] --
        }
      break;
      case 'b':
        if (rover.position[0] < 10){
            rover.position[0] ++
        }
      break;
      case 'r':
        if (rover.position[1] < 10){
            rover.position[1] ++
        }
      break;
      case 'l':
        if (rover.position[1] > 0){
            rover.position[1] --
        }
      break;
    }
  }
} 

planet [1][5] = obstacle1.name
planet [5][8] = obstacle2.name
console.log(planet)

goForward(myRover, "fffrfflfffbb");
console.log(myRover.position);
