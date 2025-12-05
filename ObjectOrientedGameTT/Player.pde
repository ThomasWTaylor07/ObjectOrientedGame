class Player { 
//Initializes the Y and X varaibles to be used in and outside of this class
  float y;
  float x;
//Initializes the player PImage so that it can be displayed on the screen
  PImage player;
  
  Player() {
  //Sets the player's position to a Y value of 20 so that the player is at the top of the screen
    y=20;
   //Loads the image of the player stored in the data folder to be displayed on the screen
    player = loadImage("player1.png");
  }
  void display() {
    //Sets the X value to the mouse's X value minus 25 so that the player looks to be in the middle of the mouse and at the same X position
     x=mouseX-25;
   //Makes a PImage of the player using the x variable to allow the player to move and the y variable to set them at the top of the screen
   image(player,x, y,50,70);  
  }

}
