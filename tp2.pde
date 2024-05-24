//Lehue Juan Manuel
PImage city, miles, poster, trio, milesMorales, flecha, flecha2, logo, tag;
PFont fight, start, consolas, urban;
float py, px, y, x, tamx, tamy;
String estado;
int segundos, alpha;
boolean activo;

void setup() {
  size(640, 480);
  // Carga de Imagenes
  city = loadImage("citySpiderman.jpg");
  miles = loadImage("miles.png");
  poster = loadImage("poster.jpg");
  trio = loadImage("spiderman3.jpg");
  milesMorales = loadImage("milesMorales.jpg");
  flecha = loadImage("flecha.png");
  flecha2 = loadImage("flecha2.png");
  logo = loadImage ("logo.jpg");
  tag = loadImage("tag.png");
  // Carga de Fuentes
  consolas = loadFont("consolas.vlw");
  fight = createFont("fight.otf", 36);
  start = createFont("start.ttf", 36);
  urban = createFont("urban.ttf", 36);
  // Inicializacion de variables
  estado = "primera";
  activo = false;
  py = -60;
  px = 0;
  y = 480;
  x = -100;
  tamx = 800;
  tamy = 820;
  alpha = 0;
}

void draw() {
  background(0);
  //Primera pantalla
  if (estado.equals("primera")) {
    imageMode(CORNER);
    image(poster, 0, 0);
    textAlign(CENTER, CENTER);
    textFont(start, 12);
    fill(255);
    if (frameCount % 60 < 30) {
      text("PRESS START", width/2, 370);
    }
    //Segunda pantalla
  } else if (estado.equals("segunda")) {
    imageMode(CORNER);
    image(city, px, py);
    image(miles, 260, 240);
    textAlign(CENTER, CENTER);
    textFont(fight, 46);
    fill(85, 0, 185);
    text("Spiderman \n into the spider-verse", width/2, 102);
    fill(255, 0, 0);
    text("Spiderman \n into the spider-verse", width/2, 98);
    fill(0);
    text("Spiderman \n into the spider-verse", width/2, 100);
    if (py < 0) {
      py += 0.2;
    }
    //Tercera pantalla
  } else if (estado.equals("tercera")) {
    imageMode(CORNER);
    image(trio, 0, 0);
    textFont(consolas, 32);
    textAlign(CENTER, LEFT);
    fill(255);
    text("Dirigido por:\nBob Persichetti, Peter Ramsey \ny Rodney Rothman\n\nEscrito por:\nPhil Lord y Rothman", width / 2, y);
    fill(0);
    text("Dirigido por:\nBob Persichetti, Peter Ramsey \ny Rodney Rothman\n\nEscrito por:\nPhil Lord y Rothman", width / 2 + 2, y+2);
    if (y > 50) {
      y -= 1;
    }
    //Cuarta pantalla
  } else if (estado.equals("cuarta")) {
    imageMode(CORNER);
    image(milesMorales, 0, 0);
    translate(width/2, height/2);
    rotate(radians(85));
    imageMode(CENTER);
    image(flecha, -50, -160, 80, 80);
    image(flecha2, -52, -162, 80, 80);
    resetMatrix();
    textFont(consolas, 20);
    textAlign(CENTER);
    fill(255, 0, 0, alpha);
    text("Personaje pricipal:\nMiles Morales", 520, 100);
    fill(0, alpha);
    text("Personaje pricipal:\nMiles Morales", 521, 101);
    textAlign(LEFT);
    fill(255);
    text("Un adolescente que se convierte en Spider-Man y une fuerzas con otros Spider-People de diferentes dimensiones para salvar el multiverso del malvado Kingpin y su colisionador de dimensiones.", x, 5, 230,400);
    fill(0);
    text("Un adolescente que se convierte en Spider-Man y une fuerzas con otros Spider-People de diferentes dimensiones para salvar el multiverso del malvado Kingpin y su colisionador de dimensiones.", x+1, 6, 230,400);
    if(alpha < 255){
     alpha ++; 
    }
    if(x < 10){
      x ++;
    }
    // Pantalla Final
  } else  if (estado.equals("final")) {
    imageMode(CENTER);
    image(logo, width/2, 100, tamx, tamy);
    if (tamx > 200 && tamy > 220) {
      tamx -= 10;
      tamy -= 10;
    }
    if (segundos > 21 ) {
      translate(width/2, height/2);
      rotate(radians(-10));
      imageMode(CENTER);
      image(tag, 140, 175,200,200);
      resetMatrix();
    }
    if (segundos > 22){
      translate(width/2, height/2);
      rotate(radians(-5));
      imageMode(CENTER);
      image(tag, 160, 155,200,200);
      resetMatrix();
    }
    if (segundos > 23){
      image(tag, 500, 380,200,200);
      textFont(urban, 50);
      textAlign(CENTER, CENTER);
      fill(0);
      text("Juan Lehue", 500, 395);
    }
    if (segundos > 23){
     textAlign(LEFT, CENTER);
     textFont(urban,48);
     fill(255);
     text("VOLVER", 50, 400);
     if(mouseX > 45 && mouseX < 150 && mouseY > 380 && mouseY < 420){
       fill(255,0,0);
       text("VOLVER", 52, 402);
     }
    }
  }

  //Contador de segundos
  if (activo == true) {
    if (frameCount % 60 == 0) {
      segundos++;
    }
  }

  //Cambios de pantallas
  if (segundos < 1) {
    estado = "primera";
  } else if (segundos >= 1 && segundos < 5) {
    estado = "segunda";
  } else if (segundos >= 5 && segundos < 12) {
    estado = "tercera";
  } else if (segundos >= 12 && segundos < 20) {
    estado = "cuarta";
  } else if (segundos >= 20) {
    estado = "final";
  }
}

void mousePressed() {
  //Boton de inicio
  if (segundos == 0){
    activo = true;
  }
  //Boton de reinicio
  if (segundos > 25){
    if(mouseX > 45 && mouseX < 150 && mouseY > 380 && mouseY < 420){
      segundos = 0;
      estado = "primera";
      activo = false;
      py = -60;
      px = 0;
      y = 480;
      tamx = 800;
      tamy = 820;
    }
  }
}

void keyPressed() {
  //Boton de inicio
  if (segundos == 0){
    if (keyCode==ENTER) {
      activo = true;
    }
  }
}
