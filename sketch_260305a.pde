int x;
float w;
void setup(){
  size(1000, 500);
  x = -100;
  w = 1;
}

void draw(){
  background(0);
  
  EARTH();
  
  UFO(x, 240, w);
  x = x + 3;
  if(x>700){
  x = -100;
  }
  w = w - 0.1;
  if(w = 0){
  w = 1;
  }
  
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
void UFO(int x, int y, float s){
  pushMatrix();
  translate(x,y);
  scale(s);
  stroke(0);
  fill(167, 232, 255);
  ellipse(0, 0, 120, 100);
  fill(255);
  ellipse(0, 20, 190, 60);
  fill(132, 87, 160);
  ellipse(0, 24, 186, 53);
  ellipse(0, 29, 160, 40);
  ellipse(0, 36, 120, 25);
  fill(211, 121, 64);
  ellipse(0, 45, 60, 10);
  fill(255,0,0);
  circle(0,0,10);
  popMatrix();
  
}
