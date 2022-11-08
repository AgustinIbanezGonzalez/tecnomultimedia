class personaje {

  PImage [] abu = new PImage[4];
  int ord;

  for (int i=0; i<4; i++) {
    abu[i] = loadImage("ABU"+i+".png");
  }

  void dibujarAbu() {


    if (frameCount%6==0) {  //velocida del sprite (lento)
      ord++;
      ord=ord%4;
    }
    image(abu[ord], mouseX, 550, 100, 50);
    noFill();
    noStroke();
    rect(mouseX, 550, 100, 50);
  }
