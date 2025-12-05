class Hazard {
  //Initializes the variables for the hazards X value, Y value, height and width to be used in the code
  float Hx; 
  float y;
  //The newy variable is created to be added onto by the actual Y value to make the hazard move up along the screen 
  float newy;
  float wh;
//Initializes the PImage for the hazard so it can be displayed on screen
  PImage hazard;
//Initializes the variable that will used to keep track of how many sets of hazards the player has avoided
  float score;


Hazard() {
//The hazard's X value is set to random number so that each instance of the hazard object can be at a diffrent position on the screen
 Hx= random(0,400);
 //Declares the value of the Y variable so that it can be added onto to create the hazards movement
 y=0;
 //Sets a random heigh and width for each hazard so each instance of the hazard object can be a diffrent size 
 wh=random(45,60);
//Loads the image for the hazard out of the data folder so it can be seen on screen
 hazard = loadImage("Hazard.png");
//Sets the newy value to 400 so that the hazards all start at the bottom of the screen
 newy=400;
 score=0;
}
//Sets up the function that is used to show and move the hazards on the screen up so that it appeears as if the player is falling
void display() {
//Subtracts negative 1 from the Y value so it can subtract from the newy variable and move the hazards from the bottom of the screen to the top
y+=-1;
//Puts the image in the code using the variables established in the constructor so that the hazards are at a random X position, height and width while still moving up on the screen
image(hazard,Hx,newy+y,wh,wh); 
//Checks if the Y position of the hazards has gone beyond the top border of the screen and places them all back at the bottom of the screen so that the hazards can loop across the screen
//Each hazard is also given a new X value, height and width so that it appears as if there is a new set of hazards
 if(y==-450) {
   y=0;
   Hx=random(0,400);
   wh=random(45,60);
 //Adds one to a score that shows how many sets of hazards the player has avoided by checking each time the player has passed a set of hazards and allowed it to get to the top of the screen by not getting a game over
   score+=1;
  }  
}
void update() {
//If the game over screen is on, each variable will get reset to their default state like when the hazards loop to make it appear as if the game has reset
  if (gameover==true)
  y=0;
   Hx=random(0,400);
   wh=random(45,60);
}
  }
