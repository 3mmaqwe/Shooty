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
  float playerMov(){
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

}
