//video : https://youtu.be/BiH7eK5LkgY
//Robin Berro (María del Rosario Berro Párraga 81192/1)
Novela novela;
String estadoNovela;
int pantalla=1;
int corazon = 3;
int convida;
int contador;
void setup() {
  size (600, 600);
  novela = new Novela(); 
  estadoNovela = "inicio";
} 
void draw() {  
  novela.actualizar();  
}
void mousePressed() {
  novela.click();
}
