import processing.serial.*;
import ddf.minim.*;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;

//arduino
Serial arduino;
int distance;

//start
boolean start=false;

//welcome variables
String welcomeText = "Air Piano using Arduino";
String welcomeText2 = "You can use your keyboard keys to play or Move your fingers in the air";
String welcomeText3 = "Situate Yourself between 75 cm and 200 cm from the sensor";
String welcomeText4 = "Click 'B' to start :)";

//rotating logo
float velocidad = TWO_PI / 1200;
float angulo = 0;
float arco = 0;
String mensaje = "AHAMAY"; 
float radio = 100;

//sonido
Minim minim;

//robot
Robot robot;

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

  //welcome view
  if (!start) {
    background(255);
    fill(0, 102, 153);
    text(welcomeText, width / 2 - 185, height/2 - 60);
    text(welcomeText2, width / 2 - 450, height/2);
    text(welcomeText3, width / 2 - 380, height/2 + 60);
    text(welcomeText4, width / 2 - 150, height/2 + 120);
  } else {
    background(255);
  }

  try { 
    robot = new Robot();
  } 
  catch (AWTException e) {
    e.printStackTrace();
    exit();
  }
}


void draw() {
  //control
  if (key == 'b' || key == 'B') {
    start = true;
  }
  //let the fun begin
  if (start) {
    background(245, 245, 245); 
    
    //logo
    rotatingLogo();
    
    //information
    stroke(0);
    fill(0, 102, 153);
    text("If you want to use your keyboard instead", 40, 200);
    text("White keys : QWERTYU for first half <-> ASDFGHJ for second half", 40, 300);
    text("Black keys : 1234567890", 40, 400);
    
    //drawings and sounds
    drawWhiteKeys();
    drawBlackKeys();
    measureAndPlay();
    
    text("You are away " + distance + " cm from the sensor", width/2 - 300, height - 50);
  }
}

void drawWhiteKey(int x_key_coordenates) {
  strokeWeight(3);
  rect(x_key_coordenates, height/2 - 90, 110, 450, 3, 6, 12, 18);
}

void drawBlackKey(int x_key_coordenates) {
  strokeWeight(3);
  rect(x_key_coordenates + 90, height/2 - 90, 40, 330, 3, 6, 12, 18);
}


void serialEvent(Serial p) {
  //reading port until \n
  String data = p.readStringUntil('\n');
  if (data != null) {
    distance = int(data.trim());
    println(distance);
  }
}


void rotatingLogo() {
  pushMatrix();
  //position
  translate(width / 2, 150);
  rotate(angulo);
  //anti-clockwise
  angulo += velocidad;
  noFill();
  noStroke();
  ellipse(0, 0, radio*2, radio*2); 
  for (int i = mensaje.length() - 1; i >= 0; i--) {
    int l = mensaje.length();
    char caracter = mensaje.charAt(i);
    float w = textWidth(caracter);
    arco += w/2;  
    float espacioEntreCaracteres =-TWO_PI/l*i+PI;
    pushMatrix();
    translate(radio*cos(espacioEntreCaracteres), radio*sin(espacioEntreCaracteres));
    rotate(espacioEntreCaracteres + PI/2);
    fill(0);
    text(caracter, 0, 0);
    popMatrix();
    arco += w/2;
  }
  popMatrix();
}
