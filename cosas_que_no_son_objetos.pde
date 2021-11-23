void caja_de_texto_centro(String texto_, float y_) {
  pushStyle();
  pushMatrix();
  fill(137, 55, 114, 150);
  stroke(0);
  rectMode(CENTER);
  rect(width/2, height/2, width-width/6, height/3, 25);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text(texto_, width/2, y_);
  popStyle();
  popMatrix();
}
void final_cuadradito(String texto_, int x_, int c_) {
  pushStyle();
  pushMatrix();
  fill(137, 55, 114, 150);
  noStroke();
  rect (x_, height-65, c_, 65);
  textFont(gotica);
  textAlign(LEFT, TOP);
  fill(0);
  textSize(60);
  text(texto_, x_, height-60);
  popStyle();
  popMatrix();
}
