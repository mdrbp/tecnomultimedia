class Ellie{
  private PImage [] reaccion;
  
 Ellie(){
  reaccion =new PImage[8];
    reaccion[1] = loadImage ("e_enojada.png");
    reaccion[2] = loadImage ("e_feliz.png");
    reaccion[3] = loadImage ("e_normal.png");
    reaccion[4]= loadImage ("e_risa.png");
    reaccion[5]= loadImage ("e_sonrojo.png");
    reaccion[6]= loadImage ("e_sorprendida.png");
    reaccion[7]= loadImage ("e_oh.png");
 }
  void actualizar (int num_){
  image(reaccion[num_], 0, 0, width, height);
  }
  
  
}
