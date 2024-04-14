typeButton b1;
typeButton b2;
typeCalc cb1;
pokeButton pb1;
PImage img;

void setup() {
  size(1000, 1000);
  b1 = new typeButton(100, 100, 200, 100, false, new buttonAction() {
    void doAction(){};
  }
  ,"");
   b2 = new typeButton(100, 250, 200, 100, false, new buttonAction() {
    void doAction(){};
  }
  ,"");
  cb1 = new typeCalc(400, 800, 100, 100, false, new buttonAction() {
    void doAction(){};
  },"");
  
  pb1 = new pokeButton(100, 600, 200, 100, false, new buttonAction() {
    void doAction(){};
  },"");
  
b1.myType= "";
b2.myType = "";
img = loadImage("billede.png");

}

void draw() {
  background(200);
  b1.display();
  b2.display();
  cb1.display();
  pb1.display();
  cb1.displayCalc();
  b1.typeNumber = "type1";
  b2.typeNumber = "type2";
  if (b1.active){
  b1.myCalc = cb1;
  b2.myCalc = cb1;
  b1.changeTypeInCalc();
  b2.changeTypeInCalc();
  } else if (pb1.active){
  pb1.changeTypeInCalc();
  pb1.myCalc = cb1;
  }
  
  text("Write first type", 100, 80);
  text("Write second type (optional)", 100, 230);
  text("OR",100, 500);
  text("Write a Pokémon and press ENTER", 100, 580);
  image(img, 850, 50);
}

void keyPressed(){
  key = Character.toUpperCase(key);
  b1.update();
  b2.update();
  pb1.update();
}
