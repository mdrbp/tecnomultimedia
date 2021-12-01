class Alaila {
  private PImage [] alaila;
  Alaila() {
    alaila= new PImage[8];
    alaila[1] =loadImage ("a_avergonzada.png");
    alaila[2] =loadImage ("a_feliz.png");
    alaila [3]=loadImage ("a_muytriste.png");
    alaila [4]=loadImage ("a_normal.png");
    alaila [5]=loadImage ("a_oh.png");
    alaila [6]=loadImage ("a_triste.png");
    alaila [7]=loadImage ("a_normal2.png");
  }
  void actualizar(int num_){
    image(alaila[num_],0,height-200,width/3,height/3);
  }
}
