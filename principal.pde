class Base {

  int pantalla;

  Inicio i;
  Instrucciones t;
  Personaje per;
  Espada[] esp = new Espada [4];
  Boton bot1, bot2, bot3;
  //  Ganar g;
  //  Perder p;
  Base() {
    
    pantalla = 0;
    bot1 = new Boton(600, 200, 120, 50);
    bot2 = new Boton(600, 300, 120, 50);
    bot3 = new Boton(0, 0, 120, 50);
    i = new Inicio(0,0, width, height);
    t = new Instrucciones(0,0, width, height);
    per = new Personaje(mouseX, 550, 100, 50);

    for (int i=0; i<esp.length; i++) {
      esp[i] = new Espada(i*100, random(height/2), 80, 50);
    }
  }

  void display() {

    if (pantalla== 0) {
      i.dibujarInicio();
      bot1.dibujarBoton(0, 2, "Jugar");
      bot2.dibujarBoton(0, 1, "Instrucciones");
    }
    if (pantalla==1) {
      t.dibujarInstrucciones();
      bot3.dibujarBoton(1, 0, "Volver");
    }
    if (pantalla==2) {
      per.dibujarAbu();
      for (int i=0; i<esp.length; i++) {
        esp[i].dibujarEspada();
        float distan = dist(esp[i].px, esp[i].py, per.px, per.py);
        if (distan<per.ancho/2 + esp[i].ancho/2) {
          background(255, 0, 0);
        }
      }
    }
  }

  void accionarBotones() {

    if (bot1.botonPress(600, 200, 120, 50) && pantalla==bot1.actual) {
      pantalla = bot1.sig;
    }
    if (bot2.botonPress(600, 300, 120, 50) && pantalla==bot2.actual) {
      pantalla = bot2.sig;
    }
    if (bot3.botonPress(0, 0, 120, 50) && pantalla==bot3.actual) {
      pantalla = bot1.sig;
    }
  }
  }
  
