import java.util.*;

Menu Game;
Menu MainMenu;
Menu Settings_Menu;
Menu menu_Game_over;
Menu Clock;

Button button_Play;
Button button_Settings;
Button button_Exit;
Button button_Main_menu;

Clock Clock1;
gameState GameState;


Objects object_mug_empty;
Objects object_mug_filled;
Objects object_mug_spilled;

Objects object_pot_empty;
Objects object_pot_filled;

Objects object_paper_roll_asset;
Objects object_paper_roll_asset_rotate;

Objects object_rag_up;
Objects object_rag_down;

NPC NPC_the_guy_different_expressions_angry;
NPC NPC_the_guy_transparent;
NPC NPC_the_guy_wants_coffee;

Objects object_fireanim;

Objects object_toast_crisp;
Objects object_toast_plain;

Objects object_toaster_crisp;
Objects object_toaster_empty;
Objects object_toaster_wtoast;

Objects object_pan;
Objects object_pan_eggs;



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

  //NPC(PImage, posX, posY, width, height, visible)
  NPC_the_guy_transparent =                          new NPC(the_guy_transparent, 380f, 360f, 400f, 400f, true, true);
  NPC_the_guy_different_expressions_angry =          new NPC(the_guy_different_expressions_angry, 800f, 550f, 400f, 400f, false, true);
  NPC_the_guy_wants_coffee =                         new NPC(the_guy_wants_coffee, 800f, 360f, 400f, 400f, false, false);

  NPC_the_guy_transparent.NPCtoDisplay = NPC_the_guy_different_expressions_angry;
  NPC_the_guy_different_expressions_angry.NPCtoDisplay = NPC_the_guy_wants_coffee;
  NPC_the_guy_wants_coffee.NPCtoDisplay = NPC_the_guy_transparent;


  //Objects(PImage, clickAble, posX, posY, width, height, visible)
  object_mug_empty =                                 new Objects(mug_empty, false, 620f, 360f, 100f, 100f, true);
  object_mug_filled  =                               new Objects(mug_filled, false, 620f, 360f, 100f, 100f, false);
  object_mug_spilled  =                              new Objects(mug_spilled, false, 620f, 360f, 100f, 100f, false);


  object_mug_empty.toDisplay = object_mug_filled;
  object_mug_filled.toDisplay = object_mug_spilled;


  object_pot_empty  =                                new Objects(pot_empty, false, 680f, 420f, 100f, 100f, true);
  object_pot_filled  =                               new Objects(pot_filled, false, 680f, 420f, 100f, 100f, false);


  object_paper_roll_asset  =                         new Objects(paper_roll_asset, true, 1080f, 450f, 100f, 100f, true);
  object_paper_roll_asset_rotate =                   new Objects(paper_roll_asset_rotate, false, 880f, 650f, 100f, 100f, false);

  object_paper_roll_asset.toDisplay = object_paper_roll_asset_rotate;

  object_rag_up  =                                   new Objects(rag_up, true, 280f, 263f, 150f, 150f, true);
  object_rag_down  =                                 new Objects(rag_down, false, 280f, 263f, 150f, 150f, false);

  object_rag_up.toDisplay = object_rag_down;


  object_fireanim =                                  new Objects(fireanim, false, 640f, 360f, 100f, 100f, false);

  object_toast_crisp =                               new Objects(toast_crisp, false, 280f, 263f, 150f, 150f, false);
  object_toast_plain =                               new Objects(toast_plain, false, 280f, 263f, 150f, 150f, false);

  object_toaster_empty =                             new Objects(toaster_empty, false, 280f, 263f, 150f, 150f, false);
  object_toaster_crisp =                             new Objects(toaster_crisp, false, 280f, 263f, 150f, 150f, false);
  object_toaster_wtoast =                            new Objects(toaster_wtoast, false, 280f, 263f, 150f, 150f, false);

  object_pan =                                       new Objects(pan, false, 280f, 363f, 150f, 150f, true);
  object_pan_eggs =                                  new Objects(pan_eggs, false, 280f, 363f, 150f, 150f, false);




  button_Play =                                      new Button("play",     width/2, height*0.25, 200, 100, 0);
  button_Settings =                                  new Button("Settings", width/2, height*0.5,  200, 100, 2);
  button_Exit =                                      new Button("Quit",     width/2, height*0.75, 200, 100, 3);
  button_Main_menu =                                 new Button("Main menu",200, 600, 200, 100, 1);
  
  Game =                                             new Menu(0, false);
  MainMenu =                                         new Menu(1, true);
  Settings_Menu =                                    new Menu(2, false);
  menu_Game_over=                                    new Menu(3, false);
  Clock =                                            new Menu(9, false);
  
}

void mouseClicked() {
  println(Game.active, MainMenu.active, Settings_Menu.active, menu_Game_over.active);
  println(mouseX, mouseY);
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
  
}
