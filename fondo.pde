class Fondo {
  PImage fondojpg;
  float x;
  float velX;

  //constructor
  Fondo() {
    fondojpg = loadImage("fondo.jpg");
    x = 0;
    velX = -2;
  }
  //metodos
  void actualizar() {
    image(fondojpg, x, 0, width, height);
    image(fondojpg, width+x, 0, width, height);
    x+=velX;
    if (x<-width) {
      x=0;
    }
  }
}
