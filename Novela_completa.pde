class Novela {
  int pantalla_cont;
  Juego juego;
  boton boton1, boton2, boton3, boton4, boton5;
  Pantalla pantalla_completa;
  Eleccion eleccion1, eleccion2, eleccion3, eleccion4, eleccion5, eleccion6, eleccion7, eleccion8;
  //constructor
  Novela() {
    boton1 = new boton("EMPEZAR", width/2, height/2.1, 300, 100, 20);
    boton2 = new boton("CRÉDITOS", width/2, height/1.5, 300, 100, 20);
    boton3 = new boton("atrás", width/10, height/10, 120, 30, 15);
    boton4 = new boton ("volver al menú principal", 100, 30, 200, 30, 15);
    eleccion1 = new Eleccion("Hacer cumplido sincero", height-160);
    eleccion2 = new Eleccion("Hacer cumplido gracioso", height-120);
    eleccion3 = new Eleccion("Hacer chiste de mal gusto", height-80);
    eleccion4 = new Eleccion("pedir perdón", height-140);
    eleccion5 = new Eleccion("'no era para tanto'", height-100);
    eleccion6 = new Eleccion("Ir a una cafetería", height-160);
    eleccion7 = new Eleccion("Ir a la plaza", height-120);
    eleccion8 = new Eleccion("'No pensé a dónde ir'", height-80);
    pantalla_completa = new Pantalla();
    juego = new Juego();  
  }

  //metodos 
  void actualizar() {
    if (estadoNovela.equals("inicio")) {
      background(255);    
      fill(0);
      textSize(90);
      textAlign(CENTER);
      text("Primera Cita", width/2, height/4);
      boton1.actualizar();
      boton2.actualizar();

      //menú principal
    } else if (estadoNovela.equals("cita")) {        
      pantalla_completa.actualizar();
    } else if (estadoNovela.equals("jugando")) {
      juego.actualizar();
    } else if (estadoNovela.equals("creditos")) {
      pushStyle();
      pushMatrix();
      background(0);
      textAlign(CENTER);   
      fill(255); 
      textSize(20);
      text("DIBUJO:\nRobin Berro\n\nPROGRAMACION:\nRobin Berro", width/2, height/3);
      boton3.actualizar();
      popStyle();
      popMatrix();
    }
    if (estadoNovela.equals("jugando")) {
      if (juego.gano()) {
        estadoNovela = "cita";
        pantalla = 67;
      } else if (juego.perdio()) {
        estadoNovela = "cita";
        pantalla = 66;
      }
    }
  }
  void click() {
    if (estadoNovela.equals("inicio")) {
      if (boton1.mouseEncima()) {
        estadoNovela = "cita";
      } else if (boton2.mouseEncima()) {
        estadoNovela = "creditos";
      }
    } else if (estadoNovela.equals("creditos")) {
      if (boton3.mouseEncima()) {
        estadoNovela = "inicio";
        //} else if(estadoNovela.equals("cita")){
        //    pantalla_completa.click();
        //}
      }
    } else if (estadoNovela.equals("cita")) {
      if (pantalla ==1 ) {
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
        if (eleccion3.mouseEncima()) {
          pantalla = 7;
          corazon = corazon -1;
        } else if (eleccion2.mouseEncima()) {
          pantalla = 20;
        } else if (eleccion1.mouseEncima()) {
          pantalla = 24;
        }
      } else if (pantalla == 7) {
        pantalla = 8;
      } else if (pantalla == 8) {
        pantalla = 9;
      } else if (pantalla == 9) { //PEDIR PERDON O NO
        if (eleccion5.mouseEncima()) {
          pantalla = 10;
          corazon = corazon -1;
        } else if (eleccion4.mouseEncima()) {
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
          estadoNovela = "inicio";
          pantalla = 1;
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
        } else if (eleccion8.mouseEncima()) {
          pantalla = 29;
        } else if (eleccion7.mouseEncima()) {
          pantalla = 34;
        } else if (eleccion6.mouseEncima()) {
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
          estadoNovela = "inicio";
          pantalla = 1;
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
        pantalla = 55;
      } else if (pantalla == 39) {
        estadoNovela = "jugando";
        pantalla = 40;
      } else if (pantalla ==67) {
        pantalla = 60;
      } else if (pantalla ==66 && corazon <= 2) {
        corazon = corazon -1;
        pantalla = 65;
      } else if (pantalla ==66 && corazon == 3) {
        corazon = corazon -1;
        pantalla= 62;
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
          estadoNovela = "inicio";
          pantalla = 1;
        }
      } else if (pantalla == 47 && corazon ==3) { //SEPARACION FINALES PLAZA DE NOCHE
        pantalla = 52;
      } else if (pantalla ==52) {
        pantalla =53;
      } else if (pantalla ==53) {
        pantalla =54;
      } else if (pantalla ==54) {
        if (boton4.mouseEncima()) {
          estadoNovela = "inicio";  
          pantalla = 1;
        }
      } else if (pantalla ==55) {
        pantalla =56;
      } else if (pantalla ==56) {
        pantalla =57;
      } else if (pantalla ==57) {
        pantalla =58;
      } else if (pantalla ==58) {
        pantalla =59;
      } else if (pantalla ==59) {
        pantalla =39;
      } else if (pantalla ==53) {
        pantalla =54;
      } else if (pantalla ==60) {
        pantalla =61;
      } else if (pantalla ==61) {
        pantalla =40;
      } else if (pantalla ==62) {
        pantalla =63;
      } else if (pantalla ==63) {
        pantalla =32;
      } else if (pantalla == 65) {
        pantalla =13;
      }
    }
  }
}
