class Obstaculo {
  float x, y, ancho, alto, velX;
  PImage obstaculojpg;
  Obstaculo() {
    ancho = 30;
    alto=30;
    x=4000;
    ubicacion(); 
    String nombreImagen = ("obstaculo"+int(random(1, 3))+".png");
    obstaculojpg = loadImage(nombreImagen);
    velX=-3;
  }
  void actualizar() {
    pushMatrix();
    pushStyle();  
    imageMode(CENTER);
    image(obstaculojpg, x, y, ancho, alto);
    x+=velX;
    if (x<-width) {
      x=600;
    }
    popMatrix();
    popStyle();
  }
  void ubicacion() {
    x=((100*int(random(15))));
    //x = random(1200);
    y = random(350,500);
    //((70*int(random(15))))
  }
  boolean colision(float x_, float y_, float ancho_, float alto_) {
    if (x-25/2< x_+25/2&&
      x-25/2> x_-25/2 &&
      y-25/2 < y_+25/2 &&
      y+25/2> y_-25/2
      ) {
      ubicacion();
      return true;
    } else {
      return false;
    }
  }
}
