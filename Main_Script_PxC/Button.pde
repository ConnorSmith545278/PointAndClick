class Button {
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  PImage asset;
  int destination;

  Button(PImage ass, float x, float y, float sx, float sy, int des) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
    asset = ass;
    destination = des;
  }

  void show() {
    if (asset != null){
    imageMode(CENTER);
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseX > (posX-sizeX/2)*scaleX && mouseX < (posX+sizeX/2)*scaleX
      && mouseY > (posY-sizeY/2)*scaleY && mouseY < (posY+sizeY/2)*scaleY
      && mouseButton ==LEFT) {
        switch(destination){
        case 0:
          Game.active = true;
          MainMenu.active = false;
          Settings_Menu.active = false;
          menu_Game_over.active = false;
          menu_Clock.active = false;
        break;
        case 1:
          Game.active = false;
          MainMenu.active = true;
          Settings_Menu.active = false;
          menu_Game_over.active = false;
          menu_Clock.active = false;
        break;
        case 2:
          Game.active = false;
          MainMenu.active = false;
          Settings_Menu.active = true;
          menu_Game_over.active = false;
          menu_Clock.active = false;
        break;
        case 3:
          Game.active = false;
          MainMenu.active = false;
          Settings_Menu.active = false;
          menu_Game_over.active = true;
          menu_Clock.active = false;
        break;
        case 9:
        Game.active = false;
        MainMenu.active = false;
        Settings_Menu.active = false;
        menu_Game_over.active = false;
        menu_Clock.active = true;
        break;
        case 10:
        Rewind.update();
        break;
        case 101:
        windowResize(1280, 720);
        break;
        case 102:
        windowResize(1600, 900);
        break;
        case 103:
        windowResize(1920, 1080);
        break;
        }
        
        
        
        
    }
  }
}
