class Pan {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset = pan_empty;
  float sizeX;
  float sizeY;
  int cookTimer;
  boolean cookingEggs = false;



  Pan(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    if (Timer >=25 && mug.mugActive == false && coffee_Beans.coffeeActive == false &&  !cookingEggs) {
      cookTimer ++;
      NPC_the_guy.expression = 4;
      if (cookTimer >= 30) { 
        asset = pan_eggs;
        NPC_the_guy.posX=400;
        NPC_the_guy.posY=360;
      }
      if (cookTimer >= 80) {
        cookingEggs = true;       
        NPC_the_guy.expression = 0;
        cookTimer = 0;
      }
    }

    imageMode(CENTER);
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }
}
