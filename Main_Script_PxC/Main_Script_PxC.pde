import java.util.*;
import processing.sound.*;
Stack<MomentInTime> timeStack;
MomentInTime startTime;
Rewind Rewind;

Menumanager Menumanager;

SoundFile menuMusic;
SoundFile gameMusic;
SoundFile glassFall;
SoundFile CatMeow;
SoundFile FireAlarm;
SoundFile GameOver;
SoundFile MenuButtonClick;
SoundFile PanSizzle;
SoundFile TimeReverse;

Button button_Play;
Button button_Settings;
Button button_Exit;
Button button_Main_menu;
Button button_Clock;
Button button_Rewind;
Button button_Resume;
Button button_Backwards;
Button button_Forwards;

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
Cheese Cheese;
Smoke Smoke;
Toaster toaster;
Pan pan;
Salt Salt;
Pepper Pepper;
Mouse Mouse;

PImage Sunrise, Sun, background_fire, background, Vignette, Cupboard, chair,
menu_background_whitetext, settings_empty, end_screen;
PImage the_cat_sitting_transparent, the_cat_paw_up_tiltedhead_transparent, 
the_cat_jumping_to_the_left, the_cat_jumping_to_the_right;
PImage mug_empty, mug_filled, mug_spilled, mug_empty_rotated;
PImage pot_empty, pot_filled;
PImage coffee_beans, coffee_beans_spilled;
PImage rag_up, rag_down;
PImage the_guy_panic_transparent, the_guy_different_expressions_angry, 
the_guy_transparent, the_guy_wants_coffee, the_guy_handsout_png, 
the_guy_wantsegg, the_guy_falling_png, the_guy_reachingforsaltandpeper_png;
PImage fireanim;
PImage toast_crisp, toast_plain;
PImage toaster_crisp, toaster_empty, toaster_wtoast, 
toaster_wtoast_on,toaster_wtoast_off, smoke;
PImage pan_empty, pan_eggs;
PImage clock, clock_zero, clock_one, clock_two, clock_three, clock_four, 
clock_five, clock_six, clock_seven, clock_eight, clock_nine;
PImage thepaw_32x32_png;
PImage salt, pepper;
PImage button_720, button_900, button_1080;
PImage mainmenu_button, play_button, quit_button, settings_button;
PImage resume_button, rewind_button;
PImage mouse_middle, mouse_left, mouse_right, cheese;
PImage PawPrint;
boolean clockVisible;
boolean timerActive;
float scaleX, scaleY;
int oldmillis, deltaTime, Timer;
int getDeltaTime() {
  deltaTime = millis()-oldmillis;
  oldmillis = millis();
  return deltaTime;
}
int f; // used for rewind system
boolean animation; // checks if an animation is running

void setup() {
  size(1280, 720, P2D);
  
  
  menuMusic = new SoundFile(this,"Menu.wav");
  gameMusic = new SoundFile(this,"GameTheme.wav");
  glassFall = new SoundFile(this,"MugFall.wav");
  CatMeow = new SoundFile(this,"CatMeow.wav");
  FireAlarm = new SoundFile(this,"FireAlarm.wav");
  GameOver = new SoundFile(this,"GameOverStop.wav");
  MenuButtonClick = new SoundFile(this,"MenuButtonPop.wav");
  PanSizzle = new SoundFile(this,"Sizzling.wav");
  TimeReverse = new SoundFile(this,"TimeReverse.wav");
  
  resume_button = loadImage("resume_button.png");
  rewind_button = loadImage("rewind_button.png");

  button_720 = loadImage("720_button.png");
  button_900 = loadImage("900_button.png");
  button_1080 = loadImage("1080_button.png");
 
  mainmenu_button = loadImage("mainmenu_button.png");
  play_button = loadImage("play_button.png");
  quit_button = loadImage("quit_button.png");
  settings_button = loadImage("settings_button.png");
  
  Sunrise = loadImage("Sunrise.png");
  Sun = loadImage("Sun.png");
  background_fire = loadImage("background_fire.png");
  background = loadImage("background.png");
  Vignette = loadImage("Vignette.png");
  Cupboard = loadImage("Cupboard.png");
  menu_background_whitetext = loadImage("menu_background_whitetext.png");
  settings_empty = loadImage("settings_empty.png");
  end_screen = loadImage("end_screen.png");
  
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
  the_guy_falling_png = loadImage("the_guy_falling_png.png");
  the_guy_reachingforsaltandpeper_png = loadImage("the_guy_reachingforsaltandpeper_png.png");

  the_cat_sitting_transparent = loadImage("the_cat_sitting_transparent.png");
  the_cat_paw_up_tiltedhead_transparent = loadImage("the_cat_paw_up_tiltedhead_transparent.png");
  the_cat_jumping_to_the_left = loadImage("the_cat_jumping_to_the_left_png.png");
  the_cat_jumping_to_the_right = loadImage("the_cat_jumping_to_the_right_png.png");
  

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
  toaster_wtoast_off = loadImage("toaster_wtoast_off.png");
  toaster_wtoast_on = loadImage("toaster_wtoast_on.png");

  pan_empty = loadImage("pan.png");
  pan_eggs = loadImage("pan_eggs.png");

  salt = loadImage("salt.png");
  pepper = loadImage("pepper.png");
  
  mouse_middle = loadImage("mouse_front.png");
  mouse_left = loadImage("mouse_peep_left.png");
  mouse_right = loadImage("mouse_peep_right.png");

  cheese = loadImage("cheese.png");
  
  smoke = loadImage("smoke.png");
  
  chair = loadImage("Chair.png");
  
  PawPrint = loadImage("pawprint.png");
  
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
  pot  =                                             new Pot(false, 695f, 430f, 125f, 125f);
  coffee_Beans  =                                    new coffee_Beans(true, 1120f, 430f, 100f, 100f);
  rag =                                              new Rag(true, 205f, 260f, 150f, 150f);
  object_fireanim =                                  new Fire(fireanim, false, 220f, 275f, 65f, 65f, false);
  toaster =                                          new Toaster(true, 140f, 423f, 150f, 150f);
  pan =                                              new Pan( false, 280f, 363f, 150f, 150f);
  Salt =                                             new Salt(true, 1123f, 164f, 80f, 80f);
  Pepper =                                           new Pepper(true, 1033f, 137f, 80f, 80f);
  Mouse =                                            new Mouse(false, 1070f, 155f, 100f, 100f);
  Smoke =                                            new Smoke();
  Cheese =                                           new Cheese();
  
  button_Play =                                      new Button(play_button,     250, 415, 344, 104, 0);
  button_Settings =                                  new Button(settings_button, 250, 525, 344, 104, 2);
  button_Exit =                                      new Button(quit_button,     250, 635, 344, 104, 3);
  button_Main_menu =                                 new Button(mainmenu_button, 86, height-26.5, 172, 52, 1);
  button_Clock =                                     new Button(null, width - 150, height - 75, 300, 150, 9);
  //button_Rewind =                                    new Button(rewind_button, width/2, height*0.75, 200, 100, 10);
  button_Resume =                                    new Button(resume_button, 655, 420, 172, 52, 10);
  button_Backwards =                                 new Button(null, 590, 365, 30, 30, 11);
  button_Forwards =                                  new Button(null, 590, 330, 30, 30, 12);

  button_Settings_size1 =                            new Button(button_720, 200,  100, 344, 104, 101);
  button_Settings_size2 =                            new Button(button_900, 200,  210, 344, 104, 102);
  button_Settings_size3 =                            new Button(button_1080, 200, 320, 344, 104, 103);

  Menumanager =                                      new Menumanager();
  menuMusic.play(); 

}

void mouseClicked() {
  Menumanager.mouseClicked();
  println(animation);
}

void draw() {
  if (timeStack.empty()) {
    timeStack.push(startTime);
  }
  
  //if (!animation){
  //cursor(thepaw_32x32_png);
  //} else {
  // noCursor(); 
  //}

  scaleX = width/1280f;
  scaleY = height/720f;
  getDeltaTime();
  Clock1.update();

  Menumanager.show();
  if (Timer >= 65 && Salt.saltFallen && Pepper.pepperFallen){
  Menumanager.menu = 10;
  }
  
}
