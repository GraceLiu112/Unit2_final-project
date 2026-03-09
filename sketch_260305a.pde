void setup(){
  size(1000, 500);
}

void draw(){
  background(0);
  EARTH();
  UFO();

}

void EARTH(){
 
  fill(135, 197, 247);
  ellipse(800, 250, 300, 300);
  noStroke();
  fill(104, 196, 103);
  ellipse(714, 200, 100, 100);
  pushMatrix();
  translate(1085, 164);
  rotate(radians(145));
  ellipse(300, 200, 120, 80);
  popMatrix();
  ellipse(875, 200, 120, 120);
  ellipse(904, 230, 80, 140);
  ellipse(760, 330, 130, 120);
  ellipse(780, 360, 134, 70);
  
  }
  void UFO(){
  fill(255);
  ellipse(200, 360, 190, 60);
  fill(132, 87, 160);
  ellipse(200, 365, 186, 52);
  
  }
