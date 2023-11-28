class Mug {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int mugVar;
  int mugTimer;
  boolean visible;
  boolean spillMug = false;
  boolean cleaned = false;
  boolean mugActive = false;



  Mug(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    clickAble=click;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    if (!spillMug) {
      asset = mug_empty;

      if (pot.fillMug) {
        asset = mug_filled;
        pot.asset = pot_empty;
        NPC_the_guy.expression = 0;
      }
    }

    if (spillMug) {
      asset = mug_spilled;
      rag.spilled = true;
    }


    if (mugVar == 1) {
      asset = mug_empty_rotated;
      mugTimer ++;
      mugActive = true;
      if (mugTimer >= 30) {
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
       
        
        
        mugActive = true;
      }
      if(mugTimer >=60){
        asset = mug_empty;
        mugActive = false;
        mugTimer = 0;
        mugVar=0;
      }
    }


    if (rag.ragTimer >= 110) {
      clickAble = false;
      asset = mug_empty;
    }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

  void mouseClicked() {
    if (mouseButton == LEFT  && asset == mug_filled && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      spillMug = true;
      Timer = Timer + 5;
    }
    if (mouseButton == LEFT  && asset == mug_empty && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      mugVar = 1;
      Timer = Timer + 5;
    }
  }
}
