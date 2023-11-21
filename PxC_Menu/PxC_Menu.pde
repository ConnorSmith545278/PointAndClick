Menu MainMenu;
boolean menuActive = true;


void setup() {
  fullScreen();
  MainMenu = new Menu();

}



void draw() {
      background(255);//background image
      
  if (menuActive ==true){
      MainMenu.update();
      
      
      if (mouseX > width/2 - 150 && mouseX < width/2 + 150
    && mouseY > height*0.75 - 50 && mouseY < height*0.75 + 50
    && mousePressed == true && mouseButton ==LEFT)
  {
    exit();
  }
  
        if (mouseX > width/2 - 150 && mouseX < width/2 + 150
    && mouseY > height*0.25 - 50 && mouseY < height*0.25 + 50
    && mousePressed == true && mouseButton ==LEFT)
  {
    menuActive = false;
  }

  }
}
