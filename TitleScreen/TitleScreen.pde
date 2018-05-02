PImage madBoi,
illuminerter,
player;


boolean red;  // for color and of off for "save the planet"

PFont ORCAExtended, Vivaldii, Dialog;
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
  
  ORCAExtended = loadFont("OCRAExtended-48.vlw");
  Vivaldii = loadFont("Vivaldii-48.vlw");
  Dialog = loadFont("Dialog.plain-48.vlw");
}

void draw(){
background(0);

textMode(CENTER);
textSize(60);
fill(0,236,7);
textFont(ORCAExtended);
text("LAZER", 210, 100);
text("SHOOTY SHOOT", 100, 150);

textSize(20);
textFont(Vivaldii);
// switching fills for save the planet


if (frameCount % 25 == 0){ 
  red = true;
}
if (frameCount % 50 == 0){
  red = false;
}
if(red){
  fill(255,172,178);
} 
if(red == false){
  fill(0,236,7);;}

text("Save planet please", 200, 185);


textFont(Dialog);
textSize(32);
fill(random(255), random(255), random(255));
text("Press any key to start!", 155, 750);

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
