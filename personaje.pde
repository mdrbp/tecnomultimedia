class Personaje {
  PImage personajejpg;
  float alto, ancho, y, x;
  Personaje() {
    personajejpg = loadImage("sprite.png");
    alto = 80;
    ancho = 80;
    y=300;
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
      y=constrain(y,300,460);
    }
  }
}
