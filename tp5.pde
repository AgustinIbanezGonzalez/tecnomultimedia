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

void mousePressed(){
 p.accionarBotones(); 
}


//pantallas , correccion de abbu y espadas bug
