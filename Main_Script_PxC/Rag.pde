class Rag {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int ragVar;
  boolean visible = true;
  boolean ragUp;
  int ragTimer;
  boolean spilled = false;
  boolean ragActive = false;


  Rag(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    if (mug.spillMug) {
      ragVar = 3;
    }

    switch(ragVar) {
    case 0:
      asset = rag_up;
      ragUp = true;
      break;
    case 1:
      ragTimer ++;
      ragActive = true;
      asset = rag_down;
      ragUp = true;

      if (ragTimer >=30) {
        NPC_the_guy.posX = 380;
        NPC_the_guy.posY = 360;
        ragUp = true;
        ragActive = true;
      }

      if (ragTimer >=45) {
        ragVar = 0;
        ragTimer = 0;
        ragUp = true;
        ragActive = false;
      }
    case 3:
      ragTimer ++;
      if (ragTimer >=30) {
        NPC_the_guy.posX = 380;
        NPC_the_guy.posY = 360;
        ragUp = true;
        ragActive = true;
      }
      if (ragTimer >=60) {
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
        posX = 600;
        posY = 350;
        asset = rag_down;
        ragUp = true;
        ragActive = true;
      }
      if (ragTimer >=75) {
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
        posX = 600;
        posY = 365;
        asset = rag_down;
        ragUp = true;
        ragActive = true;
      }
      if (ragTimer >=110) {
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
        posX = 600;
        posY = 350;
        mug.cleaned = true;
        visible = false;
        spilled = false;
        ragActive = true;
        clickAble = false;
        ragUp = false;
      }
      if (ragTimer >= 120) {
        ragActive = false;
        ragTimer = 0;
        ragVar = 0;
        mug.spillMug = false;
      }
    }




    if (visible) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseButton == LEFT && mug.asset == mug_spilled && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      ragVar = 1;
      Timer = Timer + 5;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
    }
  }
}
