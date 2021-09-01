
void setup(){
  background(0);
  size(600,800);
}

void draw(){
 noFill();
 stroke(255);
 
 
 for (int i = 0; i < 600; i = i+20) {
  for (int j = 0; j < 800; j = j+20) {
    point(i, j);
   }
 }
 save("star.jpg");
} 