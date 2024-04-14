class pokeButton extends button {
  String choicePokemon = "";
  String myType = "";
  String typeNumber = "";
  Table table;
  typeCalc myCalc;
  String[] types = new String[2];


  pokeButton(int xin, int yin, int sizexin, int sizeyin, boolean activein, buttonAction inAction, String displayTextin) {
    super(xin, yin, sizexin, sizeyin, activein, inAction, displayTextin);
  }
  
  void update(){
    if(active){
      if(keyPressed){
        if (keyCode != SHIFT && keyCode != BACKSPACE && keyCode != ENTER){
        choicePokemon+=key;
        }
        displayText=choicePokemon;
         if(keyCode == ENTER){
           pokemonSearch(choicePokemon);
           
        if(key == BACKSPACE){
          String temp = "";
          for (int i = 0; i<choicePokemon.length()-1;i++){
            temp += choicePokemon.charAt(i);
          }
         }
        }
      }
    }
  }
  void pokemonSearch(String choicePokemon){
    table = loadTable("pokéList.csv", "header");
     if (table != null){
      int i = 0;
    for (TableRow row : table.rows()) {
      String pokemonTypes = row.getString(choicePokemon);
      
      types[i++] = pokemonTypes;
    }
    }
  }
  
    void changeTypeInCalc() {
    if(myCalc != null){
      myCalc.type1 = types[0];
      myCalc.type2 = types[1];
    
    }
  }
}
