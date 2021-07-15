//María del Rosario Berro Párraga 81192/1
// enlace del video: https://youtu.be/D2isZ0bitSE
int col = 0;
void setup(){
  size (600,600);
}
void draw(){
  background(col);
  strokeWeight(12);
  stroke(125);
  if (col > 225){
    col = 0;
  }
  for(int line=0; line < 8; line++){
    line(0,35+(line*600/8),600,35+(line*600/8));
     line(35+(line*600/8),0,35+(line*600/8),600);
  }
  for(int x= 0; x<8; x++){
    for(int y= 0; y<8; y++){
      pushStyle();
     noStroke();
     ellipse(35+(y*75),35+(x*75),20,20);
        popStyle();
    }
  }
  if (keyPressed== true){
  pushStyle();
  noStroke();
  fill(0);
ellipse(35+(75*int(random(8))),35+(75*int(random(8))),15,15);
popStyle();
  }
}
//
//void mousePressed(){
 //col = col+10;
//}
