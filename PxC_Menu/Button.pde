class Button {
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  PImage asset;
  String text;
  int destination;

  Button(String txt, float x, float y, float sx, float sy, int des) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
    text = txt;
    destination = des;
  }

  void show() {
    noFill();
    rectMode(CENTER);
    strokeWeight(5);
    rect(posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    fill(0);
    textSize(80);
    textAlign(CENTER, CENTER);
    text(text, posX*scaleX, posY*scaleY);
  }

  void mouseClicked() {
    if (mouseX > (posX-sizeX/2)*scaleX && mouseX < (posX+sizeX/2)*scaleX
      && mouseY > (posY-sizeY/2)*scaleY && mouseY < (posY+sizeY/2)*scaleY
      && mouseButton ==LEFT) {
        println("working button");
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
        }
        
        
        
        
    }
  }
}
