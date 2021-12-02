class Juego {
  boton boton1, boton2, boton3, boton4, boton5;
  Fondo fondo;
  Obstaculo[] obstaculo;
  int canObstaculos;
  Personaje personaje;
  String estadoJuego;
  PImage cor [];
  PImage perder, ganar;
  //constructor
  Juego() {    
    fondo = new Fondo();
    canObstaculos =10;
    obstaculo = new Obstaculo[canObstaculos];
    //vida
    contador=600;
    convida = 3;
    cor= new PImage[5];
    cor[1] = loadImage ("cor_00.jpg");
    cor[2] = loadImage ("cor_01.png");
    cor[3] = loadImage ("cor_02.png");
    cor[4] = loadImage ("cor_03.png");
    perder= loadImage("final-gameover.jpg");
    ganar= loadImage("final-victoria.jpg");
    //el for
    for (int i=0; i<canObstaculos; i++ ) {
      obstaculo[i] = new Obstaculo();
    }
    //el for
    personaje = new Personaje();
  }

  //metodos
  void actualizar() {   
    contador = contador -1;
    fondo.actualizar();
    pushStyle();
    pushMatrix();
    fill(0);
    textSize(25);
    textAlign(BOTTOM);
    text(contador/60, width/2, 125);
    popStyle();
    popMatrix();
    for (int i=0; i<canObstaculos; i++ ) {
      obstaculo[i].actualizar();
      //evaluo colision
      if (obstaculo[i].colision(personaje.x, personaje.y, personaje.ancho, personaje.alto)) {
        convida--;
      }
    }
    if (convida==3) {
      image(cor[4], 510, 100, 90, 30);
    } else if (convida==2) {
      image(cor[3], 510, 100, 90, 30);
    } else if (convida==1) {
      image(cor[2], 510, 100, 90, 30);
    } 
     
    personaje.actualizar();
  }
  //  if (estadoJuego.equals("ganar")) {
  //    image(ganar, 0, 0, 600, 400);
  //    estadoNovela = "pantalla";
  //  } else if (estadoNovela.equals("perder")) {
  //    convida = 3;
  //    image(perder, 0, 0, 600, 400);
  //      estadoJuego = "pantalla";
  //  }

  //  if (convida == 0) {
  //    estadoNovela="perder";
  //  }
  //  if (contador <= 0) {
  //    estadoNovela="ganar";
  //  }
  //}
  boolean gano() {
    return (contador <=0);
  }
  boolean perdio() {
    return (convida<=0);
  }
}
