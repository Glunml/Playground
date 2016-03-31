

int LEDGreen=9;
int LEDBlue=10;
int LEDRed=11;

int sensorPinR=0;
int sensorPinG=1;
int sensorPinB=2;
float valR;
float valG;
float valB;



void setup(){
  Serial.begin(9600);
}

void loop(){

  float eightBitR = valR/4;
  float eightBitG = valG/4;
  float eightBitB = valB/4;
  
  valR=analogRead(sensorPinR);
  valG=analogRead(sensorPinG);
  valB=analogRead(sensorPinB);
  
  Serial.print("sensorR = " );
  Serial.print(eightBitR);
  Serial.print(", sensorG = " );
  Serial.print(eightBitG);
  Serial.print(", sensorB = " );
  Serial.println(eightBitB);

  analogWrite(LEDRed,eightBitR);
  analogWrite(LEDGreen,eightBitG);
  analogWrite(LEDBlue,eightBitB);
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
