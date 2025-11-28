class Player { 
  float y;
  PImage player;
  
  Player() {
    y=20;
    player = loadImage("player1.png");
  }
  void display() {
   image(player,mouseX-25, 20,50,70);  
  }
}
