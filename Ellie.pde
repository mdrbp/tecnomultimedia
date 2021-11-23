class Ellie {
  int numero;
  PImage el[];
   //constructor
  Ellie(int numero_){
  numero = numero_;
  el =new PImage[8];
  el[1] = loadImage ("e_1.png");
  el[2] = loadImage ("e_2.png");
  el[3] = loadImage ("e_3.png");
  el[4]= loadImage ("e_4.png");
  el[5]= loadImage ("e_5.png");
  el[6]= loadImage ("e_6.png");
  el[7]= loadImage ("e_7.png");
  } 
  void dibujar(){
  image(el[numero], 0, 0, width, height);
  }
}
