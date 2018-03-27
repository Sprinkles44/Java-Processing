PImage gif;

void setup() {
  size(600,600);
  translate(width/2,height/2);
  background(0);

  gif=loadImage("dancedude.gif","gif");
}

void draw(){
  translate(width/2,height/2);
  imageMode(CENTER);
  image(gif,0,0);
  
}