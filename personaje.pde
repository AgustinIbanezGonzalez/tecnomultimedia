class Personaje {

  PImage [] abu = new PImage[4];
  float px, py;
  int ord;
  int ancho, alto;


  Personaje(float px, float py, int ancho, int alto) {

    for (int i=0; i<4; i++) {
      abu[i] = loadImage("ABU"+i+".png");
    }

    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
  }

  void dibujarAbu() {


    if (frameCount%6==0) {  //velocida del sprite (lento)
      ord++;
      ord=ord%4;
    }
    image(abu[ord], px, py, ancho, alto);
    noFill();
    noStroke();
  }
 
}
