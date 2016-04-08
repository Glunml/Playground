
import processing.serial.*;
import cc.arduino.*;

import oscP5.*;
import netP5.*;

import ddf.minim.*;
import ddf.minim.analysis.*;

Arduino arduino;
Minim minim;
AudioPlayer player;
FFT fft;
OscP5 oscP5;
NetAddress myBroadcastLocation;

float beatAdd = 0;
float angle;
float px, py;
float pxBezier, pyBezier;
float frequency = 2;
float val;

int size;
int redFire = 0;
float bezierInitialPos = height/2;
float direction = 0.1;
float randomXpos = random(0,width);

int r,g,b;
int fadeSpeed = 2;

float toggle1,toggle2,toggle3;




void setup(){
  //size(3240,720);
  size(1200,300);
  oscP5 = new OscP5(this,8000);
  myBroadcastLocation = new NetAddress("10.232.181.215",8000);
  arduino = new Arduino(this, "/dev/tty.usbmodemFA131", 57600);
  
  OscP5 oscP5;
  NetAddress myBroadcastLocation;
  
  minim = new Minim(this);
  player = minim.loadFile("sounds/drum1.wav");
  fft = new FFT( player.bufferSize(), player.sampleRate() );
  background(0);
}

void draw(){  
  background(r,g,b);
   if(r <= 0){
     r=0;
   }else{
     r = r - fadeSpeed;
   }
   
   if(g <= 0){
     g=0;
   }else{
     g = g - fadeSpeed;
   }
   if(b <= 0){
     b=0;
   }else{
     b = b - fadeSpeed;
   }

  fft.forward( player.mix );
  px = cos(radians(angle))*(1000);
  py = sin(radians(angle))*(1000);
  pxBezier = cos(radians(angle));
  pyBezier = sin(radians(angle));

  noFill();
  bezierInitialPos = bezierInitialPos + direction;
  
  
    
    
    //println("analogRead 0 = " + arduino.analogRead(0),"analogRead 5 = " + arduino.analogRead(5));
    //println(toggle1);



    
    //println(fft.getBand(512)+"       "+fft.getBand(0));
    //println();
    
    angle -= frequency;
  visualizer();
  updown();
  buttonPressed();

}


void updown(){
if(bezierInitialPos <= -height/4 || bezierInitialPos >= height/4){
  direction = -direction;
}
  
}


void oscEvent(OscMessage theOscMessage) {
  println("### received an osc message with addrpattern "+theOscMessage.addrPattern()+" and typetag "+theOscMessage.typetag());
  theOscMessage.print();
  
  if(theOscMessage.checkAddrPattern("/1/fader1") == true){
   println("true");
   float value = theOscMessage.get(0).floatValue();
   println(value);
   val = 100*value;
  }else{
   println("false"); 
  }
  
  if(theOscMessage.checkAddrPattern("/1/toggle1") == true){
   toggle1 = theOscMessage.get(0).floatValue();
 }
   if(theOscMessage.checkAddrPattern("/1/toggle2") == true){
   toggle2 = theOscMessage.get(0).floatValue();
 }
   if(theOscMessage.checkAddrPattern("/1/toggle3") == true){
   toggle3 = theOscMessage.get(0).floatValue();
 }
}
