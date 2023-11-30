class CatButtons {
  float rightposX;
  float rightposY;
  float leftposX;
  float leftposY;
  float middleposX; 
  float middleposY;
  float sizeX = 75f;
  float sizeY = 75f;
  PImage asset = PawPrint;;
  int wait = 80;
  int timeSinceLastClick = wait;
  int jumpTime;

  void show() {
    if (timeSinceLastClick <= wait) {
      timeSinceLastClick++;
    }
    leftposX = 335f;
    leftposY = 220f;
    middleposX = 640f;
    middleposY = 320f;
    rightposX = 970f;
    rightposY = 260f;
    sizeX = 75f;
    sizeY = 75f;

    if (timeSinceLastClick >= wait) {
      imageMode(CENTER);
      switch(Cat.catPosition) {
      case 0:   
        image(asset,middleposX*scaleX, middleposY*scaleY, sizeX*scaleX, sizeY*scaleY);
        break;
      case 1:
        image(asset,rightposX*scaleX, rightposY*scaleY, sizeX*scaleX, sizeY*scaleY);
        image(asset,leftposX*scaleX, leftposY*scaleY, sizeX*scaleX, sizeY*scaleY);
        break;
      case 2:
        image(asset,middleposX*scaleX, middleposY*scaleY, sizeX*scaleX, sizeY*scaleY);
        break;
        
      }
      
    }

  }



  void mouseClicked() {
    if (mouseButton == LEFT  && Cat.catPosition == 2 && timeSinceLastClick >= wait &&
      mouseX < (middleposX+sizeX/2)*scaleX && mouseX > (middleposX-sizeX/2)*scaleX &&
      mouseY < (middleposY+sizeY/2)*scaleY && mouseY > (middleposY-sizeY/2)*scaleY) {



      timeSinceLastClick = 0;
      Cat.catPosition = 6;




      CreateMomentInTime(1, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
      Timer = Timer + 5;
    }
    if (mouseButton == LEFT  && Cat.catPosition == 1 && timeSinceLastClick >= wait &&
      mouseX < (leftposX+sizeX/2)*scaleX && mouseX > (leftposX-sizeX/2)*scaleX &&
      mouseY < (leftposY+sizeY/2)*scaleY && mouseY > (leftposY-sizeY/2)*scaleY) {



      timeSinceLastClick= 0;
      Cat.catPosition = 4;



      CreateMomentInTime(0, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
      Timer = Timer + 5;
    }
    if (mouseButton == LEFT  && Cat.catPosition == 0 && timeSinceLastClick >= wait &&
      mouseX < (middleposX+sizeX/2)*scaleX && mouseX > (middleposX-sizeX/2)*scaleX &&
      mouseY < (middleposY+sizeY/2)*scaleY && mouseY > (middleposY-sizeY/2)*scaleY) {



      timeSinceLastClick= 0;
      Cat.catPosition = 3;



      CreateMomentInTime(1, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
      Timer = Timer + 5;
    }
    if (mouseButton == LEFT  && Cat.catPosition == 1 && timeSinceLastClick >= wait &&
      mouseX < (rightposX+sizeX/2)*scaleX && mouseX > (rightposX-sizeX/2)*scaleX &&
      mouseY < (rightposY+sizeY/2)*scaleY && mouseY > (rightposY-sizeY/2)*scaleY) {



      timeSinceLastClick = 0;
      Cat.catPosition = 5;



      CreateMomentInTime(2, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
      Timer = Timer + 5;
    }
  }
}
