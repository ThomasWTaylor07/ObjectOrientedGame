
Clouds[] c = new Clouds[2];
Player p1;
void setup() {
  size(400,400);
  for(int i = 0; i < c.length; i++)
  c[i] = new Clouds(random(1,400)+random(1,100), random(350,450));
  p1 = new Player();
 

}
  void draw() {
    background(49,169,255);
    for(int i = 0; i < c.length; i++)
  c[i].display();
  p1.display();

  }
