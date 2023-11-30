class Rag {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int ragVar;
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
    if (mug.spillMug && !onFire) {
      ragVar = 3;
      animation = true;
    }

    switch(ragVar) {
    case 0:
      asset = rag_up;
      break;
    case 1:
    
      ragTimer ++;
      
      asset = rag_down;
      
      if (ragTimer >=30) {
        NPC_the_guy.posX = 380;
        NPC_the_guy.posY = 360;
      }
      
      if (ragTimer >=45) {
        ragVar = 0;
        ragTimer = 0;
        animation = false;
      }
      
    case 3:
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
        ragVar = 0;
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
        if(!CatMeow.isPlaying()){
          CatMeow.play();
        }
        
        
      ragVar = 1;
      animation = true;
      
      
      Timer = Timer + 5;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
    }
  }
}
