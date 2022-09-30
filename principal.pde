class Base {
  
  Fondo background; 
  Correcaminos s;
  Coyote c;

    Base() {
    background = new Fondo();
    s= new Correcaminos(100, 450, 50, 65);
    c = new Coyote(width+200, height-50, 50, 50);
  }
  void display() {

    background.dibujarFondo();   
    s.dibujarCorrecaminos();
    c.dibujarCoyote();
  }
}
