void setup(){
size(200,200);

}

void draw(){
 background(0);
 strokeWeight(0);
 rectMode(CENTER);
 fill(255,0,0);
 rect(100,100, 50,50);
 
 fill(255);
 rect(90,90, 10, 10);
 rect(110,90, 10,10);
 
 strokeWeight(3);
 line(80,80, 100,85);
 line(100,85, 120,80);
 
 fill(0);
 strokeWeight(0);
 rect(100,110, 40,20);
 
 saveFrame("madBoi.png");
}
