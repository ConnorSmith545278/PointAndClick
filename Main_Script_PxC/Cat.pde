class Cat {

  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int expression=0;
  int catPosition = 1;


  Cat(float x, float y, float sx, float sy) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    switch(catPosition){
      case 0:
      posX = 335f;
      posY = 220f;
      break;
      case 1:
      posX = 640f;
      posY = 320f;
      break;
      case 2:
      posX = 970f;
      posY = 260f;
      break;
    }
    switch(expression) {
    case 0:
      asset = the_cat_sitting_transparent;
      break;
    case 1:
      asset = the_cat_paw_up_tiltedhead_transparent;
      break;
    }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }
  
  
  
  
  void mouseClicked(){
   if (expression == 0){
    expression = 1; 
   } else {
    expression = 0; 
   }
    
  }
}
