/*
 * Arduino - Processingシリアル通信
 * Firmataを使用したサンプル
 * Processing側
 */
 
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int input0 = 0;
int input1 = 1;
 
void setup() {
  size(400,200);
  arduino = new Arduino(this, "/dev/cu.usbmodemFA131", 9600);
}
 
void draw() {
  background(0);
  fill(255);
  int analog0 = arduino.analogRead(input0);
  int analog1 = arduino.analogRead(input1);
  text("input0 = " + analog0, 10, 20);
  text("input1 = " + analog1, 10, 40);
}