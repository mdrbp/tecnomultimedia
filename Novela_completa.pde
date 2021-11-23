class Novela {
  String estadoJuego;
  boton boton1, boton2, boton3, boton4, boton5;
  Ventana ventana1, ventana2, ventana3, ventana4, ventana5, ventana6, ventana7;
  Ellie ellie1, ellie2, ellie3, ellie4, ellie5, ellie6, ellie7, ellie8;
  Eleccion eleccion1, eleccion2, eleccion3, eleccion4, eleccion5, eleccion6, eleccion7, eleccion8;
  Texto [] texto;
  int contexto;
  PImage[] cor;
  PImage [] finales;
  PImage [] fondo;
  int corazon = 3;
  int pantalla =1;
  //constructor
  Novela() {
    println(estadoJuego);
    estadoJuego = "inicio";
    boton1 = new boton("EMPEZAR", width/2, height/2.1, 300, 100, 20);
    boton2 = new boton("CRÉDITOS", width/2, height/1.5, 300, 100, 20);
    boton3 = new boton("atrás", width/10, height/10, 120, 30, 15);
    boton4 = new boton("volver al menú principal", width/10, height/10, 120, 30, 15);
    finales= new PImage[4];
    ventana1 = new Ventana (1);
    ventana2 = new Ventana (2);
    ventana3 = new Ventana (3);
    ventana4 = new Ventana (4);
    ventana5 = new Ventana (5);
    ventana6 = new Ventana (6);
    ventana7 = new Ventana (7);
    ellie1 = new Ellie (1);
    ellie2 = new Ellie (2);
    ellie3 = new Ellie (3);
    ellie4 = new Ellie (4);
    ellie5 = new Ellie (5);
    ellie6 = new Ellie (6);
    ellie7 = new Ellie (7);
    ellie8 = new Ellie (8);
    eleccion1 = new Eleccion("Hacer cumplido sincero", height-160);
    eleccion2 = new Eleccion("Hacer cumplido gracioso", height-120);
    eleccion3 = new Eleccion("Hacer chiste de mal gusto", height-80);
    eleccion4 = new Eleccion("pedir perdón", height-140);
    eleccion5 = new Eleccion("'no era para tanto'", height-100);
    eleccion6 = new Eleccion("Ir a una cafetería", height-160);
    eleccion7 = new Eleccion("Ir a la plaza", height-120);
    eleccion8 = new Eleccion("'No pensé a dónde ir'", height-80);
    fondo=new PImage[6];
    cor= new PImage[4];
    texto = new Texto [contexto];
    //loading images
    //for
    //for (int i=0; i<contexto; i++ ) {
    //  texto[i] = new Texto();
    //}
    //for
    finales[1]=loadImage ("final plaza.jpg");
    finales[2]=loadImage ("final verdadero.jpg");
    finales[3]=loadImage ("final malo.jpg");

    fondo[1]=loadImage ("fondo_encuentro.jpg");
    fondo[2]=loadImage ("fondo_cafeteria.jpg");
    fondo[3]=loadImage ("fondo_cafeterianoche.jpg");
    fondo[4]=loadImage ("fondo_plaza.jpg");
    fondo[5]=loadImage ("fondo_plazanoche.jpg");

    cor[1] = loadImage ("cor_01.png");
    cor[2] = loadImage ("cor_02.png");
    cor[3] = loadImage ("cor_03.png");
  }

  //metodos 
  void actualizar() {
    if (estadoJuego.equals("inicio")) {
      background(255);    
      fill(0);
      textSize(90);
      textAlign(CENTER);
      text("Primera Cita", width/2, height/4);
      boton1.actualizar();
      boton2.actualizar();
      pantalla=0;
      //menú principal
    } else if (estadoJuego.equals("cita")) {     
      if (pantalla ==1) {
        image(fondo[1], 0, 0, width, height);
        caja_de_texto_centro("Alaila y Ellie se encuentran en el\n centro para su primera cita", height/2);
        image(cor[corazon], 0, 0);
      } else if (pantalla ==2) {
        image(fondo[1], 0, 0, width, height);
        ventana5.dibujar();
        texto[pantalla].actualizar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==3) {
        image(fondo[1], 0, 0, width, height);
        ventana6.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==4) {
        image(fondo[1], 0, 0, width, height);
        ellie4.dibujar();
        ventana4.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==5) {
        image(fondo[1], 0, 0, width, height);
        ellie4.dibujar();
        ventana5.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==6) {
        //primera elección
        image(fondo[1], 0, 0, width, height);
        ventana4.dibujar();
        eleccion1.actualizar();
        eleccion2.actualizar();
        eleccion3.actualizar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==7) { //CHISTE DE MAL GUSTO
        image(fondo[1], 0, 0, width, height);
        ellie8.dibujar();
        ventana4.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==8) {
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana7.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==9) {
        //segunda elección
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana7.dibujar();
        eleccion4.actualizar();
        eleccion5.actualizar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==10) { //NO ERA PARA TANTO
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana5.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==11) {
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana7.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==12) { //FINAL MALO
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana7.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==13) {
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana3.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==14) {
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana7.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==15) {
        image(finales[3], 0, 0, width, height);
        final_cuadradito("FINAL MALO", width-300, 300);
        boton4.actualizar();
      } else if (pantalla ==16) { //PIDE PERDON
        image(fondo[1], 0, 0, width, height);
        ellie5.dibujar();
        ventana7.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==17) {
        image(fondo[1], 0, 0, width, height);
        ellie5.dibujar();
        ventana5.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==18) { //BUENO, DECIME A DONDE IR
        image(fondo[1], 0, 0, width, height);
        ellie4.dibujar();
        ventana5.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==19)
        //tercera elección
      {
        image(fondo[1], 0, 0, width, height);
        ventana4.dibujar();
        eleccion6.actualizar();
        eleccion7.actualizar();
        eleccion8.actualizar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==20) {//CUMPLIDO GRACIOSO
        image(fondo[1], 0, 0, width, height);
        ellie8.dibujar();
        ventana4.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==21) {
        image(fondo[1], 0, 0, width, height);
        ellie6.dibujar();
        ventana1.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==22) {
        image(fondo[1], 0, 0, width, height);
        ellie6.dibujar();
        ventana1.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==23) {
        image(fondo[1], 0, 0, width, height);
        ellie2.dibujar();
        ventana1.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==24) { //CUMPLIDO SINCERO
        image(fondo[1], 0, 0, width, height);
        ellie8.dibujar();
        ventana2.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==25) {
        image(fondo[1], 0, 0, width, height);
        ellie2.dibujar();
        ventana1.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==26) {
        image(fondo[1], 0, 0, width, height);
        ellie7.dibujar();
        ventana1.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==27) {//NO PENSO A DONDE IR - MENOS DE DOS CORAZONES
        image(fondo[1], 0, 0, width, height);
        ellie5.dibujar();
        ventana7.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==28) {
        image(fondo[1], 0, 0, width, height);
        ellie1.dibujar();
        ventana7.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==29) {//NO PENSO DONDE IR-TRES CORAZONES
        image(fondo[1], 0, 0, width, height);
        ellie4.dibujar();
        ventana1.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==30) {
        image(fondo[1], 0, 0, width, height);
        ellie2.dibujar();
        ventana5.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==31) {
        image(fondo[1], 0, 0, width, height);
        ellie2.dibujar();
        ventana2.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==32) {//CARTEL QUE DICE QUE VAN A LA PLAZA
        image(fondo[1], 0, 0, width, height);
        caja_de_texto_centro("", height/2);
        image(cor[corazon], 0, 0);
      } else if (pantalla ==33) {//FINAL PLAZA
        image(finales[1], 0, 0, width, height);
        final_cuadradito("FINAL BUENO", width-330, 330);
        boton4.actualizar();
      } else if (pantalla ==34) {//ELIJE LA PLAZA
        image(fondo[1], 0, 0, width, height);
        ellie4.dibujar();
        ventana4.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==35) {
        image(fondo[1], 0, 0, width, height);
        ellie2.dibujar();
        ventana4.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==36) {//ELIJE CAFETERIA
        image(fondo[1], 0, 0, width, height);
        ellie4.dibujar();
        ventana4.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==37) {
        image(fondo[1], 0, 0, width, height);
        ellie8.dibujar();
        ventana1.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==38) {
        image(fondo[1], 0, 0, width, height);
        ellie2.dibujar();
        ventana2.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==39) {
        image(fondo[1], 0, 0, width, height);
        caja_de_texto_centro("", height/2);
        image(cor[corazon], 0, 0);
      } else if (pantalla ==40) {
        image(fondo[2], 0, 0, width, height);
        caja_de_texto_centro("", height/2.2);
        image(cor[corazon], 0, 0);
      } else if (pantalla ==41) {
        image(fondo[3], 0, 0, width, height);
        ellie2.dibujar();
        ventana2.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==42) {
        image(fondo[3], 0, 0, width, height);
        ellie6.dibujar();
        ventana5.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==43) {
        image(fondo[3], 0, 0, width, height);
        ellie2.dibujar();
        ventana2.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==44) {
        image(fondo[3], 0, 0, width, height);
        ellie8.dibujar();
        ventana2.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==45) {
        image(fondo[3], 0, 0, width, height);
        ellie4.dibujar();
        ventana5.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==46) {
        image(fondo[3], 0, 0, width, height);
        ellie2.dibujar();
        ventana2.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla ==47) {//CARTEL DE QUE VUELVEN 
        image(fondo[5], 0, 0, width, height);
        caja_de_texto_centro("", height/2.2);
        image(cor[corazon], 0, 0);
      } else if (pantalla ==48) {
        image(fondo[5], 0, 0, width, height);
        ellie4.dibujar();
        ventana4.dibujar();
        image(cor[corazon], 0, 0);
      } else if (pantalla == 49) {
        image(fondo[5], 0, 0, width, height);
        caja_de_texto_centro("", height/2);
        image(cor[corazon], 0, 0);
      } else if (pantalla == 50) {
        image(fondo[5], 0, 0, width, height);
        ellie2.dibujar();
        ventana2.dibujar();
      } else if (pantalla == 51) {//FINAL BUENO PLAZA
        image(fondo[5], 0, 0, width, height);    
        final_cuadradito("FINAL BUENO", width-330, 330);
        boton4.actualizar();
      } else if (pantalla == 52) {
        image(fondo[5], 0, 0, width, height);//FINAL VERDADERO
        ellie2.dibujar();
        ventana6.dibujar();
      } else if (pantalla == 53) {
        image(fondo[5], 0, 0, width, height);
        ellie7.dibujar();
        ventana2.dibujar();
      } else if (pantalla == 54) {
        image(finales[2], 0, 0, width, height);    
        final_cuadradito("FINAL VERDADERO", width-450, 450);
        boton4.actualizar();
      }
    } else if (estadoJuego.equals("creditos")) {
      pushStyle();
      background(0);
      textAlign(CENTER);   
      fill(255);    
      text("DIBUJO:\nRobin Berro\n\nPROGRAMACION:\nRobin Berro", width/2, height/3);
      boton3.actualizar();
      popStyle();
    }
  }
  void click() {
    if (estadoJuego.equals("inicio")) {
      if (boton1.mouseEncima()) {
        estadoJuego = "cita";
        corazon=3;
        pantalla=1;
      } else if (boton2.mouseEncima()) {
        estadoJuego = "creditos";
      }
    } else if (estadoJuego.equals("creditos")) {
      if (boton3.mouseEncima()) {
        estadoJuego = "inicio";
      }
    } else if (estadoJuego.equals("cita")) {

      if (pantalla ==1) {
        pantalla =2;
      } else if (pantalla ==2) {
        pantalla =3;
      } else if (pantalla ==3) {
        pantalla =4;
      } else if (pantalla ==4) {
        pantalla=5;
      } else if (pantalla ==5) {
        pantalla=6;
      } else if (pantalla ==6) {//CUMPLIDOS
        if (eleccion1.mouseEncima()) {
          pantalla = 7;
          corazon = corazon -1;
        } else if (eleccion2.mouseEncima()) {
          pantalla = 20;
        } else if (eleccion3.mouseEncima()) {
          pantalla = 24;
        }
      } else if (pantalla == 7) {
        pantalla = 8;
      } else if (pantalla == 8) {
        pantalla = 9;
      } else if (pantalla == 9) { //PEDIR PERDON O NO
        if (eleccion4.mouseEncima()) {
          pantalla = 10;
        } else if (eleccion5.mouseEncima()) {
          pantalla =16;
        }
      } else if (pantalla == 10) {
        pantalla = 11;
      } else if (pantalla == 11) {
        pantalla = 12;
      } else if (pantalla == 12) {
        pantalla = 13;
      } else if (pantalla == 13) {
        pantalla = 14;
      } else if (pantalla == 14) {
        pantalla = 15;
      } else if (pantalla == 15) {
        if (boton4.mouseEncima()) {
          estadoJuego = "inicio";
        }
      } else if (pantalla == 16) {
        pantalla = 17;
      } else if (pantalla == 17) {
        pantalla = 18;
      } else if (pantalla == 18) {
        pantalla = 19;
      } else if (pantalla == 19) {
        //ELECCION de donde ir
        if (eleccion8.mouseEncima() && corazon <= 2) {
          pantalla = 27;
          corazon = corazon -1;
        } else if (eleccion6.mouseEncima()) {
          pantalla = 29;
        } else if (eleccion7.mouseEncima()) {
          pantalla = 34;
        } else if (eleccion8.mouseEncima()) {
          pantalla = 36;
        }
      } else if (pantalla == 20) {
        pantalla = 21;
      } else if (pantalla == 21) {
        pantalla = 22;
      } else if (pantalla == 22) {
        pantalla = 23;
      } else if (pantalla == 23) {
        pantalla = 18;
      } else if (pantalla == 24) {
        pantalla = 25;
      } else if (pantalla == 25) {
        pantalla = 26;
      } else if (pantalla == 26) {
        pantalla = 18;
      } else if (pantalla == 27) {
        pantalla = 28;
      } else if (pantalla == 28) {
        pantalla = 12;
      } else if (pantalla == 29) {
        pantalla = 30;
      } else if (pantalla == 30) {
        pantalla = 31;
      } else if (pantalla == 31) {
        pantalla =32;
      } else if (pantalla == 32) {
        pantalla =33;
      } else if (pantalla == 33) {//final plaza
        if (boton4.mouseEncima()) {
          estadoJuego = "inicio";
        }
      } else if (pantalla == 34) {
        pantalla = 35;
      } else if (pantalla == 35) {
        pantalla = 32;
      } else if (pantalla == 36) {
        pantalla = 37;
      } else if (pantalla == 37) {
        pantalla = 38;
      } else if (pantalla == 38) {
        pantalla = 39;
      } else if (pantalla == 39) {
        pantalla = 40;
      } else if (pantalla == 40) {
        pantalla = 41;
      } else if (pantalla == 41) {
        pantalla = 42;
      } else if (pantalla == 42) {
        pantalla = 43;
      } else if (pantalla == 43) {
        pantalla = 44;
      } else if (pantalla == 44) {
        pantalla = 45;
      } else if (pantalla == 45) {
        pantalla = 46;
      } else if (pantalla == 46) {
        pantalla = 47;
      } else if (pantalla == 47 && corazon <=2) { //SEPARACION FINALES PLAZA DE NOCHE
        pantalla = 48;
      } else if (pantalla ==48) {
        pantalla =49;
      } else if (pantalla ==49) {
        pantalla =50;
      } else if (pantalla ==50) {
        pantalla =51;
      } else if (pantalla ==51) {//FINAL BUENO
        if (boton4.mouseEncima()) {
          estadoJuego = "inicio";
        }
      } else if (pantalla == 47 && corazon ==3) { //SEPARACION FINALES PLAZA DE NOCHE
        pantalla = 52;
      } else if (pantalla ==52) {
        pantalla =53;
      } else if (pantalla ==53) {
        pantalla =54;
      } else if (pantalla ==54) {
        if (boton4.mouseEncima()) {
          pantalla = 0;
        }
      }
    }
  }
}
