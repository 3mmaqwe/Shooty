void setup(){
  size(600, 800);
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
}
