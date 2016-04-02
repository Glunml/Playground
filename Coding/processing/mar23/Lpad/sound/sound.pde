
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer player;
FFT fft;
float beatAdd = 0;
float angle;
float px, py;
float pxBezier, pyBezier;
float frequency = 2;


void setup(){
  size(1200,800);
  
  minim = new Minim(this);
  player = minim.loadFile("sounds/drum1.wav");
  fft = new FFT( player.bufferSize(), player.sampleRate() );
}

void draw(){  
  background(0);
  fft.forward( player.mix );
  px = cos(radians(angle))*(1000);
  py = sin(radians(angle))*(1000);
  pxBezier = cos(radians(angle));
  pyBezier = sin(radians(angle));
  
  //rotateY(radians(fft.getBand(30)));
  //noFill();
  
  translate(width/2, height/2);
  noFill();
  
  for(int i=0;i<=200;i++){
    stroke(0,200-i,200-i);
    bezier( 0, 0, pxBezier, pyBezier, pxBezier, pyBezier ,px+i, py+i);
    println("pxBezier = " ,pxBezier," pyBezier = " + pyBezier, "px = " + px," py = " + py);
    //bezier(point1x,point1y,point1BezierX,point1BezierY,point2BezierX,point2BezierY,point2x,point2y)
  }
  angle -= frequency;
  
  
  //ellipse(0,0,fft.getBand(30)+300+beatAdd,fft.getBand(30)+300+beatAdd);
  //sphere(fft.getBand(30)+300+beatAdd);


  //for(int i = 0; i < fft.specSize(); i++)
  //{
    
  //  fill(fft.getBand(i)*2,fft.getBand(i)*2,fft.getBand(i)*4);
  //  noStroke();
  //  ellipse(width/2,height/2,fft.getBand(i)*8,fft.getBand(i)*8);
  //  translate(width/2, height/2);    //立体の中心を画面中央に移動
  //  rotateY(radians(fft.getBand(i)));    //Y軸に対して60度回転
  //  fill(255);
  //  sphere(fft.getBand(i));

  //}
  

}

void keyPressed(){
if(key == 'a'){
   player = minim.loadFile("sounds/drum1.wav");
   player.play();
 }
  
if(key == 's'){
   player = minim.loadFile("sounds/drum2.wav");
   player.play();
 }
  
if(key == 'q'){
   player = minim.loadFile("sounds/FirstOfTheYear/1.wav");
   player.play();
}

if(key == 'w'){
   player = minim.loadFile("sounds/FirstOfTheYear/2.wav");
   player.play();
}

if(key == 'e'){
   player = minim.loadFile("sounds/FirstOfTheYear/3.wav");
   player.play();
}

if(key == 'r'){
   player = minim.loadFile("sounds/FirstOfTheYear/4.wav");
   player.play();
}

if(key == 't'){
   player = minim.loadFile("sounds/FirstOfTheYear/5.wav");
   player.play();
}

if(key == 'f'){
   player = minim.loadFile("sounds/voice/1.wav");
   player.play();
}

if(key == 'g'){
   player = minim.loadFile("sounds/voice/2.wav");
   player.play();
}

if(key == 'h'){
   player = minim.loadFile("sounds/voice/3.wav");
   player.play();
}

if(key == 'v'){
   player = minim.loadFile("sounds/voice/4.wav");
   player.play();
}

if(key == 'b'){
   player = minim.loadFile("sounds/voice/5.wav");
   player.play();
}

if(key == 'n'){
   player = minim.loadFile("sounds/voice/3.wav");
   player.play();
}

}

void keyReleased(){
  beatAdd = 0;
}