//Agustin Ibañez Gonzalez 
//Legajo 91524/6


void setup() {
  size(500, 500);
  //background(59, 0, 0);

  //orejas
  fill(#F78519);
  triangle(150, 200, 150, 90, 250, 150);
  triangle(350, 200, 250, 150, 350, 90);

  //cara
  circle(250, 250, 250);

  //boca
  stroke(#F5F5F5);
  fill(#F5F5F5);
  quad(200, 275, 300, 275, 275, 325, 225, 325);
  fill(#DB2849);
  stroke(#DB2849);
  //lengua
  quad(225, 325, 235, 300, 265, 300, 275, 325);

  //ojos
  fill(#FFFFFF);
  stroke(#F5F5F5);
  rect(290, 185, 30, 30);
  rect(180, 185, 30, 30);

  //nariz
  stroke(0,0,0);
  fill(0, 0, 0);
  triangle(225, 250, 250, 225, 275, 250);
  //line(225, 225, 125, 225);
}
