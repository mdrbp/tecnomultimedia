//Robin Berro (María del Rosario Berro Párraga) 81192/1
// video de youtube: https://youtu.be/lFeDHbkbQK4
juego el_juego;
void setup() {
  size(600, 400);
  el_juego = new juego();
}

void draw() {

  el_juego.actualizar();
}

void mousePressed() {
  el_juego.click();
}
