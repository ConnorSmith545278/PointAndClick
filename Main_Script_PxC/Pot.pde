class Pot {
  
  boolean fillMug = false;
  boolean wantsCoffee = false;
  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible;
  int coffeeVar;
  int pot_Timer;
  

    Pot( boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;  
  }

  void show() {
  imageMode(CENTER);
  asset = pot_filled;
    if (NPC_the_guy.expression == 2){
      wantsCoffee = true;
    }
    
    if(wantsCoffee == true){
      pot_Timer ++;
    }
      if(pot_Timer >= 70){
        NPC_the_guy.posX = 780;
        NPC_the_guy.posY = 470;
        NPC_the_guy.expression = 0;
      }
      if(pot_Timer >= 140){
        asset = pot_empty;
        fillMug = true;
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
        NPC_the_guy.expression = 0;
        wantsCoffee = false;
        pot_Timer = 140;
      }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    
  }

  void mouseClicked() {
    if (mouseButton == LEFT &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      
      
      
       }
      }
    }
  
