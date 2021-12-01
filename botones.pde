class boton {
  float x, y, ancho, alto, letra;
  String label;
  boton (String label_, float x_, float y_, float ancho_, float alto_, float letra_) {
    x = x_;
    y= y_;
    label=label_;
    ancho=ancho_;
    alto=alto_;
    letra=letra_;
  }
  void actualizar() {
    dibujar();
  }
  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    if (mouseEncima()) {
      fill(255, 185, 244, 80);
    } else { 
      fill(255, 152, 238, 80);
    }
    noStroke();
    rectMode(CENTER);
    rect(0, 0, ancho, alto, 10);
    if (mouseEncima()) {
      fill(50);
    } else { 
      fill(0);
    }
    textSize(letra);
    textAlign(CENTER, CENTER);
    text(label, 0, 0);
    popMatrix();
    popStyle();
  }
  boolean mouseEncima() {
    if (mouseX>x-ancho/2 && mouseX < x+ancho/2 && mouseY> y-alto/2 && mouseY< y+alto/2) {
      return true;
    } else {
      return false;
    }
  }
}
