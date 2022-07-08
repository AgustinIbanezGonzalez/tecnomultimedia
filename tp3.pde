//tp3 Ibañez Gonzalez, Agustin
//legajo 91524/6  reinicia con r
//Link del video: https://www.youtube.com/watch?v=NtgpYEfqVn0

PImage INICIO;
PImage MERCADO;
PImage ESPADA;
PImage INSTRUCCIONES;
PImage PERDISTE;
PImage GANASTE;
PImage [] abu = new PImage[4];
float[] x = { 600, 600 };
float[] y = { 200, 300 };
int estado=0;
int puntos;
int ord;
int tam;
float v;
float px;
float py;
float pos;

void setup() {

  size(800, 600);
  INICIO=loadImage("INICIO.jpg");
  MERCADO=loadImage("MERCADO.jpg");
  ESPADA=loadImage("ESPADA.png");
  INSTRUCCIONES=loadImage("INSTRUCCIONES.jpg");
  PERDISTE=loadImage("PERDISTE.png");
  GANASTE=loadImage("GANASTE.jpg");
  abu[0] = loadImage( "ABU0.png" );
  abu[1] = loadImage( "ABU1.png" );
  abu[2] = loadImage( "ABU2.png" );
  abu[3] = loadImage( "ABU3.png" );
  puntos = 0;
  ord=0;
  tam=0;
  v = 4;
  px=0;
  py=0;
  pos=0;
}

void draw() {
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
  pantjuego();
  reinicio(); //reinicio de void 
  instrucciones();

  if (mousePressed) {   //cambio de pantalla entre inicio y juego e instrucciones
    if ((estado==0) && mouseX > 600 && mouseY > 200 && mouseX < 720 && mouseY < 240)
      estado=1;

    if ((estado==0) && mouseX > 600 && mouseY > 300 && mouseX < 720 && mouseY < 340)
      estado=2;
  }
}
void reinicio() {
  if (keyPressed) {
    if (key== 'r')
      estado=0;
    setup();
  }
}
