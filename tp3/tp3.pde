//https://youtu.be/zYBu4i04qFc

PImage img;
int modoColor = 0;

void setup() {
  size(800, 400);
  img = loadImage("imagenOriginal.jpg");
  noStroke();
}

void draw() {
  background(0);
  image(img, 0, 0, 400, 400);
  dibujarObra(600, 200);
}
void dibujarObra(float x, float y) {

  pushMatrix();
  translate(x, y);
  for (int i = 0; i < 9; i++) {

    float tamCirculo = tamanioCirculo(i);
    float tamCuadrado = tamanioCuadrado(i);
    float angulo = rotacionFigura(i);

    for (int c = 0; c <2; c++) {
      if (c == 0) {
        fill(255);
        ellipse(0, 0, tamCirculo, tamCirculo);
      } else {
        pushMatrix();
        rotate(radians(angulo));
        fill(colorFigura(i));
        rect(-tamCuadrado/2, -tamCuadrado/2, tamCuadrado, tamCuadrado);
        popMatrix();
      }
    }
  }
  popMatrix();
}
void mousePressed() {
  modoColor++;

  if (modoColor > 5) {
    modoColor = 1;
  }
}
void keyPressed() {
  modoColor = 0;
}
