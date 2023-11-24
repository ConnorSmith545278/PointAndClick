class Menu {
  int menu;
  boolean active;

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
        object_mug_empty.mouseClicked();
        object_mug_filled.mouseClicked();
        object_rag_up.mouseClicked();
        object_paper_roll_asset.mouseClicked();
        object_pot_empty.mouseClicked();
        break;
      case 1:
        button_Play.mouseClicked();
        button_Settings.mouseClicked();
        button_Exit.mouseClicked();
        break;
      case 2:
        button_Main_menu.mouseClicked();
        break;
      case 9:
      button_Play.mouseClicked();
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
        image(BG, 0, 0, width, height);

        Clock1.update();

        object_pot_empty.show();
        object_pot_filled.show();

        object_mug_empty.show();
        object_mug_filled.show();
        object_mug_spilled.show();

        object_paper_roll_asset.show();
        object_paper_roll_asset_rotate.show();

        object_pan.show();
        object_pan_eggs.show();

        object_rag_up.show();
        object_rag_down.show();

        object_fireanim.show();

        object_toast_crisp.show();
        object_toast_plain.show();

        object_toaster_empty.show();
        object_toaster_crisp.show();
        object_toaster_wtoast.show();

        NPC_the_guy_transparent.show();
        NPC_the_guy_different_expressions_angry.show();
        NPC_the_guy_wants_coffee.show();

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

        break;
      case 3:
        exit();
        break;
      case 9:
      background(0);
      tint(255, 128);
      imageMode(CORNER);
      image(BG, 0, 0, width, height);
      tint(255, 255);
      button_Play.show();
      Clock1.show();
      
      break;
      }
    }
  }
}
