Hazard[] h = new Hazard[10];
Clouds[] c = new Clouds[5];
Player p1;
boolean gameover;
PImage gameoverscreen;
void setup() {
  size(400,400);
  gameover = false;
  gameoverscreen = loadImage("gameover.png");
  for(int i = 0; i < c.length; i++){
  c[i] = new Clouds();
  }
  p1 = new Player();
    for(int i = 0; i < h.length; i++){
  h[i] = new Hazard();
    }
}
  void draw() {
    if(gameover==true) {
    displayscreen();
      for(int i = 0; i < h.length; i++){
    h[i].score=0;
      }
    }
      else { 
  
  background(49,169,255);
    for(int i = 0; i < c.length; i++){
  c[i].display();
    }
  p1.display();
  for(int i = 0; i < h.length; i++){
  h[i].display();
 
 text("Score:" + h[i].score, 290,20);
    if (mouseX - 25 >= h[i].Hx - 20 || mouseX - 25 >= h[i].Hx - 20 && h[i].y <= 40) {
     gameover=true;   
  } else {
   gameover=false;
  }
  }
      }
  }

  void mousePressed() {
    if (gameover==true)
    gameover=false;
  }
 
  void displayscreen() {
    println("Hit");
     image(gameoverscreen,0,0,400,400);  
  }
