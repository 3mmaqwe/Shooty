class Entity{
  PImage txtr;
  float x, y, speed;
  int pSpeed;
  Entity(String Type,float gx,float gy, float Speed){
    txtr = loadImage(Type);
    x = gx;
    y = gy;
    speed = Speed;
    
  }
  float draw(){
  image(txtr,x,y);
  if (keyPressed) {
    if (key == leftKey&&x>0) {
      x -= speed;
    }
    if (key == rightKey&&x<600) {
      x += speed;
    }
    if(key==CODED){
      if(keyCode==LEFT&&x>0){
        x -= speed;
      }
      if(keyCode==RIGHT&&x<600){
        x += speed;
        }
      }
    }
    return x;
  }
  void update(int remaining, boolean dead){
    if(!dead){
    image(txtr,x,y);
    if (x == width || x == 0){
      y+= 50;
      speed = speed*-1;
    }
    x += speed;
  }
}
 boolean check(PVector Lxy, boolean dead){
    if (!dead){
    PVector xy = new PVector(x,y);
    if (xy.dist(Lxy) <= 20){
     return true; 
    } else {
    return false;
 }}else {return true;
}}}