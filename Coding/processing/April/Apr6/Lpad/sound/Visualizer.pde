void visualizer(){
//---------------------------------CENTER-------------------------------------------------
    //HIGH
    int maxi = 10;
for(int i = 0; i <=maxi; i++){
    stroke(redFire,200,255);
    //stroke(255,0,0);
    bezier(0,(height/maxi*i),randomXpos+width/2+fft.getBand(0),bezierInitialPos+height/2+fft.getBand(0)*5*random(-1,1),width/2+fft.getBand(0),height/2+fft.getBand(0)*5*random(-1,1),width,height/maxi*(-(i-maxi)));
    
    //MIDDLE2
    stroke(redFire,150,220);
    //stroke(0,255,0);
    bezier(0,(height/maxi*i),width/2+fft.getBand(125),height/2+fft.getBand(125)*5*random(-1,1),randomXpos+width/2+fft.getBand(125),-bezierInitialPos+height/2+fft.getBand(125)*5*random(-1,1),width,height/maxi*(-(i-maxi)));
    
    //MIDDLE1
    stroke(redFire,100,180);
    //stroke(0,255,0);
    bezier(0,(height/maxi*i),randomXpos+width/2+fft.getBand(100),height/2+fft.getBand(125)*5*random(-1,1),width/2+fft.getBand(125),bezierInitialPos+height/2+fft.getBand(125)*5*random(-1,1),width,height/maxi*(-(i-maxi)));
    
    
    //BASE
    stroke(redFire,50,150);
    //stroke(0,0,255);
    bezier(0,(height/maxi*i),width/2+fft.getBand(255),-bezierInitialPos+height/2+fft.getBand(255)*5*random(-1,1),randomXpos+width/2+fft.getBand(255),height/2+fft.getBand(255)*5*random(-1,1),width,height/maxi*(-(i-maxi)));
    
}

 
 

}
