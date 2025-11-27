class Clouds {
  float x;
  float y;
  float newy;

Clouds(float testX, float testY) {
x=testX;
newy=testY;
}
  
  void display() {

  ellipse(x,newy+y,100,50);
    y+=-1;
 println(y);
 if(y==-500) {
   y=0;
  }  
}
}
