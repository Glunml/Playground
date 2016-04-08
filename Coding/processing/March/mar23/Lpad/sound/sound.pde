
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
int size;
float bezierInitialPos = height/2;
float direction = 0.1;
float randomXpos = random(0,width);

int r,g,b;
int fadeSpeed = 2;




void setup(){
  //size(3240,720);
  size(1200,300);
  
  
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
  print("red = "+ r);
  
  
  //background(10);
  fft.forward( player.mix );
  px = cos(radians(angle))*(1000);
  py = sin(radians(angle))*(1000);
  pxBezier = cos(radians(angle));
  pyBezier = sin(radians(angle));
  
  //rotateY(radians(fft.getBand(30)));
  //noFill();

  //translate(width/2, height/2);
  noFill();
  bezierInitialPos = bezierInitialPos + direction;
  
  
    //HIGH
    stroke(0,200,255);
    //stroke(255,0,0);
    bezier(0,height/2,randomXpos+width/2+fft.getBand(0),bezierInitialPos+height/2+fft.getBand(0)*5*random(-1,1),width/2+fft.getBand(0),height/2+fft.getBand(0)*5*random(-1,1),width,height/2);
    
    //MIDDLE2
    stroke(0,150,220);
    //stroke(0,255,0);
    bezier(0,height/2,width/2+fft.getBand(125),height/2+fft.getBand(125)*5*random(-1,1),randomXpos+width/2+fft.getBand(125),-bezierInitialPos+height/2+fft.getBand(125)*5*random(-1,1),width,height/2);
    
    //MIDDLE1
    stroke(0,100,180);
    //stroke(0,255,0);
    bezier(0,height/2,randomXpos+width/2+fft.getBand(100),height/2+fft.getBand(125)*5*random(-1,1),width/2+fft.getBand(125),bezierInitialPos+height/2+fft.getBand(125)*5*random(-1,1),width,height/2);
    
    
    //BASE
    stroke(0,50,150);
    //stroke(0,0,255);
    bezier(0,height/2,width/2+fft.getBand(255),-bezierInitialPos+height/2+fft.getBand(255)*5*random(-1,1),randomXpos+width/2+fft.getBand(255),height/2+fft.getBand(255)*5*random(-1,1),width,height/2);
    
    
    
    //println(fft.getBand(512)+"       "+fft.getBand(0));
    //println();
    
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
  updown();

}


void updown(){
if(bezierInitialPos <= -height/4 || bezierInitialPos >= height/4){
  direction = -direction;
}
  
}