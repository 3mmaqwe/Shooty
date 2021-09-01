
void setup(){
  background(0);
  size(600,800);
}

void draw(){
 noFill();
 stroke(255);
 strokeWeight(0.2);
 
 for (int i = 0; i < 600; i = i+65) {
  for (int j = 0; j < 900; j = j+50) {
    fill(random(0,255),random(150,255),random(0,255));
    stroke(random(0,255),random(150,255),random(0,255));
    ellipse(i, j,10,100);
   }
 }
 
 save("star.jpg");
} 