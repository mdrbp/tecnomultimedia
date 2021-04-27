//María del Rosario Berro Párraga
size(600,600);
background(0);

//Arcos
pushStyle();
noFill();
strokeWeight(20);
stroke(125,0,255); //violeta
arc(300,300,450,450,radians(220),radians(260),OPEN);
stroke(255,0,125);//fucsia
arc(300,300,450,450,radians(260),radians(320),OPEN);
stroke(255,125,0); //naranja
arc(300,300,450,450,radians(320),radians(400),OPEN);
stroke(125,255,0); // verde lima
arc(300,300,450,450,radians(40),radians(80),OPEN);
stroke(0,255,125); //verde agua
arc(300,300,450,450,radians(80),radians(140),OPEN);
stroke(0,125,255); //azul claro
arc(300,300,450,450,radians(140),radians(220),OPEN);
popStyle();

//cir-culitos
pushStyle();
noStroke();
fill(255,0,255); //magenta
circle(300,75,100);
fill(255,0,0); //rojo
circle(485,175,120); 
fill(255,255,0); //amarillo
circle(485,425,100); 
fill(0,255,0); //verde
circle(300,525,120); 
fill(0,255,255); //cian
circle(115,425,100);
fill(0,0,255); //azul
circle(115,175,120);
popStyle();

//centro

strokeWeight(20);
stroke(255,0,255); //magenta
line(300,75,300,300);
stroke(255,0,0); //rojo
line(485,175,300,300);
stroke(255,255,0); //amarillo
line(485,425,300,300);
stroke(0,255,0); //verde
line(300,525,300,300);
stroke(0,255,255); //cian
line(115,425,300,300);
stroke(0,0,255); //azul
line(115,175,300,300);

noStroke();
fill(255);
circle(300,300,100);

//texto cir-culitos
fill(0);
textSize(20);
text("Magenta",258,80);
text("Azul",93,180);
text("Rojo",465,180);
text("Verde",273,530);
text("Amarillo",445,430);
text("Cian",95,430);

//texto arquitos
fill(255);
textSize(15);
text("violeta",150,75);
text("celeste",10,300);
text("fucsia",395,75);
text("naranja",540,300);
text("verde lima",400,540);
text("verde agua",133,540);
