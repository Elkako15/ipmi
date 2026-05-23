int t;
void setup() {
  size(640, 480);
  presentacion = loadImage( "presentacion 0.jpg");
  play= loadImage( "botonplay.png");
  imagen1= loadImage("imagen 1.jpg");
  imagen2= loadImage("imagen 2.jpg");
  imagen3= loadImage("imagen 3.jpg");
  imagen4= loadImage("imagen 4.jpg");
  imagen5= loadImage("imagen 5.jpg");
}
void draw() {
  background(0);


  if (estado == 0) {
    inicioDePortada();
    cargaDeTexto();
  } else if (estado==1) {
    t = millis() - tiempoInicio;
    if (t >= 0 && t < 10000) {
      cargarPantalla2();
    } else if (t >= 10000 && t <20000) {
      cargarPantalla3();
    } else if (t >= 20000 && t <30000 ) {
      cargarPantalla4();
    } else if (t >=30000 && t <40000 ) {
      cargarPantalla5();
    } else if (t >= 40000 && t < 60000 ) {
      cargarPantalla6();
    }
  }


  println( millis() );
  println("vertex("+mouseX+","+mouseY+");");
}

void mouseClicked() {
  if (estado == 0) {
    if (mouseX > posXboton && mouseX < 400 &&
      mouseY > posYboton && mouseY < 360) {
      estado = 1;
      tiempoInicio = millis();
    }
  }
}
