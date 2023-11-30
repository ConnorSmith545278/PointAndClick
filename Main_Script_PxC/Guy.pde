class NPC {


  float startPosX;
  float startPosY;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int expression;
  int NPCTimer = 0;


  NPC(float x, float y, float sx, float sy) {
    startPosX = x;
    posX = x;
    startPosY = y;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }


  void show() {
    imageMode(CENTER);
    switch(expression) {
    case 0:
      asset = the_guy_transparent;
      break;
    case 1:
      asset = the_guy_different_expressions_angry;
      break;
    case 2:
      asset = the_guy_wants_coffee;
      break;
    case 3:
      asset = the_guy_panic_transparent;
      break;
    case 4:
      asset = the_guy_wantsegg;
      break;
    case 5:
      asset = the_guy_handsout_png;
      break;
    case 6:
      asset = the_guy_falling_png;
      break;
    }


    if (Timer >= 65 && (!Salt.saltFallen || !Pepper.pepperFallen)) {
      NPCTimer++;
      switch (NPCTimer) {
      case 30:
        posX = 790;
        posY = 500;
        break;
      case 60:
        posX = 800;
        posY = 260;
        break;
      case 90:
        expression = 5;
        break;
      }
      if (Timer >= 65) {
        expression = 6;
        NPCTimer = 0;
        Menumanager.menu = 3;
      }
    }


    if (Timer >= 40 && !toaster.toaster_off && Menumanager.menu != 3) {
      NPCTimer++;
      switch (NPCTimer) {
      case 30:
        posX = 790;
        posY = 500;
        break;
      case 60:
        posX = 800;
        posY = 260;
        break;
      case 90:
        expression = 5;
        break;
      case 120:
        expression = 6;
        NPCTimer = 0;
        Menumanager.menu = 3;
        break;
      }
    }


    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }
}
