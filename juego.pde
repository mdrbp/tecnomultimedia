class juego {
  boton boton1, boton2, boton3, boton4, boton5;
  Fondo fondo;
  Obstaculo[] obstaculo;
  int canObstaculos;
  Personaje personaje;
  String estadoJuego;
  int convida;
  int contador;
  PImage cor [];
  PImage perder, ganar;
  //constructor
  juego() {
    estadoJuego = "inicio";
    boton1 = new boton("EMPEZAR", width/2, height/2.5, 300, 100, 20);
    boton2 = new boton("CRÉDITOS", width/2, height/1.5, 300, 100, 20);
    boton3 = new boton("atrás", width/10, height/10, 120, 30, 15);
    boton4 = new boton("volver a jugar", width-100, height-100, 150, 50, 10);
    boton5 = new boton("volver al menú principal", width-100, height-50, 150, 50, 10);
    fondo = new Fondo();
    canObstaculos =10;
    obstaculo = new Obstaculo[canObstaculos];
    //vida
    contador=600;
    convida = 4;
    cor= new PImage[5];
    cor[1] = loadImage ("cor_00.jpg");
    cor[2] = loadImage ("cor_01.png");
    cor[3] = loadImage ("cor_02.png");
    cor[4] = loadImage ("cor_03.png");
    perder= loadImage("final-gameover.jpg");
    ganar=loadImage("final-victoria.jpg");
    //el for
    for (int i=0; i<canObstaculos; i++ ) {
      obstaculo[i] = new Obstaculo();
    }
    //el for
    personaje = new Personaje();
  }

  //metodos
  void actualizar() {

    if (convida == 0) {
      estadoJuego="perder";
    }
    if (contador <= 0) {
      estadoJuego="ganar";
    }
    if (estadoJuego.equals("inicio")) {
      background(255);
      contador= 600;
      boton1.actualizar();
      boton2.actualizar();
    } else if (estadoJuego.equals("jugando")) {  
      contador = contador -1;
      fondo.actualizar();
      fill(0);
      text(contador/60, width/2, 20);
      for (int i=0; i<canObstaculos; i++ ) {
        obstaculo[i].actualizar();
        //evaluo colision
        if (obstaculo[i].colision(personaje.x, personaje.y, personaje.ancho, personaje.alto)) {
          convida--;
        }
      }
      if (convida==3) {
        image(cor[4], 540, 0, 60, 20);
      } else if (convida==2) {
        image(cor[3], 540, 0, 60, 20);
      } else if (convida==1) {
        image(cor[2], 540, 0, 60, 20);
      }   
      personaje.actualizar();
    } else if (estadoJuego.equals("creditos")) {
      pushStyle();
      background(0);
      textAlign(CENTER);   
      fill(255);    
      text("DIBUJO:\nRobin Berro\n\nPROGRAMACION:\nRobin Berro", width/2, height/3);
      boton3.actualizar();
      popStyle();
    } else if (estadoJuego.equals("ganar")) {
      image(ganar, 0, 0, 600, 400);
      boton4.actualizar();
      boton5.actualizar();
    } else if (estadoJuego.equals("perder")) {
      convida = 3;
      image(perder, 0, 0, 600, 400);
      boton4.actualizar();
      boton5.actualizar();
    }
  }
  void contador() {
  }
  void click() {
    if (estadoJuego.equals("inicio")) {
      if (boton1.mouseEncima()) {
        estadoJuego = "jugando";
        convida=3;
      } else if (boton2.mouseEncima()) {
        estadoJuego = "creditos";
      }
    } else if (estadoJuego.equals("creditos")) {
      if (boton3.mouseEncima()) {
        estadoJuego = "inicio";       
      }
    } else if (estadoJuego.equals("ganar") || (estadoJuego.equals("perder"))) {
      if (boton4.mouseEncima()) {
        estadoJuego= "jugando";
        contador=600;
        convida = 3;
      } else if (boton5.mouseEncima()) {
        estadoJuego = "inicio";
        contador=600;
        convida = 3;
      }
    }
  }
}
