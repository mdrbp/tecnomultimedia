//Robin Berro (María del Rosario Berro Párraga 81192/1)
Novela novela;
PFont gotica;
void setup() {
  size (600, 600);
  novela = new Novela();
  gotica = loadFont("BIZ-UDGothic-48.vlw");  
}

void draw() {  
  novela.actualizar();
}
void mousePressed() {
  novela.click();
}
