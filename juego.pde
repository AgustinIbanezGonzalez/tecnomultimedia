void pantjuego() {

  if (estado == 1) {    //Pantalla de juego
    image(MERCADO, 0, 0, width, height);
    noFill();
    noStroke();
    rect(mouseX, 550, 100, 50);

    if (frameCount%6==0) {  //velocida del sprite (lento)
      ord++;
      ord=ord%4;
    }
    image(abu[ord], mouseX, 550, 100, 50);
    noFill();
    noStroke();
    rect(px, py-60, 80, 80);
    image(ESPADA, px, py-60, 80, 80);  //caida de la espada

    if (colision ( px, py-60, mouseX, 550, 50 ))
      estado=4;
    if (estado ==4) {                         //estado 4 pantalla de PERDISTE
      image(PERDISTE, 0, 0, width, height);
      textSize(60);
      fill(255, 255, 255);
      text("PERDISTE\nPresiona r para ir al inicio", width/6, 500);
      if (estado==4) 
        if (keyPressed) {
          if (key== 'r')
            estado=0;
        
      }
    }

    py += v;
    if (py-60 > height) {      //reinicio de caida
      py = -60 ;
      px=random(width);
      pos+=1;
      puntos+=1;

      if (puntos>=10)
        estado=5;
      if (estado==5) {
        image(GANASTE, 0, 0, width, height);
        textSize(60);
        fill(255, 255, 255);
        text("GANASTE!!\nPresiona r para ir al inicio", width/6, 500);
        if (estado==5) 
        if (keyPressed) {
          if (key== 'r')
            estado=0;
        
      }
      }
    }
    //puntaje en aumento
    for (int i=0; i<=puntos; i++) {
      fill(0);
      textSize(18);
      text("PUNTOS: " + (puntos), 250, 20);
    }
  }
}

boolean colision(float px, float py, float pisoX, float pisoY, float tam) {
  float distan = dist(px, py, pisoX, pisoY);
  return distan < tam;
}
