class Laser{
 float x; 
 float y;
 int speed;
 int laser = 0;
 PVector xy = new PVector(0,0);
  Laser(int Speed){
   speed = -Speed;
 }
  void draw(float px, float py){
   x = px;
   y = py;
   fill(random(255),random(255),random(255));
   rectMode(CENTER);
   rect(x,y,7,20);
   y += speed;
  }
  PVector update(){
   fill(random(255),random(255),random(255));
   rectMode(CENTER);
   rect(x,y,7,20);
   y += speed;
   xy.set(int(x),int(y));
   return xy;
  }
  PVector initialize(){
   return xy; 
  }
}
