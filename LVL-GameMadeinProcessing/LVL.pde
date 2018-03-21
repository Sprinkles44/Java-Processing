class Level {
  PImage bg;
  Shadow eyes;
  Shadow eyes2;
  
  Level(String bgimagefile) {
    bg = loadImage(bgimagefile);
    bg.resize(width,height);
    eyes = new Shadow();
    eyes2 = new Shadow();
  }
  
    void display() {
      background(0);
      noCursor();
      tint(255,17);
      image(bg,0,0);
      eyes.display();
      eyes2.display();
      noTint();
      PImage newbg = bg.get(mouseX-80,mouseY-80,165,165);
      image(newbg,mouseX-80,mouseY-80);
      fill(0,0);
      strokeWeight(41);
      stroke(0);
      ellipse(mouseX,mouseY,198,198);
      }
}