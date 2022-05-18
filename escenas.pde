void escena() {

  if (frameCount > 0 && frameCount < 100){
   
  image(titulo, 0, 0, width, height);
  textFont(fuente);
  textSize(150);
  text(texto, 490, 180);
}
  if (frameCount > 200 && frameCount < 400){
  
  image(directores,0,0,width,height);
  textFont(fuente2);
  textSize(tam);
  text(texto2,90,100);
}
  if (frameCount > 500 && frameCount < 600){
  
  image(prota,0,0,width,height);
  textFont(fuente2);
  textSize(tam);
  text(texto3,450,330);
  }
  if (frameCount > 700 && frameCount <800){
  
   image(secu,0,0,width,height); 
   textFont(fuente2);
   textSize(tam);
   text(texto4,90,230);
  }
  
  if (frameCount > 900 && frameCount < 1000){
  
 image(musico,0,0,width,height);
   textFont(fuente2); 
   textSize(tam);
   text(texto5,110,180);
  }
  
   if (frameCount > 1100 && frameCount < 1800){ 
     
  image(chasqueador,0,0,width,height);
   image(luciernaga,600,130,100,100); //se reinicia todo con clickear la luciernaga
}
 
 
}
