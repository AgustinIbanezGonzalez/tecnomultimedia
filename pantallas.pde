class Pantallas {

  PImage INICIO;
  PImage MERCADO;
  PImage INSTRUCCIONES;
  PImage PERDISTE;
  PImage GANASTE;
  int estado=0;
  float px,py;
  float[] x = { 600, 600 };
  float[] y = { 200, 300 };
  
  
  Pantallas(){
  INICIO=loadImage("INICIO.jpg");
  MERCADO=loadImage("MERCADO.jpg");
  INSTRUCCIONES=loadImage("INSTRUCCIONES.jpg");
  PERDISTE=loadImage("PERDISTE.png");
  GANASTE=loadImage("GANASTE.jpg");
  }


  void dibujarPantallas() {

    if (estado == 0) { //Pantalla de inicio
      image(INICIO, 0, 0, width, height);
      for ( int i = 0; i < 2; i++) {
        fill(222, 194, 36);
        rect (x[i], y[i], 120, 40);
        fill(0);
        textSize(25);
        text("jugar", 630, 225);
        textSize(20);
        text("Instruccion", 615, 325);
      }
    }

    if (mousePressed) {   //cambio de pantalla entre inicio y juego e instrucciones
      if ((estado==0) && mouseX > 600 && mouseY > 200 && mouseX < 720 && mouseY < 240)
        estado=1;

      if ((estado==0) && mouseX > 600 && mouseY > 300 && mouseX < 720 && mouseY < 340)
        estado=2;
    }

    if (estado == 1) {    //Pantalla de juego
      image(MERCADO, 0, 0, width, height);
    }
   
    if (estado == 2) {

      image(INSTRUCCIONES, 0, 0, width, height);
      fill(222, 194, 36);
      textSize(30);
      text("UTILIZAR EL MOUSE PARA MOVER A ABÚ \n ESQUIVA LAS ESPADAS O PERDERAS", width/5, 500);
      rect(0, 0, 90, 40);
      fill(0);
      text("INICIO", 0, 0, 90, 40);
      if (mousePressed) {  //boton para ir al inicio
        if ((estado==2) && mouseX > 0  && mouseY > 0 && mouseX < 90 && mouseY < 40)
          estado=0;
      }
    }

  /*  if (colision ( px, py-60, mouseX, 550, 50 ))
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
    } */
  }
}
