import processing.serial.*;
import ddf.minim.*;


//arduino
Serial arduino; 
int distance;

//start
boolean start=false;

//welcome variables
String welcomeText = "Interactive Piano using Arduino";
String welcomeText2 = "You can use your keyboard keys to play or Move your fingers in the air";
String welcomeText3 = "Click 'B' to start :)";

//sonido
Minim minim;
AudioSample test;


void setup() {
 
  fullScreen();
  textFont(createFont("Georgia", 30, true));
  
  //distance
  distance=0;
  
  //arduino
  String arduinoPort = Serial.list()[0];
  arduino = new Serial(this, arduinoPort, 115200);
  arduino.bufferUntil( '\n' );
  
  //minim
  minim = new Minim(this);
  test = minim.loadSample("notes/A.wav");
  test.trigger();

  
  
  //welcome view
  if (!start) {
    background(255);
    fill(0, 102, 153);
    text(welcomeText, width / 2 - 250, height/2 - 60);
    text(welcomeText2, width / 2 - 450, height/2);
    text(welcomeText3, width / 2 - 150, height/2 + 60);
  } else {
    background(255);
  }
}


void draw() {
  //control
  if (key == 'b' || key == 'B') {
    start = true;
  }
  //let the fun begin
  if(start){
    println("ok");
  }
}

void serialEvent(Serial p) {
    //reading serial port until \n
    String data = p.readStringUntil('\n');
    if (data != null) {
        distance = int(data.trim());
        println(distance);
    }
}
  
