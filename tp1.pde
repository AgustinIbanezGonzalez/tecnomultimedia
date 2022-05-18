//Ibañez Gonzalez , Agustin  
//Legajo 91524/6

//se reinicia todo con clickear la luciernaga

PImage titulo;
PImage directores;
PImage prota;
PImage secu;
PImage musico;
PImage luciernaga;
PImage esporas;
PImage chasqueador;

float tam = 30;


PFont fuente;
PFont fuente2;

String texto= "THE\nLAST\nOF US", texto2 = "Game Director                     Creative Director\nBRUCE STRANLEY               NEIL DRUCKMANN";
String texto3= "Starring\nASHLEY JOHNSON\nTROY BAKER", texto4= "Antagonist\nMERLE DANDRIDGE", texto5= "Music By\nGUSTAVO SANTAOLALLA";

import processing.sound.*;
SoundFile sonido;

void setup() {

  size(800, 600);
  sonido=new SoundFile(this, "tloutheme.mp3");
  sonido.play();

  chasqueador=loadImage("chasqueador.jpg");
  esporas=loadImage("esporas.png");
  luciernaga=loadImage("luciernaga.png");
  titulo=loadImage("titulo.jpeg");
  directores=loadImage("directores.jpg");
  prota=loadImage("prota.jpg");
  secu=loadImage("secu.jpg");
  musico=loadImage("musico.jpg");
  fuente = loadFont("fontlou.vlw");
  fuente2= loadFont("font2.vlw");
  textFont(fuente);
  texto= "THE\nLAST\nOF US";
  textFont(fuente2);
}

void draw() {

  println(frameCount);
  escena();
  
  if (frameCount >1200 && frameCount < 2000) {
    float px = random(width);
    float py = random(height);
    float tam = random(150,200);
    image(esporas, px, py, tam, tam);
}
}

void mousePressed() {

  if (frameCount > 1100 && frameCount < 2500){
  
  if ((mouseX > 600) && (mouseX < 600+100) && (mouseY > 130) && (mouseY <130+100)) {
    frameCount=(0);
  }
}
}
