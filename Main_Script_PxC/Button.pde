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
    if (asset != null) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseX > (posX-sizeX/2)*scaleX && mouseX < (posX+sizeX/2)*scaleX
      && mouseY > (posY-sizeY/2)*scaleY && mouseY < (posY+sizeY/2)*scaleY
      && mouseButton ==LEFT  && !animation) {
      switch(destination) {
      case 0:
        Menumanager.menu = 0;
        MenuButtonClick.play();
        menuMusic.stop();
        if (!gameMusic.isPlaying()) {
          gameMusic.play();
        }
        break;
      case 1:
        Menumanager.menu = 1;
        MenuButtonClick.play();
        gameMusic.stop();
        if (!menuMusic.isPlaying()) {
          menuMusic.play();
        }
        break;
      case 2:
        Menumanager.menu = 2;
        MenuButtonClick.play();
        break;
      case 3:
        exit();
        break;
      case 9:
        Menumanager.menu = 9;
        f = 0;
        break;
      case 10: //resume
        for (int i=f; i>0; i--) {
          Rewind.update();
          if (!TimeReverse.isPlaying()) {
            TimeReverse.play();
          }
        }
        Menumanager.menu = 0;
        break;
      case 11: //backwards
        if (f < timeStack.size() - 1) {
          f++;
          Timer -= 5;
        }
        println(f + " backwards");
        break;
      case 12: //forwards
        if (f != 0) {
          f--;
          Timer += 5;
        }
        println(f + " forwards");
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
