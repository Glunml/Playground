class Particle{
    float xPos,yPos;
    Particle(float _xPos,float _yPos){
      stroke(0,255,150);
      fill(0,200,140);
      size = int(random(1,10));
      ellipse(_xPos,_yPos,size,size);
      xPos = _xPos;
      yPos = _yPos;
      println("_xPos = " + _xPos,"   _yPos = " + _yPos);
    }
}

void fire(){
  int move = 20;
  Particle particles;
  for(int i = 0; i<=10;i++){
    particles = new Particle(random(0,width),random(0,height));
    
  }
}