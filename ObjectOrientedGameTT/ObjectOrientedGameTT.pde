Hazard[] h = new Hazard[8];
Clouds[] c = new Clouds[2];
Player p1;
float t;
boolean gameover;
PImage gameoverscreen;
void setup() {
  size(400,400);
  t=38;
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
        for(int i = 0; i < c.length; i++){
          c[i].gameover();
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
    if (p1.x <= h[0].Hx + t && p1.x >= h[0].Hx - t && h[0].y <= -310 && h[0].y>= -360
    || p1.x <= h[1].Hx + t && p1.x >= h[1].Hx - t && h[1].y <= -310 && h[1].y>=-360
    || p1.x <= h[2].Hx + t && p1.x >= h[2].Hx - t && h[2].y <= -310 && h[2].y>= -360
    || p1.x <= h[3].Hx + t && p1.x >= h[3].Hx - t && h[3].y <= -310 && h[3].y>= -360
    || p1.x <= h[4].Hx + t && p1.x >= h[4].Hx - t && h[4].y <= -310 && h[4].y>= -360
    || p1.x <= h[5].Hx + t && p1.x >= h[5].Hx - t && h[5].y <= -310 && h[5].y>= -360
    || p1.x <= h[6].Hx + t && p1.x >= h[6].Hx - t && h[6].y <= -310 && h[6].y>= -360
    || p1.x <= h[7].Hx + t && p1.x >= h[7].Hx - t && h[7].y <= -310 && h[7].y>= -360) {

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
