class Base {

  personaje per;
  Obstaculo obs;
  pantallas pant:

  Base() {
    per = new personaje(250, 550, 100, 50);
    obs = new Obstaculo(px*i, py-60, 80, 80);
    pant = new pantallas();
  }


  void display() {

    per.dibujarAbu();
    obs.dibujarObs();
    pant.dibujarPantallas();
  }
