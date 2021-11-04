class Personaje {
  PImage personajejpg;
  float alto, ancho, y, x;
  Personaje() {
    personajejpg = loadImage("sprite.png");
    alto = 60;
    ancho = 60;
    y=200;
    x=40;
  }
  void actualizar() {
    pushMatrix();
    pushStyle();   
    imageMode(CENTER);
    image(personajejpg, x, y, alto, ancho);
    popMatrix();
    popStyle();

    if (keyPressed) {
      if (keyCode==LEFT) {
        x = x-5;
      } else if (keyCode==RIGHT) {
        x= x+5;
      } else if (keyCode==UP) {
        y= y-5;
      } else if (keyCode==DOWN) {
        y= y+5;
      }
      y=constrain(y,200,height);
    }
  }
}
