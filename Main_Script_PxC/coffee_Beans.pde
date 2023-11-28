class coffee_Beans {

  boolean visible = true;
  boolean clickAble;
  boolean coffeeActive = false;
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  PImage asset;
  int Paperrollvar = 0;
  int count = 90;


  coffee_Beans(boolean click, float x, float y, float sx, float sy) {
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
      asset = coffee_beans;
      break;
    case 1:
      asset = coffee_beans_spilled;
      posX = 920;
      posY = 570;
      if (count >= 30) {
        coffeeActive = true;
        Paperrollvar = 2;
      }
      break;
    case 2:
      asset = coffee_beans_spilled;
      NPC_the_guy.posX = 850;
      NPC_the_guy.posY = 470;
      if (count >= 60) {
      coffeeActive = true;
        Paperrollvar = 3;
      }
      break;
    case 3:
      posX = 1050;
      posY = 390;
      asset = coffee_beans;
      visible = false;
      coffeeActive = true;
      NPC_the_guy.expression = 2;
      if (count >= 150) {
        coffeeActive = false;
        NPC_the_guy.expression = 0;
        count = 150;
        break;
      }
    }
    if (visible){
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      clickAble = false;
      Paperrollvar=1;
      Timer = Timer + 5;
      count = 0;
    }
  }

  void countDown() {
    if (count < 150) {
      count++;
    }
  }
}
