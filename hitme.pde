//credit to http://jeffreythompson.org/collision-detection/rect-rect.php
// the laser
float s1x = 0;      // laser (move with player movement)
float s1y = 0;
float s1w = 30;     // and dimensions
float s1h = 30;
float speed = 10;

// the enemies 
float s2x = 200;    // same for second square
float s2y = 100;
float s2w = 200;
float s2h = 200;
// the the enemy go by by
boolean ow = false;
boolean iPressShoot = false;

void setup() {
  size(600,400);
  noStroke();
}


void draw() {
  background(255);

  // update square to mouse coordinates
  
  if(iPressShoot){  
  s1x = s1x + speed;
  s1y = s1y + speed;
  }
  if (s1x > width || s1y > height){
    ow = false;
    s1x = 0;
    s1y = 0;
    iPressShoot = false;
  }
    
  // check for collision
  // if hit, change rectangle color
  boolean hit = rectRect(s1x,s1y,s1w,s1h, s2x,s2y,s2w,s2h);
  if (hit) {
    ow = true;
  }
  else {
    
  }
  if ( ow == false){
  rect(s2x,s2y, s2w,s2h);
  }

  // the "laser" 
  fill(0, 150);
  rect(s1x,s1y, s1w,s1h);
   
}

void keyPressed(){
  iPressShoot = true;
}
// RECTANGLE/RECTANGLE
boolean rectRect(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) {

  // are the sides of one rectangle touching the other?

  if (r1x + r1w >= r2x &&    // r1 right edge past r2 left
      r1x <= r2x + r2w &&    // r1 left edge past r2 right
      r1y + r1h >= r2y &&    // r1 top edge past r2 bottom
      r1y <= r2y + r2h) {    // r1 bottom edge past r2 top
        return true;
  }
  return false;
}
