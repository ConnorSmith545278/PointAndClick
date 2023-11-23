import java.util.*;


Menu MainMenu;
Clock Clock1;
gameState GameState;


Objects object_mug_empty;
Objects object_mug_filled;
Objects object_mug_spilled;
Objects object_pot_empty;
Objects object_pot_filled;
Objects object_paper_roll_asset;
Objects object_rag_up;
Objects object_rag_down;

Objects object_the_guy_different_expressions_angry;
Objects object_the_guy_transparent;
Objects object_the_guy_wants_coffee;

Objects object_fireanim;

Objects object_toast_crisp;
Objects object_toast_plain;

Objects object_toaster_crisp;
Objects object_toaster_empty;
Objects object_toaster_wtoast;



PImage BG;

PImage mug_empty;
PImage mug_filled;
PImage mug_spilled;

PImage pot_empty;
PImage pot_filled;

PImage paper_roll_asset;

PImage rag_up;
PImage rag_down;

PImage the_guy_different_expressions_angry;
PImage the_guy_transparent;
PImage the_guy_wants_coffee;

PImage fireanim;

PImage toast_crisp;
PImage toast_plain;

PImage toaster_crisp;
PImage toaster_empty;
PImage toaster_wtoast;

PImage clock;
PImage clock_one;
PImage clock_two;
PImage clock_three;
PImage clock_four;
PImage clock_five;
PImage clock_six;
PImage clock_seven;
PImage clock_eight;
PImage clock_nine;

PImage thepaw_32x32_png;






int menuActive;
boolean clockVisible = true;

public float scaleX;
public float scaleY;

int oldmillis;
int deltaTime;


int getDeltaTime() {
  deltaTime = millis()-oldmillis;
  oldmillis = millis();
  return deltaTime;
}





void setup() {
  size(1280, 720, P2D);
  MainMenu = new Menu();


  BG = loadImage("Background_Placeholder.png");
  mug_empty = loadImage("mug_empty.png");
  mug_filled = loadImage("mug_filled.png");
  mug_spilled = loadImage("mug_spilled.png");
  pot_empty = loadImage("pot_empty.png");
  pot_filled = loadImage("pot_filled.png");
  paper_roll_asset = loadImage("paper_roll_asset.png");
  rag_up = loadImage("rag_up.png");
  rag_down = loadImage("rag_down.png");
  the_guy_different_expressions_angry = loadImage("the_guy_different_expressions_angry.png");
  the_guy_transparent = loadImage("the_guy_transparent.png");
  the_guy_wants_coffee = loadImage("the_guy_wants_coffee.png");


  clock = loadImage("clock.png");
  clock_one = loadImage("clock_one.png");
  clock_two = loadImage("clock_two.png");
  clock_three = loadImage("clock_three.png");
  clock_four = loadImage("clock_four.png");
  clock_five = loadImage("clock_five.png");
  clock_six = loadImage("clock_six.png");
  clock_seven = loadImage("clock_seven.png");
  clock_eight = loadImage("clock_eight.png");
  clock_nine = loadImage("clock_nine.png");

  fireanim = loadImage("fireanim.gif");

  thepaw_32x32_png = loadImage("thepaw_32x32_png.png");

  toast_plain = loadImage("toast_plain.png");

  toaster_crisp = loadImage("toaster_crisp.png");
  toaster_empty = loadImage("toaster_empty.png");
  toaster_wtoast = loadImage("toaster_wtoast.png");

  cursor(thepaw_32x32_png);


  Clock1 = new Clock();

  //imageMode(CENTER);
  //Objects(PImage, clickAble, posX, posY, width, height, visible)
  object_the_guy_transparent =                       new Objects(the_guy_transparent,                 false, 640f, 360f, 900f, 900f, true);
  object_the_guy_different_expressions_angry =       new Objects(the_guy_different_expressions_angry, false, 604f, 360f, 900f, 900f, false);
  object_the_guy_wants_coffee =                      new Objects(the_guy_wants_coffee,                false, 640f, 360f, 900f, 900f, false);

  object_mug_empty =                                 new Objects(mug_empty,                           false, 640f, 360f, 900f, 900f, true);
  object_mug_filled  =                               new Objects(mug_filled,                          false, 640f, 360f, 900f, 900f, true);
  object_mug_spilled  =                              new Objects(mug_spilled,                         false, 640f, 360f, 900f, 900f, true);

  object_pot_empty  =                                new Objects(pot_empty,                           false, 640f, 360f, 900f, 900f, true);
  object_pot_filled  =                               new Objects(pot_filled,                          false, 640f, 360f, 900f, 900f, true);

  object_paper_roll_asset  =                         new Objects(paper_roll_asset,                    false, 640f, 360f, 900f, 900f, true);

  object_rag_up  =                                   new Objects(rag_up,                              false, 640f, 360f, 900f, 900f, true);
  object_rag_down  =                                 new Objects(rag_down,                            false, 640f, 360f, 900f, 900f, true);

  object_fireanim =                                  new Objects(fireanim,                            false, 640f, 360f, 900f, 900f, true);


  object_the_guy_transparent.toDisplay = object_the_guy_wants_coffee;



  menuActive = 0;
}

void mousePressed() {
  object_the_guy_transparent.mousePressed();
}

void draw() {


  scaleX = width/1280f;
  scaleY = height/720f;
  getDeltaTime();

  //GAME!!
  if (menuActive == 0 && clockVisible) {

    background(255);
    imageMode(CORNER);
    image(BG, 0, 0, width, height);


    object_the_guy_transparent.update();
    object_the_guy_different_expressions_angry.update();
    object_the_guy_wants_coffee.update();


    object_mug_empty.update();
    object_mug_filled.update();
    object_mug_spilled.update();

    object_pot_empty.update();
    object_pot_filled.update();

    object_paper_roll_asset.update();

    object_rag_up.update();
    object_rag_down.update();

    object_fireanim.update();


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
