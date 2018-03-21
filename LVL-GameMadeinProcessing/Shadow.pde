class Shadow {
  
  float xpos;
  float ypos;
  
  Shadow() {
    xpos = int(random(90,width-95));
    ypos = int(random(90,height-90));
  }
  
  void display() {
    fill(0,190);
    strokeWeight(0);
    stroke(0);
    ellipse(xpos,ypos,30,30);
    fill(0,180);
    fill(255);
    ellipse(xpos-5,ypos-2,3,3);
    ellipse(xpos+5,ypos-2,3,3);
  }
}