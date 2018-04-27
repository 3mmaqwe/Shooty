char leftKey,rightKey;
float x,y,speed;
PImage player;

void setup(){
  size(600,800);
  player=loadImage("player.png");
  leftKey='a';
  rightKey='d';
  x=width/2;
  y=height/1.125;
  speed=5;
}

void draw(){
  background(0);
  image(player,x,y);
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