class button {
  int x;
  int y;
  int sizex;
  int sizey;
  boolean active = false;
  String displayText = "";

  buttonAction myAction;

  button(int xin, int yin, int sizexin, int sizeyin, boolean activein, buttonAction inAction, String displayTextin) {
    x = xin;
    y = yin;
    sizex = sizexin;
    sizey = sizeyin;
    active = activein;
    myAction = inAction;
    displayText = displayTextin;
  }

  void display() {
    pressed();
    rect(x, y, sizex, sizey);
    fill(0);
    textSize(20);
    text(displayText, x+10, y+30);
  }

  void pressed() {
    if (mouseX < x + sizex && mouseX > x &&
      mouseY < y + sizey && mouseY > y) {
      fill(200);
      if (mousePressed) {
        active = true;
        doAction();
        fill(100);
      }
    } else {
      if (mousePressed) {
        active=false;
      }
      fill(255);
    }
  }

  void doAction() {
    myAction.doAction();
  }
}

interface buttonAction {
  void doAction();
}
