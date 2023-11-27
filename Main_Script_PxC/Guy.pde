class NPC {

  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible;
  NPC NPCtoDisplay;
  float i;
  float j;
  boolean moveable;


  NPC(PImage image_name, float x, float y, float sx, float sy, boolean pVisible, boolean move) {
    posX = x;
    posY = y;
    asset = image_name;
    sizeX = sx;
    sizeY = sy;
    visible = pVisible;
    moveable = move;
  }


  void show() {

    imageMode(CENTER);

    if (visible == true) {
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
    
    if (this == NPC_the_guy_transparent && object_paper_roll_asset_rotate.visible && moveable) {
      visible = false;
      moveable = false;
      NPCtoDisplay.visible = true;
    }
    if (this == NPC_the_guy_different_expressions_angry && object_rag_down.visible) {
      visible = false;

      NPC_the_guy_transparent.visible = true;
      
      
      
    }
    
    
    
    
  }
}
