class NPC {


  float startPosX = 400f;
  float startPosY = 360f;
  float posX = startPosX;
  float posY = startPosY;
  PImage asset;
  float size = 400f;
  int expression = 0;
  int NPCTimer = 0;




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
    case 7:
      asset = the_guy_reachingforsaltandpeper_png;
      break;
    }


    if (Timer >= 60 && (!Salt.saltFallen || !Pepper.pepperFallen)) {
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
        expression = 7;
        break;
      }
      if (Timer >= 65) {
        expression = 6;
        Menumanager.gameOverType = 1;
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
        Menumanager.gameOverType = 1;
        Menumanager.menu = 3;
        break;
      }
    }


    image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
  }
}
