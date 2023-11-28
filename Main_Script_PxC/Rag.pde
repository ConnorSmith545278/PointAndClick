class Rag {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int ragVar;
  boolean visible;
  boolean showAsset = true;
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
    if(mug.spillMug){
      ragVar = 3;
    }
    
    if (ragVar == 0) {
      asset = rag_up;
      ragUp = true;
    }
    
    if (ragVar == 1) {
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
    }
    
    
    if (ragVar == 3) {
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
        showAsset = false;
        spilled = false;
        ragActive = true;
        clickAble = false;
        ragUp = false;
        
      }
      if ( ragTimer >= 120){
        ragActive = false;
        ragVar = 0;
      }
    }



    if (showAsset == true) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
    
  }

  void mouseClicked() {
    if (mouseButton == LEFT && !spilled && clickAble == true &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      ragVar = 1;
      Timer = Timer + 5;
    }
  }
}
