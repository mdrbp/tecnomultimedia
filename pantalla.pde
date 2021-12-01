class Pantalla {
  Eleccion eleccion1, eleccion2, eleccion3, eleccion4, eleccion5, eleccion6, eleccion7, eleccion8;
  boton  boton4, boton5;
  Ellie ellie;
  Ventana ventana;
  Fondos fondo;
  Finales finales;
  PImage[] cor;
  int numero;  
  PImage perder, ganar;
  Pantalla() {   
    boton4 = new boton("volver al menú principal", 100, 30, 200, 30, 15);
    finales= new Finales();
    fondo = new Fondos();
    ellie = new Ellie();

    perder= loadImage("final-gameover.jpg");
    ganar= loadImage("final-victoria.jpg");    
    ventana = new Ventana();
    eleccion1 = new Eleccion("Hacer cumplido sincero", height-160);
    eleccion2 = new Eleccion("Hacer cumplido gracioso", height-120);
    eleccion3 = new Eleccion("Hacer chiste de mal gusto", height-80);
    eleccion4 = new Eleccion("pedir perdón", height-140);
    eleccion5 = new Eleccion("'no era para tanto'", height-100);
    eleccion6 = new Eleccion("Ir a una cafetería", height-160);
    eleccion7 = new Eleccion("Ir a la plaza", height-120);
    eleccion8 = new Eleccion("'No pensé a dónde ir'", height-80);  
    cor= new PImage[4];

    cor[1] = loadImage ("cor_01.png");
    cor[2] = loadImage ("cor_02.png");
    cor[3] = loadImage ("cor_03.png");
  }


  void actualizar() {
    if (pantalla ==1) {
      fondo.actualizar(1);
      caja_de_texto_centro("Alaila y Ellie se encuentran en el\n centro para su primera cita", height/2);
      image(cor[corazon], 0, 0);
      corazon =3;
      contador = 600;
      convida =3;
    } else if (pantalla ==2) {
      fondo.actualizar(1);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==3) {
      fondo.actualizar(1);
      ventana.actualizar(pantalla, 5);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==4) {
      fondo.actualizar(1);
      ellie.actualizar(3);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==5) {
      fondo.actualizar(1);
      ellie.actualizar(3);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==6) {
      //primera elección
      fondo.actualizar(1);
      ventana.actualizar(pantalla, 4);
      eleccion1.actualizar();
      eleccion2.actualizar();
      eleccion3.actualizar();
      image(cor[corazon], 0, 0);
    } else if (pantalla ==7) { //CHISTE DE MAL GUSTO
      fondo.actualizar(1);
      ellie.actualizar(6);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==8) {
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==9) {
      //segunda elección
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 6);
      eleccion4.actualizar();
      eleccion5.actualizar();
      image(cor[corazon], 0, 0);
    } else if (pantalla ==10) { //NO ERA PARA TANTO
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==11) {
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==12) { //FINAL MALO
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==13) {
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 3);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==14) {
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==15) {
      finales.actualizar(3);     
      boton4.actualizar();
    } else if (pantalla ==16) { //PIDE PERDON
      fondo.actualizar(1);
      ellie.actualizar(7);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==17) {
      fondo.actualizar(1);
      ellie.actualizar(7);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==18) { //BUENO, DECIME A DONDE IR
      fondo.actualizar(1);
      ellie.actualizar(3);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==19)
      //tercera elección
    {
      fondo.actualizar(1);
      ventana.actualizar(pantalla, 4);
      eleccion6.actualizar();
      eleccion7.actualizar();
      eleccion8.actualizar();
      image(cor[corazon], 0, 0);
    } else if (pantalla ==20) {//CUMPLIDO GRACIOSO
      fondo.actualizar(1);
      ellie.actualizar(6);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==21) {
      fondo.actualizar(1);
      ellie.actualizar(4);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==22) {
      fondo.actualizar(1);
      ellie.actualizar(4);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==23) {
      fondo.actualizar(1);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==24) { //CUMPLIDO SINCERO
      fondo.actualizar(1);
      ellie.actualizar(6);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==25) {
      fondo.actualizar(1);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==26) {
      fondo.actualizar(1);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==27) {//NO PENSO A DONDE IR - MENOS DE DOS CORAZONES
      fondo.actualizar(1);
      ellie.actualizar(7);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==28) {
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==29) {//NO PENSO DONDE IR-TRES CORAZONES
      fondo.actualizar(1);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==30) {
      fondo.actualizar(1);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==31) {
      fondo.actualizar(1);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==32) {//CARTEL QUE DICE QUE VAN A LA PLAZA
      fondo.actualizar(1);
      caja_de_texto_centro("Alaila y Ellie van a la plaza", height/2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==33) {//FINAL PLAZA
      finales.actualizar(1);
      boton4.actualizar();
    } else if (pantalla ==34) {//ELIJE LA PLAZA
      fondo.actualizar(1);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==35) {
      fondo.actualizar(1);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==36) {//ELIJE CAFETERIA
      fondo.actualizar(1);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==37) {
      fondo.actualizar(1);
      ellie.actualizar(6);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==38) {
      fondo.actualizar(1);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==39) {
      fondo.actualizar(1);
      caja_de_texto_centro("Alaila y Ellie van a la cafetería.", height/2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==40) {
      fondo.actualizar(2);
      caja_de_texto_centro("Ambas eligen una mesa y se sientan.\n Se quedaron hablando por mucho\ntiempo, sin darse cuenta que se\nestaba haciendo tarde.", height/2.2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==41) {
      fondo.actualizar(3);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==42) {
      fondo.actualizar(3);
      ellie.actualizar(4);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==43) {
      fondo.actualizar(3);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 5);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==44) {
      fondo.actualizar(3);
      ellie.actualizar(6);
      ventana.actualizar(pantalla, 5);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==45) {
      fondo.actualizar(3);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==46) {
      fondo.actualizar(3);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==47) {//CARTEL DE QUE VUELVEN 
      fondo.actualizar(5);
      caja_de_texto_centro("Alaila y Ellie vuelven por el mismo camino\nhasta llegar a la plaza, en la que\n se tienen que separar.", height/2.2);
      image(cor[corazon], 0, 0);
    } else if (pantalla ==48) {
      fondo.actualizar(5);
      ellie.actualizar(3);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 49) {
      fondo.actualizar(5);
      caja_de_texto_centro("Ellie abraza a Alaila", height/2);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 50) {
      fondo.actualizar(5);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 51) {//FINAL BUENO PLAZA
      finales.actualizar(4);
      boton4.actualizar();
    } else if (pantalla == 52) {
      fondo.actualizar(5);
      //FINAL VERDADERO
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 5);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 53) { 
      fondo.actualizar(5);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 54) {
      finales.actualizar(2);    
      boton4.actualizar();
    } else if (pantalla == 55) {//PANTALLAS ANTES Y DESPUES DEL JUEGO
      fondo.actualizar(1);
      ellie.actualizar(7);
      ventana.actualizar(pantalla, 5);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 56) {
      fondo.actualizar(1);
      ellie.actualizar(6);
      ventana.actualizar(pantalla, 4);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 57) {
      fondo.actualizar(1);
      ellie.actualizar(6);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 58) {
      fondo.actualizar(1);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 59) {
      fondo.actualizar(1);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 60) {
      fondo.actualizar(2);
      ellie.actualizar(2);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 61) {
      fondo.actualizar(2);
      ellie.actualizar(4);
      image(cor[corazon], 0, 0);
      ventana.actualizar(pantalla, 1);
    } else if (pantalla == 62) {
      fondo.actualizar(1);
      ellie.actualizar(3);
      ventana.actualizar(pantalla, 1);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 63) {
      fondo.actualizar(1);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 7);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 64) {
      fondo.actualizar(1);
      ellie.actualizar(5);
      ventana.actualizar(pantalla, 2);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 65) {
      fondo.actualizar(1);
      ellie.actualizar(1);
      ventana.actualizar(pantalla, 6);
      image(cor[corazon], 0, 0);
    } else if (pantalla == 66) {
      background(0);
      image(perder, 0, 100, 600, 400);
    } else if (pantalla == 67) {
      background(0);
      image(ganar, 0, 100, 600, 400);
    }
  }
}
