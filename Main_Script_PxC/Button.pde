class Button {
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  PImage asset;
  int destination;

  Button(PImage ass, float x, float y, float sx, float sy, int des) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
    asset = ass;
    destination = des;
  }

  void show() {
    if (asset != null){
    imageMode(CENTER);
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseX > (posX-sizeX/2)*scaleX && mouseX < (posX+sizeX/2)*scaleX
      && mouseY > (posY-sizeY/2)*scaleY && mouseY < (posY+sizeY/2)*scaleY
      && mouseButton ==LEFT) {    
        
        switch(destination){
        case 0:
         MenuButtonClick.play(); 
          Menumanager.menu = 0;
          menuMusic.pause();
          gameMusic.play();
          
        break;
        case 1:
          Menumanager.menu = 1;
           MenuButtonClick.play(); 
           menuMusic.play();
          gameMusic.pause();
        break;
        case 2:
          Menumanager.menu = 2;
           MenuButtonClick.play(); 
        break;
        case 3:
        MenuButtonClick.play(); 
         exit();
           
        break;
        case 9:
          Menumanager.menu = 9;
           
        break;
        case 10:
        if (!TimeReverse.isPlaying()){
        TimeReverse.play();
        }
        Rewind.update();
        break;
        case 101:
        windowResize(1280, 720);
         MenuButtonClick.play(); 
        break;
        case 102:
        windowResize(1600, 900);
         MenuButtonClick.play(); 
        break;
        case 103:
        windowResize(1920, 1080);
         MenuButtonClick.play(); 
        break;
        }
        
        
        
        
    }
  }
}
