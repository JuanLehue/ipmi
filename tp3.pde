//Lehue Juan Manuel
//https://youtu.be/3suHrzBiPn0
int cant, eje, segundos;
float alto, pos, ancho;
PImage opArt;

void setup() {
  size(800, 400);
  cant = 25;
  eje = 12;
  alto = width/cant;
  ancho = width/cant;
  opArt = loadImage("opArt.jpg");
  segundos = 0;
}

void draw() {
  background(255);
  //Imagen de la obra
  image(opArt, 0, 0, 400, 400);
  //Funcion principal
  grilla(ancho, alto, eje, cant);
  //Contador de segundos
  if (frameCount % 60 == 0) {
    segundos++;
  }
  //Cartel de aviso
  cartel(segundos);
}

//Controladores
void keyPressed() {
  if (eje >= 4 && eje < 18) {
    if (keyCode == RIGHT) {
      eje +=1;//Mover a la derecha
    }
  }
  if (eje <= 18 && eje >4) {
    if (keyCode == LEFT) {
      eje -=1;//Mover a la izquierda
    }
  }
  if (keyCode == 32) {
    eje = 12;//Reiniciar al punto inicial
    segundos = 0;
  }
}
