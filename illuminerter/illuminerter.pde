void setup(){
 size(200, 200);
}

void draw(){
 background(0);
 strokeWeight(0);
 fill(0, 178, 12);
 triangle(90,70, 130, 130, 50, 130);
 
 fill(255,0,0);
 ellipseMode(CENTER);
 ellipse(90,100,15,15);
 
 strokeWeight(2);
 line(70,80, 90,95);
 line(90,95, 110, 80);
 
 saveFrame("illuminerter.png");
}
