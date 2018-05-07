import processing.serial.*;

Serial myPort;

//printArray(Serial.list());
void setup() {
  myPort = new Serial(this, Serial.list()[0],9600);
}

void draw() {
  String a = myPort.readStringUntil(';');
  String[] b = split(a,',');
  if( a != null) {
    if (b[0] == "x") {
      int xval = int(b[1]);
      print(xval);
    }
  }
}
