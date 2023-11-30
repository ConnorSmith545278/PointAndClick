class Rag {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int ragVar;
  boolean visible = true;
  boolean ragUp = true;
  int ragTimer;
  boolean spilled = false;


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
      break;
    case 1:
      ragTimer ++;
      animation = true;
      asset = rag_down;
      ragUp = true;
      if (ragTimer >=30) {
        NPC_the_guy.posX = 380;
        NPC_the_guy.posY = 360;
      }
      if (ragTimer >=45) {
        animation = false;
        ragVar = 0;
        ragTimer = 0;
      }
      
    case 3:
      ragTimer ++;
        ragUp = true;
        animation = true;
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
        visible = false;
        spilled = false;
        clickAble = false;
        ragUp = false;
        pot.fillMug = false;
      }   
      if (ragTimer >= 120) {
        NPC_the_guy.posX = NPC_the_guy.startPosX;
        NPC_the_guy.posY = NPC_the_guy.startPosY;
        ragVar = 0;
        animation = false;
        ragTimer = 0;
        mug.spillMug = false;
      }
    }




    if (visible) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseButton == LEFT && (mug.asset == mug_empty || mug.asset == mug_filled) && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY && !animation) {
        if(!CatMeow.isPlaying()){
          CatMeow.play();
        }
      ragVar = 1;
      Timer = Timer + 5;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
    }
  }
}
