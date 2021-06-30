//María del Rosario Berro Párraga 81192/1
int altura;
int opacidad =0;
int pantalla = 0;
int imagen = 0;
PFont compacta;
PImage tiny;
PImage heroes;
PImage handsome;
PImage roland;
PImage mordecai;
PImage borderlands;
void setup(){
  size(500,500);
  altura = height;
  imagen = 0;
  borderlands = loadImage("borderlands2-logo.png");
  tiny = loadImage("tiny.png");
  heroes = loadImage("heroes.png");
  handsome = loadImage("handsome.png");
  roland = loadImage("roland.png");
  mordecai = loadImage("mordecai.png");
  compacta = loadFont("CompactaBT-Roman-48.vlw");
  textFont(compacta);
 // medidas imágenes: 200,80,350,350  
   ///draw///
}
void draw(){
  background(0);
  //println(pantalla);
  //println(altura);
  println(imagen);
  textAlign(LEFT);
    altura--; 
    //contadores//
   if (altura == -150){
   pantalla++;
 }
 if (pantalla > 4){
   pantalla = 0;
 }
  if (altura < -150){
    altura = 600;   
 }
 //Imagenes//
 if (pantalla >= 1 && pantalla <4){
 opacidad ++;
 }
 if (opacidad >= 256){
 opacidad=0;
 }
 if (opacidad == 255){
   imagen++;
 }
 if (pantalla==4){
   imagen = 0;
 }
 if (pantalla == 1 && altura < 500 && imagen == 0){
   tint (opacidad);
   image(heroes,200,80,350,350);
 }
 if (imagen == 1 && opacidad >0 && opacidad < 254){
  tint (opacidad);
   image(roland,200,80,350,350);
 }
   if (imagen == 2 && opacidad >0 && opacidad < 254){
  tint (opacidad);
   image(tiny,200,80,350,350);
 }
 if (imagen == 3 && opacidad >0 && opacidad < 254){
  tint (opacidad);
   image(mordecai,200,80,350,350);
 }
 if (imagen == 4 && opacidad >0 && opacidad < 254){
  tint (opacidad);
   image(handsome,200,80,350,350);
 }
  if (imagen == 5  && opacidad >0 && opacidad < 254){
   tint (opacidad);
   image(heroes,200,80,350,350);
 }
 if (imagen == 6 && opacidad >0 && opacidad < 254){
  tint (opacidad);
   image(roland,200,80,350,350);
 }
   if (imagen == 7 && opacidad >0 && opacidad < 254){
  tint (opacidad);
   image(tiny,200,80,350,350);
 }
 if (pantalla == 3 && imagen == 8 && opacidad >0 && opacidad < 254){
  tint (opacidad); 
   image(mordecai,200,80,350,350);
 }

  // Titulos //
  if (pantalla ==0){
  image(borderlands,60,altura,375,125);
    }
  if (pantalla == 1 && altura > -140){
   textSize(35);
  text ("Coolleen Clinkenceard \n  (Lilith, Patricia Tannis)\n\nMarcus Lloyd\n  (Roland)\n\n", 40, altura);
    }
    if (pantalla == 2 && altura > -140){
   textSize(35);
  text ("Marcus Mauldin\n  (Brick)\n\nJason Liebrecht\n  (Mordecai)", 40, altura);
}
if (pantalla == 3 && altura > -140){ 
   textSize(35);
  text ("Daemon Clarke \n (Handsome Jack)\n\nDavid Eddings\n  (Claptrap, TK Baha)", 40, altura);
}
if (pantalla == 4 && altura > -140){
  textSize(60);
  textAlign(CENTER);
  fill(255,185,8);
  text ("Thank you for playing \n BORDERLANDS 2", width/2, altura);
}
}
