import processing.serial.*;
import ddf.minim.*;

//arduino
Serial arduino; 
int distance;

void setup(){
  fullScreen();
  smooth();
  textFont(createFont("Arial", 30));

  //arduino
  arduino = new Serial(this, "COM6", 9600);
  arduino.bufferUntil('B');
}

void draw(){
}
