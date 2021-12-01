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
    background(0);
    image(fondojpg, x, 100, width, 400);
    image(fondojpg, width+x, 100, width, 400);
    x+=velX;
    if (x<-width) {
      x=0;
    }
  }
}
