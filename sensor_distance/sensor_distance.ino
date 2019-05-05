//first sensor
const int trigger = 2;
const int echo = 3;
long duration;
int distance;
//led pin
const int led = 13;

void setup()
{
  Serial.begin(115200);
  //first sensor
  pinMode(echo, INPUT);
  pinMode(trigger, OUTPUT);
  //led pin
  pinMode(led, OUTPUT);
}

void loop()
{
  delay(600);
  distance = getDistanceOfFirstSensor();
  Serial.println(distance); //first sensor
  //the led will blink if there's something in between these distances from the sensor
  if (distance >= 75 && distance <= 200) {
    digitalWrite(led, HIGH);
    delay(1000);
    digitalWrite(led, LOW);
    delay(1000);
  }
}

int getDistanceOfFirstSensor() {
  //pulso de disparo
  digitalWrite(trigger, LOW);
  delayMicroseconds(2);
  digitalWrite(trigger, HIGH);
  //wait 10 microseconds
  delayMicroseconds(10);
  digitalWrite(trigger, LOW);
  //measure duration
  duration = pulseIn(echo, HIGH);
  // LA VELOCIDAD DEL SONIDO ES DE 340 M/S O 29 MICROSEGUNDOS POR CENTIMETRO
  // DIVIDIMOS EL TIEMPO DEL PULSO ENTRE 58, TIEMPO QUE TARDA RECORRER IDA Y VUELTA UN CENTIMETRO LA ONDA SONORA
  distance = duration / 58;
  return distance;
}
