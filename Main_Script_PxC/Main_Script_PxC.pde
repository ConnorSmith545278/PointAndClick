import java.util.*;
Stack<MomentInTime> timeStack;
MomentInTime startTime;
Rewind Rewind;


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
Button button_Rewind;

Button button_Settings_size1;
Button button_Settings_size2;
Button button_Settings_size3;

Clock Clock1;

coffee_Beans coffee_Beans;


Rag rag;

NPC NPC_the_guy;
Cat Cat;
CatButtons Catbuttons;
Fire object_fireanim;
Mug mug;
Pot pot;
Toast toast;
Toaster toaster;
Pan pan;
Salt Salt;
Pepper Pepper;

PImage Sunrise, Sun, background_fire, background, Vignette;

PImage the_cat_sitting_transparent, the_cat_paw_up_tiltedhead_transparent;

PImage mug_empty, mug_filled, mug_spilled, mug_empty_rotated;

PImage pot_empty, pot_filled;

PImage coffee_beans, coffee_beans_spilled;

PImage rag_up, rag_down;

PImage the_guy_panic_transparent, the_guy_different_expressions_angry, the_guy_transparent, the_guy_wants_coffee, the_guy_handsout_png, the_guy_wantsegg;

PImage fireanim;

PImage toast_crisp, toast_plain;

PImage toaster_crisp, toaster_empty, toaster_wtoast;

PImage pan_empty, pan_eggs;

PImage clock, clock_zero, clock_one, clock_two, clock_three, clock_four, clock_five, clock_six, clock_seven, clock_eight, clock_nine;

PImage thepaw_32x32_png;

PImage salt;
PImage pepper;

boolean clockVisible;
boolean timerActive;

public float scaleX, scaleY;

int oldmillis, deltaTime, Timer;

int getDeltaTime() {
  deltaTime = millis()-oldmillis;
  oldmillis = millis();
  return deltaTime;
}


void setup() {
  size(1280, 720, P3D);


  Sunrise = loadImage("Sunrise.png");
  Sun = loadImage("Sun.png");
  background_fire = loadImage("background_fire.png");
  background = loadImage("background.png");
  Vignette = loadImage("Vignette.png");

  mug_empty = loadImage("mug_empty.png");
  mug_filled = loadImage("mug_filled.png");
  mug_spilled = loadImage("mug_spilled.png");
  mug_empty_rotated = loadImage("mug_empty_rotated.png");

  pot_empty = loadImage("pot_empty.png");
  pot_filled = loadImage("pot_filled.png");

  coffee_beans = loadImage("coffee_beans.png");
  coffee_beans_spilled = loadImage("coffee_beans_spilled.png");

  rag_up = loadImage("rag_up.png");
  rag_down = loadImage("rag_down.png");

  the_guy_different_expressions_angry = loadImage("the_guy_different_expressions_angry.png");
  the_guy_transparent = loadImage("the_guy_transparent.png");
  the_guy_wants_coffee = loadImage("the_guy_wants_coffee.png");
  the_guy_panic_transparent = loadImage("the_guy_panic_transparent.png");
  the_guy_handsout_png = loadImage("the_guy_handsout_png.png");
  the_guy_wantsegg = loadImage("the_guy_wantsegg.png");

  the_cat_sitting_transparent = loadImage("the_cat_sitting_transparent.png");
  the_cat_paw_up_tiltedhead_transparent = loadImage("the_cat_paw_up_tiltedhead_transparent.png");

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

  pan_empty = loadImage("pan.png");
  pan_eggs = loadImage("pan_eggs.png");

  salt = loadImage("salt.png");
  pepper = loadImage("pepper.png");


  cursor(thepaw_32x32_png);

  timeStack = new Stack<MomentInTime>();
  startTime = new MomentInTime();
  timeStack.push(startTime);

  Rewind = new Rewind();
  Clock1 = new Clock();
  Catbuttons = new CatButtons();

  //NPC(posX, posY, width, height)
  NPC_the_guy =                                      new NPC(400f, 360f, 400f, 400f);
  Cat =                                              new Cat(width/2, height/2 -50, 150F, 150F);



  mug =                                              new Mug(true, 580f, 400f, 100f, 100f);
  pot  =                                             new Pot(false, 680f, 420f, 100f, 100f);
  coffee_Beans  =                                    new coffee_Beans(true, 1050f, 390f, 100f, 100f);
  rag =                                              new Rag(true, 280f, 263f, 150f, 150f);
  object_fireanim =                                  new Fire(fireanim, false, 280f, 350f, 100f, 100f, false);
  toast =                                            new Toast(false, 280f, 263f, 150f, 150f);
  toaster =                                          new Toaster(false, 280f, 263f, 150f, 150f);
  pan =                                              new Pan( false, 280f, 363f, 150f, 150f);
  Salt =                                             new Salt(true, 1040f, 135f, 100f, 100f);
  Pepper =                                           new Pepper(true, 1070f, 155f, 100f, 100f);


  button_Play =                                      new Button("play", width/2, height*0.25, 200, 100, 0);
  button_Main_menu =                                 new Button("Main menu", 150, height-75, 300, 150, 1);
  button_Settings =                                  new Button("Settings", width/2, height*0.5, 200, 100, 2);
  button_Exit =                                      new Button("Quit", width/2, height*0.75, 200, 100, 3);
  button_Clock =                                     new Button("", width - 150, height - 75, 300, 150, 9);
  button_Rewind =                                    new Button("Rewind", width/2, height*0.75, 200, 100, 10);

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
  Game.mouseClicked();
  MainMenu.mouseClicked();
  Settings_Menu.mouseClicked();
  menu_Game_over.mouseClicked();
  menu_Clock.mouseClicked();
  //println(width,height, mouseX, mouseY);
  println(timeStack.size());
  if (!timeStack.empty()) {
    println(timeStack.empty(), timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled, timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
  }
}

void draw() {
  if (timeStack.empty()) {
    timeStack.push(startTime);
  }

  scaleX = width/1280f;
  scaleY = height/720f;
  getDeltaTime();
  Clock1.update();

  Game.show();
  MainMenu.show();
  Settings_Menu.show();
  menu_Game_over.show();
  menu_Clock.show();
}
