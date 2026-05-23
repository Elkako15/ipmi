PFont texto;
PImage presentacion, play;
int tiempoInicio=0;
int estado = 0;
String titulo;
int posXboton = 200;
int posYboton = 321;
float posYimg=0;


void inicioDePortada() {
  image(presentacion, 0, posYimg, 640, 900 );
  if (posYimg > -420) {
    posYimg = posYimg - 0.3;
  } else {
    posYimg = 0;
  }
}

void cargaDeTexto() {
  texto=loadFont("Consolas-BoldItalic-48.vlw");
  textFont(texto, 75);
  titulo= "El Principito";
  fill(#FFD500);
  textSize(75);
  text(titulo, 60, 200);
  image(play, 150, 268, 300, 150 );
  textSize(50);
  text("PLAY", 249, 356);
}
