import oscP5.*;
OscP5 oscP5;
 
void setup() {
  size(400,400);
  frameRate(25);
  oscP5 = new OscP5(this,8000); 
}
 
void draw() {
  background(0);  
}
 
void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/test")==true) {//ラベルが/testかチェック
  int firstValue = theOscMessage.get(0).intValue();  //get(0)で一番目の値を取る
  println(" values: "+firstValue);
  }
}
