void instrucciones() {
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
}
