//tp2 Ibañez Gonzalez, Agustin 
//legajo 91524/6
// reinicia con r
//Link del video: https://www.youtube.com/watch?v=mPE611th2qE

int cant = 10;   

void setup() {
  size(800, 600);
}

void draw() {

  for (int c=0; c<cant; c++) {   
    float l = map(mouseX, 0, 250, 0, 255); 
    if (mousePressed) { 
      fill(random(25), random(150), random(135), l );
      circle(random(width), random(height), 50);
    } 
    else { 
      fill(random(50), random(33), random(105));
      float tam = c*6; 
      rect(random(width), random(height), tam, tam); 

      reinicio(); 
    }
  }
}
