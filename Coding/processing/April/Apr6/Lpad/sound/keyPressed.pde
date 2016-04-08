void keyPressed(){
     
if(key == 'a'){
   fire();
   player = minim.loadFile("sounds/drum1.wav");
   player.play();
   colors("one");
    //I think I will need to make "FIRE" function to get particles
 }
  
if(key == 's'){
   player = minim.loadFile("sounds/drum2.wav");
   player.play();
   colors("two");
 }
  
if(key == 'q'){
   player = minim.loadFile("sounds/FirstOfTheYear/1.wav");
   player.play();
   colors("one");
}

if(key == 'w'){
   player = minim.loadFile("sounds/FirstOfTheYear/2.wav");
   player.play();
   colors("two");
}

if(key == 'e'){
   player = minim.loadFile("sounds/FirstOfTheYear/4.wav");
   player.play();
   colors("one");
}

if(key == 'r'){
   player = minim.loadFile("sounds/FirstOfTheYear/5.wav");
   player.play();
}

//if(key == 't'){
//   player = minim.loadFile("sounds/FirstOfTheYear/5.wav");
//   player.play();
//}

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

if(key == ' '){
   player = minim.loadFile("sounds/911.wav");
   player.play();
}

if(key == 'A'){
   player = minim.loadFile("sounds/piano/do.wav");
   player.play();
}

if(key == 'S'){
   player = minim.loadFile("sounds/piano/re.wav");
   player.play();
}

if(key == 'D'){
   player = minim.loadFile("sounds/piano/mi.wav");
   player.play();
}

if(key == 'F'){
   player = minim.loadFile("sounds/piano/fa.wav");
   player.play();
}

if(key == 'G'){
   player = minim.loadFile("sounds/piano/so.wav");
   player.play();
}

if(key == 'H'){
   player = minim.loadFile("sounds/piano/ra.wav");
   player.play();
}

if(key == 'J'){
   player = minim.loadFile("sounds/piano/si.wav");
   player.play();
}

if(key == 'K'){
   player = minim.loadFile("sounds/piano/do2.wav");
   player.play();
}

 

}

void keyReleased(){
  beatAdd = 0;

}


