class typeButton extends button {
  String myType = "";
  String typeNumber = "";
  typeCalc myCalc;

  typeButton(int xin, int yin, int sizexin, int sizeyin, boolean activein, buttonAction inAction, String displayTextin) {
    super(xin, yin, sizexin, sizeyin, activein, inAction, displayTextin);
  }
  
  void update(){
    if(active){
      if(keyPressed){
        if (keyCode != SHIFT && keyCode != BACKSPACE){
        myType+=key;
        }
        displayText=myType;
        if(key == BACKSPACE){
          String temp = "";
          for (int i = 0; i<myType.length()-1;i++){
            temp += myType.charAt(i);
          }
          myType = temp;
        }
      }
    }
  }
  void changeTypeInCalc() {
    if(myCalc != null){
    switch(typeNumber) {
    case "type1":
      myCalc.type1 = myType;
      break;

    case "type2":
      myCalc.type2 = myType;
      break;
    }
    }
  }
}
