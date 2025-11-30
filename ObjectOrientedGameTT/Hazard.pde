class Hazard {
  float x; 
  float y;
  float newy;
  float wh;
  PImage hazard;


Hazard() {
 x= random(0,400);
 y=400;
 wh=20;
 hazard = loadImage("Hazard.png");
 newy=400;
}

void display() {
y+=-1;
image(hazard,x,newy+y,wh,wh); 
 if(y==-450) {
   y=0;
   x=random(0,400) + 5;
   wh=random(30,60);
   println(y);
  }  
}
}
