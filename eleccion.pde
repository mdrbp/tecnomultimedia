class Eleccion {
  String texto;
  float y;
  Eleccion(String texto_,float y_) {
    texto = texto_;
    y = y_;  
  }
  void actualizar(){
  dibujar();
  }
  void dibujar () {
    pushStyle();
    pushMatrix();
    fill(224, 129, 197);
    if (mouseEncima()) {
      fill(224, 129, 197);
    } else { 
      fill(252, 196, 237);
    }
    rectMode(CENTER);
    rect (200, y, 400, 30);
    fill(0);
    textSize(20);
    textAlign(LEFT, TOP);
    text(texto, 205, y);
    popStyle();
    popMatrix();
  }
  boolean mouseEncima() {
    if (mouseX>200-400/2 && mouseX < 200+400/2 && mouseY> y-30/2 && mouseY< y+30/2) {
      return true;
    } else {
      return false;
    }
}
}
