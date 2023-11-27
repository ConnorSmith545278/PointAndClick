class Cat {

  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int expression=0;


  Cat(float x, float y, float sx, float sy) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
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
