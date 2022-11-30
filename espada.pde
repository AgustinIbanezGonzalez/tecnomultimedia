class Espada {

  PImage ESPADA;
  float px;
  float v=4;
  float vel;
  float pos;
  float py;
  int ancho, alto;


  Espada(float px, float py, int ancho, int alto) {

    pos=random(1, 2);
    vel=1;
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    ESPADA=loadImage("ESPADA.png");
  }

  void dibujarEspada() {

    image(ESPADA, px, py, ancho, alto);

    py=py+pos*vel;

    if (py-60 > height) {      //reinicio de caida
      px=random(width);
      vel+=0.4;
      py=0;
    }
  }
}
