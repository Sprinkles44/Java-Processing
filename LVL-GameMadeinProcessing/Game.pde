int stage;
int i = 1;
float x = 515;   // Door Button
float y = 575;
float w = 160;
float h = 200;
float x2 = 200;   // "Continue" Button
float y2 = 500;
float w2 = 170;
float h2 = 70;
float x3 = 260;    // Key Button
float y3 = 750;
float w3 = 80;
float h3 = 50;
float x4 = 990;   // Secret Door
float y4 = 300;
float w4 = 50;
float h4 = 80;
float x5 = 550;    // Downstairs
float y5 = 300;
float w5 = 200;
float h5 = 200;
float x6 = 600;    // Crying Person
float y6 = 500;
float w6 = 100;
float h6= 200;
PImage bg;    // Background
PFont f;     // Font
import ddf.minim.*;    // For sound effects

Minim minim;

AudioPlayer keypickup;
AudioPlayer leaves;
AudioPlayer ambience;
AudioPlayer crickets;
AudioPlayer secretdoor;
AudioPlayer doorcreak;
AudioPlayer steps;
AudioPlayer crying;
AudioPlayer end;

Level firstLevel;
Level secondLevel;
Level thirdLevel;
Level fourthLevel;

String[] background = {"Stage_1.JPG", "windowroom.JPG", "stairs.jpg", "creepy.jpg"};
String[] noise = {"leafrustle.mp3","ambience.mp3", "crickets.mp3", "keypickup.mp3", "secretdoor.mp3", "doorcreak.mp3", "steps.mp3", "ManCrying.mp3", "end.mp3"};

void settings() {
  size(1300,800);
}

void setup() {
  f = loadFont("f.vlw");   // Create Font 
  stage = 0;
  minim = new Minim(this);
  leaves = minim.loadFile(noise[0]);
  ambience = minim.loadFile(noise[1]);
  crickets = minim.loadFile(noise[2]);
  keypickup = minim.loadFile(noise[3]);
  secretdoor = minim.loadFile(noise[4]);
  doorcreak = minim.loadFile(noise[5]);
  steps = minim.loadFile(noise[6]);
  crying = minim.loadFile(noise[7]);
  end = minim.loadFile(noise[8]);
  ambience.loop();
  firstLevel = new Level(background[0]);
  secondLevel = new Level(background[1]);
  thirdLevel = new Level(background[2]);
  fourthLevel = new Level(background[3]);
}

void draw() {
  if(stage == 0) {
    leaves.play();
    background(0);
    textFont(f, 65);   // Specify font to be used
    fill(114,18,0);   // Specify font color
    text("It has been hours since you began wandering in the dark \n through the thick woods. Guiding yourself with a small flashlight, \n you lead yourself up a small hill. The house came upon you as you \n began to stumble towards it. \n ''For my sake, I hope someone's home''.", 30, 100);   // Display Text
    text("Continue \n \n (Disclaimer: Horror games might be frightening for some. \n Player Discretion Advised)",200,550);
    //strokeWeight(2);
    //fill(255);
    //rect(x2,y2,w2,h2);
    if(mousePressed) {
      if(mouseX>x2 && mouseX<x2+w2 && mouseY>y2 && mouseY<y2+h2) {   // "Continue" Button
        stage = 1;
        crickets.loop();
      }
    }
  }
   if (stage == 1) { 
    leaves.pause();
    firstLevel.display();
   if(mousePressed) {
     if(mouseX>x3 && mouseX<x3+w3 && mouseY>y3 && mouseY<y3+h3) {    // Key button
       stage = 2;
       keypickup.play();
     }
    }
   }
   if(stage == 2) {
     firstLevel.display();
     strokeWeight(10);
     fill(0);
     rect(x3,y3,w3,h3);
    if (mousePressed) {
      if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {   // Door button
        stage = 3;
      }
    }
   }
      if (stage == 3) {
        secondLevel.display();
        crickets.pause();
        doorcreak.play();
        //strokeWeight(10);
        //fill(255);
        //rect(x4,y4,w4,h4);
if(mousePressed) {
  if(mouseX>x4 && mouseX<x4+w4 && mouseY>y4 && mouseY<y4+h4) {   // To Stairs
  stage = 4;
  }
}
      }
if(stage == 4) {
thirdLevel.display();
secretdoor.play();
//strokeWeight(10);
//fill(255);
//rect(x5,y5,w5,h5);
if(mousePressed) {
  if(mouseX>x5&&mouseX<x5+w5&&mouseY>y5&&mouseY<y5+h5) {   // Downstairs
  stage = 5;
  crying.loop();
  }
}
}
if(stage == 5) {
  fourthLevel.display();
  steps.play();
  if(i==1) {
  delay(3000);
  i++;
  } else { 
//  strokeWeight(10);
//fill(255);
//rect(x6,y6,w6,h6);
if(mousePressed) {
  if(mouseX>x6&&mouseX<x6+w6&&mouseY>y6&&mouseY<y6+h6) {    // Crying person
    stage = 6;
  }
}
}
}
if(stage == 6) {
  background(0);
  end.play();
  crying.pause();
  textFont(f, 65); 
    fill(114,18,0); 
    text ("END", 650, 400);
}
}