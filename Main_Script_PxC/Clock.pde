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
    oneclock = Timer % 10;//changed this back so Timer can be used for time based events
    tenclock = Timer/10;
    
    if (Timer <0){
     Timer = 0; 
    }

    if (tenclock >= 6) {
      Timer = 0;
      tenclock = 0;
    }
    
    
    
  }
  void show() {
    imageMode(CENTER);
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
      image(clock, 640, 360, 500, 400 );
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
      image(oneClock_asset, 750, 346, 24, 60);
      image(tenClock_asset, 715, 346, 24, 60); 
      
    }
  }
}
