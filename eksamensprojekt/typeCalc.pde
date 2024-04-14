class typeCalc extends button {
  String type1 = "";
  String type2 = "";
  Table table;
  float[] temp = new float[19];

  typeCalc(int xin, int yin, int sizexin, int sizeyin, boolean activein, buttonAction inAction, String displayTextin) {
    super(xin, yin, sizexin, sizeyin, activein, inAction, displayTextin);
  }


  void setType1(String newType1) {
    type1 = newType1;
  }
  void doAction() {
    printCalc();
  }

  void printCalc() {
    table = loadTable("pokétypes.csv", "header");

    if (table != null && type1.length() != 0) {
      if (type2.length() == 0 ) {
        type2 = "NONE";
      }
      int i = 0;
      for (TableRow row : table.rows()) {
        float type1t = row.getFloat(type1);
        float type2t = row.getFloat(type2);

        temp[i++]=type1t*type2t;
        
      }
    }
  }

  void displayCalc() {
    
    displayText = "Calculate";

    for (int i=0; i<temp.length-1; i++) {
      if(temp[i]==2 && temp[i]==4){
        fill(0,255,0);
      }
      text(temp[i] + "x", 800, 80+i*43.5);
    }
  }
}
