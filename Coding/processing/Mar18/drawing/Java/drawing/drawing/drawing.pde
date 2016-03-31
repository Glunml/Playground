
int xPos, yPos;
boolean gravitySwitch;


void setup(){
size(500,500);

}


void draw(){
  background(255);
  ellipse(xPos,yPos,100,100);
 
  
  if(yPos >= height){
    gravitySwitch = true;
  }else if(gravitySwitch && yPos = 0){
    yPos++;
  }
  
  if(gravitySwitch = true){
   yPos++;
  }

}