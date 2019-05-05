//first sensor
const int trigger_1 = 2;
const int echo_1 = 3;
long duration_1;
int distance_1;

void setup()
{
  Serial.begin(115200);
  //first sensor
  pinMode(echo_1, INPUT);
  pinMode(trigger_1, OUTPUT);
}

void loop()
{
  delay(60);
  distance_1 = getDistanceOfFirstSensor();
  Serial.println(distance_1); //first sensor
}

int getDistanceOfFirstSensor() {
  //pulso de disparo
  digitalWrite(trigger_1, LOW);
  delayMicroseconds(2);
  digitalWrite(trigger_1, HIGH);
  //wait 10 microseconds
  delayMicroseconds(10);
  digitalWrite(trigger_1, LOW);
  //measure duration_1
  duration_1 = pulseIn(echo_1, HIGH);
  // LA VELOCIDAD DEL SONIDO ES DE 340 M/S O 29 MICROSEGUNDOS POR CENTIMETRO
  // DIVIDIMOS EL TIEMPO DEL PULSO ENTRE 58, TIEMPO QUE TARDA RECORRER IDA Y VUELTA UN CENTIMETRO LA ONDA SONORA
  distance_1 = duration_1 / 58;
  return distance_1;
}
