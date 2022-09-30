class Coyote {
  
  float x, y, as;
  int ancho, alto;
  int ord;
  int cant;
  PImage Coyote;
  
  Coyote(float x, float y, int ancho, int alto) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
    
    Coyote = loadImage("Coyote0.png");
  }
  void dibujarCoyote() {
    image(Coyote, x, y-50, 90, 100);
    x=x-as;
    x-=15;
    
    if(x<0-ancho){  
    x=width+200;
    as+=0.8;
    }  
  }
}
