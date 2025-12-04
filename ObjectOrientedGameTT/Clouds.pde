class Clouds {
 
  PVector location;
  PVector acceleration;
  PVector velocity;


Clouds() {
location = new PVector(random(1,400),400);
velocity = new PVector(0,1);
acceleration = new PVector(0,-0.005);

}
  
  void display() {
location.sub(velocity);
velocity.sub(acceleration);
  ellipse(location.x,location.y,100,50);
 println(location.y); 
 }
 void update() {
 if(location.y<-100){
 location.y=500;
 location.x=random(1,399);
 }
  }  
}
  
