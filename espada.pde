class Espada {

  PImage ESPADA;
  float px;
  float v=4;
  int ps;
  int py;
  int ancho, alto;
  int puntos;
  int pos;


  Espada(float px, int py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    ESPADA=loadImage("ESPADA.png");
  }


  void dibujarEspada() {


    image(ESPADA, px, py, ancho, alto);

    if (py > height) {
      py=0;
      py=py+1;
      py=py+ps;
      py+=v;

      if (py-60 > height) {      //reinicio de caida
        py = -60 ;
        px=random(width);
        pos+=1;
        puntos+=1;
        ps+=0.5;
      }
    }
  }
}
