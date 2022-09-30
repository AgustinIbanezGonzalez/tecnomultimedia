class Correcaminos {

  float ax, ay;                
  int ancho, alto;
  PImage corre;

  Correcaminos(float ax, float ay, int ancho, int alto ) {

    this.ax = ax;
    this.ay = ay;
    this.ancho = ancho;
    this.alto = alto;
    corre = loadImage("corre.png");
  }

  void dibujarCorrecaminos() {
    image(corre, ax, ay-30, 80, 95);

    if (ay==height-alto && mousePressed)  
      ay=ay-200;
    else
      ay=ay+10;
    if (ay>=height-alto)
      ay=height-alto;
    if (ay<=height/2)
      ay=height/2;
  }
}
