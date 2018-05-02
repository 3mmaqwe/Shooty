char leftKey,rightKey;
float x,y,speed;
Entity player;
Laser Projectile[];
PImage bg;

int projectileMax, pSpeed;
int projectileCount= 0;
void setup(){
  frameRate(400);
  imageMode(CENTER);
  size(600,800);
  
  x=width/2;
  y=height/1.125;
  speed=1;
  projectileMax = 1000;
  pSpeed = 5;
  
  Projectile = new Laser[projectileMax];
  for(int z =0; z <1000; z++){
    Projectile[z] = new Laser(pSpeed);
  }
  player= new Entity("player.png", x,y, speed);
  
  bg = loadImage("basic" + int(random(3)) +".jpg");
  background(bg);
  leftKey='a';
  rightKey='d';
}

void draw(){
  background(bg);
  x= player.playerMov();
  if (keyPressed){
    if(key == ' '){
      if (projectileCount == projectileMax){
       projectileCount = 0; 
      }
     
     Projectile[projectileCount].draw(x,y-40); 
     projectileCount += 1;
    }
  }
 for (int z = 0; z < projectileMax; z++){
  Projectile[z].update(); 
 }
}
void enemySpawn(){
  
  
}
