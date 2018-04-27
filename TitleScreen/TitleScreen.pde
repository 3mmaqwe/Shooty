PImage madBoi,
illuminerter,
player;

float x,y, w,z;
void setup(){
  size(600, 800);
  
  player = loadImage("player.png");
  madBoi = loadImage("madBoi.png");
  illuminerter = loadImage("illuminerter.png");
  x = 0.0;
  y = width/2.0;
  w = -200;
  z = -400;
  
  
}

void draw(){
background(0);

textMode(CENTER);
textSize(60);
fill(0,236,7);
text("LAZER", 200, 100);
text("SHOOTY SHOOT", 50, 150);

textSize(20);
text("Save planet please", 200, 175);

textSize(32);
fill(random(255), random(255), random(255));
text("Press any key to start!", 125, 750);

fill(0,255,0);
textSize(32);

translate(x,y);
imageMode(CENTER);
image(player,0,0);
text("You", -30,62);
translate(-x,0);

translate(w,0);
image(madBoi, 0, 0);
text("MadBoi", -60, 62);
translate(-w,0);

translate(z,0);
image(illuminerter, 0,0);
text("Illuminerter", -90,62);
translate(-z,0);

x += 1.0;
w += 1.0;
z += 1.0;



if (x > width+player.width){
  x = -100;
}
if (w > width+madBoi.width){
  w = -100;
}
if (z > width+illuminerter.width){
  z = -100;
}
}