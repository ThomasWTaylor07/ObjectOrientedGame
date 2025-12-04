Hazard[] h = new Hazard[6];
Clouds[] c = new Clouds[2];
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
    h[i].update();
      }
    }
      else { 
  
  background(49,169,255);
    for(int i = 0; i < c.length; i++){
  c[i].display();
  c[i].update();
    }
  p1.display();
  for(int i = 0; i < h.length; i++){
  h[i].display();
 
 
 text("Score:" + h[i].score, 350,390);
    if (p1.x <= h[0].Hx + h[0].wh && p1.x >= h[0].Hx - h[0].wh && h[0].y <= -310 && h[0].y>= -320
    || p1.x <= h[1].Hx + h[1].wh && p1.x >= h[1].Hx - h[1].wh && h[1].y <= -310 && h[1].y>=-320
    || p1.x <= h[2].Hx + h[2].wh && p1.x >= h[2].Hx - h[2].wh && h[2].y <= -310 && h[2].y>= -320
    || p1.x <= h[3].Hx + h[3].wh && p1.x >= h[3].Hx - h[3].wh && h[3].y <= -310 && h[3].y>= -320
    || p1.x <= h[4].Hx + h[4].wh && p1.x >= h[4].Hx - h[4].wh && h[4].y <= -310 && h[4].y>= -320
    || p1.x <= h[5].Hx + h[5].wh && p1.x >= h[5].Hx - h[5].wh && h[5].y <= -310 && h[5].y>= -320) {

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
