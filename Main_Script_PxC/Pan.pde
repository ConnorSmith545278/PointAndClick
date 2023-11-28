class Pan {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible;
  boolean Cooking;
  int cookTimer;




  Pan(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
    
  }

  void show() {
      asset = pan_empty;
      if(Clock1.tenclock == 2 && mug.mugActive == false && rag.ragActive == false){
        cookTimer ++;
        NPC_the_guy.expression = 4;
        if(cookTimer >= 30){
          NPC_the_guy.posX=400;
        NPC_the_guy.posY=360;
        }
        if(cookTimer >= 60){
          asset = pan_eggs;
          cookTimer = 60;
          Cooking = true;
        }
       
       
     
      }
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble == true && visible == true &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      clickAble = false;
      visible = false;
      Timer = Timer + 5;
       }
      }
    }
  
