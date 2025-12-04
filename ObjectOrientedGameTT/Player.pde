class Player { 
  float y;
  PImage player;
  boolean hit;
  float x;
  
  Player() {
    y=20;
   
    player = loadImage("player1.png");
  }
  void display() {
     x=mouseX-25;
   image(player,x, 20,50,70);  
  }

}
