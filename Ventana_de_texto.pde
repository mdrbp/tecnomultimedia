class Ventana {
  int number;
  PImage ali[];
  //constructor
  Ventana (int number_) {    
    number = number_;
    ali= new PImage[8];
    ali[1] =loadImage ("a_1.png");
    ali[2] =loadImage ("a_2.png");
    ali[3]=loadImage ("a_3.png");
    ali[4]=loadImage ("a_4.png");
    ali[5]=loadImage ("a_5.png");
    ali[6]=loadImage ("a_6.png");
    ali[7]=loadImage ("a_7.png");
  }
void dibujar() {
  pushMatrix();
  pushStyle();
  fill(137, 55, 114, 200);
  stroke(0);
  rect(0, height-height/3, width-1, height/3);
  fill(137, 55, 114, 200);
  noStroke();
  rect(0, height-height/3, width/3, height/3);
  image(ali[number], 0, height-200, width/3, height/3);
  noFill();
  stroke(0);
  strokeWeight(2);
  rect(0, height-height/3, width/3, height/3);   
  popMatrix();
}
}
//void caja_de_texto_centro(String texto_, float y_) {
//  push();
//  fill(137, 55, 114, 150);
//  stroke(0);
//  rectMode(CENTER);
//  rect(width/2, height/2, width-width/6, height/3, 25);
//  fill(255);
//  textSize(20);
//  textAlign(CENTER);
//  text(texto_, width/2, y_);
//  pop();
