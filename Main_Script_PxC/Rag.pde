class Rag {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean ragMove = false;
  int ragTimer;
  boolean onFire = false;


  Rag(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    asset = rag_up;

    if (ragMove) {
      animation = true;
      asset = rag_down;
      ragTimer ++;
      if (ragTimer >=30) {
        NPC_the_guy.posX = 380;
        NPC_the_guy.posY = 360;
      }
      if (ragTimer >=45) {
        ragTimer = 0;
        ragMove = false;
        animation = false;
      }
    }


    if (mug.spillMug && !onFire) {
      animation = true;
      ragTimer ++;
      if (ragTimer >=30) {
        NPC_the_guy.posX = 380;
        NPC_the_guy.posY = 360;
      }
      if (ragTimer >=60) {
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
        posX = 600;
        posY = 350;
        asset = rag_down;
      }
      if (ragTimer >=75) {
        posX = 600;
        posY = 365;
      }
      if (ragTimer >=110) {
        posX = 600;
        posY = 350;
        mug.cleaned = true;
        clickAble = false;
        posX = 205;
        posY = 260;
        pot.fillMug = false;
      }
      if (ragTimer >= 120) {
        NPC_the_guy.posX = NPC_the_guy.startPosX;
        NPC_the_guy.posY = NPC_the_guy.startPosY;
        animation = false;
        ragTimer = 0;
        mug.spillMug = false;
      }
    }

    if (clickAble) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseButton == LEFT  && clickAble && !animation && !onFire &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      if (!CatMeow.isPlaying()) {
        CatMeow.play();
      }
      ragMove = true;

      Timer = Timer + 5;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
    }
  }
}
