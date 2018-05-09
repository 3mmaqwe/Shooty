class Laser{
 float x; 
 float y;
 int speed;
 int laser = 0;
  Laser(int Speed){
   speed = -Speed;
 }
  void draw(float px, float py){
   x = px;
   y = py;
   fill(random(255),random(255),random(255));
   rectMode(CENTER);
   rect(x,y,5,20);
   y += speed;
  }
  void update(){
   fill(random(255),random(255),random(255));
   rectMode(CENTER);
   rect(x,y,5,20);
   y += speed;
  }
}