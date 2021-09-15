//María del Rosario Berro Párraga
// VIDEO DE YOUTUBE: https://www.youtube.com/watch?v=8nUxeZ7Ncio&ab_channel=mdrbp
int corazon = 3;
int pantalla = 0;
PImage [] ellie;
PImage [] alaila;
PImage [] finales;
PImage []fondo;
String [] textos;
PImage [] cor;
PFont gotica;

void setup(){
size(600,600);
background(0);
gotica = loadFont("BIZ-UDGothic-48.vlw");
//corazoncito
cor= new PImage[4];
cor[1] = loadImage ("cor_01.png");
cor[2] = loadImage ("cor_02.png");
cor[3] = loadImage ("cor_03.png");
//ellie
ellie =new PImage[8];
ellie[1] = loadImage ("e_enojada.png");
ellie[2] = loadImage ("e_feliz.png");
ellie[3] = loadImage ("e_normal.png");
ellie[4]= loadImage ("e_risa.png");
ellie[5]= loadImage ("e_sonrojo.png");
ellie[6]= loadImage ("e_sorprendida.png");
ellie[7]= loadImage ("e_oh.png");
//alaila
alaila= new PImage[8];
alaila[1] =loadImage ("a_avergonzada.png");
alaila[2] =loadImage ("a_feliz.png");
alaila [3]=loadImage ("a_muytriste.png");
alaila [4]=loadImage ("a_normal.png");
alaila [5]=loadImage ("a_oh.png");
alaila [6]=loadImage ("a_triste.png");
alaila [7]=loadImage ("a_normal2.png");
//finales y fondos
finales= new PImage[4];
fondo=new PImage[6];
finales[1]=loadImage ("final plaza.jpg");
finales[2]=loadImage ("final verdadero.jpg");
finales[3]=loadImage ("final malo.jpg");

fondo[1]=loadImage ("fondo_encuentro.jpg");
fondo[2]=loadImage ("fondo_cafeteria.jpg");
fondo[3]=loadImage ("fondo_cafeterianoche.jpg");
fondo[4]=loadImage ("fondo_plaza.jpg");
fondo[5]=loadImage ("fondo_plazanoche.jpg");
// mucho texto
textos = new String [60];
textos [1] = "Alaila y Ellie se encuentran en el\n centro para su primera cita";
textos [2] = "ALAILA:\n(Fiuf, llegué quince minutos antes, quizá es \ndemasiado temprano...\nespero que Ellie no crea que estoy \ndesesperada.)";
textos [3] = "ALAILA:\n(¡Ah! ¡Ahí está!)";
textos [4] = "ELLIE:\nAli, hola! Te veo muy arreglada\n¿Estás lista para la cita de hoy?";
textos [5] = "ALAILA:\n ¡S-sí!\n(Wow, Ellie está muy linda hoy, quizá debería \nhacerle un cumplido)";
textos [6] = "";
textos [7] = "ALAILA:\nSi la grasa fuese oro, tu serías un tesoro.";
textos [8] = "ELLIE:\nEso no es gracioso.";
textos [9] = "";
textos [10] = "ALAILA:\nDale, fue gracioso, no seas mala onda.";
textos [11] = "ELLIE:\nBueno, ¡para mi no fue gracioso!";
textos [12] = "ELLIE:\nEs obvio que no te estás tomando esta cita en serio.\nMejor dejémoslo para otro día.";
textos [13] = "ALAILA:\nEllie, ¡esperá!";
textos [14] = "ELLIE:\nNos vemos Alaila.";
textos [15] = "";
textos [16] = "ALAILA:\nPerdón,creí que iba a ser gracioso.\nPero es verdad, fue de mal gusto...";
textos [17] = "ELLIE:\nNo pasa nada, ahora lo sabés para la próxima.";
textos [18] = "ELLIE:\nBueno, decime ¿dónde tenías pensado ir?";
textos [19] = "";
textos [20] ="ALAILA:\nSos como la ojota de mi mamá,\nte veo venir y se me acelera el corazón.";
textos [21] ="ELLIE:\nJajajajajajajaja, ¿De dónde sacaste ese piropo?";
textos [22] ="ALAILA:\nEh... online, estuve toda la noche investigando.";
textos [23] ="ELLIE:\nJajajaja, agradezco el esfuerzo.";
textos [24] ="ALAILA:\nEstás muy linda hoy Ellie...";
textos [25] ="ALAILA:\nBueno- ¡Siempre te ves muy linda! solo que\nhoy estás... más linda.\n(Dios, por qué es tan dificil hacer un cumplido)";
textos [26] ="ELLIE:\nJajaja, siempre sos tan sincera, es muy tierno.\nGracias, vos también estás muy linda.";
textos [27] ="ALAILA:\nEn realidad, no pensé a dónde ir...";
textos [28] ="ELLIE:\nUgh, ¿en serio no planeaste nada?";
textos [29] ="ALAILA:\nLa verdad, ayer estaba tan nerviosa\nque no planee nada.";
textos [30] ="ELLIE:\nJaja, no pasa nada. ¿Qué te parece si vamos a \nla plaza?";
textos [31] ="ALAILA:\n¡Me encantaría!";
textos [32] ="Alaila y Ellie van a la plaza";
textos [33] ="";
textos [34] ="ALAILA:\n¿Qué tal si vamos a la plaza?\nHoy es un muy lindo día.";
textos [35] ="ELLIE:\nMe parece perfecto, vayamos.";
textos [36] ="ALAILA:\nHay una cafetería que abrió hace poco cerca,\nvi las reviews online y todos dicen que\nes muy linda.";
textos [37] ="ELLIE:\nWow, ¡estuviste estudiando!";
textos [38] ="ELLIE:\nBueno, vamos para allá entonces.";
textos [39] ="Alaila y Ellie van a la cafetería.";
textos [40] ="Ambas se quedaron hablando por mucho\ntiempo, sin darse cuenta que se\nestaba haciendo tarde."; //<>//
textos [41] ="ALAILA:\njajajaj, sí, entonces dijo:'dejé las cosas en la\nfarmacia y me fui a comprar\nplata'.";
textos [42] ="ELLIE:\n¡jajajajaja!";
textos [43] ="ALAILA:\nPobre Nol, jajaja...¡ah! ¡está re oscuro afuera!\n¿Se hizo tan tarde?";
textos [44] ="ELLIE:\nEs verdad... la estaba pasando tan bien\n que no me había dado cuenta.";
textos [45] ="ELLIE:\n¿Vamos volviendo?";
textos [46] ="ALAILA:\n¡Bueno!";
textos [47] ="Alaila y Ellie vuelven por el mismo camino\nhasta llegar a la plaza, en la que\n se tienen que separar.";
textos [48] ="ELLIE:\nEstuvo linda la cita de hoy.";
textos [49] ="Ellie abraza a Alaila";
textos [50] ="ELLIE:\nNos vemos Ali.";
textos [51] ="";
textos [52] ="ELLIE:\nHoy la pasé muy bien Ali...\nOjalá se repita.";
textos [53] ="ELLIE:\nNos vemos.";
textos [54] ="";
}
void draw(){
   println(pantalla);
  if(pantalla ==0){//menú principal
  background(225,196,249);
    for (int x = 0; x<100; x++){
    for(int ro = 0; ro<100; ro++){
    push();
    noStroke();
    fill(255);
    circle(5+(x*10),5+( ro*10),5);
    pop();
    }
  }
    push();
  boton_menu(175,height/2,250,60,"EMPEZAR",50,190,0); //EMPEZAR
  boton_menu(165,(height/2)+100,270,60,"CREDITOS",50,180,0);
  textAlign(CENTER);
  fill(0);
  textSize(90);
  text("Primera Cita",width/2,200);
  pop();  
    corazon = 3;
   
  }
     if(pantalla ==1){
        image(fondo[1],0,0,width,height);
     caja_de_texto_centro(textos[pantalla],height/2);
     image(cor[corazon],0,0);
  }else if(pantalla ==2){
    image(fondo[1],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
    image(cor[corazon],0,0);
  }else if(pantalla ==3){
    image(fondo[1],0,0,width,height);
    caja_de_texto(textos[pantalla],5);
     image(alaila[5],0,height-200,width/3,height/3);
     image(cor[corazon],0,0);
  }else if(pantalla ==4){
    image(fondo[1],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
         image(cor[corazon],0,0);
  }else if(pantalla ==5){
    image(fondo[1],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
         image(cor[corazon],0,0);
  }else if(pantalla ==6){
    //primera elección
    image(fondo[1],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
    eleccion ("Hacer cumplido sincero",height-160);
    eleccion ("Hacer cumplido gracioso",height-120);
    eleccion ("Hacer chiste de mal gusto",height-80);
    image(cor[corazon],0,0);
  }else if(pantalla ==7){ //CHISTE DE MAL GUSTO
    image(fondo[1],0,0,width,height);
    image(ellie[6],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
    image(cor[corazon],0,0);
  }else if(pantalla ==8){
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
    image(cor[corazon],0,0);
  }else if(pantalla ==9){
    //segunda elección
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
    eleccion ("pedir perdón",height-140);
    eleccion ("'no era para tanto'",height-100);
     image(cor[corazon],0,0);
  }else if(pantalla ==10){ //NO ERA PARA TANTO
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
     image(cor[corazon],0,0);
  }else if(pantalla ==11){
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
     image(cor[corazon],0,0);
  }else if(pantalla ==12){ //FINAL MALO
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
     image(cor[corazon],0,0);
  }else if(pantalla ==13){
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],3);
     image(cor[corazon],0,0);
  }else if(pantalla ==14){
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
     image(cor[corazon],0,0);
  }else if(pantalla ==15){
    image(finales[3],0,0, width,height);
    final_cuadradito("FINAL MALO",width-300,300);
    boton_menu(395,5,200,20,"volver al menu principal",15,410,0);
  }else if(pantalla ==16){ //PIDE PERDON
    image(fondo[1],0,0,width,height);
    image(ellie[7],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
     image(cor[corazon],0,0);
  }else if(pantalla ==17){
    image(fondo[1],0,0,width,height);
    image(ellie[7],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
     image(cor[corazon],0,0);
  }else if(pantalla ==18){ //BUENO, DECIME A DONDE IR
    image(fondo[1],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
     image(cor[corazon],0,0);
  }else if (pantalla ==19)
   //tercera elección
    {image(fondo[1],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
    eleccion ("Ir a una cafetería",height-160);
    eleccion ("Ir a la plaza",height-120);
    eleccion ("'No pensé a dónde ir'",height-80);
    image(cor[corazon],0,0);   
  }else if (pantalla ==20){//CUMPLIDO GRACIOSO
    image(fondo[1],0,0,width,height);
    image(ellie[6],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
     image(cor[corazon],0,0);
  }else if (pantalla ==21){
    image(fondo[1],0,0,width,height);
    image(ellie[4],0,0,width,height);
    caja_de_texto(textos[pantalla],1);
     image(cor[corazon],0,0);
  }else if (pantalla ==22){
    image(fondo[1],0,0,width,height);
    image(ellie[4],0,0,width,height);
    caja_de_texto(textos[pantalla],1);
     image(cor[corazon],0,0);
  }else if (pantalla ==23){
    image(fondo[1],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],1);
     image(cor[corazon],0,0);
  }else if (pantalla ==24){ //CUMPLIDO SINCERO
    image(fondo[1],0,0,width,height);
    image(ellie[6],0,0,width,height);
    caja_de_texto(textos[pantalla],2);
     image(cor[corazon],0,0);
  }else if (pantalla ==25){
    image(fondo[1],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],1);
     image(cor[corazon],0,0);
  }else if (pantalla ==26){
    image(fondo[1],0,0,width,height);
    image(ellie[5],0,0,width,height);
    caja_de_texto(textos[pantalla],1);
     image(cor[corazon],0,0);
  }else if (pantalla ==27){//NO PENSO A DONDE IR - MENOS DE DOS CORAZONES
    image(fondo[1],0,0,width,height);
    image(ellie[7],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
     image(cor[corazon],0,0);
  }else if (pantalla ==28){
    image(fondo[1],0,0,width,height);
    image(ellie[1],0,0,width,height);
    caja_de_texto(textos[pantalla],6);
     image(cor[corazon],0,0);
  }else if (pantalla ==29){//NO PENSO DONDE IR-TRES CORAZONES
     image(fondo[1],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],1);
     image(cor[corazon],0,0);
  }else if (pantalla ==30){
    image(fondo[1],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
     image(cor[corazon],0,0);
  }else if (pantalla ==31){
    image(fondo[1],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],2);
     image(cor[corazon],0,0);
  }else if(pantalla ==32){//CARTEL QUE DICE QUE VAN A LA PLAZA
        image(fondo[1],0,0,width,height);
     caja_de_texto_centro(textos[pantalla],height/2);
     image(cor[corazon],0,0);
  }else if (pantalla ==33){//FINAL PLAZA
    image(finales[1],0,0, width,height);
    final_cuadradito("FINAL BUENO",width-330,330);
    boton_menu(395,5,200,20,"volver al menu principal",15,410,0);
  }else if (pantalla ==34){//ELIJE LA PLAZA
  image(fondo[1],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
     image(cor[corazon],0,0);
  }else if (pantalla ==35){
    image(fondo[1],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
     image(cor[corazon],0,0);
  }else if (pantalla ==36){//ELIJE CAFETERIA
  image(fondo[1],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
     image(cor[corazon],0,0);
  }else if (pantalla ==37){
    image(fondo[1],0,0,width,height);
    image(ellie[6],0,0,width,height);
    caja_de_texto(textos[pantalla],1);
     image(cor[corazon],0,0);
  }else if (pantalla ==38){
    image(fondo[1],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],2);
     image(cor[corazon],0,0);
  }else if (pantalla ==39){
    image(fondo[1],0,0,width,height);
     caja_de_texto_centro(textos[pantalla],height/2);
     image(cor[corazon],0,0);
  }else if (pantalla ==40){
    image(fondo[2],0,0,width,height);
     caja_de_texto_centro(textos[pantalla],height/2.2);
     image(cor[corazon],0,0);
  }else if (pantalla ==41){
    image(fondo[3],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],2);
    image(cor[corazon],0,0);
  }else if (pantalla ==42){
    image(fondo[3],0,0,width,height);
    image(ellie[4],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
    image(cor[corazon],0,0);
  }else if (pantalla ==43){
    image(fondo[3],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],5);
    image(cor[corazon],0,0);
  }else if (pantalla ==44){
      image(fondo[3],0,0,width,height);
    image(ellie[6],0,0,width,height);
    caja_de_texto(textos[pantalla],5);
    image(cor[corazon],0,0);
  }else if (pantalla ==45){
    image(fondo[3],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],7);
    image(cor[corazon],0,0);
  }else if (pantalla ==46){
    image(fondo[3],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],2);
    image(cor[corazon],0,0);
  }else if (pantalla ==47){//CARTEL DE QUE VUELVEN 
     image(fondo[5],0,0,width,height);
     caja_de_texto_centro(textos[pantalla],height/2.2);
     image(cor[corazon],0,0);
  }else if (pantalla ==48){
    image(fondo[5],0,0,width,height);
    image(ellie[3],0,0,width,height);
    caja_de_texto(textos[pantalla],4);
    image(cor[corazon],0,0);
  }else if (pantalla == 49){
     image(fondo[5],0,0,width,height);
     caja_de_texto_centro(textos[pantalla],height/2);
     image(cor[corazon],0,0);  
  }else if (pantalla == 50){
    image(fondo[5],0,0,width,height);
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],2);
  }else if (pantalla == 51){//FINAL BUENO PLAZA
    image(fondo[5],0,0,width,height);    final_cuadradito("FINAL BUENO",width-330,330);
    boton_menu(395,5,200,20,"volver al menu principal",15,410,255);
  }else if (pantalla == 52){
     image(fondo[5],0,0,width,height);//FINAL VERDADERO
    image(ellie[2],0,0,width,height);
    caja_de_texto(textos[pantalla],5);
  }else if (pantalla == 53){
    image(fondo[5],0,0,width,height);
    image(ellie[5],0,0,width,height);
    caja_de_texto(textos[pantalla],2);
  }else if (pantalla == 54){
    image(finales[2],0,0,width,height);    
    final_cuadradito("FINAL VERDADERO",width-450,450);
    boton_menu(395,5,200,20,"volver al menu principal",15,410,255);
  }else if (pantalla == 55){
  push();
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("Ilustraciones\n María del Rosario Berro Párraga\n\nGuión\n María del Rosario Berro Párraga\n\nProgramación\n María del Rosario Berro Párraga",width/2,height/3);
  pop();
   boton_menu(395,5,200,20,"volver al menu principal",15,410,255);
  }

}
void mousePressed(){
  //println(mouseX,mouseY);
  if (pantalla == 0){
   if (bot(175,425,300,360)){
  pantalla = 1;
  }
 else if (bot(175,425,400,460)){
  pantalla = 55;
  }
  }else if (pantalla ==1){
     pantalla =2;
  }else if (pantalla ==2){
     pantalla =3;
  }else if (pantalla ==3){
     pantalla =4;
  }else if (pantalla ==4){
    pantalla=5;
  }else if (pantalla ==5){
    pantalla=6;
  }else if (pantalla ==6){//CUMPLIDOS
    if (bot(200,600,height-80,550)){
  pantalla = 7;
  corazon = corazon -1;
    }else if (bot(200,600,height-120,500)){
    pantalla = 20;
  }else if (bot(200,600,height-160,470)){
  pantalla = 24; 
  }
  }else if (pantalla == 7){
  pantalla = 8;
}else if (pantalla == 8){
  pantalla = 9;
}else if (pantalla == 9){ //PEDIR PERDON O NO
  if (bot(200,600,height-100,530))
  pantalla = 10;
  else if (bot(200,600,height-140,490)){
    pantalla =16;
  }
}else if (pantalla == 10){
  pantalla = 11;
}else if (pantalla == 11){
  pantalla = 12;
}else if (pantalla == 12){
  pantalla = 13;
}else if (pantalla == 13){
  pantalla = 14;
}else if (pantalla == 14){
  pantalla = 15;
}else if (pantalla == 15){
  if (bot(395,600,5,20)){
  pantalla = 0;
  }
}else if (pantalla == 16){
  pantalla = 17;
}else if (pantalla == 17){
  pantalla = 18;
}else if (pantalla == 18){
  pantalla = 19;
}else if (pantalla == 19){
  //ELECCION de donde ir
     if (bot(200,600,height-80,550) && corazon <= 2){
  pantalla = 27;
  corazon = corazon -1;
     }else if (bot(200,600,height-80,550)){
     pantalla = 29;
    }else if (bot(200,600,height-120,500)){
    pantalla = 34;
  }else if (bot(200,600,height-160,470)){
  pantalla = 36; 
  }
}else if (pantalla == 20){
  pantalla = 21;
}else if (pantalla == 21){
  pantalla = 22;
}else if (pantalla == 22){
  pantalla = 23;
}else if (pantalla == 23){
  pantalla = 18;
}else if (pantalla == 24){
  pantalla = 25;
}else if (pantalla == 25){
  pantalla = 26;
}else if (pantalla == 26){
  pantalla = 18;
}else if (pantalla == 27){
  pantalla = 28;
}else if (pantalla == 28){
  pantalla = 12;
}else if (pantalla == 29){
  pantalla = 30;
}else if (pantalla == 30){
  pantalla = 31;
}else if (pantalla == 31){
  pantalla =32;
}else if (pantalla == 32){
  pantalla =33;
}else if (pantalla == 33){//final plaza
   if (bot(395,600,5,20)){
  pantalla = 0;
  }
}else if (pantalla == 34){
  pantalla = 35;
}else if (pantalla == 35){
  pantalla = 32;
}else if (pantalla == 36){
  pantalla = 37;
}else if (pantalla == 37){
  pantalla = 38;
}else if (pantalla == 38){
  pantalla = 39;
}else if (pantalla == 39){
  pantalla = 40;
}else if (pantalla == 40){
  pantalla = 41;
}else if (pantalla == 41){
  pantalla = 42;
}else if (pantalla == 42){
  pantalla = 43;
}else if (pantalla == 43){
  pantalla = 44;
}else if (pantalla == 44){
  pantalla = 45;
}else if (pantalla == 45){
  pantalla = 46;
}else if (pantalla == 46){
  pantalla = 47;
}else if (pantalla == 47 && corazon <=2){ //SEPARACION FINALES PLAZA DE NOCHE
  pantalla = 48;
}else if (pantalla ==48){
  pantalla =49;
}else if (pantalla ==49){
  pantalla =50;
}else if (pantalla ==50){
  pantalla =51;
}else if (pantalla ==51){//FINAL BUENO
 if (bot(395,600,5,20)){
  pantalla = 0;
  }
}else if (pantalla == 47 && corazon ==3){ //SEPARACION FINALES PLAZA DE NOCHE
  pantalla = 52;
}else if (pantalla ==52){
  pantalla =53;
}else if (pantalla ==53){
  pantalla =54;
}else if (pantalla ==54){
   if (bot(395,600,5,20)){
  pantalla = 0;
  }
}else if (pantalla ==55){
  if (bot(395,600,5,20)){
  pantalla = 0;
  }
}
}
 
