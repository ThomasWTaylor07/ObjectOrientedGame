class Clouds {
 //Initializes the location, acceleration and velocity PVectors so that they can be used within the cloud class
  PVector location;
  PVector acceleration;
  PVector velocity;


Clouds() {
//Gives the PVectors their values that will be used throughout the code
//The random function is used to put the clouds in a random x position on the screen
location = new PVector(random(1,400),400);
velocity = new PVector(0,1);
acceleration = new PVector(0,-0.005);

}
  //Sets up the function that is used to show and move the clouds on the screen
  void display() {
//The velocity is subtracted and not added to the location so that it moves up on the screen one pixel every second instead of downwards so that it appeears as if the player is falling
location.sub(velocity);
//Acceleration is subtracted from the velocity so that the clouds continue to move up on the screen and slowly speed the clouds up as the game continues
velocity.sub(acceleration);
//Creates a ellipse that starts at a random Y location at the bottom of the screen using PVectors to help it move from the bottom of the screen to the top
  ellipse(location.x,location.y,100,50);
 }
 void update() {
 //If the location is found to be above the top border of the screen, this code moves the cloud back down to the bottom of the screen and gives it a new random X position 
 // This is so it appears as if there are many clouds in the sky as the player is falling
 if(location.y<-100){
 location.y=500;
 location.x=random(1,399);
 }
  }  
  void gameover() {
 //If game over is set to true, the cloud's Y location and velocity are reset so when the game begins, they are back at the bottom of the screen at their original speed like when the game began
    if(gameover==true){
    location.y=500;
    velocity.y=1;
    }
}
}
  
  
