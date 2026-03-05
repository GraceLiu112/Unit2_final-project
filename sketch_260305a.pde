void setup(){
  size(1000, 500);
}

void draw(){
  background(0);
  ufo();

}

void ufo(){
  fill(135, 197, 247);
  ellipse(800, 250, 300, 300);
  noStroke();
  fill(104, 196, 103);
  ellipse(714, 200, 100, 100);
  pushMatrix();
  translate(1050, 150);
  rotate(radians(145));
  ellipse(300, 200, 120, 80);
  popMatrix();


  
  }
