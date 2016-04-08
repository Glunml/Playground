import pitaru.sonia_v2_9.*;

import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Integer Interval = 5;
Minim minim;
AudioInput in;
AudioRecorder recorder;
AudioPlayer player;
ArrayList<AudioPlayer> playList = new ArrayList<AudioPlayer>();

void setup(){
  size(512,512);
  minim = new Minim(this);

  in = minim.getLineIn(Minim.STEREO, 512);
  Sonia.start(this);
  recorder = minim.createRecorder(in, "hoge.wav", true);
  frameRate(1);
}

void draw(){
  if(frameCount%Interval == 0){
    if(recorder.isRecording()){
      recorder.endRecord();
      recorder.save();
      player = minim.loadFile("sound" + (frameCount/Interval-1) + ".wav");
      playList.add(player);
      playList.get(playList.size()-1).loop();
    }

    recorder = minim.createRecorder(in, "sound" + frameCount/Interval + ".wav", true);
    recorder.beginRecord();
  }
}