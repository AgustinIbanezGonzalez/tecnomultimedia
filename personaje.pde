class Personaje {

  PImage [] abu = new PImage[4];
  float px, py;
  int ord;
  int ancho, alto;
  int tiempo;


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
    fill(0);
    text("Tiempo de Supervivencia:" + tiempo, 0, 25);

    if (frameCount%6==0) {  //velocida del sprite
      ord++;
      ord=ord%4;
    }
    // circle(mouseX+30, 580 , 50);

    image(abu[ord], mouseX-50, py, ancho, alto);
    if (frameCount%60==0) {
      tiempo+=1;
    }
 
      if(mouseX+ancho>=width){   
       mouseX=750; 
      }
      if(mouseX-ancho<=0){
      mouseX=50;
      }
   
  }
}
