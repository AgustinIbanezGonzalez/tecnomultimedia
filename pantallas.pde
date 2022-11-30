class Boton {

  int bx, by, btancho, btalto, actual, sig;
  String textBoton;

  Boton(int bx_, int by_, int btancho_, int btalto_ ) {
    bx = bx_;
    by = by_;
    btancho = btancho_;
    btalto = btalto_;
  }

  void dibujarBoton(int actual_, int sig_, String texto_) {
    actual = actual_;
    sig = sig_;
    textBoton = texto_;
    fill(222, 194, 36);
    rect(bx, by, btancho, btalto, btalto);
    textSize(25);
    fill(0);
    text(textBoton, bx+5, by+btalto-20);
  }

  boolean botonPress(int bx_, int by_, int btancho_, int btalto_) {
    bx = bx_;
    by = by_;
    btancho = btancho_;
    btalto = btalto_;
    boolean presionado = mouseX>bx && mouseX<bx+btancho && mouseY>by && mouseY<by+btalto == true;
    return presionado;
  }
}

class Inicio {

  PImage Fondo1;
  float px, py;
  int ancho, alto;

  Inicio(float px, float py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    Fondo1 = loadImage("fondo1.jpg");
  }

  void dibujarInicio() {

    image(Fondo1, 0, 0, width, height);
    fill(0);
    textSize(25);
    text("jugar", 630, 225);
    textSize(20);
    text("Instruccion", 615, 325);
  }
}

class Instrucciones {

  float px, py;
  int ancho, alto;
  PImage INSTRUCCIONES;

  Instrucciones(float px, float py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    INSTRUCCIONES = loadImage("INSTRUCCIONES.jpg");
  }

  void dibujarInstrucciones() {

    image(INSTRUCCIONES, 0, 0, width, height);
    fill(222, 194, 36);
    textSize(30);
    text("UTILIZAR EL MOUSE PARA MOVER A ABÚ \n ESQUIVA LAS ESPADAS Y \n SOBREVIVE HASTA QUE EL TIEMPO MARQUE 35", 10, 490);
  }
}

class Mercado {

  float px, py;
  int ancho, alto;
  PImage MERCADO;

  Mercado(float px, float py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    MERCADO = loadImage("MERCADO.jpg");
  }

  void dibujarMercado() {

    image(MERCADO, 0, 0, width, height);
  }
}

class Ganaste {

  PImage GANASTE;
  float px, py;
  int ancho, alto;

  Ganaste(float px, float py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    GANASTE = loadImage("GANASTE.jpg");
  }

  void dibujarGanaste() {

    image(GANASTE, 0, 0, width, height);
    fill(222, 194, 36);
    textSize(30);
    text("GANASTE!! PRESIONA I PARA PARA IR AL MENÚ", 10, 490);
  }
}

class Perdiste {

  PImage PERDISTE;
  float px, py;
  int ancho, alto;

  Perdiste(float px, float py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    PERDISTE = loadImage("PERDISTE.png");
  }

  void dibujarPerdiste() {

    image(PERDISTE, 0, 0, width, height);
    fill(222, 194, 36);
    textSize(30);
    text("PERDISTE PRESIONA R PARA REINICAR EL JUEGO \n O LA LETRA T PARA IR AL MENÚ", 10, 490);
  }
}

class Creditos {

  PImage CREDITOS;
  float px, py;
  int ancho, alto;

  Creditos(float px, float py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    CREDITOS = loadImage("CREDITOS.png");
  }

  void dibujarCreditos() {

    image(CREDITOS, 0, 0, width, height);
    fill(222, 194, 36);
    textSize(30);
    text("IDEA: AGUSTIN IBAÑEZ \n REALIZACIÓN: AGUSTIN IBAÑEZ \n MUSICA: DISNEY DE ALADDIN", 400, 290);
  }
}
