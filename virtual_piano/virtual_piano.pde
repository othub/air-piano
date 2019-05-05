import processing.serial.*;

//arduino
Serial arduino; 
int distance;

void setup() {
  //fullScreen();
  size(600, 800);
  smooth();
  textFont(createFont("Arial", 30));
  
  //distance
  distance=0;

  //arduino
  String arduinoPort = Serial.list()[0];
  arduino = new Serial(this, arduinoPort, 115200);
  arduino.bufferUntil( '\n' );
}


void draw() {

}

void serialEvent(Serial p) {
    //reading serial port until \n
    String data = p.readStringUntil('\n');
    if (data != null) {
        distance = int(data.trim());
        println(distance);
    }
}
  
