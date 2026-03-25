var starXPos = [];
var starYPos = [];
var star = "🐟";
var starTotal = 100;

var planetXPos = [];
var planetYPos = [];
var planet = "🐢";
var planetTotal = 3;
var planetFound = 0;

setup = function() {
   size(600, 450); 
   frameRate(5);

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < planetXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, planetXPos[i], planetYPos[i])<15){
      planetXPos.splice(i, 1);
      planetYPos.splice(i, 1);
      planetFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + planet + "s   |   " + planet + " " + planetFound + "/" + planetTotal, 0, 425);

  if(planetFound == planetTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
  textSize(20);

var x = 0;
while (x < 400){
  text("🦈", x, 250);
  x += 100;
} 

x = 0 
while(x < 400){
  text("🐬", x, 100);
  x += 100;
}


//  background(255,255,247);
  stroke(173,222,237);

  //for(start; how long; change)
  for(var x=0; x < 400; x+=20){
    
  }
   for(var i = 55; i < 350 ; i+=20){
    text("• 🌊˖°𓇼⋆🐋🐚 𓈒𓏸", random(400),i);
   }

   //array 
var stuff =["the animals are out of control, find the turtles"]

fill(52, 222, 235);
text (stuff[0], 50 ,380);

downFish ()

};


var move = 1
var xPosition = [20,100,250];
var yPosition = [40,150,300];
var downFish = function(){
  for (var i = 0; i < yPosition.length; i++){
    text("🐠", xPosition[i], yPosition[i]);
    xPosition[i]+= move;

    if(xPosition[i] > 600){
      move =-1
    }
    if(xPosition[i] < -200){
      move =1
    }
  }
}



var reset = function(){
  starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }
}