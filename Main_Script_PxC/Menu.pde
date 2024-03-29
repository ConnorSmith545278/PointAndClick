class Menumanager {
  int menu = 1;
  boolean active;
  float shadow = 255;
  int gameOverType;




  void mouseClicked() {
    switch(menu) {
    case 0:
      button_Main_menu.mouseClicked();
      button_Clock.mouseClicked();

      if (Cat.catPosition == 0) {
        toaster.mouseClicked();
        rag.mouseClicked();
        button_Main_menu.mouseClicked();
        button_Clock.mouseClicked();
        Catbuttons.mouseClicked();
        Mouse.mouseClicked();
      }
      if (Cat.catPosition == 1) {
        mug.mouseClicked();
        button_Main_menu.mouseClicked();
        button_Clock.mouseClicked();
        Catbuttons.mouseClicked();
        Mouse.mouseClicked();
      }
      if (Cat.catPosition == 2) {
        coffee_Beans.mouseClicked();
        Salt.mouseClicked();
        Pepper.mouseClicked();
        button_Main_menu.mouseClicked();
        button_Clock.mouseClicked();
        Catbuttons.mouseClicked();
        Mouse.mouseClicked();
      }
      break;
    case 1:
      button_Play.mouseClicked();
      button_Settings.mouseClicked();
      button_Exit.mouseClicked();
      break;
    case 2:
      button_Main_menu.mouseClicked();
      button_Settings_size1.mouseClicked();
      button_Settings_size2.mouseClicked();
      button_Settings_size3.mouseClicked();
      break;
    case 3:
      button_Main_menu.mouseClicked();
      button_Clock.mouseClicked();

      break;
    case 9:
      button_Resume.mouseClicked();
      button_Backwards.mouseClicked();
      button_Forwards.mouseClicked();
      break;
    }
  }

  void show() {

    switch(menu) {
    case 0: //Game
      if (Clock1.hourOneClock == 8) {
        shadow = 255 - (Timer * 4.25);
      }
      coffee_Beans.countDown();

      background(255);
      imageMode(CORNER);
      image(Sunrise, 0, 0, width, height);
      image(Sun, 0, 0, width, height);
      image(background, 0, 0, width, height);

      pot.show();
      mug.show();
      pan.show();
      rag.show();
      image(Cupboard, width/2, height/2, width, height);
      object_fireanim.show();
      toaster.show();
      Salt.show();
      Pepper.show();
      coffee_Beans.show();
      Smoke.show();
      Cat.show();
      image(chair, width/2, height/2, width, height);
      NPC_the_guy.show();
      Mouse.show();
      Cheese.show();

      tint(255, shadow);
      image(Vignette, width/2, height/2, width, height);
      tint(255, 255);

      Catbuttons.show();
      Clock1.show();
      button_Main_menu.show();

      break;
    case 1: //Main menu
      imageMode(CENTER);
      background(255);
      image(menu_background_whitetext, width/2, height/2, width, height);
      button_Play.show();
      button_Settings.show();
      button_Exit.show();
      break;
    case 2://Settings
      imageMode(CENTER);
      background(255);
      image(settings_empty, width/2, height/2, width, height);
      button_Main_menu.show();
      button_Settings_size1.show();
      button_Settings_size2.show();
      button_Settings_size3.show();
      break;
    case 3://Game Over, time Suspension
      background(255);
      imageMode(CORNER);
      image(Sunrise, 0, 0, width, height);
      image(Sun, 0, 0, width, height);
      image(background, 0, 0, width, height);

      pot.show();
      mug.show();
      pan.show();
      rag.show();
      image(Cupboard, width/2, height/2, width, height);
      object_fireanim.show();
      toaster.show();
      Salt.show();
      Pepper.show();
      coffee_Beans.show();
      Smoke.show();
      Cat.show();
      image(chair, width/2, height/2, width, height);
      NPC_the_guy.show();
      Mouse.show();
      Cheese.show();

      tint(255, shadow);
      image(Vignette, width/2, height/2, width, height);
      tint(255, 255);


      if (gameOverType == 0) {
        imageMode(CENTER);
        image(background_fire, width/2, height/2, width, height);
      }

      Clock1.show();
      button_Main_menu.show();
      break;
    case 9: //Clock
      imageMode(CORNER);
      background(0);
      tint(255, 128);
      image(Sunrise, 0, 0, width, height);
      image(Sun, 0, 0, width, height);
      image(background, 0, 0, width, height);
      tint(255, 255);
      Clock1.show();
      button_Resume.show();
      break;
    case 10://Win screen
      imageMode(CORNER);
      image(end_screen, 0, 0, width, height);
      break;
    }
  }
}
