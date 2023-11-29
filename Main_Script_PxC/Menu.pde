class Menu {
  int menu;
  boolean active;
  int shadow = 255;
  //int timeLastClick = 180;

  Menu(int i, boolean act) {
    menu = i;
    active = act;
  }



  void mouseClicked() {
    if (active) {
      switch(menu) {
      case 0:
        if (Cat.catPosition == 0) {
          button_Main_menu.mouseClicked();
          button_Clock.mouseClicked();
          rag.mouseClicked();
          Catbuttons.mouseClicked();
          Cat.mouseClicked();
        }
        if (Cat.catPosition == 1) {
          button_Main_menu.mouseClicked();
          button_Clock.mouseClicked();
          mug.mouseClicked();
          Catbuttons.mouseClicked();
          Cat.mouseClicked();
        }
        if (Cat.catPosition == 2) {
          button_Main_menu.mouseClicked();
          button_Clock.mouseClicked();
          coffee_Beans.mouseClicked();
          Catbuttons.mouseClicked();
          Cat.mouseClicked();
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
      case 9:
        button_Resume.mouseClicked();
        break;
      }
    }

    if (active) {
      switch(menu) {
      case 0:
        button_Main_menu.mouseClicked();
        button_Clock.mouseClicked();
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
      case 9:
        button_Resume.mouseClicked();
        button_Rewind.mouseClicked();
        break;
      }
    }
  }

  void show() {
    if (active) {
      switch(menu) {
      case 0:
        background(255);
        imageMode(CORNER);
        image(Sunrise, 0, 0, width, height);
        image(Sun, 0, 0, width, height);
        image(background, 0, 0, width, height);
        
        
        

        coffee_Beans.countDown();
        pot.show();

        mug.show();

        Catbuttons.show();

        coffee_Beans.show();

        pan.show();

        rag.show();

        object_fireanim.show();

        toast.show();

        toaster.show();

        Salt.show();

        Pepper.show();

        Cat.show();

        NPC_the_guy.show();

        tint(255, shadow);
        image(Vignette, width/2, height/2, width, height);
        tint(255, 255);


        Clock1.show();
        button_Main_menu.show();
        button_Clock.show();

        break;
      case 1:
        background(255);
        button_Play.show();
        button_Settings.show();
        button_Exit.show();
        break;
      case 2:
        background(255);
        button_Main_menu.show();
        button_Settings_size1.show();
        button_Settings_size2.show();
        button_Settings_size3.show();
        break;
      case 3:
        exit();
        break;
      case 9:
        imageMode(CORNER);
        background(0);
        tint(255, 128);
        image(Sunrise, 0, 0, width, height);
        image(Sun, 0, 0, width, height);
        image(background, 0, 0, width, height);
        tint(255, 255);
        button_Resume.show();
        Clock1.show();
        button_Rewind.show();
      }
    }
  }
}
