Menu MainMenu;
Clock Clock1;
gameState GameState;
Objects object_the_guy_transparent;







PImage BG;
PImage coffee_mug_empty;
PImage coffee_mug_filled;
PImage coffee_mug_spilled;
PImage coffee_pot_asset;
PImage coffee_pot_with_coffee_asset;
PImage paper_roll_asset;
PImage rag_hung_up_asset;
PImage rag_laid_asset;

PImage the_guy_different_expressions_angry;
PImage the_guy_transparent;
PImage the_guy_wants_coffee;

int menuActive;
boolean clockVisible = true;

public float scaleX;
public float scaleY;

int oldmillis;
int deltaTime;


 int getDeltaTime(){
 deltaTime = millis()-oldmillis;
 oldmillis = millis();
 return deltaTime; 
  
}





void setup() {
  size(1280, 720, P2D);
  MainMenu = new Menu();

  BG = loadImage("Background_Placeholder.png");
  coffee_mug_empty = loadImage("coffee_mug_empty.png");
  coffee_mug_filled = loadImage("coffee_mug_filled.png");
  coffee_mug_spilled = loadImage("coffee_mug_spilled.png");
  coffee_pot_asset = loadImage("coffee_pot_asset.png");
  coffee_pot_with_coffee_asset = loadImage("coffee_pot_with_coffee_asset.png");
  paper_roll_asset = loadImage("paper_roll_asset.png");
  rag_hung_up_asset = loadImage("rag_hung_up_asset.png");
  rag_laid_asset = loadImage("rag_laid_asset.png");
  the_guy_different_expressions_angry = loadImage("the_guy_different_expressions_angry.png");
  the_guy_transparent = loadImage("the_guy_transparent.png");
  the_guy_wants_coffee = loadImage("the_guy_wants_coffee.png");



  Clock1 = new Clock();
  object_the_guy_transparent = new Objects(the_guy_transparent, false, 640f, 360f, 900f, 900f);









  menuActive = 1;
}



void draw() {


  scaleX = width/1280f;
  scaleY = height/720f;
  println(scaleX, scaleY);
getDeltaTime();

  //GAME!!
  if (menuActive == 0 && clockVisible) {

    background(255);
    imageMode(CORNER);
    image(BG, 0, 0, width, height);


    object_the_guy_transparent.update();
    Clock1.update();
    Clock1.show();
    Clock1.mousePressed();
  } else if (menuActive == 0 && !clockVisible) {

    background(255);
    imageMode(CORNER);
    image(BG, 0, 0, width, height);

    Clock1.show();
    Clock1.mousePressed();
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
