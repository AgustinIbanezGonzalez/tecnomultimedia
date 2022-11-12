class Espada {
 
  PImage ESPADA;
  Float px;
  int ps;
  int py;
  int ancho,alto;
  
  Espada(float px, int py, int ancho , int alto){
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
  }
  


void dibujarEspada(){
    
    ESPADA=loadImage("ESPADA.png");
    image(ESPADA, px, py, ancho, alto);
   if (py > height){
     py=0;
   }
}
}
