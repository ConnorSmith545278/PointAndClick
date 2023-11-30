class Menu {
  int menu;
  boolean active;
  float shadow = 255;

  Menu(int i, boolean act) {
    menu = i;
    active = act;
  }



  void mouseClicked() {
    if (active) {
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
        button_Rewind.mouseClicked();
        break;
      }
    }
  }

  void show() {
    if (active) {
      switch(menu) {
      case 0:
      if (Clock1.hourOneClock == 8){
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
      
        imageMode(CENTER);
        image(background_fire, width/2, height/2, width, height);
        
        Clock1.show();
        button_Main_menu.show();
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
