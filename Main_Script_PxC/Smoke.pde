class Smoke {
  int PosX;
  int PosY;
  int SizeX = 100;
  int SizeY = 100;

  void show() {
    if (!toaster.toaster_off) {
      switch(Timer) {
      case 0:
        PosX = 2000;
        PosY = 2000;
        break;
      case 5:
        PosX = 130;
        PosY = 400;
        break;
      case 10:
        PosX = 180;
        PosY = 350;
        SizeX = 100;
        SizeY = 100;
        break;
      case 15:
        PosX = 230;
        PosY = 300;
        SizeX = 125;
        SizeY = 125;
        break;
      case 20:
        PosX = 280;
        PosY = 250;
        SizeX = 150;
        SizeY = 150;
        break;
      case 25:
        PosX = 330;
        PosY = 200;
        SizeX = 175;
        SizeY = 175;
        break;
      case 30:
        PosX = 380;
        PosY = 150;
        SizeX = 200;
        SizeY = 200;
        break;
      case 35:
        PosX = 430;
        PosY = 100;
        SizeX = 225;
        SizeY = 225;
        break;
      case 40:
        PosX = 480;
        PosY = 50;
        SizeX = 250;
        SizeY = 250;
        gameMusic.pause();
        if (!FireAlarm.isPlaying()) {
          FireAlarm.play();
        }
        break;
      }
      imageMode(CENTER);
      image(smoke, PosX*scaleX, PosY*scaleY, SizeX*scaleX, SizeY*scaleY);
    }
  }
}
