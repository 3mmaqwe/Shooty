char leftKey,rightKey;
float x,y,speed,radius;

void setup(){
  size(600,800);
  ellipseMode(RADIUS);
  leftKey='a';
  rightKey='d';
  x=width/2;
  y=height/1.125;
  radius=50;
  speed=5;
}

void draw(){
  background(0);
  ellipse(x,y,radius,radius);
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
}
