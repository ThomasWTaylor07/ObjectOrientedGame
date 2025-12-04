class Clouds {
 
  PVector location;
  PVector acceleration;
  PVector velocity;


Clouds() {
location = new PVector(random(1,400),frameCount%width);
velocity = new PVector(0,-1);
acceleration = new PVector(0,-0.005);

}
  
  void display() {
location.add(velocity);
velocity.add(acceleration);
  ellipse(location.x,location.y,100,50);
 println(location.y);
 }
  }  
