import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

// declare variables
int x;
int x1;
int y1;
int vy;
int x2;
int y2;
int vy2;
int x3;
int y3;
int vy3;
float w;
int counter;

void setup(){
  size(1000, 500);
  x = -100;
  w = 1;
  counter = 0;
  x1 = 300;
  y1 = 170;
  vy = 4;
  x2 = 200;
  y2 = 600;
  vy2 = 3;
  x3 = 600;
  y3 = 600;
  vy3 = 4;
  
  minim = new Minim(this);
  song = minim.loadFile("Unit2project_song.mp3");
  song.play();
}

void draw(){
  background(0);
  
  EARTH();
  
  UFO(x, 240, w);
  x = x + 3;
  if(x > 700){
  x = -100;
  w = 1;
  }
  w = w - 0.003;
  counter += 1;
  
  //1st star
  if(counter < 50){
  fill(0);
  STAR(100, 70);
  }
  if(counter > 70){
  fill(255, 243, 108);
  STAR(100, 70);
  }
  if(counter == 100){
    counter = 0;
  }
  
  //2nd star 
  if(counter < 30){
  fill(0);
  STAR(550, 90);
  }
  if(counter > 100){
  fill(255, 243, 108);
  STAR(550, 90);
  }
  if(counter == 120){
    counter = 0;
  }
  
  //3rd star 
  if(counter < 40){
  fill(0);
  STAR(350, 350);
  }
  if(counter > 85){
  fill(255, 243, 108);
  STAR(350, 350);
  }
  if(counter == 103){
    counter = 0;
  }
  
  // 1st meteotrite
  METEORITE(x1, y1);
  y1 = y1 + vy;
  if(y1 > 169){
    vy = -4;
  }
  if(y1 < -70){
    vy = 4;
  }
  
  // 2nd meteotrite
  METEORITE(x2, y2);
  y2 = y2 + vy2;
  if(y2 > 599){
    vy2 = -3;
  }
  if(y2 < 320){
    vy2 = 3;
  }
  
  // 3rd meteotrite
  METEORITE(x3, y3);
  y3 = y3 + vy3;
  if(y3 > 599){
    vy3 = -4;
  }
  if(y3 < 300){
    vy3 = 4;
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
  //fill(255,0,0);
  //circle(0,0,10);
  popMatrix();
  
}
void STAR(int x, int y){ 
  pushMatrix();
  translate(x, y);
  fill(255, 243, 108);
  noStroke();
  rect(0, 0, 20, 20);
  triangle(0, 0, 10, -20, 20, 0);
  triangle(0, 0, -20, 10, 0, 20);
  triangle(0, 20, 10, 40, 20, 20);
  triangle(20, 0, 40, 10, 20, 20);
  popMatrix();
  
}
void METEORITE(int x, int y){
  pushMatrix();
  translate(x, y);
  noStroke();
  fill(121, 120, 120);
  ellipse(0, 0, 50, 50);
  fill(62, 61, 61);
  ellipse(-10, 0, 20, 20);
  pushMatrix();
  translate(10, 10);
  rotate(radians(40));
  ellipse(0, 0, 10, 20);
  popMatrix();
  pushMatrix();
  translate(10, -10);
  rotate(radians(-50));
  ellipse(0, 0, 10, 12);
  popMatrix();
  popMatrix();


}
