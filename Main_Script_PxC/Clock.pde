class Clock {
  int numberSizeX = 15;
  int numberSizeY = 45;
  int clockNumber_posY = 635;
  int time;
  int oneclock;
  int oneClock_posX;
  int tenclock;
  int tenClock_posX;
  int hourOneClock;
  int hourOneClock_posX;
  int hourTenClock = 0;
  int hourTenClock_posX;

  PImage oneClock_asset;
  PImage tenClock_asset;
  PImage hourOneClock_asset;
  PImage hourTenClock_asset;

  void update() {

    oneclock = Timer % 10;
    tenclock = Timer/10; 
    hourOneClock = 8 + Timer/60;
    
    if (tenclock >= 6){
    tenclock = tenclock - 6;
    }
    
    if (Timer <0) {
      Timer = 0;
    }
    
    
  }
  void show() {
    imageMode(CENTER);

    switch(oneclock) {
    case 0:
      oneClock_asset = clock_zero;
      break;
    case 5:
      oneClock_asset = clock_five;
      break;
    }
    switch(tenclock) {
    case 0:
      tenClock_asset = clock_zero;
      break;
    case 1:
      tenClock_asset = clock_one;
      break;
    case 2:
      tenClock_asset = clock_two;
      break;
    case 3:
      tenClock_asset = clock_three;
      break;
    case 4:
      tenClock_asset = clock_four;
      break;
    case 5:
      tenClock_asset = clock_five;
      break;
    }
    switch(hourOneClock) {
    case 0:
      hourOneClock_asset = clock_zero;
      break;
    case 1:
      hourOneClock_asset = clock_one;
      break;
    case 2:
      hourOneClock_asset = clock_two;
      break;
    case 3:
      hourOneClock_asset = clock_three;
      break;
    case 4:
      hourOneClock_asset = clock_four;
      break;
    case 5:
      hourOneClock_asset = clock_five;
      break;
    case 6:
      hourOneClock_asset = clock_six;
      break;
    case 7:
      hourOneClock_asset = clock_seven;
      break;
    case 8:
      hourOneClock_asset = clock_eight;
      break;
    case 9:
      hourOneClock_asset = clock_nine;
      break;
    }
    switch(hourTenClock) {
    case 0:
      hourTenClock_asset = clock_zero;
      break;
    case 1:
      hourTenClock_asset = clock_one;
      break;
    case 2:
      hourTenClock_asset = clock_two;
      break;
    }


    if (Menumanager.menu == 0 || Menumanager.menu == 3) {
      image(clock, 1130*scaleX, 645*scaleY, 370*scaleX, 296*scaleY);

      image(oneClock_asset, 1210*scaleX, clockNumber_posY*scaleY, numberSizeX*scaleX, numberSizeY*scaleY);
      image(tenClock_asset, 1185*scaleX, clockNumber_posY*scaleY, numberSizeX*scaleX, numberSizeY*scaleY);
      image(hourOneClock_asset, 1155*scaleX, clockNumber_posY*scaleY, numberSizeX*scaleX, numberSizeY*scaleY);
      image(hourTenClock_asset, 1130*scaleX, clockNumber_posY*scaleY, numberSizeX*scaleX, numberSizeY*scaleY);
    }

    if (Menumanager.menu == 9) {
      image(clock, 640*scaleX, 360*scaleY, 500*scaleX, 400*scaleY );

      image(oneClock_asset, 745*scaleX, 346*scaleY, 24*scaleX, 60*scaleY);
      image(tenClock_asset, 715*scaleX, 346*scaleY, 24*scaleX, 60*scaleY);
      image(hourOneClock_asset, 675*scaleX, 346*scaleY, 24*scaleX, 60*scaleY);
      image(hourTenClock_asset, 645*scaleX, 346*scaleY, 24*scaleX, 60*scaleY);
    }
  }
}
