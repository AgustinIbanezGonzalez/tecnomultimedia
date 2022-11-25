class Base {

  int pantalla;

  Inicio i;
  Instrucciones t;
  Personaje per;
  Mercado m;
  Espada[] esp = new Espada [5];
  Boton bot1, bot2, bot3, bot4;
  Ganaste g;
  Perdiste p;
  Creditos c;

  Base() {

    pantalla = 0;
    bot1 = new Boton(600, 200, 150, 50);
    bot2 = new Boton(600, 300, 150, 50);
    bot3 = new Boton(0, 0, 150, 50);
    bot4 = new Boton(600, 400, 150, 50);
    per = new Personaje(mouseX, 550, 100, 50);
    i = new Inicio(0, 0, width, height);
    t = new Instrucciones(0, 0, width, height);
    m = new Mercado(0, 0, width, height);
    g = new Ganaste(0, 0, width, height);
    p = new Perdiste(0, 0, width, height);
    c = new Creditos(0, 0, width, height);

    for (int i=0; i<esp.length; i++) {
      esp[i] = new Espada(i*100, -60, 80, 50);
    }
  }

  void display() {

    if (pantalla== 0) {
      i.dibujarInicio();
      bot1.dibujarBoton(0, 2, "Jugar");
      bot2.dibujarBoton(0, 1, "Instrucciones");
      bot4.dibujarBoton(0, 5, "Creditos");
    }

    if (pantalla==1) {
      t.dibujarInstrucciones();
      bot3.dibujarBoton(1, 0, "Volver");
    }

    if (pantalla==2) {
      m.dibujarMercado();
      per.dibujarAbu();
      for (int i=0; i<esp.length; i++) {
        esp[i].dibujarEspada();
        if (colision(mouseX+30, 580, 50, esp[i].px, esp[i].py, esp[i].ancho, esp[i].alto)) {
          pantalla=4;
          println("perdiste");   //si se cumple la colision va a pasar a pantalla 4
        }
      }
      if ( per.tiempo>35) {
        pantalla=3;  //si el tiempo llega a 35 ganaste
      }
    }

    if (pantalla==3) {    //reinicio a menu 
      g.dibujarGanaste();
      if (keyPressed) {
        if (key == 'i' || key== 'I') {  
          per.tiempo=0;
          frameCount=0;
          pantalla=0;
          for (int i=0; i<esp.length; i++) {
            esp[i].dibujarEspada();
            esp[i].py=0;
          }
        }
      }
    }
 
    if (pantalla==4) { 
      p.dibujarPerdiste();
      if (keyPressed) {
        if (key == 't' || key== 'T') {
          per.tiempo=0;
          frameCount=0;
          pantalla=0;
          for (int i=0; i<esp.length; i++) {
            esp[i].dibujarEspada();
            esp[i].py=0;
          }
        }
        if (key == 'r'|| key == 'R') {
          per.tiempo=0;
          frameCount=0;
          pantalla=2;
          for (int i=0; i<esp.length; i++) {
            esp[i].dibujarEspada();
            esp[i].py=0;
          }
        }
      }
    }
    if (pantalla==5) {  
      c.dibujarCreditos();
      bot3.dibujarBoton(5, 0, "Volver");
    }
  }

  void accionarBotones() {

    if (bot1.botonPress(600, 200, 150, 50) && pantalla==bot1.actual) {
      pantalla = bot1.sig;
    }
    if (bot2.botonPress(600, 300, 150, 50) && pantalla==bot2.actual) {
      pantalla = bot2.sig;
    }
    if (bot3.botonPress(0, 0, 150, 50) && pantalla==bot3.actual) {
      pantalla = bot3.sig;
    }
    if (bot4.botonPress(600, 400, 150, 50) && pantalla==bot4.actual) {
      pantalla = bot4.sig;
    }
  }

  boolean colision(float px, float py, float radio, float ppx, float ppy, float ancho, float alto  ) {
    float distan = dist(px, py, ppx, ppy);   
    if (distan<radio) { 
      return true;
    } else {
      return false;
    }
  }
}
