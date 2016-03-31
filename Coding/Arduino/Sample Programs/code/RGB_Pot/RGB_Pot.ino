

int LEDGreen=9;
int LEDBlue=10;
int LEDRed=11;

int sensorPinR=0;
int sensorPinG=1;
int sensorPinB=2;
int valR;
int valG;
int valB;


void setup(){
  Serial.begin(9600);
}

void loop(){
  
  valR=analogRead(sensorPinR);
  valG=analogRead(sensorPinG);
  valB=analogRead(sensorPinB);
  
  Serial.print("sensorR = " );
  Serial.print(valR);
  Serial.print(", sensorG = " );
  Serial.print(valG);
  Serial.print(", sensorB = " );
  Serial.println(valB);

  analogWrite(LEDRed,valR);
  analogWrite(LEDGreen,valG);
  analogWrite(LEDBlue,valB);
//  if (val<340) {
//    analogWrite(LEDRed,255);
//    analogWrite(LEDBlue,0); 
//    analogWrite(LEDGreen,0);    
//  } else if (val<680) {
//    analogWrite(LEDRed,0);
//    analogWrite(LEDBlue,255); 
//    analogWrite(LEDGreen,0); 
//  } else if (val<1024) {
//    analogWrite(LEDRed,0);
//    analogWrite(LEDBlue,0); 
//    analogWrite(LEDGreen,255);  
//  }
  delay(10);
}
