import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class movement_stuff extends PApplet {



SoundFile shoot, hit;
//title screen stuff
PImage madBoi,
illuminerter,
playerZ;
boolean title = true;
boolean red;  // for color and of off for "save the planet"
PFont ORCAExtended, Vivaldii, Dialog;
float xz,yz, wz,zz;
//
char leftKey,rightKey;
float x,y,speed, enemySpeed;
PImage Bg;
boolean dead[];
Entity player;
Entity Enemy[];
Laser Projectile[];
int projectileMax, pSpeed, enemyMax;
int projectileCount= 0;
PVector coords[];
public void setup(){
  
  
if(title){
  playerZ = loadImage("player.png");
  madBoi = loadImage("enemy1.png");
  illuminerter = loadImage("enemy2.png");
  xz = 0.0f;
  yz = width/2.0f;
  wz = -200;
  zz = -400;
  
  ORCAExtended = loadFont("OCRAExtended-48.vlw");
  Vivaldii = loadFont("Vivaldii-48.vlw");
  Dialog = loadFont("Dialog.plain-48.vlw");
}
  
if (!title){  
  imageMode(CENTER);
}
  shoot = new SoundFile(this,"shoot.wav");
  hit = new SoundFile(this,"hit.wav");
  
  x=width/2;
  y=height/1.125f;
  speed=1;
  
  //projectile stuff
  projectileMax = 1000;
  pSpeed = 2;
  Projectile = new Laser[projectileMax];
  coords = new PVector[projectileMax];
  for(int z =0; z <projectileMax; z++){
    Projectile[z] = new Laser(pSpeed);
    coords[z] = new PVector(-20, -20);
  }
  
  enemyMax = 30;
  enemySpeed = 0.125f;
  Enemy = new Entity[enemyMax];
  dead = new boolean[enemyMax];
  String type;
  for(int z =0; z<enemyMax; z++){
    type = "enemy"+PApplet.parseInt(random(1,3))+".png";
    dead[z] = false;
    Enemy[z] = new Entity(type, z * 60, 40, enemySpeed);
  }
  
  player= new Entity("player.png", x,y, speed);
  
  leftKey='a';
  rightKey='d';
  
  Bg = loadImage("basic"+PApplet.parseInt(random(0,5))+".jpg");
 
  
  
  
}

public void draw(){
  
 if(keyPressed){
  title = false;
}

if(title){
 
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

xz += 1.0f;
wz += 1.0f;
zz += 1.0f;



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
if (!title){  
   frameRate(400);
  background(Bg);
  x= player.draw();
  if (keyPressed){
    if(key == ' '){
      shoot.play();
      if (projectileCount == projectileMax){
       projectileCount = 0; 
      }
     
     Projectile[projectileCount].draw(x,y-40); 
     projectileCount += 1;
     key = 'p';
    }
  }
 for (int z = 0; z < projectileMax; z++){
  coords[z].set(Projectile[z].update()); 
 }
 for (int z= 0; z < enemyMax; z++){
   Enemy[z].update(enemyMax, dead[z]);
   for(int zz = 0; zz< projectileMax; zz++){
   dead[z] = Enemy[z].check(coords[zz], dead[z]);  
   }}
  }
/* if we want 
 if(dead[1]){
  hit.play();
  } 
   if(dead[2]){
  hit.play();
  }  */
}
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
  public float draw(){
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
  public void update(int remaining, boolean dead){
    if(!dead){
    image(txtr,x,y);
    if (x == width || x == 0){
      y+= 50;
      speed = speed*-1;
    }
    x += speed;
  }
}
 public boolean check(PVector Lxy, boolean dead){
    if (!dead){
    PVector xy = new PVector(x,y);
    if (xy.dist(Lxy) <= 20){
     return true; 
    } else {
    return false;
 }}else {return true;
}}}
class Laser{
 float x; 
 float y;
 int speed;
 int laser = 0;
 PVector xy = new PVector(0,0);
  Laser(int Speed){
   speed = -Speed;
 }
  public void draw(float px, float py){
   x = px;
   y = py;
   fill(random(255),random(255),random(255));
   rectMode(CENTER);
   rect(x,y,7,20);
   y += speed;
  }
  public PVector update(){
   fill(random(255),random(255),random(255));
   rectMode(CENTER);
   rect(x,y,7,20);
   y += speed;
   xy.set(PApplet.parseInt(x),PApplet.parseInt(y));
   return xy;
  }
  public PVector initialize(){
   return xy; 
  }
}
  public void settings() {  size(600,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "movement_stuff" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
