float px, py, px2, py2;
float angle, angle2;
float radius = 50;
float frequency = 2;
float frequency2 = 2;
float x, x2;

void setup(){
  size(600, 200);
}

void draw(){
  background (255);
  
  // Rotates rectangle around circle
  px = width/2 + cos(radians(angle))*(1000);
  py = height/2 + sin(radians(angle))*(1000);
  
  
  fill(0); 
  rect (px, py, 5, 5);
  stroke(100);
  line(width/2, height/2, px, py);



  // Send small ellipse along sine curve
  angle -= frequency;
  x+=1;


  // Output calculations to screen
  text("y = sin x", 35, 185);
  text("px = " + px, 105, 185);
  text("py = " + py, 215, 185);
  text("angle = " + angle, 400,185);
}