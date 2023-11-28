class Clock {
  int time;
  int oneclock;
  int tenclock;
  int TimeSave_Player;
  int numberSizeX = 15;
  int numberSizeY = 45;
  int oneClock_posX = 1210;
  int tenClock_posX = 1185;
  int clockNumber_posY = 635;
  PImage oneClock_asset;
  PImage tenClock_asset;

  void update() {
    
    //time = time + deltaTime;
    //timer = time/4000;
    oneclock = Timer;

    if (tenclock >= 6) {
      Timer = 0;
      tenclock = 0;
    }
    if (Timer == 10){
      Timer = 0;
      tenclock ++;
    }
  }
  void show() {

    if (!menu_Clock.active) {
      image(clock, 1130*scaleX, 645*scaleY, 370*scaleX, 296*scaleY);
      switch(oneclock) {
      case 0:
      oneClock_asset = clock_zero;
        break;
      case 1:
      oneClock_asset = clock_one;
        break;
      case 2:
      oneClock_asset = clock_two;
        break;
      case 3:
      oneClock_asset = clock_three;
        break;
      case 4:
      oneClock_asset = clock_four;
        break;
      case 5:
      oneClock_asset = clock_five;
        break;
      case 6:
      oneClock_asset = clock_six;
        break;
      case 7:
      oneClock_asset = clock_seven;
        break;
      case 8:
      oneClock_asset = clock_eight;
        break;
      case 9:
      oneClock_asset = clock_nine;
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
      image(oneClock_asset, oneClock_posX*scaleX, clockNumber_posY*scaleY, numberSizeX*scaleX, numberSizeY*scaleY);
      image(tenClock_asset, tenClock_posX*scaleX, clockNumber_posY*scaleY, numberSizeX*scaleX, numberSizeY*scaleY);
    } 
    
    if (menu_Clock.active) {
      imageMode(CENTER);
      image(clock, width/2, height/2, 600, 480 );
      switch(oneclock) {
      case 0:
        image(clock_zero, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 1:
        image(clock_one, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 2:
        image(clock_two, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 3:
        image(clock_three, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 4:
        image(clock_four, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 5:
        image(clock_five, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 6:
        image(clock_six, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 7:
        image(clock_seven, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 8:
        image(clock_eight, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 9:
        image(clock_nine, width/2 + 85, height/2 - 55, 47, 80);
        break;
      }
      
      switch(tenclock) {
      case 0:
        image(clock_zero, width/2, height/2 - 55, 47, 80);
        break;
      case 1:
        image(clock_one, width/2, height/2 - 55, 47, 80);
        break;
      case 2:
        image(clock_two, width/2, height/2 - 55, 47, 80);
        break;
      case 3:
        image(clock_three, width/2, height/2 - 55, 47, 80);
        break;
      case 4:
        image(clock_four, width/2, height/2 - 55, 47, 80);
        break;
      case 5:
        image(clock_five, width/2, height/2 - 55, 47, 80);
        break;
      }
    }
  }
}
