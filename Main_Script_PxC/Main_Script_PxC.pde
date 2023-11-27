import java.util.*;

Menu Game;
Menu MainMenu;
Menu Settings_Menu;
Menu menu_Game_over;
Menu menu_Clock;

Button button_Play;
Button button_Settings;
Button button_Exit;
Button button_Main_menu;
Button button_Clock;

Button button_Settings_size1;
Button button_Settings_size2;
Button button_Settings_size3;

Clock Clock1;
gameState GameState;

Mug object_mug_empty;
Mug object_mug_filled;
Mug object_mug_spilled;

Pot object_pot_empty;
Pot object_pot_filled;

Paper_roll object_paper_roll_asset;
Paper_roll object_paper_roll_asset_rotate;

Rag object_rag_up;
Rag object_rag_down;

NPC NPC_the_guy;

Fire object_fireanim;

Toast object_toast_crisp;
Toast object_toast_plain;

Toaster object_toaster_crisp;
Toaster object_toaster_empty;
Toaster object_toaster_wtoast;

Pan object_pan;
Pan object_pan_eggs;



PImage BG;

PImage mug_empty;
PImage mug_filled;
PImage mug_spilled;

PImage pot_empty;
PImage pot_filled;

PImage paper_roll_asset;
PImage paper_roll_asset_rotate;

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

PImage pan;
PImage pan_eggs;

PImage clock;
PImage clock_zero;
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

boolean clockVisible;
boolean timerActive;

public float scaleX;
public float scaleY;

int oldmillis;
int deltaTime;
int Timer;






int getDeltaTime() {
  deltaTime = millis()-oldmillis;
  oldmillis = millis();
  return deltaTime;
}





void setup() {
  size(1280, 720, P2D);
  BG = loadImage("Background_Placeholder.png");
  mug_empty = loadImage("mug_empty.png");
  mug_filled = loadImage("mug_filled.png");
  mug_spilled = loadImage("mug_spilled.png");

  pot_empty = loadImage("pot_empty.png");
  pot_filled = loadImage("pot_filled.png");

  paper_roll_asset = loadImage("paper_roll_asset.png");
  paper_roll_asset_rotate = loadImage("paper_roll_asset_rotate.png");

  rag_up = loadImage("rag_up.png");
  rag_down = loadImage("rag_down.png");

  the_guy_different_expressions_angry = loadImage("the_guy_different_expressions_angry.png");
  the_guy_transparent = loadImage("the_guy_transparent.png");
  the_guy_wants_coffee = loadImage("the_guy_wants_coffee.png");


  clock = loadImage("clock.png");
  clock_zero =loadImage("clock_zero.png");
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

  toast_crisp = loadImage("toast_crisp.png");
  toast_plain = loadImage("toast_plain.png");

  toaster_crisp = loadImage("toaster_crisp.png");
  toaster_empty = loadImage("toaster_empty.png");
  toaster_wtoast = loadImage("toaster_wtoast.png");

  pan = loadImage("pan.png");
  pan_eggs = loadImage("pan_eggs.png");

  cursor(thepaw_32x32_png);


  Clock1 = new Clock();

  //NPC(posX, posY, width, height)
  NPC_the_guy =                          new NPC(380f, 360f, 400f, 400f);



  //Objects(PImage, clickAble, posX, posY, width, height, visible)
  object_mug_empty =                                 new Mug(mug_empty, false, 620f, 360f, 100f, 100f, true);
  object_mug_filled  =                               new Mug(mug_filled, false, 620f, 360f, 100f, 100f, false);
  object_mug_spilled  =                              new Mug(mug_spilled, false, 620f, 360f, 100f, 100f, false);


  object_mug_empty.toDisplay = object_mug_filled;
  object_mug_filled.toDisplay = object_mug_spilled;


  object_pot_empty  =                                new Pot(pot_empty, false, 680f, 420f, 100f, 100f, true);
  object_pot_filled  =                               new Pot(pot_filled, false, 680f, 420f, 100f, 100f, false);


  object_paper_roll_asset  =                         new Paper_roll(true, 1080f, 450f, 100f, 100f);


  object_rag_up  =                                   new Rag(rag_up, true, 280f, 263f, 150f, 150f, true);
  object_rag_down  =                                 new Rag(rag_down, false, 280f, 263f, 150f, 150f, false);

  object_rag_up.toDisplay = object_rag_down;
 

  object_fireanim =                                  new Fire(fireanim, false, 640f, 360f, 100f, 100f, false);

  object_toast_crisp =                               new Toast(toast_crisp, false, 280f, 263f, 150f, 150f, false);
  object_toast_plain =                               new Toast(toast_plain, false, 280f, 263f, 150f, 150f, false);

  object_toaster_empty =                             new Toaster(toaster_empty, false, 280f, 263f, 150f, 150f, false);
  object_toaster_crisp =                             new Toaster(toaster_crisp, false, 280f, 263f, 150f, 150f, false);
  object_toaster_wtoast =                            new Toaster(toaster_wtoast, false, 280f, 263f, 150f, 150f, false);


  object_pan =                                       new Pan(pan, false, 280f, 363f, 150f, 150f, true);
  object_pan_eggs =                                  new Pan(pan_eggs, false, 280f, 363f, 150f, 150f, false);


  button_Play =                                      new Button("play",     width/2, height*0.25, 200, 100, 0);
  button_Main_menu =                                 new Button("Main menu",150,     height-75,   300, 150, 1);
  button_Settings =                                  new Button("Settings", width/2, height*0.5,  200, 100, 2);
  button_Exit =                                      new Button("Quit",     width/2, height*0.75, 200, 100, 3);
  button_Clock =                                     new Button("clock",    width - 150, height - 75, 300, 150, 9);
  
  
  button_Settings_size1 =                            new Button("1280X720", 200, 200, 100, 100, 101);
  button_Settings_size2 =                            new Button("1600X900", 300, 300, 100, 100, 102);
  button_Settings_size3 =                            new Button("1920X1080", 400, 400, 100, 100, 103);
  
  Game =                                             new Menu(0, false);
  MainMenu =                                         new Menu(1, true);
  Settings_Menu =                                    new Menu(2, false);
  menu_Game_over=                                    new Menu(3, false);
  menu_Clock =                                       new Menu(9, false);
  
}

void mouseClicked() {
println(width,height, mouseX, mouseY);

}

void draw() {

  scaleX = width/1280f;
  scaleY = height/720f;
  getDeltaTime();
  
  
  Game.show();
  Game.mouseClicked();
  MainMenu.show();
  MainMenu.mouseClicked();
  Settings_Menu.show();
  Settings_Menu.mouseClicked();
  menu_Game_over.show();
  menu_Game_over.mouseClicked();
  menu_Clock.show();
  menu_Clock.mouseClicked();
  
}
