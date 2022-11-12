class Base {
  
  Espada[] esp = new Espada [4]; 
  ArrayList <Espada> Espada;
  Personaje per;
 // Obstaculo obs;
  Pantallas pant;
  
  Base() {
    for (int i=0; i<esp.length; i++) {
    esp[i] = new Espada(i*100, 200, 120, 50);
    }
    per = new Personaje(mouseX, 550, 100, 50);
  //  obs = new Obstaculo(px*i, py-60, 80, 80); 
    pant = new Pantallas();
 
}


  void display() {

    for (int i=0; i<esp.length; i++){
    esp[i].dibujarEspada();
    }
    per.dibujarAbu();
  //  obs.dibujarObs();
    pant.dibujarPantallas();
    
  }
  
}
