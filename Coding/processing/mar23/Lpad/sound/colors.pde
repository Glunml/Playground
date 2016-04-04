void colors(String colors){

  if(colors == "red"){
    r = 255;
    g = 0;
    b = 0;
  }else if(colors == "white"){
    r = 255;
    g = 255;
    b = 255;
  }else if(colors == "black"){
    r = 0;
    g = 0;
    b = 0;
  }else if(colors == "green"){
    r = 0;
    g = 255;
    b = 0;
  }else if(colors == "blue"){
    r = 0;
    g = 0;
    b = 255;
  }else if(colors == "initial"){
    r = 0;
    g = 10;
    b = 40;
  }else if(colors == "one"){
    r = 0;
    g = 100;
    b = 100;
  }else if(colors == "two"){
    r = 0;
    g = 100;
    b = 150;
  }
}