void grilla(float ancho, float alto, int eje, int cant) {
  float finCuadrado = 0;
  for (int i=0; i<cant; i++) {
    float tam = calcularAncho(i, eje, ancho, cant);

    for (int j=0; j<cant; j++) {

      colorPar(i, j);
      rect(finCuadrado+400, j*alto, ancho, alto);
    }

    finCuadrado += tam;
  }
}



void colorPar(int i, int j) {
  if ((i+j)%2 == 0) {
    fill(255);
  } else {
    fill(0);
  }
}



float calcularAncho(int i, int eje, float ancho, int cant) {
  
  if (i <= eje) {
    return map(i, 0, eje, ancho, ancho/cant);
  } else {
    return map(i, eje + 1, cant - 1, ancho/cant, ancho);
  }
}



void cartel(int segundos){
 if (segundos > 5 && segundos < 15){
   push();
   fill(0,0,255);
   textAlign(CENTER);
   textSize(20);
   text("Move la obra con las flechas del teclado\nApreta el espacio para reiniciar", 200,330);
   pop();
 } 
}
