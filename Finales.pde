class Finales{
PImage [] finals;
  Finales(){
    finals= new PImage[5]; 
    finals[1]=loadImage ("final plaza.jpg");
    finals[2]=loadImage ("final verdadero.jpg");
    finals[3]=loadImage ("final malo.jpg");
    finals[4]=loadImage ("final bueno.jpg");
}
void actualizar(int num_){
 image(finals[num_], 0, 0, width, height);
}
}
