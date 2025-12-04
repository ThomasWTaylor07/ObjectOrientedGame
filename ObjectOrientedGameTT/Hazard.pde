class Hazard {
  float Hx; 
  float y;
  float newy;
  float wh;
  PImage hazard;
  float score;


Hazard() {
 Hx= random(0,400);
 y=0;
 wh=random(45,60);
 hazard = loadImage("Hazard.png");
 newy=400;
 score=0;
}

void display() {

y+=-1;
image(hazard,Hx,newy+y,wh,wh); 
 if(y==-450) {
   y=0;
   Hx=random(0,400);
   wh=random(45,60);
   score+=1;
  }  
}
void update() {
  if (gameover==true)
  y=0;
}
  }
