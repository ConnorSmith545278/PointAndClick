class Pot {

  boolean fillMug = false;
  boolean wantsCoffee = false;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int coffeeVar;
  int pot_Timer;


  Pot(float x, float y, float sx, float sy) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    imageMode(CENTER);
    asset = pot_empty;
    if (NPC_the_guy.expression == 2) {
      wantsCoffee = true;
    }

    if (wantsCoffee == true) {
      pot_Timer ++;
    }
    if (pot_Timer >= 70) {
      NPC_the_guy.posX = 780;
      NPC_the_guy.posY = 470;
      NPC_the_guy.expression = 0;
      asset = pot_filled;
    }
    if (pot_Timer >= 140) {
      asset = pot_empty;
      fillMug = true;
      NPC_the_guy.posX = 500;
      NPC_the_guy.posY = 400;
      wantsCoffee = true;
    }
    if (pot_Timer >= 180) {
      animation = false;
      NPC_the_guy.posX = NPC_the_guy.startPosX;
      NPC_the_guy.posY = NPC_the_guy.startPosY;
      pot_Timer = 0;
      wantsCoffee = false;
    }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }
}
