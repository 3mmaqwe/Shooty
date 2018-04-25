void setup(){
  size(200,200);
}

void draw(){
  background(0);
  rectMode(CENTER);
    fill(0,178,176);
  rect(100,100, 50, 80);
  
  fill(178,65, 0);
  stroke(2);
  rect(100,100, 20, 20);
  
  fill(255,0,0);
  rect(100,80, 10,20);
  
  saveFrame("player.png");
}
