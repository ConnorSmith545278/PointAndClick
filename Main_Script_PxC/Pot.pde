class Pot {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible;
  boolean fillMug = false;
  boolean wantsCoffee = false;
  Pot toDisplay;
  int coffeeVar;
  int Timer;
  




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
    if(wantsCoffee){
      Timer ++;
    }
      if(Timer >= 70){
        NPC_the_guy.posX = 780;
        NPC_the_guy.posY = 470;
        NPC_the_guy.expression = 0;
      }
      if(Timer >= 150){
        asset = pot_empty;
        fillMug = true;
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
        NPC_the_guy.expression = 0;
        wantsCoffee = false;
        Timer = 0;
      }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

  void mouseClicked() {
    if (mouseButton == LEFT &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
     
      Timer = Timer + 5;
      
      
       }
      }
    }
  
