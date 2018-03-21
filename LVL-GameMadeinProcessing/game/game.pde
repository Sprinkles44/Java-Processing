//int x = mouseX;
//int y = mouseY;
////int gameScreen = 0;
//PImage bg;
//////0: Initial Screen
//////1: Game Screen
//////2: Game-over Screen

//void setup() {
//  size(1300,800);
//  bg = loadImage("haunted_house.jpg");
//}

////void draw() {
////  if (gameScreen == 0) {
////    initScreen();
////  } else if (gameScreen == 1) {
////    gameScreen();
////  } else if (gameScreen == 2) {
////    gameOverScreen();
////  }
////  background(0);
////  noCursor();
////  PImage newbg = bg.get(mouseX,mouseY,160,160);
////  image(newbg,mouseX-80,mouseY-80);
////  ellipse(mouseX,mouseY,190,190);
////  strokeWeight(40);
////  fill(0,0);
////  stroke(0);
////}

//void draw() {
//  background(0);
//  noCursor();
//  PImage newbg = bg.get(mouseX,mouseY,160,160);
//  image(newbg,mouseX-80,mouseY-80);
//  ellipse(mouseX,mouseY,190,190);
//  strokeWeight(40);
//  fill(0,0);
//  stroke(0);
//  textAlign(CENTER);
//  text("DO NOT ENTER", height/2, width/2);
////}
//PImage startscreen;
//PFont title;
//int screensizex, screensizey, stage;

////void setup() {
////  stage = 1;
////  screensizex = 1300;
////  screensizey = 800;
////  size(screensizex, screensizey);
////  startscreen = loadImage ("haunted_house.jpg");
////  image (startscreen, 0, 0, screensizex,screensizey);
////  title = createFont("font", 1000, true);
////}

//void draw() {
//  if (stage == 1) {
//    background(0);
//    noCursor();
//    textAlign(CENTER);
//    text("Game Name", 100, 150);
//    text("DO NOT ENTER", 100, 170);
//    if (mousePressed == true) {
//      stage = 2;
//    }
//  }
//}