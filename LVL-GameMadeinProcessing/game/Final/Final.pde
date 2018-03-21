int stage;
float x = 810;
float y = 450;
float w = 80;
float h = 150;
int newbg;
PImage bg;

void settings() {
  size(1300, 800);
}

void setup() {
  stage = 1;
}

void draw() {
  if (stage == 1) {
    background(0);
  bg = loadImage("haunted_house.jpg");
  noCursor();
  PImage newbg = bg.get(mouseX,mouseY,160,160);
  image(newbg,mouseX-80,mouseY-80);
  
  strokeWeight(40);
  fill(0,0);
  ellipse(mouseX,mouseY, 190, 190);
  
  strokeWeight(0);
  fill(0,0);
  rect(x,y,w,h);
  if(mousePressed) {
    if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    stage = 2;
    background(0);
  }
}
  }
  }