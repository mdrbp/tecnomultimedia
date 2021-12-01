class Fondos {
  PImage[] fondo;
  Fondos() {
    fondo=new PImage[6];
    fondo[1]=loadImage ("fondo_encuentro.jpg");
    fondo[2]=loadImage ("fondo_cafeteria.jpg");
    fondo[3]=loadImage ("fondo_cafeterianoche.jpg");
    fondo[4]=loadImage ("fondo_plaza.jpg");
    fondo[5]=loadImage ("fondo_plazanoche.jpg");
  }
  void actualizar(int num_) {
    image(fondo[num_], 0, 0, width, height);
  }
}
