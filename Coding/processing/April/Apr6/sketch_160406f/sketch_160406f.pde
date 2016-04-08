import processing.serial.*;
import cc.arduino.*;
 
Arduino arduino;
int ledPin = 13;
color bgColor = color(0);
 
void setup() {
  size(400, 200);
  arduino = new Arduino(this, "/dev/tty.usbmodemFA131", 9600);
  arduino.pinMode(ledPin, Arduino.OUTPUT);
}
 
void draw() {
  background(bgColor);
}
 
void mousePressed() {
  arduino.digitalWrite(ledPin, Arduino.HIGH);
  bgColor = color(255,0,0);
}
 
void mouseReleased() {
  arduino.digitalWrite(ledPin, Arduino.LOW);
  bgColor = color(0);
}