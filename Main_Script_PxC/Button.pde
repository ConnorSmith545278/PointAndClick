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
          Menumanager.menu = 0;
        break;
        case 1:
          Menumanager.menu = 1;
        break;
        case 2:
          Menumanager.menu = 2;
        break;
        case 3:
          Menumanager.menu = 3;
        break;
        case 9:
          Menumanager.menu = 9;
        break;
        case 10:
        Rewind.update();
        break;
        case 101:
        windowResize(1280, 720);
        break;
        case 102:
        windowResize(1600, 900);
        break;
        case 103:
        windowResize(1920, 1080);
        break;
        }
        
        
        
        
    }
  }
}
