 /*Buenas profe no realice el video porque no pude realizar con exito el trabajo.
 Creí que iba poder relizarlo sin mayor problemas, pero a la hora de hacerlo se
 me complico demasiado ya que me lo plantee hacerlo en forma de grilla,
 Esto sumado al poco tiempo que pude invertirle causó esta entrega incompleta que quise
 entregar de todos modos como para tener una posible instancia de recuperatorio, saludos.*/
 
PImage imagen;
int cant = 12;
int tam;
int tam2;


void setup() {
  size(800, 400);
  imagen=loadImage("imagen.jpg");
  imagen.resize(400, 400);
  background(0);

  tam = width/2/cant;
  tam2 = width/2/cant-10;
}


void draw() {
  image(imagen, 0, 0);
  println(mouseX, mouseY);

  dibujarCuadros1();
  DibujarCuadros2();
}


void dibujarCuadros1() {
  pushMatrix();
  float micolor = map (mouseX, width/2, width, 0, 255);
  float mistroke = map (mouseY, 0, height, 0, 5);
  strokeWeight (mistroke);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {

      if ((x+y)%2==0) {
        fill(micolor);
      } else {
        fill(255);
      }
      rect (x*tam+width/2, y*tam, tam, tam);
    }
  }
  popMatrix();
}

void DibujarCuadros2() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  translate (80, 89);
  for (int x=0; x<cant-2; x++) {
    for (int y=0; y<cant-2; y++) {
      if ((x+y)%2==0) {
        fill(micolor);
      } else {
        fill(255);
      }
      rect (x*tam2+width/2, y*tam2, tam2+5, tam2+5);
    }
  }
  pop();
}
