class call{
 
float lx;      // laser (move with player movement)
float ly ;
float lw = 10;     // and dimensions
float lh = 40;
float speed = 10;
boolean ow = false; 
// the enemies 
float ex;    // same for second square
float ey;
float ew;
float eh ; 

PImage madBoi;
  
  
call( float w, float h){
  ex = 50;
  ey = 50;
  ew = w;
  eh = h;  
   madBoi = loadImage("madBoi.png");
    }
    
 void display(){
   
   if ( ow == false){
  noFill();
  noStroke();
  rect(ex,ey,ew,eh);
  image(madBoi,ew,eh);
  
  }
   
 }
 void laser(float lax, float lay){ // how to detect laser, and also I need the hit dec formula bc the laser is center
  lx = lax;
  ly= lay;
  
 }
 
}

  
  
 
 
  
  
