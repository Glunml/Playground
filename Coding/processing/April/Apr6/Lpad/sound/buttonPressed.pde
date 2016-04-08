boolean key1 = false;
boolean key2 = false;
boolean key3 = false;
boolean key4 = false;
boolean key5 = false;
boolean key6 = false;
boolean key7 = false;
boolean key8 = false;

void buttonPressed(){
  
  if(toggle1 == 1.0 && toggle2 == 0){
  //--------------------start piano sound-------------------------------------
            if(arduino.analogRead(0) >= 40 && arduino.analogRead(0) <= 110){
              if(!key1){
                  player = minim.loadFile("sounds/piano/do.wav");
                  player.play();
                  key1 = true;
                }
              }
              
              if(arduino.analogRead(0) >= 280 && arduino.analogRead(0) <= 380){
                if(!key2){
                player = minim.loadFile("sounds/piano/re.wav");
                player.play();
                key2 = true;
                }
              }
              
              if(arduino.analogRead(0) >= 450 && arduino.analogRead(0) <= 560){
                if(!key3){
                  player = minim.loadFile("sounds/piano/mi.wav");
                  player.play();
                  key3 = true;
                }
              }
              
               if(arduino.analogRead(0) >= 900 && arduino.analogRead(0) <= 990){
                if(!key4){
                player = minim.loadFile("sounds/piano/fa.wav");
                player.play();
                key4 = true;
                }
              }
              
               if(arduino.analogRead(5) >= 40 && arduino.analogRead(5) <= 110){
                if(!key5){
                player = minim.loadFile("sounds/piano/so.wav");
                player.play();
                key5 = true;
                }
              }
              
              if(arduino.analogRead(5) >= 280 && arduino.analogRead(5) <= 380){
                if(!key6){
                player = minim.loadFile("sounds/piano/ra.wav");
                player.play();
                key6 = true;
                }
              }
              
              if(arduino.analogRead(5) >= 450 && arduino.analogRead(5) <= 560){
                if(!key7){
                player = minim.loadFile("sounds/piano/si.wav");
                player.play();
                key7 = true;
                }
              }
              
               if(arduino.analogRead(5) >= 900 && arduino.analogRead(5) <= 990){
                if(!key8){
                player = minim.loadFile("sounds/piano/do2.wav");
                player.play();
                key8 = true;
                }
              }
}//----------------------------end piano sound---------------------------------------------
    
 //--------------------------- start skrillex 1----------------------------------------------
    
    if(toggle2 == 1 && toggle1 == 0){
      
      if(arduino.analogRead(0) >= 40 && arduino.analogRead(0) <= 110){
              if(!key1){
                   player = minim.loadFile("sounds/FirstOfTheYear/7.wav");
                   player.play();
                   colors("one");
                   key1 = true;
                }
              }
              
              if(arduino.analogRead(0) >= 280 && arduino.analogRead(0) <= 380){
                if(!key2){
                 player = minim.loadFile("sounds/FirstOfTheYear/1.wav");
                 player.play();
                 colors("two");
                  key2 = true;
                }
              }
              
              if(arduino.analogRead(0) >= 450 && arduino.analogRead(0) <= 560){
                if(!key3){
                  player = minim.loadFile("sounds/FirstOfTheYear/2.wav");
                   player.play();
                   colors("one");
                  key3 = true;
                }
              }
              
               if(arduino.analogRead(0) >= 900 && arduino.analogRead(0) <= 990){
                if(!key4){
                player = minim.loadFile("sounds/FirstOfTheYear/4.wav");
                player.play();
                key4 = true;
                }
              }
              
               if(arduino.analogRead(5) >= 40 && arduino.analogRead(5) <= 110){
                if(!key5){
                player = minim.loadFile("sounds/FirstOfTheYear/5.wav");
                player.play();
                key5 = true;
                }
              }
              
              if(arduino.analogRead(5) >= 280 && arduino.analogRead(5) <= 380){
                if(!key6){
                player = minim.loadFile("sounds/FirstOfTheYear/6.wav");
                player.play();
                key6 = true;
                }
              }
              
              if(arduino.analogRead(5) >= 450 && arduino.analogRead(5) <= 560){
                if(!key7){
                player = minim.loadFile("sounds/FirstOfTheYear/7.wav");
                player.play();
                key7 = true;
                }
              }
              
               if(arduino.analogRead(5) >= 900 && arduino.analogRead(5) <= 990){
                if(!key8){
                player = minim.loadFile("sounds/piano/do2.wav");
                player.play();
                key8 = true;
                }
              }
    }
//-------------------------------- skrillex 2----------------------------------------

if(toggle2 == 0 && toggle3 == 1 && toggle1 == 0){
      
      if(arduino.analogRead(0) >= 40 && arduino.analogRead(0) <= 110){
              if(!key1){
                   player = minim.loadFile("sounds/voice/1.wav");
                   player.play();
                   colors("one");
                   key1 = true;
                   
                }
              }
              
              if(arduino.analogRead(0) >= 280 && arduino.analogRead(0) <= 380){
                if(!key2){
                 player = minim.loadFile("sounds/voice/2.wav");
                 player.play();
                 colors("two");
                  key2 = true;
                }
              }
              
              if(arduino.analogRead(0) >= 450 && arduino.analogRead(0) <= 560){
                if(!key3){
                  player = minim.loadFile("sounds/voice/3.wav");
                   player.play();
                   colors("one");
                  key3 = true;
                }
              }
              
               if(arduino.analogRead(0) >= 900 && arduino.analogRead(0) <= 990){
                if(!key4){
                player = minim.loadFile("sounds/voice/4.wav");
                player.play();
                key4 = true;
                }
              }
              
               if(arduino.analogRead(5) >= 40 && arduino.analogRead(5) <= 110){
                if(!key5){
                player = minim.loadFile("sounds/voice/5.wav");
                player.play();
                key5 = true;
                }
              }
              
              if(arduino.analogRead(5) >= 280 && arduino.analogRead(5) <= 380){
                if(!key6){
                player = minim.loadFile("sounds/FirstOfTheYear/6.wav");
                player.play();
                key6 = true;
                }
              }
              
              if(arduino.analogRead(5) >= 450 && arduino.analogRead(5) <= 560){
                if(!key7){
                player = minim.loadFile("sounds/FirstOfTheYear/7.wav");
                player.play();
                key7 = true;
                }
              }
              
               if(arduino.analogRead(5) >= 900 && arduino.analogRead(5) <= 990){
                if(!key8){
                player = minim.loadFile("sounds/piano/do2.wav");
                player.play();
                key8 = true;
                }
              }
              
              redFire = 255;

}




    
    
    
    
    
    
    if(arduino.analogRead(0) == 0){
      key1 = false;
      key2 = false;
      key3 = false;
      key4 = false;
      redFire = 0;
    }
    
    if(arduino.analogRead(5) == 0){
      key5 = false;
      key6 = false;
      key7 = false;
      key8 = false;
      redFire = 0;
    }
  
    
}
