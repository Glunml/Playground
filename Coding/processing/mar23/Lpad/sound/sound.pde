import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer player;

FFT fft;


void setup(){
  size(500,500);
  background(255);
  minim = new Minim(this);
  fft = new FFT(player.bufferSize(), player.sampleRate());
}

void draw(){  

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