class Base {
  
  Pantallas pant;
  Personaje per;
  Espada[] esp = new Espada [4];   



  
  Base() {
    
    pant = new Pantallas();
    
    per = new Personaje(mouseX, 550, 100, 50);
    
    for (int i=0; i<esp.length; i++) {
    esp[i] = new Espada(i*100,60, 80, 50);
    }
  

  //  for (int i=0; 
}


  void display() {

    pant.dibujarPantallas();
    
    per.dibujarAbu();
    
    for (int i=0; i<esp.length; i++){
    esp[i].dibujarEspada();
    }
   
  
    
  }
  
}
