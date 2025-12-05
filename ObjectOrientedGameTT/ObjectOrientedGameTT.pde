//Initializes 8 instanses of the hazard object and 2 instances of the cloud object to use in the main code
Hazard[] h = new Hazard[8];
Clouds[] c = new Clouds[2];
//Initalizes a player object to use in the code
Player p1;
//Initalizes a variable that is used to determine how far the players x positon can be from the hazards x position
float t;
//Initalizes a boolean to determine whether or not the game over screen should appear
boolean gameover;
//Initialize a PImage so it can be used as the game over screen
PImage gameoverscreen;
void setup() {
//Sets the screen size
  size(400,400);
//Declares the distance that the player's X position can be from the hazard's X position before they collide
  t=38;
//Sets the boolean to false so that the game can begin normally and can be turned to true when the player and hazards collide
  gameover = false;
  //Loads the image from the data folder into the code so it can be used as the game over screen 
  gameoverscreen = loadImage("gameover.png");
  //Creates the two clouds in the array so that they can appear on screen
  for(int i = 0; i < c.length; i++){
  c[i] = new Clouds();
  }
 //Declares that p1 is an object in the player class so it can use the classes functions and variables
  p1 = new Player();
 //Creates a new hazard object for each object in the array so that they can be used in the code
    for(int i = 0; i < h.length; i++){
  h[i] = new Hazard();
    }
}
  void draw() {
//If the game over boolean is set to true, it displays a game over screen and resets certain variables so that it appears as if the game resets when gameover goes back to false
    if(gameover==true) {
    displayscreen();
      for(int i = 0; i < h.length; i++){
    h[i].score=0;
  //Calls a function from the hazard class that resets the Y position and changes the X position, width and height
    h[i].update();
      }
        for(int i = 0; i < c.length; i++){
         //Calls a function to reset the cloud's velocity and Y location
          c[i].gameover();
    }
    }
    //If there is no game over, the code in the else section runs instead so that we can easily switch between the game over screen and the game itself
      else { 
  
  background(49,169,255);
    for(int i = 0; i < c.length; i++){
  //Calls the function that displays and moves the clouds for each instance of the cloud in the array to allow them to appear on screen
  c[i].display();
 //Calls the function that loops each cloud across the screen vertically at a new x position so it looks like there are a lot of clouds in the sky as the player is falling
  c[i].update();

    }
 //Displays the player character on the screen so the player can see him and move him using the mouse
  p1.display();
  for(int i = 0; i < h.length; i++){
 //Calls the function that displays and moves the hazards for each instance of a hazard in the array to allow it to appear and interact with the rest of the code
  h[i].display();
 
//Displays the amount of times the player has avoided the hazards using the text function
 text("Score:" + h[i].score, 350,390);
 
 //Checks if the player's X value is the same as the hazards center X as well as if it's a certain distance to the righ or left from the center x while the hazards are in the same area as the player
 //Done to check whether or not the player has collided with a hazard to see whether or not a game over should occur
    if (p1.x <= h[0].Hx + t && p1.x >= h[0].Hx - t && h[0].y <= -310 && h[0].y>= -360
    || p1.x <= h[1].Hx + t && p1.x >= h[1].Hx - t && h[1].y <= -310 && h[1].y>=-360
    || p1.x <= h[2].Hx + t && p1.x >= h[2].Hx - t && h[2].y <= -310 && h[2].y>= -360
    || p1.x <= h[3].Hx + t && p1.x >= h[3].Hx - t && h[3].y <= -310 && h[3].y>= -360
    || p1.x <= h[4].Hx + t && p1.x >= h[4].Hx - t && h[4].y <= -310 && h[4].y>= -360
    || p1.x <= h[5].Hx + t && p1.x >= h[5].Hx - t && h[5].y <= -310 && h[5].y>= -360
    || p1.x <= h[6].Hx + t && p1.x >= h[6].Hx - t && h[6].y <= -310 && h[6].y>= -360
    || p1.x <= h[7].Hx + t && p1.x >= h[7].Hx - t && h[7].y <= -310 && h[7].y>= -360) {
//Sets the game over variable to true if the player and hazard did collide and keeps it false if they didn't, done to ensure that the playe only gets a game over when they have actually collided with a hazard
     gameover=true;   
  } else {
   gameover=false;
  }
  }
      }
  }

  void mousePressed() {
  //This code checks if the game over boolean is true and makes it so that if the game over screen appears, the player can click their mouse to make the screen go away and begin the game again
    if (gameover==true)
    gameover=false;
  }
 
  void displayscreen() {
    //Displays the game over screen to the player in the middle of the screen so the player knows they can click to return to the game and also to create a new game state
     image(gameoverscreen,0,0,400,400);  
  }
