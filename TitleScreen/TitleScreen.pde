PImage madBoi,
illuminerter,
playerZ;

boolean title = true;
boolean red;  // for color and of off for "save the planet"

PFont ORCAExtended, Vivaldii, Dialog;
float xz,yz, wz,zz;
void setup(){
  size(600, 800);
  
  playerZ = loadImage("player.png");
  madBoi = loadImage("madBoi.png");
  illuminerter = loadImage("illuminerter.png");
  xz = 0.0;
  yz = width/2.0;
  wz = -200;
  zz = -400;
  
  ORCAExtended = loadFont("OCRAExtended-48.vlw");
  Vivaldii = loadFont("Vivaldii-48.vlw");
  Dialog = loadFont("Dialog.plain-48.vlw");
}

void draw(){
if(keyPressed){
  title = false;
}
  
if (title){  
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

translate(xz,yz);
imageMode(CENTER);
image(playerZ,0,0);
text("You", -30,62);
translate(-xz,0);

translate(wz,0);
image(madBoi, 0, 0);
text("MadBoi", -60, 62);
translate(-wz,0);

translate(zz,0);
image(illuminerter, 0,0);
text("Illuminerter", -90,62);
translate(-zz,0);

xz += 1.0;
wz += 1.0;
zz += 1.0;



if (xz > width+playerZ.width){
  xz = -100;
}
if (wz > width+madBoi.width){
  wz = -100;
}
if (zz > width+illuminerter.width){
  zz = -100;
    }
  }

if(!title){  
  //all the draw stuff in here
  background(255);
  }   
  
}
