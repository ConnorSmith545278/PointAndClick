class Paper_roll {

  boolean clickAble;
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  PImage asset;
  int Paperrollvar = 0;
  int count = 90;

  Paper_roll(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    imageMode(CENTER);
    switch(Paperrollvar) {
    case 0:
      asset = paper_roll_asset;
      posX = 1050;
      posY = 390;
      break;
    case 1:
      asset = paper_roll_asset_rotate;
      posX = 920;
      posY = 570;
      if (count >= 30) {
        Paperrollvar = 2;
      }
      break;
    case 2:
      asset = paper_roll_asset_rotate;
      NPC_the_guy.posX = 850;
      NPC_the_guy.posY = 470;
      NPC_the_guy.expression = 1;
      if (count >= 60) {
        Paperrollvar = 3;
      }
      break;
    case 3:
      posX = 1080;
      posY = 170;
      asset = paper_roll_asset;
      NPC_the_guy.expression = 2;
    }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }


  void mouseClicked() {
    if (mouseButton == LEFT && clickAble == true &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      clickAble = false;
      Paperrollvar=1;
      Timer = Timer + 5;
      count = 0;
    }
  }

  void countDown() {
    if (count < 60) {
      count++;
      println(count);
    }
  }
}
