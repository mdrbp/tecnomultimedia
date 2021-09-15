boolean bot (float ladoIz_,float ladoDer_, float ladoSup_,float ladoInf_){
  if (mouseX > ladoIz_ && mouseX < ladoDer_ && mouseY > ladoSup_ && mouseY< ladoInf_){
    return true;
  }else{
    return false;
  }
}
void caja_de_texto(String texto_,int number_){
  push();
  fill(137,55,114,200);
  stroke(0);
  rect(0,height-height/3,width-1,height/3);
  fill(137,55,114,200);
  noStroke();
  rect(0,height-height/3,width/3,height/3);
  image(alaila[number_],0,height-200,width/3,height/3);
  noFill();
  stroke(0);
  strokeWeight(2);
  rect(0,height-height/3,width/3,height/3);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text(texto_,width/2.8,height/1.4);
  pop();
}
void eleccion (String texto_,int y_){
  push();
  fill(224,129,197);
  rect (200,y_, 400,30);
  fill(0);
  textSize(20);
  textAlign(LEFT,TOP);
  text(texto_,205,y_);
  pop();
}
void caja_de_texto_centro(String texto_, float y_){
  push();
  fill(137,55,114,150);
  stroke(0);
  rectMode(CENTER);
  rect(width/2,height/2,width-width/6,height/3,25);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text(texto_,width/2,y_);
  pop();
}
void final_cuadradito(String texto_, int x_, int c_){
  push();
  fill(137,55,114,150);
  noStroke();
  rect (x_,height-65,c_,65);
  textFont(gotica);
  textAlign(LEFT,TOP);
  fill(0);
  textSize(60);
  text(texto_,x_,height-60);
  pop();
}
void boton_menu(int x_,int y_, int tamx_, int tamy_, String texto_,int tam_texto, int xtexto, int color_){
  push();
  fill(137,55,114,150);
  rect(x_,y_,tamx_, tamy_,25);
  fill(color_);
  textAlign(LEFT,TOP);
  textSize(tam_texto);
  text(texto_,xtexto,y_);
  pop();
}
