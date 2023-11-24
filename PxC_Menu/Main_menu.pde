class Menu {
  int menu;

  
  
  Menu(int i){
    menu = i;
  }
  

  void show() {
    switch(menu){
    case 1:
    button_Play.show();
    button_Play.mouseClicked();
    button_Settings.show();
    button_Settings.mouseClicked();
    button_Exit.show();
    button_Exit.mouseClicked();
    
    }
  }
}
