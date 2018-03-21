float walkerX1;
float walkerY1;
float walkerX2;
float walkerY2;
int rdm1;
int rdm2;
int rdm3;

void setup() {
  fullScreen();
  walkerX1 =width/4;
  walkerX2 =width*3 /4;
  walkerY1 = height / 4;
  walkerY2 = height*3 / 4;
  background(0);
  // print(height);
}

void draw() {
  // background(180);
  rdm1 = int(random(255));
  //rdm2 = int(random(255));
  //rdm3 = int(random(255));
  stroke(rdm1,22,100);
  strokeWeight(2);
  line(mouseX, mouseY, width/2, height/2);
  line(width/2, height/2, width-mouseX, mouseY);


  walkerY1 = walkerY1 + random(-50, 50);

  walkerY2 = walkerY2 + random(-50,50);

}