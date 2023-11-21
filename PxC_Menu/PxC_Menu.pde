Menu MainMenu;
Clock Clock1;
PImage BG;
int menuActive;


void setup() {
  fullScreen();
  MainMenu = new Menu();
  Clock1 = new Clock();
  BG = loadImage("Background_Placeholder.png");
  menuActive = 1;
}



void draw() {

  //GAME!!
  if (menuActive == 0) {
    background(255);
    pushMatrix();
    scale(1.4, 1.4);
    image(BG, 0, 0);
    popMatrix();
    Clock1.update();
    
    
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



//GAME OVER Menu
  if (menuActive == 3) {
    background(255);
    textMode(CENTER);
    textSize(90);
    text("GAME OVER!!!", width/2, height/2);
  }
}
