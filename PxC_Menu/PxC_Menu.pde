Menu MainMenu;
PImage BG;

int menuActive = 1;


void setup() {
  fullScreen();
  MainMenu = new Menu();
  BG = loadImage("Background_Placeholder.png");
}



void draw() {

  //GAME!!
  if (menuActive == 0) {
    background(255);
    pushMatrix();
    scale(1.4, 1.4);
    image(BG, 0, 0);
    popMatrix();
  }


  //Main Menu
  if (menuActive == 1) {
    background(255);
    MainMenu.update();

    //Exit button
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150
      && mouseY > height*0.75 - 50 && mouseY < height*0.75 + 50
      && mousePressed == true && mouseButton ==LEFT)
    {
      exit();
    }

    //Play button
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150
      && mouseY > height*0.25 - 50 && mouseY < height*0.25 + 50
      && mousePressed == true && mouseButton ==LEFT)
    {
      menuActive = 0;
    }
    //Settings button
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150
      && mouseY > height*0.50 - 50 && mouseY < height*0.50 + 50
      && mousePressed == true && mouseButton ==LEFT)
    {
      menuActive = 2;
    }
  }

  //settings Menu
  if (menuActive ==2) {
    background(255);
  }
}
