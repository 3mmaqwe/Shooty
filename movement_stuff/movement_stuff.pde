import processing.sound.*;

SoundFile shoot, hit;

char leftKey,rightKey;
float x,y,speed, enemySpeed;
PImage Bg;
Entity player;
Entity Enemy[];
Laser Projectile[];
int projectileMax, pSpeed, enemyMax;
int projectileCount= 0;
void setup(){
  frameRate(400);
  imageMode(CENTER);
  size(600,800);
  
  shoot = new SoundFile(this,"shoot.wav");
  hit = new SoundFile(this,"hit.wav");
  
  x=width/2;
  y=height/1.125;
  speed=1;
  
  //projectile stuff
  projectileMax = 1000;
  pSpeed = 5;
  Projectile = new Laser[projectileMax];
  for(int z =0; z <projectileMax; z++){
    Projectile[z] = new Laser(pSpeed);
  }
  
  enemyMax = 30;
  enemySpeed = 0.125;
  Enemy = new Entity[enemyMax];
  String type = "madBoi.png";
  for(int z =0; z<enemyMax; z++){
    Enemy[z] = new Entity(type, z * 60, 40, enemySpeed);
  }
  
  player= new Entity("player.png", x,y, speed);
  
  leftKey='a';
  rightKey='d';
  
  Bg = loadImage("basic"+int(random(1,3))+".jpg");
}

void draw(){
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
  Projectile[z].update(); 
 }
 for (int z= 0; z < enemyMax; z++){
  Enemy[z].update(enemyMax);
 }
}
