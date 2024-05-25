
PImage imagen1, imagen2, imagen3;
String texto;
int tiempo;
int px1 = 640;
int py1 = 500;
int px2 = 1000;
int py2 = 100;
int px3 = 500;
int py3 = -100;
//---------------------------------------------------------------------------------------------------------------------
void setup() {
  size(640, 480);
  imagen1=loadImage("imagen1.jpg");//pantalla 1
  imagen2=loadImage("imagen2.jpg");//pantalla 2
  imagen3=loadImage("imagen3.jpg");//pantalla 3
  tiempo = 1;
  
}
//---------------------------------------------------------------------------------------------------------------------
void draw() {
  tiempo++;
  println(tiempo);
  
  //pantalla 1
  if (tiempo>=1) {
    image(imagen1, 0, 0);
  
    textSize(25);
    text("Red Dead Redemption \n es un videojuego de acción y aventura \n de mundo abierto publicado por Rockstar Games.", px1, py1) ;
    py1--;
    textAlign(RIGHT, LEFT);
  }

  //pantalla 2
  if (tiempo>=700) {
    image(imagen2, 0, 0, 640, 480);
    
    textSize(25);
    text("Donde interpretaremos el papel \n del exforajido John Marston.", px2, py2) ;
    px2--;
  }

  //pantalla 3
  if (tiempo>=1800) {
    image(imagen3, 0, 0, 640, 480);
    
    textSize(25);
    text("atravesando un mundo asolado \n por el caos y el desorden \n en un intento desesperado por \n salvar a su familia.", px3, py3) ;
    py3++;
  }
  if(tiempo>2500){
    background(0);
    textAlign(CENTER,CENTER); 
    textSize(40);
    text ("Reiniciar con click", width/2,240   ) ;
    
  }

  if (mousePressed == true) {
    tiempo=1;
    py1 = 500;
    px2 = 1000;
    py3 = -100;  
  }
}
//---------------------------------------------------------------------------------------------------------------------
