class Espada {
 
  PImage ESPADA;
  Float px,py;
  int ps;
  int ancho,alto;
  
  Espada(float px, float py, int ancho , int alto){
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
  }
  


void dibujarEspada(){
    
    ESPADA=loadImage("ESPADA.png");
    image(ESPADA, px, py, ancho, alto);
  
}
}
