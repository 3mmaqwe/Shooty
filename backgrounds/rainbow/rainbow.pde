
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
    fill(255-i,j,i);
    stroke(random(150,255),random(0,10),random(150,255));
    ellipse(i, j,100,100);
   }
 }
 
for (int i = 0; i < 600; i = i+65) {
  for (int j = 0; j < 900; j = j+50) {
    fill(200-i,200-j,200-i);
    stroke(random(150,255),random(0,10),random(150,255));
    ellipse(195+i,200+j,100,100);
   }
 }
 
 for (int i = 0; i < 600; i = i+65) {
  for (int j = 0; j < 900; j = j+50) {
    fill(200-i,j,i);
    stroke(random(150,255),random(0,10),random(150,255));
    ellipse(300+i,400+j,100,100);
   }
 }
 
 
 
 
 save("star.png");
} 