// Ibañez Gonzalez, Agustin 91524/6
// Link del video: https://www.youtube.com/watch?v=wEziIyKWVCs

import processing.sound.*;
SoundFile sonido;
Base p;

void setup() {
  size(800, 600);
  p = new Base();
  sonido = new SoundFile (this, "Aladin.mp3");
 // sonido.play();
}

void draw() {

  p.display();
}

void mousePressed() {
  p.accionarBotones();
}

/* 

 Limitar la ubicación de Abu al interior de la ventana, no al borde (controlar borde derecho, donde sale de la visión) 
  separacion de espadas *100 
 */
